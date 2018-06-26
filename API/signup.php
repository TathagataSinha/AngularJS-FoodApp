<?php
	require_once 'user.php';
	if(isset($_POST['name'])){
		$name=$_POST['name'];
	}
	if(isset($_POST['email'])){
		$email=$_POST['email'];
	}
	if(isset($_POST['phone'])){
		$phone_no=$_POST['phone'];
	}
	if(isset($_POST['password'])){
		$password=$_POST['password'];
	}
	$userObject=new User();
	if(!empty($name) && !empty($password) && !empty($email) && !empty($phone_no)){
		$hashed_password = md5($password);
		$json_registration=$userObject->createNewRegisterUser($name,$hashed_password,$email,$phone_no,$password);
                echo json_encode($json_registration);
	}
?>
