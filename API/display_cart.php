<?php
	require_once "displaycart_script1.php";
	$cart_object=new displaycart();
	if(isset($_POST["customer_id"]) ){
			$customer_id=$_POST["customer_id"];
				if (!empty($customer_id)) {
					$json_array=$cart_object->display($customer_id);
					echo json_encode($json_array);
				}
		}
	
?>