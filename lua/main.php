<?php

$user_ip=getip();
$sql="SELECT * FROM g_user WHERE f_ip='$user_ip' and f_bad=1";//获取ip状态
$result=mysqli_query($conn,$sql) or die('ERROR1:'.mysqli_error($conn));
if(mysqli_num_rows($result)>0) { die(enc('print("你已被封号")')); }//找到这个用户ip bad=1


$num=0;
$sql = "SELECT * FROM g_file where f_status=1 or f_status=2 order by f_star desc";
$result=mysqli_query($conn,$sql) or die(mysqli_error($conn));
if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		//if(in_array($row['f_dir'], array("奶块脚本",'猫和老鼠','创造与魔法','我功夫特牛','球球作战'))) continue;//跳过文件夹
		if(isset($files["{$row['f_dir']}"])&&count($files["{$row['f_dir']}"])>20) continue;//每个文件夹只显示最新15个文件
		$lua_name=mb_substr($row['f_name'],7);
		$lua_name = str_replace(array(" ",".lua","(1)",">",'"','【','】'),"",$lua_name);
		$num++;
		//if($num<16) $files['最新脚本']["{$row['f_name_md5']}"]=$row['f_dir']."·".get_mtime($row['f_xgtime']).':\n【'.$lua_name.'.lua】'.'\n';//最新脚本10个
		$files["{$row['f_dir']}"]["{$row['f_name_md5']}"]="【".$lua_name.'】·'.get_mtime($row['f_xgtime']);
	}
} else {
	echo "error:0 结果"; 
}

foreach($files as $dir=>$flie){
	if(count($files["$dir"])<1) unset($files["$dir"]); //隐藏脚本数量小于1的文件夹
}

$files=array_slice($files,0,50);
$luas=lua_main($files,$num);
echo enc($luas);

