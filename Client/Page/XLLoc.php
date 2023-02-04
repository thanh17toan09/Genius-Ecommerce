<a id="btn-iphone" value="iphone" style=" height: 50px;">
          <img  style="width: 150px;" src="../img/icon-brand/iPhone-(Apple)42-b_16.jpg">
        </a>
        <a id="btn-samsung" value="samsung" style=" height: 50px;">
          <img style="width: 150px;" src="../img/icon-brand/Samsung42-b_25.jpg">
        </a>
        <a id="btn-oppo" value="oppo" style=" height: 50px;">
          <img style="width: 150px;" src="../img/icon-brand/OPPO42-b_9.png">
        </a>
        <a id="btn-huawei" value="huawei" style=" height: 50px;">
          <img style="width: 150px;" src="../img/icon-brand/Huawei42-b_30.jpg">
        </a>
        <a id="btn-vivo" value="vivo" style=" height: 50px;">
          <img style="width: 150px;" src="../img/icon-brand/Vivo42-b_50.jpg">
        </a>
        <a id="btn-xiaomi" value="xiaomi" style=" height: 50px;">
          <img style="width: 150px;" src="../img/icon-brand/Xiaomi42-b_45.jpg">
        </a>
        <a id="btn-vsmart" value="vsmart" style=" height: 50px;">
          <img style="width: 150px;" src="../img/icon-brand/Vsmart42-b_40.png">
        </a>
<?php
    $data = "%".$_POST['timkiem']."%";
    $sql = "SELECT * FROM thongtin_sanpham WHERE TenSP LIKE '$data'";
    $arrs_list = Data::ExecuteQuery($sql);
    $page_timkiem = 1;//khởi tạo trang ban đầu
    $limit = 15;//số bản ghi trên 1 trang (20 bản ghi trên 1 trang)
    
    $total_record = mysqli_num_rows($arrs_list);//tính tổng số bản ghi có trong bảng thongtin_sanpham
    
    $total_page=ceil($total_record/$limit);//tính tổng số trang sẽ chia

    //xem trang có vượt giới hạn không:
    if(isset($_GET["page_timkiem"]))
        $page_timkiem=$_GET["page_timkiem"];//nếu biến $_GET["page_timkiem"] tồn tại thì trang hiện tại là trang $_GET["page_timkiem"]
    if($page_timkiem<1) 
        $page_timkiem=1; //nếu trang hiện tại nhỏ hơn 1 thì gán bằng 1
    if($page_timkiem>$total_page) 
        $page_timkiem=$total_page;//nếu trang hiện tại vượt quá số trang được chia thì sẽ bằng trang cuối cùng

    //tính start (vị trí bản ghi sẽ bắt đầu lấy):
    $start=($page_timkiem-1)*$limit;
    $sql_arrs = "SELECT * FROM `thongtin_sanpham` WHERE TenSP LIKE '$data' LIMIT $start,$limit";
    //lấy ra danh sách và gán vào biến $arrs:
    $arrs = Data::ExecuteQuery($sql_arrs);
    foreach($arrs as $arr) {
        $title = str_replace(' ','-',$arr['TenSP']);
        $Giaban = number_format($arr['GiaBan']);
        $chuoi = <<<EOD
            <li class = "list_product">

            <a href = "Product_Page.php?title=$title&link={$arr['ID']}">
                <img src="{$arr['Hinh']}">

                <h3>{$arr['TenSP']}</h3>
EOD;

        if(isset($arr['GiaNY'])){
        $Gianiemyet = number_format($arr['GiaNY']);
        $chuoi.= <<<EOD
        <div style="height: 15px; color: black; text-align: left; margin: 0 5px; font-size: 12px; text-decoration: line-through;">{$Gianiemyet}đ</div>
EOD;
        }
        if(!isset($arr['GiaNY'])){
        $chuoi = <<<EOD
        <div style="height: 15px; color: black; text-align: left; margin: 0 5px; font-size: 12px; text-decoration: line-through;"></div>
EOD;
        }
        $chuoi.= <<<EOD
            <div style="color: red; text-align: left; margin: 0 5px; font-weight: bold; margin-right: 5px;">{$Giaban}đ</div>
                <footer>
                    <div style="width:fit-content; margin: 0 5px; word-wrap: break-word; color: black; text-align: left; font-size: 12px; margin-right: 5px;">{$arr['KhuyenMai']}</div>
                </footer>
            </a>
            </li>
EOD;
          echo $chuoi;
        }
      ?>
