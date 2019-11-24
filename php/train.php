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
	//inserting into train table
	
	$train_price=$db->query("SELECT train_price from train_new where source='$source' AND destination='$destination'");
	$train_price->execute();
	$sqli="INSERT INTO train_travel VALUES('$train','$train_price','$date','$source','$destination','$passengers')";
}
?>

