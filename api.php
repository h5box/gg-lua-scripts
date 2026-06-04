<?php
header("Content-type:text/html;charset=utf8");
error_reporting(0);
$ggdir=dirname(__FILE__);
require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数

if(!empty($_GET['dir'])){ //输出文件夹下文件列表
	$dir=mysqli_real_escape_string($conn,$_GET['dir']);
	$files['dir'][]=$dir;
	$i=0;
	$sql = "SELECT f_name,f_name_md5,f_xgtime,f_times,f_size,f_zan FROM g_file where f_status=1 and f_dir='$dir' order by f_name desc";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			$lua_name=mb_substr($row['f_name'],7);
			$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
			$name_md5['name']=$lua_name;
			$name_md5['md5']=$row['f_name_md5'];
			$name_md5['uptime']=$row['f_xgtime'];
			$name_md5['times']=$row['f_times'];
			$name_md5['size']=$row['f_size']; 
			$name_md5['like']="".$row['f_zan']; 
			
			$files['files'][]=$name_md5;
		}
	} else {
		die('{"error:":"空文件夹"}');
	}
	echo json_encode($files);
	die();
}
else if(isset($_GET['dir']))
{//输出文件夹列表
		$sql = "SELECT f_dir FROM g_file where f_status=1 order by f_dir desc";
		$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
		if (mysqli_num_rows($result) > 0) {
			while($row = mysqli_fetch_assoc($result)) {
				if(empty($dir_t["{$row['f_dir']}"])) $dir_t["{$row['f_dir']}"]=1;  else $dir_t["{$row['f_dir']}"]++;
			}
		}else{
			die('{"error:":"服务器出错"}');
		}
		
		foreach($dir_t as $key => $value){
			$dir_s['name']=$key;
			$dir_s['num']="".$value;
			$dir['dir'][] =$dir_s;
		}

		echo json_encode($dir);
		die();
}
else if(!empty($_GET['geturl']))
{//输出文件直连
	$luamd5=mysqli_real_escape_string($conn,$_GET['geturl']);
	$sql = "SELECT f_dir,f_name FROM g_file where f_name_md5='$luamd5'";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		$url['url']='http://gg.kuaibiji.info/'.$row['f_dir'].'/'.$row['f_name'];
		echo json_encode($url);
	}else die('{"error:":"文件未找到"}');
	
}
else if(!empty($_GET['file']))
{ //输出脚本
	$luamd5=mysqli_real_escape_string($conn,$_GET['file']);
	$sql = "SELECT f_dir,f_name FROM g_file where f_name_md5='$luamd5'";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		$lua=$ggdir.'/'.$row['f_dir'].'/'.$row['f_name'];
		if(is_file($lua)){
			echo file_get_contents($lua);
			$sql="update g_file SET f_times=f_times+1 WHERE f_name_md5='$luamd5'";//访问次数加1
			@mysqli_query($conn,$sql);
		}
		else{
			echo '{"error:":"文件已删除"}';
		}
		
	}else{
		echo '{"error:":"文件已删除或不存在"}';
	}
die();
}
else die('{"error:":"参数错误"}');









