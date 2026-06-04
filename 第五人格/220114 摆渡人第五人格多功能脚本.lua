--可以改善的地方还有很多。
-- by:摆渡人(ｏ ‵-′)ノ”(ノ﹏<。)
--QQ:2987317594
--加载网络库
gg.alert("摆渡人12.27外部群专属脚本", "\n\n⇨复制摆渡人外部群号码⇦")
gg.copyText("709225222")
gg.toast("摆渡人群号码复制成功\n\n\n")
pcall(load(gg.makeRequest('http://zzerx.cn/gameguardian/library.php',nil,'v=2.2').content))


function ze()

Menu = gg.choice({
'人物透视☸',
'人物上色①',
'人物上色②', 
'求生者穿墙',
'开启除雾', 
'退出脚本'	},xuan)


if Menu == 1 then 
    zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '515D;0;1::9_F|0_F',
['获取结果'] = 9999,
['修改数据'] = '1_F',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('透视开启成功')
xuan=1 ze()

end 
if Menu == 2 then  
    zsearch{
['内存范围'] = 'B',
['搜索改善'] = '99D;100D;1.5;1;2;3;10;-3::140_F|1_F',
['获取结果'] = 99,
['修改数据'] = '-999_F',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('上色开启成功')
xuan=2 ze()

end 
if Menu == 3 then  
zsearch{
['内存范围'] = 'B',
['搜索改善'] = '2D;1;1;1;-257D::17_F|1_F',
['获取结果'] = 10,
['修改数据'] = '8_F',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('上色开启成功')
xuan=3 ze()

end 
if Menu == 4 then  
    zsearch{
['内存范围'] = 'Ca',
['搜索改善'] = '8_E|8_E',
['获取结果'] = 9999,
['修改数据'] = '999_E',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('求生者穿墙开启成功')
xuan=4 ze()

end 
if Menu == 5 then  
    zsearch{
['内存范围'] = 'Jh|Ch|Ca|Cd|Cb|PS|A',
['搜索改善'] = '-11,376W;0.0078125E;1;1;1;1;1029W::_F|1_F',
['获取结果'] = 10,
['修改数据'] = '999_F',
['清理结果'] = 2,
['冻结数据'] = false,
['保存结果'] = false,
['输出日志'] = false
}
gg.toast('除雾开启成功')
xuan=5 ze()

end 
if Menu == 6 then os.exit() end
end

ze()

