<?php
 require("../init.php");
 @$uname=$_REQUEST['uname'];
 if(!$uname){
	 die('{"code":-1,"msg":"用户名不能为空"}');
 }
 @$phone=$_REQUEST['phone'];
 @$upwd=$_REQUEST['upwd'];
 if($uname && $phone && $upwd){
 $sql="insert into dr_user values(null,'$uname',$phone,$upwd)";
 $result=mysqli_query($conn,$sql);
 $row=mysqli_affected_rows($conn);
	if($row>0){
		echo '{"code":1,"msg":"注册成功"}';
	}else{
		echo '{"code":-1,"msg":"注册不成功，请重新注册"}';
	}
}
?>