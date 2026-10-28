<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<?php

		include('controller/connectToDatabase.php');
		$room_id = $_GET['id'];
		$sql_select_room_delete = 'DELETE FROM gia_phong_tro WHERE IDPhongTro=' .$room_id;
		$sql_select_room_delete2 = 'DELETE FROM hinh_anh_phong_tro WHERE IDPhongTro=' .$room_id;
		$sql_select_room_delete3 = 'DELETE FROM dia_chi_phong_tro WHERE IDPhongTro=' .$room_id;
		if($result_title = mysqli_query($conn, $sql_select_room_delete) && $result_title2 = mysqli_query($conn, $sql_select_room_delete2) && $result_title3 = mysqli_query($conn, $sql_select_room_delete3)) {
			echo '<script>alert("Xóa thành công!")</script>';
		}
	?>
	<title id="title_room_page">Trang cá nhân</title>
	<link rel="icon" type="image/png" href="images/favicon/favicon.png"/>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/CSS.css">
	<style type="text/css">
		button {
			margin: 0px 10px;
		}
	</style>

</head>
<body>
	<!-- Khung đăng ký, đăng nhập -->
	<?php 
		include('module/LogInAndSignIn.php');
	?>

	<!-- Menu hiển thị ra khi scroll màn hình -->
	<?php
		include('module/menuScroll.php');
	?>

	<!-- Header -->
	<?php
		include('module/header.php');
	?>

	<!-- Menu chính -->
	<?php
		include('module/menu.php');
	?>

	<!-- Phần hiển thị đường dẫn các trang -->
	<div class="container">
		<p id="path">
			<a href="index.php" class="link">Trang chủ / </a>
			<a href="TrangCaNhan.php" class="link">Trang cá nhân</a>
		</p>
	</div>

	<!-- Phần thân để hiển thị filter và chi tiết căn phòng -->
	<div class="container" style="margin-top: 20px; margin-bottom: 20px;">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-5 col-xs-12" style="padding: 0px;">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-7" style="font-size: 23px; margin: 10px 0px; color: #9a9999;">
					<h1 style="color:black">Các bài đã đăng</h1>
					<?php
						if(isset($_SESSION['user_name'])) {
							echo '<span style="color:black;text-align:center;">Tài khoản: '.$_SESSION['user_name'].'</span>';
						}
					?>
				</div>
			</div>
			<!-- Phần hiển thị các tin bài -->
			<div class="col-xs-12" id="room_main_content">
				<div class="row" id="new_rooms">
					
					<!-- Hiển thị các phòng trọ -->
					<?php
						include('module/uploadRoom.php');
					?>
					
				</div>
			</div>

			</div>
		</div>
	</div>
</div>

<!-- Phần chân trang -->
	<?php
		include('module/footer.php');
	?>

<!-- Nhúng file javascript -->
<script type="text/javascript" src="scripts/JavaScript.js"></script> 

</body>
</html>
