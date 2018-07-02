<?php
	include_once "connect.php";
	class foodCategory{
		private $db;
		private $db_table="food_category";
		public function __construct(){
			$this->db=new Dbconnect();
		}
		public function getAll(){
			$query=" SELECT * FROM ".$this->db_table;
			$result=mysqli_query($this->db->getDb(),$query);
			$json_array=array();
			while($row=mysqli_fetch_assoc($result)){
				$json_array[]=$row;
			}
			return $json_array;
		}
		public function getfoodcategory($restaurant_id){
			$query=" SELECT * FROM ".$this->db_table." WHERE restaurant_id='$restaurant_id'";
			$result=mysqli_query($this->db->getDb(),$query);
			$json_array=array();
			while($row=mysqli_fetch_assoc($result)){
				$json_array[]=$row;
			}
			return $json_array;
		}


	}

?>