<?php
session_start();
include_once("MyAccount.php");
if(isset($_POST["hanh_dong"])){
    $loai = $_POST["hanh_dong"];
    switch($loai)
    {
        case "login":
            $name = $_POST["Name"];
            $password = $_POST["Password"];
            include_once("DataProvider.php");
            $sql = "SELECT * FROM `users` WHERE `Name` = '$name'";
            $ketqua = Data::ExecuteQuery($sql);
            $row = mysqli_fetch_array($ketqua);
            if(isset($row)){
                if ($row['Password'] == $password && $row['Level'] == 'Admin'){
                    Account::Login($_POST["Name"]);
                    $chuoi = "Đăng nhập thành công";
                    echo $chuoi;
                }
                else{
                    $chuoi = "Sai tên đăng nhập hoặc mật khẩu!";
                    echo $chuoi;
                }
            }
            else{
                $chuoi = "Sai tên đăng nhập hoặc mật khẩu!";
                echo $chuoi;
            }
        break;
        case "logout":
            Account::Logout();
            $chuoi = "Đăng xuất thành công";
            echo $chuoi;
        break;
        default:
        # code...
        break;
    }
}
?>