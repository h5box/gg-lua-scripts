<?php
echo lua_upload();
function lua_upload(){
	$dirlist=getDir('./');
	$toast='上传说明：\n●请上传1M以内的脚本文件\n●该脚本必须有退出入口\n●禁止上传恶意脚本\n●禁止上传带有密码的脚本';//●发布同名脚本即可更新脚本内容
	$lua_head="function lua_upload()\n    local path=cfing()\n".'    local upload =gg.prompt({"'.$toast.'\n\n要上传的脚本文件：","作者信息或使用说明(必填)："}, {path,"by "..S.username}, {"file","text"})'."\n";
	$dir_arr='    local dir_arr={"请选择脚本分类",';
	foreach ($dirlist as $value) {
		$dir_arr.='"'.$value.'",';
	}
	$dir_arr=substr($dir_arr,0,-1)."}\n";//去除最后一个分号
	$prompt=$lua_head.$dir_arr;
	
	$run_prompt='
	if upload==nil then 
		return 
	end
	
	cfing(upload[1])

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
		local luac,err=loadfile(upload[1])
		if luac==nil then 
			gg.alert("编译失败，请检查源代码：\n"..err)
			fs:close()
			return lua_upload()
		end

		local check_dir=dir_arr[(gg.choice(dir_arr,1,"上传到脚本类别："))]
		if check_dir=="请选择脚本分类" then 
			gg.alert("请选择脚本类别")
			return lua_upload()
		end 

		if check_dir==nil then 
			fs:close()
			return 
		end

		local lua_len = fs:seek("end")
		if lua_len>1024*1024 then
			gg.alert("错误：文件太大，请选择1M以内的文件！")
			fs:close()
			return lua_upload()
		end
		
		fs:seek("set")
		local lua_file=fs:read("*a")
		if (lua_file==nil or lua_file=="") then
			gg.alert("错误：读取文件为空，未知原因")
			fs:close()
			return lua_upload()
		end
		
		
		
		local res = {}
		for i = 1, lua_file:len() do
			res[i] =string.byte(lua_file,i)
		end
		local str_=table.concat(res,",")
		local lua_name=(upload[1]):match("[^/]+$")
		local post="submit=lua&filename="..lua_name.."&dirname="..check_dir.."&toast="..toast.."&file="..str_
		
		gg.alert(curl(url,post))
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
		  return gg.EXT_STORAGE.."/"
		end
	end
end
lua_upload()
	';
	return $prompt.$run_prompt;
}