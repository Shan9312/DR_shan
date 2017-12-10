<?php
require("../init.php");
$output=[
     "count"=>0,//一共多少个产品
     "pno"=>0,//第几页
    "pageSize"=>8,//默认每页8个
     "pageCount"=>0,//页的数量
     "data"=>[]//每个产品的详细信息,lid,md,pic,price,title
];
@$pno=(int)$_REQUEST["pno"];
if($pno){
    $output['pno']=$pno;
}
@$kw=$_REQUEST["kw"];
$sql="select pid,pic,price,title,spec from dr_products  ";
if($kw){
    $kw=explode(" ",$kw);
    for($i=0;$i<count($kw);$i++){
        $kw[$i]="  title like '%" .$kw[$i]. "%'" ;
    }
   $sql.="  where " .implode ("  and   ", $kw); 
}
$result=mysqli_query($conn,$sql);
$products=mysqli_fetch_all($result,MYSQLI_ASSOC);
if(mysqli_error($conn)){
    echo mysqli_error($conn);
}
$output["count"]=count($products);
$output["pageCount"]=Ceil($output["count"]/$output["pageSize"]);
$sql.="  limit  ".($output["pno"]*$output["pageSize"].",". $output["pageSize"]);
$result=mysqli_query($conn,$sql);
if(mysqli_error($conn)){
    echo mysqli_error($conn);
}
$output["data"]=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($output);




?>