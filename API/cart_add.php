<?php
	require_once "mycart_script.php";
	$cart_object=new mycart();
	if(isset($_POST["restaurant_id"]) && isset($_POST["customer_id"]) && isset($_POST["food_id"])) {
			$restaurant_id=$_POST["restaurant_id"];
			$customer_id=$_POST["customer_id"];
			$food_id=$_POST["food_id"];
				if(!empty($restaurant_id) && !empty($customer_id) && !empty($food_id)){
					$json_array=$cart_object->addItem($restaurant_id,$customer_id,$food_id);
					echo json_encode($json_array);
				}
		}
	
?>