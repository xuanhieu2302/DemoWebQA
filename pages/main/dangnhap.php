<?php
ob_start(); 
if(isset($_POST['dangnhap'])){
    $email = $_POST['email'];
    $matkhau = md5($_POST['password']);
    $sql = "SELECT * FROM tbl_khackhang WHERE email='".$email."' AND matkhau='".$matkhau."' LIMIT 1";
    $row = mysqli_query($mysqli, $sql);
    $count = mysqli_num_rows($row);
    if($count > 0){
        $row_data = mysqli_fetch_array($row);
        $_SESSION['dangky'] = $row_data['tenkhachhang'];
        $_SESSION['id_khachhang'] = $row_data['id_khachhang']; // Lấy id khach hang de thanh toan
        $_SESSION['role_id'] = $row_data['role_id'];
        $_SESSION['email'] = $row_data['email'];
        if($_SESSION['role_id'] == 4){
            header("Location: index.php");
        } else {
            header("Location: admincp/index.php");
        }
        exit(); // Kết thúc chương trình ngay sau khi chuyển hướng
    } else {
        echo '<script>alert("Tài khoản hoặc Mật khẩu không đúng, vui lòng nhập lại.");</script>';
    }
}
?>
<script>
    function validateForm() {
        var email = document.forms["loginForm"]["email"].value;
        var password = document.forms["loginForm"]["password"].value;
        if (email == "" || password == "") {
            alert("Vui lòng nhập đầy đủ thông tin tài khoản và mật khẩu.");
            return false;
        }
    }
</script>


    <form name="loginForm" action="" method="POST" onsubmit="return validateForm()">

        <div class="login-form">
        <div class="login-container">
    <a href="./index.php" class="header-zz">
        <div class="logo-wrapper">
            <img src="./assets/img/logo.webp" alt="logo">
        </div>
    </a>
            <h2> Đăng nhập </h2>
            <a>Email <span style="color:red">*</span></a><br>
            <input type="text" name="email"><br>
            <a>Password<span style="color:red">*</span></a><br>
            <input type="password" name="password"><br>
            <button name="dangnhap">Đăng nhập</button>
            <i>hoặc </i>
            <div class="links">
    <a href="./index.php">← Quay lại trang chủ</a>
    <a href="./index.php?quanly=dangky">Đăng ký →</a>
</div>
            <?php
            // Hiển thị thông báo lỗi nếu có
            if(isset($error_message)){
                echo '<p style="color: red;">' . $error_message . '</p>';
            }
            ?>
        </div>
    </form>
    <div class="clear"></div>
</div>
