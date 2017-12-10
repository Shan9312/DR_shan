<?php
require("../init.php");
@$pid=$_REQUEST['pid'];
if($pid){
	$sql=" select * from dr_products where  pid='$pid'";
	$result=mysqli_query($conn,$sql);
	$output["products"]=mysqli_fetch_all($result,MYSQLI_ASSOC)[0];
	$pid=$output["products"]["pid"];
	$sql="select * from dr_pic where pid='$pid'";
	$result=mysqli_query($conn,$sql);
	$output["imgs"]=mysqli_fetch_all($result,MYSQLI_ASSOC);
	if(mysqli_error($conn)){
		echo mysqli_error($conn);
	}
	echo json_encode($output);
}
?>