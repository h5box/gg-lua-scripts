<?php
header("Content-type:text/html;charset=utf8");
// error_reporting(0);
$ggdir=dirname(__FILE__);
require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数
if(empty($_COOKIE["uid"])||!is_numeric($_COOKIE["uid"])||$_COOKIE["uid"]==0) $user=0;else $user=mysqli_real_escape_string($conn,$_COOKIE["uid"]);
if(!empty($_GET['file'])){ //输出脚本
	if(!empty($user)){//记录用户执行次数
		$user_ip=getip();
		$sql="SELECT * FROM g_user WHERE f_uid='$user'";//获取id状态
		$result=mysqli_query($conn,$sql) or die('ERROR1:'.mysqli_error($conn));
		if (mysqli_num_rows($result)==0) $user=0;else{ //uid存在
			$row = mysqli_fetch_array($result);
			$sql="update g_user SET f_times=f_times+1,f_ip='$user_ip' where f_uid='$user'";
			@mysqli_query($conn,$sql);
			if($row['f_bad']==1) die('gg.alert("#你因发布恶意内容已被封号#")');
		}
	}
	if(empty($user)) //没有找到这个用户uid
	{
		$username='G'.substr(str_replace('.','',getip()),2,6);
		$user=rand(11111111,99999999);
		$user_ip=getip();
		$sql="INSERT INTO g_user (f_username,f_password,f_uid,f_status,f_ip,f_times) VALUES('$username',0,'$user',2,'$user_ip',1)";
		mysqli_query($conn,$sql) or die('ERROR2:'.mysqli_error($conn));
		header("setuid: ".$user);
	}

	$luamd5=mysqli_real_escape_string($conn,$_GET['file']);
	$sql = "SELECT f_dir,f_name,f_xgtime,f_times,f_zan,f_cai FROM g_file where f_name_md5='$luamd5'";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		$lua=$ggdir.'/'.$row['f_dir'].'/'.$row['f_name'];
		if(is_file($lua)){
			echo enc(file_get_contents($lua));
			$sql_times=mysqli_query($conn,"select sum(f_times)/count(Id) from g_file") or die(mysqli_error($conn));
			$times = mysqli_fetch_array($sql_times)[0];
			$mark_3=$row['f_times']/$times>1?1:$row['f_times']/$times;
			$mark_4=7-hours($row['f_xgtime'])*0.01667; 
			$mod_mark=((10-$mark_4)/3);
			$mark=round(($row['f_zan']*1.2-$row['f_cai']+0.01)*$mod_mark/($row['f_zan']+$row['f_cai']+0.01)+($row['f_zan']+$row['f_cai']*1.2)*$mod_mark/($row['f_times']+1)+$mark_3*$mod_mark+$mark_4,1);
			$mark=$mark<1?1:$mark;
			$sql="update g_file SET f_times=f_times+1,f_star='$mark' WHERE f_name_md5='$luamd5'";//访问次数加1
			@mysqli_query($conn,$sql);
		}
		else{
			echo 'gg.alert("文件已删除")';
		}
		
	}else{
		echo 'gg.alert("文件不存在或已删除")';
	}
	die();
}
else if(!empty($_GET['toast'])){ //输出toast
	require './lua/toast.php';
	die();
}
else if(isset($_GET['lua'])){//输出主页lua
	if($_GET['lua']=='upload') require './lua/upload.php';
	else if($_GET['lua']=='setting') require './lua/setting.php';
	else if($_GET['lua']=='newlua') require './lua/newlua.php';
	else if($_GET['lua']=='newlua_dir') require './lua/newlua_dir.php';
	else if($_GET['lua']=='userconf') require './lua/userconf.php';
	else if($_GET['lua']=='chat') require './lua/chat.php';
	else if($luadir=indir($_GET['lua'])) require './lua/main_dir.php';
	else require './lua/main.php';
	die();
}
else if(isset($_GET['jb'])){//举报
	file_put_contents('jb.txt',@file_get_contents('jb.txt')."\n".$_GET['jb']);
	echo '举报成功';
	die();
}
else if(isset($_POST['submit'])){//上传
	if(!empty($_FILES["file"])&&!($_FILES["file"]["error"] > 0))//已传入文件
	{
		
		$file = fopen($_FILES["file"]["tmp_name"], "rb");
		$bin = fread($file, 2); //只读2字节
		fclose($file);
		$strInfo = @unpack("C2chars", $bin);
		$typeCode = intval($strInfo['chars1'].$strInfo['chars2']);
		if($typeCode==2776) die('当前脚本存在安全隐患：加密的脚本');
		if(empty($_POST['dirname'])) die('ERROR 01');
		if(!(strtolower(substr(strrchr($_FILES["file"]["name"], '.'), 1))=="lua")) die('文件格式不对，仅支持.lua');
		$dir=dirname(__FILE__).'/'.str_replace(array("\r\n", "\r", "\n","/","\\"," "),"",($_POST['dirname']));
		is_dir($dir) or die('上传失败：没有此文件夹');
		$file=$dir.'/'.date("ymd").' '.str_replace(array("\r\n", "\r", "\n","/",".lua"," "),"",$_FILES["file"]["name"]).'.lua';  
		move_uploaded_file($_FILES["file"]["tmp_name"],$file);
		echo '上传成功  ';require 'resh.php';
		die();
	}
	else if($_POST['submit']=="lua"){
		if(empty($_POST['dirname'])) die("ERROR:未选择文件夹");
		if(empty($_POST['filename'])) die("ERROR:未找到文件名");
		if(empty($_POST['toast'])) die("ERROR:未填写使用说明");
		if(empty($_POST['file'])) die("ERROR:未传入文件");
		
		$file_arr=explode(',',$_POST['file']);
		foreach($file_arr as $ch) { 
			$str .= chr($ch); 
		} 
		$status=1;
		if (ord($str[0])==27&&ord($str[1])==76) $status=2;

		$dir=str_replace(array("\r\n", "\r", "\n","/","\\"," "),"",($_POST['dirname']));
		is_dir($dir) or die('上传失败：没有此文件夹');
		$filename = date("ymd").' '.str_replace(array("\r\n", "\r", "\n","/",strrchr($_POST['filename'], '.')," "),'', $_POST['filename']).'.lua';
		$fileurl=dirname(__FILE__).'/'.$dir.'/'.$filename;
		file_put_contents($fileurl,$str);
		
		
		$txt=mysqli_real_escape_string($conn,$_POST['toast']);
		if(mb_strlen($txt)>300) die("上传失败：使用说明，你写的太长了");
		$toast="$txt\n\n";
		
		$f_file_md5=substr(md5_file($fileurl),8,16);
		$f_name_md5=substr(md5($fileurl),8,8);
		$f_size=file_size($fileurl);
		$f_xgtime=date("Y-m-d H:i:s",filemtime($fileurl));
		$f_sctime=date("Y-m-d H:i:s",filectime($fileurl));
		$sql="SELECT * FROM g_file WHERE f_file_md5='$f_file_md5'";//获取id状态
		$result=mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
		if(mysqli_num_rows($result)==0) //未找到同MD5新文件
		{
			$sql="SELECT * FROM g_file WHERE f_name_md5='$f_name_md5'";//获取id状态
			$result=mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
			if(mysqli_num_rows($result)==0) //未找到同MD5，同名文件，新增表
			{
				$sql="INSERT INTO g_file (f_name,f_dir,f_size,f_name_md5,f_file_md5,f_xgtime,f_sctime,f_toast,f_status,f_uid) VALUES('$filename','$dir','$f_size','$f_name_md5','$f_file_md5','$f_xgtime','$f_sctime','$toast','$status','$user')";
				mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
			}else{//不同MD5，同名，更新表
				$sql="update g_file SET f_name='$filename',f_dir='$dir',f_size='$f_size',f_xgtime='$f_xgtime',f_file_md5='$f_file_md5' WHERE f_name_md5='$f_name_md5'";
				mysqli_query($conn,$sql) or die(mysqli_error($conn));
				die("上传成功，已更新脚本");
			}
		}else {//同MD5，文件夹可能不一样，更新文件夹
			$row=mysqli_fetch_array($result);
			$old=$ggdir.'/'.$row['f_dir'].'/'.$row['f_name'];
			if(is_file($old)) @unlink($old);
			$sql="update g_file SET f_name='$filename',f_dir='$dir',f_size='$f_size',f_xgtime='$f_xgtime',f_name_md5='$f_name_md5' WHERE f_file_md5='$f_file_md5'";
			mysqli_query($conn,$sql) or die(mysqli_error($conn));
			die('上传成功，已更新类别');
		}
		die("上传成功");
	}else{//未传入文件 输出页面
		echo "上传失败".$_FILES['file']['error'];die();
	}
}
else if(isset($_GET['up'])) {//输出上传html
	die('在线上传服务暂停，请到云脚本中上传');
}
else{ //输出文件浏览器
	//require 'borwer.php';
	//die();
	die('服务暂停'); 	
}



//----------function----------

function hours($end_time){
    $sec = time() - strtotime($end_time);
	$sec = round($sec/60);
	$hours_min = floor($sec/60);
	if($hours_min>480)$hours_min=480;
	return $hours_min;
}


function indir($luaname){
	$dir_arr=getDir(dirname(__FILE__));
	foreach($dir_arr as $dir){
		if(strpos($luaname,$dir) !== false) return $dir;
	}
	return false;
}