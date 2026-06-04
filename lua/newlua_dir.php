<?php
if(empty($_POST['dir']))die('gg.alert("error:no dir")');
$luadir=mysqli_real_escape_string($conn,str_replace(array("\r\n", "\r", "\n","/","\\"," "),"",($_POST['dir'])));
$sql = "SELECT * FROM g_file where (f_status=1 or f_status=2) and f_dir='$luadir' order by f_xgtime desc limit 50";
$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		$lua_name=mb_substr($row['f_name'],7);
		$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
		$files["{$row['f_name_md5']}"]='【'.$lua_name.'】·'.get_mtime($row['f_xgtime']);
	}
} else {
	echo "error:0 结果"; 
}
//$now=date("Y-m-d H:i:s",time());//将时间戳转换为要求的日期时间格式
$str='run_lua(({';
$cho='gg.choice({';
foreach($files as $md5=>$flie){
	 $str.='"'.$md5.'",'; 
	 $cho.='"'.$flie.'",'; 
}
$str.='"exit"})['.$cho.'"返回主页"},nil,nil)])';
echo enc($str);