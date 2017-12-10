<?php
 require("../init.php");
 @$uname=$_REQUEST['uname'];
 $sql="select * from dr_user where uname='$uname'";
 $result=mysqli_query($conn,$sql);
 $rows=mysqli_fetch_row($result);
 if(count($rows)!=0){
    echo '{"code":-1,"msg":"用户名已注册"}';
 }else{
    echo '{"code":1,"msg":"OK"}';
 }
?>