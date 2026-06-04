<?php
if(isset($_GET['lua'])){
$lua=echodir(dirname(__FILE__)).'
function uplua()
gg.alert("网址已复制\nhttp://gg.kuaibiji.info/?up \n 请打开浏览器上传你的脚本")
gg.copyText("http://gg.kuaibiji.info/?up")
os.exit()
end

function runlua(url)
--每次先检查源码，后运行脚本。保证运行安全
	local cmd=gg.makeRequest(url).content
	local alert=gg.alert("--请检查源代码--\n"..cmd,"运行此脚本","取消","举报") 
	if alert == 2 then 
		Main()
		return 0 
	end
	if alert == 3 then 
		km=gg.prompt({"请输入举报原因"},{""},{"text"})
		if km == nil then 
		   gg.alert("请输入举报原因")
		end
		gg.alert(gg.makeRequest("http://gg.kuaibiji.info/?jb=["..url.."] 举报原因："..km[1]).content)
		return 0 
	end
	pcall(load(cmd))
end 

while true do
  if gg.isVisible(true) then
	XGCK = 1
	gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
	Main()
  end
end
';
echo $lua;
$lua='--注意：这是GG脚本在线库生成的脚本，生成时间为'.date("Y-m-d h:i:sa")."，它不会自动更新，最新版请到http://gg.kuaibiji.info/下载\n\n".$lua;
file_put_contents('[GG脚本库]离线最新.lua',$lua);
die();
}
else if(isset($_GET['jb']))
{
	file_put_contents('jb.txt',@file_get_contents('jb.txt')."\n".$_GET['jb']);
	echo '举报成功';
	die();
}else if(isset($_POST['submit']))
{//上传
	if(!empty($_FILES["upfile"])&&!($_FILES["upfile"]["error"] > 0))//已传入文件
	{
		
		$file = fopen($_FILES["upfile"]["tmp_name"], "rb");
		$bin = fread($file, 2); //只读2字节
		fclose($file);
		$strInfo = @unpack("C2chars", $bin);
		$typeCode = intval($strInfo['chars1'].$strInfo['chars2']);
		if($typeCode==2776) die('当前脚本存在安全隐患：加密的脚本');
		
		if(empty($_POST['dirname'])) die('ERROR 01');
		if(!(strtolower(substr(strrchr($_FILES["upfile"]["name"], '.'), 1))=="lua")) die('文件格式不对，仅支持.lua');
		$dir=dirname(__FILE__).'/'.str_replace(array("\r\n", "\r", "\n","/"," "),"",($_POST['dirname']));mkdirs($dir);
		$file=$dir.'/'.date("ymd").' '.str_replace(array("\r\n", "\r", "\n","/",".lua"," "),"",$_FILES["upfile"]["name"]).'.lua';                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
		move_uploaded_file($_FILES["upfile"]["tmp_name"],$file);
		echo '上传成功';
		die();
	}else{//未传入文件 输出页面
		echo "上传失败".$_FILES['upfile']['error'];
	}
}else if(isset($_GET['up'])) {//输出上传html
	$option='';
	$dirlist=getDir('./');
	foreach ($dirlist as $value) {
				$option.='			  <option value="'.$value.'">'.$value.'</option>'."\n";
	}
	echo '
		<form method="post"  action="#" id="carform" enctype="multipart/form-data">
		  <input type="file" name="upfile"/>
			<select name="dirname" form="carform">
			  <option value="其他脚本">选择分类</option>
'.$option.'	</select>
		  <input type="submit" name="submit" value="上传"/>
		</form><p>请选择要上传的GG脚本(.lua后缀)<br>本站禁止上传加密脚本。<br>添加分类请联系作者QQ413316602</p>
	';
	
}else{ //输出文件浏览器
	require 'borwer.php';die(); 	
}

function echodir($dir){ //lua 主页
	$timesfile='times.txt';
	$times=@file_get_contents($timesfile)+1;
	file_put_contents($timesfile,$times);
	$dirlist=getDir($dir);
	$txt='function Main()'."\n   ".'menu = gg.choice({';$a=0;$c=0;
	$ur="http://gg.kuaibiji.info/";
	foreach ($dirlist as $value1) {
		$txt.='"--'.$value1.'--",';
		$a++;$b=0;
		$lua.='function A'.$a."()\n   menu= gg.choice({ ";
		$filelist=getFile($dir.'/'.$value1);
		
		foreach ($filelist as $value2) {
			$lua.='"'.$value2.'",';$c++;
		}
		$lua=substr($lua,0,-1).',"返回上级"}, nil, nil)'."\n   ";
		
		foreach ($filelist as $value2) {
			$lua.='if menu=='.++$b.' then runlua("'.$ur.$value1.'/'.$value2.'") end'."\n   ";
		}
		$lua.='if menu=='.++$b.' then Main() end'."\n   ";
		$lua.='XGCK = -1'."\n"."end\n\n"; 
		
	}
	$txt.='"上传脚本","退出脚本"}, nil, "这是一个GG脚本的在线库，所有脚本都是开源的，服务器已初步过滤加密和存在安全隐患的脚本，但为确保运行网络脚本的安全性，所有脚本在执行前仍会弹出检查源代码提醒。服务器当前共保存'.$c.'个脚本,这是第'.$times.'次加载\nby QQ413316602 整理 交流群460915929")'."\n   ";
	for($i=1;$i<=$a;$i++){
		$txt.='if menu=='.$i.' then A'.$i.'() end'."\n   ";
	}
	
	$txt.='if menu=='.++$a.' then uplua() end'."\n   ";
	$txt.='if menu=='.++$a.' then os.exit() end'."\nend\n\n".$lua;
	
	
	return $txt;
}


function mkdirs($dir, $mode = 0777){//没有发现文件夹则创建文件夹
	if (is_dir($dir) || @mkdir($dir, $mode)) return TRUE;
	if (!mkdirs(dirname($dir), $mode)) return FALSE;
	return @mkdir($dir, $mode);
}

//获取文件夹列表
function getDir($dir) {
    $dirArray[]=NULL;
    if (false != ($handle = opendir ( $dir ))) {
        $i=0;
        while ( false !== ($file = readdir ( $handle )) ) {
            //去掉"“.”、“..”以及带“.xxx”后缀的文件
            if ($file != "." && $file != ".."&&!strpos($file,".")&&$file != "_h5ai"&&$file != "app") {
                $dirArray[$i]=$file;
                $i++;
            }
        }
        //关闭句柄
        closedir ( $handle );
    }
	array_multisort($dirArray);
    return $dirArray;
}
  
//获取文件列表
function getFile($dir) {
    $fileArray[]=NULL;
	if(!is_dir($dir)) return false;
    if (false != ($handle = opendir ( $dir ))) {
        $i=0;
        while ( false !== ($file = readdir ( $handle )) ) {
            //去掉"“.”、“..”以及带“.xxx”后缀的文件
            if ($file != "." && $file != ".."&&strpos($file,".")) {
                $fileArray[$i]=$file;
                if($i==100){
                    break;
                }
                $i++;
            }
        }
        //关闭句柄
        closedir ( $handle );
    }
	array_multisort($fileArray,SORT_DESC);
    return $fileArray;
}