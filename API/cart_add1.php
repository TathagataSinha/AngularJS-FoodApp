<?php
	require_once "mycart_script1.php";
	$cart_object=new mycart();
	if(isset($_POST["restaurant_id"]) && isset($_POST["customer_id"]) && isset($_POST["food_id"]) && isset($_POST["quantity"])  && isset($_POST["price"])) {
			$restaurant_id=$_POST["restaurant_id"];
			$customer_id=$_POST["customer_id"];
			$food_id=$_POST["food_id"];
			$quantity=$_POST["quantity"];
			$price=$_POST["price"];

				if(!empty($restaurant_id) && !empty($customer_id) && !empty($food_id) && !empty($quantity)  && !empty($price)){
					$json_array=$cart_object->addItem($restaurant_id,$customer_id,$food_id,$quantity,$price);
					echo json_encode($json_array);
				}
		}
	
?>