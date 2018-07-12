<?php
	include "connect.php";
	class displaycart{
		private $db;
		public function __construct(){
			$this->db=new Dbconnect();
		}

		public function display($customer_id){
			$query="SELECT mycart.quantity,mycart.price,food_items.food_name,food_photos.photo_url FROM mycart INNER JOIN food_items ON mycart.food_id=food_items.food_id INNER JOIN food_photos ON mycart.food_id=food_photos.food_id WHERE mycart.customer_id='$customer_id' AND mycart.status='Added to cart'";
			$result=mysqli_query($this->db->getDb(),$query);
			$row_no=mysqli_num_rows($result);
			if ($row_no!=0) {
				$json["success"]=true;
				$quantity=array();
				$price=array();
				$food_name=array();
				$photo_url=array();
				while ($query_row=mysqli_fetch_assoc($result)) {
					$quantity[]=$query_row["quantity"];
					$price[]=$query_row["price"];
					$food_name[]=$query_row["food_name"];
					$photo_url[]=$query_row["photo_url"];
				}
				for ($i=0; $i <$row_no ; $i++) { 
					$json_array["quantity"]=$quantity[$i];
					$json_array["price"]=$price[$i];
					$json_array["food_name"]=$food_name[$i];
					$json_array["photo_url"]=$photo_url[$i];
					$json[$i]=$json_array;

				}
			}else{
				$json["success"]=false;
				$json["message"]="Nothing to show";
			}
			return $json;
			
		}
	}
?>