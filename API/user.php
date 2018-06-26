<?php
    include_once 'connect.php';
    class User{
            private $db;
            private $db_table="customer";
            public function __construct(){
              $this->db=new DbConnect();
            }
            public function isUserActive($email){
                $query="SELECT * FROM ".$this->db_table." WHERE email='$email' AND active=1";
                $result=mysqli_query($this->db->getDb(),$query);
                if(mysqli_num_rows($result)>0){
                    return true;
                }
                return false;
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
            public function createNewRegisterUser($name,$password,$email,$phone_no,$main_password){
                $isExisting=$this->isEmailExist($email);
                if($isExisting){
                    $json['success']=false;
                    $json['message']="email already exists";
                    $json['data']="";
                }
                else{
                    $isValid=$this->isValidEmail($email);
                    if($isValid){
                        $hash=md5(rand(0,1000));
                        $query="Insert into ".$this->db_table." (customer_name,password,email,phone_no,created_date,updated_date,hash,active) values ('$name','$password','$email','$phone_no',NOW(),NOW(),'$hash',0)";
                        $inserted=mysqli_query($this->db->getDb(),$query);
                        if($inserted==1){
                            $json['success']=true;
                            $json['message']="Registered Successfully";
                            $json['data']="$email";
                            $sent=$this->sendUserMail($name,$email,$hash,$main_password);
                            
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
            public function sendUserMail($name,$email,$hash,$main_password){
                $sender  = 'mail@parthasarma.com';
                $recipient = $email; 
                $subject = 'Verify your email address'; 
               $message = '
 
Thanks for signing up!
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.
 
------------------------
Username: '.$name.'
Password: '.$main_password.'
------------------------
 
Please click this link to activate your account:
http://parthasarma.com/verify.php?email='.$email.'&hash='.$hash.'
 
';
                $headers = 'From:' . $sender;
                $sent=mail($recipient, $subject, $message, $headers);
            }
            public function loginUsers($email,$password){
                $json=array();
                $isUserActive=$this->isUserActive($email);
                $canUserLogin=$this->isLoginExist($email,$password);
                if($canUserLogin){
                    if($isUserActive){
                        $json['success']=true;
                        $json['message']="Logged in Successfully";
                        $json['data']="$email";
                    }
                    else{
                        $json['success']=false;
                        $json['message']="Please verify your email address";
                        $json['data']="";
                    }
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
