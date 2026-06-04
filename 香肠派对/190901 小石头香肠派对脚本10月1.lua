function Main()
menu = gg.choice({
'娱乐功能😁',
'加速类😍   ',
'遁地类😏   ',
'飞天类😱   ',
'退出脚本    '},
nil,'小石头打造全王最吊辅助')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'人物天线①',
'人物天线②',
'人物天线③',
'人物天线④',
'除草①',
'除草②',
'无限背包',
'秒杀\n（慎重，开启后机器人也是秒杀）',
'爬墙',
'水上行走',
'人物闪棕色',
'人物花色',
'人物黑色',
'人物高跳30',
'人物高跳20',
'人物变大（自慰）',
'人物变小（自慰）',
'人物变高',
'拳头范围（小）',
'拳头范围锤全图\n（可能会造成游戏卡顿）',
'返回上一页'},
nil,'所有功能落地开，修复天线3，请使用天线3，其他天线无效，拳头范围从10改为100')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then a17() end
if menu1[18] == true then a18() end
if menu1[19] == true then a19() end
if menu1[20] == true then a20() end
if menu1[21] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'开镜全图飞😱',
'人物加速20',
'人物加速60',
'蛇皮加速20',
'蛇皮加速400',
'蹲下加速20',
'蹲下加速60',
'游泳加速20',
'游泳加速400',
'汽车加速',
'返回上一页'},
nil,'蛇皮加速改为400倍，游泳加速改为400倍')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'普通遁地开启',
'普通遁地关闭',
'草坪遁地开启',
'草坪遁地关闭',
'趴下遁地开启\n（趴下开启）',
'返回上一页'},
nil,'趴下遁地开枪可打人')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'蛇皮飞天①',
'蛇皮飞天②',
'蹲下飞天①',
'蹲下飞天②',
'返回上一页'},
nil,'蛇皮加速可以配合蛇皮飞天，蹲下加速可以配合蹲下飞天。')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end



function a1()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.36097753048;1.36097753048;1.36097574234;1.29532468319;1.23142755032;1.23142755032;1.29532647133;1.23142755032;1.29532647133;1.23142755032;1.23142755032;1.29532468319;1.29532468319;1.23142755032;1.23142755032;1.29532647133;1.29532647133", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("999999999",gg.TYPE_FLOAT)
gg.toast("天线开启")
end



function a2()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-0.05175213888',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('-99999', gg.TYPE_FLOAT)
gg.toast('天线开启')
end



function a3()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-1,123,699,481D;1F::20',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(99)
gg.editAll('9999999', gg.TYPE_FLOAT)
gg.toast('天线开启')
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-1,123,699,481D;-1,274,537,876D;1F::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.toast('天线开启')
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.45;1;1;1;1::17',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.45', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('3', gg.TYPE_FLOAT)
gg.toast('除草开启')
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.45;1;1;1;1::17',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('除草开启')
end



