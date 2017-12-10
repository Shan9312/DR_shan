<?php
 session_start();
 require("../init.php");
 @$phone = $_REQUEST["phone"];
 @$upwd = $_REQUEST["upwd"];
 @$yzm = $_REQUEST["yzm"];
 //5:验证格式是否正确 preg_match($pattern,$str)
 $phonePattern = '/^1[35678]\d{9}$/';
 $upwdPattern = '/^[a-zA-Z0-9_]{6,12}$/';
 //验证:验证码格式的正则表达式
 $yPattern = '/^[a-zA-Z]{4}$/';
 if(!preg_match($phonePattern,$phone)){
	echo  '{"code":-2,"msg":"手机格式不正确"}';
	exit;
  }
  if(!preg_match($upwdPattern,$upwd)){
	echo '{"code":-3,"msg":"密码格式不正确"}';
	exit;
  }
  if(!preg_match($yPattern,$yzm)){
	echo '{"code":-3,"msg":"验证码格式不正确"}';
	exit;
  }
   //验证:用户输入验证码是否正确
 $code = $_SESSION["code"];
 if($code!=strtolower($yzm)){
   echo '{"code":-3,"msg":"验证码不正确"}';
   exit;
 }
 //6:创建sql并且发送sql
 $sql = " SELECT * FROM dr_user";
 $sql .=" WHERE phone='$phone'";
 $sql .=" AND upwd=$upwd ";
 $result = mysqli_query($conn,$sql);
 if(mysqli_error($conn)){
   echo mysqli_error($conn);
 }
 $row = mysqli_fetch_assoc($result);
 if($row===null){
   echo '{"code":-1,"msg":"用户名或密码错误"}';
 }else{
   $_SESSION["uid"]=$row['uid'];
   echo '{"code":0,"msg":"登录成功"}';
 }
?>