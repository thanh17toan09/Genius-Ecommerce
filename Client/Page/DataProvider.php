<?php
class Data 
{
	public static function ExecuteQuery($sql)
	{
		try{
			$connection = mysqli_connect("localhost","root","", "smartphone_3t");//or die ("couldn't connect to localhost");				
			mysqli_query($connection, "set names 'utf8'");		
			$result = mysqli_query($connection, $sql);		
			mysqli_close($connection);		
			return $result;
		}catch(Exception $ex)
		{
			return null;
		}
	}
}
?>