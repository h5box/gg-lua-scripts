
function Main0()
SN = gg.choice({
	 "竞技实用¹₇🍀",
	 "创造机甲²₆🍋",
	 "变态其他³₅🥭",
	 "自瞄娱乐⁴₄🍓",
	 "单枪范围⁵₃️🍉",
	 "挑战刺刀⁶₂🍇",
	 "退出脚本⁷₁💩",
}, nil, "一叶知秋全民枪战2丶自用脚本禁止外流\n一叶扣扣：663638205")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main55()
end
if SN==3 then
	 Main10()
end
if SN==4 then
	 Main27()
end
if SN==5 then
	 Main24()
end
if SN==6 then
	 Main43()
end
if SN==7 then
	 HS21()
end
FX1=0
FX2=0
end

function Main1()
SN = gg.choice({
	 "¹双透",
	 "²无后",
	 "³射速",
	 "⁴微射",
	 "⁵自瞄",
	 "⁶微爆头",
	 "⁷大爆头",
	 "⁸枪枪爆头",
	 "⁹子弹穿墙",
	 "¹⁰子弹穿墙关",
	 "¹¹超长名名字16字",
	 "¹²开启部分单枪范围",
	 "¹³修复子弹穿墙无伤",
	 "¹⁴防封防闪退防举报",
	 "¹⁵天线加百变上色",
	 "返回主页",
}, nil, "一叶知秋制作内部脚本")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS22()
end
if SN==4 then
	 HS38()
end
if SN==5 then
	 HS4()
end
if SN==6 then
	 HS5()
end
if SN==7 then
	 HS6()
end
if SN==8 then
	 HS7()
end
if SN==9 then
	 HS8()
end
if SN==10 then
	 HS9()
end
if SN==11 then
	 HS661()
end
if SN==12 then
	 HSyj()
end
if SN==13 then
	 HSxf()
end
if SN==14 then
	 HSff()
end
if SN==15 then
	 HStxss()
end
if SN==15 then
	 HS30()
end
FX1=0
FX2=0
end

function HS2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("20979752D;7.1746481e-43F;-3219128320Q",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("7.1746481e-43F;-3219128320Q",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("-3146121216",gg.TYPE_QWORD)
gg.editAll("1.4160822e-39",gg.TYPE_FLOAT)
gg.toast("双透开启成功")
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;0.00999999978F;1.0F;255.0F;255.0F:113", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(2)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无后开启完毕射速要先开无后")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;0.00999999978F;1.0F;255.0F;255.0F:113", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1)
	 gg.editAll("0.78", gg.TYPE_FLOAT)
	 gg.toast("射速开启")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;0.00999999978F;1.0F;255.0F;255.0F:113", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1)
	 gg.editAll("0.9", gg.TYPE_FLOAT)
	 gg.toast("微射速开启完毕")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4;100;0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("12", gg.TYPE_FLOAT)
	 gg.toast("自瞄无效果就再开一次")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-0.25;0.10000000149;0.23000000417;0.00499999989", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.25", gg.TYPE_FLOAT)
	 gg.toast("微爆头开启完毕")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-0.25;0.10000000149;0.23000000417;0.00499999989", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.45", gg.TYPE_FLOAT)
	 gg.toast("大爆头开启完毕")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-0.25;0.10000000149;0.23000000417;0.00499999989", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.70", gg.TYPE_FLOAT)
	 gg.toast("超级爆头开启完毕")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.91031686e27F;-1.54741518e26F;9.99999997e-7F;-1.30904183e25F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("子弹穿墙开启完毕")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.91031686e27F;-1.54741518e26F;999F;-1.30904183e25F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9.99999997e-7", gg.TYPE_FLOAT)
	 gg.toast("子弹穿墙恢复")
	 gg.clearResults()
end

function HS661()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(50000)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("16字超长名字代码，输入名字界面开")
	 gg.clearResults()
end

function HSyj()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.80000001192F;0.00999999978F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0.2", gg.TYPE_FLOAT)
	 gg.toast("第一步")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-1.0F;2.52233724e-44F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0.2", gg.TYPE_FLOAT)
	 gg.toast("大部分龙枪恶魔枪范围开启完毕默认2倍范围")
	 gg.clearResults()
end
     function HSxf()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("", gg.TYPE_FLOAT)
	 gg.toast("已修复子弹穿墙全枪无伤")
	 gg.clearResults()
