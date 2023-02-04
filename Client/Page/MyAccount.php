<?php
class Account
{
	public static function Login($id)
	{
		if(!isset($_SESSION["MyAccount"]))
			$_SESSION["MyAcount"] = $id;
	}
	
	public static function Logout()
	{
		if(isset($_SESSION["MyAcount"])){
			unset($_SESSION["MyAcount"]);
		}
	}
	
	public static function Display()
	{
		include_once("DataProvider.php");
		if(isset($_SESSION["MyAcount"])){
			$rs= Data::ExecuteQuery("SELECT * FROM khachhang WHERE `SDT` = '{$_SESSION["MyAcount"]}'");
			$row = mysqli_fetch_array($rs);
			if(!isset($row)){
				$rs= Data::ExecuteQuery("SELECT * FROM users WHERE `Name` = '{$_SESSION["MyAcount"]}'");
				$row = mysqli_fetch_array($rs);
				$result = $row['Name'];
			}
			else			$result = $row['MaKH'];

			}
		else
			return false;

		return $result;
	}
}
?>