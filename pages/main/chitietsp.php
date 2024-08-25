
			
<?php	
		$sql_sanpham = "SELECT 
		tbl_sanpham.*, 
		size_soluong.id_size, 
		size_soluong.soluongsize AS soluongconlai,
		SUM(tbl_cart_details.soluongmua) AS total_quantity 
	FROM 
		tbl_sanpham 
	LEFT JOIN 
		tbl_cart_details ON tbl_sanpham.id_sanpham = tbl_cart_details.id_sanpham
	LEFT JOIN 
		size_soluong ON tbl_sanpham.id_sanpham = size_soluong.id_sanpham
	WHERE 
		tbl_sanpham.id_sanpham = '$_GET[idsanpham]' 
		AND tbl_sanpham.tinhtrang = 1 
	GROUP BY 
		tbl_sanpham.id_sanpham, size_soluong.id_size 
	LIMIT 1";

				$query_sanpham = mysqli_query($mysqli, $sql_sanpham);
				
								$giaspkm=0;
								while($row_sanpham = mysqli_fetch_array($query_sanpham)){
									$soluongcon = 0;
									$soluongcon = $row_sanpham['soluong'] - $row_sanpham['total_quantity'];
									if ($row_sanpham['km']>0){$giaspkm=$row_sanpham['giasp']-($row_sanpham['giasp']*($row_sanpham['km']/100));};
						?>
																<?php


// Thực hiện truy vấn dữ liệu kích thước từ CSDL

$sql_sizes = "SELECT size.*, size_soluong.id_size_soluong, size_soluong.soluongsize, size_soluong.soluongdaban 
FROM size 
LEFT JOIN size_soluong ON size.id_size = size_soluong.id_size 
WHERE size_soluong.id_sanpham = '$_GET[idsanpham]'";
$result_sizes = $mysqli->query($sql_sizes);

// Kiểm tra và gán giá trị cho biến $listSizes
$listSizes = [];
if ($result_sizes && $result_sizes->num_rows > 0) {
    while ($row = $result_sizes->fetch_assoc()) {
        $soluongban =  $row_sanpham['total_quantity'];

        $soluongconlai = $row['soluongsize'] - $row['soluongdaban'];
        if ($soluongconlai > 0) {
            $row['soluongconlai'] = $soluongconlai;
            $listSizes[] = $row;
        }
    }
}
?>
	<div>
					<div id="product">
						<div id="backtoshop">
							<a href="./index.php" class="ti-angle-left">back to new arrivals</a>
						</div>
					</div>
					<div class="product-container">

						<div class="product-detail-wapper">
							<div class="detail-wapper-info">
							<div class="product-images">
    <div class="product-big-image">
        <img src="./admincp/modules/quanlysp/uploads/<?php echo $row_sanpham['hinhanh'] ?>" alt="">
    </div>
</div>
<div class="product-details">
    <div class="product-info">
        <h1><?php echo $row_sanpham['tensanpham'] ?></h1>

        <?php
        // Tính tổng số lượng còn lại
        $totalRemainingQuantity = 0;
        foreach($listSizes as $size) {
            $totalRemainingQuantity += $size['soluongconlai'];
        }
        ?>

        <!-- Thông tin đánh giá sản phẩm -->
        <div class="product-rating">
            <span class="star-rating">4.2 &#9733;&#9733;&#9733;&#9733;&#9734;</span> 
            <span class="separator">|</span><!-- 4 sao -->
            <span class="review-count"><?php echo $soluongban; ?> Đánh Giá</span>
            <span class="separator">|</span>
            <span class="sold-count"><?php echo $soluongban; ?> đã bán</span>
        </div>
        <h4>MSP: <?php echo $row_sanpham['masp'] ?></h4>



        <!-- Hiển thị tổng số lượng còn lại -->
        <h4>Số lượng còn lại: <?php echo ($totalRemainingQuantity <= 0) ? 'Hết hàng' : $totalRemainingQuantity; ?></h4>

        <form id="productForm" method="POST" action="./pages/main/themgiohang.php?idsanpham=<?php echo $row_sanpham['id_sanpham'] ?>" onsubmit="return validateForm()">
        <div class="size-options">
    <?php foreach($listSizes as $size) { ?>
        <div data-value="<?php echo $size['id_size']; ?>" class="size-option">
            <input class="size-radio" id="size-<?php echo $size['id_size']; ?>" type="radio" name="kichthuoc" value="<?php echo $size['id_size']; ?>" onchange="enableQuantity(<?php echo $size['soluongconlai']; ?>)">
            <label for="size-<?php echo $size['id_size']; ?>" class="size-label">
                <span><?php echo $size['ten_size']; ?> </span>
            </label>
        </div>
    <?php } ?>
</div>

<div class="product-quantity-selection">
<p id="soluong-label">Số lượng: </p>
    <input type="number" id="soluong" name="soluong" min="1" max="1" disabled oninput="updateQuantityLabel(this.value)">
</div>


            </div>
									<div class="detail-right-info-price">
										<p><?php if($row_sanpham['km']>0){ echo number_format($giaspkm).'vnd'; }else {echo number_format($row_sanpham['giasp']).'vnd';} ?><span><?php if($row_sanpham['km']>0){
                                                    echo number_format($row_sanpham['giasp']).'vnd';
                                                    }else{

                                                    } ?></span></p>
									</div>
        
                                    <div class="product-buttons">
    <?php if ($totalRemainingQuantity > 0) { ?>
        <button type="submit" name="themgiohang" class="add-to-cart-button" onclick="return validateSizeSelection();">
            <i class="fas fa-shopping-cart"></i>
            <span>Thêm vào giỏ hàng</span>
        </button>
        <button type="submit" name="muangay" class="buy-now-button" onclick="return validateSizeSelection();">
            <i class="fas fa-shopping-bag"></i>
            <span>Mua Ngay</span>
        </button>
    <?php } else { ?>
        <div class="sold-out-message">
            Hết hàng
        </div>
    <?php } ?>
</div>
<div class="delivery-info">
        <div class="delivery-info-item">
            <div class="delivery-info-icon"><a href="index.php?quanly=chinhsach&id=6"><i class="fas fa-truck"></i></a></div>
            <span>Giao hàng nhanh<br>Từ 2 - 5 ngày</span>
        </div>
        <div class="delivery-info-item">
            <div class="delivery-info-icon"><i class="fas fa-shipping-fast"></i></div>
            <span>Freeship toàn quốc từ 399k<br>Miễn phí vận chuyển<br>Đơn hàng từ 399K</span>
        </div>
        <div class="delivery-info-item">
            <div class="delivery-info-icon"><a href="index.php?quanly=donhang"><i class="fas fa-search"></i></a></div>
            <span>Theo dõi đơn hàng dễ dàng<br>Đổi trả linh hoạt</span>
        </div>
        <div class="delivery-info-item">
            <div class="delivery-info-icon"><a href="index.php?quanly=chinhsach&id=4"><i class="fas fa-credit-card"></i></a></div>
            <span>Thanh toán dễ dàng<br>Nhiều hình thức<br>Hotline hỗ trợ 039 9999 365</span>
        </div>
    </div>
    </div>
    
</div>



				
				
								
</form>

									<div class="product-description">
										<div class="description-content">
											<div class="description-productdetail">
												<h2>Giới thiệu sản phẩm</h2>
												<p><?php echo $row_sanpham['tomtat'] ?></p>
												<hr>
												<p>
													<strong>HADES™&nbsp;&nbsp;</strong>
													✦
													<strong>&nbsp;&nbsp;</strong>
													STREETWEAR BRAND LIMITED&nbsp;&nbsp;✦
													<br>
													Copyright © 2021 Hades. All rights reserved
												</p>
												<p>&nbsp;</p>
												<p>&nbsp;</p>
												<p>&nbsp;</p>
												<p>&nbsp;</p>
												<p>&nbsp;</p>
											</div>
										</div>
									</div>
								</div>
							</div>
					<?php } ?>
					<div class="splienquan">
						<h1 style="text-align:center;">Sản phẩm liên quan<h1>
					</div>
					<div class="maincontent">
             
                                <?php
                                        $sql_pro = "SELECT * FROM tbl_sanpham order by RAND() LIMIT 4 ";
                                        $query_pro = mysqli_query($mysqli,$sql_pro);
                                        $giaspkm=0;
                                        while($row_pro = mysqli_fetch_array($query_pro)){
                                            if ($row_pro['km']>0){$giaspkm=$row_pro['giasp']-($row_pro['giasp']*($row_pro['km']/100));};
                                ?>
                                
                                    <ul>
                                    <div class="maincontent-item">
                                        <div class="maincontent-top">

                                            <?php 
                                                if($row_pro['km']==0){

                                                }else{
                                            ?>
                                                    <div class="khuyenmai"><?php echo number_format($row_pro['km']).'%' ?></div>
                                            <?php  
                                                }
                                            ?>
                                            <div class="maiconten-top1">
                                                
                                                <a href="index.php?quanly=chitiet&idsanpham=<?php echo $row_pro['id_sanpham'] ?>" class="maincontent-img">
                                                    <img src="./admincp/modules/quanlysp/uploads/<?php echo $row_pro['hinhanh'] ?>">
                                               
                                                <button type  ="submit" title = 'chi tiet' class="muangay"  name="chitiet"><a href="index.php?quanly=chitiet&idsanpham=<?php echo $row_pro['id_sanpham'] ?>">Mua Ngay</a></button>

                                            </div>
                                        </div>
                                        <div class="maincontent-info">
                                            <a href="index.php?quanly=chitiet&idsanpham=<?php echo $row_pro['id_sanpham'] ?>" class="maincontent-name"><?php echo $row_pro['tensanpham'] ?></a>
                                            <a href="index.php?quanly=chitiet&idsanpham=<?php echo $row_pro['id_sanpham'] ?>" class="maincontent-gia"><?php if($row_pro['km']>0){ echo number_format($giaspkm).'vnd'; }else {echo number_format($row_pro['giasp']).'vnd';} ?>
                                                            <span><?php if($row_pro['km']>0){
                                                                    echo number_format($row_pro['giasp']).'vnd';
                                                                    }else{

                                                                    }
                                                                    ?>                                                                                                                                                                                                        
                                                            </span></a>
                                        </div>
                                    </div>
                                    </ul>
                                <?php
                                    }
                                ?>
                                
                            </div>
                </div>
					
