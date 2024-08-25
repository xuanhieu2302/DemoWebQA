                
                <div class="modal">
                    <!-- phần tìm kiếm -->
                    
                    <div >
                        <input type="checkbox" class="check-timkiem-css" name="check-timkiem" id="check-timkiem">
                        <label for="check-timkiem"  class="search-them-modal "></label> 
                        <div class="search_modal ">
                            <label for="check-timkiem" class="search_modal-icon-btn ti-close"></label>
                            <div class="search_modal-header" ><p>Tìm kiếm</p>
                            
                            </div>
                            <form action="index.php?quanly=timkiem" method="POST">
                                <input  id="search" type="text" class="search_modal-input" placeholder="Nhập tên sản phẩm ..." name="tukhoa">
                                
                                <input class="search_modal_btn" type="submit" name="timkiem" value="Tìm kiếm">
                            </form>
                            <div class="cart_thamkhaao">
                            <div class="cart_thamkhaao-1"> 
                                <h4>Có thể bạn sẽ thích</h4>
                            <a style=" font-size: 16px;" href="index.php?quanly=shopall">Xem thêm</a><!-- thêm chi link sản phẩm mới -->
                            </div>
                            <div class="maincontent">
             
                                <?php
                                        $sql_pro = "SELECT * FROM tbl_sanpham order by RAND() LIMIT 1 ";
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
                                                </a>
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
                        </div>
                    </div>
              
                </div>
                <script>// Lấy danh sách tất cả các phần tử có class 'maincontent-name'
var productNames = document.querySelectorAll('.maincontent-name');

// Giới hạn chiều dài của tên sản phẩm và thêm dấu "..." nếu cần
productNames.forEach(function (productName) {
    var originalText = productName.textContent.trim();
    if (originalText.length > 13) {
        var truncatedText = originalText.slice(0, 13) + '...';
        productName.textContent = truncatedText;
    }
});
</script>