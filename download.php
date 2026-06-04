<?php
if(empty($_GET['file'])) die('ERROR：没有参数，你在试什么！');
$ggdir=dirname(__FILE__);
$fileurl=$ggdir.'/'.$_GET['file'];
is_file($fileurl) or die('文件未找到');
if(in_array($_GET['file'], array('[GG脚本库]在线运行.lua','[GG脚本库]离线最新.lua'))){
	header('content-type:application/octet-stream');  
	header('Content-Transfer-Encoding: binary');
	header('content-disposition:attachment; filename='.basename($fileurl)); 
	echo file_get_contents($fileurl);
	die();
}


require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数
$f_file_md5=substr(md5_file($fileurl),8,16);//filemd5
$sql = "SELECT f_name_md5,f_toast FROM g_file where f_file_md5='$f_file_md5'";
$result=mysqli_query($conn,$sql) or die(mysqli_error($conn)); 
$row = mysqli_fetch_array($result);
if(empty($row['f_name_md5'])) die('ERROR：文件不存在或已删除');
else{
	header('content-type:application/octet-stream');  
	header('content-disposition:attachment; filename='.basename($fileurl)); 
	$lua=file_get_contents($fileurl);
	if(empty($row['f_toast'])) $toast="\n无备注";else $toast=$row['f_toast'];
	$toast="---------备注---------\n".$toast."\n\n";
	$toast=str_replace(array(',',"(1)","end",'"'),"",$toast);
	$toast=str_replace("\n",'\n',$toast);
	echo lua_head($toast).$lua;
	$sql="update g_file SET f_down=f_down+1 WHERE f_file_md5='$f_file_md5'";//下载次数加1
	@mysqli_query($conn,$sql);
	die();
}



function lua_head($alert){
	$txt='----以下内容由GG脚本库自动生成----
if online_ver==nil then
	local lua_alert="'.$alert.'\n—Download By GG脚本库"
	if (lua_alert==nil or lua_alert=="") then lua_alert="获取文件说明失败" end
	local alert=gg.alert(lua_alert,"[我知道了]",nil,"[更多脚本]")
	if alert == 3 then
		local luafile=gg.EXT_CACHE_DIR.."/webrun2.lua"
		local f= io.open(luafile)
		if(f == nil )then
			fe=io.open(luafile,"w")
			fe:write(gg.makeRequest("https://gg.kuaibiji.info/脚本大师V5.lua").content)
			fe:close()
			gg.alert("请重启")
			os.exit()
		else
			f:close()
			dofile(luafile)
		end
		os.exit()
	end
end
----以上内容由GG脚本库自动生成----
';
return $txt;
}