<?php
	session_start();
	$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
	mysqli_query($connection, "set names 'utf8'");
	$sql = "DELETE FROM `users` WHERE `ID` = '{$_REQUEST["id"]}'";
	if(mysqli_query($connection, $sql)){
        $chuoi = "Xóa thành công";
        echo $chuoi;
        }
    else{
            $chuoi = "Xóa không thành công";
            echo $chuoi;
        }
?>