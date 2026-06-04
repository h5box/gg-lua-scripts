function Main0()
SN = gg.choice({
	 "公告（即将开放)",
         "检测必点(大厅开启)",
	 "xa内存地图透视(稳定 大厅)",
	 "视野范围变24倍(稳定 自调)",
	 "范围回血（自调)",
	 "手榴弹变引力波（自调)",
	 "火箭筒按键改捐钱(自调)",
	 "定对方行动(自调 不稳定)",
	 "疾跑通用加速（稳定|自调)",
	 "开锁速度(自调)",
	 "人物通用加速（自调稳定)",
	 "8v2无限虚体金币（100金币开 不稳定)",
	 "实体金币开关（自调)",
	 "我爱dmm修改夹子（自调)",
         "失忆者天赋机关金币(自调)",
         "防过系统(4399登录界面开启)",
         "秒开禁闭室(自调)",
         "超级跳跃(自调)",
         "解封设备",
         "过人机功能(变态)",
         "退出脚本",
}, nil, "洛神脚本4.47   需要勾选xa内存")
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
	 Main2()
	 
 end
if SN==20 then 
        Main3() 
end
if SN==21 then
	 HS21()
	 
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "不知道源码有用吗？我只是开个玩笑，但……")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("成功暴露敌方视角")
	 gg.clearResults()
end

function HS4()
gg.toast("视觉效果:上分精选选")
    F = gg.alert("稳定奔放/一局一开", "开启", "关闭", "返回")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("6;10;30;10;12:::", gg.TYPE_FLOAT)
gg.searchNumber("12", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("24",gg.TYPE_FLOAT)
gg.toast("开启成功")
  elseif F == 2 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;10;30;10;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12", gg.TYPE_FLOAT)
gg.toast("关闭成功")
gg.clearResults()
end
end

function HS5()
	 gg.toast("购物津贴:上分慎选")
    F = gg.alert("稳定奔放/一局一开", "范围小回血", "秒回血", "返回")
  if F == 1 then
  gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT)
