<?php 
class myFun
{
   public function adminLogin($table,$email,$pass)
   {
   	include('connection.php');
   	$sql = "SELECT * FROM product_admin WHERE email = '$email' AND password = '$pass'";
   	return mysqli_query($con,$sql);
   }
   public function register($table,$fields,$values)
   {
   	include('connection.php');
   	$sql = "INSERT INTO $table($fields)VALUES($values)";
   	mysqli_query($con,$sql);
   }



}


 ?>