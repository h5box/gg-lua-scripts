function Main0()
SN = gg.choice({
	 "秽土阿斯玛",
	 "暗部鼬",
	 "森乃伊比喜",
	 "退出脚本",
}, nil, "莫真汐666")
if SN==1 then
	 Main2()
end
if SN==2 then
	 Main7()
end
if SN==3 then
	 Main11()
end
if SN==4 then
	 HS6()
end
FX1=0
end

function Main2()
SN = gg.multiChoice({
	 "大招无CD",
	 "大招秒杀",
	 "退出脚本",
}, nil, "莫真汐666")
if SN[1]==true then
	 HS3()
end
if SN[2]==true then
	 HS4()
end
if SN[3]==true then
	 HS5()
end
FX1=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("902466451;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("902466451D;39D;5.0;1.0;0.62309998274::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5.0;1.0;0.62309998274", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS5()
	 os.exit()
end

function Main7()
SN = gg.multiChoice({
	 "大招无CD",
	 "大招秒杀",
	 "退出脚本",
}, nil, "莫真汐666")
if SN[1]==true then
	 HS8()
end
if SN[2]==true then
	 HS9()
end
if SN[3]==true then
	 HS10()
end
FX1=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("901256451;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("901256451D;39D;1;0.5611000061;1.10000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1;0.5611000061;1.10000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS10()
	 os.exit()
end

function Main11()
SN = gg.multiChoice({
	 "大招无CD",
	 "大招秒杀",
	 "退出脚本",
}, nil, "莫真汐666")
if SN[1]==true then
	 HS12()
end
if SN[2]==true then
	 HS13()
end
if SN[3]==true then
	 HS14()
end
FX1=0
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("901436451;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("901436451D;39D;3;1;0.54400002956::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3;1;0.54400002956", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS14()
	 os.exit()
end

function HS6()
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