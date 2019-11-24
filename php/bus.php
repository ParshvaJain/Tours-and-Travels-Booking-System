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
	//inserting into bus table
	
	$bus_price=$db->query("SELECT bus_price from bus_new where source='$source' AND destination='$destination' AND company='$bus'");
	$bus_price->execute();
	$sqli="INSERT INTO bus_travel VALUES('$bus','$bus_price','$date','$source','$destination','$passenger')";
}
?>
