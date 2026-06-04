function Main0()
SN = gg.choice({
	 "1.65倍(稳如老狗，禁A车)",
	 "1.6倍加速(更稳)",
	 "1.4倍加速(A车模式)",
	 "1.2倍加速(A车低调排位)",
	 "退出仙界",
}, nil, "太平间制作，私人专用，低调使用，稳如老狗")
if SN==1 then
	 HS3()
end
if SN==2 then
	 HS5()
end
if SN==3 then
	 HS6()
end
if SN==4 then
	 HS7()
end
if SN==5 then
	 HS8()
end
FX1=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.5;0.30000001192;0.1000000049::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999999999999", gg.TYPE_FLOAT)
	 gg.toast("1.65加速开启(稳如老狗)")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.5;0.30000001192;0.1000000049::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.6", gg.TYPE_FLOAT)
	 gg.toast("1.6倍开启成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.5;0.30000001192;0.1000000049::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.4", gg.TYPE_FLOAT)
	 gg.toast("A车模式")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.5;0.30000001192;0.1000000049::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.2", gg.TYPE_FLOAT)
	 gg.toast("1.2倍成功，低调排位")
	 gg.clearResults()
end

function HS8()
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