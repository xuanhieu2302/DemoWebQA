<div class="pyro"><div class="before"></div><div class="after"></div></div>
<div class="login-form">
	<div class="login-container">
	<a href="./index.php" class="header-zz">
        <div class="logo-wrapper">
            <img src="./assets/img/logo.webp" alt="logo">
        </div>
    </a>
  <h1 class="display-3">CẢM ƠN QUÝ KHÁCH</h1>
  <p class="lead"><strong>Làm ơn hãy kiểm tra Email .</strong>Để được nhận thông báo </p>
  <hr>
  <p>
     <a href="index.php?quanly=donhang">Xem đơn hàng của bạn --></a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="index.php?quanly=danhmucsp&id=1" role="button">Ấn vào đây để tiếp tục mua hàng</a>
  </p>
</div>
<div class="clear"></div>
</div>

</div>
<?php
if(isset($_POST['phanhoi'])) {
  // Lấy nội dung phản hồi từ form
  $noidung = mysqli_real_escape_string($mysqli, $_POST['noidung']);
	$code = $_GET['code_cart'];

  // Chèn nội dung phản hồi vào bảng tbl_hoanhang trong cơ sở dữ liệu
  $insert_feedback_sql = "INSERT INTO tbl_hoanhang (code_cart, noidung) VALUES ('$code', '$noidung')";
  $insert_feedback_query = mysqli_query($mysqli, $insert_feedback_sql);

  if ($insert_feedback_query) {
    header('Location:chitiet.php?quanly=camon');

  } else {
      echo "Lỗi: " . mysqli_error($mysqli);
  }
}
?>