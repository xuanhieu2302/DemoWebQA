<?php
// Kiểm tra xem dữ liệu đã được gửi từ form hay không
if(isset($_POST['subdays']) && isset($_POST['now'])){
    // Chuyển đổi giá trị ngày sang định dạng Y-m-d
    $subdays = date("Y-m-d", strtotime($_POST['subdays']));
    $now = date("Y-m-d", strtotime($_POST['now']));
} else {
    // Nếu không có dữ liệu được gửi từ form, đặt giá trị mặc định là ngày hôm nay
    $subdays = date("Y-m-d");
    $now = date("Y-m-d");
}

// Hiển thị ngày theo định dạng mong muốn
$subdaysHienThi = date("d - m - Y", strtotime($subdays));
$nowHienThi = date("d - m - Y", strtotime($now));
?>




<div class="quanlymenu">
<p>Thống kê đơn hàng theo : <span id="text-date"></span></p>
<p>
	<select class="select-date">
	<option value="">Thống kê chi tiết</option>

		<option value="7ngay">7 ngày qua</option>
		<option value="28ngay">28 ngày qua</option>
		<option value="90ngay">90 ngày qua</option>
		<option value="365ngay">365 ngày qua</option>
	</select>
</p>
<div id="chart" style="height: 250px;"></div>
<?php
// thống kê bằng ajax
	use Carbon\Carbon;
    use Carbon\CarbonInterval;
    include('config/config.php');
    require('../carbon/autoload.php');
    $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

    if(isset($_POST['thoigian'])){
    	$thoigian = $_POST['thoigian'];
	}else{
		$thoigian = '';
		$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();	
	}
    if($thoigian=='7ngay'){
    	$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(7)->toDateString();
	}elseif($thoigian=='28ngay'){
    	$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(28)->toDateString();
	}elseif($thoigian=='90ngay'){
    	$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(90)->toDateString();
	}elseif($thoigian=='365ngay'){
		$subdays = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();	
	}
	

    $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString(); 

    $sql = "SELECT * FROM tbl_thongke WHERE ngaydat BETWEEN '$subdays' AND '$now' ORDER BY ngaydat ASC" ;
    $sql_query = mysqli_query($mysqli,$sql);

    while($val = mysqli_fetch_array($sql_query)){

    	$chart_data[] = array(
	        'date' => $val['ngaydat'],
	        'order' => $val['donhang'],
	        'sales' => $val['doanhthu'],
	        'quantity' => $val['soluongban']
	        


    	);
    }
  	
   
?>
</div>

<?php include"thongkechitiet.php"; ?>
