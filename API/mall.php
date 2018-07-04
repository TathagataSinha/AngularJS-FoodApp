<?php
	require_once 'mall_script.php';
	if(isset($_GET['city_id'])){
		$city_id=$_GET['city_id'];
	}
	$mall_object=new Mall();
	if(!empty($city_id)){
		$json_array=$mall_object->getAll($city_id);
		echo json_encode($json_array);
	}
?>
