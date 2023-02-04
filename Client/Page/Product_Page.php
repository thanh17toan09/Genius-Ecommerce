<!DOCTYPE html>
<html lang="vi">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
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
    <link href="../css/Product_style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">  
    <style type="text/css">
    
        html,
        body,
        header,
        .carousel {
        height: 60vh;
        }

        body{
            background-color: aliceblue;
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
        <main>
        <div style = "width: 90% !important; margin: 100px 5%; height: 100%;">
        <div class="box_top_content">
                <aside class="left_content">
                    <?php
                        include_once("DataProvider.php");
                        $sql_product = "SELECT * FROM `thongtin_sanpham` WHERE ID = {$_GET['link']}";
                        $img_product = Data::ExecuteQuery($sql_product);
                        $row = mysqli_fetch_array($img_product);
                        $title = str_replace('-',' ',$_GET['title']);
                        $chuoi = <<<EOD
                    <div style="height: min-content; width: 100%;">
                        <img class="view" style="width: inherit; height: 300px;"  src="../img/list_product/{$row['Hinh']}">
                    </div>
EOD;
                    echo $chuoi;
                    ?>
                </aside>

                <aside class="right_content">
                    <div class="tableparameter"> 
                        <?php
                        $chuoi = <<<EOD
EOD;
                        echo $chuoi;                       
                        $sql_thongso = "SELECT * FROM `thongtin_sanpham` WHERE ID = {$_GET['link']}";
                        $result = Data::ExecuteQuery($sql_thongso);
                        $row = mysqli_fetch_array($result);
                        $Giaban = number_format($row['GiaBan']);
                        if($row['GiaNY']==NULL)
                            $GiaNY = number_format($row['GiaBan']);
                        else
                            $GiaNY = number_format($row['GiaNY']);
                        $thongtin = <<<EOD
                        <ul class="parameter ">
                            <li style="border: none;">
                                <h2>$title</h2>
                            </li>
                            <li>
                                <span>Giá niêm yết:</span>
                                <div>
                                    {$GiaNY} VND
                                </div>
                            </li>
                            
                            <li>
                                <span>Giá bán:</span>
                                <div>
                                    {$Giaban} VND
                                </div>
                            </li>
                            
                            <li>
                                <span>Khuyến mãi:</span>
                                <div>
                                    {$row['KhuyenMai']}
                                </div>
                            </li>
                        <ul>
                            <button type="button" class="viewparameterfull mua" data-id="{$row['ID']}">Thêm vào giỏ hàng</button>
                            
EOD;
                        echo $thongtin;
                        ?>
                            
                        <div class="closebtn none"><i class="icondetail-closepara"></i></div>
                    </div>
                </aside>
            </div>
            <div class="box_content">
                <aside class="left_content">
                    <?php
                        $sql_product = "SELECT * FROM `slide_sanpham` WHERE ID_sanpham = {$_GET['link']}";
                        $img_product = Data::ExecuteQuery($sql_product);
                        $title = str_replace('-',' ',$_GET['title']);
                        $chuoi = <<<EOD
                    <h2>Đặc điểm nổi bật $title</h2>
EOD;
                    echo $chuoi;
                    ?>
                    <div id="carousel-example-1z" style="height: min-content; width: 100%;" class="carousel slide carousel-fade pt-4" data-ride="carousel">
                        <!--Indicators-->
                        <ol class="carousel-indicators">
                        <?php
                        $count_img = 0 ;
                        while ($row = mysqli_fetch_array($img_product)){
                        $chuoi_img = <<<EOD
                        <li data-target="#carousel-example-1z" data-slide-to='$count_img' class="active"></li>
EOD;
                        echo $chuoi_img;
                        $count_img++;
                        }
                        ?>
                        </ol>
                        <!--/.Indicators-->

                        <!--Slides-->
                        <div class="carousel-inner" role="listbox">
                        <?php
                        
                        $count_img = 1;
                        $img_product = Data::ExecuteQuery($sql_product);
                        while ($row = mysqli_fetch_array($img_product)){
                            if($count_img != 1){
                                $slide_event = <<<EOD
                                <div class="carousel-item">
                                <img class="view" style="width: inherit; height: 420px;"  src="{$row['Hinh']}">
                                </div>
EOD;
                                echo $slide_event;
                                $count_img++;
                            }
                            if($count_img == 1){
                            $slide_event = <<<EOD
                            <div class="carousel-item active ">
                                <img class="view" style="width: inherit; height: 420px;"  src="{$row['Hinh']}">
                            </div>
EOD;
                            
                            
                            echo $slide_event;
                            $count_img++;
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
                </aside>

                <aside class="right_content" style="border-left: 1px solid #e4e4e4;">
                    <div class="tableparameter">     
                        <h2>Thông số kỹ thuật</h2>
                        <?php
                        $sql_thongso = "SELECT * FROM `thongsokithuat` WHERE idSanPham = {$_GET['link']}";
                        $result = Data::ExecuteQuery($sql_thongso);
                        $row = mysqli_fetch_array($result);
                        $thongtin = <<<EOD
                        <ul class="parameter ">
                            <li>
                                <span>Màn hình:</span>
                                <div>
                                    {$row['Màn hình']}
                                </div>
                            </li>
                            
                            <li>
                                <span>Hệ điều hành:</span>
                                <div>
                                    {$row['Hệ điều hành']}
                                </div>
                            </li>
                            
                            <li>
                                <span>Camera sau:</span>
                                <div>
                                    {$row['Camera sau']}
                                </div>
                            </li>
                            
                            <li>
                                <span>Camera trước:</span>
                                <div>
                                    {$row['Camera trước']}
                                </div>
                            </li>
                            
                            <li>
                                <span>CPU:</span>
                                <div>
                                    {$row['CPU']}
                                </div>
                            </li>
                            
                            <li>
                                <span>RAM:</span>
                                <div>
                                    {$row['Ram']}
                                </div>
                            </li>
                            
                            <li>
                                <span>Bộ nhớ trong:</span>
                                <div>
                                    {$row['Bộ nhớ']}
                                </div>
                            </li>
                            
                            <li>
                                <span>Thẻ SIM:</span>
                                <div>
                                    {$row['Thẻ sim']}
                                </div>
                            </li>
                            
                            <li>
                                <span>Dung lượng pin:</span>
                                <div>{$row['Dung lượng pin']}</div>
                            </li>
                        </ul>
EOD;
                        echo $thongtin;
                        ?>
                        <div class="closebtn none"><i class="icondetail-closepara"></i></div>
                    </div>
                </aside>
            </div>
            </div>
        </main>
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
        
        
        <!-- JQuery -->
        <script type="text/javascript" src="../js/jquery/jquery-3.5.0.js"></script>
        <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
        <script>
        $(function(){
            $(".mua").click(function(){
                $.ajax({
                    url: "XLGioHang.php",
                    data: {
                        "id": $(this).data("id"),
                        "hanh_dong": "them"
                    },
                    success: function(response){
							$("#SoMH").html(response);
						}
                });
            });
        });
        
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