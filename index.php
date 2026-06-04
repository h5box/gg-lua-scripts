<?php
header("Content-type:text/html;charset=utf8");
error_reporting(0);
$ggdir=dirname(__FILE__);
require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数
if(isset($_GET['lua']))
{
echo '
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
	
';
die();
	
}else if(isset($_POST['submit']))
{//上传
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
	}else if($_POST['submit']=="lua"){
		file_put_contents('jb.txt',$_POST['file']);
		die("成功");
	}else{//未传入文件 输出页面
		echo "上传失败".$_FILES['file']['error'];die();
	}
}else if(isset($_GET['up'])) {//输出上传html
	$option='';
	$dirlist=getDir('./');  
	foreach ($dirlist as $value) {
				$option.='			  <option value="'.$value.'">'.$value.'</option>'."\n";
	}
	echo '
		<form method="post"  action="#" id="carform" enctype="multipart/form-data">
		  <input type="file" name="file"/>
			<select name="dirname" form="carform">
			  <option value="其他脚本">选择分类</option>
'.$option.'	</select>
		  <input type="submit" name="submit" value="上传"/>
		</form><p>请选择要上传的GG脚本(.lua后缀)<br><br>上传说明：<br>本站禁止上传加密脚本。<br>脚本名称将会被添加时间前缀，服务器自动重命名<br>暂时无法主动删除，如有需要请加入交流群<br>添加分类请加入交流群611467025</p>
	';
	die();
}else{ //输出文件浏览器
	// require 'borwer.php';
	// die();
	http_response_code(404);	
}



//----------function----------