gg.searchNumber("2;10", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll("20",gg.TYPE_FLOAT)
gg.toast("开启成功")
  elseif F == 2 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20000", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
end

function HS6()
	 gg.toast("可能会闪退")
    F = gg.alert("稳定奔放", "开启", "关闭", "返回")
  if F == 1 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("500004", gg.TYPE_DWORD)
	 gg.toast("已开启")
    elseif F == 2 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("501100", gg.TYPE_DWORD)
	 gg.toast("已关闭")	 
end
end

function HS7()
 	 gg.toast("财神领域:献出您的爱心，捐金币")
    F = gg.alert("此功能奔放", "开启", "关闭", "返回")
  if F == 1 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113;-1;1;2;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
  elseif F == 2 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113;-1;1;6;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("已开启火箭筒")
end
end

function HS8()
	 gg.toast("魔罗领域:无防风，100%拉闸")
    F = gg.alert("青铜局奔放", "追捕停", "逃生停", "返回")
  if F == 1 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("已静止行动")
  elseif F == 2 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("已静止行动")
end
end

function HS9()
gg.toast("洛神横空·被动:裸奔功能")
    F = gg.alert("稳定使用", "逃生加速", "追捕加速", "返回")
  if F == 1 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.20000000298;0;0;0;0::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0.6", gg.TYPE_FLOAT)
	 gg.toast("逃生疾跑加速开启成功")
	 gg.clearResults()
    elseif F == 2 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.20000000298;0;0;0;0::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0.4", gg.TYPE_FLOAT)
	 gg.toast("追捕疾跑加速开启成功")
	 gg.clearResults()
	 end
end

function HS10()
gg.setRanges(32)
gg.searchNumber("1;1.5;2;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
 fw= gg.prompt({i='储物戒指·小生建议您3-3.4'}, {i='1'})
gg.editAll(fw["i"], gg.TYPE_FLOAT)
gg.toast("小生:已为您提高修为，感谢使用")
gg.clearResults()
end

function HS11()
	 gg.toast("洛神指点:上分慎选")
    F = gg.alert("稳定奔放", "3.8倍", "4倍", "返回")
  if F == 1 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("3.8", gg.TYPE_FLOAT)
	 gg.toast("开启")
  elseif F == 2 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.toast("开启")
end
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("70F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2000000000", gg.TYPE_DWORD)
	 gg.toast("无线虚体金币开启成功")
	 gg.clearResults()
end

function HS13()
	 gg.toast("洛神降临·建议使用")
    F = gg.alert("技能简介:一局一开一关会用就用不会的封号处理", "开启", "关闭","返回")
  if F == 1 then
	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('0.6875',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('2',gg.TYPE_FLOAT)
gg.toast('开启')
gg.clearResults()
  elseif F == 2 then
  	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0.6875',gg.TYPE_FLOAT)
gg.toast('关闭')
gg.clearResults()
end
end

function HS14()
	 gg.toast("洛神降临·建议使用")
    F = gg.alert("技能简介:美化表情", "开启", "关闭","返回")
  if F == 1 then
	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('950001',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('950141',gg.TYPE_FLOAT)
gg.toast('开启')
gg.clearResults()
  elseif F == 2 then
  	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('950141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('950141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('950001',gg.TYPE_FLOAT)
gg.toast('关闭')
gg.clearResults()
end
end

function HS15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("20;20;20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("789", gg.TYPE_FLOAT)
gg.toast("机关大师金币调整天赋")
gg.clearResults()
end
	 
function HS16()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("加载成功")
gg.clearResults()
end


function HS17()
	gg.toast("洛神降临·建议使用")
    F = gg.alert("技能简介:善恶到头终有报", "开启", "关闭","返回")
  if F == 1 then
	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('4;0.2;1;1;1;1D;100D::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0.1',gg.TYPE_FLOAT)
gg.toast('开启')
gg.clearResults()
  elseif F == 2 then
  	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('4;0.2;0.1;0.1;0.1;0.1D;100D::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('0.1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('4',gg.TYPE_FLOAT)
gg.toast('关闭')
gg.clearResults()
end
end

function HS18()
	 gg.toast("洛神降临·建议使用")
    F = gg.alert("技能简介:跳舞跳到树上去", "开启", "关闭","返回")
  if F == 1 then
	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('2.79999995232;20;20;900;4.90000009537::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('4.90000009537',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('8',gg.TYPE_FLOAT)
gg.toast('开启')
gg.clearResults()
  elseif F == 2 then
  	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('2.79999995232;20;20;900;8::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('8',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('4.90000009537',gg.TYPE_FLOAT)
gg.toast('关闭')
gg.clearResults()
end
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

function Main3()
LS= gg.multiChoice({
 "火箭筒全套变态(大厅和游戏各开一次)",
 "4v1直接开门(一局一开)",
 "快速无限虚体金币(初始金币开)",
 "疾跑5.5倍加速(大厅)",
 "专用速刷（自调)",
 "返回主页",
 }, nil, "小艺的魔棒，感谢你看到我了。")
if LS==nil then else
if LS[1]==true then
	 sr1()
end
if LS[2]==true then
	 sr2()
end
if LS[3]==true then
	 sr3()
end
if LS[4]==true then
	 sr4()
end
if LS[5]==true then
	 sr5()
end
if LS[6]==true then
	 HOME()
end
end
FX1=0
end

function sr1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("56%")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("无后压开启成功")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7.74071527e31;14.71176242828;56.0;5.60519386e-45;1.40129846e-45;1.10000002384;3.0;0.5;0.80000001192;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("火箭筒变态伤害开启成功")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("火箭筒射程开启成功")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4D;56F;3F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.49217894673;2.5;0.89999997616;5.60519386e-45;0.84237927198;3.0;1.10000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒秒换弹修改成功")
gg.clearResults()
end

function sr2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("请速速逃离现场吧")
end

function sr3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("进度:15%")
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;254", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("254", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;268", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("268", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;254", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("254", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("78%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("86%")
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;227", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("227", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("94%")
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;215", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("215", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("96%")
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("99%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2020202020", gg.TYPE_DWORD)
  gg.toast("100% 去疯狂购物吧")
end

function sr4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("6;0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5.5", gg.TYPE_FLOAT)
gg.toast("疾跑5.5倍加速成功")
gg.clearResults()
end

function sr5()
gg.toast("洛神赋格:速刷青铜功能白银勿用")
    F = gg.alert("稳定奔放", "逃生30倍开锁", "逃生30倍加速", "未来可期，小伙")
  if F == 1 then
  	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.5;2;2.5::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("30开启速度")
    elseif F == 2 then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("人物加速30")	 
	 end
end

function HOME()

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