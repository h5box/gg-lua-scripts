function SHCF()
gg.alert("脚本执行中请勿触碰悬浮窗图标")
os.exit()
SHCF()
end
dog=0
CS=1 --容忍次数，0则立刻送机票
function SH_searchNumber(n,type,ft,sign,r,s)
gg.setVisible(false) 
gg.searchNumber(n,type,ft,sign,r,s)
if gg.isVisible(true) then
dog=1
gg.setVisible(false) 
end 
if dog > 0 then
gg.toast('警告！\n请勿窥码，后果自负！')
dog = 0
CS=CS-1
end
if CS < 0 then
SHCF()
end
end
gg.alert("所有功能必须按照名称后面括号里开始方式开启，否则功能开启不成功或游戏崩溃，功能不要重复开启会导致封号或游戏崩溃")
function HOME()
SNY1 = gg.multiChoice({

"🌿防封🌱🌿[必开]",
"🌿千米雷达[大厅]🤪[大号]",
"🌿全枪无后[大厅，进游戏无效果请开备用]🌱[大号]",
"🌿备用无后[落地]🌱🌱🌱",
"🌿开镜无后[大厅]🧐[大号][5.56]",
"🌿开镜无后[大厅]🤩[大号][7.62]",
"🌿飞行加速A[大厅]🤑[大号，进游戏无效果请开B]",
"🌿飞行加速B[大厅]😏[大号]",
"🌿锁油[上车]😳[小/号]",
"🌿五车加速[上车]🤫[小号]",
"🌿子弹全穿1[大厅]😞[可开车]",
"🌿全穿1恢复🌿",
"🌿子弹全穿2[大厅]😊[不可开车]",
"🌿全穿2恢复🌿",
"🌿子弹全穿3[大厅]😞[可开车]",
"🌿全穿3恢复🌿",
"🌿全图除草[落地]😟[小号]",
"🌿实体变大[大厅]😠[小号]",
"🌿爬墙爬树[落地]😡[小号]",
"🌿人物穿墙[落地]😨[小号]",
"🌿秒换弹药[落地]😱[小号]",
"🌿拾取扩大[落地]🤤[小号]",
"🌿开枪加速[落地]😡[小号]",
"🌿持枪加速[落地]🤥[小号]",
"🌿零秒打药[落地]🤒[小号]",
"🌿人物天线[必须出生岛开启]😒[小号]",
"🌿人称路飞[大厅开]😇[小号]",
"🌿人物微跳[落地]😒[小号]",
"🌱无限手雷[待更新]😚[小号]",
"🌱手雷秒炸[🌿🌿]😛]小号]",
"🌿通用透视1[靶场]😊[大/小/号/可用]",
"🌿通用透视2[靶场]😒[大/小/号/可用]",
"🌿近身透视[靶场]🤭[大/小/号/可用]",
"🌿845透视[靶场]😒[大/小/号/可用]",
"🌿835透视[靶场]🤒[大/小/号/可用]",
"🌿等待添加[落地]🤒[]",
"🌿等待添加[落地]🤒[]",
"🌿地面透视[靶场]😰[小号]",
"🌿M4自瞄[持枪]😦[小号]",
"🌿AK自瞄[持枪]🤤[小号]",
"🌿98k自瞄[持枪]🤥[小号]",
"🌿人物白色[落地]😧[小号]",
"🌿人物蓝色[落地待修复]😧[小号]",
"🌿人物红色[落地待修复]😧[小号]",
"🌿旧版遁地[落地]😦[小号]",
"🌿退出脚本",
 }, nil, os.date("🥀FyQ:0/Q群:0\n当前时间%c\n\n\n"))
if SNY1 == nil then HOME()
  else
