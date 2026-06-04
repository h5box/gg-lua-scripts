<?php
$sql = "SELECT * FROM g_file where f_status=1 or f_status=2 order by f_xgtime desc limit 20";
$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		//if(in_array($row['f_dir'], array("奶块脚本",'猫和老鼠','创造与魔法','我功夫特牛','球球作战'))) continue;//跳过文件夹
		$lua_name=mb_substr($row['f_name'],7);
		$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
		$files["{$row['f_name_md5']}"]=$row['f_dir']."·".get_mtime($row['f_xgtime']).':\n【'.$lua_name.'.lua】'.'\n';
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