<?php
require("../init.php");
session_start();
@$uid=$_SESSION['uid'];
$pid=$_REQUEST['pid'];
$count=$_REQUEST["count"];
if($uid){
	$sql="select * from dr_products  where  '$pid'='pid_c' ";
	$result=mysqli_query($conn,$sql);
	if(mysqli_error($conn)){
		echo mysqli_error($conn);
	}
	if(count(mysqli_fetch_all($result,1))){
		$sql="update dr_cart count=count+$count where uid=$uid  and pid_c=$pid";
		mysqli_query($conn,$sql);
		
		echo '{"code":1,"msg":"添加成功"}';
	}else{
		$sql="insert into dr_cart values(null,$uid,$pid,$count,0)";
		mysqli_query($conn,$sql);
		if(mysqli_error($conn)){
			echo mysqli_error($conn);
		}
		echo '{"code":1,"msg":"添加成功"}';
	}
}
