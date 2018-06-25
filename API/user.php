<?php
	include_once 'connect.php';
	class User{
            private $db;
            private $db_table="customer";
            public function __construct(){
		      $this->db=new DbConnect();
            }
            public function isLoginExist($email,$password){
		$query="select * from ".$this->db_table." where email= '$email' and password='$password'";
		$result=mysqli_query($this->db->getDb(),$query);
		if(mysqli_num_rows($result)>0){
                    mysqli_close($this->db->getDb());
                    return true;
		}
		mysqli_close($this->db->getDb());
		return false;
            }
            public function isEmailExist($email){
                $query="SELECT * FROM ".$this->db_table." WHERE  email='$email' LIMIT 1";
                $result=mysqli_query($this->db->getDb(),$query);
                if(mysqli_num_rows($result)>0){
		              mysqli_close($this->db->getDb());
		              return true;
                }
                return false;
            }
            public function isValidEmail($email){
                return filter_var($email, FILTER_VALIDATE_EMAIL)!==false;
            }
            public function createNewRegisterUser($name,$password,$email,$phone_no){
                $isExisting=$this->isEmailExist($email);
                if($isExisting){
                    $json['success']=false;
                    $json['message']="email already exists";
                    $json['data']="";
                }
                else{
                    $isValid=$this->isValidEmail($email);
                    if($isValid){
                        $query="Insert into ".$this->db_table." (customer_name,password,email,phone_no,created_date,updated_date) values ('$name','$password','$email','$phone_no',NOW(),NOW())";
                        $inserted=mysqli_query($this->db->getDb(),$query);
                       	if($inserted==1){
                            $json['success']=true;
                            $json['message']="Registered Successfully";
                            $json['data']="$email";
                		}
                		else{
                                    $json['success']=false;
                                    $json['message']="Error!!Try again";
                                    $json['data']="";
                		}
                                    mysqli_close($this->db->getDb());
                		}
                		else{
                                    $json['success']=false;
                                    $json['message']="Please use a valid email address";
                                    $json['data']="";
                		}
                    }
                        return $json;
            }
            public function loginUsers($email,$password){
                $json=array();
                $canUserLogin=$this->isLoginExist($email,$password);
                if($canUserLogin){
                    $json['success']=true;
                    $json['message']="Logged in Successfully";
                    $json['data']="$email";
                }
                else{
                    $json['success']=false;
                    $json['message']="Enter email/password Correctly";
                    $json['data']="";
                }
                return $json;
            }
        }
?>
