<?php
	require_once "foodorder_script.php";
	$order_object=new myorder();
	$json_array=$order_object->order();
	echo json_encode($json_array);
	
?>