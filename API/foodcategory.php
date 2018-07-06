<?php
	require_once "foodcategory_script.php";
	if(isset($_POST['restaurant_id']){
		$restaurant_id=$_POST['restaurant_id'];	
	}
	$foodcategory_object=new foodCategory();
	if(!empty($restaurant_id)){
		$json_array=$foodcategory_object->getfoodcategory($restaurant_id);
		echo json_encode($json_array);
	}
	
?>
