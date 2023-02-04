<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>Trung tâm Smartphone 3T</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin.css" rel="stylesheet">

</head>

<body  id="page-top">

  <nav  style="background-color: rgba(41,119,253,0.93)" class="navbar navbar-expand  static-top">

    <a style=" color: #e7ebef" class="navbar-brand mr-1">Xin chào</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
    <?php
          session_start();
          include_once("MyAccount.php");
          $account = (Account::Display());
          if($account == false){
            $chuoi = <<<EOD
            <li class="nav-item">
            <a id="Login" class="nav-link waves-effect" style="color: black" href = "Login.php">
            <i class="fas fa-sign-in-alt"></i>
            <span class="clearfix d-none d-sm-inline-block"> Login </span>
            </a>
          </li>
EOD;
            echo $chuoi;}
          else{
            $chuoi = <<<EOD
            <li class="nav-item">
              <a id="Logout" class="dangxuat nav-link waves-effect" style="color: black" href="#">
                <span class="clearfix d-none d-sm-inline-block"> $account </span>
                <i class="fas fa-user-alt"></i>
              </a>
          </li> 
EOD;
            echo $chuoi;
          }
        ?> 
      

      
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul style="background-color: rgba(41,119,253,0.93)" class="sidebar navbar-nav">
      <li class="nav-item active">
          <a class="nav-link" href="admin.php">
        <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Trang chủ</span>
        </a>
      </li>
      <?php
      if($account == false){
            $chuoi = <<<EOD
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle need-login" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <i class="fas fa-fw fa-folder"></i>
          <span>Quản lý</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href="Quanly_users.php">Quản lý tài khoản</a>
          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="Quanly_sanpham.php">Quản lý sản phẩm</a>

          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="Quanly_donhang.php">Quản lí đơn hàng</a>
        </div>
      </li>
    </ul>
EOD;
            echo $chuoi;}
          else{
            $chuoi = <<<EOD
            <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
          <i class="fas fa-fw fa-folder"></i>
          <span>Quản lý</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href="Quanly_users.php">Quản lý tài khoản</a>
          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="Quanly_sanpham.php">Quản lý sản phẩm</a>

          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="Quanly_donhang.php">Quản lí đơn hàng</a>
        </div>
      </li>
    </ul>
EOD;
            echo $chuoi;
          }
        ?> 

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
            window.location="admin.php";
        }
      });
  });
  $(".need-login").click(function(){
      alert("Bạn cần đăng nhập!")
      window.location="Login.php";
      });
  </script>
  