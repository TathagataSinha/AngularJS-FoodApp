<?php
	include "connect.php";
	class mycart{
		private $db;
		public function __construct(){
			$this->db=new Dbconnect();
		}
		public function addItem($restaurant_id,$customer_id,$food_id,$quantity,$price,$description){
			$query="INSERT INTO mycart(restaurant_id,customer_id,food_id,quantity,price,description,status) VALUES('$restaurant_id','$customer_id','$food_id','$quantity','$price','$description','Added to Cart')";
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json["success"]=true;
				$json["message"]="Added to cart";
				$json["data"]="";
			}else{
				$json["success"]=false;
				$json["message"]="Failed to execute";
				$json["data"]="";

			}
			return $json;
		}

		public function removeItem($item_id){
			if($this->check_if_added($item_id)==true){
				$query="DELETE FROM mycart WHERE item_id='$item_id'";
				$result=mysqli_query($this->db->getDb(),$query);
				$json["success"]=true;
				$json["message"]="Removed cart id : ".$item_id;
				$json["data"]="";
		}else{
				$json["success"]=false;
				$json["message"]="Failed to remove";
				$json["data"]="";
		}
				return $json;
		}

		public function check_if_added($item_id){
			$query="SELECT * FROM mycart where item_id='$item_id'";
			$result=mysqli_query($this->db->getDb(),$query);
			if (mysqli_num_rows($result)>=1) {
				return true;
			} else {
				return false;
			}
			
		}
	}

?>