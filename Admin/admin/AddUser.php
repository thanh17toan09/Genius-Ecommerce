<?php
	$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
	mysqli_query($connection, "set names 'utf8'");
    $sql = "INSERT INTO `users`(`ID`, `Name`, `Password`, `Email`, `Level`, `created_at`) VALUES (NULL,'{$_POST["Name"]}','{$_POST["Password"]}','{$_POST["Email"]}','{$_POST["Level"]}',now())";
	if(mysqli_query($connection, $sql)){
        header("Location: Quanly_users.php");
        $chuoi = "Cập nhật thành công";
        echo '<script language="javascript">';
        echo 'alert("Thêm thành công")';
        echo '</script>';
        exit();
        
    }
    else{
            $chuoi = "Thêm không thành công";
            header("Location: Quanly_users.php");
        }
?>