<?php
$luamd5=mysqli_real_escape_string($conn,$_GET['toast']);
if(isset($_GET['set'])&&is_numeric($_GET['set']))
{//点赞或踩
	require_once 'cc_ban.php';
	if($_GET['set']==1){
		$sql="update g_file SET f_zan=f_zan+1 WHERE f_name_md5='$luamd5'";//访问次数加1
		@mysqli_query($conn,$sql) or die('点赞失败');
		die('点赞成功');
	}
	else if($_GET['set']==2){
		$sql="update g_file SET f_cai=f_cai+1 WHERE f_name_md5='$luamd5'";//访问次数加1
		@mysqli_query($conn,$sql) or die('踩一脚失败');
		die('踩一脚成功');
	}
	die('失败：哦豁，你可能提交了一个假值');
}
else if(!empty($_GET['txt'])){//添加备注评论
	if(empty($user)){
			$username='G'.substr(str_replace('.','',getip()),2,6);
	}else{
		$sql="SELECT * FROM g_user WHERE f_uid='$user'";//获取id状态
		$result=mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
		$row = mysqli_fetch_array($result);
		if(!isset($row['f_username'])) $username='G'.substr(str_replace('.','',getip()),2,6);
		else $username=$row['f_username'];
	}

	require_once 'cc_ban.php';
	$txt=mysqli_real_escape_string($conn,$_GET['txt']);
	if(mb_strlen($txt)>200) die("评论失败：你写的太长了");
	$sql="update g_file SET f_toast=CONCAT_WS('$username:\n',f_toast,'$txt\n\n') WHERE f_name_md5='$luamd5'";//访问次数加1
	@mysqli_query($conn,$sql) or die(mysqli_error($conn));
	die('备注成功');
}else{//获取备注
	$sql = "SELECT f_xgtime,f_toast,f_size,f_name,f_times,f_star,f_zan,f_cai FROM g_file where f_name_md5='$luamd5'";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		$lua_name=mb_substr($row['f_name'],7);
		$lua_times=$row['f_times']>99?'99+':$row['f_times'];
		$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
		$mark=$row['f_star'];
		if(empty($row['f_toast'])) $toast="无评论";else $toast=$row['f_toast'];
		echo '【'.$lua_name."】:\n--------备注/评论--------\n".$toast."\n\n-----------------------"."\n人气".$lua_times.' 赞'.$row['f_zan'].' 踩'.$row['f_cai'].' 评分'.$mark.'  '.$row['f_size'];
	}else{
		echo '哦豁，文件没找到';
	}
}
die();