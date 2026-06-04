<?php
header("Content-type:text/html;charset=utf8");
error_reporting(0);
$ggdir=dirname(__FILE__);
require_once($ggdir.'/conn.php');//连接数据库
require_once($ggdir.'/func.php');//常用函数
if(!empty($_GET['file'])){ //输出脚本
	$luamd5=mysqli_real_escape_string($conn,$_GET['file']);
	$sql = "SELECT f_dir,f_name FROM g_file where f_name_md5='$luamd5'";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		$lua=$ggdir.'/'.$row['f_dir'].'/'.$row['f_name'];
		if(is_file($lua)){
			echo enc(file_get_contents($lua));
			$sql="update g_file SET f_times=f_times+1 WHERE f_name_md5='$luamd5'";//访问次数加1
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
	}else if(!empty($_GET['txt']))
	{//添加备注评论
		require_once 'cc_ban.php';
		$txt=mysqli_real_escape_string($conn,$_GET['txt']);
		if(mb_strlen($txt)>200) die("评论失败：你写的太长了");
		$ip_name='G'.substr(str_replace('.','',getip()),2,6);
		$sql="update g_file SET f_toast=CONCAT_WS('$ip_name:\n',f_toast,'$txt\n\n') WHERE f_name_md5='$luamd5'";//访问次数加1
		@mysqli_query($conn,$sql) or die(mysqli_error($conn));
		die('备注成功');
	}else{
		$sql = "SELECT f_xgtime,f_toast,f_size,f_name,f_times,f_zan,f_cai FROM g_file where f_name_md5='$luamd5'";
		$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
		if (mysqli_num_rows($result) > 0) {
			$row = mysqli_fetch_array($result);
			$lua_name=mb_substr($row['f_name'],7);
			$lua_times=$row['f_times']>99?'99+':$row['f_times'];
			$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
			if(empty($row['f_toast'])) $toast="无评论";else $toast=$row['f_toast'];
			echo '【'.$lua_name."】:\n--------备注/评论--------\n".$toast."\n\n-----------------------"."\n人气".$lua_times.' 赞'.$row['f_zan'].' 踩'.$row['f_cai'].'    大小:'.$row['f_size'];
		}else{
			echo '哦豁，文件没找到';
		}
	}
die();
}
else if(isset($_GET['lua'])){//输出主页lua
	if($_GET['lua']=='upload') die(enc(lua_upload()));
	if($_GET['lua']=='setting') die((lua_setting()));
	$num=0;
	$sql = "SELECT * FROM g_file where f_status=1 order by f_xgtime desc";
	$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			//if(in_array($row['f_dir'], array("奶块脚本",'猫和老鼠','创造与魔法','我功夫特牛','球球作战'))) continue;//跳过文件夹
			if(isset($files["{$row['f_dir']}"])&&count($files["{$row['f_dir']}"])>10) continue;//每个文件夹只显示最新15个文件
			$lua_name=mb_substr($row['f_name'],7);
			$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
			$num++;if($num<16) $files['最新脚本']["{$row['f_name_md5']}"]=$row['f_dir']."·".get_mtime($row['f_xgtime']).':\n【'.$lua_name.'.lua】'.'\n';//最新脚本10个
			$files["{$row['f_dir']}"]["{$row['f_name_md5']}"]="【".$lua_name.'】·'.get_mtime($row['f_xgtime']);
		}
	} else {
		echo "error:0 结果"; 
	}
	
	foreach($files as $dir=>$flie){
		if(count($files["$dir"])<1) unset($files["$dir"]); //隐藏脚本数量小于1的文件夹
	}
	
	$files=array_slice($files,0,21);
	$luas=lua_main($files,$num);
	echo enc($luas);
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
		if(mysqli_num_rows($result)==0) //新文件
		{
			$sql="INSERT INTO g_file (f_name,f_dir,f_size,f_name_md5,f_file_md5,f_xgtime,f_sctime,f_toast) VALUES('$filename','$dir','$f_size','$f_name_md5','$f_file_md5','$f_xgtime','$f_sctime','$toast')";
			mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
		}else die('ERROR:存在相同文件');
		
		die("上传成功，即将重启脚本刷新页面");
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

