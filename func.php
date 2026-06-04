<?php
function enc($string){
	if(isset($_COOKIE['dec'])) return $string;
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
            if ($file != ".well-known" &&$file != "." && $file != ".."&& $file != ".log"&& $file != "lua"&&!strpos($file,".")&&$file != "_h5ai"&&$file != "app") {
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

function getip() {
  static $ip = '';
  $ip = $_SERVER['REMOTE_ADDR'];
  if(isset($_SERVER['HTTP_CDN_SRC_IP'])) {
    $ip = $_SERVER['HTTP_CDN_SRC_IP'];
  } elseif (isset($_SERVER['HTTP_CLIENT_IP']) && preg_match('/^([0-9]{1,3}\.){3}[0-9]{1,3}$/', $_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
  } elseif(isset($_SERVER['HTTP_X_FORWARDED_FOR']) AND preg_match_all('#\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}#s', $_SERVER['HTTP_X_FORWARDED_FOR'], $matches)) {
    foreach ($matches[0] AS $xip) {
      if (!preg_match('#^(10|172\.16|192\.168)\.#', $xip)) {
        $ip = $xip;
        break;
      }
    }
  }
  return $ip;
}


function get_mtime($startdate,$enddate="now")
{//计算时间差
	$days=floor((strtotime($enddate)-strtotime($startdate))/86400);
	$hours=floor((strtotime($enddate)-strtotime($startdate))%86400/3600);
	$minutes=floor((strtotime($enddate)-strtotime($startdate))%3600/60);
	$seconds=floor((strtotime($enddate)-strtotime($startdate))%60);
	//echo "$days-$hours-$minutes-$seconds";
	// if($days>0){$ec=$days."天".$hours."小时";}
	// else if($hours>0){$ec=$hours."小时".$minutes."分钟";}
	// else if($minutes>0){$ec=$minutes."分钟".$seconds."秒";}
	// else {$ec=$seconds."秒";}
	// return $ec."前保存";
	if($days>365){$ec="一年";}
	else if($days>180){$ec="半年";}
	else if($days>0){$ec=$days."天";}
	else if($hours>0){$ec=$hours."小时";}
	else if($minutes>0){$ec=$minutes."分钟";}
	else {$ec=$seconds."秒";}
	return $ec.'前';
}

function file_size($url) {
		$size=filesize($url);
        $unit=array('b','K','M','G','T','P');
        return @round($size/pow(1024,($i=floor(log($size,1024)))),2).$unit[$i];
}