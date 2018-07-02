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
			$json_array=array();
			while($row=mysqli_fetch_assoc($result)){
				$json_array[]=$row;
			}
			return $json_array;
		}
		public function getfoodItems($food_category){
			$query=" SELECT * FROM ".$this->db_table." WHERE food_category='$food_category'";
			$result=mysqli_query($this->db->getDb(),$query);
			$json_array=array();
			while($row=mysqli_fetch_assoc($result)){
				$json_array[]=$row;
			}
			return $json_array;
		}


	}

?>