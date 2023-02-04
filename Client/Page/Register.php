<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Đăng ký</title>
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
  <main style="margin-top: 100px">
  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Đăng ký tài khoản</h1>
              </div>
              <form class="user" action="" method="post" enctype="multipart/form-data">
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="TenKH" id="TenKH" placeholder="Họ và Tên" required>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="SDT" name="SDT" placeholder="SĐT" required>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" id="Email" name="Email" placeholder="youremail@gmail.com" required>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="InputPassword" name="InputPassword" placeholder="Password" min="8" required>
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="RepeatPassword" name="RepeatPassword" placeholder="Nhập lại Password" min="8" required>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                      <button class="btn btn-primary form-control dangki" type="submit">
                          Đăng kí
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
                <a class="small" href="Login.php">Bạn đã có tài khoản? Hãy đăng nhập!</a>
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
  <script type="text/javascript">
  $(".dangki").click(function(){
      if($("#TenKH").val()==''){
        alert("Vui lòng nhập Họ và Tên!");
        return 0;
      }
      if($("#SDT").val()==''){
        alert("Vui lòng nhập SĐT!");
        return 0;
      }
      if($("#Email").val()==''){
        alert("Vui lòng nhập Email!");
        return 0;
      }
      if($("#InputPassword").val()==''){
        alert("Vui lòng nhập Password!");
        return 0;
      }
      if($("#RepeatPassword").val()==''){
        alert("Vui lòng nhập lại Password!");
        return 0;
      }
      $.ajax({
        url: "XLRegister.php",
        type: "post",
        data: {
            "TenKH": $("#TenKH").val(),
            "SDT": $("#SDT").val(),
            "Email": $("#Email").val(),
            "InputPassword": $("#InputPassword").val(),
            "RepeatPassword": $("#RepeatPassword").val(),
        },
        success: function(data){
          alert(data);
          if(data=="Đăng kí thành công")
            window.location="Login.php";
          else
            window.location="#";
        }
      });
  });
</script>
  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>
