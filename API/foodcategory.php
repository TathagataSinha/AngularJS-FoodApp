<?php
	require_once "foodcategory_script.php";
	$foodcategory_object=new foodCategory();
	if(isset($_GET["restaurant_id"]) && !empty("restaurant_id")){
			$restaurant_id=$_GET["restaurant_id"];
			$json_array=$foodcategory_object->getfoodcategory($restaurant_id);
			echo json_encode($json_array);
		}
	
?>
