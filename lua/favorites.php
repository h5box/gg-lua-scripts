<?php
if(empty($user)) die('抱歉您未登录');
if(empty($_POST['favorites'])){
	//select name from staff where dep_id in (select f_name_md5 from g_like where f_uid = '$user');
	$sql = "SELECT * FROM g_file where f_name_md5 in (select f_name_md5 from g_like where f_uid = '$user' )  limit 50";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			$lua_name=mb_substr($row['f_name'],7);
			$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
			$files["{$row['f_name_md5']}"]=$row['f_dir']."·".get_mtime($row['f_xgtime']).':\n【'.$lua_name.'.lua】'.'\n';
		}
	} else {
		die('gg.alert("抱歉，您没有收藏任何脚本")'); 
	}
	$str='run_lua(({';
	$cho='gg.choice({';
	foreach($files as $md5=>$flie){
		 $str.='"'.$md5.'",'; 
		 $cho.='"'.$flie.'",'; 
	}
	$str.='"exit"})['.$cho.'"返回上级"},nil,nil)],2)';
	echo ($str);

	die();//列表
}else{
	$md5=$_POST['favorites'];//insert into  tablename(属性1，属性2) select '值1','值2' from dual where exists (select 1 from tablename where 子句);
	if($_POST['mod']==2){
		$sql="DELETE FROM g_like WHERE f_uid='$user' and f_name_md5='$md5'";
		mysqli_query($conn,$sql) or die(mysqli_error($conn));
		die('已取消收藏');//添加
	}else{
		$sql="INSERT INTO g_like (f_uid,f_name_md5) select '$user','$md5' from dual where not exists (select * from g_like where f_uid='$user' and f_name_md5='$md5')";
		mysqli_query($conn,$sql) or die(mysqli_error($conn));
		die('收藏成功');//添加
	}
}