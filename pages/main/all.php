<div>
<?php
    if(isset($_GET['trang'])){ //khi inset trang
        $page = $_GET['trang']; //đặt $page = $ i ở số trang
    }else{
        $page =1;    
    }if($page == '' || $page == 1){     // khi trang 1 hoặc ko có số trang thì begin = 0
        $begin = 0;
    }else{
        $begin = ($page*8)-8;   // khi số khác thì lấy số trang nhân với 2 và trừ đi 2 sản phẩn trang trước vd đang lấy là mỗi trang 2 sp
    }

    //$sql_pro = "SELECT * FROM tbl_sanpham  DESC LIMIT $begin,2";
    $sql_pro = "SELECT tbl_sanpham.*, SUM(tbl_cart_details.soluongmua) AS total_quantity 
    FROM tbl_sanpham 
    LEFT JOIN tbl_cart_details ON tbl_sanpham.id_sanpham = tbl_cart_details.id_sanpham
    WHERE tbl_sanpham.id_sanpham  AND tbl_sanpham.tinhtrang = 1 
    GROUP BY tbl_sanpham.id_sanpham  DESC LIMIT $begin,36"; //lấy tất cả sản phẩm dựa vào id 
    $query_pro = mysqli_query($mysqli,$sql_pro);
    //get ten danh muc
    // $sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.id_danhmuc = '$_GET[id]' LIMIT 1";
    // $query_cate = mysqli_query($mysqli,$sql_cate);
    // $row_title = mysqli_fetch_array($query_cate);

?>

 
    <select class="list-sort-by" onchange="sortProducts(this.value)">
        <option value="created-descending">Mới nhất</option>
        <option value="price-ascending">Giá: Tăng dần</option>
        <option value="price-descending">Giá: Giảm dần</option>
        <option value="title-ascending">Tên: A-Z</option>
        <option value="title-descending">Tên: Z-A</option>
        <option value="created-ascending">Cũ nhất</option>
       
        <option value="best-selling">Bán chạy nhất</option>
        <option value="quantity-descending">Tồn kho: Giảm dần</option>
    </select>
</div>

        </div>
        <div class="maincontent">
             
            <?php
                    $giaspkm=0;
                    while($row_pro = mysqli_fetch_array($query_pro)){
                        if ($row_pro['km']>0){$giaspkm=$row_pro['giasp']-($row_pro['giasp']*($row_pro['km']/100));};
                        $soluongcon = 0;
						$soluongcon = $row_pro['soluong'] - $row_pro['total_quantity'];
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
        <div class="content-paging">
            <?php   
                $sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham  "); // lấy tất cả dữ liệu sản phẩm từ tbl sản phẩm điêu kiện có id danh mục  trùng với id danh mục trong tbl sản phẩm
                $row_count = mysqli_num_rows($sql_trang);
                $trang = ceil($row_count/8);//chia cho 2 này là lấy ví dụ mỗi trang có 2 sản phẩm
                // echo $trang;
            ?>
            <div class="filter-page">
                <!-- <a href="" class="filter-page-control fas ti-angle-left"></a> -->
                <?php
                    for($i=1;$i<=$trang;$i++){
                ?>
                <a <?php if($i==$page){echo 'style="color: red;background-color: #ccc;"';}else{'';} ?> href="index.php?quanly=shopall&trang=<?php echo $i ?>" class="filter-page-number"><?php echo $i ?></a>
                <!-- kia là điều kiện nếu bấm vào trang nào thì trang đó có css như kia còn không là rỗng còn kia là đường link điều kiên -->
                <?php
                    }
                ?>
                <!-- <a href="" class="filter-page-control fas ti-angle-right"></a> -->
            </div>
        </div>
        <script>// Lấy danh sách tất cả các phần tử có class 'maincontent-name'
var productNames = document.querySelectorAll('.maincontent-name');
function sortProducts(sortOption) {
    var products = document.querySelectorAll('.maincontent-item');
    var productsArray = Array.from(products);

    productsArray.sort(function(a, b) {
        var valueA, valueB;

        if (sortOption === 'price-ascending' || sortOption === 'price-descending') {
            valueA = parseInt(a.querySelector('.maincontent-gia span').textContent.replace('vnd', '').replace(',', ''));
            valueB = parseInt(b.querySelector('.maincontent-gia span').textContent.replace('vnd', '').replace(',', ''));
        } else if (sortOption === 'title-ascending' || sortOption === 'title-descending') {
            valueA = a.querySelector('.maincontent-name').textContent.toUpperCase();
            valueB = b.querySelector('.maincontent-name').textContent.toUpperCase();
        } else if (sortOption === 'best-selling') {
            // Lấy số lượng bán được
            valueA = parseInt(a.querySelector('.maincontent-soluong').textContent);
            valueB = parseInt(b.querySelector('.maincontent-soluong').textContent);
        } else if (sortOption === 'newest') {
            // Lấy ngày đăng mới nhất (giả sử ngày đăng lưu trong data-created attribue của sản phẩm)
            valueA = new Date(a.getAttribute('data-created'));
            valueB = new Date(b.getAttribute('data-created'));
        }

        if (valueA < valueB) {
            return sortOption.includes('ascending') ? -1 : 1;
        }
        if (valueA > valueB) {
            return sortOption.includes('ascending') ? 1 : -1;
        }
        return 0;
    });

    var maincontent = document.querySelector('.maincontent');
    maincontent.innerHTML = '';

    productsArray.forEach(function(product) {
        maincontent.appendChild(product);
    });
}


// Giới hạn chiều dài của tên sản phẩm và thêm dấu "..." nếu cần
productNames.forEach(function (productName) {
    var originalText = productName.textContent.trim();
    if (originalText.length > 13) {
        var truncatedText = originalText.slice(0, 13) + '...';
        productName.textContent = truncatedText;
    }
});
</script>