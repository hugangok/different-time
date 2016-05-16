<?php
header("Cache-Control:post-check=0,pre-check=0",false);
header("Pragma:no-cache");
//从数据库获得uersname数组
$mysqli  = new  mysqli ( "localhost" ,  "" ,  "" ,  "" );
$result=$mysqli -> query ( "SELECT name FROM hu_user" );
$a=array();
while($row = mysqli_fetch_array($result))
{
  $a[]=$row['name'];
}
//获得来自 URL 的 q 参数
$q=$_GET["q"];
print_r($q);
//清空缓存
header("Last-Modified: " . gmdate( "D, d M Y H:i:s" ) . "GMT" );  
 header("Cache-Control: no-cache, must-revalidate" );   
//如果q大于0，判断是否是数组中的数
if (strlen($q) > 0)
  {
	  $response="";
if ( in_array ( "$q" ,  $a )) {
		  $response='用户名已存在';
	  }else{$response='用户名可用';}
  }
else{
$response="";}	
 //输出
 echo $response;
?>
