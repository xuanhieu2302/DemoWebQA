<div class="quanlymenu">
            <h3>Liệt kê đơn hàng </h3>
            <?php
// Phân trang
if(isset($_GET['trang'])){
    $page = $_GET['trang'];
}else{
    $page = '';
}
if($page == '' || $page == 1){
    $begin = 0;
}else{
    $begin = ($page*20)-20;
}
?>
<?php

	//lấy tất cả từ giỏ hàng và kahchs hàng điều kiện 2 id bằng nhau 
  $sql_lietke_dh = "SELECT * FROM tbl_giohang,tbl_khackhang WHERE tbl_giohang.id_khachhang=tbl_khackhang.id_khachhang ORDER BY tbl_giohang.id_giohang DESC LIMIT $begin,20";
	$query_lietke_dh = mysqli_query($mysqli,$sql_lietke_dh);
?>
 <form class="form-inline mt-3" action="index.php?action=quanlydonhang&query=loc" method="POST">
                            <div class="form-group mr-2">
                                <label for="ngayBatDau" class="mr-2">Lọc theo ngày:</label>
                                <input type="date" class="form-control" name="ngayBatDau" required>
                            </div>
                        
                            <div class="form-group mr-2">
                                <label for="ngayKetThuc" class="mr-2">Đến ngày:</label>
                                <input type="date" class="form-control" name="ngayKetThuc" required>
                            </div>
                        
                            <button type="submit" class="btn btn-success">Lọc</button>
                        </form>
<table   class='lietkesp'>

  <tr class="header_lietke">
  	<th>Id</th>
    <th>Mã đơn</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Số điện thoại</th>
    <th>Thời gian</th>
  	<th>Thanh toán</th>
    <th>Tình trạng</th>
  	<th>Chi tiết đơn</th>
  	<th>Thao tác</th>

  
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
  	$i++;
  ?>
  <tr>
  	<th><?php echo $i ?></th>
    <th><?php echo $row['code_cart'] ?></th>
    <th><?php echo $row['tenkhachhang'] ?></th>
    <th><?php echo $row['diachi'] ?></th>
    <th><?php echo $row['dienthoai'] ?></th>
    <th><?php echo $row['stime']?></th>
    <th><?php echo $row['payment_method']?></th>

    <th>
    	<?php if($row['cart_status']==1){
    		echo '<a class="inputdonhang" href="modules/quanlydonhang/xuly.php?code='.$row['code_cart'].'&status=moi">Đơn hàng mới</a>';
      } elseif($row['cart_status'] == 0){
        echo '<a class="inputdonhang" href="modules/quanlydonhang/xuly.php?code=' . $row['code_cart'] . '&status=danggiao">Đang giao</a>';
      } else {
        echo "Đã xác nhận";
          	}// nếu ấn vào 
    	?>
    </th>

</td>

   	<th>
   		<a href="index.php?action=quanlydonhang&query=xemdonhang&code=<?php echo $row['code_cart'] ?>">Xem đơn hàng</a> 
          </th>
     <th>
      <a href="modules/quanlydonhang/xuly.php?idcart=<?php  echo $row['code_cart']; ?>">Xóa</a> </th>


  </tr>
  <?php
  } 
  ?>
 
</table>

</div>
<?php
// phân trang
     $sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
     $row_count = mysqli_num_rows($sql_trang);
     $trang = ceil($row_count/20);
     ?>
   <nav style="margin-top: 70px;margin-left:50%"; aria-label="Page navigation example">
  <ul class="pagination">


      </a>
    </li>
    <?php for ($i = 1; $i <= $trang; $i++) : ?>
    <span class="page-item">
        <a class="page-link <?php echo ($i == $page) ? 'active' : ''; ?>"
           href="index.php?action=quanlydonhang&query=lietke&trang=<?php echo $i ?>"><?php echo $i ?></a>
    </span>
<?php endfor; ?>

  