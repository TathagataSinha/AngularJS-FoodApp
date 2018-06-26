<?php
	include_once 'connect.php';
	$db=new DbConnect();
	if(isset($_GET['email']) && !empty($_GET['email']) && isset($_GET['hash']) && !empty($_GET['hash'])){
		$email=$_GET['email'];
		$hash=$_GET['hash'];

		$query="SELECT email, hash, active FROM customer WHERE email='".$email."' AND hash='".$hash."' AND active=0";
		$result=mysqli_query($db->getDb(),$query);
		if(mysqli_num_rows($result)>0){
			mysqli_query($db->getDb(),"UPDATE customer SET active=1 WHERE email='".$email."' AND hash='".$hash."' AND active=0");
			echo 'email verification Successful';
		}
		else{
			echo 'Invalid url or you have already verified your email';
		}
	}
	else{
		echo 'Invalid url';
	}
?>
