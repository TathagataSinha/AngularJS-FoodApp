<?php
	include "connect.php";
	class mycart{
		private $db;
		public function __construct(){
			$this->db=new Dbconnect();
		}
		public function addItem($restaurant_id,$customer_id,$food_id){
			$query="INSERT INTO mycart(restaurant_id,customer_id,food_id,status) VALUES('$restaurant_id','$customer_id','$food_id','Added to cart')";
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json["success"]=true;
				$json["message"]="";
				$json["data"]="";
			}else{
				$json["success"]=false;
				$json["message"]="";
				$json["data"]="";

			}
			return $json;
		}
		public function removeItem($cart_id){
			if($this->check_if_added($cart_id)==true){
				$query="DELETE FROM mycart WHERE cart_id='$cart_id'";
				$result=mysqli_query($this->db->getDb(),$query);
				$json["success"]=true;
				$json["message"]="Removed cart id : ".$cart_id;
				$json["data"]="";
		}else{
				$json["success"]=false;
				$json["message"]="Failed to remove";
				$json["data"]="";
		}
				return $json;
		}
		public function check_if_added($cart_id){
			$query="SELECT * FROM mycart where cart_id='$cart_id' AND status='Added to cart'";
			$result=mysqli_query($this->db->getDb(),$query);
			if (mysqli_num_rows($result)>=1) {
				return true;
			} else {
				return false;
			}
			
		}
	}
?>