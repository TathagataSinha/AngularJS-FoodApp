<?php
	include_once "connect.php";
	class foodItems{
		private $db;
		private $db_table="food_items";
		public function __construct(){
			$this->db=new Dbconnect();
		}
		public function getAll(){
			$query=" SELECT * FROM ".$this->db_table;
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json["success"]=true;
				$json_array=array();
				while($row=mysqli_fetch_assoc($result)){
					$json_array[]=$row;
				}
				$json["message"]=$json_array;
				$json["data"]="";
				return $json;
				}
				else{
					$json["success"]=false;
					$json["message"]="";
					$json["data"]="";
				}
		}
		public function getfoodItems($foodcategory_id){
			$query=" SELECT * FROM ".$this->db_table." WHERE foodcategory_id='$foodcategory_id'";
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json["success"]=true;
				$json_array=array();
				while($row=mysqli_fetch_assoc($result)){
					$json_array[]=$row;
				}
				$json["message"]=$json_array;
				$json["data"]="";
				return $json;
				}
				else{
					$json["success"]=false;
					$json["message"]="";
					$json["data"]="";
				}

			}
	}

?>