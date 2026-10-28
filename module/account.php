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
.button:hover {background-color: red;}
</style>
<?php 
	//kết nối đến CSDL
	include('./controller/connectToDatabase.php');
	date_default_timezone_set('Asia/Ho_Chi_Minh');
	$name = $_SESSION['user_name'];
	$sql_select_all_action = 'SELECT user.user_name FROM user';

	$row_of_results = 0;
	if($result_all = mysqli_query($conn, $sql_select_all_action)) {
		$row_of_results = mysqli_num_rows($result_all);
	}


	$result_per_page = 10;

	$number_of_pages = ceil($row_of_results/$result_per_page);

	//Kiểm tra nếu trang không có biến page thì là trang số 1
	if(!isset($_GET['page'])) {
		$page = 1;
	} else {
		$page = $_GET['page'];
	}

	$this_page_first_result = ($page-1)*$result_per_page;

	//Câu lệnh sql để hiển thị các phòng của mỗi trang
	$sql_select_each_page = $sql_select_all_action. ' LIMIT ' .$this_page_first_result. ',' .$result_per_page;
	$result_each_page = mysqli_query($conn, $sql_select_each_page);



	//Hiển thị các phòng tương ứng
	while($row = mysqli_fetch_assoc($result_each_page)) {
?>	
		<?php
		if($row['user_name'] != 'admin'){
		?>
			<div class="col-xs-12">
				<div class="row">
					<div class="col-lg-9col-md-8 col-sm-8 col-xs-12">
						<div class="row">
							<b class="col-xs-12 simple_room_info_line"> 
								<h2><span style="color: green;">User: </span> 
								<span><?php echo $row['user_name']; ?></span>
								<div>
									<right><a class="col-xs-0" href="deleteAccount.php?user_name=<?php echo $row['user_name']; ?>" onclick="return  confirm('Bạn chắc chắn muốn xóa tài khoản này và những bài viết mà tài khoản này đã đăng chứ?')"><button class="button">Xóa tài khoản</button></a></right>
								</div>
							</b>
							<hr style="width:50%;text-align:left;margin-left:0">
						</div>
					</div>
				</div>
			</div>
		<?php
		}
		?>
	<?php
	}
?>