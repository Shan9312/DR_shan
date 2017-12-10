<?php
require("../init.php");
session_start();
@$uid=$_SESSION['uid'];
if($uid){
$sql="select * from dr_user where uid='$uid'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
if(mysqli_error($conn)){
    echo mysqli_error($conn);
 }
   $output=["code"=>1,"uname"=>$row["uname"],"uid"=>$row["uid"]];
   echo json_encode($output); 
}else{
   echo  '{"code":-1,"msg":"该账号没有登录"}';
}

?>
