
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
    $begin = ($page*5)-5;
}
?>

<?php
$userEmail = $_SESSION['email']; // Get the logged-in user's email from the session variable

$sql_lietke_dh = "SELECT * FROM tbl_giohang, tbl_khackhang
                  WHERE tbl_giohang.id_khachhang = tbl_khackhang.id_khachhang
                  AND tbl_khackhang.email = '$userEmail' 
                  ORDER BY tbl_giohang.code_cart DESC LIMIT $begin, 5";

$query_lietke_dh = mysqli_query($mysqli, $sql_lietke_dh);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>
    <link rel="stylesheet" href="styles.css"> <!-- Liên kết tới tệp CSS tùy chỉnh -->
</head>

<body>
    <!-- Các phần tử HTML của bạn -->
    <h2>Đơn hàng</h2>
    <table class="table">

 <div class="row" style="margin-top: 20px;">
	

    <thead>
  <tr>
  	<th>STT</th>
    <th>Mã đơn hàng</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Email</th>
    <th>Số điện thoại</th>
    <th>Thời gian tạo</th>
    <th>Tình trạng</th>
    <th>Xác nhận</th>

  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
$currentTimestamp = time(); 
$orderTimestamp = strtotime($row['stime']);

  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tenkhachhang'] ?></td>
    <td><?php echo $row['diachi'] ?></td>
    <td><?php echo $row['email'] ?></td>
    <td><?php echo $row['dienthoai'] ?></td>
    <td><?php echo $row['stime'] ?></td>
    <td>
    <?php
    if($row['cart_status'] == 1){
        echo '<span style="color: red;">Chờ xác nhận</span>';
        ?>
        <div class="clear"></div>
            <a href="index.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a>
        <?php
    } elseif($row['cart_status'] == 0) {
        echo '<span style="color: yellow;">Đơn hàng đang được giao</span>';

        ?>
        <div class="clear"></div>
        <a href="index.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a>
    <?php
    } elseif($row['cart_status'] == 2){
        echo '<span style="color: blue;">Đã giao hàng</span>';
        ?>
        <div class="clear"></div>
            <a href="index.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a>
        <?php
    }
    ?>
</td>
<td>
    <?php
    if ($row['cart_status'] == 1) {
        echo "";
    } elseif ($row['cart_status'] == 0) {
    ?>
    <a href="index.php?quanly=xuly&query=xuly&code=<?php echo $row['code_cart']; ?>" class="btn btn-success">Đã nhận</a>
    <?php       
    }  elseif (($currentTimestamp - $orderTimestamp) > 600000) {
      // Nếu đã qua 7 ngày, hiển thị nút "Xem đơn hàng" thay vì "Đổi trả"
      ?>
      <a href="index.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>" class="btn btn-primary">Xem đơn hàng</a>
      <?php
  } else {
      // Nếu chưa qua 7 ngày, hiển thị nút "Đổi trả"
      ?>
      <a href="index.php?quanly=hoanhang&query=hoanhang&code=<?php echo $row['code_cart']; ?>" class="btn btn-warning">Đổi trả</a>
      <?php
  }
    ?>
</td>

    
  </tr>
  <?php
  } 
  ?>
   </tr>
  </thead>
  
</table>
 </div>
