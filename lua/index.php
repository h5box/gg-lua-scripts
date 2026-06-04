<?php
header("Content-type:text/html;charset=utf8");die();
if(isset($_GET['toast'])) die("云加密，挑战全网—by GG脚本库，交流群611467025");
$uid=rand(10000000,99999999);
if(empty($_POST['file'])) die("没有传入文件");
$newfile=dirname(__FILE__).'/file/'.$uid.'.txt';
$file_arr=explode(',',$_POST['file']);
foreach($file_arr as $ch) { 
	$str .= chr($ch); 
} 

file_put_contents($newfile,$str);
$str_ini=file_get_contents('lua.ini');
$str_ini=str_replace('12345678',$uid,$str_ini);
echo $str_ini;