function enc($string){
	$key=time()-11;
	if($key%60==0) $key+=1;
	$bytes = array(); 
	$str = ''; 
	$bytes[]=$key%60;
	for($i = 0; $i < strlen($string); $i++){ 
		 $bytes[] = (ord($string[$i])+$key%256)%256; 
	}
	foreach($bytes as $ch) { 
		$str .= chr($ch); 
	}
	return $str; 
}

function dec($string){
	$now=time()+60;
	$now=$now%60<=ord($string[0])?$now-60:$now;
	$str = ''; 
	$bytes = array(); 
	$key=(($now- $now%60)+ord($string[0]));
	for($i = 1; $i < strlen($string); $i++){ 
		 $bytes[] = (ord($string[$i])+256-$key%256)%256; 
	}
	foreach($bytes as $ch) { 
		$str .= chr($ch); 
	} 
	return $str; 
}

function lua_main($files,$num){ //lua 主页
	$timesfile='times.txt';
	$times=@file_get_contents($timesfile)+1;
	file_put_contents($timesfile,$times);
	
	$emoji_all="😘❤🐷😱😋😥😡😍😊😁🎉💕💋😡🌹🎶🤞👏😃🎁🎊🎃🏀⚽🎵🏹🗡⚔🔪🔫💣🏅🎖🎮👞🧦🎰🎭";
	$emoji=mb_substr($emoji_all,rand(0,mb_strlen($emoji_all)-1), 1, 'utf-8');//随机表情
	
	$txt='local alert=gg.alert("-------声明-------\n●本次共加载'.$num.'个脚本。\n●所有脚本都是开源的。\n●脚本来自网友上传，仅供学习。\n●本库不对脚本负责，请谨慎执行。\n●这是第'.$times.'次加载。\n\n配置更新：\n首页仅显示前20个活跃度最高的文件夹\n\n\n'.$emoji.$emoji.$emoji.$emoji.$emoji.$emoji.'\n交流群①460915929\n交流群②611467025\n交流群②611467025\n","我知道了",nil,"复制群号")
	if alert == 3 then
		gg.alert("群号已复制")
		gg.copyText("611467025")
		gg.setVisible(false)
	end
	function Main_G()
	local menu = gg.choice({';
	
	
	$a=0;$c=0;
	$ur="http://gg.kuaibiji.info/";
	foreach ($files as $dir=>$file) {
		if($dir=='最新脚本') $txt.='"'.$emoji.$dir.$emoji.'·实时更新",';
		else $txt.='"'.$emoji.$dir.$emoji.'",';
		$a++;$b=0;
		$lua.='function A'.$a."()\n   local menu=({";
		
		foreach ($file as $file_md5=>$file_name) {
			$lua.='"'.$file_md5.'",'; 
		}
		$lua.='"exit"})[gg.choice({';
		foreach ($file as $file_md5=>$file_name) {
			$lua.='"'.$file_name.'",';$c++;
		}
		$lua=substr($lua,0,-1).',"返回上级"}, nil, nil)]'."\n   run_lua(menu)";
		
		
		$lua.="\n   ".'XGCK = -1'."\n"."end\n\n"; //结束
		
	}
	$txt.='"设置·开发中","上传","退出"}, nil, nil)'."\n   ";
	for($i=1;$i<=$a;$i++){
		$txt.='if menu=='.$i.' then A'.$i.'() end'."\n   ";
	}
	
	$txt.='if menu=='.++$a.' then load(curl(url.."?lua=setting"))() end'."\n   ";
	$txt.='if menu=='.++$a.' then load(curl(url.."?lua=upload"))() end'."\n   ";
	$txt.='if menu=='.++$a.' then os.exit() end'."\nend\n\n".$lua;
	
	
	return $txt.'
function uplua()
	gg.alert("网址已复制\n 请打开浏览器上传你的脚本")
	gg.copyText(url.."?up")
	os.exit()
end

function curl(lua_url)
	return dec_str(gg.makeRequest(lua_url).content)
end

function run_lua(md5)
	if md5=="exit" then 
		return Main_G() 
	end
	
	local lua_alert=gg.makeRequest(url.."?toast="..md5).content
	if (lua_alert==nil or lua_alert=="") then lua_alert="获取文件在线说明失败" end
	local alert=gg.alert(lua_alert,"[进入脚本]","[查看源代码]","[添加评论]")
	local lua_name=lua_alert:sub(1,lua_alert:find(":")-1)
	if alert == 1 then
		local cmd=gg.makeRequest(url.."?file="..md5).content
		pcall(load(dec_str(cmd)))
		local logfile = io.open("/storage/emulated/0/Download/.run_lua.log", "r+")
		local logs=logfile:read("*a")
		if string.find(logs,md5) == nil then 
			local pl=gg.prompt({"脚本结束了\n\nGG脚本库希望你能对"..lua_name.."脚本进行评论，让更多人知道此脚本运行的效果(本弹窗在评论一次后不再出现)。\n\n输入评论:"},{""},{"text"})
			if not (pl==nil or pl[1]=="") then
				gg.alert(gg.makeRequest(url.."?toast="..md5.."&txt="..pl[1]).content)
				logfile:write(md5.."\n"..logs)
			end
		end
		logfile:close()
		os.exit()
	end
	
	if alert == 2 then
		local cmd=dec_str(gg.makeRequest(url.."?file="..md5).content)
		local alert_a=gg.alert("--源代码--\n"..cmd,"赞👍","踩👎","保存到本地")
		if (alert_a== 1 or alert_a==2) then
			gg.alert(gg.makeRequest(url.."?toast="..md5.."&set="..alert_a).content)
		end
		if alert_a == 3 then
			local lua_file="/storage/emulated/0/Download/"..lua_name..".lua"
			io.open(lua_file, "w"):write(cmd):close()
			gg.alert("脚本已保存至："..lua_file)
			return gg.setVisible(false)
		end
		return run_lua(md5)
	end
	
	if alert == 3 then
		local km=gg.prompt({lua_alert.."\n\n请输入你的评论:"},{""},{"text"})
		if km==nil then
			return run_lua(md5)
		end
		if (km[1] == "" or km[1]==nil) then 
			gg.alert("备注不能为空")
			return run_lua(md5)
		end
		gg.alert(gg.makeRequest(url.."?toast="..md5.."&txt="..km[1]).content)
		return run_lua(md5)
	end
	
end

while true do
  if gg.isVisible(true) then
	XGCK = 1
	gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
	Main_G()
  end
end
';
}

function lua_upload(){
	$dirlist=getDir('./');
	$toast='上传说明：\n●请上传1M以内的脚本文件\n●请勿上传编译后的脚本';
	$dir_arr="function lua_upload()\nlocal path=cfing()\n".'  local dir_arr={"'.$toast.'\n\n要上传的脚本文件：","作者信息或使用说明(必填)：",';
	$checkbox='  local upload =gg.prompt(dir_arr, {path,"by 无名之辈"}, {"file","text",';
	foreach ($dirlist as $value) {
				$dir_arr.='"'.$value.'",';
				$checkbox.='"checkbox",';
	}
	$dir_arr=substr($dir_arr,0,-1)."}\n";//去除最后一个分号
	$checkbox=substr($checkbox,0,-1);//去除最后一个分号
	$prompt=$dir_arr.$checkbox."})\n";
	
	$run_prompt='
	if upload==nil then 
		return 
	end
	
	cfing(upload[1])
	--判断文件夹是否多选
	local check_dir=nil
	for i, v in pairs(upload) do 
        if v==true then 
			if check_dir==nil then
					check_dir=dir_arr[i]
				else
					gg.alert("错误：单选文件夹，你选那么多干嘛！！")
					return lua_upload()
			end
		end
    end 
	
	--检验使用说明
	if upload[2] == "" then 
		gg.alert("错误：脚本使用说明为必填项目！")
		return lua_upload()
	else
		if ((upload[2]):len()>200) then
			gg.alert("错误：脚本使用说明，字数太长，200字以内！")
			return lua_upload()
		end
		if ((upload[2]):len()<3) then 
			gg.alert("错误：脚本使用说明,字数太短！")
			return lua_upload() 
		end
	end
	local toast=(upload[2]):gsub("&","")

	--验证文件
	local fs = io.open(upload[1],"r")
	if(fs == nil )then
		gg.alert("错误：文件不存在！！")
		return lua_upload()
	else
		local head1=fs:read(1):byte()
		local head2=fs:read(1):byte()
		if (head1==27 and head2==76) then
			gg.alert("错误：请勿上传编译或加密过的脚本！")
			return lua_upload()
		end
		local lua_len = fs:seek("end")
		if lua_len>1024*1024 then
			gg.alert("错误：文件太大，请选择1M以内的文件！")
			return lua_upload()
		end
		
		fs:seek("set")
		local lua_file=fs:read("*a")
		if (lua_file==nil or lua_file=="") then
			gg.alert("错误：读取文件为空，未知原因")
			return lua_upload()
		end
		
		local res = {}
		for i = 1, lua_file:len() do
			res[i] =string.byte(lua_file,i)
		end
		local str_=table.concat(res,",")
		local lua_name=(upload[1]):match("[^/]+$")
		local post="submit=lua&filename="..lua_name.."&dirname="..check_dir.."&toast="..toast.."&file="..str_
		
		gg.alert(gg.makeRequest(url,nil,post).content)
		load(curl(url.."?lua"))()
		os.exit()
	end
	fs:close()
end

function cfing(path)--配置 
	local file_ini=gg.EXT_FILES_DIR.."/G_upload.ini"
	if path~=nil then
		file=io.open(file_ini,"w")
		file:write(path)file:close()
		return nil
	else
		file=io.open(file_ini,"r")
		if file ~= nil then
		  assert(file)
		  path=file:read("*a")
		  file:close()
		  return path
		else
		  return "/storage/emulated/0/"
		end
	end
end
lua_upload()
	';
	return $prompt.$run_prompt;
}

function lua_setting(){
	$ip_name='G'.substr(str_replace('.','',getip()),2,6);
	$dirlist=getDir('./');
	$toast='上传说明：\n●请上传1M以内的脚本文件\n●请勿上传编译后的脚本';
	$dir_arr="function setting()\n"."\n".' local dir_arr={"设置用户名：","勾选首页要显示的类别\n每个类别显示多少脚本：[2; 50]",';
	$check='  local dirs =gg.prompt(dir_arr, {"'.$ip_name.'",10,';
	$checkbox='} , {"text","number",';
	
	foreach ($dirlist as $value) {
				$dir_arr.='"'.$value.'",';
				$checkbox.='"checkbox",';
				$check.='true,';
	}
	$dir_arr=substr($dir_arr,0,-1)."}\n";//去除最后一个分号
	//$dir_arr="'number'}\n";//去除最后一个分号
	$checkbox=substr($checkbox,0,-1);//去除最后一个分号
	$prompt=$dir_arr.$check.$checkbox."})\n".'
	if dirs==nil then 
		return 
	end


	local name=dirs[1]
	if name:len()>22 then 
		gg.alert("用户名太长")
		return setting()
	end
	

	local check_dir=""
	for i, v in pairs(dirs) do 
        if v==true then 
			check_dir=dir_arr[i]..","..check_dir
		end
    end 
	
	gg.alert("抱歉兄弟，我还在开发中")
	--gg.alert(name..check_dir)
	
	end
	setting()';
	return $prompt;
}