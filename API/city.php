<?php
	require_once 'city_script.php';
	$city_object=new City();
	$json_array=$city_object->getAll();
	echo json_encode($json_array);
?>
