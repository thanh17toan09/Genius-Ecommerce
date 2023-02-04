<?php
	session_start();
	$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
        mysqli_query($connection, "set names 'utf8'");
        if($_FILES['Hinh']['error'] == 0){
                if(move_uploaded_file($_FILES['Hinh']["tmp_name"], "../img/list_product".$_FILES['Hinh']["name"]))
                        $sql = "UPDATE `thongtin_sanpham` SET `ID`='{$_POST["ID"]}',`TenSP`='{$_POST["TenSP"]}',`Nhanhieu`='{$_POST["Nhanhieu"]}',`GiaNY`='{$_POST["GiaNY"]}',`GiaBan`='{$_POST["GiaBan"]}',`KhuyenMai`='{$_POST["KhuyenMai"]}',`Ngaynhap`='{$_POST["Ngaynhap"]}',`SoLuong`='{$_POST["SoLuong"]}' WHERE  `ID` = '{$_POST["ID"]}'";}
        else
	        $sql = "UPDATE `thongtin_sanpham` SET `ID`='{$_POST["ID"]}',`TenSP`='{$_POST["TenSP"]}',`Nhanhieu`='{$_POST["Nhanhieu"]}',`Hinh`='{$_FILES['Hinh']["name"]}',`GiaNY`='{$_POST["GiaNY"]}',`GiaBan`='{$_POST["GiaBan"]}',`KhuyenMai`='{$_POST["KhuyenMai"]}',`Ngaynhap`='{$_POST["Ngaynhap"]}',`SoLuong`='{$_POST["SoLuong"]}'  WHERE  `ID` = '{$_POST["ID"]}'";
	if(mysqli_query($connection, $sql)){
        header("Location: Quanly_sanpham.php");
        $chuoi = "Cập nhật thành công";
        echo '<script language="javascript">';
        echo 'alert("Cập nhật thành công")';
        echo '</script>';
        exit();
        
    }
    else{
            $chuoi = "Cập nhật không thành công";
            header("Location: Quanly_sanpham.php");
        }
?>