<?php
	require_once "fooditems_script.php";
	if(isset($_POST['foodcategory_id'])){
		$foodcategory_id=$_POST['foodcategory_id'];
	}
	$foodItems_object=new foodItems();
	if(!empty($foodcategory_id)){
		$json_array=$foodItems_object->getfoodItems($foodcategory_id);
		echo json_encode($json_array);
	}	
?>
