

<?php
// Kiểm tra xem ngày bắt đầu và ngày kết thúc đã được gửi từ form hay không
if(isset($_POST['ngayBatDau']) && isset($_POST['ngayKetThuc'])){
    // Ngày bắt đầu và ngày kết thúc được gửi từ form
    $ngayBatDau = date("d - m - Y", strtotime($_POST['ngayBatDau']));
    $ngayKetThuc = date("d - m - Y", strtotime($_POST['ngayKetThuc']));

    // Tiếp tục xử lý dữ liệu và thực hiện truy vấn SQL ở đây
} else {
    // Nếu không có dữ liệu được gửi từ form, bạn có thể gán giá trị mặc định hoặc hiển thị thông báo lỗi
    echo "Vui lòng nhập ngày bắt đầu và ngày kết thúc.";
}
?>


<?php

// Ngày bắt đầu và ngày kết thúc (được nhận từ người dùng hoặc từ các biến khác)
$ngayBatDau = $_POST['ngayBatDau'];
$ngayKetThuc = $_POST['ngayKetThuc'];

// Truy vấn SQL với điều kiện ngày từ ngày bắt đầu đến ngày kết thúc và nhóm theo tên sản phẩm
$sql_lietke_sp = "SELECT tbl_hoanhang.*, tbl_khackhang.* 
                  FROM tbl_hoanhang
                  LEFT JOIN tbl_khackhang ON tbl_hoanhang.id_khachhang = tbl_khackhang.id_khachhang
                  WHERE DATE(tbl_hoanhang.ngay_gui) BETWEEN '$ngayBatDau' AND '$ngayKetThuc'
                  ORDER BY tbl_hoanhang.code_cart DESC";


$query_lietke_sp = mysqli_query($mysqli, $sql_lietke_sp);
?>

<div class="quanlymenu">
                           
   <div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3 class="the_h">Quản Lý Hoàn Hàng</h3>
        
        <h3>Liệt kê sản phẩm đã bán từ ngày <?php echo date("d - m - Y", strtotime($ngayBatDau)); ?> đến ngày <?php echo date("d - m - Y", strtotime($ngayKetThuc)); ?></h3>
       
<form class="form-inline mt-3" action="" method="POST">
    <div class="form-group mr-2">
        <label for="ngayBatDau" class="mr-2">Ngày bắt đầu:</label>
        <input type="date" class="form-control" name="ngayBatDau" required
               value="<?php echo date("Y-m-d", strtotime($ngayBatDau)); ?>">
    </div>

    <div class="form-group mr-2">
        <label for="ngayKetThuc" class="mr-2">Ngày kết thúc:</label>
        <input type="date" class="form-control" name="ngayKetThuc" required
               value="<?php echo date("Y-m-d", strtotime($ngayKetThuc)); ?>">
    </div>

    <button type="submit" class="btn btn-success">Tìm kiếm</button>
</form>


		<table class="table table-bordered table-hover" style="margin-top: 20px;">
    <thead>
      
    <tr style="text-align: center;">
    <th>STT</th>
    <th>Mã đơn hàng</th>
    <th>Tên khách hàng</th>
    <th>Số điện thoại</th>
    <th>Ngày gửi</th>
    <th>Nội dung</th>
    <th>Tình trạng</th>
  	<th>Quản lý</th>
    <th>Thao tác</th>
</thead>
<tbody>
<?php
$i = 0;
while($row = mysqli_fetch_array($query_lietke_sp)){
 
?>
<tr style="text-align: center;">
<td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tenkhachhang'] ?></td>
    <td><?php echo $row['dienthoai'] ?></td>
    <td><?php echo $row['ngay_gui'] ?></td>
    <td><?php echo $row['noidung'] ?></td>

    
    <td>
    <?php if($row['status_lh'] == 1){
        echo '<a href="modules/quanlyhoanhang/xuly.php?code='.$row['code_cart'].'&status=moi"><button class="btn btn-primary">Đơn hàng mới</button></a>';
    } elseif($row['status_lh'] == 0){
        echo '<a href="modules/quanlyhoanhang/xuly.php?code=' . $row['code_cart'] . '&status=danggiao"><button class="btn btn-warning">Đang giao</button></a>';
    } else {
        echo '<button class="btn btn-secondary">Đã xác nhận</button>';
    }
    ?>
    </td>
   	<td>
   		<a href="index.php?action=donhang&query=xemdonhang&code=<?php echo $row['code_cart'] ?>">Xem đơn hàng</a> 
   	</td>
     <td>
      <a href="modules/quanlyhoanhang/xuly.php?idcart=<?php  echo $row['code_cart']; ?>"><button  class="btn btn-danger">Xóa</button></a>
     </td>
  </tr> 

  <?php
  }
  ?>
</table>
