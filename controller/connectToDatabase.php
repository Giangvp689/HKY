<?php
//	$conn = mysqli_connect("localhost", "id15771106_root", "+HNu7fUADMEl~63@", "id15771106_nha_tro_db");
	$conn = mysqli_connect("localhost", "root", "", "id15771106_nha_tro_db");
	if (!$conn) { //kiểm tra xem đã kết nối đến CSDL được chưa
		die("Connection failed: " . mysqli_connect_error());
	}
	mysqli_set_charset($conn, 'UTF8');
?>