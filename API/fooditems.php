<?php
	require_once "fooditems_script.php";
	$foodItems_object=new foodItems();
	if(isset($_GET["foodcategory_id"]) && !empty("foodcategory_id")){
			$foodcategory_id=$_GET["foodcategory_id"];
			$json_array=$foodItems_object->getfoodItems($foodcategory_id);
			echo json_encode($json_array);
		}
	
?>
