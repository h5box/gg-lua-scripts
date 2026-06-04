function Main0()
SN = gg.choice({
       "速刷功能",
       "稳定功能",
       "变态功能",
       "全部道具",
       "道具功能",
       "皮肤修改",
       "人物天赋",
       "猩猩功能",
       "武器修改",
       "娱乐功能",
       "道具免费",
       "效果修改",
       "大乱斗区",
       "功能自调",
       "防封功能",
       "修改天赋",
       "阵营修改",
       "按键修改",
       "解封设备",
       "快猫最帅",
       "返回凡间",
},true,"玄羽就是最牛的好吧️")
if SN==1 then Main100() end
if SN==2 then Main200() end
if SN==3 then Main300() end
if SN==4 then Main400() end
if SN==5 then MainHJ() end
if SN==6 then Main500() end
if SN==7 then MainRW() end
if SN==8 then MainBOSS() end
if SN==9 then Main800() end
if SN==10 then Main900() end
if SN==11 then Main1000() end
if SN==12 then BUFF() end
if SN==13 then Main1200() end
if SN==14 then Main1300() end
if SN==15 then Main1500() end
if SN==15 then Main1100() end
if SN==16 then xgtf() end
if SN==17 then xgzy() end
if SN==18 then ajxg() end
if SN==19 then Main1400() end
if SN==20 then JCGX() end
if SN==21 then Exit() end
end

function JCGX()
TT = "https://sharechain.qq.com/9d8157edc2b8d160e5"
KS = gg.makeRequest(TT).content
if KS==nil then gg.alert("网络链接不稳定") else
local KS1=KS:match("【公告】(.-)【公告】")
local KS2=KS:match("【版本】(.-)【版本】")
local KS3=KS:match("【链接】(.-)【链接】")
GT = gg.alert(KS1,"确定",nil,"检查更新")
if GT ~= 3 then else
if KS2 ~= BT then GX = gg.alert("最新版本"..KS2..",是否更新","更新",nil,"体验旧版本")
if GX ~= 3 then gg.copyText(KS3) gg.alert("已复制好链接\n"..KS3.."\n请前往浏览器粘贴下载") else end else gg.alert("当前版本已是最新版本！")
end
end
end
end

function ajxg()
WA= gg.multiChoice({
	 "火箭筒按键改拿家具【游戏开】",
	 "火箭筒按键改跳跃【游戏开】",
	 "捐钱按键改火箭筒发射【游戏开】",
	 "倒车按键改跳跃【游戏开】",
	 "皮卡改跳跃建【游戏开】",
	 "返回主页",
}, nil, "")
if WA==nil then else
if WA[1]==true then
	 aj1()
end
if WA[2]==true then
	 aj2()
end
if WA[3]==true then
	 aj3()
end
if WA[4]==true then
	 aj4()
end
if WA[5]==true then
	 aj5()
end
if WA[6]==true then
	 HOME()
end
end
FX1=0
end