function lua_main($files,$num){ //lua 主页
	$timesfile='times.txt';
	$times=@file_get_contents($timesfile)+1;
	file_put_contents($timesfile,$times);
	
	$emoji_all="😘❤🐷😱😋😥😡😍😊😁🎉💕💋😡🌹🎶🤞👏😃🎁🎊🎃🏀⚽🎵🏹🗡⚔🔪🔫💣🏅🎖🎮👞🧦🎰🎭";
	$emoji=mb_substr($emoji_all,rand(0,mb_strlen($emoji_all)-1), 1, 'utf-8');//随机表情
	
	$txt='if url==nil then gg.alert("当你看到这句话的时候，说明你正在尝试解密此云脚本。\n\n\n即使你能看到源代码，你也无法通过源代码执行里面的任何功能\n\n\n你可以尝试继续解密，但这不会有任何收获") os.exit() end
	
	local alert=gg.alert("------脚本大师_声明------\n●本次共加载'.$num.'个脚本。\n●脚本来自网友上传，仅供学习。\n●本库不对脚本负责，请谨慎执行。\n●禁止发布恶意脚本或评论\n●这是第'.$times.'次加载。\n\n云端版本_V1.28：\n●新增脚本评分\n●新增取消收藏\n\n\n'.$emoji.$emoji.$emoji.$emoji.$emoji.$emoji.'\n仅开放Telegram交流群\n\n","我知道了",nil,"复制群链接")
	if alert == 3 then
		gg.alert("Telegram群链接已复制")
		gg.copyText("https://t.me/ggcode")
		gg.setVisible(false)
	end

	file_setting=gg.EXT_FILES_DIR.."/userconf.lua"
	local file=io.open(file_setting,"r")
	if file==nil then S={username="G"..math.random(100000,999999),uid=0} else 
		file:close() 
		S = assert(loadfile(file_setting))()
		local type_uid=type(S.uid)
		if not (type_uid=="number" ) then 
			gg.alert("登录失效")
			if S==nil then S={} end
			S.username="G"..math.random(100000,999999)
			S.uid=0
			gg.saveVariable(S,file_setting)
		end
	end

	function G_main()
		G_ui=G_main
		local main_choise = gg.choice({"'.$emoji.'最新脚本'.$emoji.'·实时更新","'.$emoji.'全部脚本'.$emoji.'","'.$emoji.'其他发布'.$emoji.'·开发中","'.$emoji.'个人中心'.$emoji.'","'.$emoji.'交流中心'.$emoji.'","'.$emoji.'退出程序'.$emoji.'"}, nil, "")
		if main_choise==nil then gg.setVisible(false) XGCK = 2 end
		if main_choise==1 then load(curl(url.."?lua=newlua"))() end
		if main_choise==2 then lua_all() end
		if main_choise==3 then gg.alert("开发中，此处会放各种拦截下载") end
		if main_choise==4 then load(curl(url.."?lua=userconf"))() end
		if main_choise==5 then load(curl(url.."?lua=chat"))() end
		if main_choise==6 then os.exit() end
	end



	function lua_all()
	G_ui=lua_all
	local menu = gg.choice({';
	
	
	$a=0;$c=0;
	$ur="http://gg.kuaibiji.info/";
	foreach ($files as $dir=>$file) {
		if($dir=='最新脚本') $txt.='"'.$emoji.$dir.$emoji.'·实时更新",';
		else $txt.='"'.$emoji.$dir.$emoji.'",';
		$a++;$b=0;
		$lua.='function G_A'.$a."()\n   run_lua(({";
		
		foreach ($file as $file_md5=>$file_name) {
			$lua.='"'.$file_md5.'",'; 
		}
		$lua.='"exit"})[gg.choice({';
		foreach ($file as $file_md5=>$file_name) {
			$lua.='"'.$file_name.'",';$c++;
		}
		$lua=substr($lua,0,-1).',"返回上级"}, nil, nil)])';
		
		
		$lua.="\n   ".'XGCK = -1'."\n"."end\n\n"; //结束
		
	}
	$txt.='"返回主页"}, nil, nil)'."\n   ";
	for($i=1;$i<=$a;$i++){
		$txt.='if menu=='.$i.' then G_A'.$i.'() end'."\n   ";
	}
	
	$txt.='if menu=='.++$a.' then G_main() end'."\nend\n\n".$lua;
	
	
	return $txt.'

function curl(lua_url,post)
	if S==nil then S={username="G"..math.random(100000,999999),uid=0} end
	local rep=gg.makeRequest(lua_url,{["Cookie"]= "uid="..S["uid"]},post)
	if not (rep.headers.setuid==nil) then
		S.uid=rep.headers.setuid[1]
		gg.saveVariable(S,file_setting)
	end
	return dec_str(rep.content)
end

function gg.playMusic()
	print("脚本大师提示：当前修改器不支持播放音乐")
end



function run_lua(md5,mod)
	if mod==nil then mod=0 end
	if (md5==nil or md5=="exit") then 
		return G_ui() 
	end
	

	local lua_alert=gg.makeRequest(url.."?toast="..md5).content
	if (lua_alert==nil or lua_alert=="") then lua_alert="获取文件在线说明失败" end
	local but3="[添加收藏]"
	if mod==2 then but3="[×取消收藏×]" end
	local alert=gg.alert(lua_alert,"[进入脚本]","[查看源代码]",but3)
	if alert==0 then return debug.getinfo(3)["func"]() end
	local lua_name=lua_alert:sub(1,lua_alert:find(":")-1)
	if alert == 1 then
		local cmd=curl(url.."?file="..md5)
		local run,err=pcall(load(cmd)) 
		if not(err==nil or err:find("field \'exit\'")) then run_err="似乎出现了以下错误(开发中)：\n"..err.."\n\n" else run_err="" end
		local pl=gg.alert(lua_name..":\n<脚本结束了>\n\n"..run_err.." 这个脚本怎么样？\n","赞👍","踩👎","添加评论")
		if pl==nil then return end
		if ( pl== 1 or  pl==2) then
			gg.toast(curl(url.."?toast="..md5.."&set="..pl),true)
		end
		if pl==3 then 
			local km=gg.prompt({lua_alert.."\n\n请输入你的评论:"},{""},{"text"})
			if km==nil then
				return run_lua(md5)
			end
			if (km[1] == "" or km[1]==nil) then 
				gg.toast("备注不能为空",true)
			else
				gg.toast(curl(url.."?toast="..md5.."&txt="..km[1]),true)
			end
		end
		XGCK = -1
		return
	end
	
	if alert == 2 then
		local cmd=curl(url.."?file="..md5,"look")
		if(cmd:byte(1)==27) then gg.alert("⚠注意:此脚本已编译⚠","") end
		local alert_a=gg.alert("--源代码--\n"..cmd:sub(1,50400),"赞👍","踩👎","保存到本地")
		if (alert_a== 1 or alert_a==2) then
			gg.alert(curl(url.."?toast="..md5.."&set="..alert_a))
		end
		if alert_a == 3 then
			if S.uid==0 then 
				gg.alert("请先登录，首页>个人中心")
				return run_lua(md5)
			end
			local lua_file="/storage/emulated/0/Download/"..lua_name..".lua"
			io.open(lua_file, "w"):write(cmd):close()
			gg.alert("脚本已保存至："..lua_file)
			return gg.setVisible(false)
		end
		return run_lua(md5)
	end
	
	if alert == 3 then 
		gg.alert(curl(url.."?lua=userconf","mod="..mod.."&favorites="..md5)) 
	end
	
end

while true do
  if gg.isVisible(true) then
	XGCK = 1
	gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
	G_main()
  end
end
';
}