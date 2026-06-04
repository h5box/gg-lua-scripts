<?php
include "../func.php";
echo enc('
function run_lua(md5)
	if (md5==nil or md5=="exit") then 
		return G_ui() 
	end

	local lua_alert=gg.makeRequest(url.."?toast="..md5).content
	if (lua_alert==nil or lua_alert=="") then lua_alert="获取文件在线说明失败" end
	local alert=gg.alert(lua_alert,"[进入脚本]","[查看源代码]","[添加评论]")
	if alert==0 then return debug.getinfo(3)["func"]() end
	local lua_name=lua_alert:sub(1,lua_alert:find(":")-1)
	if alert == 1 then
		local cmd=curl(url.."?file="..md5)
		local run,err=pcall(load(cmd)) 
		if not(err==nil or err:find("field \'exit\'")) then run_err="似乎出现了以下错误(开发中)：\n"..err.."\n\n" else run_err="" end
		local pl=gg.alert(lua_name..":\n<脚本结束了>\n\n"..run_err.." 这个脚本怎么样？\n","赞👍","踩👎","添加到收藏")
		if pl==nil then return end
		if ( pl== 1 or  pl==2) then
			gg.toast(curl(url.."?toast="..md5.."&set="..pl),true)
		end
		if pl==3 then gg.alert(curl(url.."?lua=userconf","favorites="..md5)) end
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
end');