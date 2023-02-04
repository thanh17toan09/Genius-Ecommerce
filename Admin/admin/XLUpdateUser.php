<?php
	session_start();
	$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
	mysqli_query($connection, "set names 'utf8'");
	$sql = "UPDATE `users` SET `ID`='{$_POST["ID"]}',`Name`='{$_POST["Name"]}',`Password`='{$_POST["Password"]}',`Email`='{$_POST["Email"]}',`Level`='{$_POST["Level"]}',`created_at`= NULL WHERE  `ID` = '{$_POST["ID"]}'";
	if(mysqli_query($connection, $sql)){
        header("Location: Quanly_users.php");
        $chuoi = "Cập nhật thành công";
        echo '<script language="javascript">';
        echo 'alert("Cập nhật thành công")';
        echo '</script>';
        exit();
        
    }
    else{
            $chuoi = "Cập nhật không thành công";
            header("Location: Quanly_users.php");
        }
?>