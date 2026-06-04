function Main0()
SN = gg.choice({
	 "功能区💚",
	 "boff区💜",
	 "武器区❤️",
	 "天赋区💙",
}, nil, "智障均牛逼哦，三楼智障均")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main2()
end
if SN==3 then
	 Main3()
end
if SN==4 then
	 Main4()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
 "全屏杀人【先丢一个手雷再开】",
 "火箭筒伤害1000",
 "秒拆夹子",
 "急救包改隐身",
 "火箭筒无间隔",
 "返回主页",
 "退出脚本",
}, nil, "智障均💚QQ2152933562💜QQ1163289030，1471077022")
if SN[1]==true then
	 a2()
end
if SN[2]==true then
	 a3()
end
if SN[3]==true then
	 a4()
end
if SN[4]==true then
	 a5()
end
if SN[5]==true then
	 a6()
end
if SN[6]==true then
  a7()
end
if SN[7]== true then
 a8()
 end
FX1=0
end

function a2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;2.5F;0.2;33;105D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("250",gg.TYPE_FLOAT)
gg.toast("100倍手雷范围")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;0.2;33F;105D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("330",gg.TYPE_FLOAT)
gg.toast("10倍手雷伤害")
end

function a3()
gg.clearResults()
gg.searchNumber("56;4D;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("火箭筒伤害1000开启成功")
end

function a4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8;0.2;1D;10D;1D;2.5;0.5;1;14::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(500)
gg.editAll("0.01",gg.TYPE_FLOAT)
gg.toast("秒拆陷阱拆陷阱")
end

function a5()
gg.clearResults()
	 gg.searchNumber("104;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("急救包改隐身开启成功")
end

function a6()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("火箭筒无间隔开启成功")
	 gg.clearResults()
end

function a7()
	 Main0()
end

function a8()
	 os.exit()
end

function Main2()
SN = gg.multiChoice({
"疾跑无限时间",
"跳高无限时间",
"皮卡无限时间",
"踩陷阱加速",
"肾上腺素无限时间",
"返回主页",
"退出脚本",
}, nil, "这些功能全部人(队友，敌人，自己)都会有，这些功能基本都很稳定，可以任性奔放，智障均牛逼哦")
if SN[1]==true then
	 b2()
end
if SN[2]==true then
	 b3()
end
if SN[3]==true then
  b4()
end
if SN[4]==true then
	 b5()
end
if SN[5]==true then
	 b6()
end
if SN[6]==true then
  b7()
end
if SN[7]== true then
  b8()
end
FX1=0
end

function b2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;0.3;13D;80D::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("疾跑时间99999开启成功")
	 gg.clearResults()
end

function b3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;0.3;13D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("跳高时间99999开启")
	 gg.clearResults()
end

function b4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16;101D::50-", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("皮卡时间99999开启成功")
	 gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("101D;1;0.01;13D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1.2",gg.TYPE_FLOAT)
gg.toast("皮卡速度120开启成功")
end

function b5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;-0.75;0;0::13",gg.TYPE_FLOAT,false, gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.75",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0.75",gg.TYPE_FLOAT)
gg.toast("踩夹子加速开启成功")
end

function b6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;5;0.4;13D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("肾上腺素时间99999开启成功")
	 gg.clearResults()
end

function b7()
	 Main0()
end

function b8()
	 os.exit()
end

function Main3()
SN = gg.multiChoice({
"火箭炮改火箭炮2级",
"火箭炮改火箭炮3级",
"火箭炮改迫击炮1级",
"火箭炮改迫击炮2级",
"火箭炮改迫击炮3级",
"返回主页",
"退出脚本",
}, nil, "迫击炮自带秒换子弹功能")
if SN[1]==true then
	 c2()
end
if SN[2]==true then
	 c3()
end
if SN[3]==true then
  c4()
end
if SN[4]==true then
	 c5()
end
if SN[5]==true then
	 c6()
end
if SN[6]==true then
  c7()
end
if SN[7]== true then
  c8()
end
FX1=0
end

function c2()
gg.clearResults()
	 gg.searchNumber("801;100;110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("101", gg.TYPE_DWORD)
	 gg.toast("火箭筒1级改火箭筒2级开启成功")
end

function c3()
	 gg.clearResults()
	 gg.searchNumber("801;100;110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("102", gg.TYPE_DWORD)
	 gg.toast("火箭筒1级改火箭筒3级开启成功")
end

function c4()
	 gg.clearResults()
	 gg.searchNumber("801;100;110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("火箭筒1级改迫击炮1开启成功")
	gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.06::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("攻击间隔0秒")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.6;-0.2::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("迫击炮0秒换弹")
end

function c5()
	 gg.clearResults()
	 gg.searchNumber("801;100;110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("111", gg.TYPE_DWORD)
	 gg.toast("火箭筒1级改迫击炮2级开启成功")
	gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.06::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("攻击间隔0秒")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.6;-0.2::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("迫击炮0秒换弹")
end

function c6()
	 gg.clearResults()
	 gg.searchNumber("801;100;110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112", gg.TYPE_DWORD)
	 gg.toast("火箭筒1级改迫击炮3级开启成功")
	gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.06::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("攻击间隔0秒")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.6;-0.2::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("迫击炮0秒换弹")
end

function c7()
	 Main0()
end

function c8()
	 os.exit()
end

function Main4()
SN = gg.multiChoice({
"失忆者满天赋",
"雇佣兵满天赋",
"失忆者改魔术师满天赋",
"雇佣兵改女特工满天赋",
"雇佣兵改机器人满天赋",
"返回主页",
"退出脚本",
}, nil, "智障均QQ:1471077022，1163289030")
if SN[1]==true then
	 d2()
end
if SN[2]==true then
	 d3()
end
if SN[3]==true then
  d4()
end
if SN[4]==true then
	 d5()
end
if SN[5]==true then
	 d6()
end
if SN[6]==true then
  d7()
end
if SN[7]== true then
  d8()
end
FX1=0
end

function d2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.06;0.09;0.12::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.06;0.09;0.12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("购物达人天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.20;0.30;0.40::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20;0.30;0.40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("机关大师天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.20;0.30;0.40::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20;0.30;0.40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("来抓我呀天赋开启成功")
	 gg.clearResults()
end


function d3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.18;0.27;0.36::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.18;0.27;0.36", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("浑身是劲天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.08;0.12;0.16::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.08;0.12;0.16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_DWORD)
	 gg.toast("会心一击天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.08;0.12;0.16::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.08;0.12;0.16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("再来一发天赋开启成功")
	 gg.clearResults()
end

function d4()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112;113;114", gg.TYPE_DWORD)
	 gg.toast("失忆者改魔术师天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;45;30::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;45;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("移行换位满天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;45;30::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;45;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("道具戏法满天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.10;0.15;0.20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10;0.15;0.20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("变羊术满天赋开启成功")
	 gg.clearResults()
end

function d5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("109;110;111", gg.TYPE_DWORD)
	 gg.toast("雇佣兵改女特工天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;75;50::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100;75;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("瞬移大师满天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;4::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;3;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("天降正义满天赋开启成功")
	 gg.clearResults()
end

function d6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("116;115;117", gg.TYPE_DWORD)
	 gg.toast("雇佣兵改机器人天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;75;50::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100;75;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("迷你雷达天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;4.5;6::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3;4.5;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("声波探测天赋开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;90;120::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;90;120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("自我强化天赋开启成功")
	 gg.clearResults()
end

function d7()
	 Main0()
end

function d8()
	 os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end