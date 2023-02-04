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
  <script src="../js/jquery/jquery-3.5.0.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="../js/bootstrap.js"></script>
<?php session_start();?>
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
  <main class="mt-5 pt-4">
    <div class="container wow fadeIn">
      
      <!-- Heading -->
      <h2 class="my-5 h2 text-center">Thông tin đặt hàng</h2>

      <!--Grid row-->
      <div class="row">

        <!--Grid column-->
        <div class="col-md-8 mb-4">

          <!--Card-->
          <div class="card">
            <!--Card content-->
            <form class="card-body" action="" method="post" enctype="multipart/form-data">
            <?php
            include_once("MyAccount.php");
            $account = Account::Display();
            include_once("DataProvider.php");
            $rs= Data::ExecuteQuery("SELECT * FROM khachhang WHERE MaKH = {$account}");
            $row = mysqli_fetch_array($rs);
            $chuoi = <<<EOD
              <!--MaKH-->
              <div>
                <input type="text" id="MaKH"  name="MaKH" class="form-control" style="visibility: hidden;height: 0px;width: 0px;" value="{$row['MaKH']}" placeholder="Không hiển thị" required>
              </div>
              <!--name-->
              <div class="md-form mb-5">
                <input type="text" id="TenKH"  name="TenKH" class="form-control" value="{$row['TenKH']}" placeholder="Họ tên người nhận" required>
              </div>

              <!--phone-->
              <div class="md-form mb-5" >
                <input type="text" id="SDT" name="SDT" class="form-control" value="{$row['SDT']}" placeholder="SĐT người nhận" required>
              </div>

              <!--email-->
              <div class="md-form mb-5">
                <input type="email" id="email" name="email" class="form-control" value="{$row['Email']}" placeholder="youremail@example.com" required>
              </div>
