<?php
class dbconn
{
	function linkDB(){
		$link=mysqli_connect("localhost","root","","login");
		if(!$link){
			echo error_reporting(E_ALL);
		}
		else{
			return $link;
		}
	}
	public function loginCheck(){
		$link=$this->linkDB();
		$sql="select *, count(id) from credentials where email_id='".$_POST['email_id']."'";
	
		$result=mysqli_query($link,$sql);
		if(!$result){
			echo"ERROR IN CONNECTING TABLE";
		}
		while($row=mysqli_fetch_assoc($result)){
			if($row['count(id)']==0){
				return ["status"=>"UNA"];
			}else{
				if($row['password']==md5($_POST['password'])){
					return ["status"=>"login"];

				}else{
					return ["status"=>"PW"];
				}
			}
		}
	}
	public function addNewUser(){
		$link=$this->linkDB();
		$sql="INSERT INTO `credentials`(`name`, `email_id`, `password`, `confirmpassword`) VALUES ('".$_POST['name']."','".$_POST['email_id']."','".md5($_POST['password'])."','".md5($_POST['confirmpassword'])."')";
		$result=mysqli_query($link,$sql);
		if(!$result){
			echo "ERROR IN CONNECTING TABLE";
		}
		else{
			return ["status"=>"Done"];
		}
	}

}

?>