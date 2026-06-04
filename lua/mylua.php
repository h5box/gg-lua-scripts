<?php
if(empty($_COOKIE["uid"])||!is_numeric($_COOKIE["uid"])||$_COOKIE["uid"]==0) die('gg.alert("抱歉，您未登录")');else $user=mysqli_real_escape_string($conn,$_COOKIE["uid"]);
$sql = "SELECT * FROM g_file where f_uid='$user' order by f_xgtime desc limit 20";
$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		$lua_name=mb_substr($row['f_name'],7);
		$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
		$files["{$row['f_name_md5']}"]=$row['f_dir']."·".get_mtime($row['f_xgtime']).':\n【'.$lua_name.'.lua】'.'\n';
	}
} else {
	die('gg.alert("抱歉，您没有发任何脚本")'); 
}
$str='run_lua(({';
$cho='gg.choice({';
foreach($files as $md5=>$flie){
	 $str.='"'.$md5.'",'; 
	 $cho.='"'.$flie.'",'; 
}
$str.='"exit"})['.$cho.'"返回上级"},nil,nil)])';
echo enc($str);