<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
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

    main{
      min-height: 400px;
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
  <?php session_start(); ?>
</head>

<body class="grey lighten-3">

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
      
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->
  
  <!--Main layout-->
  <main>
  <div style="margin: 80px auto auto auto; width: 90%; height: 100%">
  <?php
    if(!isset($_SESSION['MyCart'])){
      $chuoi = <<<EOD
        <img style="width: 100%" src="../img/empty-cart.png">
EOD;
      echo $chuoi;
      }
    if(isset($_SESSION['MyCart'])){
    include_once("DataProvider.php");
    $total = 0;
    $sum_soluong = 0;
    $chuoi = <<<EOD
    <h2 class="my-5 h2 text-center">Giỏ hàng của bạn</h2>
EOD;
    echo $chuoi;
    $chuoi = <<<EOD
    <ul id="Giohang" style="padding: 0;">
EOD;
    echo $chuoi;
    foreach($_SESSION['MyCart'] as $id => $SoLuong){
      $rs= Data::ExecuteQuery("SELECT * FROM thongtin_sanpham WHERE ID = $id");
      $row = mysqli_fetch_array($rs);
      $sum_soluong += $SoLuong; 
      $sum = number_format($SoLuong * $row['GiaBan']);
      $total += ($SoLuong * $row['GiaBan']);
      $Dongia = number_format($row['GiaBan']);
      $chuoi = <<< EOD
      <li class="list-group-item d-flex justify-content-between lh-condensed">
        <span style="width: 30%">
          <div>
          <h6 class="my-0">{$row['TenSP']}</h6>
          </div>
        </span>
        <span>
          <img src="../img/list_product/{$row['Hinh']}" height="80">
        </span>
        <span style="width:15%" class="text-muted">{$Dongia} VND</span>
        <span style="width:10%%">
        <input id="soluong" type="number" value="{$SoLuong}" min="1" max="5">
        </span>
        <span style="width:15%" class="text-muted">{$sum} VND</span>
        <button style="width:10%" type="button" class="btn btn-danger remove-cart" data-id="{$row['ID']}">Xóa</button>
        <button style="width:10%" type="button" class="btn btn-warning update-cart" data-id="{$row['ID']}">Sửa</button>
      </li>
EOD;
      echo $chuoi;
    }
    echo "</ul>";
  }
    ?>
  <button style=" margin-top: 10px" type="button" class="btn-danger back-cart">Tiếp tục mua sắm</button>
  <?php
    if($account == false){
      $chuoi = <<<EOD
      <button style=" margin-top: 10px" type="button" class="btn-primary submit-login-cart">Thanh toán</button>
EOD;
      echo $chuoi;
    }
    else{
      $chuoi = <<<EOD
      <button style=" margin-top: 10px" type="button" class="btn-primary submit-cart">Thanh toán</button>
EOD;
      echo $chuoi;
    }
  ?>

    
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
  <!-- JQuery -->  
  <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery/jquery-3.5.0.js"></script>  
  <script>
  $(function(){
    $(".remove-cart").click(function(){
      $.ajax({
        url: "XLGioHang.php",
        data:{ 
            "id": $(this).data("id"),
            "hanh_dong": "xoa"
        },
        success: function(data){
          alert(data);
          window.location="#";
        }
      });
    });
    $(".update-cart").click(function(){
      $.ajax({
        url: "XLGioHang.php",
        data:{ 
            "id": $(this).data("id"),
            "hanh_dong": "sua",
            "quantity": $("#soluong").val()
        },
        success: function(data){
          alert(data);
          window.location="#";
          }
      });
    });
    $(".submit-cart").click(function(){
        window.location="Checkout_Page.php";
      });
    $(".submit-login-cart").click(function(){
      alert("Bạn cần đăng nhập!")
      window.location="Login.php";
      });
    $(".back-cart").click(function(){
    window.location="Home_Page.php";
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
