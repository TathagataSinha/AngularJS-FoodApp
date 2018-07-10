<?php
	include_once 'connect.php';
	class City{
		private $db;
		private $db_table="city";
		public function __construct(){
			$this->db=new DbConnect();
		}
		public function getAll(){
			$query="SELECT * FROM city LEFT JOIN city_photos ON city.city_id=city_photos.city_id";
			mysqli_query($this->db->getDb(),"SET CHARACTER SET utf8");
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json['status']=true;
				$json_array=array();
				while($row=mysqli_fetch_assoc($result)){
					$json_array[]=$row;
				}
				$json['message']=$json_array;
				$json['data']='';
			}
			else{
				$json['status']=false;
				$json['message']=$json_array;
				$json['data']='';
			}
			return $json;
		}
		public function getCityDetails($cityCode){
			$query="SELECT * FROM ".$this->db_table." WHERE city_code='$cityCode'";
			mysqli_query($this->db->getDb(),"SET CHARACTER SET utf8");
			$result=mysqli_query($this->db->getDb(),$query);
			if($result){
				$json['status']=true;
				$json_array=array();
				while($row=mysqli_fetch_assoc($result)){
					$json_array[]=$row;
				}
				$json['message']=$json_array;
				$json['data']='';
			}
			else{
				$json['status']=false;
				$json['message']=$json_array;
				$json['data']='';
			}
			return $json;
		}
	}
	?>
