<?php
header("Content-type:text/html;charset=utf8");
die();
$ggdir=dirname(__FILE__);
require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数
$f_resh=rand(111111,999999);  //刷新标记符号
$dirlist=getDir($ggdir); //返回所有文件夹名称数组
$count=0;
foreach ($dirlist as $dirname) {
		$filelist=getFile($ggdir.'/'.$dirname); //返回文件夹下文件名称数组
		foreach ($filelist as $filename) {
			$fileurl=$ggdir.'/'.$dirname.'/'.$filename;
			if(is_file($fileurl)){
				$count++;
				$f_file_md5=substr(md5_file($fileurl),8,16);
				$f_name_md5=substr(md5($fileurl),8,8);
				$f_size=file_size($fileurl);
				$f_xgtime=date("Y-m-d H:i:s",filemtime($fileurl));
				$f_sctime=date("Y-m-d H:i:s",filectime($fileurl));
				$sql="SELECT * FROM g_file WHERE f_name_md5='$f_name_md5'";//获取id状态
				$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
				if(mysqli_num_rows($result)==0) //新文件
				{
					$sql="INSERT INTO g_file (f_name,f_dir,f_size,f_name_md5,f_file_md5,f_xgtime,f_sctime,f_resh) VALUES('$filename','$dirname','$f_size','$f_name_md5','$f_file_md5','$f_xgtime','$f_sctime','$f_resh')";
					mysqli_query($conn,$sql) or die(mysqli_error($conn));
				}
				else //更新文件
				{
					$sql="update g_file SET f_name='$filename',f_dir='$dirname',f_size='$f_size',f_xgtime='$f_xgtime',f_resh='$f_resh',f_file_md5='$f_file_md5' WHERE f_name_md5='$f_name_md5'";
					mysqli_query($conn,$sql) or die(mysqli_error($conn));
				}
			}
		}
}
//删除不存在的文件
$sql="update g_file SET f_status=0 where f_status=1 and f_resh != $f_resh";
mysqli_query($conn,$sql) or die(mysqli_error($conn));
echo '数据库已刷新'.$count.'个脚本';
die();




//----------------------function------------------


