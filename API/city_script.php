<?php
	include_once 'connect.php';
	class City{
		private $db;
		private $db_table="city";
		public function __construct(){
			$this->db=new DbConnect();
		}
		public function getAll(){
			$query="SELECT * FROM ".$this->db_table;
			mysqli_query($this->db->getDb(),"SET CHARACTER SET utf8");
			$result=mysqli_query($this->db->getDb(),$query);
			$json_array=array();
			while($row=mysqli_fetch_assoc($result)){
				$json_array[]=$row;
			}
			return $json_array;
		}
		public function getCityDetails($cityCode){
			$query="SELECT * FROM ".$this->db_table." WHERE city_code='$cityCode'";
			mysqli_query($this->db->getDb(),"SET CHARACTER SET utf8");
			$result=mysqli_query($this->db->getDb(),$query);
			$json_array=array();
			while($row=mysqli_fetch_assoc($result)){
				$json_array[]=$row;
			}
			return $json_array;
		}
	}
	?>
