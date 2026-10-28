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
.button:hover {background-color: #e6ac00;}
</style>
<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
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
					<?php
						$name = $_SESSION['user_name'];
						if($name == "admin"){
							echo '<div style="font-size:1.25em;color:black;font-weight:bold;">Quản lí trang web:<span style="font-size:1.25em;color:#0e3c68;font-weight:bold;"></span></div>';
							echo '<span style="font-style: italic;color:black;text-align:center;font-size:0.70em">Bạn đang đăng nhập với tư cách là quản trị viên</span>';
						}
						else{
							echo '<div style="font-size:1.25em;color:black;font-weight:bold;">Quản lí tài khoản<span style="font-size:1.25em;color:#0e3c68;font-weight:bold;"></span></div>';
							echo '<span style="font-style: italic;color:black;text-align:center;font-size:0.70em">Tài khoản: '.$name.'</span>';
						}
					?>
				</div>
			</div>
			<div class="col-lg-12">
				<a class="button" href="showRoom.php">Bài đăng</a>
				<a class="button" href="LichSuThanhToan.php"><?php echo ($name == "admin") ? "Quản lý thanh toán" : "Lịch sử thanh toán"; ?></a>
				<?php
				if($name == "admin"){
				?>
					<a class="button" href="showAccount.php">Các tài khoản</a>
				<?php
				}
				?>
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
