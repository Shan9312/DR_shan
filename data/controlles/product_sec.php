<?php
  header("Content-Type:application/json");
  require("../init.php");
  $sql="select pic,title,spec,price,href from dr_products";
  $result=mysqli_query($conn,$sql);
  $rows=mysqli_fetch_all($result,1);
  echo json_encode($rows);
?>