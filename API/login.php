<?php
	require_once 'user.php';
	if(isset($_POST['email'])){
		$email=$_POST['email'];
	}
	if(isset($_POST['password'])){
		$password=$_POST['password'];
	}
	$userObject=new User();
	if(!empty($email) && !empty($password)){
		$hashed_password=md5($password);
		$json_login=$userObject->loginUsers($email,$hashed_password);
		echo json_encode($json_login);
	}
?>