end

     function HSff()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.toast(" 防封 100 % ")
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5;0.4::60", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DOUBLE)
  gg.editAll("9", gg.TYPE_DOUBLE)
  gg.editAll("4.66", gg.TYPE_DOUBLE)
  gg.editAll("5.5", gg.TYPE_DOUBLE)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/commonex14")
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/fightex14")
  os.remove("/storage/emulated/0/Android/data/com.herogames.gplay.crisisactionsa/files/AntiCheatEngineLog.txt")
  gg.toast(" 完成 ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.toast(" 安全防封 ")
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5;0.4::60", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DOUBLE)
  gg.editAll("9", gg.TYPE_DOUBLE)
  gg.editAll("4.66", gg.TYPE_DOUBLE)
  gg.editAll("5.5", gg.TYPE_DOUBLE)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/commonex14")
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/fightex14")
  os.remove("/storage/emulated/0/Android/data/com.herogames.gplay.crisisactionsa/files/AntiCheatEngineLog.txt")
  gg.toast(" 完成 ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.toast(" 防举报 ")
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5;0.4::60", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DOUBLE)
  gg.editAll("9", gg.TYPE_DOUBLE)
  gg.editAll("4.66", gg.TYPE_DOUBLE)
  gg.editAll("5.5", gg.TYPE_DOUBLE)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/commonex14")
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/fightex14")
  os.remove("/storage/emulated/0/Android/data/com.herogames.gplay.crisisactionsa/files/AntiCheatEngineLog.txt")
  gg.toast(" 完成 ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.toast(" 防闪退 ")
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5;0.4::60", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DOUBLE)
  gg.editAll("9", gg.TYPE_DOUBLE)
  gg.editAll("4.66", gg.TYPE_DOUBLE)
  gg.editAll("5.5", gg.TYPE_DOUBLE)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/commonex14")
  os.remove("/storage/emulated/0/Android/data/com.youlong.multiaccount/gameplugins/com.herogames.gplay.crisisactionsa/files/fightex14")
  os.remove("/storage/emulated/0/Android/data/com.herogames.gplay.crisisactionsa/files/AntiCheatEngineLog.txt")
  gg.toast("防封完成该功能由-台湾作者：夜仔提供代码文件")
end

function HStxss()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.76~1.79", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.76~1.79", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("天线上色开启成功")
	 gg.clearResults()
end

function HS30()
	 Main0()
end

function Main55()
SN = gg.choice({
	 "女遁地",
	 "女飞天",
	 "秒切枪",
	 "自瞄准",
	 "机甲加速-超快",
	 "机甲加速-中快",
	 "机甲加速-较快",
	 "机甲穿墙-遁地",
	 "返回主页",
}, nil, "没有注释的功能都是创造功能！")
if SN==1 then
	 HS62()
end
if SN==2 then
	 HS63()
end
if SN==3 then
	 HS64()
end
if SN==4 then
	 HS65()
end
if SN==5 then
	 JJ1()
end
if SN==6 then
	 JJ2()
end
if SN==7 then
	 JJ3()
end
if SN==8 then
	 JJ4()
end
if SN==9 then
	 HS66()
end
FX1=0
FX2=0
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.51250004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.51250004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("女遁地开启完毕")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.51250004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.51250004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9}})
	 end
	 gg.toast("女飞天开启不支持恢复")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4.20389539e-45F;6.16571324e-44F;0.10000000149F;1.0F;0.80000001192F;0.00999999978F;1.40129846e-45F;2.94272678e-44F;255.0F;5.22684327e-43F;7.00649232e-42F;7.00649232e-45F;1.4573504e-43F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(7)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无后秒切开启完毕")
	 gg.clearResults()
end

