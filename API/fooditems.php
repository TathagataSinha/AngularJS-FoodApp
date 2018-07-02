<?php
	require_once "fooditems_script.php";
	$foodItems_object=new foodItems();
	if(isset($_GET["food_category"]) && !empty("food_category")){
			$food_category=$_GET["food_category"];
			$json_array=$foodItems_object->getfoodItems($food_category);
			echo json_encode($json_array);
		}
	
?>