if SNY1[1] == true then ca1()end
if SNY1[2] == true then ca2() end
if SNY1[3] == true then ca3() end
if SNY1[4] == true then ca4() end
if SNY1[5] == true then ca5() end
if SNY1[6] == true then ca6() end
if SNY1[7] == true then ca7() end
if SNY1[8] == true then ca8() end
if SNY1[9] == true then ca9()end
if SNY1[10] == true then ca10() end
if SNY1[11] == true then ca11() end
if SNY1[12] == true then ca12() end
if SNY1[13] == true then ca13() end
if SNY1[14] == true then ca14() end
if SNY1[15] == true then ca15() end
if SNY1[16] == true then ca16() end
if SNY1[17] == true then ca17()end
if SNY1[18] == true then ca18() end
if SNY1[19] == true then ca19() end
if SNY1[20] == true then ca20() end
if SNY1[21] == true then ca21() end
if SNY1[22] == true then ca22() end
if SNY1[23] == true then ca23() end
if SNY1[24] == true then ca24() end
if SNY1[25] == true then ca25()end
if SNY1[26] == true then ca26() end
if SNY1[27] == true then ca27() end
if SNY1[28] == true then ca28() end
if SNY1[29] == true then ca29()end
if SNY1[30] == true then ca38() end
if SNY1[31] == true then ca31() end
if SNY1[32] == true then ca32() end
if SNY1[33] == true then ca33() end
if SNY1[34] == true then ca34() end
if SNY1[35] == true then ca35() end
if SNY1[36] == true then ca36() end
if SNY1[37] == true then ca37()end
if SNY1[38] == true then ca38() end
if SNY1[39] == true then ca39() end
if SNY1[40] == true then ca40() end
if SNY1[41] == true then ca41() end
if SNY1[42] == true then ca42() end
if SNY1[43] == true then ca43() end
if SNY1[44] == true then ca44() end
if SNY1[45] == true then ca45() end
if SNY1[46] == true then exit() end
end
HOMEDM=-1
end




function ca1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("1D;3.5E;0.5E;0.1E;0.9E::69", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_DOUBLE, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_DOUBLE)
gg.toast("防封开启成功🍁")
gg.clearResults() 
end





