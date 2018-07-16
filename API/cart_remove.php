<?php
	require_once "mycart_script1.php";
	$cart_object=new mycart();
	if(isset($_POST["item_id"]) && !empty("item_id")) {
			$item_id=$_POST["item_id"];
			$json_array=$cart_object->removeItem($item_id);
			echo json_encode($json_array);
		}
	
?>