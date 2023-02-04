<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Đăng nhập</title>
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

  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">

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
  <main style="margin-top: 40px">
  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Đăng nhập</h1>
                  </div>
                  <form class="user" action="" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="Name" placeholder="Nhập SĐT">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="Password" placeholder="Password">
                    </div>
                    <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                      <button class="btn btn-primary form-control dangnhap" type="submit">
                          Đăng nhập
                      </button>
                  </div>
                  <div class="col-sm-6">
                    <button class="btn btn-danger form-control" type="reset">
                        Nhập lại
                    </button>
                  </div>
                </div>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="Register.php">Bạn chưa có tài khoản? Hãy đăng ký!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

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
  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery/jquery-3.5.0.js"></script>
  <script>
  $(".dangnhap").click(function(){
      if($("#Name").val()==''){
        alert("Vui lòng nhập SĐT");
        return 0;
      }
      if($("#Password").val()==''){
        alert("Vui lòng nhập Password!");
        return 0;
      }
      $.ajax({
        url: "XLLogin.php",
        type: "post",
        data: {
            "Name": $("#Name").val(),
            "Password": $("#Password").val(),
            "hanh_dong": 'login',
        },
        success: function(data){
          alert(data);
          if(data=="Đăng nhập thành công")
            window.location="Home_Page.php";
          else
            window.loacation="#";
        }
      });
  });
</script>
  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="..//bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>