function ca2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("1.0e-323;220;30;200::100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("30", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("1200", gg.TYPE_DOUBLE)
gg.toast("千米雷达开启成功🍁")
gg.clearResults() 
end






function ca3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("10;700;1;3.5;200::",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("700",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('99999',gg.TYPE_DOUBLE)
gg.toast("全枪无后开启成功🍁")
gg.clearResults() 
end





function ca4()
gg.clearResults()
 gg.alert('全枪无后没效果，请开备用无后')
gg.setRanges(4)
SH_searchNumber("700E;1.8E;4.18359375F::",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("700",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('99999',gg.TYPE_DOUBLE)
gg.toast("备用无后开启成功🎋")
end





function ca5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("9D;16D;2.7;1.8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2.7;1.8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("5.56步枪开镜无后成功🍁")
gg.clearResults() 
end



function ca6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("2.3;2.2;1.7;0.0159;-0.0792;-0.0787:512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2.3;2.2;1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("7.62开镜无后开启成功🍁")
gg.clearResults() 
end



function ca7()
gg.clearResults()
 gg.alert('限制2700米，A版不成功🍁请执行B版')
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
SH_searchNumber("1;0.5;-0.5;1D;0.4::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() ==0 then
  gg.toast("飞行加速A版本开启失败")
else
SH_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("200", gg.TYPE_DOUBLE)
gg.toast("飞行加速A版本开启成功🍁")
gg.clearResults() 
end
end





function ca8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
SH_searchNumber("-0.1;0.6;0.4::100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() ==0 then
  gg.toast("飞行加速B版本开启失败")
else
SH_searchNumber("-0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("200", gg.TYPE_DOUBLE)
gg.toast("飞行加速B版本开启成功🍁")
gg.clearResults() 
end
end







function ca9()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
SH_searchNumber('-1;1,065,353,216D;1;5;4::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() ==0 then
gg.toast("汽车锁油开启失败")
else
SH_searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1) 
gg.editAll('0.001', gg.TYPE_FLOAT) 
gg.toast("汽车锁油开启成功🍁")
gg.clearResults()
end
end



function ca10()
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber('18;23;1.0;0.2;-0.56::', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1) 
gg.editAll('8', gg.TYPE_DOUBLE) 
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("1.5;10;20;7::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("8", gg.TYPE_DOUBLE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("-0.22;2;60::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_DOUBLE)
gg.toast("五车加速开启成功🍁")
gg.clearResults()
end





function ca11()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
SH_searchNumber('1D;16,842,752D;257D;2.350989e-38F::53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('2.350989e-38', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("子弹全穿开启成功🍁")
gg.clearResults() 
end




function ca12()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
SH_searchNumber('1D;16,842,752D;257D;0F::53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('2.350989e-38', gg.TYPE_FLOAT)
gg.toast("全穿1恢复成功🍁")
gg.clearResults() 
end





function ca13()
gg.clearResults()
gg.setRanges( gg.REGION_CODE_APP)
SH_searchNumber("4.5208316e-38;0.0001::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("子弹全穿2开启成功🌵")
gg.clearResults()
end





function ca14()
gg.setRanges( gg.REGION_CODE_APP)
SH_searchNumber("4.5208316e-38;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.0001", gg.TYPE_FLOAT)
gg.toast("全穿2恢复开启成功🌴")
gg.clearResults()
end





function ca15()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.57;1.8;0.05;0.1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DOUBLE)
gg.toast("子弹全穿3开启成功🌱")
gg.clearResults()
end





function ca16()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.57;1.8;0.05;99999::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99999", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.1", gg.TYPE_DOUBLE)
gg.toast("全穿3恢复成功🌿")
gg.clearResults()
end





function ca17()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("10D;5,126D;3D;11D;32D;4D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(12)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("除草开启成功🍁")
gg.clearResults() 
end




function ca18()
gg.clearResults()
gg.alert('开启成功后🍁请退出脚本手动修改数值1，改为1.2至3')
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("0.4E;0F;1.875F;1E;1.875F;1.75F;1.75F::69", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
a=gg.getResults(1)
print("addListItems: ", gg.addListItems(a))
gg.toast("实体变大需退出脚本手动修改☘")
gg.clearResults()
end





function ca19()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
SH_searchNumber('4.9e-324E;0.00999999978;0.20000000298;65536D;1.0e-323E;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() ==0 then
  gg.toast("爬树爬墙开启失败")
else
SH_searchNumber('0.20000000298', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('爬树爬墙开启成功🍁')
gg.clearResults() 
end
end





function ca20()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
SH_searchNumber("0.00392158423;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("穿墙开启失败")
else
SH_searchNumber("0.00392158423;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("人物穿墙开启成功🍁")
gg.clearResults()
end
end





function ca21()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("-0.2015;1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("3", gg.TYPE_DOUBLE)
gg.toast("步枪秒换弹匣开启成功🍁")
gg.clearResults() 
end






function ca22()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP+gg.REGION_C_ALLOC)
SH_searchNumber('5D;0E;1F;2E;2F::50',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('5.8', gg.TYPE_FLOAT)
gg.toast("拾取扩大开启成功🍁")
gg.clearResults() 
end





function ca23()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("7;3.5;5.0;1.6::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("6.5", gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast("开枪加速开启成功🍁")
gg.clearResults() 
end





function ca24()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("4.4;2.1;7.0;6.25;3.5::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("6.25", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("7.1", gg.TYPE_DOUBLE)
gg.toast("持枪加速开启成功🍁")
gg.clearResults() 
end





function ca25()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("14;12;4;8;20;6;10;2;3;1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("8;6;10;3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DOUBLE)
gg.toast("秒药开启成功🍁")
gg.clearResults() 
end





function ca26()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.99886602163;-0.04760599881;1.0;0.04760599881;0.99886602163;-0.02063599974;0.00770800002;1.0;0.99972999096;0.02321900055::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("天线开启成功🍁")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.02609699965;-0.00132599997;0.01718400046;-0.00394200021;1.0;0.99981898069;0.01902900077::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("天线开启成功🍁")
gg.clearResults()
end




function ca27()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.284E;-0.12E;0.924E;1.0E:97", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.924", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("6", gg.TYPE_DOUBLE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.284E;-0.12E;1.484E:65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.484", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("6", gg.TYPE_DOUBLE)
gg.toast("开镜路飞开启成功🍃")
gg.clearResults()
end






function ca28()
gg.clearResults()
  gg.alert("人物微跳请配合防摔")
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("2.5;1.25;-5.0;40;3;0.75::",gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("3",gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1)
gg.editAll("4.7",gg.TYPE_DOUBLE)
gg.toast("人物微跳开启成功🌾")
gg.clearResults() 
end





function ca29()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("50.0E;0.5E;0.7E;1.5E;0.1E;0.15E;0.099E:209", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_DOUBLE)
gg.toast("无限手雷开启成功🎋")
gg.clearResults()
end





function ca30()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("5.0E;20.0E;40.0E;6.0E:49", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.001", gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast("手雷秒炸开启成功🍃")
gg.clearResults()
end




------------------------------------------------分割线






function ca31()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("4D;24,581.5;1.1290354e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("17D;3.2229865e-44;2.2420775e-44;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("1.1096132e-19;2;5.6051939e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("3.7615819e-37;1.6623683e-19;853D;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("通用透视1开启成功🍂")
gg.clearResults()
end






function ca32()
gg.clearResults()
gg.alert("效果不好请搭配近身透视")
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("2.015625;3.87548828125;3.75;2.0;-1;0.75;0.24899999797;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("通用透视2开启成功🍁🍁")
gg.clearResults()
end





function ca33()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("2.015625;3.87548828125;3.75;2.0;-1;0.75;0.24899999797;0.99900001287::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("40", gg.TYPE_FLOAT)
gg.toast("近身透视开启成功🍁")
gg.clearResults() 
end





function ca34()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("2.015625;3.75;3.875;2.0;-1;0.99900001287::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("11,266.75;24,581.5;2.0;1.6623024e-19;3.87506604195::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2.0", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("845透视开启成功🍁")
gg.clearResults() 
end





function ca35()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("4,923D;853D;2F::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("50", gg.TYPE_FLOAT)
gg.toast("透视中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber('103,240D;2F::150',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
SH_searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll('50', gg.TYPE_FLOAT)
gg.toast("835透视开启成功🍁")
gg.clearResults()
end





function ca36()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("透视中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
SH_searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults()
gg.editAll('', gg.TYPE_FLOAT)
gg.toast("透视开启成功🍁")
gg.clearResults()
end





function ca37()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("透视中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
SH_searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults()
gg.editAll('', gg.TYPE_FLOAT)
gg.toast("透视开启成功🍁")
gg.clearResults()
end





function ca38()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("1.3912516e-19F;1.088438e-19F;1.0649868e-43F;2.0F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("3.75000739098;3.75;1.3912526e-19;2.0;-1.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("地面透视开启成功🍁")
gg.clearResults() 
end




function ca39()
gg.clearResults()  
  gg.alert("提示：开启自瞄必须开辅助瞄准，捡去对应的枪后开始执行功能，开启成功以后扔掉枪从新捡起来完成")
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
SH_searchNumber("0.35E;1.67499995232;4.4E::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("1.67499995232", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("m4自瞄开启成功🍁")
gg.clearResults() 
end




function ca40()
gg.clearResults()
  gg.alert("提示：开启自瞄必须开辅助瞄准，捡去对应的枪后开始执行功能，开启成功以后扔掉枪从新捡起来完成")
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
SH_searchNumber("2D;3.3125;11D;1.64999997616::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("AK自瞄开启成功🍁")
gg.clearResults()
end




function ca41()
gg.clearResults()
  gg.alert("提示：开启自瞄必须开辅助瞄准，捡去对应的枪后开始执行功能，开启成功以后扔掉枪从新捡起来完成")
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("2.720083e23F;1.67499995232;4.2038954e-45F:",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("1.67499995232",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(50)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("98k自瞄开启成功🍁")
gg.clearResults() 
end




function ca42()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("4923D;-1;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.99900001287", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("人物白色开启成功🍁")
gg.clearResults()
end






function ca43()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,063,562,900;1,061,882,180;1,084,227,584;1,052,329,640;1,053,193,859::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,084,227,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(1)
if jg[1] == nil then
gg.toast("开启失败")
else
dzy=jg[1].address
dz=jg[1].address+36
--十进制转到十六进制
yz16=string.format("%#X",dzy)
z16=string.format("%#X",dz)
gg.clearResults()
gg.searchAddress(z16 , -1 , gg.TYPE_DWORD , gg.SIGN_EQUAL , 0 , -1)
gg.getResults(1)
gg.editAll("1,203,982,208", gg.TYPE_DWORD)
gg.toast("人物蓝色成功")
dzy=jg[1].address
dz=jg[1].address+32
--十进制转到十六进制
yz16=string.format("%#X",dzy)
z16=string.format("%#X",dz)
gg.clearResults()
gg.searchAddress(z16 , -1 , gg.TYPE_DWORD , gg.SIGN_EQUAL , 0 , -1)
gg.getResults(1)
gg.editAll("1,203,982,208", gg.TYPE_DWORD)
gg.toast("人物蓝色开启成功😛")
end
end




function ca44()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,063,562,900;1,061,882,180;1,084,227,584;1,052,329,640;1,053,193,859::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,084,227,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(1)
if jg[1]== nil then
gg.toast("开启失败")
else
dzy=jg[1].address
dz=jg[1].address+28
--十进制转到十六进制
yz16=string.format("%#X",dzy)
z16=string.format("%#X",dz)
gg.clearResults()
gg.searchAddress(z16 , -1 , gg.TYPE_DWORD , gg.SIGN_EQUAL , 0 , -1)
gg.getResults(1)
gg.editAll("1,203,982,208", gg.TYPE_DWORD)
gg.toast("人物红色开启成功😭")
end
end





function ca45()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber('4.9e-324E;1,060,439,284D;1; 0.00999999978;0.70710682869;0.0078125E;1,065,353,216D::330',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("3", gg.TYPE_FLOAT)
b=gg.getResults(3)
print("addListItems: ", gg.addListItems(b))
gg.toast('遁地开启成功可手动调节高度🌱')
gg.clearResults()
end








function Exit()
os.exit()
end

while(true)
do
if gg.isVisible(true) then
HOMEDM=1
gg.setVisible(false) 
end 
if HOMEDM==1 then HOME() end
end