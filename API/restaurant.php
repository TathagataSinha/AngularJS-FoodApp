<?php
	require_once "restaurant_script.php";
	$restaurant_object=new restaurant();
	if(isset($_GET["restaurant_id"]) && !empty("restaurant_id")){
			$restaurant_id=$_GET["restaurant_id"];
			$json_array=$restaurant_object->getrestaurant($restaurant_id);
			echo json_encode($json_array);
		}
	
?>