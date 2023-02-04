<?php
    $connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
    mysqli_query($connection, "set names 'utf8'");
    if(isset($_POST["SDT"])){
        $sql = "SELECT * FROM `users`";
        $result = mysqli_query($connection, $sql);
        while ($row = mysqli_fetch_array($result)){
            if($row['Name'] == $_POST["SDT"]){
                $chuoi = "Số điện thoại đã được đăng ký!";
                echo $chuoi;
                return 0;
            }
            if($row['Email'] == $_POST["Email"]){
                $chuoi = "Email đã được đăng ký!";
                echo $chuoi;
                return 0;
            }
        }
        if($_POST["InputPassword"] != $_POST["RepeatPassword"]){
            $chuoi = "Mật khẩu nhập lại không đúng!";
            echo $chuoi;
            return 0;
        }
        $sql = "INSERT INTO `users`(`ID`, `Name`, `Password`, `Email`, `Level`, `created_at`) VALUES (NULL,'{$_POST["SDT"]}','{$_POST["InputPassword"]}','{$_POST["Email"]}','Member',now())";
        if(mysqli_query($connection, $sql)){
            $maUser = mysqli_insert_id($connection);
        }
        $sql = "INSERT INTO `khachhang`(`MaKH`, `TenKH`, `SDT`, `Email`, `Account`) VALUES (NULL,'{$_POST["TenKH"]}','{$_POST["SDT"]}','{$_POST["Email"]}','{$maUser}')";
        mysqli_query($connection, $sql);
        $chuoi = "Đăng kí thành công";
        echo $chuoi;
    }
            
?>