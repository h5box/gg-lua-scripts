<?php
header("Content-type:text/html;charset=utf8");
// error_reporting(0);
require_once($ggdir.'../conn.php');//连接数据库




if(!(empty($_GET['day'])||empty($_GET['num']))){
	if(!(is_numeric($_GET['day'])&&is_numeric($_GET['num']))) die('day or num err');
	$day=$_GET['day'];
	$num=$_GET['num'];
	for($i=1;$i<=$num;$i++)
	{
		$kami=getRandChar(16);
		echo $kami.'<br>';
		$sql="INSERT INTO g_kami (f_km,f_day) VALUES('$kami','$day')";
		mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
	}
	die('<br>完成');
}else{

die('done:参数错误');
}



function getRandChar($length){//生成指定长度字符串
		$str = null;
		$strPol = "abcdefghijklmnopqrstuvwxyz";
		$max = strlen($strPol)-1;
		for($i=0;$i<$length;$i++){
		$str.=$strPol[rand(0,$max)];//rand($min,$max)生成介于min和max两个数之间的一个随机整数
	}
	return strtoupper($str);
}