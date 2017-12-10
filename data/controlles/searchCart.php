<?php
require("../init.php");
session_start();
@$uid=$_SESSION['uid'];
if($uid){
	$sql="select pid,title,pic,price,spec,count,is_checked  ";
	$sql.="  from dr_cart inner join dr_products on pid_c=pid  where uid=$uid ";
	$result=mysqli_query($conn,$sql);
	$rows=mysqli_fetch_all($result,1);
	if(mysqli_error($conn)){
		echo mysqli_error($conn);
	}
	echo json_encode($rows);
}

?>