function HS65()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01745329238F;57.295780181884766F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("57.295780181884766", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.8", gg.TYPE_FLOAT)
	 gg.toast("57自瞄开启完毕")
	 gg.clearResults()
end

function JJ1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.0F;2.0F;2.0F;0.00999999978F;0.15000000596F;0.20000000298F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("光速开启完毕-不支持关闭")
	 gg.clearResults()
end

function JJ2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.0F;2.0F;2.0F;0.00999999978F;0.15000000596F;0.20000000298F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("音速开启完毕-不支持关闭")
	 gg.clearResults()
end

function JJ3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.0F;2.0F;2.0F;0.00999999978F;0.15000000596F;0.20000000298F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.25", gg.TYPE_FLOAT)
	 gg.toast("车速开启完毕-不支持关闭")
	 gg.clearResults()
end

function JJ4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54741583e26F;9.99999997e-7F;100.0F;-7.48689749e19F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Xa人物穿墙-可用于机甲")
	 gg.clearResults()
end

function HS66()
	 Main0()
end

function Main10()
SN = gg.choice({
	 "男遁地",
	 "男浮空",
	 "女遁地",
	 "女浮空",
	 "竞技防摔高跳",
	 "生化超级高跳",
	 "子弹全穿",
	 "人物穿墙",
	 "人物穿墙关",
	 "贴墙透视",
	 "Xa跳跃爬墙",
	 "Xa人机原地刀人-过新号人机用",
	 "Xa子弹全穿",
	 "Xa子弹全穿关闭",
	 "人物天线",
	 "子弹追踪-安卓自测",
	 "无预热-暂不支持开启",
	 "全身范围",
	 "无限飞天",
	 "跳跃飞天",
	 "返回主页",
}, nil, "Faine丶夜仔提供部分功能")
if SN==1 then
	 HS11()
end
if SN==2 then
	 HS35()
end
if SN==3 then
	 HS12()
end
if SN==4 then
	 HS36()
end
if SN==5 then
	 HS13()
end
if SN==6 then
	 HS14()
end
if SN==7 then
	 HS15()
end
if SN==8 then
	 HS16()
end
if SN==9 then
	 HS17()
end
if SN==10 then
	 HS18()
end
if SN==11 then
	 HS636()
end
if SN==12 then
	 HS881()
end
if SN==13 then
	 HS882()
end
if SN==14 then
	 HS883()
end
if SN==15 then
	 HS884()
end
if SN==16 then
	 HS885()
end
if SN==17 then
	 HS886()
end
if SN==18 then
	 HS887()
end
if SN==19 then
	 HS888()
end
if SN==20 then
	 HSty()
end
if SN==21 then
	 HS31()
end
FX1=0
FX2=0
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1034147594;1062836634;1051931443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1062836634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1075997777", gg.TYPE_DWORD)
	 gg.toast("男角色遁地")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1034147594;1062836634;1051931443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1062836634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1060000000", gg.TYPE_DWORD)
	 gg.toast("男浮空开启完毕")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.51250004768F;1.86264515e-9F;0.99911224842F;0.01695805043F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.51250004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("女遁地开启完毕")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.51250004768F;1.86264515e-9F;0.99911224842F;0.01695805043F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.51250004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
	 gg.toast("女浮空开启完毕")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.22500000894F;1F:89", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.22500000894;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(3)
	 gg.editAll("2.8", gg.TYPE_FLOAT)
	 gg.toast("竞技高跳开启完毕")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.22500000894F;1F:89", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.22500000894;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(3)
	 gg.editAll("25", gg.TYPE_FLOAT)
	 gg.toast("生化高跳开启完毕")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.1F~0.9F;900000~999762;1~10;100:113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("2144061856", gg.TYPE_DWORD)
	 gg.toast("子弹全穿开启完毕")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54741583e26F;9.99999997e-7F;100.0F;-7.48689749e19F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Xa人物穿墙")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.91031686e27F;-1.54741518e26F;999F;-1.30904183e25F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9.99999997e-7", gg.TYPE_FLOAT)
	 gg.toast("人物穿墙关闭")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,043,878,380", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,043,878,380", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1,073,878,380", gg.TYPE_DWORD)
	 gg.toast("贴墙透视开启")
	 gg.clearResults()
end

function HS636()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DOUBLE)
	 gg.toast("跳跃爬墙-可能只支持小米版")
	 gg.clearResults()
end

function HS881()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.15911681e24F;9.99999987e14F;0.00001F;-1.30927611e25F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Xa人机原地刀人")
	 gg.clearResults()
end

function HS882()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54741583e26F;9.99999997e-7F;100.0F;-7.48689749e19F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Xa全穿第一步")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.91031686e27F;-1.54741518e26F;9.99999997e-7F;-1.30904183e25F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Xa全穿开启完毕")
	 gg.clearResults()
end

function HS883()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54741583e26F;999F;100.0F;-7.48689749e19F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9.99999997e-7", gg.TYPE_FLOAT)
	 gg.toast("关闭中…")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.91031686e27F;-1.54741518e26F;999F;-1.30904183e25F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9.99999997e-7", gg.TYPE_FLOAT)
	 gg.toast("Xa全穿关闭完毕")
	 gg.clearResults()
end

