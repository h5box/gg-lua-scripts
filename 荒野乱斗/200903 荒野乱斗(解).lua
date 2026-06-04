function Main0()
SN = gg.choice({
	 "废柴菜单！",
}, nil, "2580457306")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "低移速（稳定）",
	 "高移速（不稳定）",
	 "女枪（移速）",
	 "视角（有效视野）",
	 "公牛（移速）",
	 "无后（微）",
	 "无后（纯无）",
	 "自瞄",
	 "二倍视角",
	 "上帝视角",
	 "无后摇",
}, nil, "废柴nb，NB，nb")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
if SN==5 then
	 HS6()
end
if SN==6 then
	 HS7()
end
if SN==7 then
	 HS8()
end
if SN==8 then
	 HS9()
end
if SN==9 then
	 HS10()
end
if SN==10 then
	 HS11()
end
if SN==11 then
	 HS12()
end
if SN==12 then
	 HS13()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.0010099", gg.TYPE_FLOAT)
	 gg.toast("低移速开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.00100000005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.0015", gg.TYPE_DWORD)
	 gg.toast("高移速成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;720;12;120", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("720", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1100", gg.TYPE_DOUBLE)
	 gg.toast("女枪成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.02", gg.TYPE_FLOAT)
	 gg.toast("超高上帝成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;770;12;145", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_DWORD)
	 gg.toast("公牛移速成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无后成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.01999999955", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("无后成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("自动瞄准成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.016", gg.TYPE_FLOAT)
	 gg.toast("二倍视角成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.02", gg.TYPE_FLOAT)
	 gg.toast("上帝视角成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01999999955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00000001", gg.TYPE_FLOAT)
	 gg.toast("无后摇成功")
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