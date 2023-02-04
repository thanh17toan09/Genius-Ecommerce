﻿<?php
class Cart
{
	public static function InsertCart($id)
	{
		if(isset($_SESSION["MyCart"][$id]))
			$_SESSION["MyCart"][$id]++;
		else
			$_SESSION["MyCart"][$id] = 1;
	}
	
	public static function DeleteCart($id)
	{
		if(isset($_SESSION["MyCart"][$id])){
			unset($_SESSION["MyCart"][$id]);
			
		}
	}
	
	public static function UpdateCart($id, $quantity)
	{
		if(isset($_SESSION["MyCart"][$id]))
			$_SESSION["MyCart"][$id] = $quantity;
	}
	
	public static function Display()
	{
		include_once("DataProvider.php");
		$sum = 0;
		$somh = 0;
		if(isset($_SESSION['MyCart'])){
			foreach($_SESSION['MyCart'] as $ID => $SoLuong)
			{
			$rs= Data::ExecuteQuery("SELECT GiaBan FROM thongtin_sanpham WHERE ID = '{$ID}'");
				$row = mysqli_fetch_array($rs);
				$sum += $SoLuong * $row['GiaBan'];
				$somh = $somh + $SoLuong;
			}
			
		}
		$result = array(
			"SoMH" => $somh,
			"TongTien" => $sum
		);

		return json_encode($result);
	}
}
?>