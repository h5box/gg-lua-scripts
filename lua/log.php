<?php
header("Content-type:text/html;charset=utf8");
// error_reporting(0);
$ggdir=dirname(dirname(__FILE__));
require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数
$sql="SELECT DATE_FORMAT(f_updatetime, '%Y-%m-%d %H:00:00') AS time, COUNT(*) AS num
FROM g_user
GROUP BY time
ORDER BY time;";//获取id状态
$result=mysqli_query($conn,$sql) or die('ERROR1:'.mysqli_error($conn));
if (mysqli_num_rows($result)>0) { //uid存在
			$row = mysqli_fetch_array($result);
			print_r($row);
}else die("error");