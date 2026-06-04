<?php
//查询禁止IP
$ip =$_SERVER['REMOTE_ADDR'];
$logdir='/www/wwwroot/gg.kuaibiji.info/.log';cc_mkdirs($logdir);
$fileht=$logdir."/ban_ip.txt";
if(!file_exists($fileht)) file_put_contents($fileht,"");
$filehtarr=@file($fileht);
if(in_array($ip."\r\n",$filehtarr)) die(":"."<br>"."Your IP address are forbided by some reason!");

//加入禁止IP 60秒内大于600次访问
$time=time();
$fileforbid=$logdir."/forbidchk.dat";
if(file_exists($fileforbid))
{
	if($time-filemtime($fileforbid)>60) unlink($fileforbid);
	else{
		$fileforbidarr=@file($fileforbid);
		if($ip==substr($fileforbidarr[0],0,strlen($ip)))
		{
			if($time-substr($fileforbidarr[1],0,strlen($time))>600)unlink($fileforbid);
			elseif($fileforbidarr[2]>600){
				file_put_contents($fileht,$ip."\r\n",FILE_APPEND);unlink($fileforbid);
			}
			else{
				$fileforbidarr[2]++;file_put_contents($fileforbid,$fileforbidarr);
			}
		}
	}
}
//防刷新
$str="";
$file=$logdir."/ipdate.dat";
if(!file_exists($file)) file_put_contents($file,"");
$allowTime = 100;//防刷新时间
$allowNum=1;//防刷新次数
$uri=$_SERVER['REQUEST_URI'];
$checkip=md5($ip);
$checkuri=md5($uri);
$yesno=true;
$ipdate=@file($file);
foreach($ipdate as $k=>$v)
{
	$iptem=substr($v,0,32);
    $uritem=substr($v,32,32);
    $timetem=substr($v,64,10);
    $numtem=substr($v,74);
    if($time-$timetem<$allowTime){
        if($iptem!=$checkip)
			$str.=$v;
        else{
            $yesno=false;
            if($uritem!=$checkuri)
				$str.=$iptem.$checkuri.$time."1\r\n";
            elseif($numtem<$allowNum)
				@$str.=$iptem.$uritem.$timetem.($numtem+1)."\r\n";
            else
            {
                if(!file_exists($fileforbid)){
					$addforbidarr=array($ip."\r\n",time()."\r\n",1);
					file_put_contents($fileforbid,$addforbidarr);
				}
                file_put_contents($logdir."/forbided_ip.log",$ip."--".date("Y-m-d H:i:s",time())."--".$uri."\r\n",FILE_APPEND);
                $timepass=$timetem+$allowTime-$time;
                die("哦豁，你点得太快了，".$timepass."秒后再试！");
            }
        }
    }
}
if($yesno) $str.=$checkip.$checkuri.$time."1\r\n";
file_put_contents($file,$str);

function cc_mkdirs($dir, $mode = 0777)
{//没有发现文件夹则创建文件夹
	if (is_dir($dir) || @mkdir($dir, $mode)) return TRUE;
	if (!cc_mkdirs(dirname($dir), $mode)) return FALSE;
	return @mkdir($dir, $mode);
}
?>