function aj1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113;-1;101;-1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function aj2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113;-1;101;-1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function aj3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113;-1;1;6;1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function aj4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;119;-1;8;1;-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS638()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("16F;1D;101::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_DWORD)
	 gg.toast("跳跃开启成功")
	 gg.clearResults()
end


function xgzy()
ZY = gg.multiChoice({
	 "失忆者改追捕者阵营【大厅开】",
	 "小学妹改追捕者阵营【大厅开】",
	 "魔术师改追捕者阵营【大厅开】",
	 "BOSS改逃生者阵营【游戏开】",
	 "雇佣兵改逃生者阵营【大厅开】",
	 "女特工改逃生者阵营【大厅开】",
	 "机器人改逃生者阵营【大厅开】",
	 "BOSS改追捕者阵营【大厅开】",
	 "返回主页",
	 "退出脚本",
}, nil, "")
if ZY[1]==true then
	 zy1()
end
if ZY[2]==true then
	 zy2()
end
if ZY[3]==true then
	 zy3()
end
if ZY[4]==true then
	 zy4()
end
if ZY[5]==true then
	 zy5()
end
if ZY[6]==true then
	 zy6()
end
if ZY[7]==true then
	 zy7()
end
if ZY[8]==true then
	 zy8()
end
if ZY[9]==true then
	 HOME()
end
if ZY[10]==true then
	 zy10()
end
FX1=0
end

function zy1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("200;1;950001;100;0::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("失忆者改追捕者阵营开启成功")
	 gg.clearResults()
end

function zy2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;400;1;2;950001::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("小学妹改追捕者阵营开启成功")
	 gg.clearResults()
end

function zy3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;600;1;3;950001::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("魔术师改追捕者阵营开启成功")
	 gg.clearResults()
end

function zy4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;10000;2;100;0::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("魔猿机甲改逃生者阵营")
	 gg.clearResults()
end

function zy5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("200;1;950001;100;0::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("雇佣兵改逃生者阵营开启成功")
	 gg.clearResults()
end

function zy6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300;0;1;950001;100::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("女特工改逃生者阵营开启成功")
	 gg.clearResults()
end

function zy7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500;0;7;1;950001::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("机器人改逃生者阵营开启成功")
	 gg.clearResults()
end

function zy8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;10000;2;100;0::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("魔猿机甲改追捕者阵营开启成功")
	 gg.clearResults()
end


function zy9()
	 os.exit()
end


function xgtf()
XG=gg.choice({
"逃生者天赋改旧版魔术师天赋",
"逃生者天赋改旧版小学妹天赋",
"雇佣兵改旧版机器人天赋",
"雇佣兵改旧版女特工天赋",
"返回主页",
},true,"")
if XG==1 then XG1() end
if XG==2 then XG2() end
if XG==3 then XG3() end
if XG==4 then XG4() end
if XG==5 then HOME() end
FX1=0
end




function Main100()
FX1=1
KL =gg.multiChoice({
"🔥瞬间秒开锁(大厅)🔥",
"🔥开锁微加速(游戏)🔥",
"🔥疾跑长时间(大厅)🔥",
"🔥范围开锁①(游戏)🔥",
"🔥范围开锁②(游戏)🔥",
"🔥范围开锁③(游戏)🔥",
"🔥全地图救人(游戏)🔥",
"🔥Xa新透视(大厅)🔥",
"🔥逃生速刷区(速刷)🔥",
"💦返回功能区💦"
},nil, "秒开全局有效")
if KL == nil then else
if KL[1]==true then HS101() end
if KL[2]==true then HS102() end
if KL[3]==true then HS103() end
if KL[4]==true then HS104() end
if KL[5]==true then HS105() end
if KL[6]==true then HS106() end
if KL[7]==true then HS107() end
if KL[8]==true then HS108() end
if KL[9]==true then Main108() end
if KL[10]==true then HOME() end
end
end

function HS101()
qmnb = {
{["memory"] = 16384},
{["name"] = "秒开"},
{["value"] = 5.5, ["type"] = 16},
{["lv"] = 0.6875, ["offset"] = 96, ["type"] = 16},
{["lv"] = -1.3092761073756091E25, ["offset"] = 100, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function HS102()
qmnb = {
{["memory"] = 16384},
{["name"] = "微加速开锁"},
{["value"] = 5.5, ["type"] = 16},
{["lv"] = 0.6875, ["offset"] = 96, ["type"] = 16},
{["lv"] = -1.3092761073756091E25, ["offset"] = 100, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end


function HS103()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1000D;4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("疾跑无限开启成功💦")
gg.clearResults()
end


function HS104()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("30;0.2;1.3;1.3;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("范围开锁①开启成功")
gg.clearResults()
end

function HS105()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("范围开锁②开启成功")
gg.clearResults()
end

function HS106()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("范围开锁③开启成功")
gg.clearResults()
end

function HS107()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.alert("全屏救人开启成功")
gg.clearResults()
end

function HS108()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("Xa透视开启成功")
gg.clearResults()
end

function Main108()
menu =gg.multiChoice({
"⭐️疾跑加速(大厅)⭐️",
"⭐️疾跑无限(大厅)⭐️",
"⭐️秒开一切(游戏)⭐️",
"⭐️全屏开锁(游戏)⭐️",
"⭐️开启全部(游戏)⭐️",
"⭐️返回前页⭐️",
"返回",
}, nil, "")
if menu == nil then else
if menu[1]==true then HS109() end
if menu[2]==true then HS110() end
if menu[3]==true then HS111() end
if menu[4]==true then HS112() end
if menu[5]==true then HS113() end
if menu[6]==true then HS114() end
if menu[7]==true then HOME() end
end
FX1=0
end

function HS109()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3", gg.TYPE_FLOAT)
gg.toast("疾跑加速开启成功")
gg.clearResults()
end

function HS110()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1000D;4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("疾跑无限开启成功")
gg.clearResults()
end

function HS111()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("秒开锁开启成功")
gg.clearResults()
end

function HS112()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("范围开锁②开启成功")
gg.clearResults()
end

function HS113()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("疾跑加速开启成功")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1000D;4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("疾跑无限开启成功")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("秒开锁开启成功")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("范围开锁②开启成功")
gg.clearResults()
end

function HS114()
	 Main100()
end

function Main200()
FX2=1
SN = gg.multiChoice({
"人移动速度[微增大](游戏)",
"开锁头加速[微增大](游戏)",
"开锁头范围[微增大](游戏)",
"救队友范围[微增大](游戏)",
"开箱子范围[微增大](游戏)",
"火箭筒伤害[微增大](大厅)",
"火箭筒间隔[微增大](大厅)",
"⭐️返回功能区⭐️",
}, nil, "✨玄羽.制作✨")
if SN == nil then else
if SN[1]==true then HS201() end
if SN[2]==true then HS202() end
if SN[3]==true then HS203() end
if SN[4]==true then HS204() end
if SN[5]==true then HS205() end
if SN[6]==true then HS206() end
if SN[7]==true then HS207() end
if SN[8]==true then HOME() end
end
end

function HS201()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230887D;5.69346046448::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("230887", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5000000", gg.TYPE_DWORD)
gg.toast("加速开启成功")
gg.clearResults()
end

function HS202()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.toast("微加速开锁开启成功")
gg.clearResults()
end

function HS203()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3.5", gg.TYPE_FLOAT)
gg.toast("开锁范围增大开启成功")
gg.clearResults()
end

function HS204()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3.5", gg.TYPE_FLOAT)
gg.toast("范围救人增大开启成功")
gg.clearResults()
end

function HS205()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3.5", gg.TYPE_FLOAT)
gg.toast("补给箱范围增大开启成功")
gg.clearResults()
end

function HS206()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("火箭筒80伤害开启成功")
gg.clearResults()
end

function HS207()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.6", gg.TYPE_FLOAT)
gg.toast("火箭筒0.6间隔开启成功")
gg.clearResults()
end

function Main300()
FX3=1
SN=gg.multiChoice({
  "✨火箭筒没有间隔(大厅)✨",
  "✨火箭筒无后坐力(大厅)✨",
  "✨火箭筒变态伤害(大厅)✨",
  "✨火箭筒攻击长度(游戏)✨",
  "✨火箭筒秒换子弹(大厅)✨",
  "✨火箭筒无限弹夹(游戏)✨",
  "✨迫击炮秒杀伤害(大厅)✨",
  "✨迫击炮没有间隔(大厅)✨",
  "✨迫击炮全屏伤害(游戏)✨",
  "✨追捕者透视(游戏)✨",
  "✨4V1直开门(游戏)✨",
  "✨8V2直开门(游戏)✨",
  "✨皮卡无限(大厅)✨",
  "✨无限金币(游戏)✨",
  "✨倒地复活(游戏)✨",
  "✨倒地锁血(游戏)✨",
  "✨无限夹子(游戏)✨",
  "✨架子范围(游戏)✨",
  "✨人物穿墙(游戏)✨",
  "✨八二吸人(游戏)✨",
  "✨四一吸人(游戏)✨",
  "✨除树除草(大厅)✨",
  "✨跳高改无敌(大厅)✨",
  "✨疾跑改无敌(大厅)✨",
  "✨跳高改狂暴(大厅)✨",
  "✨手雷改泉水(大厅)✨",
  "✨追捕秒复活(游戏)✨",
  "✨追捕去护盾(游戏)✨",
  "✨追捕无限护盾(游戏)✨",
  "✨上帝视角[2倍](游戏)✨",
  "✨上帝视角[5倍](游戏)✨",
  "✨人物踏空(游戏)✨",
  "🔥返回主页[玄羽制作]🔥",
}, nil, "玄羽制作💦")
if SN == nil then else
if SN[1]==true then HS301() end
if SN[2]==true then HS302() end
if SN[3]==true then HS303() end
if SN[4]==true then HS304() end
if SN[5]==true then HS305() end
if SN[6]==true then HS306() end
if SN[7]==true then HS307() end
if SN[8]==true then HS308() end
if SN[9]==true then HS309() end
if SN[10]==true then HS310() end
if SN[11]==true then HS311() end
if SN[12]==true then HS312() end
if SN[13]==true then HS313() end
if SN[14]==true then HS314() end
if SN[15]==true then HS315() end
if SN[16]==true then HS316() end
if SN[17]==true then HS317() end
if SN[18]==true then HS318() end
if SN[19]==true then HS319() end
if SN[20]==true then HS320() end
if SN[21]==true then HS321() end
if SN[22]==true then HS322() end
if SN[23]==true then HS323() end
if SN[24]==true then HS324() end
if SN[25]==true then HS325() end
if SN[26]==true then HS326() end
if SN[27]==true then HS327() end
if SN[28]==true then HS328() end
if SN[29]==true then HS329() end
if SN[30]==true then HS330() end
if SN[31]==true then HS331() end
if SN[32]==true then HS332() end
if SN[33]==true then HOME() end
end
end



function HS301()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒0间隔开启成功")
gg.clearResults()
end

function HS302()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.4", gg.TYPE_FLOAT)
gg.toast("午后开启成功")
gg.clearResults()
end

function HS303()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("火箭筒变态伤害开启成功")
gg.clearResults()
end

function HS304()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("火箭筒射程开启成功")
	 gg.clearResults()
end

function HS305()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒秒换弹修改成功")
gg.clearResults()
end

function HS306()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;444444;444445;1D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_DWORD)
gg.toast("火箭筒无限子弹修改成功")
gg.clearResults()
end

function HS307()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("迫击炮变态伤害开启成功")
gg.clearResults()
end

function HS308()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99", gg.TYPE_FLOAT)
	 gg.toast("迫击炮无间隔开启成功")
	 gg.clearResults()
end

function HS309()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("追击炮全屏范围开启成功")
	 gg.clearResults()
end

function HS310()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;1,082,467,303D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("追捕透视开启成功")
	 gg.clearResults()
end

function HS311()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4V1直接开门开启成功")
end

function HS312()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8人秒到逃生门")
end

function HS313()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("皮卡无限时间开启成功")
	 gg.clearResults()
end

function HS314()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("444444D;70F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_DWORD)
gg.toast("无限金币开启成功")
gg.clearResults()
end

function HS315()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("倒地复活开启成功")
gg.clearResults()
end

function HS316()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("复活锁血开启成功")
	 gg.clearResults()
end

function HS317()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;120;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("无限夹子开启成功")
	 gg.clearResults()
end


function HS318()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1;1D;10D;1D;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("范围拆架子开启成功")
	 gg.clearResults()
end

function HS319()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("穿墙开启成功")
	 gg.clearResults()
end


function HS320()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("8v2吸人开启成功")
	 gg.clearResults()
end

function HS321()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("4v1吸人开启成功")
	 gg.clearResults()
end

function HS322()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("2.25;3.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("除草除树开启成功")
	 gg.clearResults()
end

function HS323()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("102D;1.4012985e-45F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3000", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3000D;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4.2038954e-45", gg.TYPE_FLOAT)
	 gg.toast("无敌开启成功（购买一下跳高）")
	 gg.clearResults()
end

function HS324()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001;100;200;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("免费购买无敌开启成功")
	 gg.clearResults()
end

function HS325()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("201;102;105::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("301", gg.TYPE_DWORD)
	 gg.toast("狂暴开启成功")
	 gg.clearResults()
end

function HS326()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;103;400;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;110;401;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500300", gg.TYPE_DWORD)
	 gg.toast("第二步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300;110;400;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1011", gg.TYPE_DWORD)
	 gg.toast("手雷改泉水开启成功")
	 gg.clearResults()
end

function HS327()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.5;0.2;1.4;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5;1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("追捕者秒复活开启成功")
	 gg.clearResults()
end

function HS328()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("追捕者去除护盾")
	 gg.clearResults()
end

function HS329()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_FLOAT)
	 gg.toast("追捕者无限护盾除护盾")
	 gg.clearResults()
end

function HS330()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24", gg.TYPE_FLOAT)
	 gg.toast("视野二倍开启成功")
	 gg.clearResults()
end

function HS331()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("视野五倍开启成功")
	 gg.clearResults()
end

function HS332()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("6.16297729e-33;0.07999999821:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("人物踏空开启成功")
	 gg.clearResults()
end

function Main400()
FX4=1
SN = gg.choice({
"💦选择道具(游戏)💦",
"💦免费冷却(大厅)💦",
"💦黄金皮肤(大厅)💦",
"💦修改道具(大厅)💦",
"💦引力场功能💦",
"✨返回主页(玄羽)✨",
}, true, "[玄羽制作]")
if SN == nil then else
if SN==1 then MainXZ() end
if SN==2 then MainMF() end
if SN==3 then MainPF() end
if SN==4 then DJXG() end
if SN==5 then Main1() end
if SN==6 then HOME() end
end
end

function Main1()
SN = gg.multiChoice({
"四级皮肤",
"七级皮肤",
"范围吸人(放一个在点)",
"秒杀伤害(游戏)",
"免费购买(大厅)",
"零属性(免费+冷却)",
"没有冷却(大厅)",
"吸人buff改眩晕buff(游戏)",
"全屏范围(放一个再点)",
"手榴弹改引力场(大厅)",
"返回主页",
},nil,"新道具:引力场功能区")
if SN == nil then else
if SN[1]==true then HS10() end
if SN[2]==true then HS11() end
if SN[3]==true then HS12() end
if SN[4]==true then HS13() end
if SN[5]==true then HS14() end
if SN[6]==true then HS15() end
if SN[7]==true then HS16() end
if SN[8]==true then HS17() end
if SN[9]==true then HS18() end
if SN[10]==true then HS19() end
if SN[11]==true then HOME() end
end
FX1=0
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600555", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600560", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500;2.5;2.5;0.2::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("引力场全屏吸人开启成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;1.5;0.3;0.2;6;-0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("引力场秒杀开启成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1021D;3;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("引力场无冷却开启成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501109;118;1003", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("118", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("引力场属性开启成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1021D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("引力场无冷却开启成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25F;502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("105", gg.TYPE_FLOAT)
	 gg.toast("引力场改手雷眩晕开启成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;0.3;6;0.2;-0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS19()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("1003",gg.TYPE_DWORD)
gg.toast("手榴弹改疾跑开启成功")
end

function MainXZ()
XZ = gg.choice({
"疾跑",
"跳高",
"手榴弹",
"皮卡车",
"肾上腺素",
"魔法墙",
"滑板",
"阻挡箱",
"医疗包",
"传送门",
"逻辑犬",
"酒桶",
"飞爪",
"自走球",
"雷达",
"生命上限",
"侦查眼",
"火箭筒",
"迫击炮",
"返回主页",
}, true, "玄羽制作\n『注本功能区只更新到滑板敬请期待』")
if XZ == nil then else
if XZ==1 then Main410() end
if XZ==2 then Main420() end
if XZ==3 then Main430() end
if XZ==4 then Main440() end
if XZ==5 then Main450() end
if XZ==6 then Main460() end
if XZ==7 then Main470() end
if XZ==8 then Main480() end
if XZ==9 then Main490() end
if XZ==10 then Main415() end
if XZ==11 then Main425() end
if XZ==12 then Main435() end
if XZ==13 then Main445() end
if XZ==14 then Main455() end
if XZ==15 then Main465() end
if XZ==16 then Main475() end
if XZ==17 then Main485() end
if XZ==18 then Main495() end
if XZ==19 then MainZH() end
if XZ==20 then HSC() end
end
FX1=0
end

function Main410()
  XZ1 =gg.multiChoice({
  "无限时间(大厅)",
  "Buff加速(大厅)",
  "十级皮肤(大厅)",
  "黄金皮肤(游戏)",
  "返回主页",
}, nil, "大厅开启")
if XZ1 == nil then else
if XZ1[1]==true then JPSJ() end
if XZ1[2]==true then JPJS() end
if XZ1[3]==true then JP10() end
if XZ1[4]==true then JP13() end
if XZ1[5]==true then Main0() end
end
FX1=0
end

function JPSJ()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1000D;4.3",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function JPJS()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("加速开启成功")
	 gg.clearResults()
end

function JP10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600061", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function JP13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600066", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Main420()
  XZ2 =gg.multiChoice({
  "无限时间",
  "10级皮肤",
  "13级皮肤",
  "返回主页",
}, nil, "大厅开启")
if XZ2 == nil then else
if XZ2[1]==true then TGSJ() end
if XZ2[2]==true then TG10() end
if XZ2[3]==true then TG13() end
if XZ2[4]==true then Main0() end
end
FX1=0
end

function TGSJ()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1000D;4.3",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function TG10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600111", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function TG13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Main430()
  XZ3 =gg.multiChoice({
  "道具免费(大厅)",
  "手雷秒杀(游戏)",
  "全屏范围(游戏)",
  "0眩晕时间(游戏)",
  "被炸加速(游戏)",
  "10级皮肤(大厅)",
  "13级皮肤(大厅)",
  "返回主页",
}, nil, "大厅开启")
if XZ3 == nil then else
if XZ3[1]==true then SLMS() end
if XZ3[2]==true then SLQP() end
if XZ3[3]==true then YYSJ() end
if XZ3[4]==true then BZJS() end
if XZ3[5]==true then SL10() end
if XZ3[6]==true then SL13() end
if XZ3[7]==true then Main0() end
end
FX1=0
end


function SLMS()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("手雷秒杀开启成功")
	 gg.clearResults()
end

function SLQP()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_FLOAT)
	 gg.toast("手榴弹全屏范围开启成功")
	 gg.clearResults()
end

function YYSJ()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;1002D;500004D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("手雷无眩晕时间开启成功")
	 gg.clearResults()
end

function BZJS()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;-0.75;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("手雷眩晕加速开启成功")
	 gg.clearResults()
end

function SL10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600046", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function SL13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("修改修改")
	 gg.clearResults()
end

function Main440()
  XZ4 =gg.multiChoice({
  "无限时间",
  "道具免费",
  "2倍加速",
  "十级皮肤",
  "黄金皮肤",
  "返回主页",
}, nil, "")
if XZ5 == nil then else
if XZ4[1]==true then PKSJ() end
if XZ4[2]==true then PKMF() end
if XZ4[3]==true then EBJS() end
if XZ4[4]==true then PK10() end
if XZ4[5]==true then PK13() end
if XZ4[6]==true then Main0() end
end
FX1=0
end

function PKSJ()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("皮卡无限时间开启成功")
	 gg.clearResults()
end

function PKMF()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("搜索数值",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function EBJS()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1003D;1;0.01;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("皮卡2倍速度开启成功")
	 gg.clearResults()
end

function PK10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600006", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function PK13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function Main450()
  XZ5 =gg.multiChoice({
  "无冷却",
  "无限时间",
  "十级皮肤",
  "黄金皮肤",
  "返回主页",
}, nil, "")
if XZ5 == nil then else
if XZ5[1]==true then ZLQ() end
if XZ5[2]==true then ZSJ() end
if XZ5[3]==true then Z10() end
if XZ5[4]==true then Z13() end
if XZ5[5]==true then Main0() end
end
FX1=0
end

function ZLQ()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ZSJ()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;-0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function Z10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600176", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Z13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main460()
  XZ6 =gg.multiChoice({
  "[玄羽制作]",
  "道具免费",
  "无限时间",
  "加速buff修改艾克技能buff",
  "减速buff修改艾可技能buff",
  "减速buff修改护盾buff",
  "加速buff修改护盾buff",
  "加速buff修改暴走buff",
  "减速buff修改暴走buff",
  "加速buff修改酒桶眩晕",
  "减速buff修改酒桶眩晕",
  "加速buff修改毒液减速",
  "减速buff修改毒液减速",
  "返回主页",
}, nil, "修改buff只能在人机局有效(改buff人机局有效而已)")
if XZ6 == nil then else
if XZ6[1]==true then WFZZ() end
if XZ6[2]==true then MFQMF() end
if XZ6[3]==true then MFQSJ() end
if XZ6[4]==true then JSGAK() end
if XZ6[5]==true then JSGAK1() end
if XZ6[6]==true then JSGHD() end
if XZ6[7]==true then JSGHD1() end
if XZ6[8]==true then JSGBZ() end
if XZ6[9]==true then JSGBZ1() end
if XZ6[10]==true then JSGYY() end
if XZ6[11]==true then JSGYY1() end
if XZ6[12]==true then JSGDY() end
if XZ6[13]==true then JSGDY1() end
if XZ6[14]==true then HOME() end
end
FX1=0
end

function WFZZ()
gg.toast("不要点我😅")
end

function MFQMF()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("搜索数值",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function MFQSJ()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("搜索数值",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function JSGAK()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("202", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGAK1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGHD()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGHD()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGBZ()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGBZ1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGYY()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGYY1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGDY()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function JSGDY1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("202;203::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("203", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("404",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function FH33()
Main0()
end

function Main470()
XZ7 =gg.multiChoice({
"皮卡改滑板",
"滑板暂无功能",
},nil,"by玄羽")
if XZ7 == nil then else
if XZ7[1]==true then PKHB() end
if XZ7[2]==true then HS4949() end
end
FX1=0
end

function PKHB()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16F;1D;101D",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("滑板改皮卡开启成功")
end

function MainZH()
ZH =gg.multiChoice({
"迫击炮秒杀力(大厅)",
"迫击炮无间隔(大厅)",
"迫击炮秒换弹(大厅)",
"一级无限子弹(大厅)",
"二级无限子弹(大厅)",
"三级无限子弹(大厅)",
"返回主页(玄羽)",
},nil,"")
if ZH == nil then else
if ZH[1]==true then ZH1() end
if ZH[2]==true then ZH2() end
if ZH[3]==true then ZH3() end
if ZH[4]==true then ZH4() end
if ZH[5]==true then ZH5() end
if ZH[6]==true then ZH6() end
if ZH[7]==true then ZH7() end
end
FX1=0
end

function ZH1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("8000", gg.TYPE_FLOAT)
gg.toast("迫击炮秒杀开启成功")
gg.clearResults()
end

function ZH2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("迫击炮无间隔开启成功")
	 gg.clearResults()
end

function ZH3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.6;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("迫击炮秒换弹开启成功")
	 gg.clearResults()
end

function ZH4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_DWORD)
	 gg.toast("玄羽制作")
	 gg.clearResults()
end

function ZH5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;3D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("玄羽制作")
	 gg.clearResults()
end

function ZH6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;4D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_DWORD)
	 gg.toast("玄羽制作")
	 gg.clearResults()
end

function ZH7()
Main0()
end

function HS4949()
Main0()
end

function MainMF()
MF =gg.multiChoice({
	 "疾跑(大厅)",
	 "跳高(大厅)",
	 "医疗包(大厅)",
	 "手雷(大厅)",
	 "阻挡箱(大厅)",
	 "皮卡(大厅)",
	 "侦查眼(大厅)",
	 "生命上限(大厅)",
	 "逻辑犬(大厅)",
	 "飞爪(大厅)",
	 "肾上腺素(大厅)",
	 "酒桶(大厅)",
	 "雷达(大厅)",
	 "火箭筒(大厅)",
	 "追击炮(大厅)",
	 "返回主页",
},nil,"先开改皮肤再开免费再开改道具")
if MF == nil then else
if MF[1]==true then MF1() end
if MF[2]==true then MF2() end
if MF[3]==true then MF3() end
if MF[4]==true then MF4() end
if MF[5]==true then MF5() end
if MF[6]==true then MF6() end
if MF[7]==true then MF7() end
if MF[8]==true then MF8() end
if MF[9]==true then MF9() end
if MF[10]==true then MF10() end
if MF[11]==true then MF11() end
if MF[12]==true then MF12() end
if MF[13]==true then MF13() end
if MF[14]==true then MF14() end
if MF[15]==true then MF15() end
if MF[16]==true then MF16() end
end
FX1=0
end

function MF1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001;100;200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006;105;201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;104;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;103;400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008;107;301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002;101;111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003;102;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500007;106;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200;109;700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("109", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500;112;801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300;110;701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400;111;800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0 ", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500009;108;600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020;110;210", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function MF16()
	 Main0()
end

function MainPF()
HJ = gg.choice({
	 "疾跑(13级皮肤)",
	 "跳高(13级皮肤)",
	 "手雷(13级皮肤)",
	 "火箭筒(13级皮肤)",
	 "医疗箱(13级皮肤)",
	 "皮卡(13级皮肤)",
	 "侦查眼(13级皮肤)",
	 "冲锋枪(13级皮肤)",
	 "酒桶(13级皮肤)",
	 "自走球(13级皮肤)",
	 "阻挡箱(13级皮肤)",
	 "传送门(13级皮肤)",
	 "飞爪(13级皮肤)",
	 "狗(13级皮肤)",
	 "针(13级皮肤)",
	 "迫机炮(13级皮肤)",
	 "毒液(13级皮肤)",
	 "返回主页",
}, true, "")
if HJ == nil then else
if HJ==1 then HJ1() end
if HJ==2 then HJ2() end
if HJ==3 then HJ3() end
if HJ==4 then HJ4() end
if HJ==5 then HJ5() end
if HJ==6 then HJ6() end
if HJ==7 then HJ7() end
if HJ==8 then HJ8() end
if HJ==9 then HJ9() end
if HJ==10 then HJ10() end
if HJ==11 then HJ11() end
if HJ==12 then HJ12() end
if HJ==13 then HJ13() end
if HJ==14 then HJ14() end
if HJ==15 then HJ15() end
if HJ==16 then HJ16() end
if HJ==17 then HJ17() end
if HJ==18 then HJFH() end
end
FX1=0
end

function HJ1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600066", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600471", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600251", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600311", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600321", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600281", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600331", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600276", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600216", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJ17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600431", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HJFH()
Main0()
end

function DJXG()
GD = gg.choice({
"疾跑(大厅)",
"跳高(大厅)",
"医疗箱(大厅)",
"手榴弹(大厅)",
"雷达(大厅)",
"生命上限(大厅)",
"飞爪(大厅)",
"酒桶(大厅)",
"皮卡车(大厅)",
"侦查眼(大厅)",
"自走球(大厅)",
"阻挡箱(大厅)",
"传送门(大厅)",
"逻辑犬(大厅)",
"肾上腺素(大厅)",
"毒液(大厅)",
"魔法墙(大厅)",
"滑板(大厅)",
"返回主页",
},nil,"自建房娱乐娱乐就好\n实战不稳")
if GD == nil then else
if GD==1 then DJ1() end
if GD==2 then DJ2() end
if GD==3 then DJ3() end
if GD==4 then DJ4() end
if GD==5 then DJ5() end
if GD==6 then DJ6() end
if GD==7 then DJ7() end
if GD==8 then DJ8() end
if GD==9 then DJ9() end
if GD==10 then DJ10() end
if GD==11 then DJ11() end
if GD==12 then DJ12() end
if GD==13 then DJ13() end
if GD==14 then DJ14() end
if GD==15 then DJ15() end
if GD==16 then DJ16() end
if GD==17 then DJ17() end
if GD==18 then DJ18() end
if GD==19 then DFH() end
end
FX1=0
end

function DJ1()
GD1 = gg.choice({
"疾跑改跳高",
"疾跑改医疗包",
"疾跑改手榴弹",
"疾跑改雷达",
"疾跑改生命上限",
"疾跑改飞爪",
"疾跑改酒桶",
"疾跑改皮卡",
"疾跑改侦查眼",
"疾跑改自走球",
"疾跑改传送门",
"疾跑改逻辑犬",
"疾跑改肾上腺素",
"疾跑改毒液",
"疾跑改滑板",
"疾跑改魔法墙",
},nil,"")
if GD1==1 then JP1() end
if GD1==2 then JP2() end
if GD1==3 then JP3() end
if GD1==4 then JP4() end
if GD1==5 then JP5() end
if GD1==6 then JP6() end
if GD1==7 then JP7() end
if GD1==8 then JP8() end
if GD1==9 then JP9() end
if GD1==10 then JP10() end
if GD1==11 then JP11() end
if GD2==12 then JP12() end
if GD1==13 then JP13() end
if GD1==14 then JP14() end
if GD1==15 then JP15() end
if GD1==16 then JP16() end
FX1=0
end

function JP1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("疾跑改跳高开启成功")
end

function JP2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("疾跑改医疗包开启成功")
end

function JP3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("疾跑改手榴弹开启成功")
end

function JP4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("疾跑改雷达开启成功")
end

function JP5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("疾跑改生命上限开启成功")
end

function JP6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("疾跑改飞爪开启成功")
end

function JP7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("疾跑改酒桶开启成功")
end

function JP8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("疾跑改皮卡开启成功")
end

function JP9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("疾跑改阻挡箱开启成功")
end

function JP10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("疾跑改阻挡箱开启成功")
end

function JP11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("疾跑改传送门开启成功")
end

function JP12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("疾跑改逻辑犬开启成功")
end

function JP13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("疾跑改肾上腺素开启成功")
end

function JP14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("疾跑改毒液开启成功")
end

function JP15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("疾跑改滑板开启成功")
end

function JP16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500001;200;0",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("疾跑改魔法墙开启成功")
end

function DJ2()
GD2 = gg.choice({
"跳高改疾跑",
"跳高改医疗包",
"跳高改手榴弹",
"跳高改雷达",
"跳高改生命上限",
"跳高改飞爪",
"跳高改酒桶",
"跳高改皮卡",
"跳高改阻挡箱",
"跳高改自走球",
"跳高改传送门",
"跳高改逻辑犬",
"跳高改肾上腺素",
"跳高改毒液",
"跳高改滑板",
"跳高改魔法墙",
},nil,"")
if DG2==1 then TG1() end
if DG2==2 then TG2() end
if DG2==3 then TG3() end
if DG2==4 then TG4() end
if DG2==5 then TG5() end
if DG2==6 then TG6() end
if DG2==7 then TG7() end
if DG2==8 then TG8() end
if DG2==9 then TG9() end
if DG2==10 then TG10() end
if DG2==11 then TG11() end
if DG2==12 then TG12() end
if DG2==13 then TG13() end
if DG2==14 then TG14() end
if DG2==15 then TG15() end
if DG2==16 then TG16() end
FX1=0
end

function TG1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("跳高改疾跑开启成功")
end

function TG2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("跳高改医疗包开启成功")
end

function TG3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("跳高改手榴弹开启成功")
end

function TG4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("跳高改雷达开启成功")
end

function TG5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("跳高改生命上限开启成功")
end

function TG6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("跳高改飞爪开启成功")
end

function TG7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("跳高改酒桶开启成功")
end

function TG8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("跳高改皮卡开启成功")
end

function TG9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("跳高改阻挡箱开启成功")
end

function TG10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("跳高改阻挡箱开启成功")
end

function TG11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("跳高改传送门开启成功")
end

function TG12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("跳高改逻辑犬开启成功")
end

function TG13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("跳高改肾上腺素开启成功")
end

function TG14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("跳高改毒液开启成功")
end

function TG15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("跳高改滑板开启成功")
end

function TG16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500006;0;200",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(201)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("跳高改魔法墙开启成功")
end

function DJ3()
GD3 = gg.choice({
"医疗包改疾跑",
"医疗包改跳高",
"医疗包改手榴弹",
"医疗包改雷达",
"医疗包改生命上限",
"医疗包改飞爪",
"医疗包改酒桶",
"医疗包改皮卡",
"医疗包改阻挡箱",
"医疗包改自走球",
"医疗包改传送门",
"医疗包改逻辑犬",
"医疗包改肾上腺素",
"医疗包改毒液",
"医疗包改滑板",
"医疗包改魔法墙",
},nil,"")
if GD3==1 then YIB1() end
if GD3==2 then YIB2() end
if GD3==3 then YIB3() end
if GD3==4 then YIB4() end
if GD3==5 then YIB5() end
if GD3==6 then YIB6() end
if GD3==7 then YIB7() end
if GD3==8 then YIB8() end
if GD3==9 then YIB9() end
if GD3==10 then YIB10() end
if GD3==11 then YIB11() end
if GD3==12 then YIB12() end
if GD3==13 then YIB13() end
if GD3==14 then YIB14() end
if GD3==15 then YIB15() end
if GD3==16 then YIB16() end
FX1=0
end

function YIB1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("医疗包改疾跑开启成功")
end

function YIB2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("医疗包改跳高开启成功")
end

function YIB3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("医疗包改手榴弹开启成功")
end

function YIB4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("医疗包改雷达开启成功")
end

function YIB5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("医疗包改生命上限开启成功")
end

function YIB6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("医疗包改飞爪开启成功")
end

function YIB7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("医疗包改酒桶开启成功")
end

function YIB8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("医疗包改皮卡开启成功")
end

function YIB9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("医疗包改阻挡箱开启成功")
end

function YIB10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("医疗包改阻挡箱开启成功")
end

function YIB11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("医疗包改传送门开启成功")
end

function YIB12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("医疗包改逻辑犬开启成功")
end

function YIB13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("医疗包改肾上腺素开启成功")
end

function YIB14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("医疗包改毒液开启成功")
end

function YIB15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("医疗包改滑板开启成功")
end

function YIB16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;0;401",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(401)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("医疗包改魔法墙开启成功")
end

function DJ4()
GD4 = gg.choice({
"手榴弹改疾跑",
"手榴弹改跳高",
"手榴弹改医疗包",
"手榴弹改雷达",
"手榴弹改生命上限",
"手榴弹改飞爪",
"手榴弹改酒桶",
"手榴弹改皮卡",
"手榴弹改阻挡箱",
"手榴弹改自走球",
"手榴弹改传送门",
"手榴弹改逻辑犬",
"手榴弹改肾上腺素",
"手榴弹改毒液",
"手榴弹改滑板",
"手榴弹改魔法墙",
},nil,"")
if GD4==1 then SLD1() end
if GD4==2 then SLD2() end
if GD4==3 then SLD3() end
if GD4==4 then SLD4() end
if GD4==5 then SLD5() end
if GD4==6 then SLD6() end
if GD4==7 then SLD7() end
if GD4==8 then SLD8() end
if GD4==9 then SLD9() end
if GD4==10 then SLD10() end
if GD4==11 then SLD11() end
if GD4==12 then SLG12() end
if GD4==13 then SLD13() end
if GD4==14 then SLD14() end
if GD4==15 then SLD15() end
if GD4==16 then SLD16() end
FX1=0
end

function SLD1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("手榴弹改疾跑开启成功")
end

function SLD2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("手榴弹改跳高开启成功")
end

function SLD3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("手榴弹改医疗包开启成功")
end

function SLD4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("手榴弹改雷达开启成功")
end

function SLD5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("手榴弹改生命上限开启成功")
end

function SLD6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("手榴弹改飞爪开启成功")
end

function SLD7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("手榴弹改酒桶开启成功")
end

function SLD8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("手榴弹改皮卡开启成功")
end

function SLD9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("手榴弹改阻挡箱开启成功")
end

function SLD10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("手榴弹改自走球开启成功")
end

function SLD11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("手榴弹改传送门开启成功")
end

function SLD12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("手榴弹改逻辑犬开启成功")
end

function SLD13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("手榴弹改肾上腺素开启成功")
end

function SLD14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("手榴弹改毒液开启成功")
end

function SLD15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("手榴弹改滑板开启成功")
end

function SLD16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500004;0;400",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(400)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("手榴弹改魔法墙开启成功")
end

function DJ5()
GD5 = gg.choice({
"雷达改疾跑",
"雷达改跳高",
"雷达改医疗包",
"雷达改手榴弹",
"雷达改生命上限",
"雷达改飞爪",
"雷达改酒桶",
"雷达改皮卡",
"雷达改阻挡箱",
"雷达改自走球",
"雷达改传送门",
"雷达改逻辑犬",
"雷达改肾上腺素",
"雷达改毒液",
"雷达改滑板",
"雷达改魔法墙",
},nil,"")
if GD5==1 then LD1() end
if GD5==2 then LD2() end
if GD5==3 then LD3() end
if GD5==4 then LD4() end
if GD5==5 then LD5() end
if GD5==6 then LD6() end
if GD5==7 then LD7() end
if GD5==8 then LD8() end
if GD5==9 then LD9() end
if GD5==10 then LD10() end
if GD5==11 then LD11() end
if GD5==12 then LD12() end
if GD5==13 then LD13() end
if GD5==14 then LD14() end
if GD5==15 then LD15() end
if GD5==16 then LD16() end
FX1=0
end

function LD1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("雷达改疾跑开启成功")
end

function LD2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("雷达改跳高开启成功")
end

function LD3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("雷达改医疗包开启成功")
end

function LD4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("雷达改手榴弹开启成功")
end

function LD5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("雷达改生命上限开启成功")
end

function LD6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("雷达改飞爪开启成功")
end

function LD7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("雷达改酒桶开启成功")
end

function LD8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("雷达改皮卡开启成功")
end

function LD9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("300",gg.TYPE_DWORD)
gg.toast("雷达改阻挡箱开启成功")
end

function LD10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("雷达改自走球开启成功")
end

function LD11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("雷达改传送门开启成功")
end

function LD12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("雷达改逻辑犬开启成功")
end

function LD13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("雷达改肾上腺素开启成功")
end

function LD14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("雷达改毒液开启成功")
end

function LD15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("雷达改滑板开启成功")
end

function LD16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500009;0;600",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("600", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(600)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("雷达改魔法墙开启成功")
end

function DJ6()
GD6 = gg.choice({
"生命上限改疾跑",
"生命上限改跳高",
"生命上限改医疗包",
"生命上限改手榴弹",
"生命上限改雷达",
"生命上限改飞爪",
"生命上限改酒桶",
"生命上限改皮卡",
"生命上限改阻挡箱",
"生命上限改自走球",
"生命上限改传送门",
"生命上限改逻辑犬",
"生命上限改肾上腺素",
"生命上限改毒液",
"生命上限改滑板",
"生命上限改魔法墙",
},nil,"")
if GD6==1 then SMSX1() end
if GD6==2 then SMSX2() end
if GD6==3 then SMSX3() end
if GD6==4 then SMSX4() end
if GD6==5 then SMSX5() end
if GD6==6 then SMSX6() end
if GD6==7 then SMSX7() end
if GD6==8 then SMSX8() end
if GD6==9 then SMSX9() end
if GD6==10 then SMSX10() end
if GD6==11 then SMSX11() end
if GD6==12 then SMSX12() end
if GD6==13 then SMSX13() end
if GD6==14 then SMSX14() end
if GD6==15 then SMSX15() end
if GD6==16 then SMSX16() end
FX1=0
end

function SMSX1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("生命上限改疾跑开启成功")
end

function SMSX2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("生命上限改跳高开启成功")
end

function SMSX3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("生命上限改医疗包开启成功")
end

function SMSX4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("生命上限改手榴弹开启成功")
end

function SMSX5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("生命上限改雷达开启成功")
end

function SMSX6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("生命上限改飞爪开启成功")
end

function SMSX7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("生命上限改酒桶开启成功")
end

function SMSX8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("生命上限改皮卡开启成功")
end

function SMSX9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("生命上限改阻挡箱开启成功")
end

function SMSX10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("生命上限改自走球开启成功")
end

function SMSX11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("生命上限改传送门开启成功")
end

function SMSX12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("生命上限改逻辑犬开启成功")
end

function SMSX13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("生命上限改肾上腺素开启成功")
end

function SMSX14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("生命上限改毒液开启成功")
end

function SMSX15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("生命上限改滑板开启成功")
end

function SMSX16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500007;0;500",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("生命上限改魔法墙开启成功")
end

function DJ7()
GD7 = gg.choice({
"飞爪改疾跑",
"飞爪改跳高",
"飞爪改医疗包",
"飞爪改手榴弹",
"飞爪改雷达",
"飞爪改生命上限",
"飞爪改酒桶",
"飞爪改皮卡",
"飞爪改阻挡箱",
"飞爪改自走球",
"飞爪改传送门",
"飞爪改逻辑犬",
"飞爪改肾上腺素",
"飞爪改毒液",
"飞爪改滑板",
"飞爪改魔法墙",
},nil,"")
if GD7==1 then FZ1() end
if GD7==2 then FZ2() end
if GD7==3 then FZ3() end
if GD7==4 then FZ4() end
if GD7==5 then FZ5() end
if GD7==6 then FZ6() end
if GD7==7 then FZ7() end
if GD7==8 then FZ8() end
if GD7==9 then FZ9() end
if GD7==10 then FZ10() end
if GD7==11 then FZ11() end
if GD7==12 then FZ12() end
if GD7==13 then FZ13() end
if GD7==14 then FZ14() end
if GD7==15 then FZ15() end
if GD7==16 then FZ16() end
FX1=0
end

function FZ1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("飞爪改疾跑开启成功")
end

function FZ2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("飞爪改跳高开启成功")
end

function FZ3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("飞爪改医疗包开启成功")
end

function FZ4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("飞爪改手榴弹开启成功")
end

function FZ5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("飞爪改雷达开启成功")
end

function FZ6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("飞爪改生命上限开启成功")
end

function FZ7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("飞爪改酒桶开启成功")
end

function FZ8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("飞爪改皮卡开启成功")
end

function FZ9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("飞爪改阻挡箱开启成功")
end

function FZ10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("飞爪改自走球开启成功")
end

function FZ11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("飞爪改传送门开启成功")
end

function FZ12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("飞爪改逻辑犬开启成功")
end

function FZ13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("飞爪改肾上腺素开启成功")
end

function FZ14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("飞爪改毒液开启成功")
end

function FZ15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("飞爪改滑板开启成功")
end

function FZ16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500500;0;801",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("801", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("飞爪改魔法墙开启成功")
end

function DJ8()
GD8 = gg.choice({
"酒桶改疾跑",
"酒桶改跳高",
"酒桶改医疗包",
"酒桶改手榴弹",
"酒桶改雷达",
"酒桶改生命上限",
"酒桶改飞爪",
"酒桶改皮卡",
"酒桶改阻挡箱",
"酒桶改自走球",
"酒桶改传送门",
"酒桶改逻辑犬",
"酒桶改肾上腺素",
"酒桶改毒液",
"酒桶改滑板",
"酒桶改魔法墙",
},nil,"")
if GD8==1 then JT1() end
if GD8==2 then JT2() end
if GD8==3 then JT3() end
if GD8==4 then JT4() end
if GD8==5 then JT5() end
if GD8==6 then JT6() end
if GD8==7 then JT7() end
if GD8==8 then JT8() end
if GD8==9 then JT9() end
if GD8==10 then JT10() end
if GD8==11 then JT11() end
if GD8==12 then JT12() end
if GD8==13 then JT13() end
if GD8==14 then JT14() end
if GD8==15 then JT15() end
if GD8==16 then JT16() end
FX1=0
end

function JT1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("酒桶改疾跑开启成功")
end

function JT2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("酒桶改跳高开启成功")
end

function JT3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("酒桶改医疗包开启成功")
end

function JT4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("酒桶改手榴弹开启成功")
end

function JT5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("酒桶改雷达开启成功")
end

function JT6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("酒桶改生命上限开启成功")
end

function JT7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("酒桶改飞爪开启成功")
end

function JT8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("酒桶改皮卡开启成功")
end

function JT9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("300",gg.TYPE_DWORD)
gg.toast("酒桶改阻挡箱开启成功")
end

function JT10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("酒桶改自走球开启成功")
end

function JT11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("酒桶改传送门开启成功")
end

function JT12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("酒桶改逻辑犬开启成功")
end

function JT13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("酒桶改肾上腺素开启成功")
end

function JT14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("酒桶改毒液开启成功")
end

function JT15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("酒桶改滑板开启成功")
end

function JT16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500400;800",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("酒桶改魔法墙开启成功")
end

function DJ9()
GD9 = gg.choice({
"皮卡改疾跑",
"皮卡改跳高",
"皮卡改医疗包",
"皮卡改手榴弹",
"皮卡改雷达",
"皮卡改生命上限",
"皮卡改飞爪",
"皮卡改酒桶",
"皮卡改阻挡箱",
"皮卡改自走球",
"皮卡改传送门",
"皮卡改逻辑犬",
"皮卡改肾上腺素",
"皮卡改毒液",
"皮卡改滑板",
"皮卡改魔法墙",
},nil,"")
if GD9==1 then PKG1() end
if GD9==2 then PKG2() end
if GD9==3 then PKG3() end
if GD9==4 then PKG4() end
if GD9==5 then PKG5() end
if GD9==6 then PKG6() end
if GD9==7 then PKG7() end
if GD9==8 then PKG8() end
if GD9==9 then PKG9() end
if GD9==10 then PKG10() end
if GD9==11 then PKG11() end
if GD9==12 then PKG12() end
if GD9==13 then PKG13() end
if GD9==14 then PKG14() end
if GD9==15 then PKG15() end
if GD9==16 then PKG16() end
FX1=0
end

function PKG1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("皮卡改疾跑开启成功")
end

function PKG2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("皮卡改跳高开启成功")
end

function PKG3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("皮卡改医疗包开启成功")
end

function PKG4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("皮卡改手榴弹开启成功")
end

function PKG5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("皮卡改雷达开启成功")
end

function PKG6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("皮卡改生命上限开启成功")
end

function PKG7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("皮卡改飞爪开启成功")
end

function PKG8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("皮卡改酒桶开启成功")
end

function PKG9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("皮卡改阻挡箱开启成功")
end

function PKG10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("皮卡改自走球开启成功")
end

function PKG11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("皮卡改传送门开启成功")
end

function PKG12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("皮卡改逻辑犬开启成功")
end

function PKG13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("皮卡改肾上腺素开启成功")
end

function PKG14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("皮卡改毒液开启成功")
end

function PKG15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("皮卡改滑板开启成功")
end

function PKG16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500002;0;111",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("111", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("皮卡改魔法墙开启成功")
end

function DJ10()
GD10 = gg.choice({
"侦查眼改疾跑",
"侦查眼改跳高",
"侦查眼改医疗包",
"侦查眼改手榴弹",
"侦查眼改雷达",
"侦查眼改生命上限",
"侦查眼改飞爪",
"侦查眼改酒桶",
"侦查眼改皮卡",
"侦查眼改自走球",
"侦查眼改传送门",
"侦查眼改逻辑犬",
"侦查眼改肾上腺素",
"侦查眼改毒液",
"侦查眼改滑板",
"侦查眼改魔法墙",
},nil,"")
if GD10==1 then ZCY1() end
if GD10==2 then ZCY2() end
if GD10==3 then ZCY3() end
if GD10==4 then ZCY4() end
if GD10==5 then ZCY5() end
if GD10==6 then ZCY6() end
if GD10==7 then ZCY7() end
if GD10==8 then ZCY8() end
if GD10==9 then ZCY9() end
if GD10==10 then ZCY10() end
if GD10==11 then ZCY11() end
if GD10==12 then ZCY12() end
if GD10==13 then ZCY13() end
if GD10==14 then ZCY14() end
if GD10==15 then ZCY15() end
if GD10==16 then ZCY16() end
FX1=0
end

function ZCY1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("侦查眼改疾跑开启成功")
end

function ZCY2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("侦查眼改跳高开启成功")
end

function ZCY3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("侦查眼改医疗包开启成功")
end

function ZCY4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("侦查眼改手榴弹开启成功")
end

function ZCY5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("侦查眼改雷达开启成功")
end

function ZCY6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("侦查眼改生命上限开启成功")
end

function ZCY7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("侦查眼改飞爪开启成功")
end

function ZCY8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("侦查眼改酒桶开启成功")
end

function ZCY9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("侦查眼改皮卡开启成功")
end

function ZCY10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("侦查眼改自走球开启成功")
end

function ZCY11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("侦查眼改传送门开启成功")
end

function ZCY12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("侦查眼改逻辑犬开启成功")
end

function ZCY13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("侦查眼改肾上腺素开启成功")
end

function ZCY14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("侦查眼改毒液开启成功")
end

function ZCY15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("侦查眼改滑板开启成功")
end

function ZCY16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500003;0;300",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("300", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("侦查眼改魔法墙开启成功")
end

function DJ11()
GD11 = gg.choice({
"自走球改疾跑",
"自走球改跳高",
"自走球改医疗包",
"自走球改手榴弹",
"自走球改雷达",
"自走球改生命上限",
"自走球改飞爪",
"自走球改酒桶",
"自走球改皮卡",
"自走球改阻挡箱",
"自走球改传送门",
"自走球改逻辑犬",
"自走球改肾上腺素",
"自走球改毒液",
"自走球改滑板",
"自走球改魔法墙",
},nil,"")
if GD11==1 then ZZQ1() end
if GD11==2 then ZZQ2() end
if GD11==3 then ZZQ3() end
if GD11==4 then ZZQ4() end
if GD11==5 then ZZQ5() end
if GD11==6 then ZZQ6() end
if GD11==7 then ZZQ7() end
if GD11==8 then ZZQ8() end
if GD11==9 then ZZQ9() end
if GD11==10 then ZZQ10() end
if GD11==11 then ZZQ11() end
if GD11==12 then ZZQ12() end
if GD11==13 then ZZQ13() end
if GD11==14 then ZZQ14() end
if GD11==15 then ZZQ15() end
if GD11==16 then ZZQ16() end
FX1=0
end

function ZZQ1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("自走球改疾跑开启成功")
end

function ZZQ2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("自走球改跳高开启成功")
end

function ZZQ3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("自走球改医疗包开启成功")
end

function ZZQ4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("自走球改手榴弹开启成功")
end

function ZZQ5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("自走球改雷达开启成功")
end

function ZZQ6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("自走球改生命上限开启成功")
end

function ZZQ7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("自走球改飞爪开启成功")
end

function ZZQ8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("自走球改酒桶开启成功")
end

function ZZQ9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("自走球改皮卡开启成功")
end

function ZZQ10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("自走球改阻挡箱开启成功")
end

function ZZQ11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("自走球改传送门开启成功")
end

function ZZQ12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("自走球改逻辑犬开启成功")
end

function ZZQ13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("自走球改肾上腺素开启成功")
end

function ZZQ14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("自走球改毒液开启成功")
end

function ZZQ15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("自走球改滑板开启成功")
end

function ZZQ16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500700;0;901",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("901", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("自走球改魔法墙开启成功")
end

function DJ12()
GD12 = gg.choice({
"阻挡箱改疾跑",
"阻挡箱改跳高",
"阻挡箱改医疗包",
"阻挡箱改手榴弹",
"阻挡箱改雷达",
"阻挡箱改生命上限",
"阻挡箱改飞爪",
"阻挡箱改酒桶",
"阻挡箱改皮卡",
"阻挡箱改阻挡箱",
"阻挡箱改传送门",
"阻挡箱改逻辑犬",
"阻挡箱改肾上腺素",
"阻挡箱改毒液",
"阻挡箱改滑板",
"阻挡箱改魔法墙",
},nil,"")
if GD12==1 then ZDX1() end
if GD12==2 then ZDX2() end
if GD12==3 then ZDX3() end
if GD12==4 then ZDX4() end
if GD12==5 then ZDX5() end
if GD12==6 then ZDX6() end
if GD12==7 then ZDX7() end
if GD12==8 then ZDX8() end
if GD12==9 then ZDX9() end
if GD12==10 then ZDX10() end
if GD12==11 then ZDX11() end
if GD12==12 then ZDX12() end
if GD12==13 then ZDX13() end
if GD12==14 then ZDX14() end
if GD12==15 then ZDX15() end
if GD12==16 then ZDX16() end
FX1=0
end

function ZDX1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("阻挡箱改疾跑开启成功")
end

function ZDX2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("阻挡箱改跳高开启成功")
end

function ZDX3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("阻挡箱改医疗包开启成功")
end

function ZDX4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("阻挡箱改手榴弹开启成功")
end

function ZDX5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("阻挡箱改雷达开启成功")
end

function ZDX6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("阻挡箱改生命上限开启成功")
end

function ZDX7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("阻挡箱改飞爪开启成功")
end

function ZDX8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("阻挡箱改酒桶开启成功")
end

function ZDX9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("阻挡箱改皮卡开启成功")
end

function ZDX10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("阻挡箱改阻挡箱开启成功")
end

function ZDX11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("阻挡箱改传送门开启成功")
end

function ZDX12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("阻挡箱改逻辑犬开启成功")
end

function ZDX13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("阻挡箱改肾上腺素开启成功")
end

function ZDX14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("阻挡箱改毒液开启成功")
end

function ZDX15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("阻挡箱改滑板开启成功")
end

function ZDX16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500008;0;301",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("301", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("阻挡箱改魔法墙开启成功")
end

function DJ13()
GD13 = gg.choice({
"传送门改疾跑",
"传送门改跳高",
"传送门改医疗包",
"传送门改手榴弹",
"传送门改雷达",
"传送门改生命上限",
"传送门改飞爪",
"传送门改酒桶",
"传送门改皮卡",
"传送门改自走球",
"传送门改阻挡箱",
"传送门改逻辑犬",
"传送门改肾上腺素",
"传送门改毒液",
"传送门改滑板",
"传送门改魔法墙",
},nil,"")
if GD13==1 then CSM1() end
if GD13==2 then CSM2() end
if GD13==3 then CSM3() end
if GD13==4 then CSM4() end
if GD13==5 then CSM5() end
if GD13==6 then CSM6() end
if GD13==7 then CSM7() end
if GD13==8 then CSM8() end
if GD13==9 then CSM9() end
if GD13==10 then CSM10() end
if GD13==11 then CSM11() end
if GD13==12 then CSM12() end
if GD13==13 then CSM13() end
if GD13==14 then CSM14() end
if GD13==15 then CSM15() end
if GD13==16 then CSM16() end
FX1=0
end

function CSM1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("传送门改疾跑开启成功")
end

function CSM2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("传送门改跳高开启成功")
end

function CSM3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("传送门改医疗包开启成功")
end

function CSM4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("传送门改手榴弹开启成功")
end

function CSM5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("传送门改雷达开启成功")
end

function CSM6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("传送门改生命上限开启成功")
end

function CSM7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("传送门改飞爪开启成功")
end

function CSM8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("传送门改酒桶开启成功")
end

function CSM9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("传送门改皮卡开启成功")
end

function CSM10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("传送门改自走球开启成功")
end

function CSM11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("传送门改阻挡箱开启成功")
end

function CSM12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("传送门改逻辑犬开启成功")
end

function CSM13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("传送门改肾上腺素开启成功")
end

function CSM14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("传送门改毒液开启成功")
end

function CSM15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("传送门改滑板开启成功")
end

function CSM16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500600;0;900",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("传送门改魔法墙开启成功")
end

function DJ14()
GD14 = gg.choice({
"逻辑犬改疾跑",
"逻辑犬改跳高",
"逻辑犬改医疗包",
"逻辑犬改手榴弹",
"逻辑犬改雷达",
"逻辑犬改生命上限",
"逻辑犬改飞爪",
"逻辑犬改酒桶",
"逻辑犬改皮卡",
"逻辑犬改自走球",
"逻辑犬改阻挡箱",
"逻辑犬改阻挡箱",
"逻辑犬改肾上腺素",
"逻辑犬改毒液",
"逻辑犬改滑板",
"逻辑犬改魔法墙",
},nil,"")
if GD14==1 then LJQ1() end
if GD14==2 then LJQ2() end
if GD14==3 then LJQ3() end
if GD14==4 then LJQ4() end
if GD14==5 then LJQ5() end
if GD14==6 then LJQ6() end
if GD14==7 then LJQ7() end
if GD14==8 then LJQ8() end
if GD14==9 then LJQ9() end
if GD14==10 then LJQ10() end
if GD14==11 then LJQ11() end
if GD14==12 then LJQ12() end
if GD14==13 then LJQ13() end
if GD14==14 then LJQ14() end
if GD14==15 then LJQ15() end
if GD14==16 then LJQ16() end
FX1=0
end

function LJQ1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("逻辑犬改疾跑开启成功")
end

function LJQ2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("逻辑犬改跳高开启成功")
end

function LJQ3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("逻辑犬改医疗包开启成功")
end

function LJQ4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("逻辑犬改手榴弹开启成功")
end

function LJQ5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("逻辑犬改雷达开启成功")
end

function LJQ6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("逻辑犬改生命上限开启成功")
end

function LJQ7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("逻辑犬改飞爪开启成功")
end

function LJQ8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("逻辑犬改酒桶开启成功")
end

function LJQ9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("逻辑犬改皮卡开启成功")
end

function LJQ10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("逻辑犬改自走球开启成功")
end

function LJQ11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("逻辑犬改阻挡箱开启成功")
end

function LJQ12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("逻辑犬改传送门开启成功")
end

function LJQ13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("逻辑犬改肾上腺素开启成功")
end

function LJQ14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("逻辑犬改毒液开启成功")
end

function LJQ15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("逻辑犬改滑板开启成功")
end

function LJQ16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500200;0;700",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("逻辑犬改魔法墙开启成功")
end

function DJ15()
GD15 = gg.choice({
"肾上腺素改疾跑",
"肾上腺素改跳高",
"肾上腺素改医疗包",
"肾上腺素改手榴弹",
"肾上腺素改雷达",
"肾上腺素改生命上限",
"肾上腺素改飞爪",
"肾上腺素改酒桶",
"肾上腺素改皮卡",
"肾上腺素改自走球",
"肾上腺素改阻挡箱",
"肾上腺素改传送门",
"肾上腺素改逻辑犬",
"肾上腺素改毒液",
"肾上腺素改滑板",
"肾上腺素改魔法墙",
},nil,"")
if GD15==1 then SXXS1() end
if GD15==2 then SXXS2() end
if GD15==3 then SXXS3() end
if GD15==4 then SXXS4() end
if GD15==5 then SXXS5() end
if GD15==6 then SXXS6() end
if GD15==7 then SXXS7() end
if GD15==8 then SXXS8() end
if GD15==9 then SXXS9() end
if GD15==10 then SXXS10() end
if GD15==11 then SXXS11() end
if GD15==12 then SXXS12() end
if GD15==13 then SXXS13() end
if GD15==14 then SXXS14() end
if GD15==15 then SXXS15() end
if GD15==16 then SXXS16() end
FX1=0
end

function SXXS1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("肾上腺素改疾跑开启成功")
end

function SXXS2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("肾上腺素改跳高开启成功")
end

function SXXS3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("肾上腺素改医疗包开启成功")
end

function SXXS4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("肾上腺素改手榴弹开启成功")
end

function SXXS5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("肾上腺素改雷达开启成功")
end

function SXXS6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("肾上腺素改生命上限开启成功")
end

function SXXS7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("肾上腺素改飞爪开启成功")
end

function SXXS8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("肾上腺素改酒桶开启成功")
end

function SXXS9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("肾上腺素改皮卡开启成功")
end

function SXXS10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("肾上腺素改自走球开启成功")
end

function SXXS11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("肾上腺素改阻挡箱开启成功")
end

function SXXS12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("肾上腺素改传送门开启成功")
end

function SXXS13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("肾上腺素改逻辑犬开启成功")
end

function SXXS14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("肾上腺素改毒液开启成功")
end

function SXXS15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("肾上腺素改滑板开启成功")
end

function SXXS16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500300;0;701",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("701", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("肾上腺素改魔法墙开启成功")
end

function DJ16()
GD16 = gg.choice({
"毒液改疾跑",
"毒液改跳高",
"毒液改医疗包",
"毒液改手榴弹",
"毒液改雷达",
"毒液改生命上限",
"毒液改飞爪",
"毒液改酒桶",
"毒液改皮卡",
"毒液改自走球",
"毒液改阻挡箱",
"毒液改传送门",
"毒液改逻辑犬",
"毒液改毒液",
"毒液改滑板",
"毒液改魔法墙",
},nil,"")
if GD16==1 then DY1() end
if GD16==2 then DY2() end
if GD16==3 then DY3() end
if GD16==4 then DY4() end
if GD16==5 then DY5() end
if GD16==6 then DY6() end
if GD16==7 then DY7() end
if GD16==8 then DY8() end
if GD16==9 then DY9() end
if GD16==10 then DY10() end
if GD16==11 then DY11() end
if GD16==12 then DY12() end
if GD16==13 then DY13() end
if GD16==14 then DY14() end
if GD16==15 then DY15() end
if GD16==16 then DY16() end
FX1=0
end

function DY1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("毒液改疾跑开启成功")
end

function DY2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("毒液改跳高开启成功")
end

function DY3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("毒液改医疗包开启成功")
end

function DY4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("毒液改手榴弹开启成功")
end

function DY5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("毒液改雷达开启成功")
end

function DY6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("毒液改生命上限开启成功")
end

function DY7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("毒液改飞爪开启成功")
end

function DY8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("毒液改酒桶开启成功")
end

function DY9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("毒液改皮卡开启成功")
end

function DY10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("毒液改自走球开启成功")
end

function DY11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("毒液改阻挡箱开启成功")
end

function DY12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("毒液改传送门开启成功")
end

function DY13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("毒液改逻辑犬开启成功")
end

function DY14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("毒液改肾上腺素开启成功")
end

function DY15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("毒液改滑板开启成功")
end

function DY16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500800;0;1000",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("毒液改魔法墙开启成功")
end

function DJ17()
GD17 = gg.choice({
"魔法墙改疾跑",
"魔法墙改跳高",
"魔法墙改医疗包",
"魔法墙改手榴弹",
"魔法墙改雷达",
"魔法墙改生命上限",
"魔法墙改飞爪",
"魔法墙改酒桶",
"魔法墙改皮卡",
"魔法墙改自走球",
"魔法墙改阻挡箱",
"魔法墙改传送门",
"魔法墙改逻辑犬",
"魔法墙改肾上腺素",
"魔法墙改滑板",
"魔法墙改毒液",
},nil,"")
if GD17==1 then MFQ1() end
if GD17==2 then MFQ2() end
if GD17==3 then MFQ3() end
if GD17==4 then MFQ4() end
if GD17==5 then MFQ5() end
if GD17==6 then MFQ6() end
if GD17==7 then MFQ7() end
if GD17==8 then MFQ8() end
if GD17==9 then MFQ9() end
if GD17==10 then MFQ10() end
if GD17==11 then MFQ11() end
if GD17==12 then MFQ12() end
if GD17==13 then MFQ13() end
if GD17==14 then MFQ14() end
if GD17==15 then MFQ15() end
if GD17==16 then MFQ16() end
FX1=0
end

function MFQ1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("魔法墙改疾跑开启成功")
end

function MFQ2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("魔法墙改跳高开启成功")
end

function MFQ3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("魔法墙改医疗包开启成功")
end

function MFQ4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("魔法墙改手榴弹开启成功")
end

function MFQ5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("魔法墙改雷达开启成功")
end

function MFQ6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("魔法墙改生命上限开启成功")
end

function MFQ7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("魔法墙改飞爪开启成功")
end

function MFQ8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("魔法墙改酒桶开启成功")
end

function MFQ9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("魔法墙改皮卡开启成功")
end

function MFQ10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("魔法墙改自走球开启成功")
end

function MFQ11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("魔法墙改阻挡箱开启成功")
end

function MFQ12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("魔法墙改传送门开启成功")
end

function MFQ13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("魔法墙改逻辑犬开启成功")
end

function MFQ14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("魔法墙改肾上腺素开启成功")
end

function MFQ15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1001",gg.TYPE_DWORD)
gg.toast("魔法墙改滑板开启成功")
end

function MFQ16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("501000;0;1002",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("魔法墙改毒液开启成功")
end

function DJ18()
GD18 = gg.choice({
"滑板改疾跑",
"滑板改跳高",
"滑板改医疗包",
"滑板改手榴弹",
"滑板改雷达",
"滑板改生命上限",
"滑板改飞爪",
"滑板改酒桶",
"滑板改皮卡",
"滑板改自走球",
"滑板改阻挡箱",
"滑板改传送门",
"滑板改逻辑犬",
"滑板改肾上腺素",
"滑板改滑板",
"滑板改毒液",
},nil,"")
if GD18==1 then HB1() end
if GD18==2 then HB2() end
if GD18==3 then HB3() end
if GD18==4 then HB4() end
if GD18==5 then HB5() end
if GD18==6 then HB6() end
if GD18==7 then HB7() end
if GD18==8 then HB8() end
if GD18==9 then HB9() end
if GD18==10 then HB10() end
if GD18==11 then HB11() end
if GD18==12 then HB12() end
if GD18==13 then HB13() end
if GD18==14 then HB14() end
if GD18==15 then HB15() end
if GD18==16 then HB16() end
FX1=0
end

function HB1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("100",gg.TYPE_DWORD)
gg.toast("滑板改疾跑开启成功")
end

function HB2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("201",gg.TYPE_DWORD)
gg.toast("滑板改跳高开启成功")
end

function HB3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("401",gg.TYPE_DWORD)
gg.toast("滑板改医疗包开启成功")
end

function HB4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("400",gg.TYPE_DWORD)
gg.toast("滑板改手榴弹开启成功")
end

function HB5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("600",gg.TYPE_DWORD)
gg.toast("滑板改雷达开启成功")
end

function HB6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("500",gg.TYPE_DWORD)
gg.toast("滑板改生命上限开启成功")
end

function HB7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("滑板改飞爪开启成功")
end

function HB8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("801",gg.TYPE_DWORD)
gg.toast("滑板改酒桶开启成功")
end

function HB9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("111",gg.TYPE_DWORD)
gg.toast("滑板改皮卡开启成功")
end

function HB10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("901",gg.TYPE_DWORD)
gg.toast("滑板改自走球开启成功")
end

function HB11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("301",gg.TYPE_DWORD)
gg.toast("滑板改阻挡箱开启成功")
end

function HB12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("900",gg.TYPE_DWORD)
gg.toast("滑板改传送门开启成功")
end

function HB13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("700",gg.TYPE_DWORD)
gg.toast("滑板改逻辑犬开启成功")
end

function HB14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("701",gg.TYPE_DWORD)
gg.toast("滑板改肾上腺素开启成功")
end

function HB15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1002",gg.TYPE_DWORD)
gg.toast("滑板改魔法墙开启成功")
end

function HB16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500900;0;1001",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_DWORD)
gg.toast("滑板改毒液开启成功")
end

function DFH()
Main0()
end

function HSFH()
Main0()
end

function HST()
os.exit()
end

function HSC()
Main0()
end

function MainHJ()
FX5=1
HJ = gg.multiChoice({
	 "疾跳无限(大厅)",
	 "阻挡箱免费(大厅)",
	 "迫击炮自瞄(游戏)",
	 "阻挡箱无限(游戏)",
	 "火箭筒无限子弹(大厅)",
	 "迫击炮无限子弹(大厅)",
	 "火箭筒无限弹夹(游戏)",
	 "兔子无限时间(大厅)",
	 "逻辑犬无限时间(大厅)",
	 "火箭筒秒杀伤害(大厅)",
	 "火箭筒无间隔(大厅)",
	 "迫击炮无间隔(大厅)",
	 "迫击炮秒杀力(大厅)",
	 "生命上限冷却(大厅)",
	 "雷达没有冷却(大厅)",
	 "肾上腺素无限时间(大厅)",
	 "医疗包杀人(大厅)",
	 "飞爪免费(大厅)",
	 "手雷秒杀(游戏)",
	 "手雷全屏范围(游戏)",
	 "生命上限加千血(大厅)",
	 "医疗箱加1000血(游戏)",
	 "火箭筒秒换子弹(大厅)",
	 "阻挡箱500刷钱(大厅)",
	 "飞爪全屏长度(游戏)",
	 "酒桶全屏长度(游戏)",
	 "逻辑犬无限生命(游戏)",
	 "魔法墙无限时间(游戏)",
	 "传送门无限时间(游戏)",
	 "毒液无限时间(游戏)",
	 "滑板加速(游戏)",
	 "皮卡加速(游戏)",
	 "自走球加速(游戏)",
	 "传送门全屏(游戏)",
	 "返回主页",
}, nil, "玄羽制作")
if HJ == nil then else
if HJ[1]==true then HJ2() end
if HJ[2]==true then HJ3() end
if HJ[3]==true then HJ4() end
if HJ[4]==true then HJ5() end
if HJ[5]==true then HJ6() end
if HJ[6]==true then HJ7() end
if HJ[7]==true then HJ8() end
if HJ[8]==true then HJ9() end
if HJ[9]==true then HJ10() end
if HJ[10]==true then HJ11() end
if HJ[11]==true then HJ12() end
if HJ[12]==true then HJ13() end
if HJ[13]==true then HJ14() end
if HJ[14]==true then HJ15() end
if HJ[15]==true then HJ16() end
if HJ[16]==true then HJ17() end
if HJ[17]==true then HJ18() end
if HJ[18]==true then HJ19() end
if HJ[19]==true then HJ20() end
if HJ[20]==true then HJ21() end
if HJ[21]==true then HJ22() end
if HJ[22]==true then HJ23() end
if HJ[23]==true then HJ24() end
if HJ[24]==true then HJ25() end
if HJ[25]==true then HJ26() end
if HJ[26]==true then HJ27() end
if HJ[27]==true then HJ28() end
if HJ[28]==true then HJ29() end
if HJ[29]==true then HJ30() end
if HJ[30]==true then HJ31() end
if HJ[31]==true then HJ32() end
if HJ[32]==true then HJ33() end
if HJ[33]==true then HJ34() end
if HJ[34]==true then HJ35() end
if HJ[35]==true then Main0() end
end
end

function HJ2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function HJ3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;1;1;-0.03999999911;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("阻挡箱免费开启成功")
	 gg.clearResults()
end

function HJ4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.40129846e-45F;0.2F::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.40129846e-45F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HJ5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;5;50;10;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3000", gg.TYPE_FLOAT)
	 gg.toast("无限血成功")
	 gg.clearResults()
end

function HJ6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300F;4D;3F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("火箭筒无限子弹开启成功")
	 gg.clearResults()
end

function HJ7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("迫击炮无限子弹")
	 gg.clearResults()
end

function HJ8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;444444;444445;1D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("无限弹夹开启成功")
	 gg.clearResults()
end

function HJ9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1014D;8F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("兔子时间开启成功")
	 gg.clearResults()
end

function HJ10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1010D;100.0F;6.0F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3000", gg.TYPE_FLOAT)
	 gg.toast("狗无限时间开启成功")
	 gg.clearResults()
end

function HJ11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8000", gg.TYPE_FLOAT)
	 gg.toast("火箭筒秒杀开启成功")
	 gg.clearResults()
end

function HJ12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无间隔开启成功")
	 gg.clearResults()
end

function HJ13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("迫击炮无间隔开启成功")
	 gg.clearResults()
end

function HJ14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("迫击炮秒杀开启成功")
	 gg.clearResults()
end

function HJ15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;40F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("生命上限无冷却开启成功")
	 gg.clearResults()
end

function HJ16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("雷达无冷却")
	 gg.clearResults()
end

function HJ17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;5.0F;0.40000000596F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("肾上腺素无限时间")
	 gg.clearResults()
end

function HJ18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100D;6F;4.5F;1.2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-100", gg.TYPE_DWORD)
	 gg.toast("医疗包杀人")
	 gg.clearResults()
end

function HJ19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1014D;1;-0.03;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("飞爪免费")
	 gg.clearResults()
end

function HJ20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("手雷秒杀")
	 gg.clearResults()
end

function HJ21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("手雷全屏")
	 gg.clearResults()
end

function HJ22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("70;5;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("加1000血")
	 gg.clearResults()
end

function HJ23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100D;6F;4.5F;1.2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_DWORD)
	 gg.toast("加血")
	 gg.clearResults()
end

function HJ24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("秒换弹")
	 gg.clearResults()
end

function HJ25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;1;1;-0.03999999911;10D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5000", gg.TYPE_FLOAT)
	 gg.toast("刷钱")
	 gg.clearResults()
end

function HJ26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.69999998808;6.69999980927::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.69999980927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HJ27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;4;2E;2F;30F::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("酒桶全屏范围")
	 gg.clearResults()
end

function HJ28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1010D;100.0F;6.0F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("巡逻犬无限生命值开启成功")
	 gg.clearResults()
end

function HJ29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.9;1;50;5::77", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("魔法墙无限时间开启成功")
	 gg.clearResults()
end

function HJ30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function HJ31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1017D;6.0F;0.5F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("毒液无限时间开启成功")
	 gg.clearResults()
end

function HJ32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1019D;1F;0.01F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("滑板加速开启成功")
	 gg.clearResults()
end

function HJ33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1003D;1.0F;0.00999999978F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("皮卡加速开启成功")
	 gg.clearResults()
end

function HJ34()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1.0F;0.00999999978F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("自走球加速开启成功")
	 gg.clearResults()
end

function HJ35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("传送门长度开启成功")
	 gg.clearResults()
end

function Main500()
FX6=1
SN = gg.choice({
"选择道具(大厅)",
"武器皮肤[不会变回原皮](大厅)",
"绝版皮肤(大厅)",
"人物皮肤(大厅)",
"返回主页",
},nil,"")
if SN==1 then DJPF() end
if SN==2 then WQPF() end
if SN==3 then JBPF() end
if SN==4 then RWPF() end
if SN==5 then HOME() end
end

function DJPF()
SN1 = gg.choice({
	 "疾跑皮肤",
	 "跳高皮肤",
	 "手榴弹皮肤",
	 "皮卡皮肤",
	 "医疗箱皮肤",
	 "侦查眼皮肤",
	 "阻挡箱皮肤",
	 "火箭筒皮肤",
	 "飞爪皮肤",
	 "自走球皮肤",
	 "巡逻犬皮肤",
	 "传送门皮肤",
	 "酒桶皮肤",
	 "毒药皮肤",
	 "冲锋枪皮肤",
	 "肾上腺素皮肤",
	 "迫击炮皮肤",
}, nil, "［玄羽制作］")
if SN1==1 then A() end
if SN1==2 then B() end
if SN1==3 then C() end
if SN1==4 then D() end
if SN1==5 then E() end
if SN1==6 then F() end
if SN1==7 then G() end
if SN1==8 then H() end
if SN1==9 then I() end
if SN1==10 then J() end
if SN1==11 then K() end
if SN1==12 then L() end
if SN1==13 then N() end
if SN1==14 then M() end
if SN1==15 then O() end
if SN1==16 then P() end
if SN1==17 then Q() end
FX1=0
end

function A()
SNA = gg.choice({
	 "初始皮肤改速度",
	 "初始皮肤改疾风",
	 "初始皮肤改繁星",
	 "初始皮肤改梦想",
	 "返回",
}, nil, "")
if SNA==1 then A1() end
if SNA==2 then A2() end
if SNA==3 then A3() end
if SNA==4 then A4() end
if SNA==5 then ALL() end
FX1=0
end

function A1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600051", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function A2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600056", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function A3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600061", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function A4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ALL()
Main0()
end

function B()
SN = gg.choice({
	 "初始皮肤改活泼",
	 "初始皮肤改花式酷跑",
	 "初始皮肤改恶搞之舞",
	 "初始皮肤改完美空翻",
	 "返回",
}, nil, "")
if SNB==1 then B1() end
if SNB==2 then B2() end
if SNB==3 then B3() end
if SNB==4 then B4() end
if SNB==5 then B5() end
FX1=0
end

function B1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600101", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function B2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600106", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function B3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600111", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function B4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function B5()
	 Main0()
end

function C()
SNC = gg.choice({
	 "初始皮肤改新款",
	 "初始皮肤改大颗菠萝",
	 "初始皮肤改小猪存钱罐",
	 "初始皮肤改氪金石脉冲弹",
	 "初始皮肤改粽子",
	 "初始皮肤改2019新春爆竹",
	 "初始皮肤改圣诞雪球",
	 "返回",
}, nil, "")
if SNC==1 then C1() end
if SNC==2 then C2() end
if SNC==3 then C3() end
if SNC==4 then C4() end
if SNC==5 then C5() end
if SNC==6 then C6() end
if SNC==7 then C7() end
if SNC==8 then C8() end
FX1=0
end

function C1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600071", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function C2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600041", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function C3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600046", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function C4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("修改修改")
	 gg.clearResults()
end

function C5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600336", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function C6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600221", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function C7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600196", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function C8()
	 Main0()
end

function D()
SND = gg.choice({
	 "初始皮肤改热销款",
	 "初始皮肤改购物车",
	 "初始皮肤改摇滚小黄鸭",
	 "初始皮肤改DMM-R超跑",
	 "初始皮肤改星猪骑士",
	 "返回",
}, nil, "")
if SND==1 then D1() end
if SND==2 then D2() end
if SND==3 then D3() end
if SND==4 then D4() end
if SND==5 then D5() end
if SND==6 then D6() end
FX1=0
end

function D1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600121", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("600001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600001", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600006", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600266", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function D6()
	 Main0()
end

function E()
SNE = gg.choice({
	 "初始皮肤改网红同款",
	 "初始皮肤改DMM彩豆蛋糕",
	 "初始皮肤改自制爱心便当",
	 "初始皮肤改圣光之箱",
	 "初始皮肤改外卖盒",
	 "返回",
}, nil, "")
if SNE==1 then E1() end
if SNE==2 then E2() end
if SNE==3 then E3() end
if SNE==4 then E4() end
if SNE==5 then E5() end
if SNE==6 then E6() end
FX1=0
end

function E1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600086", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function E2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600091", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function E3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600096", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function E4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function E5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600366", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function E6()
	 Main0()
end

function F()
SNF = gg.choice({
	 "初始皮肤改小绿",
	 "初始皮肤改精灵球",
	 "初始皮肤改土拨鼠",
	 "初始皮肤改天使之眼",
	 "返回",
}, nil, "")
if SNF==1 then F1() end
if SNF==2 then F2() end
if SNF==3 then F3() end
if SNF==4 then F4() end
if SNF==5 then F5() end
FX1=0
end

function F1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600206", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function F2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600211", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function F3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600246", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function F4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600251", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function F5()
	 Main0()
end

function G()
SNG = gg.choice({
	 "初始皮肤改DMM快递箱",
	 "初始皮肤改老式游戏机",
	 "初始皮肤改熊猫表情包",
	 "初始皮肤改真龙之印",
	 "初始皮肤改2019元旦快乐",
	 "初始皮肤改周年蛋糕",
	 "返回",
}, nil, "")
if SNG==1 then G1() end
if SNG==2 then G2() end
if SNG==3 then G3() end
if SNG==4 then G4() end
if SNG==5 then G5() end
if SNG==6 then G6() end
if SNG==7 then G7() end
FX1=0
end

function G1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600141", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function G2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600026", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function G3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600021", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function G4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600281", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function G5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600201", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function G6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600386", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function G7()
	 Main0()
end

function H()
SNH = gg.choice({
	 "初始皮肤改清鸟M2",
	 "初始皮肤改丛林迷彩",
	 "初始皮肤改雷神",
	 "初始皮肤改火焰龙头鲨",
	 "初始皮肤改焰",
	 "返回",
}, nil, "")
if SNH==1 then H1() end
if SNH==2 then H2() end
if SNH==3 then H3() end
if SNH==4 then H4() end
if SNH==5 then H5() end
if SNH==6 then H6() end
FX1=0
end

function H1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600076", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function H2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600081", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function H3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600016", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function H4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function H5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600011", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function H6()
	 Main0()
end

function I()
SNI = gg.choice({
	 "初始皮肤改科技款",
	 "初始皮肤改马桶抽",
	 "初始皮肤改超凡蜘蛛网",
	 "初始皮肤改神龙金爪",
	 "初始皮肤改食人花",
	 "返回",
}, nil, "")
if SNI==1 then I1() end
if SNI==2 then I2() end
if SNI==3 then I3() end
if SNI==4 then I4() end
if SNI==5 then I5() end
if SNI==6 then I6() end
FX1=0
end

function I1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600151", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function I2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600156", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function I3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600161", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function I4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600276", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function I5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600341", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function I6()
	 Main0()
end

function J()
SNJ = gg.choice({
	 "初始皮肤改环保款",
	 "初始皮肤改光能双轮",
	 "初始皮肤改魔力紫球",
	 "初始皮肤改闪闪飞轮",
	 "返回",
}, nil, "")
if SNJ==1 then J1() end
if SNJ==2 then J2() end
if SNJ==3 then J3() end
if SNJ==4 then J4() end
if SNJ==5 then J5() end
FX1=0
end

function J1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600301", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function J2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600316", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function J3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600316", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function J4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600321", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function J5()
	 Main0()
end

function K()
SNK = gg.choice({
	 "初始皮肤改阿棕",
	 "初始皮肤改短腿柯基",
	 "初始皮肤改幼年哈士奇",
	 "初始皮肤改黄金猎犬",
	 "返回",
}, nil, "")
if SNK==1 then K1() end
if SNK==2 then K2() end
if SNK==3 then K3() end
if SNK==4 then K4() end
if SNK==5 then K5() end
FX1=0
end

function K1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600146", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function K2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600031", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function K3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600036", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function K4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600216", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function K5()
	 Main0()
end

function L()
SNL = gg.choice({
	 "初始皮肤改深海之光",
	 "初始皮肤改爱心水池",
	 "初始皮肤改彩虹的约定",
	 "初始皮肤改真龙现世",
	 "返回",
}, nil, "")
if SNL==1 then L1() end
if SNL==2 then L2() end
if SNL==3 then L3() end
if SNL==4 then L4() end
if SNL==5 then L5() end
FX1=0
end

function L1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600291", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function L2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600296", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function L3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600326", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function L4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600331", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function L5()
	 Main0()
end

function N()
SNN = gg.choice({
	 "初始皮肤改白橡木",
	 "初始皮肤改陈年老坛酒",
	 "初始皮肤改女巫的毒药",
	 "初始皮肤改幻想伏特加",
	 "初始皮肤改超能水",
	 "初始皮肤改烟花桶",
	 "返回",
}, nil, "")
if SNN==1 then N1() end
if SNN==2 then N2() end
if SNN==3 then N3() end
if SNN==4 then N4() end
if SNN==5 then N5() end
if SNN==6 then N6() end
if SNN==7 then N7() end
FX1=0
end

function N1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600126", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function N2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600131", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function N3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600136", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function N4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600311", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function N5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600371", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function N6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600391", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function N7()
	 Main0()
end

function M()
SNM = gg.choice({
	 "初始皮肤改二甲笨蓝",
	 "初始皮肤改女巫的毒药",
	 "初始皮肤改蜘蛛粘液",
	 "返回",
}, nil, "")
if SNM==1 then M1() end
if SNM==2 then M2() end
if SNM==3 then M3() end
if SNM==4 then M4() end
FX1=0
end

function M1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50080", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600356", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function M2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600361", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function M3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600381", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function M4()
Main0()
end

function O()
SNO = gg.choice({
	 "初始皮肤改马克Z1",
	 "初始皮肤改古斯塔夫",
	 "初始皮肤改激光",
	 "返回",
}, nil, "")
if SNO==1 then O1() end
if SNO==2 then O2() end
if SNO==3 then O3() end
if SNO==4 then O4() end
FX1=0
end

function O1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600346", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function O2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600351", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function O3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600376", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function O4()
	 Main0()
end

function P()
SNP = gg.choice({
	 "初始皮肤改冷静药水",
	 "初始皮肤改bobo奶瓶",
	 "初始皮肤改校长的热狗",
	 "初始皮肤改DNA超进化",
	 "返回",
}, nil, "")
if SNP==1 then P1() end
if SNP==2 then P2() end
if SNP==3 then P3() end
if SNP==4 then P4() end
if SNP==5 then P5() end
FX1=0
end

function P1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600166", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function P2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600171", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function P3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600176", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function P4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function P5()
	 Main0()
end

function Q()
SNQ = gg.choice({
	 "初始皮肤改秋冬款",
	 "初始皮肤改网球发射器",
	 "初始皮肤改磁暴",
	 "初始皮肤改黄金虎纹鲨",
	 "返回",
}, nil, "")
if SNQ==1 then Q1() end
if SNQ==2 then Q2() end
if SNQ==3 then Q3() end
if SNQ==4 then Q4() end
if SNQ==5 then Q5() end
FX1=0
end

function Q1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600186", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Q2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600191", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Q3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600236", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Q4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Q5()
Main0()
end

function WQPF()
WF = gg.choice({
"火箭筒",
"迫击炮",
"冲锋枪",
},nil,"本脚本唯一特性:升级武器不会变回原皮\nby.玄羽")
if WF==1 then WQGN1() end
if WF==2 then WQGN2() end
if WF==3 then WQGN3() end
FX1=0
end

function WQGN1()
SN1 = gg.choice({
"火箭筒13级炮[4]",
"火箭筒13级炮[5]",
"火箭筒13级炮[6]",
"火箭筒13级炮[7]",
"火箭筒13级炮[8]",
"火箭筒13级炮[9]",
"火箭筒13级炮[10]",
"火箭筒13级炮[11]",
"火箭筒13级炮[12]",
"火箭筒13级炮[13]",
"火箭筒13级炮[14]",
"火箭筒13级炮[15]",
"火箭筒13级炮[16]",
"火箭筒13级炮[17]",
"火箭筒13级炮[18]",
"火箭筒13级炮[19]",
"火箭筒13级炮[20]",
"火箭筒13级炮[21]",
},nil,"后面数字代表你有的道具数量\n比如你有16个道具就选[16]")
if SN1==1 then WQ1() end
if SN1==2 then WQ2() end
if SN1==3 then WQ3() end
if SN1==4 then WQ4() end
if SN1==5 then WQ5() end
if SN1==6 then WQ6() end
if SN1==7 then WQ7() end
if SN1==8 then WQ8() end
if SN1==9 then WQ9() end
if SN1==10 then WQ10() end
if SN1==11 then WQ11() end
if SN1==12 then WQ12() end
if SN1==13 then WQ13() end
if SN1==14 then WQ14() end
if SN1==15 then WQ15() end
if SN1==16 then WQ16() end
if SN1==17 then WQ17() end
if SN1==18 then WQ18() end
FX1=0
end

function WQ1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("8;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("10;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("11;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("12;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("13;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("14;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("15;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("18;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("19;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ17()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("20;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQ18()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("21;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600286", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQGN2()
SN2 = gg.choice({
"迫击炮13级炮[4]",
"迫击炮13级炮[5]",
"迫击炮13级炮[6]",
"迫击炮13级炮[7]",
"迫击炮13级炮[8]",
"迫击炮13级炮[9]",
"迫击炮13级炮[10]",
"迫击炮13级炮[11]",
"迫击炮13级炮[12]",
"迫击炮13级炮[13]",
"迫击炮13级炮[14]",
"迫击炮13级炮[15]",
"迫击炮13级炮[16]",
"迫击炮13级炮[17]",
"迫击炮13级炮[18]",
"迫击炮13级炮[19]",
"迫击炮13级炮[20]",
"迫击炮13级炮[21]",
},nil,"后面数字代表你有的道具数量\n比如你有16个道具就选[16]")
if SN2==1 then WQB1() end
if SN2==2 then WQB2() end
if SN2==3 then WQB3() end
if SN2==4 then WQB4() end
if SN2==5 then WQB5() end
if SN2==6 then WQB6() end
if SN2==7 then WQB7() end
if SN2==8 then WQB8() end
if SN2==9 then WQB9() end
if SN2==10 then WQB10() end
if SN2==11 then WQB11() end
if SN2==12 then WQB12() end
if SN2==13 then WQB13() end
if SN2==14 then WQB14() end
if SN2==15 then WQB15() end
if SN2==16 then WQB16() end
if SN2==17 then WQB17() end
if SN2==18 then WQB18() end
FX1=0
end

function WQB1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("8;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("10;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("11;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("12;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("13;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("14;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("15;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("18;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("19;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQB17()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("20;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA18()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("21;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600241", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQGN3()
SN3 = gg.choice({
"冲锋枪13级炮[4]",
"冲锋枪13级炮[5]",
"冲锋枪13级炮[6]",
"冲锋枪13级炮[7]",
"冲锋枪13级炮[8]",
"冲锋枪13级炮[9]",
"冲锋枪13级炮[10]",
"冲锋枪13级炮[11]",
"冲锋枪13级炮[12]",
"冲锋枪13级炮[13]",
"冲锋枪13级炮[14]",
"冲锋枪13级炮[15]",
"冲锋枪13级炮[16]",
"冲锋枪13级炮[17]",
"冲锋枪13级炮[18]",
"冲锋枪13级炮[19]",
"冲锋枪13级炮[20]",
"冲锋枪13级炮[21]",
},nil,"后面数字代表你有的道具数量\n比如你有16个道具就选[16]")
if SN3==1 then WQA1() end
if SN3==2 then WQA2() end
if SN3==3 then WQA3() end
if SN3==4 then WQA4() end
if SN3==5 then WQA5() end
if SN3==6 then WQA6() end
if SN3==7 then WQA7() end
if SN3==8 then WQA8() end
if SN3==9 then WQA9() end
if SN3==10 then WQA10() end
if SN3==11 then WQA11() end
if SN3==12 then WQA12() end
if SN3==13 then WQA13() end
if SN3==14 then WQA14() end
if SN3==15 then WQA15() end
if SN3==16 then WQA16() end
if SN3==17 then WQA17() end
if SN3==18 then WQA18() end
FX1=0
end

function WQA1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("8;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("10;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("11;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("12;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("13;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA11()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("14;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("15;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("18;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("19;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA17()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("20;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function WQA18()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("21;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600436", gg.TYPE_DWORD)
gg.toast("提示：修改成功")
gg.clearResults()
end

function JBPF()
JB = gg.multiChoice({
	 "绝版手雷.粽子.皮肤",
	 "绝版手雷.爆竹.皮肤",
	 "绝版手雷.雪球.皮肤",
	 "绝版医疗箱.外卖盒.皮肤",
	 "绝版医疗箱.月饼礼盒.皮肤",
	 "绝版车.新猪骑士.皮肤",
	 "绝版车.幻影流星跑车.皮肤",
	 "绝版酒桶.烟花筒.皮肤",
	 "隐藏酒桶.超能水.皮肤",
	 "绝版阻挡箱.元旦快乐.皮肤",
	 "绝版阻挡箱.周年蛋糕.皮肤",
	 "绝版阻挡箱.未来音响.皮肤",
	 "隐藏阻挡箱.快乐逗娃.皮肤",
	 "绝版飞爪.食人花.皮肤",
	 "绝版毒液.蜜罐.皮肤",
	 "隐藏针.大蒜.皮肤",
	 "隐藏毒液.史莱姆.皮肤",
	 "返回主页",
}, nil, "使用1级皮肤大厅开启")
if JB == nil then else
if JB[1]==true then JB44() end
if JB[2]==true then JB45() end
if JB[3]==true then JB46() end
if JB[4]==true then JB47() end
if JB[5]==true then JB48() end
if JB[6]==true then JB49() end
if JB[7]==true then JB50() end
if JB[8]==true then JB51() end
if JB[9]==true then JB52() end
if JB[10]==true then JB53() end
if JB[11]==true then JB54() end
if JB[12]==true then JB55() end
if JB[13]==true then JB56() end
if JB[14]==true then JB57() end
if JB[15]==true then JB58() end
if JB[16]==true then JB59() end
if JB[17]==true then JB60() end
if JB[18]==true then JB61() end
end
FX1=0
end

function JB44()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600336", gg.TYPE_DWORD)
	 gg.toast("快给敌人吃粽子去")
	 gg.clearResults()
end

function JB45()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600221", gg.TYPE_DWORD)
	 gg.toast("拿爆竹炸死对面")
	 gg.clearResults()
end

function JB46()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600196", gg.TYPE_DWORD)
	 gg.toast("让敌人冻死吧")
	 gg.clearResults()
end

function JB47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600366", gg.TYPE_DWORD)
	 gg.toast("先生，您要的外卖到了")
	 gg.clearResults()
end

function JB48()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600411", gg.TYPE_DWORD)
	 gg.toast("大家快来一起吃月饼")
	 gg.clearResults()
end

function JB49()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600266", gg.TYPE_DWORD)
	 gg.toast("你就是那个意中人")
	 gg.clearResults()
end

function JB50()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600416", gg.TYPE_DWORD)
	 gg.toast("感觉不怎么滴")
	 gg.clearResults()
end

function JB51()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600391", gg.TYPE_DWORD)
	 gg.toast("拿着烟花筒去炸敌人吧")
	 gg.clearResults()
end

function JB52()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600371", gg.TYPE_DWORD)
	 gg.toast("水还能喝醉！")
	 gg.clearResults()
end

function JB53()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600201", gg.TYPE_DWORD)
	 gg.toast("建议在元旦的时候用")
	 gg.clearResults()
end

function JB54()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600386", gg.TYPE_DWORD)
	 gg.toast("祝逃跑一周年快乐")
	 gg.clearResults()
end

function JB55()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600406", gg.TYPE_DWORD)
	 gg.toast("音乐真好听")
	 gg.clearResults()
end

function JB56()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600401", gg.TYPE_DWORD)
	 gg.toast("你家娃被你逗死了吗？")
	 gg.clearResults()
end

function JB57()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600341", gg.TYPE_DWORD)
	 gg.toast("小僵尸快过来,快进我的肚子里")
	 gg.clearResults()
end

function JB58()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600396", gg.TYPE_DWORD)
	 gg.toast("嗯，很甜")
	 gg.clearResults()
end

function JB59()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600421", gg.TYPE_DWORD)
	 gg.toast("蒜味儿真重")
	 gg.clearResults()
end

function JB60()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600426", gg.TYPE_DWORD)
	 gg.toast("史莱姆很可爱哟！")
	 gg.clearResults()
end

function JB61()
Main0()
end

function RWPF()
PF = gg.choice({
"失忆者",
"小学妹",
"魔术师",
"艾可",
"雇佣兵",
"女特工",
"机器人",
"返回主页",
},nil,"大厅开启")
if PF==1 then MainPF1() end
if PF==2 then MainPF2() end
if PF==3 then MainPF3() end
if PF==4 then MainPF4() end
if PF==5 then MainPF5() end
if PF==6 then MainPF6() end
if PF==7 then MainPF7() end
if PF==8 then HSRWFH() end
FX1=0
end

function MainPF1()
PF1 = gg.multiChoice({
	 "夜行套装",
	 "幻影套装",
	 "绝版史诗夜行套装",
	 "绝版传说夜行套装",
	 "疾风套装",
	 "传说拳击大师套装",
	 "假面套装",
	 "传说未来套装",
	 "绝版新年套装",
	 "绝版菠萝套装",
	 "绝版夏日派对套装",
	 "绝版兔先生套路",
	 "篮球少年套装",
	 "DMM校园套装",
	 "蓝皮鼠头套",
	 "返回上页",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n要在大厅打开")
if PF == nil then else
if PF1[1]==true then PF1() end
if PF1[2]==true then PF2() end
if PF1[3]==true then PF3() end
if PF1[4]==true then PF4() end
if PF1[5]==true then PF5() end
if PF1[6]==true then PF6() end
if PF1[7]==true then PF7() end
if PF1[8]==true then PF8() end
if PF1[9]==true then PF9() end
if PF1[10]==true then PF10() end
if PF1[11]==true then PF11() end
if PF1[12]==true then PF12() end
if PF1[13]==true then PF13() end
if PF1[14]==true then PF14() end
if PF1[15]==true then PF15() end
if PF1[16]==true then PFFH() end
end
FX1=0
end

function PF1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2011;2012;2013;2014;2015", gg.TYPE_DWORD)
	 gg.toast("夜行套装开启成功")
	 gg.clearResults()
end

function PF2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2021;2022;2023;2024;2025", gg.TYPE_DWORD)
	 gg.toast("幻影套装开启成功")
	 gg.clearResults()
end

function PF3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2031;2032;2033;2034;2035", gg.TYPE_DWORD)
	 gg.toast("绝版史诗夜行套装开启成功")
	 gg.clearResults()
end

function PF4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2041;2042;2043;2044;2045", gg.TYPE_DWORD)
	 gg.toast("绝版传说夜行套装开启成功")
	 gg.clearResults()
end

function PF5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2051;2052;2053;2054;2055", gg.TYPE_DWORD)
	 gg.toast("疾风套装开启成功")
	 gg.clearResults()
end

function PF6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2061;2062;2063;2064;2065", gg.TYPE_DWORD)
	 gg.toast("传说拳击大师套装开启成功")
	 gg.clearResults()
end

function PF7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2071;2072;2073;2074;2075", gg.TYPE_DWORD)
	 gg.toast("假面套装开启成功")
	 gg.clearResults()
end

function PF8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2076;2077;2078;2079;2080", gg.TYPE_DWORD)
	 gg.toast("传说未来套装开启成功")
	 gg.clearResults()
end

function PF9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2081;2082;2083;2084;2085", gg.TYPE_DWORD)
	 gg.toast("绝版新年套装开启成功")
	 gg.clearResults()
end

function PF10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2091;2092;2093;2094;2095", gg.TYPE_DWORD)
	 gg.toast("绝版菠萝套装开启成功")
	 gg.clearResults()
end

function PF11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2096;2097;2098;2099;2100", gg.TYPE_DWORD)
	 gg.toast("夏日派对皮肤开启成功")
	 gg.clearResults()
end

function PF12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2101;2102;2103;2104;2105", gg.TYPE_DWORD)
	 gg.toast("绝版兔先生皮肤开启成功")
	 gg.clearResults()
end

function PF13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2106;2107;2108;2109;2110", gg.TYPE_DWORD)
	 gg.toast("鸡你太美哟！")
	 gg.clearResults()
end

function PF14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2086;2087;2088;2089;2090", gg.TYPE_DWORD)
	 gg.toast("跟小学妹同款哟！")
	 gg.clearResults()
end

function PF15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2016", gg.TYPE_DWORD)
	 gg.toast("让你皮,啊！")
	 gg.clearResults()
end

function PFFH()
Main0()
end

function MainPF2()
SN = gg.multiChoice({
	 "夏日清凉套装",
	 "传说炫彩幻音套装",
	 "DMM学院套装",
	 "绝版爱丽丝套装",
	 "绝版魔法茶会套装",
	 "仓鼠头盔",
	 "绝版泡沫之夏套装",
	 "绝版金狮绣绫套装",
	 "毛绒兔兔套装",
	 "传说超能喵喵套装",
	 "返回上页",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n必须在大厅打开，才可以用")
if SN == nil then else
if SN[1]==true then FF16() end
if SN[2]==true then PF17() end
if SN[3]==true then PF18() end
if SN[4]==true then PF19() end
if SN[5]==true then PF20() end
if SN[6]==true then PF21() end
if SN[7]==true then PF22() end
if SN[8]==true then PF23() end
if SN[9]==true then PF24() end
if SN[10]==true then PF25() end
if SN[11]==true then PF26() end
end
FX=0
end

function PF15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4011;4012;4013;4014;4015", gg.TYPE_DWORD)
	 gg.toast("夏日清凉皮肤开启成功")
	 gg.clearResults()
end

function PF16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4021;4022;4023;4024;4025", gg.TYPE_DWORD)
	 gg.toast("炫彩幻音皮肤开启成功")
	 gg.clearResults()
end

function PF17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4031;4032;4033;4034;4035", gg.TYPE_DWORD)
	 gg.toast("学院皮肤开启成功")
	 gg.clearResults()
end

function PF18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4041;4042;4043;4044;4045", gg.TYPE_DWORD)
	 gg.toast("爱丽丝皮肤开启成功")
	 gg.clearResults()
end

function PF19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4051;4052;4053;4054;4055", gg.TYPE_DWORD)
	 gg.toast("来喝杯茶嘛")
	 gg.clearResults()
end

function PF20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4046", gg.TYPE_DWORD)
	 gg.toast("仓鼠头盔开启成功")
	 gg.clearResults()
end

function PF21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4036;4037;4038;4039;4040", gg.TYPE_DWORD)
	 gg.toast("泡沫之夏皮肤开启成功")
	 gg.clearResults()
end

function PF22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4026;4027;4028;4029;4030", gg.TYPE_DWORD)
	 gg.toast("金狮绣绫皮肤开启成功")
	 gg.clearResults()
end

function PF23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4006;4007;4008;4009;4010", gg.TYPE_DWORD)
	 gg.toast("毛绒兔兔皮肤开启成功")
	 gg.clearResults()
end

function PF24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4016;4017;4018;4019;4020", gg.TYPE_DWORD)
	 gg.toast("传说超能喵喵皮肤开启成功")
	 gg.clearResults()
end

function PF25()
Main0()
end

function MainPF3()
SN = gg.multiChoice({
	 "西域套装",
	 "工匠套装",
	 "恶魔小丑套装",
	 "软萌绵羊套装",
	 "绝版金猪送福套装",
	 "传说时空法师套装",
	 "传说吸血鬼伯爵套装",
	 "蓝皮鼠头套",
	 "返回上页",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n大厅打开")
if SN == nil then else
if SN[1]==true then PF26() end
if SN[2]==true then PF27() end
if SN[3]==true then PF28() end
if SN[4]==true then PF29() end
if SN[5]==true then PF30() end
if SN[6]==true then PF31() end
if SN[7]==true then PF32() end
if SN[8]==true then PF33() end
if SN[9]==true then PF34() end
end
FX=0
end

function PF26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6011;6012;6013;6014;6015", gg.TYPE_DWORD)
	 gg.toast("西域皮肤开启成功")
	 gg.clearResults()
end

function PF27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6006;6007;6008;6009;6010", gg.TYPE_DWORD)
	 gg.toast("快点去给我干活，奖金0块")
	 gg.clearResults()
end

function PF28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6016;6017;6018;6019;6020", gg.TYPE_DWORD)
	 gg.toast("你为什么是个恶魔？咋不做个丑八怪？")
	 gg.clearResults()
end

function PF29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6021;6022;6023;6024;6025", gg.TYPE_DWORD)
	 gg.toast("你真的很萌")
	 gg.clearResults()
end

function PF30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6026;6027;6028;6029;6030", gg.TYPE_DWORD)
	 gg.toast("金猪到你家送福了")
	 gg.clearResults()
end

function PF31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6031;6032;6033;6034;6035", gg.TYPE_DWORD)
	 gg.toast("你确定要穿越时空当英雄吗？")
	 gg.clearResults()
end

function PF32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6036;6037;6038;6039;6040", gg.TYPE_DWORD)
	 gg.toast("你真的会吸血吗？")
	 gg.clearResults()
end

function PF33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6041", gg.TYPE_DWORD)
	 gg.toast("你真可爱")
	 gg.clearResults()
end

function PF34()
	 Main0()
end

function MainPF4()
SN = gg.multiChoice({
	 "绝版追逐套装",
	 "征服套装",
	 "绝版史诗追逐套装",
	 "传说追逐套装",
	 "不羁套装",
	 "传说牛仔套装",
	 "超人套装",
	 "教父套装",
	 "绝版云纹锦衣套装",
	 "绝版冲浪达人套装",
	 "黑猫头盔",
	 "返回上页",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n在大厅打开，才可以用")
if SN == nil then else
if SN[1]==true then PF35() end
if SN[2]==true then PF36() end
if SN[3]==true then PF37() end
if SN[4]==true then PF38() end
if SN[5]==true then PF39() end
if SN[6]==true then PF40() end
if SN[7]==true then PF41() end
if SN[8]==true then PF42() end
if SN[9]==true then PF43() end
if SN[10]==true then PF44() end
if SN[11]==true then PF45() end
if SN[12]==true then PF46() end
end
FX=0
end

function PF35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1011;1012;1013;1014;1015", gg.TYPE_DWORD)
	 gg.toast("绝版追逐套装开启成功")
	 gg.clearResults()
end

function PF36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1021;1022;1023;1024;1025", gg.TYPE_DWORD)
	 gg.toast("征服套装开启成功")
	 gg.clearResults()
end

function PF37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1031;1032;1033;1034;1035", gg.TYPE_DWORD)
	 gg.toast("绝版史诗追逐套装开启成功")
	 gg.clearResults()
end

function PF38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1041;1042;1043;1044;1045", gg.TYPE_DWORD)
	 gg.toast("传说追逐套装开启成功")
	 gg.clearResults()
end

function PF39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1051;1052;1053;1054;1055", gg.TYPE_DWORD)
	 gg.toast("不羁套装开启成功")
	 gg.clearResults()
end

function PF40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1061;1062;1063;1064;1065", gg.TYPE_DWORD)
	 gg.toast("传说牛仔套装开启成功")
	 gg.clearResults()
end

function PF41()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1071;1072;1073;1074;1075", gg.TYPE_DWORD)
	 gg.toast("超人套装开启成功")
	 gg.clearResults()
end

function PF42()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1081;1082;1083;1084;1085", gg.TYPE_DWORD)
	 gg.toast("教父套装开启成功")
	 gg.clearResults()
end

function PF43()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1086;1087;1088;1089;1090", gg.TYPE_DWORD)
	 gg.toast("锦衣皮肤开启成功")
	 gg.clearResults()
end

function PF44()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1091;1092;1093;1094;1095", gg.TYPE_DWORD)
	 gg.toast("快去冲浪")
	 gg.clearResults()
end

function PF45()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1096", gg.TYPE_DWORD)
	 gg.toast("黑猫警长好")
	 gg.clearResults()
end

function PF46()
	 Main0()
end


function RW()
FX7=1
RW = gg.choice({
"失忆者",
"小学妹",
"魔术师",
"艾可",
"雇佣兵",
"女特工",
"机器人",
"返回主页",
}, nil, "[玄羽制作]")
if RW==1 then Main710() end
if RW==2 then Main720() end
if RW==3 then Main730() end
if RW==4 then Main740() end
if RW==5 then Main750() end
if RW==6 then Main760() end
if RW==7 then Main770() end
if RW==8 then MainCC() end
end

function Main710()
  RW1 =gg.multiChoice({
  "全天赋",
  "返回上一页",
}, nil, "")
if RW1 == nil then else
if RW1[1]==true then HS711() end
if RW1[2]==true then HS712() end
end
FX1=0
end

function HS711()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.06;0.09;0.12::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.06;0.09;0.12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.20;0.30;0.40::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20;0.30;0.40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.20;0.30;0.40::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20;0.30;0.40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS712()
Main600()
end

function Main720()
  RW2 =gg.multiChoice({
  "全天赋",
  "技能免费",
  "技能无限时间",
  "返回上一页",
}, nil, "")
if RW2 == nil then else
if RW2[1]==true then HS721() end
if RW2[2]==true then HS722() end
if RW2[3]==true then HS723() end
if RW2[4]==true then HS724() end
end
FX1=0
end

function HS721()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.30;0.45;0.60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30;0.45;0.60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.30;0.45;0.60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30;0.45;0.60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.30;0.45;0.60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30;0.45;0.60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS722()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("102;40F;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("兔兔变身免费开启成功")
	 gg.clearResults()
end

function HS723()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1014D;8F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_FLOAT)
	 gg.toast("兔子无限时间开启成功")
	 gg.clearResults()
end

function HS724()
Main600()
end

function Main730()
  RW3 =gg.multiChoice({
  "全天赋",
  "分身锁血『无敌』",
  "技能免费",
  "返回上一页",
}, nil, "")
if RW3 == nil then else
if RW3[1]==true then HS731() end
if RW3[2]==true then HS732() end
if RW3[3]==true then HS733() end
if RW3[4]==true then HS734() end
end
FX1=0
end

function HS731()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;45;30::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;45;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;45;30::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;45;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.10;0.15;0.20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10;0.15;0.20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS732()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;14;50::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("人偶锁血开启成功")
	 gg.clearResults()
end

function HS733()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("替身人偶免费开启成功")
	 gg.clearResults()
end

function HS734()
Main600()
end

function Main740()
  RW4 =gg.multiChoice({
  "技能全屏",
  "无限使用技能",
  "技能秒落地",
  "返回主页",
}, nil, "无限使用技能要在只有一个技能的时候开的")
if RW4 == nil then else
if RW4[1]==true then HS741() end
if RW4[2]==true then HS742() end
if RW4[3]==true then HS743() end
if RW4[4]==true then HS744() end
end
FX1=0
end

function HS741()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.5;50;0.8;0.125;0.3;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("艾可主技能全屏范围")
	 gg.clearResults()
end

function HS742()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;10F;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_DWORD)
	 gg.toast("无限使用开启成功")
	 gg.clearResults()
end

function HS743()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("50;0.8;0.125;0.3;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8;0.125;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("秒落地开启成功")
	 gg.clearResults()
end

function HS744()
Main0()
end

function Main750()
  RW5 =gg.multiChoice({
  "全天赋",
  "改1000血",
  "无限传送",
  "秒复活",
  "返回主页",
}, nil, "")
if RW5 == nil then else
if RW5[1]==true then HS751() end
if RW5[2]==true then HS752() end
if RW5[3]==true then HS753() end
if RW5[4]==true then HS754() end
if RW5[5]==true then HS755() end
end
FX1=0
end

function HS751()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.10;0.15;0.20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10;0.15;0.20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.18;0.27;0.36::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.18;0.27;0.36", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.08;0.12;0.16::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.08;0.12;0.16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS752()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("175;1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("175", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("底血开启成功")
	 gg.clearResults()
end

function HS753()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("追捕者无限传送开启成功")
	 gg.clearResults()
end

function HS754()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.5;0.2;1.4;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5;1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("追捕者秒复活开启成功")
	 gg.clearResults()
end

function HS755()
Main0()
end

function Main760()
  RW6 =gg.multiChoice({
  "技能免费",
  "全天赋",
  "返回主页",
}, nil, "")
if RW6 == nil then else
if RW6[1]==true then HS761() end
if RW6[2]==true then HS762() end
if RW6[3]==true then HS763() end
end
FX1=0
end

function HS761()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60D;119D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("隐形免费开启成功")
	 gg.clearResults()
end

function HS762()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("160;120;80::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("160;120;80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;75;50::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100;75;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;4::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;3;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS763()
Main0()
end

function Main770()
  RW7 =gg.multiChoice({
  "全天赋",
  "技能免费",
  "返回主页",
}, nil, "")
if RW8 == nil then else
if RW7[1]==true then HS771() end
if RW7[2]==true then HS772() end 
if RW7[3]==true then HS773() end
end
FX1=0
end

function HS771()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;75;50::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100;75;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;4.5;6::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3;4.5;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;90;120::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;90;120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS772()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15F;120D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("喷射飞行免费开启成功")
	 gg.clearResults()
end

function HS773()
Main0()
end

function MainCC()
	 Main0()
end

function MainBOSS()
FX8=1
  BOSS =gg.multiChoice({
	 "普攻全屏伤害(游戏)",
	 "轰炸持续时间(游戏)",
	 "轰炸没有冷却(游戏)",
	 "禁锢没有冷却(游戏)",
	 "禁锢免费购买(游戏)",
	 "虎跃没有冷却(游戏)",
	 "虎跃免费购买(游戏)",
	 "狂暴没有冷却(游戏)",
	 "狂暴免费购买(游戏)",
	 "导弹免费购买(游戏)",
	 "普攻范围秒杀(游戏)",
	 "返回主页(玄羽制作)",
},nil,"玄羽制作")
if BOSS == nil then else
if BOSS[1]==true then BOSS1() end
if BOSS[2]==true then BOSS2() end
if BOSS[3]==true then BOSS3() end
if BOSS[4]==true then BOSS4() end
if BOSS[5]==true then BOSS5() end
if BOSS[6]==true then BOSS6() end
if BOSS[7]==true then BOSS7() end
if BOSS[8]==true then BOSS8() end
if BOSS[9]==true then BOSS9() end
if BOSS[10]==true then BOSS10() end
if BOSS[11]==true then BOSS11() end
if BOSS[12]==true then HOME() end
end
end

function BOSS1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("范围开启成功")
	 gg.clearResults()
end

function BOSS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;8;12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("轰炸持续时间开启成功")
	 gg.clearResults()
end

function BOSS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("90;90;60;8;12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无冷却开启成功")
	 gg.clearResults()
end

function BOSS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;0;56;3;2.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无冷却开启成功")
	 gg.clearResults()
end

function BOSS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;200;1::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("免费开启成功")
	 gg.clearResults()
end

function BOSS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;0;56;3;2.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无冷却开启成功")
	 gg.clearResults()
end

function BOSS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("302D;150;1;0.6F::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("虎跃免费开启成功")
	 gg.clearResults()
end

function BOSS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20;6;3;500D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无冷却开启成功")
	 gg.clearResults()
end

function BOSS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6F;3F;500D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("免费开启成功")
	 gg.clearResults()
end

function BOSS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80;1::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("导弹免费开启成功")
	 gg.clearResults()
end

function BOSS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("范围秒杀开启成功")
	 gg.clearResults()
end

function BOSS12()
	 Main0()
end

function Main800()
FX9=1
  WQ =gg.multiChoice({
	 "火箭筒改火箭筒2级(大厅)",
	 "火箭筒改火箭筒3级(大厅)",
	 "火箭筒改迫击炮1级(大厅)",
	 "火箭筒改迫击炮2级(大厅)",
	 "火箭筒改迫击炮3级(大厅)",
	 "火箭筒改冲锋枪1级(大厅)",
	 "火箭筒改冲锋枪2级(大厅)",
	 "火箭筒改冲锋枪3级(大厅)",
	 "返回主页(玄羽制作)",
}, nil, "大厅开启[玄羽制作]")
if WQ == nil then else
if WQ[1]==true then HS901() end
if WQ[2]==true then HS902() end
if WQ[3]==true then HS903() end
if WQ[4]==true then HS904() end
if WQ[5]==true then HS905() end
if WQ[6]==true then HS906() end
if WQ[7]==true then HS907() end
if WQ[8]==true then HS908() end
if WQ[9]==true then HOME() end
end
FX1=0
end

function HS901()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("101", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS902()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("102", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS903()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS904()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("111", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS905()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS906()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("130", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS907()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("131", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS908()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("132", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main900()
FX10=1
  FJ =gg.multiChoice({
  "封号(游戏)",
  "解封(游戏)",
  "商城1东西购买(大厅)",
  "反开锁(游戏)",
  "医疗包杀人(游戏)",
  "肾上腺素杀人(游戏)",
  "迫击炮加血(大厅)",
  "火箭筒加血(大厅)",
  "手榴弹加血(大厅)",
  "人物3D视角(游戏)",
  "人物飞天空(游戏)",
  "返回主页",
}, nil, "请勿在实战使用\n自建房娱乐娱乐就好")
if FJ == nil then else
if FJ[1]==true then HS1001() end
if FJ[2]==true then HS1002() end
if FJ[3]==true then HS1003() end
if FJ[4]==true then HS1004() end
if FJ[5]==true then HS1005() end
if FJ[6]==true then HS1006() end
if FJ[7]==true then HS1007() end
if FJ[8]==true then HS1008() end
if FJ[9]==true then HS1009() end
if FJ[10]==true then HS1010() end
if FJ[11]==true then HS1011() end
if FJ[12]==true then HOME() end
end
FX1=0
end

function HS1001()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("你已经被封号")
	 gg.clearResults()
end

function HS1002()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("解封开启成功")
	 gg.clearResults()
end

function HS1003()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("680", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("680", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("玄羽制作")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9800", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9800", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("玄羽制作")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("130", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("130", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("玄羽制作")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("760", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("760", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("玄羽制作")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("380", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("380", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("玄羽制作")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("190", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("190", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("玄羽制作")
	 gg.clearResults()
end

function HS1004()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("反开锁开启成功快去坑队友吧")
	 gg.clearResults()
end

function HS1005()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.2F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5000", gg.TYPE_DWORD)
	 gg.toast("医疗包杀人开启成功")
	 gg.clearResults()
end

function HS1006()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.5;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -500}})
	 end
	 gg.toast("肾上腺素杀人开启成功")
	 gg.clearResults()
end

function HS1007()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5000", gg.TYPE_FLOAT)
	 gg.toast("火箭筒加血开启成功")
	 gg.clearResults()
end

function HS1008()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("迫击炮加血开启成功")
	 gg.clearResults()
end

function HS1009()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.6;1.2;20;1000;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("手雷加血开启成功")
	 gg.clearResults()
end

function HS1010()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;12;0::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;10;0::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("3D视角开启成功")
	 gg.clearResults()
end

function HS1011()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4,575,657,223,555,907,584Q;4,575,628,403,243,220,992Q;0.99960005283F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.99960005283", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_FLOAT)
	 gg.toast("飞天开启成功")
	 gg.clearResults()
end

function Main1000()
FX11=1
FH = gg.multiChoice({
      "雷达免费",
      "手雷免费",
      "飞爪免费",
      "酒桶免费",
      "医疗箱免费",
      "阻挡箱免费",
      "传送门免费",
      "冲锋枪免费",
      "魔法墙免费",
      "返回功能区",
},nil,"待续更新")
if FH == nil then else
if FH[1]==true then FH1() end
if FH[2]==true then FH2() end
if FH[3]==true then FH3() end
if FH[4]==true then FH4() end
if FH[5]==true then FH5() end
if FH[6]==true then FH6() end
if FH[7]==true then FH7() end
if FH[8]==true then FH8() end
if FH[9]==true then FH9() end
if FH[10]==true then HOME() end
end
FX1=0
end

function FH1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1006D;1.0F;-0.02080000006F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("雷达免费开启成功")
	 gg.clearResults()
end

function FH2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1002D;1.0F;-0.01659999974F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("手雷免费开启成功")
	 gg.clearResults()
end

function FH3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1014D;1.0F;-0.02999999933F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("飞爪免费开启成功")
	 gg.clearResults()
end

function FH4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1013D;1.0F;-0.01659999974F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("酒桶免费开启成功")
	 gg.clearResults()
end


function FH5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1007D;1.0F;-0.02080000006F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("医疗箱免费开启成功")
	 gg.clearResults()
end

function FH6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;1.0F;-0.03999999911F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("阻挡箱免费开启成功")
	 gg.clearResults()
end

function FH7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1015D;1.0F;-0.01659999974F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("传送门免费开启成功")
	 gg.clearResults()
end

function FH8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1018D;1.0F;-0.01999999955F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("冲锋枪免费开启成功")
	 gg.clearResults()
end

function FH9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1020D;1.0F;-0.02999999933F;13D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("魔法墙免费开启成功")
	 gg.clearResults()
end

function Main1100()
FX15=1
  FF =gg.multiChoice({
  "最稳防封[游戏]",
  "稳防封①[游戏]",
  "稳防封②[游戏]",
  "稳防封③[游戏]",
  "裸奔者防封(大厅)",
  "防止追封",
  "返回主页",
}, nil, "")
if FF == nil then else
if FF[1]==true then myff() end
if FF[2]==true then ff1() end
if FF[3]==true then ff2() end
if FF[4]==true then ff3() end
if FF[5]==true then qwff() end
if FF[6]==true then fzzf() end
if FF[7]==true then HOME() end
end
end

function myff()
gg.clearResults()	 
		 gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)	
	gg.toast("超级防封开启成功第一步")
	gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll(";0", gg.TYPE_WORD)
	gg.toast("防封开启中……")
	gg.toast("防封开启...........获取so文件中")
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0",gg.TYPE_WORD)
	gg.toast("防检测")	 
	 	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启Xa防封")
		 gg.searchNumber("2020;-1,431,655,766",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast("防3650开启")
gg.searchNumber("2020;2019;3",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast("检测删除成功")	
 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("［防］开启成功")
end 	 

function ff1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("防封开启成功成功")
	 gg.clearResults()
end

function ff2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("防封开启成功")
end

function ff3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1.5;10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("防封开启成功")
end

function qwff()
gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
gg.toast("获取成功,已删除追封文件")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("全网新防封开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("防封开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("1小时封号文件已冻结")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("一天封号文件已冻结")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("七天封号文件已冻结")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("10年封号文件已冻结")
	 gg.clearResults()
gg.sleep(800)
gg.toast("裸奔者防封开启成功(没说大号可以裸奔)")
end

function fzzf()
 gg.toast("●○○○○○○○○○○○○○○○○○○○")
 gg.sleep(150)
gg.toast("○●○○○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○●○○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○●○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○●○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○●○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○●○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○●○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○●○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○●○○○○○○○○○○")
  WJ9 = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/game_log.txt"
   lqc=io.open(WJ9,"w")
   lqc:write("0")
gg.sleep(150)
gg.toast("○○○○○○○○○○●○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○●○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○●○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○●○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○●○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○●○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○●○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○○●○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○○○●○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○○○○●")
  WJ9 = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/game_log.txt"
   lqc=io.open(WJ9,"w")
   lqc:write("0")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○○○●○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○○●○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○○●○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○○●○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○○●○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○○●○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○○●○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○○●○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○○●○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○○●○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○○●○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○○●○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○○●○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○○●○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○○●○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○○●○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○○●○○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("○●○○○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("●○○○○○○○○○○○○○○○○○○○")
gg.sleep(150)
gg.toast("     追封加载中%9\n■□□□□□□□□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%13\n■■□□□□□□□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%17\n■■■□□□□□□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%21\n■■■■□□□□□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%27\n■■■■■□□□□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%34\n■■■■■□□□□□□□□□□□□□□")
gg.sleep(150)
  WJ9 = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/game_log.txt"
   lqc=io.open(WJ9,"w")
   lqc:write("0")
gg.toast("     追封加载中%39\n■■■■■■□□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%41\n■■■■■■■□□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%45\n■■■■■■■■□□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%53\n■■■■■■■■■□□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%55\n■■■■■■■■■■□□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%64\n■■■■■■■■■■■□□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%67\n■■■■■■■■■■■■□□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%73\n■■■■■■■■■■■■■□□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%79\n■■■■■■■■■■■■■■□□□□□")
gg.sleep(150)
gg.toast("     追封加载中%81\n■■■■■■■■■■■■■■■□□□□")
gg.sleep(150)
gg.toast("     追封加载中%86\n■■■■■■■■■■■■■■■■□□□")
gg.sleep(150)
gg.toast("     追封加载中%90\n■■■■■■■■■■■■■■■■■□□")
gg.sleep(150)
gg.toast("     追封加载中%97\n■■■■■■■■■■■■■■■■■■□")
gg.sleep(150)
gg.toast("     追封加载中%100\n■■■■■■■■■■■■■■■■■■■\n开启成功")
end

function Main1200()
FX13=1
DL = gg.choice({
"无限道具",
"地图透视",
"(部分)道具无冷却",
"(全部)道具无冷却",
"酒桶全屏buff",
"火箭筒伤害",
"迫击炮伤害",
"冲锋枪伤害",
"迫击炮间隔",
"火箭筒间隔",
"火箭筒长度",
"变身道具改生命上限",
"(火箭筒)无限子弹",
"(迫击炮)无限子弹",
"返回主页",
},nil)
if DL == nil then else
if DL==1 then AA1() end
if DL==2 then AA2() end
if DL==3 then AA3() end
if DL==4 then AA4() end
if DL==5 then AA5() end
if DL==6 then AA6() end
if DL==7 then AA7() end
if DL==8 then AA8() end
if DL==9 then AA9() end
if DL==10 then AA10() end
if DL==11 then AA11() end
if DL==12 then AA12() end
if DL==13 then AA13() end
if DL==14 then AA14() end
if DL==15 then FX13=-1 Main0() end
end
end

function AA1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("无限道具开启成功")
	 gg.clearResults()
end

function AA2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;1,082,467,303D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("透视开启成功")
	 gg.clearResults()
end

function AA3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("111D;3F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("全道具无CD开启成功")
	 gg.clearResults()
end

function AA4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("37;100;101;102;103;104;105;106;107;108;109;110;111;112;113;114;115;116;117;118;119;120;121;122;123;124:101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("全道具无CD开启了")
	 gg.clearResults()
end

function AA5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1;0.01;7;4;0.02;0;0;2::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("全屏酒桶开启成功")
	 gg.clearResults()
end

function AA6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("火箭筒8000伤害开启成功")
gg.clearResults()
end

function AA7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("迫击炮伤害开启成功")
gg.clearResults()
end

function AA8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("冲锋枪秒杀开启成功")
	 gg.clearResults()
end

function AA9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("迫击炮间隔开启成功")
	 gg.clearResults()
end

function AA10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒间隔开启成功")
gg.clearResults()
end

function AA11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("火箭筒全屏开启成功")
	 gg.clearResults()
end

function AA12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;100~120::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100~120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_DWORD)
	 gg.toast("变身道具改生命上限开启成功")
	 gg.clearResults()
end

function AA13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300F;4D;3F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("火箭筒无限子弹开启成功")
	 gg.clearResults()
end

function AA14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("1级迫击炮无限子弹开启成功")
	 gg.clearResults()
	 gg.searchNumber("99F;3D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)	 
	 gg.toast("2级迫击炮无限子弹开启成功")
	 gg.clearResults()
	 gg.searchNumber("99F;4D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)	 
	 gg.toast("3级迫击炮无限子弹开启成功")
end

function AA15()
FX1=0
Main0()
end

function Main1300()
FX14=1
SN = gg.choice({
    "火箭筒伤害[自调]",
    "迫击炮伤害[自调]",
    "火箭筒间隔[自调]",
    "迫击炮间隔[自调]",
    "(1级)迫击炮子弹数量[自调]",
    "(2级)迫击炮子弹数量[自调]",
    "(3级)迫击炮子弹数量[自调]",
    "火箭筒子弹数量[自调]",
    "生命上限加生命[自调]",
    "疾跑时间[自调]",
    "手雷伤害[自调]",
    "开锁速度[自调]",
    "疾跑速度[自调]",
    "跳高高度[自调]",
    "开锁范围[自调]",
    "救人范围[自调]",
    "开补给箱范围[自调]",
    "返回主页",
},true,"自定义功能区 by玄羽")
if SN==1 then JC1() end
if SN==2 then JC2() end
if SN==3 then JC3() end
if SN==4 then JC4() end
if SN==5 then JC5() end
if SN==6 then JC6() end
if SN==7 then JC7() end
if SN==8 then JC8() end
if SN==9 then JC9() end
if SN==10 then JC10() end
if SN==11 then JC11() end
if SN==12 then JC12() end
if SN==13 then JC13() end
if SN==14 then JC14() end
if SN==15 then JC15() end
if SN==16 then JC16() end
if SN==17 then JC17() end
if SN==18 then HOME() end
FX1=0
end

function JC1()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(400)
  fw = gg.prompt({
    i = "请输入你想要改火箭筒的伤害"
  }, {i = "800"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("火箭筒自调伤害")
  gg.clearResults()
end

function JC2()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  fw = gg.prompt({
    i = "请输入你想改迫击炮的伤害"
  }, {i = "999"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC3()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  fw = gg.prompt({
    i = "修改火箭筒间隔"
  }, {i = "0"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC4()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改迫击炮间隔"
  }, {i = "0"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC5()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改(1级)迫击炮子弹数量"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function JC6()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99F;3D;1F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改(2级)迫击炮子弹数量"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function JC7()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99F;4D;1F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改(3级)迫击炮子弹数量"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function JC8()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("300F;4D;3F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改火箭筒子弹数量"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function JC9()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("70;5;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改生命上限加的血量"
  }, {i = "9999"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC10()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改疾跑跳高维持时间"
  }, {i = "99999"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC11()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  fw = gg.prompt({
    i = "修改手雷伤害"
  }, {i = "9900"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC12()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改开锁速度(原1.2)"
  }, {i = "1000"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC13()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改疾跑速度(原0.3)"
  }, {i = "3"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC14()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改跳高高度"
  }, {i = "3"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC15()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("60;0.2;1.3;1::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1944)
  fw = gg.prompt({
    i = "修改开锁范围(原1.3)"
  }, {i = "200"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC16()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(192)
  fw = gg.prompt({
    i = "修改逃生救人|追捕拖人的范围(原1.3)"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function JC17()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(104)
  fw = gg.prompt({
    i = "修改开补给箱的范围(原1.00)"
  }, {i = "999"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function Main1400()
FX16=1
SN = gg.choice({
"4399解封(桌面开)",
"九游解封(桌面开)",
"应用宝解封(桌面开)",
"其他版本解封(游戏运行的时候开)",
"返回主页",
},nil,"玄羽.纯手打造")
if SN==1 then jf1() end
if SN==2 then jf2() end
if SN==3 then jf3() end
if SN==4 then jf4() end
if SN==5 then HOME() end
end


function jf1()
WJ="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
ID = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID == nil then gg.toast("您选择了取消") else
if ID[1] == "" then gg.alert("不能输入为空") end
io.open(WJ,"w"):write(ID[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function jf2()
WJ1="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
ID1 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID1 == nil then gg.alert("您选择了取消") else
if ID1[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ1,"w"):write(ID1[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function jf3()
WJ2="/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
ID2 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID2 == nil then gg.alert("您选择了取消") else
if ID2[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ2,"w"):write(ID2[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function jf4()
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end

function BUFF()
FX12=1
SM = gg.multiChoice({
"全道具改生命上限[新]",
"疾跑加速",
"踩夹子加速",
"变羊术无限时间",
"手雷眩晕加速",
"肾上腺素加速",
"手雷眩晕改护盾",
"针buff改护盾",
"酒桶无限时间",
"魔法墙我方buff改护盾",
"魔法墙敌方buff改夹子",
"跳高buff改护盾",
"疾跑buff改护盾",
"返回主页",
},nil,"玄羽.✨")
if SM == nil then else
if SM[1]==true then  a1() end
if SM[2]==true then a2() end
if SM[3]==true then a3() end
if SM[4]==true then a4() end
if SM[5]==true then a5() end
if SM[6]==true then a6() end
if SM[7]==true then a7() end
if SM[8]==true then a8() end
if SM[9]==true then a9() end
if SM[10]==true then a10() end
if SM[11]==true then a11() end
if SM[12]==true then a12() end
if SM[13]==true then a13() end
if SM[14]==true then HOME() end end
end

function a1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("103Q;103D;100D;201D;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_DWORD)
	 gg.toast("全道具改生命上限开启成功")
	 gg.clearResults()
end


function a2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast("疾跑加速开启成功")
gg.clearResults()
end

function a3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;-0.75;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("踩架子加速开启成功")
	 gg.clearResults()
end

function a4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("112D;2.5;-0.3;0;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function a5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;-0.75;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("手雷眩晕加速开启成功")
	 gg.clearResults()
end

function a6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.2;-1;;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("肾上腺素加速开启成功")
	 gg.clearResults()
end

function a7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33F;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("坑队友开启成功")
	 gg.clearResults()
end

function a8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108;100F;0Q::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("针坑人开启成功")
	 gg.clearResults()
end

function a9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101D;6;0.75;0;0::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function a10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.9F;1F;50F;202D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("护盾Buff开启成功")
	 gg.clearResults()
end

function a11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.9F;1F;50F;203D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("敌人进入架子buff开启成功")
	 gg.clearResults()
end

function a12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.40129846e-45F;102D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("跳高改护盾Buff开启成功")
	 gg.clearResults()
end

function a13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.40129846e-45F;103D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("疾跑改护盾Buff开启成功")
	 gg.clearResults()
end

function HOME()
FX1 = -1
FX2 = -1
FX3 = -1
FX4 = -1
FX5 = -1
FX6 = -1
FX7 = -1
FX8 = -1
FX9 = -1
FX10 = -1
FX11 = -1
FX12 = -1
FX13 = -1
FX14 = -1
FX15 = -1
FX16 = -1
FXxg=-1
Main0()
end

function Exit()
os.exit()
end

while true do
	repeat
	if gg.isVisible(true) then
		gg.setVisible(false)
		if FXxg==1 then xgtf() end
		if FX1 == 1 then Main100() break end
		if FX2 == 1 then Main200() break end
		if FX3 == 1 then Main300() break end
		if FX4 == 1 then Main400() break end
		if FX5 == 1 then MainHJ() break end
		if FX6 == 1 then Main500() break end
		if FX7 == 1 then RW() break end
		if FX8 == 1 then MainBOSS() break end
		if FX9 == 1 then Main800() break end
		if FX10 == 1 then Main900() break end
		if FX11 == 1 then Main1000() break end
		if FX12 == 1 then BUFF() break end
		if FX13 == 1 then Main1200() break end
		if FX14 == 1 then Main1300() break end
		if FX15 == 1 then Main1100() break end
		if FX16 == 1 then Main1400() break end
		Main0()
	end
	until true
end