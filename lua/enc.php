<?php
header("Content-type:text/html;charset=utf8");
$time_key=time()-10;
if(empty($_GET['id'])) die('没有找到id');
if(!is_numeric($_GET['id'])) die('id不是数字');
$luafile=dirname(__FILE__).'/file/'.$_GET['id'].'.txt';
if(!is_file($luafile)) die('未找到文件');
$str=file_get_contents($luafile);

preg_match_all('/\"([^"\\\\]*(\\\\.[^"\\\\]*)*)\"|\'([^\'\\\\]*(\\\\.[^\'\\\\]*)*)\'/', $str, $matches);
//print_r($matches);die();
foreach ( $matches[0] as $i=>$value){
	if($matches[0][$i]=='""'||$matches[0][$i]=="''") $key[]='""';
	else if(!empty($matches[1][$i])){
		$value=str_replace('\n',"\n",$matches[1][$i]);
		$key[]='dec('.G_enc($value,$time_key).')';
	}
	else{
		$key[]='dec('.G_enc($matches[3][$i],$time_key).')';
	}
	
}

$trans=array_combine($matches[0],$key);
$result = strtr($str,$trans);
echo $result;

function G_enc($string,$time_key){
	$time_key+=rand(1,5);
	if($time_key%60==0) $time_key+=1;
	$bytes = array();
	$str = '';
	$bytes[]=$time_key%60;
	for($i = 0; $i < strlen($string); $i++){ 
		 $bytes[] = (ord($string[$i])+$time_key%256)%256; 
	}
	return implode(',',$bytes);
}




//\"([^\"]*)\"|\'([^\']*)\'