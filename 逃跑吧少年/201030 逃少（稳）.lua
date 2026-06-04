function Main0()
SN = gg.choice({
	 "点击进入",
}, nil, "")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "开锁系列",
	 "过新手教程",
	 "退出"
}, nil, "最稳脚本")
if SN==1 then
	 Main2()
end
if SN==2 then
	 Main10()
end
if SN==3 then
	 os.exit()
end
FX1=0
end

function Main2()
SN = gg.multiChoice({
	 "三倍开锁",
	 "五倍开锁",
}, nil, "以下为稳定功能")
if SN[1]==true then
	 HS4()
end
if SN[2]==true then
	 HS5()
end
FX1=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("ok")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("ok")
	 gg.clearResults()
end

function Main10()
SN = gg.multiChoice({
	 "秒开锁",
	 "全图修机",
}, nil, "随便开")
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
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_FLOAT)
	 gg.toast("ok")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;0.2;1.3;1.3;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("ok")
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