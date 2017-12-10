<?php
 require("../init.php");
 @$kw=$_REQUEST['term'];
 $sql="select title,spec,sold_count from dr_products";
 if($kw){
     $kw=explode(" ",$kw);
     for($i=0;$i<count($kw);$i++){
         $kw[$i]="  title like '%".$kw[$i]."%' ";
      }
    $sql.="  where  ".implode(" and ",$kw);
}
  $sql.="   order by sold_count DESC limit 10";
  $result=mysqli_query($conn,$sql);
  echo json_encode(mysqli_fetch_all($result,1));
  
  ?>