function a7()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('70;20;15::',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('70', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('99999999', gg.TYPE_FLOAT)
gg.toast('无限背包开启')
end



function a8()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2;1.5;1;0.5;0.699999988082::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.5;1;0.699999988082", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("秒杀开启（半修复状态。）")
end



function a9()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;1025D;1D;1;0.5::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("蜘蛛侠开启")
end



function a10()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.4999999702;0.07999999821;0.5::9', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1) 
gg.searchNumber('0.07999999821', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) 
gg.getResults(10) 
gg.editAll('1',gg.TYPE_FLOAT) 
gg.toast('水上行走开启成功')
end



function a11()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;169D;119D;2D;1D;2D;1;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("人物闪棕已成功开启")
gg.clearResults()
end



function a12()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;169D;119D;2D;1D;2D;1;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("人物花色已成功开启")
gg.clearResults()
end



function a13()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;169D;119D;2D;1D;2D;1;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("人物黑色已成功开启")
gg.clearResults()
end



function a14()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.20000004768;0.89999997616;1.20000004768;0.89999997616::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('30倍高跳开启')
end



function a15()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.20000004768;0.89999997616;1.20000004768;0.89999997616::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('20倍高跳开启')
end



function a16()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-2.0;2.0;-2.0;0.0;-2.0;-2.0;2.0;0;2.0;-2.0;2.0;0.0;-2.0;2.0;2.0;0.0;2.0;-2.0;-2.0;0.0;2.0;2.0;-2.0;0.0::93', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('4', gg.TYPE_FLOAT)
gg.toast('人物变大开启')
end


function a17()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-2.0;2.0;-2.0;0.0;-2.0;-2.0;2.0;0;2.0;-2.0;2.0;0.0;-2.0;2.0;2.0;0.0;2.0;-2.0;-2.0;0.0;2.0;2.0;-2.0;0.0::93', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('1', gg.TYPE_FLOAT)
gg.toast('人物变小开启')
end



function a18()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-390,230,032D;0D;0.0;0.0;1;0.0;0.0::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast('人物变高开启')
end



function a19()

gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("0.1365685463;1;1;1;1::150", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("拳头范围开启（群管提供）")
end



function a20()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("0.1365685463;1;1;1;1::150", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.toast("拳头范围开启（群管提供）")
end


function b1()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2;1.5;1;0.5;0.7::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("250",gg.TYPE_FLOAT)
gg.toast("全图飞开启")
end


function b2()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('6.09999990463;4.5;3.25;6.15000009537::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('人物加速开启')
end



function b3()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('6.09999990463;4.5;3.25;6.15000009537::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('60', gg.TYPE_FLOAT)
gg.toast('人物加速开启')
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.20000004768;1;1::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('蛇皮开启')
end



function b5()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.20000004768;1;1::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('400', gg.TYPE_FLOAT)
gg.toast('蛇皮开启')
end



function b6()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2.34999990463;2.34999990463;4.55000019073::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('蹲下开启')
end



function b7()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2.34999990463;2.34999990463;4.55000019073::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('60', gg.TYPE_FLOAT)
gg.toast('蹲下开启')
end



function b8()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('3.54999995232;1.0;3.34999990463::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('游泳开启')
end



function b9()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('3.54999995232;1.0;3.34999990463::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('400', gg.TYPE_FLOAT)
gg.toast('游泳开启')
end



function b10()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('25,000.0;1,500.0;50.0;150;12,000.0::', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('50', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('600', gg.TYPE_FLOAT)
gg.toast('载具加速开启成功')
gg.clearResults()
end



function c1()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('0.5F;1,056,964,608D;0.0001F;9.9999999e32F', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.5', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(250)
gg.editAll('99.25', gg.TYPE_FLOAT)
gg.toast('普通遁地开启')
end



function c2()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.searchNumber('99.25', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('99.25', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast('遁地关闭')
end



function c3()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("0.5;0.5;0.0001;0.0001::13",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("草坪遁地开启")
end



function c4()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("9999",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99)
gg.editAll("0.5",gg.TYPE_FLOAT)
gg.toast("草坪遁地关闭")
end



function c5()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10.0;0.80000001192;0.50390648842;0.44999998808;0.00001::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.44999998808", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("-0.22", gg.TYPE_FLOAT)
gg.toast("遁地开启（蹲下或站起即可关闭遁地）")
end



function d1()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998808;0.60000002384::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.60000002384", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("蛇皮飞天①成功")
end



function d2()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998808;0.60000002384::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.60000002384", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("蛇皮飞天②成功")
end



function d3()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998808;1.20000004768::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.20000004768", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("蹲下飞天开启成功")
end



function d4()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998808;1.20000004768::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.20000004768", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("蹲下飞天开启成功")
end



function Exit()
print("感谢使用本脚本（功能失效反馈）")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = 'QQ972387634'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end










