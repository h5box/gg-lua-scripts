<?php
header("Content-type:text/html;charset=utf8");
// error_reporting(0);
require_once($ggdir.'../conn.php');//连接数据库
require_once($ggdir.'../func.php');//常用函数


$sql_times=mysqli_query($conn,"select sum(f_times)/count(Id) from g_file") or die(mysqli_error($conn));
$times = mysqli_fetch_array($sql_times)[0]; //平均人气

// $sql_likes=mysqli_query($conn,"select count(Id) from g_like") or die(mysqli_error($conn));
// $likes = mysqli_fetch_array($sql_times)[0]; //总收藏

$sql = "SELECT f_name_md5 FROM g_file";
$res=mysqli_query($conn,$sql) or die(mysqli_error($conn));
if (mysqli_num_rows($res) > 0) {
	while($luamd5 = mysqli_fetch_assoc($res)) {
		$result2=mysqli_query($conn,"SELECT f_dir,f_name,f_xgtime,f_times,f_zan,f_cai FROM g_file where f_name_md5='{$luamd5['f_name_md5']}'") or die(mysqli_error($conn));
		if (mysqli_num_rows($result2) > 0) {
			$row = mysqli_fetch_array($result2);
			$lua=$ggdir.'/'.$row['f_dir'].'/'.$row['f_name'];
			$mark_3=$row['f_times']/$times>1?1:$row['f_times']/$times;
			$mark_4=7-hours($row['f_xgtime'])*0.01667; 
			$mod_mark=((10-$mark_4)/3);
			$mark=round(($row['f_zan']*1.2-$row['f_cai']+0.01)*$mod_mark/($row['f_zan']+$row['f_cai']+0.01)+($row['f_zan']+$row['f_cai']*1.2)*$mod_mark/($row['f_times']+1)+$mark_3*$mod_mark+$mark_4,1);
			$mark=$mark<1?1:$mark;
			$sql="update g_file SET f_star='$mark' WHERE f_name_md5='{$luamd5['f_name_md5']}'";//访问次数加1
			mysqli_query($conn,$sql);
		}
		else{
			echo $luamd5['f_name_md5'].'文件不存在<br>';
		}
	}
} else {
	echo "error:0"; 
}

echo '已刷新全部评分';
function hours($end_time){
    $sec = time() - strtotime($end_time);
	$sec = round($sec/60);
	$hours_min = floor($sec/60);
	if($hours_min>480)$hours_min=480;
	return $hours_min;
}