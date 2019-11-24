<?php

extract($_POST);
$con=mysqli_connect("localhost","root","","tatm");//mysqli("localhost","username of database","password of database","database name")
$result=mysqli_query($con,"SELECT * FROM agent WHERE agent_name='$uname'");
//check connection
// if(mysqli_errno($con)){
// 	echo "0 ".mysqli_connect_error();
// }
if(!$con){
	echo "0 ".mysqli_connect_error();
}

$arr=mysqli_fetch_assoc($result);
if(!($result))
    {
      echo "ID not present Please Contact Administrator";
    }
    else
    {
      $arr=mysqli_fetch_assoc($result);
      if($arr['agent_password']!=$pwd)
      {
        echo"<script>alert('Authentication Failed'); window.location.href='login.html';</script>";
      }
      else
      {
        session_start();
        $_SESSION['Set']=1;
        $_SESSION['UNAME']="$uname";
        echo"<script>alert('Login Successful')</script>";//window.location.href='home.php';</script>";
      }
    }
  
    
?> 