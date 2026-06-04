<?php
header("Content-type:text/html;charset=utf8");
// error_reporting(0);
require_once($ggdir.'./conn.php');//连接数据库

die();


$sql="update g_user SET f_mark=f_mark+100";//访问次数加1
mysqli_query($conn,$sql);



function getRandChar($length){//生成指定长度字符串
		$str = null;
		$strPol = "abcdefghijklmnopqrstuvwxyz";
		$max = strlen($strPol)-1;
		for($i=0;$i<$length;$i++){
		$str.=$strPol[rand(0,$max)];//rand($min,$max)生成介于min和max两个数之间的一个随机整数
	}
	return strtoupper($str);
}