function HS884()
gg.clearResults()
gg.clearResults(5000)
gg.setRanges(bit32.bor(gg.REGION_C_ALLOC))
gg.searchNumber('-0.98344057798', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll('-891.92596435547', gg.TYPE_FLOAT)
gg.clearResults(5000)
gg.searchNumber('-0.98916655779', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll('-891.92596435547', gg.TYPE_FLOAT)
gg.toast('天线开启成功')
end

function HS885()
gg.clearResults()
gg.searchNumber("3001~3033;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3001~3033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("3101;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5201~5209;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5201~5209", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("3022;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("3005~3011;360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3005~3011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5102~5103;360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5102~5103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
end

function HS886()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{537530452, 0}, {1669466377, 4}, {790614, 8}, }
local tb2 = {{725078, 8}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{1058471936, 0}, {1038172160, 4}, {397350, 7860}, }
local tb2 = {{331814, 7860}, }
SearchWrite(tb1, tb2, dataType)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("4;16387::5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(2)
gg.editAll("6", gg.TYPE_WORD)
gg.clearResults()
end

function HS887()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1008981770;100;1036831949", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1008981770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll("1059000000", gg.TYPE_DWORD)
gg.clearResults(5000)
gg.searchNumber("-1082130432;100;1036831949", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1082130432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll("1059000000", gg.TYPE_DWORD)
gg.clearResults(5000)
end

function HS888()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("1008981770;1061997773;3204448256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3204448256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1040000000", gg.TYPE_DWORD)
	 gg.toast("自动飞天")
	 gg.clearResults()
end

function HSty()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("6.22176518e-43F;0.10000000149F;3.46120721e-43F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("跳跃飞天")
	 gg.clearResults()
end

function HS31()
	 Main0()
end

function Main27()
SN = gg.choice({
	 "①自瞄",
	 "①关闭",
	 "②自瞄",
	 "②关闭",
	 "③自瞄",
	 "③关闭",
	 "④自喵",
	 "④关闭",
	 "单值巨人-娱乐",
	 "灵魂加速-娱乐",
	 "弹簧瞬移-娱乐",
	 "蹲下加速-娱乐",
	 "返回主页",
}, nil, "Az丶夜仔提供自喵功能")
if SN==1 then
	 HS28()
end
if SN==2 then
	 HS29()
end
if SN==3 then
	 HS39()
end
if SN==4 then
	 HS40()
end
if SN==5 then
	 HS41()
end
if SN==6 then
	 HS42()
end
if SN==7 then
	 HS441()
end
if SN==8 then
	 HS442()
end
if SN==9 then
	 HSa1()
end
if SN==10 then
	 HSa2()
end
if SN==11 then
	 HSa3()
end
if SN==12 then
	 HSa4()
end
if SN==13 then
	 HS32()
end
FX1=0
FX2=0
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01745329238F;57.295780181884766F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("57.295780181884766", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(30)
	 gg.editAll("0.8", gg.TYPE_FLOAT)
	 gg.toast("57自瞄开启")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01745329238F;0.8F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(30)
	 gg.editAll("57.295780181884766", gg.TYPE_FLOAT)
	 gg.toast("57自瞄关闭")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1082130432;1120403456;1045220557", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1120403456", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15000", gg.TYPE_FLOAT)
	 gg.toast("100F开启完毕")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1082130432;15000;1045220557", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1120403456", gg.TYPE_FLOAT)
	 gg.toast("100F恢复")
	 gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.00893489e-43F;100.0F;0.20000000298F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("0.2F开启完毕")
	 gg.clearResults()
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.00893489e-43F;100.0F;9F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.20000000298", gg.TYPE_FLOAT)
	 gg.toast("0.2F恢复完毕")
	 gg.clearResults()
end

function HS441()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("416D;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1035000000", gg.TYPE_DWORD)
	 gg.toast("2F开启完毕")
	 gg.clearResults()
end

function HS442()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("416;1035000000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1035000000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1073741824", gg.TYPE_DWORD)
	 gg.toast("2F恢复完毕")
	 gg.clearResults()
end

function HSa1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5.91347952e-43F;6.79349496e-42F;2.80259693e-45F;5.04467447e-44F;1.0F;1.0F;1.12103877e-44F;2.41023336e-43F;4.48415509e-43F;9.92119313e-43F;2.80259693e-44F;3.97968764e-43F;2.80259693e-44F;1.33403614e-42F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("单值巨人开启完毕，不支持关闭")
	 gg.clearResults()
end

function HSa2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5.60519386e-44F;4.34402524e-44F;2.41023336e-43F;64.0F;80.0F;80.0F;64.0F;64.0F;1.0F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("灵魂加速开启完毕，不支持关闭，只能单人挑战和人机")
	 gg.clearResults()
end

function HSa3()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("0.25F;1,051,931,443D;1,028,443,341Q",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.25F;1,051,931,443D;1,028,443,341Q",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9",gg.TYPE_FLOAT)
gg.editAll("-1,082,130,432",gg.TYPE_DWORD)
gg.editAll("1,091,567,616",gg.TYPE_QWORD)
gg.toast("弹簧遁地飞天加速")
end

function HSa4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.40129846e-45F;2.80259693e-45F;7.0F;1.75F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("蹲下可加速")
	 gg.clearResults()
end

function HS32()
	 Main0()
end

function Main24()
SN = gg.choice({
	 "¹龙-怒龙-改",
	 "²骑-死骑-9",
	 "³骑-神骑-5",
	 "⁴骑-究极死骑-改39",
	 "⁵骑-雷骑-8",
	 "⁶龙-狂龙-改37",
	 "⁷龙-狂龙格洛克",
	 "⁸龙-狂龙格洛克-改",
	 "⁹龙-狂龙WAP",
	 "¹⁰龙-雷龙双持",
	 "¹¹超-貂蝉楚楚-改",
	 "¹²骑-黑骑-改36",
	 "¹³龙-狂龙-改",
	 "¹⁴超-张飞",
	 "¹⁵骑-雷骑-9",
	 "¹⁶骑-雷骑-改",
	 "¹⁷骑-疾风-改36",
	 "¹⁸普-外籍军团",
	 "¹⁹龙-祥龙-改",
	 "²⁰魔-虚空-改",
	 "²¹龙-天龙-改",
	 "²²龙-炎龙",
	 "²³龙-迅龙",
     "²⁴超-猛狩-改",
     "²⁵骑-疾风-改37",
     "²⁶龙-究极祥龙-改39",
     "²⁷骑-究极疾风-改39",
     "²⁸龙-天龙-改37",
     "²⁹魔-烈焰-改37",
     "³⁰超-貂蝉-改37",
     "³¹龙-究极白祥-改39",
     "³²魔-究极烈焰-改39",
     "³³龙-威龙-改36",
     "³⁴龙-究极狂龙-改39",
     "³⁵超-电竞死星",
     "³⁶传奇-华佗-改37",
	 "³⁷返回主页",
}, nil, "Faine提供思路丶一叶知秋制作请勿二改贩卖/全局效果")
if SN==1 then
	 HS25()
end
if SN==2 then
	 HS26()
end
if SN==3 then
	 HS37()
end
if SN==4 then
	 HS87()
end
if SN==5 then
	 HS97()
end
if SN==6 then
	 HS71()
end
if SN==7 then
	 HS72()
end
if SN==8 then
	 HS73()
end
if SN==9 then
	 HS991()
end
if SN==10 then
	 HS992()
end
if SN==11 then
	 HS993()
end
if SN==12 then
	 HS994()
end
if SN==13 then
	 HS995()
end
if SN==14 then
	 HS996()
end
if SN==15 then
	 HS997()
end
if SN==16 then
	 HS998()
end
if SN==17 then
	 HS999()
end
if SN==18 then
	 HS199()
end
if SN==19 then
	 HS198()
end
if SN==20 then
	 HS197()
end
if SN==21 then
	 HS196()
end
if SN==22 then
	 HS195()
end
if SN==23 then
	 HS194()
end
if SN==24 then
	 HS193()
end
if SN==25 then
	 HS192()
end
if SN==26 then
	 HS191()
end
if SN==27 then
	 HS190()
end
if SN==28 then
	 HS189()
end
if SN==29 then
	 HS188()
end
if SN==30 then
	 HS187()
end
if SN==31 then
	 HS186()
end
if SN==32 then
	 HS185()
end
if SN==33 then
	 HS184()
end
if SN==34 then
	 HS183()
end
if SN==35 then
	 HSsx()
end
if SN==36 then
	 HSht()
end
if SN==37 then
	 HS33()
end
FX1=0
FX2=0
end



function HS33()
	 Main0()
end

function Main43()
SN = gg.choice({
	 "战队争霸-怪物爆头",
	 "降龙傻怪",
	 "降龙傻怪-关",
	 "百鬼傻怪",
	 "百鬼傻怪-关",
	 "俱乐部-傻怪",
	 "俱乐部-傻怪-关",
	 "老图挑战-部分傻怪",
	 "老图挑战-部分傻怪关",
	 "原地刷怪",
	 "驯龙刺刀加速-1级",
	 "炎龙刺刀加速-3级",
	 "黑骑刺刀加速-2级",
	 "炎龙刺刀加速-1级",
	 "爆骑刺刀加速-2级",
	 "返回主页",
}, nil, "挑战功能来自Faine丶夜仔丶刺刀加速由Faine提供思路")
if SN==1 then
	 HS44()
end
if SN==2 then
	 HS46()
end
if SN==3 then
	 HS47()
end
if SN==4 then
	 HS48()
end
if SN==5 then
	 HS49()
end
if SN==6 then
	 HS50()
end
if SN==7 then
	 HS51()
end
if SN==8 then
	 HS52()
end
if SN==9 then
	 HS53()
end
if SN==10 then
	 HS551()
end
if SN==11 then
	 HSb1()
end
if SN==12 then
	 HSb2()
end
if SN==13 then
	 HSb3()
end
if SN==14 then
	 HSb4()
end
if SN==15 then
	 HSb5()
end
if SN==16 then
	 HS45()
end
FX1=0
FX2=0
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(bit32.bor(gg.REGION_JAVA_HEAP,gg.REGION_C_HEAP,gg.REGION_C_ALLOC,gg.REGION_C_DATA,gg.REGION_C_BSS,gg.REGION_PPSSPP,gg.REGION_ANONYMOUS))
gg.clearResults(5000)
gg.toast('6%')
gg.searchNumber('3001~3024;120', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast('15%')
gg.searchNumber('3001~3024', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast('21%')
gg.getResults(5000)
gg.editAll('3015', gg.TYPE_DWORD)
gg.toast('35%')
gg.clearResults(5000)
gg.searchNumber('5201~5205;120', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast('51%')
gg.searchNumber('5201~5205', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll('3015', gg.TYPE_DWORD)
gg.toast('68%')
gg.clearResults(5000)
gg.searchNumber('3022;180', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast('79%')
gg.searchNumber('3022', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast('94%')
gg.getResults(5000)
gg.editAll('3015', gg.TYPE_DWORD)
gg.clearResults(5000) 
gg.toast('100%')
gg.toast('战队争霸丶怪物爆头-来自台湾作者-夜仔')
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("69764D;0.89999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.89999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("降龙傻怪开")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("69764D;999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.89999997616", gg.TYPE_FLOAT)
	 gg.toast("降龙傻怪-关")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2524D;0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("百鬼傻怪")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2524D;999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.10000000149", gg.TYPE_FLOAT)
	 gg.toast("百鬼傻怪-关")
	 gg.clearResults()
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.20000000298;2;0.10000000149;1;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8555", gg.TYPE_FLOAT)
	 gg.toast("俱乐部傻怪")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.20000000298;2;8555;1;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.10000000149", gg.TYPE_FLOAT)
	 gg.toast("俱乐部傻怪-关")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("10;0.89999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.89999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("PVE部分傻怪")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("10;999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.89999997616", gg.TYPE_FLOAT)
	 gg.toast("PVE部分傻怪-关")
	 gg.clearResults()
end
function HS551()
gg.clearResults()
gg.searchNumber("3001~3033;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3001~3033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("3101;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5201~5209;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5201~5209", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("3022;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("3005~3011;360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3005~3011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5102~5103;360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5102~5103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3010", gg.TYPE_DWORD)
gg.clearResults()
end

function HSb1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.17845557e-39F;9.80908925e-45F;0.68000000715F;0.43000000715F;2.45000004768F;1.68155816e-43F;8.40779079e-44F;8.40779079e-44F;2.66246708e-43F;4.20389539e-45F;5.04467447e-44F;9.24856986e-44F;4.76441478e-42F;4.76441478e-42F;1.40129846e-44F;0.00999999978F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.68000000715;0.43000000715", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("训龙1级刺刀开启完毕")
	 gg.clearResults()
end

function HSb2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.62000000477F;0.41999998689F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.62000000477;0.41999998689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("炎龙3级刺刀开启完毕")
	 gg.clearResults()
end

function HSb3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75F;0.43999999762F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.75;0.43999999762", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("黑骑2级刺刀开启完毕")
	 gg.clearResults()
end

function HSb4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.68000000715F;0.41999998689F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.68000000715;0.41999998689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("炎龙1级刺刀开启完毕")
	 gg.clearResults()
end

function HSb5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75F;0.43000000715F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.75;0.43000000715", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("爆骑2级刺刀开启完毕")
	 gg.clearResults()
end

function HS45()
	 Main0()
end

function HS21()
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