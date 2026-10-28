<?php
    session_start();
?>

<!-- Include file xử lý thêm dữ liệu vào csdl khi đăng tin -->
<?php 
	include('controller/uploadNewRoom.php');
?>

<!-- Include file xử lý tác vụ đăng nhập -->
<?php 
	include('controller/logIn.php');
?>

<!-- Include file xử lý tác vụ đăng ký -->
<?php 
	include('controller/signIn.php');
?>

<!-- include file xử lý tác vụ đăng xuất -->
<?php 
	include('controller/logOut.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Trọ Hà Nội</title>
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

	<!-- Khung tìm kiếm của trang chủ -->
	<?php
		include('module/filterOfIndex.php');
	?>

	<!-- Phần hiển thị đường dẫn các trang -->
	<div class="container">
		<p id="path">
			<a href="index.php" class="link">Trang chủ</a>
		</p>
	</div>

	<!-- Phần thân để hiển thị các tin bài đăng -->
	<div class="container" style="">
		<div class="row">
			<!-- phần khung các tin đã đăng -->
			<div class="col-lg-9 col-md-9 col-sm-12 col-sx-12" id="room_main_content">
				<div class="row">
					<?php
						include('module/newRoomOfIndex.php');
					?>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="fb-comments" data-href="http://minnodeploy.000webhostapp.com/LoaiPhong.php?action=Ph%C3%B2ng+tr%E1%BB%8D" data-numposts="5" data-width=""></div> -->
	<!-- Phần chân trang -->
	<div class="col-sx-12">
		<center><div class="fb-comments" data-href="https://it4552-group5-trohn.000webhostapp.com/index.php" data-numposts="5" data-width="1000"></div></center>
	</div>
	<?php
		include('module/footer.php');
	?>
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0" nonce="wDEnKb2Y"></script>
	<!-- Nhúng file javascript -->
	<script type="text/javascript" src="scripts/JavaScript.js"></script> 
	<script lang="javascript">(function() {var pname = ( (document.title !='')? document.title : ((document.querySelector('h1') != null)? document.querySelector('h1').innerHTML : '') );var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async=1; ga.src = '//live.vnpgroup.net/js/web_client_box.php?hash=5f39c22020fcaf7ed0e5fea117658a79&data=eyJzc29faWQiOjEwODMxMDQ1LCJoYXNoIjoiOWZjYjc1ODIxYjllOWVlZTlmMDcxMTc5Y2E3NzM1M2YifQ--&pname='+pname;var s = document.getElementsByTagName('script');s[0].parentNode.insertBefore(ga, s[0]);})();</script>
	
	<!-- <script lang="javascript">var _vc_data = {id : 10831045, secret : '9fcb75821b9e9eee9f071179ca77353f'};(function() {var ga = document.createElement('script');ga.type = 'text/javascript';ga.async=true; ga.defer=true;ga.src = '//live.vnpgroup.net/client/tracking.js?id=10831045';var s = document.getElementsByTagName('script');s[0].parentNode.insertBefore(ga, s[0]);})();</script> -->
	<?php
		include('controller/displayLogInBackground.php');
	?>

</body>
</html>