<script>
    
    function updateQuantityLabel(soluong) {
    var soluongLabel = document.getElementById("soluong-label");
    soluongLabel.textContent = "Số lượng: " + soluong;
}

    // Lấy danh sách tất cả các phần tử có class 'maincontent-name'
var productNames = document.querySelectorAll('.maincontent-name');

// Giới hạn chiều dài của tên sản phẩm và thêm dấu "..." nếu cần
productNames.forEach(function (productName) {
    var originalText = productName.textContent.trim();
    if (originalText.length > 13) {
        var truncatedText = originalText.slice(0, 13) + '...';
        productName.textContent = truncatedText;
    }
});

function enableQuantity(maxQuantity) {
    var quantityInput = document.getElementById("soluong");
    quantityInput.removeAttribute("disabled");
    quantityInput.setAttribute("max", maxQuantity);
    quantityInput.value = 1; // Đặt giá trị mặc định là 1
}
</script>
<script>
    function enableQuantity(maxSoluong) {
        var soluongInput = document.getElementById('soluong');
        var selectedSize = document.querySelector('input[name="kichthuoc"]:checked');

        if (selectedSize) {
            soluongInput.disabled = false;
            soluongInput.max = maxSoluong;
            soluongInput.value = 1;
        } else {
            soluongInput.disabled = true;
        }
    }

    function validateForm() {
        var soluongInput = document.getElementById('soluong');
        var soluongNhap = parseInt(soluongInput.value);

        if (soluongNhap <= 0) {
            alert("Số lượng không hợp lệ. Vui lòng chọn một kích thước và nhập số lượng hợp lệ.");
            return false;
        }
        return true;
    }
</script>

									<script>function validateSizeSelection() {
    var selectedSize = document.querySelector('input[name="kichthuoc"]:checked');
    if (!selectedSize) {
        alert("Vui lòng chọn kích thước trước khi thêm vào giỏ hàng.");
        return false;
    }
    return true;
}
</script>	

