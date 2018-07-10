<?php
	include "connect.php";
	class myorder{
		private $db;
		public function __construct(){
			$this->db=new Dbconnect();
		}

		public function order(){
			$query="SELECT mycart.item_id,restaurant.restaurant_name FROM mycart INNER JOIN restaurant ON mycart.restaurant_id=restaurant.restaurant_id WHERE mycart.status='Confirmed' ";
			$result=mysqli_query($this->db->getDb(),$query);
			$row_no=mysqli_num_rows($result);
			$item_id=array();
			$restaurant_name=array();
			while ($query_row=mysqli_fetch_assoc($result)) {
				$item_id[]=$query_row["item_id"];
				$restaurant_name[]=$query_row["restaurant_name"];
			}
			date_default_timezone_set("Asia/Kolkata");
			$time=time();
			$actual_time=date("h:i:s ",$time);
			$actual_date=date("d/m/Y",$time);
			$offset=0;
			for ($i=0; $i <$row_no ; $i++) { 
				$str_len=stripos($restaurant_name[$i],32,$offset);
				$substr=substr($restaurant_name[$i], $offset,$str_len);
				$json_array['order_id']=$substr.$item_id[$i];
				$json_array['date']=$actual_time.$actual_date;
				$json[$i]=$json_array;
			}

			return $json;
		}
	}