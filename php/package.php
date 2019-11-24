<?php 
$servername="localhost";
$username="";
$password="";
$db="tatm";

$conn = new mysqli($servername,$username,$password,$db);

if($_SERVER['REQUEST_METHOD']=='POST')
{  
	extract($_POST);
	
	//extracting price value from another table.
	//inserting into package table
	
	$package_price=$db->query("SELECT package_price from package_new where package_name='$package'");
	$package_price->execute();
	$sqli="INSERT INTO package VALUES('$package','$package_price','$date','$pickup','$passengers')";
}
?>

