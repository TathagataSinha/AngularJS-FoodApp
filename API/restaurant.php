<?php
	require_once "restaurant_script.php";
	if(isset($_POST['mall_id']){
		$mall_id=$POST_['mall_id'];
	}
	$restaurant_object=new restaurant();
	if(!empty($mall_id)){
			$mall_id=$_POST["mall_id"];
			$json_array=$restaurant_object->getrestaurant($mall_id);
			echo json_encode($json_array);
	}
	
?>
