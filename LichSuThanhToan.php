<?php
	session_start();
	include('controller/payment.php');

	if (!isset($_SESSION['user_name'])) {
		header('Location: index.php');
		exit;
	}

	include('controller/connectToDatabase.php');
	$user = mysqli_real_escape_string($conn, $_SESSION['user_name']);
	$is_admin = ($user === 'admin');

	if ($is_admin) {
		$sql = "SELECT t.*, g.TieuDe FROM thanh_toan t
			LEFT JOIN gia_phong_tro g ON t.IDPhongTro = g.IDPhongTro
			ORDER BY t.ThoiGian DESC";
	} else {
		$sql = "SELECT t.*, g.TieuDe FROM thanh_toan t
			LEFT JOIN gia_phong_tro g ON t.IDPhongTro = g.IDPhongTro
			WHERE t.user_name = '$user'
			ORDER BY t.ThoiGian DESC";
	}
	$result = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="vi">
<head>
	<title>Lịch sử thanh toán</title>
	<link rel="icon" type="image/png" href="images/favicon/favicon.png"/>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">
	<style>
		.button {
			background-color: green;
			border: none;
			color: white;
			padding: 10px 22px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
		}
		.status-ok { color: #27ae60; font-weight: bold; }
		.status-wait { color: #e67e22; font-weight: bold; }
		.status-cancel { color: #7f8c8d; font-weight: bold; }
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
			<a href="TrangCaNhan.php" class="link">Trang cá nhân / </a>
			<a class="link">Lịch sử thanh toán</a>
		</p>
	</div>

	<div class="container" style="margin-bottom: 30px;">
		<div class="row" style="margin-bottom: 15px;">
			<div class="col-xs-12">
				<a href="TrangCaNhan.php"><button class="button">Quay lại trang cá nhân</button></a>
			</div>
		</div>

		<?php
			if (isset($_GET['msg'])) {
				$messages = array(
					'success' => array('success', 'Đặt cọc thành công!'),
					'exists' => array('warning', 'Bạn đã có giao dịch đặt cọc cho phòng này.'),
					'reserved' => array('warning', 'Phòng này đã có người đặt cọc — không thể thanh toán thêm.'),
					'confirmed' => array('success', 'Đã xác nhận thanh toán.'),
					'cancelled' => array('info', 'Đã hủy giao dịch.')
				);
				if (isset($messages[$_GET['msg']])) {
					list($cls, $text) = $messages[$_GET['msg']];
					echo '<div class="alert alert-' . $cls . '">' . $text . '</div>';
				}
			}
		?>

		<h3><?php echo $is_admin ? 'Quản lý thanh toán' : 'Lịch sử đặt cọc của bạn'; ?></h3>
		<?php if ($is_admin) { ?>
			<p class="text-muted">Nút <b>Xác nhận / Hủy</b> chỉ hiện với giao dịch trạng thái <b>Chờ xác nhận</b> (chuyển khoản hoặc tiền mặt). Giao dịch demo online đã thanh toán sẵn nên không cần xác nhận.</p>
		<?php } ?>

		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Mã GD</th>
						<th>Phòng</th>
						<?php if ($is_admin) echo '<th>Người đặt</th>'; ?>
						<th>Số tiền</th>
						<th>Phương thức</th>
						<th>Trạng thái</th>
						<th>Thời gian</th>
						<th>Thao tác</th>
					</tr>
				</thead>
				<tbody>
					<?php
					if ($result && mysqli_num_rows($result) > 0) {
						while ($row = mysqli_fetch_assoc($result)) {
							$status_class = 'status-wait';
							if ($row['TrangThai'] === 'Đã thanh toán') $status_class = 'status-ok';
							if ($row['TrangThai'] === 'Đã hủy') $status_class = 'status-cancel';
							echo '<tr>';
							echo '<td>#' . (int)$row['IDThanhToan'] . '</td>';
							echo '<td><a href="ChiTietCanPhong.php?id=' . (int)$row['IDPhongTro'] . '&type=Phòng+trọ">' . htmlspecialchars($row['TieuDe']) . '</a></td>';
							if ($is_admin) {
								echo '<td>' . htmlspecialchars($row['user_name']) . '</td>';
							}
							echo '<td>' . number_format((int)$row['SoTien'], 0, ',', '.') . ' VNĐ</td>';
							echo '<td>' . htmlspecialchars($row['PhuongThuc']) . '</td>';
							echo '<td class="' . $status_class . '">' . htmlspecialchars($row['TrangThai']) . '</td>';
							echo '<td>' . htmlspecialchars($row['ThoiGian']) . '</td>';
							echo '<td>';
							if ($row['TrangThai'] === 'Chờ xác nhận') {
								if ($is_admin) {
									echo '<a class="btn btn-xs btn-success" href="LichSuThanhToan.php?confirm=' . (int)$row['IDThanhToan'] . '">Xác nhận</a> ';
								}
								echo '<a class="btn btn-xs btn-danger" href="LichSuThanhToan.php?cancel=' . (int)$row['IDThanhToan'] . '" onclick="return confirm(\'Hủy giao dịch này?\');">Hủy</a>';
							} else {
								echo '-';
							}
							echo '</td>';
							echo '</tr>';
						}
					} else {
						$cols = $is_admin ? 8 : 7;
						echo '<tr><td colspan="' . $cols . '" class="text-center">Chưa có giao dịch nào.</td></tr>';
					}
					?>
				</tbody>
			</table>
		</div>
	</div>

	<?php include('module/footer.php'); ?>
	<script type="text/javascript" src="scripts/JavaScript.js"></script>
</body>
</html>
