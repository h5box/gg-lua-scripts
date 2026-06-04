<?php
echo lua_setting();
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