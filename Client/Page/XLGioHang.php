<?php
session_start();
include_once("MyCart.php");
$loai = $_REQUEST["hanh_dong"];
$id = $_REQUEST["id"];
switch($loai)
{
	case "them":
		Cart::InsertCart($id);
		$somh = json_decode(Cart::Display());
		$chuoi = <<<EOD
		<span id="SoMH" class="badge red z-depth-1 mr-1"> $somh->SoMH</span>
		<i class="fas fa-shopping-cart"></i>
        <span class="clearfix d-none d-sm-inline-block"> Cart </span>
EOD;
		echo $chuoi;
	break;
	case "xoa":
		Cart::DeleteCart($_REQUEST["id"]);
		$chuoi = "Cập nhật đơn hàng thành công!";
		echo $chuoi;
	break;
	case "sua":
		Cart::UpdateCart($_REQUEST["id"], $_REQUEST["quantity"]);
		$chuoi = "Cập nhật đơn hàng thành công!";
		echo $chuoi;
	break;
	default:
	# code...
	break;
}

?>
