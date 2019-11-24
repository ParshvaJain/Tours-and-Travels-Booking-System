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
	//inserting into air table
	
	$air_price=$db->query("SELECT air_price from air_new where source='$source' AND destination='$destination' AND company='$airline'");
	$air_price->execute();
	$sqli="INSERT INTO air_travel VALUES('$airline','$air_price','$date','$source','$passengers','$destination')";
}
?>
