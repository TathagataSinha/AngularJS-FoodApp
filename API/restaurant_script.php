<?php
	include_once "connect.php";
	class restaurant{
		private $db;
		public function __construct(){
			$this->db=new Dbconnect();
		}
		public function getrestaurant($mall_id){
			$query=" SELECT * FROM restaurant LEFT JOIN restaurant_photos ON restaurant.restaurant_id = restaurant_photos.restaurant_id WHERE restaurant.mall_id='$mall_id'";
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json["success"]=true;
				$json_array=array();
				while($row=mysqli_fetch_assoc($result)){
					$json_array[]=$row;
				}
				$json["message"]=$json_array;
				$json["data"]="";
			}
			else{
				$json["status"]=false;
				$json["message"]="";
				$json["data"]="";
			}
			return $json;

		}
	}

?>
