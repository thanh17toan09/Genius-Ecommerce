<?php
$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
mysqli_query($connection, "set names 'utf8'");       
 if($_FILES['Hinh']['error'] == 0)
        {
            if(move_uploaded_file($_FILES['Hinh']["tmp_name"], "../img/".$_FILES['Hinh']["name"]))
            {
                $sql = "INSERT INTO `thongtin_sanpham`(`ID`, `TenSP`, `Nhanhieu`, `Hinh`, `GiaNY`, `GiaBan`, `KhuyenMai`, `Ngaynhap`, `SoLuong`) VALUES (NULL,'{$_REQUEST['TenSP']}','{$_REQUEST['Nhanhieu']}','{$_FILES['Hinh']["name"]}','{$_REQUEST['GiaNY']}','{$_REQUEST['GiaBan']}','{$_REQUEST['KhuyenMai']}',now(),'{$_REQUEST['SoLuong']}')";
                mysqli_query($connection, $sql);
                header("Location: Quanly_sanpham.php");
            }
        }
?>