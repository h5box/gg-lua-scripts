function Main0()
SN = gg.choice({
	 "YXB:逃跑防封菜单",
	 "YXB:逃生稳定菜单",
	 "YXB:逃生过人机菜单",
	 "YXB:退出脚本",
}, nil, "BY⇔YXB「反馈群720666070」")
if SN==1 then
	 Main7()
end
if SN==2 then
	 Main1()
end
if SN==3 then
	 Main4()
end
if SN==4 then
	 HS12()
end
FX1=0
end

function Main7()
  gg.toast("防封已去除 给点面子")
SN = gg.multiChoice({
	 "YXBXO计划逃跑防封①",
	 "YXBXO计划逃跑防封②",
	 "返回主页",
}, nil, "修改器必须隐藏23，旁路选择没有\n            不稳定记得反馈\n\n         ")
if SN[1]==true then
	 HS130()
end
if SN[2]==true then
	 HS142()
end
if SN[3]==true then
	 HS129()
end
FX1=0
end

function HS130()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封①开启成功")
	 gg.clearResults()
end

function HS142()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封②开启成功")
	 gg.clearResults()
end

function HS129()
	 Main0()
end

function Main1()
SN = gg.multiChoice({
	 "稳定透视「大厅开」",
	 "疾跑无限「大厅开」",
	 "加速开锁「游戏开」",
	 "范围开门「游戏开」",
	 "疾跑加速「游戏开」",
	 "皮卡免费「游戏开」",
	 "皮卡加速「游戏开」",
	 "护盾加血「大厅开」",
	 "返回主页",
}, nil, "「YXB:使用公告」\n游戏开=游戏开一次就行全局有效果\n大厅开=大厅开一次就行不用重复开\n一局一开=每局都要开")
if SN[1]==true then
	 HS13()
end
if SN[2]==true then
	 HS2()
end
if SN[3]==true then
	 HS3()
end
if SN[4]==true then
	 HS141()
end
if SN[5]==true then
	 HS139()
end
if SN[6]==true then
	 HS140()
end
if SN[7]==true then
	 HS100()
end
if SN[8]==true then
	 HS47()
end
if SN[9]==true then
	 HS62()
end
FX1=0
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.30000001192;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("逃生用，追捕别用")
	 gg.clearResults()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.5;2;2.5::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("2.5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS141()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("256D;8;0.20000000298;1.29999995232;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS139()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.20000000298;0;0;0;0::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0.4", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS140()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("180;1003;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("记得开防玩")
	 gg.clearResults()
end

function HS100()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1003D;1;0.01;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("1.7", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.30000001192;8.0078804e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS62()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "秒开一切「大厅开」",
	 "秒开钥匙「游戏开」",
	 "人物神速「一局一开」",
	 "返回主页",
}, nil, "这是青铜专用的")
if SN[1]==true then
	 HS5()
end
if SN[2]==true then
	 HS54()
end
if SN[3]==true then
	 HS89()
end
if SN[4]==true then
	 HS63()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.5;2;2.5::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("99", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS89()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS63()
	 Main0()
end

function HS12()
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


