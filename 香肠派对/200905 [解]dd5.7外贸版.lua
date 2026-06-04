
function Main()
  menu = gg.choice({
    '💚稳定功能💚',
    '💙爽歪歪功能💙',
    '💜防封功能💜',
    '💝美化功能💝',
    '💔退出dd科技脚本💔'},
  nil,'dd科技5.7 ') 
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then Exit() end
  XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
  '💚人物天线💚',
  '💚锁头范围💚',
  '💚锁身范围💚',
  '💚无限背包💚',
  '💚二跳穿墙💚',
  '💚无限飞高💚',
  '💚枪托无后💚',
  '💚返回上一页💚'},    -------滚你喵的偷看代码狗
  nil,'dd科技')
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then a6() end
    if menu1[7] == true then a7() end
    if menu1[8] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    '💙子弹聚点💙', 
    '💙喷气CD💙',
    '💙龙枪天线💙',
    '💙秒救队友💙',
    '💙子弹穿墙💙',
    '💙爬墙蜘蛛💙',
    '💙子弹无坠💙',
    '💙圣剑攻速💙',
    '💙黑色天空💙',
    '💙胶囊锁毒💙',
    '💙鱼缸天线💙',
    '💙火球范围💙',
    '💙超六手雷💙',
    '💙556唤龙弹💙',
    '💙手枪秒车💙',
    '💙蹲下飞天💙',
    '💙步枪射速💙',
    '💙人物透视💙',
    '💙水上行走💙',
    '💙龙炮CD💙',
    '💙M4scarQBZ秒换💙',
    '💙小小加速💙',
    '💙子弹追踪💙',
    '💙开镜路飞💙',
    '💙M4秒杀 💙',
    '💙远拉勾勾💙',
    '💙除掉小树💙',
    '💙无限子弹💙',
    '💙无敌追踪💙',
    '💙弓无CD💙',
    '💙7.62信号💙',
    '💙.45信号弹💙',
    '💙返回上页💙'},
    nil,'dd科技')
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
    if menu1[11] == true then b11() end
    if menu1[12] == true then b12() end
    if menu1[13] == true then b13() end
    if menu1[14] == true then b14() end
    if menu1[15] == true then b15() end
    if menu1[16] == true then b16() end
    if menu1[17] == true then b17() end
    if menu1[18] == true then b18() end
    if menu1[19] == true then b19() end
    if menu1[20] == true then b20() end
    if menu1[21] == true then b21() end
    if menu1[22] == true then b22() end
    if menu1[23] == true then b23() end
    if menu1[24] == true then b24() end
    if menu1[25] == true then b25() end
    if menu1[26] == true then b26() end
    if menu1[27] == true then b27() end
    if menu1[28] == true then b28() end
    if menu1[29] == true then b29() end
    if menu1[30] == true then b30() end
    if menu1[31] == true then b31() end
    if menu1[32] == true then b32() end
    if menu1[33] == true then HOME() end
  end
  GLWW=-1
end
    
 
   
    function C()
  menu1 = gg.multiChoice({
    '💜防1(待修复)💜',
    '💜防2(待修复)💜',
    '💜返回上页💜'},
  nil,'防封区')
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then HOME() end
  end
  GLWW=-1
end



function D()
  menu1 = gg.multiChoice({
    '💝终极骑士💝',
    '💝霸气妲己💝',
    '💝女探险家💝',
    '💝无头骑士💝',
    '💝章鱼剑客💝',
    '💝呆呆女仆💝',
    '💝笨笨唐僧💝',
    '💝终极毁灭💝',
    '💝海盗船长💝',
    '💝爱心小鹿💝',
    '💝飞高纸鸢💝',
    '💝飞高魔蝠💝',
    '💝飞高鹦鹉💝',
    '💝飞高憨龙💝',
    '💝飞高魔兔💝',
    '💝全枪美化💝',
    '💝返回上一页💝'},
  nil,'美化区')
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then d6() end
    if menu1[7] == true then d7() end
    if menu1[8] == true then d8() end
    if menu1[9] == true then d9() end
    if menu1[10] == true then d10() end
    if menu1[11] == true then d11() end
    if menu1[12] == true then d12() end
    if menu1[13] == true then d13() end
    if menu1[14] == true then d14() end
    if menu1[15] == true then d15() end  
    if menu1[16] == true then d16() end     
    if menu1[17] == true then HOME() end
    
    
  end
  GLWW=-1
end



