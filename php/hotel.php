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
	//inserting into hotel table
	
	$hotel_price=$db->query("SELECT hotel_price from hotel_new where hotel_name='$hotel'");
	$hotel_price->execute();
	$sqli="INSERT INTO hotel VALUES('$hotel','$hotel_price','$location','$date1','$date2','$passengers')";
}
?>

