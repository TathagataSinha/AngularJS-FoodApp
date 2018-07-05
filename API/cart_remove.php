<?php
	require_once "mycart_script.php";
	$cart_object=new mycart();
	if(isset($_POST["cart_id"]) && !empty("cart_id")) {
			$cart_id=$_POST["cart_id"];
			$json_array=$cart_object->removeItem($cart_id);
			echo json_encode($json_array);
		}
	
?>