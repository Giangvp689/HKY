<?php
	session_start();
	include('controller/payment.php');

	if (!isset($_SESSION['user_name'])) {
		header('Location: index.php');
		exit;
	}
	if (!isset($_GET['id'])) {
		header('Location: index.php');
		exit;
	}

	include('controller/connectToDatabase.php');
	$room_id = (int)$_GET['id'];
	$room_type = isset($_GET['type']) ? $_GET['type'] : 'Phòng trọ';

	$sql = "SELECT gia_phong_tro.*, dia_chi_phong_tro.DiaChi
		FROM gia_phong_tro
		LEFT JOIN dia_chi_phong_tro ON gia_phong_tro.IDPhongTro = dia_chi_phong_tro.IDPhongTro
		WHERE gia_phong_tro.IDPhongTro = $room_id";
	$result = mysqli_query($conn, $sql);
	if (!$result || mysqli_num_rows($result) === 0) {
		header('Location: index.php');
		exit;
	}
	$room = mysqli_fetch_assoc($result);
	$deposit = (int)$room['GiaChoThue'];
	$giu_cho = phong_da_giu_cho($conn, $room_id);
?>
<!DOCTYPE html>
<html lang="vi">
<head>
	<title>Thanh toán đặt cọc</title>
	<link rel="icon" type="image/png" href="images/favicon/favicon.png"/>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">
	<style>
		.pay-box { border: 1px solid #ddd; padding: 20px; background: #f9f9f9; margin-bottom: 20px; }
		.pay-amount { font-size: 22px; color: #c0392b; font-weight: bold; }
		.method-option { margin: 10px 0; padding: 10px; background: #fff; border: 1px solid #ddd; }
	</style>
</head>
<body>
	<?php include('module/LogInAndSignIn.php'); ?>
	<?php include('module/menuScroll.php'); ?>
	<?php include('module/header.php'); ?>
	<?php include('module/menu.php'); ?>

	<div class="container">
		<p id="path">
			<a href="index.php" class="link">Trang chủ / </a>
			<a href="ChiTietCanPhong.php?id=<?php echo $room_id; ?>&type=<?php echo urlencode($room_type); ?>" class="link">Chi tiết / </a>
			<a class="link">Thanh toán đặt cọc</a>
		</p>
	</div>

	<div class="container" style="margin-bottom: 30px;">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<?php if (isset($_GET['msg']) && $_GET['msg'] === 'error') { ?>
					<div class="alert alert-danger">Không thể tạo giao dịch. Vui lòng thử lại.</div>
				<?php } ?>

				<h3>Đặt cọc giữ chỗ phòng trọ</h3>
				<div class="pay-box">
					<p><b>Phòng:</b> <?php echo htmlspecialchars($room['TieuDe']); ?></p>
					<p><b>Địa chỉ:</b> <?php echo htmlspecialchars($room['DiaChi']); ?></p>
					<p><b>Giá thuê:</b> <?php echo number_format($deposit, 0, ',', '.'); ?> VNĐ/tháng</p>
					<p>Số tiền đặt cọc (1 tháng): <span class="pay-amount"><?php echo number_format($deposit, 0, ',', '.'); ?> VNĐ</span></p>
				</div>

				<?php if ($giu_cho) {
					if ($giu_cho['user_name'] === $_SESSION['user_name']) {
						echo '<div class="alert alert-success">Bạn đã đặt cọc phòng này rồi (' . htmlspecialchars($giu_cho['TrangThai']) . ').</div>';
					} else {
						echo '<div class="alert alert-warning"><b>Phòng đã có người đặt cọc</b> — bạn không thể thanh toán thêm.</div>';
					}
					echo '<a href="ChiTietCanPhong.php?id=' . $room_id . '&type=' . urlencode($room_type) . '" class="btn btn-default btn-lg">Quay lại</a> ';
					echo '<a href="LichSuThanhToan.php" class="btn btn-primary btn-lg">Lịch sử thanh toán</a>';
				} else { ?>
				<form method="POST" action="ThanhToan.php?id=<?php echo $room_id; ?>&type=<?php echo urlencode($room_type); ?>">
					<input type="hidden" name="id_phong" value="<?php echo $room_id; ?>">
					<input type="hidden" name="room_type" value="<?php echo htmlspecialchars($room_type); ?>">

					<h4>Chọn phương thức thanh toán</h4>
					<div class="method-option">
						<label>
							<input type="radio" name="phuong_thuc" value="demo_online" checked>
							<strong>Thanh toán online (demo)</strong> — mô phỏng cổng thanh toán, xác nhận ngay
						</label>
					</div>
					<div class="method-option">
						<label>
							<input type="radio" name="phuong_thuc" value="chuyen_khoan">
							<strong>Chuyển khoản ngân hàng</strong> — chờ admin xác nhận
						</label>
						<p style="margin: 8px 0 0 22px; color: #666;">
							STK demo: <b>0123456789</b> — Vietcombank — Chủ TK: <b>TRO HA NOI</b><br>
							Nội dung: <b>COC <?php echo $room_id; ?> <?php echo htmlspecialchars($_SESSION['user_name']); ?></b>
						</p>
					</div>
					<div class="method-option">
						<label>
							<input type="radio" name="phuong_thuc" value="tien_mat">
							<strong>Tiền mặt khi xem phòng</strong> — chờ xác nhận sau khi gặp chủ trọ
						</label>
					</div>

					<button type="submit" name="dat_coc" class="btn btn-success btn-lg" style="margin-top: 15px;">
						Xác nhận thanh toán
					</button>
					<a href="ChiTietCanPhong.php?id=<?php echo $room_id; ?>&type=<?php echo urlencode($room_type); ?>" class="btn btn-default btn-lg" style="margin-top: 15px;">
						Quay lại
					</a>
				</form>
				<?php } ?>
			</div>
		</div>
	</div>

	<?php include('module/footer.php'); ?>
	<script type="text/javascript" src="scripts/JavaScript.js"></script>
</body>
</html>
