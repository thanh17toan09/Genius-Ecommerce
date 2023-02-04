<?php
	session_start();
	include_once("MyCart.php");
	$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
	mysqli_query($connection, "set names 'utf8'");
	$sql = "INSERT INTO `hoadon`(`MaHD`, `NgayDat`, `MaKH`, `TenNN`, `SDTNN`, `DiaChi`, `Tinh/Thanh`, `TongTien`, `TinhTrang`) VALUES (NULL,now(),'{$_REQUEST["MaKH"]}','{$_REQUEST["TenNN"]}','{$_REQUEST["SDTNN"]}','{$_REQUEST["DiaChi"]}','{$_REQUEST["Tinh-Thanh"]}','{$_REQUEST["Tongtien"]}','Mới đặt')";
	if(mysqli_query($connection, $sql)){
		$maHd = mysqli_insert_id($connection);
		foreach($_SESSION['MyCart'] as $id => $SoLuong){
			$sql = "INSERT INTO `chitiethd`(`SoDH`,`ID_sanpham`,`MaHD`,`SoLuong`) VALUES (NULL, '{$id}', '{$maHd}', '{$SoLuong}')";
			if(mysqli_query($connection, $sql)){
				unset($_SESSION['MyCart']);
				echo $maHd;
			}
		}
	}
?>