<?php

$servername="localhost";
$username="";
$password="";
$db="tatm";

$conn = new mysqli($servername,$username,$password,$db);

if($_SERVER['REQUEST_METHOD']=='POST')
{  
	extract($_POST);
	if($_POST['changepassword'])
	{
		$a=$db->query("UPDATE agent SET password='$newpassword' where agent_id='$agentid'");
		$a->execute();
	}
	
	
	if($_POST['updatecustomerdetails'])
	{
	}
	
	if($_POST['addbus'])
	{
	}
	
	if($_POST['addtrain'])
	{
	}
	
	if($_POST['addair'])
	{
	}
	
	if($_POST['addhotel'])
	{
	}
	
	if($_POST['cancelbooking'])
	{
	}
	
	
}



?>
