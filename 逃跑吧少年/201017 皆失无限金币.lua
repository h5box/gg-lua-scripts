function Main0()
SN = gg.choice({
	 "无线金币",
	 "秒开",
	 "加速",
	 "boss功能",
}, nil, "脚本制作306486739")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main4()
end
if SN==3 then
	 Main7()
end
if SN==4 then
	 Main10()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "无限金币",
	 "返回主页",
}, nil, "开局开")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("70F;444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("无线金币开启成功")
	 gg.clearResults()
end

function HS3()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "秒开全部东西",
	 "返回主页",
}, nil, "开局开")
if SN[1]==true then
	 HS5()
end
if SN[2]==true then
	 HS6()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("66.89824676514", gg.TYPE_DWORD)
	 gg.toast("秒开全部东西开启成功")
	 gg.clearResults()
end

function HS6()
	 Main0()
end

function Main7()
SN = gg.multiChoice({
	 "疾跑加速",
	 "返回主页",
}, nil, "和秒开一起用会刺激")
if SN[1]==true then
	 HS8()
end
if SN[2]==true then
	 HS9()
end
FX1=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_DWORD)
	 gg.toast("疾跑加速开启成功")
	 gg.clearResults()
end

function HS9()
	 Main0()
end

function Main10()
SN = gg.multiChoice({
	 "火箭筒秒杀",
	 "追击炮秒杀",
}, nil, "火箭筒秒杀")
if SN[1]==true then
	 HS11()
end
if SN[2]==true then
	 HS12()
end
FX1=0
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("就留一发直接绝杀")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;3D;0.8::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
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