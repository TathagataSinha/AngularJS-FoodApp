<?php
	include_once 'connect.php';
	class Mall{
		private $db;
		public function __construct(){
			$this->db=new DbConnect();
		}
		public function getAll($cityId){
			$query="SELECT * FROM mall LEFT JOIN mall_photos on mall.mall_id=mall_photos.mall_id WHERE city_id=$cityId";
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
		public function getMallDetails($mallCode){
			$query="SELECT * FROM mall LEFT JOIN mall_photos on mall.mall_id=mall_photos.mall_id WHERE mall_code='$mallCode'";
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
