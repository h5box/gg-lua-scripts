function Main0()
SN = gg.choice({
	 "公告（未开放)",
	 "xa内存地图透视（游戏)",
	 "视野范围变24倍（游戏)",
	 "xa内存开道具无限实体金币（游戏)",
	 "跳跃穿墙（游戏)",
	 "火箭筒无限子弹（子弹为4开)",
	 "倒地满血（倒地开)",
	 "火箭筒改迫击炮（游戏)",
	 "手榴弹提高至52点（游戏)",
	 "医疗包加100范围（游戏)",
	 "手榴弹微范围15（游戏)",
	 "无限虚体金币（初始金币开)",
	 "半秒开逃生门（游戏)",
	 "锁血（游戏）",
	 "医疗箱扣15点血(游戏)",
	 "还原区:关闭医疗包扣15血",
	 "关闭手榴弹范围",
	 "关闭手榴弹52点伤害",
	 "关闭上帝视角",
	 "关闭医疗包范围",
	 "关闭秒开逃生门",
     "关闭锁血",
     "100范围开锁",
     "微开锁（游戏）",
     "防风1.0",
     "解封设备",
     "无限金币（游戏）",
     "秒开禁闭室",
     "超级飞天",
     "夹子无减速",
     "炸弹无减速",
     "免费道具",
     "锁血进制",
     "退出脚本",
}, nil, "洛神脚本3.09   需要勾选xa内存")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS2()
end
if SN==3 then
	 HS3()
end
if SN==4 then
	 HS4()
end
if SN==5 then
	 HS5()
end
if SN==6 then
	 HS6()
end
if SN==7 then
	 HS7()
end
if SN==8 then
	 HS8()
end
if SN==9 then
	 HS9()
end
if SN==10 then
	 HS10()
end
if SN==11 then
	 HS11()
end
if SN==12 then
	 HS12()
end
if SN==13 then
	 HS13()
end
if SN==14 then
	 HS14()
end
if SN==15 then
	 HS15()
end
if SN==16 then
	 HS16()
end
if SN==17 then
	 HS17()
end
if SN==18 then
	 HS18()
end
if SN==19 then
	 HS19()
end
if SN==20 then
	 HS20()
end
if SN==21 then
	 HS21()
end
if SN==22 then
	 HS22()
end
if SN==23 then
	 HS23()
end
if SN==24 then
	 HS24()
end
if SN==25 then
	 HS25()
 end
if SN==26 then
	 Main2()
end
if SN==27 then
	 HS27()
	 end
if SN==28 then
	 HS28()
end
if SN==29 then
	 HS29()
end
if SN==30 then
	 HS30()
end
if SN==31 then
	 HS31()
	 end
if SN==32 then
	 HS32()
 end
if SN==33 then
	 HS33()
 end
if SN==34 then
	 HS34()
	 
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "不知道源码有用吗？")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;12;8;2.5;1::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("成功暴露敌方视角")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24", gg.TYPE_FLOAT)
	 gg.toast("上帝视角")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.6875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("跳跃穿墙已开启")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;3.0F;0.80000001192F::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("无限火力已开启")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("倒地复活思路1.0已开启")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500020", gg.TYPE_FLOAT)
	 gg.toast("迫机炮已开启")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;2;33;105D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("52", gg.TYPE_DWORD)
	 gg.toast("手榴弹提高至52.0攻击")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;1.20000004768;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("医疗包范围100")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;2;33;105D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_DWORD)
	 gg.toast("15范围内都是雷")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("70F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2000000000", gg.TYPE_DWORD)
	 gg.toast("无限而看不见的金币开启成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.5", gg.TYPE_FLOAT)
	 gg.toast("无限接近于秒开成功")
	 gg.clearResults()
	 
end

function HS14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100;100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("无敌锁血开启成功")
	 gg.clearResults()
end

function HS15()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;1.20000004768;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-15", gg.TYPE_FLOAT)
	 gg.toast("开启倒扣成功")
	 gg.clearResults()
end
function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-15;1.20000004768;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("恢复1成功")
	 gg.clearResults()
end

function HS17()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15;2;33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("恢复2成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;2;52;105D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("33", gg.TYPE_DWORD)
	 gg.toast("恢复3成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12", gg.TYPE_FLOAT)
	 gg.toast("恢复4成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;1.20000004768;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("恢复5成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5.5", gg.TYPE_FLOAT)
	 gg.toast("恢复6成功")
	 gg.clearResults()
end

function HS22()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100.0;100.0;0.30000001192;200.0;1.40129846e-45;0.05999999866;1.40129846e-45;::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,Unfreeze = true,value = 1000}})
	 end
	 gg.toast("恢复7成功")
	 gg.clearResults()
end

function HS23()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("范围开锁开启成功")
gg.clearResults()
end

function HS24()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3", gg.TYPE_FLOAT)
gg.toast("3速开锁开启成功")
gg.clearResults()
end
	 
function HS25()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("13,113;13,114:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67115008;50341888:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("67115008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("2,135,247,942", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("2,135,247,942", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function Main2()
FX16=1
SN = gg.choice({
"4399解封(桌面开)",
"九游解封(桌面开)",
"应用宝解封(桌面开)",
"其他版本解封(游戏运行的时候开)",
"返回主页",
},nil,"洛神2.5")
if SN==1 then jf1() end
if SN==2 then jf2() end
if SN==3 then jf3() end
if SN==4 then jf4() end
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

function HS27()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;3D;30;0.3;0.4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999", gg.TYPE_FLOAT)
	 gg.toast("无限金币已开启")
	 gg.clearResults()
end

function HS28()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;0.2;1;1;1;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.toast("禁闭室没有门了")
	 gg.clearResults()
end

function HS29()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.79999995232;20;20;900;4.90000009537::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.90000009537", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7.9", gg.TYPE_FLOAT)
	 gg.toast("可以上树了")
	 gg.clearResults()
end

function HS30()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6；0.75；0；0::3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.toast("夹子开启增益了")
	 gg.clearResults()
end

function HS31()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4；0.75；0；0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.toast("炸弹都废了")
	 gg.clearResults()
end

function HS32()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("00 00 80 3F 0A D7 23 BD 0D 00 00 00 14 00 00 00", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80 3F", ggg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("00 00", gg.TYPE_FLOAT)
	 gg.toast("道具免费开启")
	 gg.clearResults()
end
	 
function HS33()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("E7 03 85 00 00 00 00 00 01 00 00 00 00 00 00 00", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8E7 CB 85 00", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("E7 CB 85 42", gg.TYPE_FLOAT)
	 gg.toast("无视死亡开启")
	 gg.clearResults()
end
	 
function HS34()
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