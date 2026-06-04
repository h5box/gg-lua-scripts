<?php
$chatfile=$ggdir.'/.log/chat.txt';
if(!empty($_POST['str'])){
	if(empty($user)){
		$username='G'.substr(str_replace('.','',getip()),2,6);
	}else{
		$sql="SELECT * FROM g_user WHERE f_uid='$user'";//获取id状态
		$result=mysqli_query($conn,$sql) or die('ERROR:'.mysqli_error($conn));
		$row = mysqli_fetch_array($result);
		if(!isset($row['f_username'])) $username='G'.substr(str_replace('.','',getip()),2,6);
		else $username=$row['f_username'];
	}
	$str=substr($_POST['str'],0,100);
	$time_his=date("Y-m-d H:i",time());
	if($user==86503436) {
		$time_his=$time_his." [管理员]";
		if($str=="清空") {
			file_put_contents($chatfile,""); //清空记录
			die("已清空");
		}
		$history=@file_get_contents($chatfile)."\r\n\r\n".$time_his."\n".$str;
	}else{
		$history=@file_get_contents($chatfile)."\r\n\r\n".$time_his."\n".$username."：".$str;
		file_put_contents($ggdir."/lua/chat_api.txt",'<b>'.$username."</b>[脚本用户]：\n".$str);
		exec('php -q '.dirname(__FILE__).'/chat_api.php api > /dev/null 2>/dev/null &');
	}
	file_put_contents($chatfile,$history); //写入记录
	echo get_chat($history);
	die();
}
$chat_log=get_chat(@file_get_contents($chatfile));
// $chat_log="asdasd"; 

echo enc('
function G_chat(txt)
	local chat_log=[==['.$chat_log.']==]
	if not (txt==nil) then chat_log=txt end
	local text=gg.prompt({chat_log.."\n------------------\n输入反馈内容"},nil,{"text"}) 
	if text==nil then return end
	if text[1]=="" then 
		gg.alert("请输入文字")
		return G_chat(txt)
	end
	if text[1]=="保存" then 
		local chat=gg.EXT_STORAGE.."/Download/历史记录.txt"
		io.open(chat,"w"):write(chat_log):close()
		gg.alert("历史记录已保存至：\n"..chat)
		return
	end
	local post="str="..(text[1]):gsub("&","%26"):gsub("\r\n","")
	return G_chat(curl(url.."?lua=chat",post))
end
G_chat()
');


function get_chat($str,$maxlg=100)
{//截取指定长度历史记录函数
	$lens=count(explode("\r\n\r\n",$str));
    if($lens<=$maxlg) {
		$len=1;
		$qian=$lens;
	}else {
		$len=$lens-$maxlg;
		$qian=$maxlg;
	}
	return "任何恶意评论都将会被系统自动封设备封IP，这里不欢迎任何喷子\n\n聊天记录(前".$qian."条)：\n".(explode("\r\n\r\n",$str,$len)[$len-1]);
}