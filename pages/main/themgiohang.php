<?php
	session_start();
	include('../../admincp/config/config.php');
	//them so luong
	
	if(isset($_GET['cong'])){
		$id=$_GET['cong'];
		foreach($_SESSION['cart'] as &$cart_item){
			if($cart_item['id']==$id){
				$cart_item['soluong'] += 1;
				if($cart_item['soluong'] > 9){
					$cart_item['soluong'] = 9;
				}
			}
		}
		header('Location:../../index.php?quanly=giohang');
	}
	
	if(isset($_GET['tru'])){
		$id=$_GET['tru'];
		foreach($_SESSION['cart'] as &$cart_item){
			if($cart_item['id']==$id){
				$cart_item['soluong'] -= 1;
				if($cart_item['soluong'] < 1){
					$cart_item['soluong'] = 1;
				}
			}
		}
		header('Location:../../index.php?quanly=giohang');
	}
	
	//xoa san pham o gio hang
	if(isset($_SESSION['cart']) && isset($_GET['xoa'])){
		$id = $_GET['xoa'];
		
		// Duyệt qua mỗi sản phẩm trong giỏ hàng
		foreach($_SESSION['cart'] as $key => $cart_item){
			// Nếu ID sản phẩm trùng khớp với ID muốn xóa
			if($cart_item['id'] == $id){ 
				// Loại bỏ sản phẩm khỏi giỏ hàng
				unset($_SESSION['cart'][$key]);
				// Thoát khỏi vòng lặp sau khi xóa sản phẩm
				break;
			}
		}
		
		// Chuyển hướng trở lại trang giỏ hàng
		header('Location:../../index.php?quanly=giohang');
	}
	
	
	if(isset($_SESSION['cart']) && isset($_GET['xoa1'])){
		$id=$_GET['xoa1'];
		$product = [];
		foreach($_SESSION['cart'] as $cart_item){
			if($cart_item['id']!=$id){ 
				$product[] = array('tensanpham'=>$cart_item['tensanpham'],'id'=>$cart_item['id'],'soluong'=>$cart_item['soluong'],'giasp'=>$cart_item['giasp'],'hinhanh'=>$cart_item['hinhanh'],'masp'=>$cart_item['masp']);
			}
		}
		$_SESSION['cart'] = $product;
		header('Location:../../index.php');
	}
	
	if(isset($_GET['xoatatca']) && $_GET['xoatatca'] == 1){
		unset($_SESSION['cart']);
		header('Location:../../index.php?quanly=giohang');
	}
	
	//them sanpham vao gio hang
	if(isset($_POST['themgiohang'])){
		$id = $_GET['idsanpham'];
		
		// Kiểm tra xem có tồn tại giá trị soluong và kichthuoc trong $_POST không
		if (isset($_POST['soluong']) && isset($_POST['kichthuoc'])) {
			$soluong = $_POST['soluong']; // Lấy thông tin về số lượng từ form
			$size = $_POST['kichthuoc']; // Lấy thông tin về size từ form
		
			$sql ="SELECT * FROM tbl_sanpham WHERE id_sanpham='".$id."' LIMIT 1";
			$query = mysqli_query($mysqli,$sql);
			$row = mysqli_fetch_array($query);
		
			if($row){
				$new_product = array(
					'tensanpham' => $row['tensanpham'],
					'id' => $id,
					'soluong' => $soluong,
					'giasp' => $row['giasp'],
					'hinhanh' => $row['hinhanh'],
					'masp' => $row['masp'],
					'size' => $size // Lưu size vào mảng cart_item
				);
				
		
				if(isset($_SESSION['cart'])){
					$found = false;
					foreach ($_SESSION['cart'] as &$cart_item) {
						if ($cart_item['id'] == $id && $cart_item['size'] == $size) {
							$cart_item['soluong'] += $soluong; // Cộng thêm số lượng nếu sản phẩm và size đã tồn tại trong giỏ hàng
							$found = true;
							break;
						}
					}
					if (!$found) {
						$_SESSION['cart'][] = $new_product;
					}
				} else {
					$_SESSION['cart'][] = $new_product;
				}
			} else {
				echo "Không tìm thấy sản phẩm với ID: ".$id;
			}
			
			// Hiển thị thông tin giỏ hàng sau khi thêm sản phẩm
	
		} else {
			echo "Không có giá trị soluong hoặc kichthuoc được gửi từ form.";
		}
	
	
		
	
	
		header('Location: ' . $_SERVER['HTTP_REFERER']);
	}
	if(isset($_POST['muangay'])){
		$id = $_GET['idsanpham'];
		
		// Kiểm tra xem có tồn tại giá trị soluong và kichthuoc trong $_POST không
		if (isset($_POST['soluong']) && isset($_POST['kichthuoc'])) {
			$soluong = $_POST['soluong']; // Lấy thông tin về số lượng từ form
			$size = $_POST['kichthuoc']; // Lấy thông tin về size từ form
		
			$sql ="SELECT * FROM tbl_sanpham WHERE id_sanpham='".$id."' LIMIT 1";
			$query = mysqli_query($mysqli,$sql);
			$row = mysqli_fetch_array($query);
		
			if($row){
				$new_product = array(
					'tensanpham' => $row['tensanpham'],
					'id' => $id,
					'soluong' => $soluong,
					'giasp' => $row['giasp'],
					'hinhanh' => $row['hinhanh'],
					'masp' => $row['masp'],
					'size' => $size // Lưu size vào mảng cart_item
				);
				
		
				if(isset($_SESSION['cart'])){
					$found = false;
					foreach ($_SESSION['cart'] as &$cart_item) {
						if ($cart_item['id'] == $id && $cart_item['size'] == $size) {
							$cart_item['soluong'] += $soluong; // Cộng thêm số lượng nếu sản phẩm và size đã tồn tại trong giỏ hàng
							$found = true;
							break;
						}
					}
					if (!$found) {
						$_SESSION['cart'][] = $new_product;
					}
				} else {
					$_SESSION['cart'][] = $new_product;
				}
			} else {
				echo "Không tìm thấy sản phẩm với ID: ".$id;
			}
			
			// Hiển thị thông tin giỏ hàng sau khi thêm sản phẩm
	
		} else {
			echo "Không có giá trị soluong hoặc kichthuoc được gửi từ form.";
		}
	
	
		
	
	
		header('Location:../../index.php?quanly=giohang');
	}
?>

    
    

?>