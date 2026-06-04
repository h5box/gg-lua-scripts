<?php
$user_ip=getip();
$sql="SELECT * FROM g_user WHERE f_ip='$user_ip' and f_bad=1";//获取ip状态
$result=mysqli_query($conn,$sql) or die('ERROR1:'.mysqli_error($conn));
if(mysqli_num_rows($result)>0) { die(enc('print("你已被封号")')); }//找到这个用户ip bad=1

$luas=mian_dir($luadir);
echo enc($luas);

function mian_dir($luadir){ //lua 主页
	$timesfile='times.txt';
	$times=@file_get_contents($timesfile)+1;
	file_put_contents($timesfile,$times);
	
	$emoji_all="😘❤🐷😱😋😥😡😍😊😁🎉💕💋😡🌹🎶🤞👏😃🎁🎊🎃🏀⚽🎵🏹🗡⚔🔪🔫💣🏅🎖🎮👞🧦🎰🎭";
	$emoji=mb_substr($emoji_all,rand(0,mb_strlen($emoji_all)-1), 1, 'utf-8');//随机表情
	
	return 'local alert=gg.alert(" ------脚本大师_声明------\n●所有脚本来自网友上传，仅供学习。\n●本库不对脚本负责，请谨慎执行。\n●这是第'.$times.'次加载。\n\n云端版本_V1.27  更新：\n●新增用户系统\n●新增查看我的收藏\n●新增查看我的上传\n\n\n'.$emoji.$emoji.$emoji.$emoji.$emoji.$emoji.'\n仅开放Telegram交流群\n","我知道了",nil,"复制群链接")
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
		if not (S.msg==true) then S.msg="" else S.msg="·👁新消息" end
		local main_choise = gg.choice({"'.$emoji.'全部脚本'.$emoji.'·实时更新","'.$emoji.'个人中心'.$emoji.'","'.$emoji.'在线反馈'.$emoji.'"..S.msg,"'.$emoji.'退出程序'.$emoji.'"}, nil, "脚本大师_'.$luadir.'专区 V1.26")
		if main_choise==nil then gg.setVisible(false) XGCK = 2 end
		if main_choise==1 then load(curl(url.."?lua=newlua_dir","dir='.$luadir.'"))() end
		if main_choise==2 then load(curl(url.."?lua=userconf"))() end
		if main_choise==3 then load(curl(url.."?lua=chat"))() end
		if main_choise==4 then os.exit() end
	end

	function curl(lua_url,post)
		if S==nil then S={username="G"..math.random(100000,999999),uid=0} end
		local rep=gg.makeRequest(lua_url,{["Cookie"]= "uid="..S["uid"]},post)
		if not (rep.headers.setuid==nil) then
			S.uid=rep.headers.setuid[1]
			gg.saveVariable(S,file_setting)
		end
		if not (rep.headers.msg==nil) then
			S.msg=true
		else
			S.msg=nil
		end
		return dec_str(rep.content)
	end

	function run_lua(md5)
		if (md5==nil or md5=="exit") then 
			return G_ui() 
		end
		

		local lua_alert=gg.makeRequest(url.."?toast="..md5).content
		if (lua_alert==nil or lua_alert=="") then lua_alert="获取文件在线说明失败" end
		local alert=gg.alert(lua_alert,"[进入脚本]","[查看源代码]","[添加评论]")
		if alert==nil then return G_ui() end
		local lua_name=lua_alert:sub(1,lua_alert:find(":")-1)
		if alert == 1 then
			local cmd=curl(url.."?file="..md5)
			
			pcall(load(cmd))
			local pl=gg.alert(lua_name..":\n<脚本结束了>\n\n 这个脚本怎么样？\n","赞👍","踩👎","添加到收藏")
			if pl==nil then return end
			if ( pl== 1 or  pl==2) then
				gg.toast(curl(url.."?toast="..md5.."&set="..pl),true)
			end
			if pl==3 then gg.alert(curl(url.."?lua=userconf","favorites="..md5)) end
			os.exit()
		end
		
		if alert == 2 then
			local cmd=curl(url.."?file="..md5,"look")
			if(cmd:byte(1)==27) then gg.alert("⚠注意:此脚本已编译⚠","") end
			local alert_a=gg.alert("--源代码--\n"..cmd:sub(1,30400),"赞👍","踩👎","保存到本地")
			if (alert_a== 1 or alert_a==2) then
				gg.alert(curl(url.."?toast="..md5.."&set="..alert_a))
			end
			if alert_a == 3 then
				local lua_file=gg.EXT_STORAGE.."/Download/"..lua_name..".lua"
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
			gg.alert(curl(url.."?toast="..md5.."&txt="..km[1]))
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
		G_main()
	  end
	end
';
}