function a1()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
  gg.searchNumber("1.72448539734~1.72448551655", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("天线")
end

function a3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.4",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)--设置修改前300个代码
gg.editAll("2.3", gg.TYPE_FLOAT)
gg.toast("锁身范围开启成功")
gg.clearResults()
end
end



function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('0.34748032689F;0.34999999404F;0.35000020266F::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('0.34748032689F;0.34999999404F;0.35000020266F::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('1.2',gg.TYPE_FLOAT)
  gg.toast("锁头范围开启成功")
end



function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("150;20.0;15.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("无限背包开启")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1,055,286,886;1,065,353,216;1,067,869,798:9',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1,055,286,886',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-99',gg.TYPE_DWORD)
gg.toast("连跳穿墙开启")
end



function a6()
 F = gg.alert("无限飞高高", "开启", "关闭")
  if F == 1 then
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.999913", gg.TYPE_FLOAT)
gg.toast("无限飞高高开，小心哦")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.999913", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.07999999821", gg.TYPE_FLOAT)
    gg.toast("关闭成功")
    gg.clearResults()
  end
end



function a7()
   gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber('12;0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber('12;0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(100)
   gg.editAll('0.999', gg.TYPE_FLOAT)
   gg.toast('开启')
  end



function b1()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('0.11999999732;0.20000000298',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.11999999732;0.20000000298',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
  gg.toast("子弹聚点开启成功")
end    



function b2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.0F;3.08285662e-44F;3.0F;10F;60F::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('3.0',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('0',gg.TYPE_FLOAT)
  gg.toast("机甲喷气无CD，秒变身开启成功")
  end



function b3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('2.34413027763',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2.34413027763',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(9999)
gg.editAll('9999',gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function b4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-1.0F;10.0F;-10.0F;1.0F:53',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('10',gg.TYPE_FLOAT)
gg.toast("秒救队友开启成功")
end



function b5()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(40)--设置修改前200个代码
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("子弹穿墙开启成功")
gg.clearResults()
end
end



function b6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_FLOAT)
	 gg.toast("无敌蜘蛛侠！")
	 gg.clearResults()
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,028,443,341;999;30;750::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,029,785,518;999;30;600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,028,443,341;999D;20D;650D::",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("650", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,027,101,164;999;30;800::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+ggREGION_C_HEAP)
gg.searchNumber("400",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,028,443,341;999;30;670::",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("670", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,029,785,518;999;30;650::",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("650", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,028,443,341;999;30;700::",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("3000", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,029,785,518;999;47;350::",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("3000", gg.TYPE_DWORD)
gg.toast("子弹不下坠开启成功")
end



function b8()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.0F;0.40000000596F;999.0F;0.0F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1.5", gg.TYPE_FLOAT)
  gg.toast("圣剑攻速开启")
end



function b9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("41d;2.25f::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) 
gg.searchNumber("2.25",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) 
gg.getResults(100) 
gg.editAll("0",gg.TYPE_FLOAT) 
gg.toast("天空黑色")
end



function b10()
    gg.clearResults()
    gg.setRanges(16)
    gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("99", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1091567616~1140457472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1101004800;1140457472;1091567616;1112014848:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1112014848", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-2", gg.TYPE_DWORD)
    gg.toast("毒？不在怕的")
    gg.clearResults()
  end



function b11()
  gg.clearResults()
  gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(350)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("鱼缸天线开启成功")
end


function b12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.8090893e-45;1.0;2.0;20.0;10.0::199",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("火球范围开启成功")
end



function b13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;300;28;9;10;1;5;30;0.1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
j = gg.prompt({
"自定义修改手雷范围,推荐30~60"
}, {
[1] = 80
}, {
[1] = "number"
})[1]
gg.getResults(100)
gg.editAll(j, gg.TYPE_FLOAT)
gg.toast("超六手雷已开启")
end



function b14()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("805314560;805322752", DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("805322752",DWORD , false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("148",gg.TYPE_DWORD)
  gg.toast("5.56毫米改唤龙弹开启成功")
  gg.clearResults()
end



function b15()
gg.toast("打人自杀")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP)
  gg.searchNumber("1,028,443,341;50;7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP)
  gg.searchNumber("1,028,443,341;30;15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP)
  gg.searchNumber("1,028,443,341;21;17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_HEAP)
  gg.searchNumber("1,028,443,341;36;7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.toast("手枪秒车龙开启成功")
end




function b16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998808;1.20000004768::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.20000004768", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("蹲下飞天开启成功")
end



function b17()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.01~0.4;200D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.01~0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3479)
gg.editAll("0.015", gg.TYPE_FLOAT)
gg.toast("射速开启成功")
end



function b18()
gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("3.7470893e-29;112D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("透视第1步开启成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1,669,858,309D;3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("透视开启成功")
end



function b19()
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.4999999702;0.07999999821;0.5::9', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1) 
gg.searchNumber('0.07999999821', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) 
gg.getResults(10) 
gg.editAll('45',gg.TYPE_FLOAT) 
gg.toast('水中行走开启成功')
end



function b20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10.0F;3.6013371e-43F;400.0F:13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('10.0F;400',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast("龙炮无CD开启成功")
end







function b21()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.8", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.79999995232", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("m4，QBZ,Scar_L秒换弹开启成功")
end



function b22()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1F;-1F;2,139,095,040D::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.toast("1.3加速成功")
end



function b23()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("0.00235145935;0.76544839144;0.1;0.11909916252::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1;0.11909916252", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(25)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("子弹追踪")
  gg.clearResults()
end


function b24()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.34999999404;0.2;0::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("开镜路飞")
  gg.clearResults()
end




function b25()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('41D;30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('41', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀成功😎😎')
end



function b26()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1059145646;1109393408:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1109393408", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("2139095040", gg.TYPE_DWORD)
  gg.toast("敲远拉勾勾")
end
 
 
 function b27()
 gg.clearResults()
gg.searchNumber("981,467,136D;1,149,239,296D;0.5F:50 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("除树完成")
end
 
   
   function b28()
gg.clearResults()
gg.setRanges(32)
  fw = gg.prompt({ i = "输入你现在的子弹" }, {i = ""})
gg.searchNumber(fw.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("开几枪")
gg.sleep(4000)
  fl = gg.prompt({ p = "输入你现在的子弹数量" }, {p = ""})
gg.searchNumber(fl.p,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("请再打几枪")
gg.sleep(4000)
  fd = gg.prompt({ k = "输入你现在的子弹数量" }, {k = ""})
gg.searchNumber(fd.k,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
local t =gg.getResults(15)
for i, v in ipairs(t)do
t[i].value ="9999"
t[i].freeze =true
end
gg.addListItems(t)
gg.toast("修改成功")
end  



   function b29()
     gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.77401280403;0.1;0.11190053821;0;0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1;0.11190053821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.00235145935;0.76544839144;0.1;0.11909916252::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1;0.11909916252", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.toast("无敌追踪开启中……")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("接着开启……")
  qmnb = {
    {memory = 36},
    {
      name = "无敌追踪开启成功"
    },
    {value = 0.019999993965029716, type = 16},
    {
      lv = 3.4281246730216708E-9,
      offset = 4,
      type = 16
    },
    {
      lv = 0.34748032689094543,
      offset = 8,
      type = 16
    },
    {
      lv = 0.3499999940395355,
      offset = 12,
      type = 16
    },
    {
      lv = 0.35000020265579224,
      offset = 16,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1,
      offset = 8,
      type = 16
    },
    {
      value = 1,
      offset = 12,
      type = 16
    },
    {
      value = 1.5,
      offset = 16,
      type = 16
    }
  }
  xqmnb(qmnb)
end 



function b30()
    gg.clearResults()
	 gg.setRanges(1000)
	 gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.000000001", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
  end



function b31()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("645;646", DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("646", DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("149", gg.TYPE_DWORD)
  gg.toast("7.62改信号弹")
  gg.clearResults()
end
   
  function b32()
    gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("645;646", DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("646", DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("154", gg.TYPE_DWORD)
  gg.toast(".45改信号弹")
  gg.clearResults()
end



function c1()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1655;1655::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防一")
	 gg.clearResults()
end

function c2()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1655;1655::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防二")
	 gg.clearResults()
end



function d1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425351",gg.TYPE_DWORD)
gg.toast("头部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425357",gg.TYPE_DWORD)
gg.toast("脸部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425367",gg.TYPE_DWORD)
gg.toast("外套开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425377",gg.TYPE_DWORD)
gg.toast("鞋子开启成功")
end



function d2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534233",gg.TYPE_DWORD)
gg.toast("头部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534235",gg.TYPE_DWORD)
gg.toast("脸部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534237",gg.TYPE_DWORD)
gg.toast("面饰开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534238",gg.TYPE_DWORD)
gg.toast("外套开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534245",gg.TYPE_DWORD)
gg.toast("手套开启成功")
end



function d3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762196",gg.TYPE_DWORD)
  gg.toast("外套开启成功")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762198",gg.TYPE_DWORD)
  gg.toast("鞋子开启成功")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762197",gg.TYPE_DWORD)
  gg.toast("拳套开启成功")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762193",gg.TYPE_DWORD)
  gg.toast("头套开启成功")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762195",gg.TYPE_DWORD)
  gg.toast("面部开启成功")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762194",gg.TYPE_DWORD)
  gg.toast("脸部开启成功")
end



function d5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881178",gg.TYPE_DWORD)
gg.toast("头部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881183",gg.TYPE_DWORD)
gg.toast("脸部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534237",gg.TYPE_DWORD)
gg.toast("面饰开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881192",gg.TYPE_DWORD)
gg.toast("外套开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881207",gg.TYPE_DWORD)
gg.toast("手套开启成功")
end



function d4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("335544465",gg.TYPE_DWORD)
gg.toast("头部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("335544463",gg.TYPE_DWORD)
gg.toast("脸部开启成功")


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("637534237",gg.TYPE_DWORD)
gg.toast("面饰开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("335544451",gg.TYPE_DWORD)
gg.toast("外套开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("335544460",gg.TYPE_DWORD)
gg.toast("手套开启成功")
end



function d6()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("13",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("22",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("79",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("119",gg.TYPE_DWORD)
gg.toast("女仆套成功")
end



function d7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("307",gg.TYPE_DWORD)
gg.toast("外套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("338",gg.TYPE_DWORD)
gg.toast("鞋子开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("331",gg.TYPE_DWORD)
gg.toast("拳套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("297",gg.TYPE_DWORD)
gg.toast("头套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("304",gg.TYPE_DWORD)
gg.toast("面部开启成功")
end



function d8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762062",gg.TYPE_DWORD)
gg.toast("头套开启成功")gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762095",gg.TYPE_DWORD)
gg.toast("外套开启成功")gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762079",gg.TYPE_DWORD)
gg.toast("下装开启成功")gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762104",gg.TYPE_DWORD)
gg.toast("拳套开启成功")gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762113",gg.TYPE_DWORD)
gg.toast("鞋子开启成功")
end



function d9()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881179",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881189",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881209",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881180",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("234881173",gg.TYPE_DWORD)
gg.toast("船长套开启成功")
end



function d10()
gg.setRanges(4)
Name = "爱心肥小鹿"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{2113929231, 0},}
SearchWrite(tb1, tb2, dataType)
end



function d11()
gg.setRanges(4)
Name = "蓝鲤纸鸢"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{858, 0},}
SearchWrite(tb1, tb2, dataType)
end


function d13()
gg.setRanges(4)
Name = "幽灵鹦鹉"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{234881223, 0},}
SearchWrite(tb1, tb2, dataType)
end



function d14()
gg.setRanges(4)
Name = "憨憨龙"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{603979830, 0},}
SearchWrite(tb1, tb2, dataType)
end



function d15()
gg.setRanges(4)
Name = "魔兔"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{769, 0},}
SearchWrite(tb1, tb2, dataType)
end



function d16()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('642',gg.TYPE_DWORD)
gg.toast("M416-小丑")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425389',gg.TYPE_DWORD)
gg.toast("M16A4-心跳时间")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('867',gg.TYPE_DWORD)
gg.toast("AKM-虎威")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425391',gg.TYPE_DWORD)
gg.toast("AUG-白龙")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425388',gg.TYPE_DWORD)
gg.toast("AWM-火尖枪")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979834',gg.TYPE_DWORD)
gg.toast("QBZ-撕裂")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979839',gg.TYPE_DWORD)
gg.toast("M24-游侠")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('469762130',gg.TYPE_DWORD)
gg.toast("Groza-银河")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('637534247',gg.TYPE_DWORD)
gg.toast("爆炸弓-觅心猎手")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('869',gg.TYPE_DWORD)
gg.toast("SKS-电玩")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('617',gg.TYPE_DWORD)
gg.toast("MK14-力量")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979836',gg.TYPE_DWORD)
gg.toast("DP-28-坚守")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979841',gg.TYPE_DWORD)
gg.toast("RGP-龙炎")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('234881251',gg.TYPE_DWORD)
gg.toast("SCAR-L-珍妮")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('763',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('763',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("枪械美化")
end




function Exit()
  print("感谢您使用dd5.7脚本")
  os.exit()
end



function HOME()
  lw=1
  Main()
end



cs = 'dd科技5.7'
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