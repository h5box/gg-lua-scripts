<?php
//sleep(2);

if(!empty($_POST['msg'])){
    $msg=$_POST['msg'];
    $chatfile=dirname(dirname(__FILE__))."/.log/chat.txt";
    $time_his=date("Y-m-d H:i",time());
    $history=@file_get_contents($chatfile)."\r\n\r\n".$time_his." [Telegram]\n".$msg;
    file_put_contents($chatfile,$history); //写入记录
    die('ok');
}else if(empty($argv[1]))die('404');



$txt=file_get_contents(dirname(__FILE__)."/chat_api.txt");
post("https://bot.kfrp.cc/ggcode/chat.php",array("msg"=>$txt));
//file_put_contents("chat_api.txt","");

exit;
function post($url,$post)
{
        $curl = curl_init(); // 启动一个CURL会话
         $headers = array(
             'Accept: */*',
             'Content-Type: application/x-www-form-urlencoded; charset=UTF-8',
        );
        curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); // 对认证证书来源的检查
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 1); // 从证书中检查SSL加密算法是否存在
        curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'); // 模拟用户使用的浏览器
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); // 使用自动跳转
        curl_setopt($curl, CURLOPT_AUTOREFERER, 1); // 自动设置Referer
        curl_setopt($curl, CURLOPT_POST, 1); // 发送一个常规的Post请求
        curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($post)); // Post提交的数据包
        curl_setopt($curl, CURLOPT_TIMEOUT, 30); // 设置超时限制防止死循环
        curl_setopt($curl, CURLOPT_HEADER, 0); // 显示返回的Header区域内容
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); // 获取的信息以文件流的形式返回
        $res = curl_exec($curl); // 执行操作
        if (curl_errno($curl)) {
            echo 'Errno'.curl_error($curl);//捕抓异常
        }
        curl_close($curl); // 关闭CURL会话
		file_put_contents('send.json',$res);
        return $res; // 返回数据，json格式
 
}