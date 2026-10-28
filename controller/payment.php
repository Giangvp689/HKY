<?php
if (!isset($_SESSION)) {
	session_start();
}
include_once(__DIR__ . '/connectToDatabase.php');

/**
 * Phòng đã bị giữ chỗ nếu còn giao dịch Chờ xác nhận hoặc Đã thanh toán.
 */
if (!function_exists('phong_da_giu_cho')) {
	function phong_da_giu_cho($conn, $room_id) {
		$room_id = (int)$room_id;
		$sql = "SELECT IDThanhToan, user_name, TrangThai FROM thanh_toan
			WHERE IDPhongTro=$room_id AND TrangThai IN ('Chờ xác nhận','Đã thanh toán')
			ORDER BY FIELD(TrangThai, 'Đã thanh toán', 'Chờ xác nhận'), ThoiGian ASC
			LIMIT 1";
		$result = mysqli_query($conn, $sql);
		if ($result && mysqli_num_rows($result) > 0) {
			return mysqli_fetch_assoc($result);
		}
		return null;
	}
}

// Người thuê gửi yêu cầu đặt cọc
if (isset($_POST['dat_coc'])) {
	if (!isset($_SESSION['user_name'])) {
		header('Location: index.php');
		exit;
	}

	$room_id = (int)$_POST['id_phong'];
	$method = isset($_POST['phuong_thuc']) ? $_POST['phuong_thuc'] : '';
	$user = mysqli_real_escape_string($conn, $_SESSION['user_name']);
	$type = isset($_POST['room_type']) ? $_POST['room_type'] : 'Phòng trọ';

	$allowed = array('demo_online', 'chuyen_khoan', 'tien_mat');
	if (!in_array($method, $allowed, true)) {
		header('Location: ChiTietCanPhong.php?id=' . $room_id . '&type=' . urlencode($type));
		exit;
	}

	$sql_room = "SELECT GiaChoThue, TieuDe FROM gia_phong_tro WHERE IDPhongTro=$room_id";
	$result = mysqli_query($conn, $sql_room);
	if (!$result || mysqli_num_rows($result) === 0) {
		header('Location: index.php');
		exit;
	}
	$room = mysqli_fetch_assoc($result);
	$amount = (int)$room['GiaChoThue'];

	// Phòng đã có người đặt cọc (bất kỳ ai) thì không cho đặt thêm
	$giu_cho = phong_da_giu_cho($conn, $room_id);
	if ($giu_cho) {
		if ($giu_cho['user_name'] === $_SESSION['user_name']) {
			header('Location: LichSuThanhToan.php?msg=exists');
		} else {
			header('Location: LichSuThanhToan.php?msg=reserved');
		}
		exit;
	}

	$method_label = array(
		'demo_online' => 'Thanh toán online (demo)',
		'chuyen_khoan' => 'Chuyển khoản ngân hàng',
		'tien_mat' => 'Tiền mặt khi xem phòng'
	);
	$phuong_thuc = $method_label[$method];
	$trang_thai = ($method === 'demo_online') ? 'Đã thanh toán' : 'Chờ xác nhận';
	$ghi_chu = ($method === 'demo_online')
		? 'Thanh toán demo thành công (mô phỏng cổng thanh toán).'
		: 'Chờ chủ trọ / admin xác nhận.';

	$phuong_thuc_sql = mysqli_real_escape_string($conn, $phuong_thuc);
	$trang_thai_sql = mysqli_real_escape_string($conn, $trang_thai);
	$ghi_chu_sql = mysqli_real_escape_string($conn, $ghi_chu);

	$sql_insert = "INSERT INTO thanh_toan (IDPhongTro, user_name, SoTien, PhuongThuc, TrangThai, GhiChu, ThoiGian)
		VALUES ($room_id, '$user', $amount, '$phuong_thuc_sql', '$trang_thai_sql', '$ghi_chu_sql', NOW())";

	if (mysqli_query($conn, $sql_insert)) {
		header('Location: LichSuThanhToan.php?msg=success');
		exit;
	}
	header('Location: ThanhToan.php?id=' . $room_id . '&type=' . urlencode($type) . '&msg=error');
	exit;
}

// Admin xác nhận thanh toán
if (isset($_GET['confirm']) && isset($_SESSION['user_name']) && $_SESSION['user_name'] === 'admin') {
	$id = (int)$_GET['confirm'];
	$info = mysqli_query($conn, "SELECT IDPhongTro FROM thanh_toan WHERE IDThanhToan=$id AND TrangThai='Chờ xác nhận' LIMIT 1");
	if ($info && mysqli_num_rows($info) > 0) {
		$row = mysqli_fetch_assoc($info);
		$room_id = (int)$row['IDPhongTro'];
		mysqli_query($conn, "UPDATE thanh_toan SET TrangThai='Đã thanh toán', GhiChu='Admin đã xác nhận thanh toán.' WHERE IDThanhToan=$id");
		// Hủy các giao dịch chờ khác cùng phòng (nếu có)
		mysqli_query($conn, "UPDATE thanh_toan SET TrangThai='Đã hủy', GhiChu='Phòng đã được người khác đặt cọc.' WHERE IDPhongTro=$room_id AND IDThanhToan<>$id AND TrangThai='Chờ xác nhận'");
	}
	header('Location: LichSuThanhToan.php?msg=confirmed');
	exit;
}

// Admin / người dùng hủy
if (isset($_GET['cancel']) && isset($_SESSION['user_name'])) {
	$id = (int)$_GET['cancel'];
	$user = mysqli_real_escape_string($conn, $_SESSION['user_name']);
	if ($_SESSION['user_name'] === 'admin') {
		mysqli_query($conn, "UPDATE thanh_toan SET TrangThai='Đã hủy', GhiChu='Admin đã hủy giao dịch.' WHERE IDThanhToan=$id");
	} else {
		mysqli_query($conn, "UPDATE thanh_toan SET TrangThai='Đã hủy', GhiChu='Người dùng hủy giao dịch.' WHERE IDThanhToan=$id AND user_name='$user' AND TrangThai='Chờ xác nhận'");
	}
	header('Location: LichSuThanhToan.php?msg=cancelled');
	exit;
}
?>
