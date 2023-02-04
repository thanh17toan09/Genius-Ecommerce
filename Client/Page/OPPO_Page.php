<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Trung tâm Smartphone 3T</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
  <link href="../css/bootstrap/bootstrap.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../css/style.min.css" rel="stylesheet">
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/menu.css" rel="stylesheet">
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">  
  <style type="text/css">
  
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }
    

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }
    body {  
      padding-top:0px;
    }
    h1 {
      color:#F90
    }
    p {
      color:#0C0
    }
  </style>
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand waves-effect" href="Home_Page.php" target="_blank" style="background: url()">
    <img src="../img/LOGO2.png" style="width: 40px">  
    </a>
      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Left -->
        <ul class="navbar-nav mr-auto">

          <li class="nav-item active">
            <a class="nav-link waves-effect" href="Home_Page.php">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>

          <!-- chèn giới thiệu 3T -->
          <li class="nav-item">
            <a class="nav-link waves-effect" href="/" target="_blank">About Us</a>
          </li>
        </ul>

        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
        <?php
          session_start();
          include_once("MyAccount.php");
          $account = (Account::Display());
          if($account == false){
            $chuoi = <<<EOD
            <li class="nav-item">
            <a id="Login" class="nav-link waves-effect" href = "Login.php">
            <i class="fas fa-sign-in-alt"></i>
            <span class="clearfix d-none d-sm-inline-block"> Login </span>
            </a>
          </li>
EOD;
            echo $chuoi;}
          else{
            $chuoi = <<<EOD
            <li class="nav-item">
              <a id="Logout" class="nav-link waves-effect" href="LSDonHang.php">
              <span class="clearfix d-none d-sm-inline-block"> Lịch sử mua sắm </span>
              </a>
            </li>
            <li class="nav-item">
              <a id="Logout" class="dangxuat nav-link waves-effect">
              <i class="fas fa-sign-out-alt"></i>
              <span class="clearfix d-none d-sm-inline-block"> $account </span>
              </a>
          </li>
          
EOD;
            echo $chuoi;
          }
        ?> 
            
          <li class="nav-item">
            <a id="SoMH"  class="nav-link waves-effect" href = "GioHang.php">
                <?php
                    include_once("MyCart.php");
                    $somh = json_decode(Cart::Display());
                ?>
                <span id="SoMH" class="badge red z-depth-1 mr-1"> <?php echo $somh->SoMH ?></span>
            <i class="fas fa-shopping-cart"></i>
                <span class="clearfix d-none d-sm-inline-block"> Cart </span>
            </a>
          </li>    
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->

  <!--Main layout-->
  <main>
    <?php
      include_once("DataProvider.php");
    ?>
    <div class="container" style="min-width: 900px">
      <!--Carousel Wrapper-->
      <div id="carousel-example-1z" 
      style="height: auto; width: 100%; margin-top: 40px;"  
      class="carousel slide carousel-fade pt-4" data-ride="carousel">

        <!--Indicators-->
        <ol class="carousel-indicators">
        <?php
          $sql_events = "SELECT *FROM slide_events";
          $events = Data::ExecuteQuery($sql_events);
          $count_slide = 0 ;
          while ($row = mysqli_fetch_array($events)){
          $chuoi_event = <<<EOD
           <li data-target="#carousel-example-1z" data-slide-to='$count_slide' class="active"></li>
EOD;
          echo $chuoi_event;
          $count_slide++;
          }
        ?>
        </ol>
        <!--/.Indicators-->

        <!--Slides-->
        <div class="carousel-inner" role="listbox">
        <?php
          $count_slide = 0 ;
          $sql_slides = "SELECT *FROM slide_events";
          $chuoi_slides = Data::ExecuteQuery($sql_slides);
          while ($row = mysqli_fetch_array($chuoi_slides)){
            if($count_slide != 0){
              $slide_event = <<<EOD
              <div class="carousel-item ">
                <img class="view" style="width: inherit; height: inherit;"  src="{$row['Hinh']}">
              </div>
EOD;
              echo $slide_event;
              $count_slide++;
            }
            if($count_slide == 0){
              $slide_event = <<<EOD
              <div class="carousel-item active ">
                <img class="view" style="width: inherit; height: inherit;"  src="{$row['Hinh']}">
              </div>
EOD;
              echo $slide_event;
              $count_slide++;

            }
            
          }
        ?>

        </div>
        <!--/.Slides-->

        <!--Controls-->
        <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
        <!--/.Controls-->

      </div>
      <!--/.Carousel Wrapper-->

      <!--Navbar-->
      <nav class="navbar navbar-expand-lg navbar-dark mdb-color lighten-3 mt-3 mb-5">

        <!-- Navbar brand -->
        <span class="navbar-brand">Danh mục</span>

        <!-- Collapse button -->
        
        <!-- Collapsible content -->
        <div class="menu" >

          <!-- Links -->
          <ul>
            <li>
              <a href="iPhone_Page.php">Iphone</a>
            </li>
            <li>
              <a href="Samsung_Page.php">Samsung</a>
            </li>
            
            <li>
              <a href="OPPO_Page.php">OPPO</a>
            </li>
            <li>
              <a href="Huawei_Page.php">Huawei</a>
            </li>
            <li>
              <a href="Vivo_Page.php">Vivo</a>
            </li>
            <li>
              <a href="Xiaomi_Page.php">Xiaomi</a>
            </li>
            <li>
              <a href="Vsmart_Page.php">Vsmart</a>
            </li>
          </ul>
          <!-- Links -->
        </div>
        <!-- Collapsible content -->
        <form  class="form-inline float-right" method="POST" action="timkiem.php">
          <div class="md-form my-0">
            <input class="form-control mr-sm-2" type="text" name="timkiem"/>
            <input class="border" type="submit" value="Search" style="border-radius: 5px; background-color: lightsteelblue;float: right;width: fit-content;height: 35px;"/>
          </div>
        </form>
      </nav>
      <!--/.Navbar-->
      <!--Section: Products v.3-->
      <?php
      $sql_arrs_list = "SELECT * FROM `thongtin_sanpham` WHERE NhanHieu = 4";
      $arrs_list = Data::ExecuteQuery($sql_arrs_list);
      ?>
      <ul style="
      min-width: 900 px;
      margin: auto;
      padding: 0;
      list-style: none;
      display: flex;
      flex-wrap: wrap;"
      >
      <?php
        $page = 1;//khởi tạo trang ban đầu
        $limit = 15;//số bản ghi trên 1 trang (20 bản ghi trên 1 trang)
        
        $total_record = mysqli_num_rows($arrs_list);//tính tổng số bản ghi có trong bảng thongtin_sanpham
        
        $total_page=ceil($total_record/$limit);//tính tổng số trang sẽ chia
    
        //xem trang có vượt giới hạn không:
        if(isset($_GET["page"]))
          $page=$_GET["page"];//nếu biến $_GET["page"] tồn tại thì trang hiện tại là trang $_GET["page"]
        if($page<1) 
          $page=1; //nếu trang hiện tại nhỏ hơn 1 thì gán bằng 1
        if($page>$total_page) 
          $page=$total_page;//nếu trang hiện tại vượt quá số trang được chia thì sẽ bằng trang cuối cùng
    
        //tính start (vị trí bản ghi sẽ bắt đầu lấy):
        $start=($page-1)*$limit;
        $sql_arrs = "SELECT * FROM `thongtin_sanpham` WHERE NhanHieu = 4  LIMIT $start,$limit";
        //lấy ra danh sách và gán vào biến $arrs:
        $arrs = Data::ExecuteQuery($sql_arrs);
        foreach($arrs as $arr) {
          $title = str_replace(' ','-',$arr['TenSP']);
          $Giaban = number_format($arr['GiaBan']);
          $chuoi = <<<EOD
              <li class = "list_product">

                <a href = "Product_Page.php?title=$title&link={$arr['ID']}">
                  <img src="../img/list_product/{$arr['Hinh']}">

                  <h3>{$arr['TenSP']}</h3>
EOD;
          echo $chuoi;

          if(isset($arr['GiaNY'])){
          $Gianiemyet = number_format($arr['GiaNY']);
          $chuoi = <<<EOD
          <div style="height: 15px; color: black; text-align: left; margin: 0 5px; font-size: 12px; text-decoration: line-through;">{$Gianiemyet}đ</div>
EOD;
          echo $chuoi;
          }
          if(!isset($arr['GiaNY'])){
            $chuoi = <<<EOD
            <div style="height: 15px; color: black; text-align: left; margin: 0 5px; font-size: 12px; text-decoration: line-through;"></div>
EOD;
            echo $chuoi;
            }
          
          $chuoi = <<<EOD
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
      </ul>

      <!-- 'start hiện nút phân trang' -->
      <?php if($total_page > 1){ ?>
      <nav class="d-flex justify-content-center wow fadeIn" style="margin-top: 100px">
				<ul class="pagination pg-blue">
          <!--Arrow left-->
          <li class="page-item">
            <a class="page-link" href="OPPO_Page.php?page=<?php echo 1; ?>" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
              <span class="sr-only">Previous</span>
            </a>
					<?php for($i=1;$i<=$total_page;$i++){ ?>
				    <li <?php if($page == $i) echo "class='page-item active'"; ?> >
              <a class="page-link" href="OPPO_Page.php?page=<?php echo $i; ?>"><?php echo $i; ?>
              </a>
          </li><?php }?>
          <li class="page-item">
            <a class="page-link" href="OPPO_Page.php?page=<?php echo $total_page; ?>" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
              <span class="sr-only">Next</span>
            </a>
          </li>
          </ul>
      </nav>
      <?php }?>
		</div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn">

    <!--Contact-->
    <div class="pt-4" style="text-align: left; margin: 10px 0 10px 10px;">
        Trung tâm Smartphone 3T <br>
        197 Cao Đạt, Phường 1, Quận 5, TP.HCM<br>
        Hotline: 0909 388 266<br>
        Email: TripleTWeb@gmail.com<br>
    </div>
    <!--/Contact-->
    <!--Copyright-->
    <div class="footer-copyright py-3">
      © 2020 Copyright:
      <a> TripleTWeb</a>
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery/jquery-3.5.0.js"></script>
  <script>
  $(".dangxuat").click(function(){
      $.ajax({
        url: "XLLogin.php",
        type: "post",
        data: {
            "hanh_dong": 'logout',
        },
        success: function(data){
          alert(data);
          if(data=="Đăng xuất thành công")
            window.location="#";
        }
      });
  });
  </script>
  <!-- JQuery -->
  <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="../js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="../js/bootstrap/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="../js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
  </script>
</body>
</html>
