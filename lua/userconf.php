<?php
//die("print(".$_COOKIE["uid"].")");
if(isset($_POST['username'])&&isset($_POST['password'])){//注册登录
	if(empty($_POST['username'])||empty($_POST['password'])) die("用户名或密码不能为空");
    $username = preg_match('/^[A-Za-z0-9_\x{4e00}-\x{9fa5}]+$/u',$_POST['username']);
    if(!$username) { die("用户名由2-16位数字或字母、汉字、下划线组成！");}
	$username=mysqli_real_escape_string($conn,$_POST['username']);
	$password=mysqli_real_escape_string($conn,$_POST['password']);
	$user_ip=getip();
	$sql="SELECT * FROM g_user WHERE f_username='$username'";//获取id状态
	$result=mysqli_query($conn,$sql) or die('ERROR1:'.mysqli_error($conn));
	if(mysqli_num_rows($result)==0) //没有找到这个用户username
	{
		$user=rand(11111111,99999999);
		$sql="INSERT INTO g_user (f_username,f_password,f_uid) VALUES('$username','$password','$user')";
		mysqli_query($conn,$sql) or die('ERROR2:'.mysqli_error($conn));
		
	}else{//找到这个用户username
		$row = mysqli_fetch_array($result);
		if($row['f_password']==$password){
			$user=$row['f_uid'];
		}
		else{
			die('密码错误');
		}
	}

	if(empty($user)) die('服务器出错');
	die('success:'.$user);
}else if(isset($_POST['favorites'])){//我的收藏
	require $ggdir.'/lua/favorites.php';
	die();
}else if(isset($_POST['mylua'])){//我的发布
	require $ggdir.'/lua/mylua.php';
	die();
}else if(isset($_POST['kami'])){//我的发布
	echo '开发中'.$_POST['kami'];
	die();
}

//个人中心

$str_login='
function login()
	local input=gg.prompt({"用户名(允许中文)：","密码:","用户注册","用户登录"},{[3]=true},{"text","text","checkbox","checkbox"})  
	if input==nil then return end
	if input[1]=="" or #(input[1])<3 then gg.alert("失败：用户名太短") return login() end
	if input[2]=="" or #(input[2])<3 then gg.alert("失败：密码太短") return login() end
	local post="username="..input[1].."&password="..input[2]
	local resp=curl(url.."?lua=userconf",post)
	if resp:find("success") then
		gg.alert("登录成功")
		if S==nil then S={} end
		S.username=input[1]
		S.uid=resp:sub(9,17)
		gg.saveVariable(S,file_setting)
	else
		gg.alert("登录失败："..resp)
	end
end

login()
';



$sql="SELECT * FROM g_user WHERE f_uid='$user'";//获取id状态
$result=mysqli_query($conn,$sql) or die('ERROR1:'.mysqli_error($conn));
$row = mysqli_fetch_array($result);
if(empty($row['f_status'])||$row['f_status']==2) //新用户
{
	echo enc($str_login);
	die();
}else{
	// 成为会员+99999999
	// 会员说明:
	// 会员期间无限积分
	// 捐赠2元，即可获得会员
$str='
function G_jifen()
	local ale=gg.alert([[获取积分:
	‌每日签到+5~20
	‌评论任何脚本+3
	‌赞踩任何脚本+2
	‌发布任何脚本+10
	‌发布的脚本获赞+5
	‌反馈意见被采纳+100
	
	]],"成为会员",nil,"输入兑换码")

	if ale==0 then return userconf() end
	if ale==1 then gg.copyText("http://yukala.com/jhgbwh") gg.alert("已复制链接，请打开浏览器操作") XGCK = -1 end
	if ale==3 then 
		local input=gg.prompt({"请输入兑换码："},nil,{"text"})  
		if input==nil then return G_jifen() end
		if input[1]=="" or #(input[1])<15 then gg.alert("兑换码错误") return G_jifen() end
		local post="kami="..input[1]
		local resp=curl(url.."?lua=userconf",post)
		if resp==nil then gg.alert("网络连接失败") return G_jifen() end
		gg.alert(resp)
		return userconf()
	end
end

function userconf()
	G_ui=userconf
	if S.uid==0 then return end
	local conf_choise = gg.choice({"积分说明·开发中","我的收藏","我的发布","发布脚本"}, nil, S.username.." 的个人中心 我的积分:'.$row['f_mark'].'")
	if conf_choise==nil then return end
	if conf_choise==1 then gg.alert("开发中") return userconf() end
	if conf_choise==2 then load(curl(url.."?lua=userconf","favorites"))() end
	if conf_choise==3 then load(curl(url.."?lua=userconf","mylua"))() end
	if conf_choise==4 then load(curl(url.."?lua=upload"))() end
end
userconf()
';
echo enc($str);
}