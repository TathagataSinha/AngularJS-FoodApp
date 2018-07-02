<?php
	include_once "connect.php";
	class restaurant{
		private $db;
		private $db_table="restaurant";
		public function __construct(){
			$this->db=new Dbconnect();
		}
		public function getrestaurant($restaurant_id){
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