EOD;
            echo $chuoi;
            ?>
              

              <!--Địa chỉ-->
              <div class="mb-5">
                  <select class="custom-select d-block w-100" id="Tinh-Thanh" name="Tinh-Thanh" required>
							      <option value="" select="selected"></option><option value="An Giang">An Giang</option><option value="Vũng Tàu">Vũng Tàu</option><option value="Bắc Giang">Bắc Giang</option><option value="Bắc Kạn">Bắc Kạn</option><option value="Bạc Liêu">Bạc Liêu</option><option value="Bắc Ninh">Bắc Ninh</option><option value="Bến Tre">Bến Tre</option><option value="Bình Định">Bình Định</option><option value="Bình Dương">Bình Dương</option><option value="Bình Phước">Bình Phước</option><option value="Bình Thuận">Bình Thuận</option><option value="Cà Mau">Cà Mau</option><option value="Cần Thơ">Cần Thơ</option><option value="Cao Bằng">Cao Bằng</option><option value="Đà Nẵng">Đà Nẵng</option><option value="Đắk Lắk">Đắk Lắk</option><option value="Đắk Nông">Đắk Nông</option><option value="Điện Biên">Điện Biên</option><option value="Đồng Nai">Đồng Nai</option><option value="Đồng Tháp">Đồng Tháp</option><option value="Gia Lai">Gia Lai</option><option value="Hà Giang">Hà Giang</option><option value="Hà Nam">Hà Nam</option><option value="Hà Nội">Hà Nội</option><option value="Hà Tĩnh">Hà Tĩnh</option><option value="Hải Dương">Hải Dương</option><option value="Hải Phòng">Hải Phòng</option><option value="Hậu Giang">Hậu Giang</option><option value="Hòa Bình">Hòa Bình</option><option value="Hồ Chí Minh">Hồ Chí Minh</option><option value="Hưng Yên">Hưng Yên</option><option value="Khánh Hòa">Khánh Hòa</option><option value="Kiên Giang">Kiên Giang</option><option value="Kon Tum">Kon Tum</option><option value="Lai Châu">Lai Châu</option><option value="Lâm Đồng">Lâm Đồng</option><option value="Lạng Sơn">Lạng Sơn</option><option value="Lào Cai">Lào Cai</option><option value="Long An">Long An</option><option value="Nam Định">	Nam Định</option><option value="Nghệ An">Nghệ An</option><option value="Ninh Bình">Ninh Bình</option><option value="Ninh Thuận">Ninh Thuận</option><option value="Phú Thọ">Phú Thọ</option><option value="Phú Yên">Phú Yên</option><option value="Quảng Bình">Quảng Bình</option><option value="Quảng Nam">Quảng Nam</option><option value="Quảng Ngãi">Quảng Ngãi</option><option value="Quảng Ninh">Quảng Ninh</option><option value="Quảng Trị">Quảng Trị</option><option value="Sóc Trăng">Sóc Trăng</option><option value="Sơn La">Sơn La</option><option value="Tây Ninh">Tây Ninh</option><option value="Thái Bình">Thái Bình</option><option value="Thái Nguyên">Thái Nguyên</option><option value="Thanh Hóa">Thanh Hóa</option><option value="Thừa Thiên Huế">Thừa Thiên Huế</option><option value="Tiền Giang">Tiền Giang</option><option value="Trà Vinh">Trà Vinh</option><option value="Tuyên Quang">Tuyên Quang</option><option value="Vĩnh Long">Vĩnh Long</option><option value="Vĩnh Phúc">Vĩnh Phúc</option><option value="Yên Bái">Yên Bái</option>
                  </select>
                  <div class="invalid-feedback">
                    Please select a valid Tỉnh/Thành phố.
                  </div>
              </div>

              
              <div class="md-form mb-5">
                <input type="text" id="DiaChi" name="DiaChi" class="form-control" placeholder="Số nhà Đường, Phường/Xã, Quận/Huyện" required>
              </div>
              <div class="row">
                <div class="col-12 text-center">
                    <button class="btn btn-warning back">
                        Quay lại
                    </button>
                    <button class="btn btn-primary dathang" style="width: 40%" type="submit">
                        Xác nhận
                    </button>
                    <button class="btn btn-danger" type="reset">
                        Nhập lại
                    </button>
                </div>
            </div>
            </form>

          </div>
          <!--/.Card-->

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-4 mb-4">
          <!-- Heading -->
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Giỏ hàng của bạn</span>
            <?php 
            include_once("MyCart.php");
            $somh = json_decode(Cart::Display());?>
            <span class="badge badge-secondary badge-pill"><?php echo $somh->SoMH?></span>
          </h4>

          <!-- Cart -->
          <ul class="list-group mb-3 z-depth-1">
            <?php
            include_once("DataProvider.php");
            $total = 0;
            if(isset($_SESSION['MyCart'])){
              foreach($_SESSION['MyCart'] as $id => $SoLuong){
                  $rs= Data::ExecuteQuery("SELECT * FROM thongtin_sanpham WHERE ID = $id");
                  $row = mysqli_fetch_array($rs);
                  $tongtien = $SoLuong * $row['GiaBan'];
                  $sum = number_format($SoLuong * $row['GiaBan']);
                  $total += ($SoLuong * $row['GiaBan']);
                  $Dongia = number_format($row['GiaBan']);
                  $chuoi = <<< EOD
                  <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <span style="width: 60%" class="text-muted">
                        <h6 class="my-0">{$row['TenSP']}</h6>
                    </span>
                    <span style="width: 10%; float: right;" class="text-muted">{$SoLuong}</span>
                    <span   style=" width: 40% float: right;" class="text-muted">{$sum} VND</span>
                    <input id="Tongtien" value="{$total}" style="visibility: hidden;height: 0px;width: 0px;">

                  </li>
EOD;
                  echo $chuoi;
              }
            $total = number_format($total);
            $chuoi = <<<EOD
            
            <li class="list-group-item d-flex justify-content-between">
              <span>Tổng</span>
              <strong>{$total} VND</strong>
            </li>
          </ul>
EOD;
              echo $chuoi;
            }
            ?>
          <!-- Cart -->

          

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->

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
  <script>
  $(function(){
    $(".dathang").click(function(){
      $.ajax({
        url: "XLMuaHang.php",
        data: {
            "MaKH":$("#MaKH").val(),
            "TenNN": $("#TenKH").val(),
            "SDTNN": $("#SDT").val(),
            "DiaChi": $("#DiaChi").val(),
            "Email": $("#email").val(),
            "Tinh-Thanh": $("#Tinh-Thanh").val(),
            "Tongtien": $("#Tongtien").val(),
        },
        success: function(data){
          alert("Đặt hàng thành công! Mã đơn hàng của bạn là: " + data);
          window.location="LSDonHang.php";
        }
      });
    });
  });
  $(".back-cart").click(function(){
    window.location="Giohang.php";
    });
  </script>
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
