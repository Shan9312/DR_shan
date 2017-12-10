<?php
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid){
	$sql="delete from dr_cart where uid=$uid";
	mysqli_query($conn,$sql);
	$result=mysqli_query($conn,$sql);
	$row=mysqli_affected_rows($conn);
	if(mysqli_error($conn)){
		echo mysqli_error($conn);
	}

	if($row<0){
	echo '{"code":-1,"msg":"删除失败"}';
	}else{
		echo '{"code":1,"msg":"删除成功"}';
	}
}
?>