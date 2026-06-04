function Main0()
SN = gg.choice({
	 "小灰灰1.0；脚本是免费的随便用",
	 "❤️上帝视角4倍❤️",
	 "❤️上帝视角5倍❤️",
	 "❤️上帝视角6倍❤️",
	 "退出脚本",
}, nil, "本脚本安全免费")
if SN==1 then
	 Main3()
end
if SN==2 then
	 HS2()
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
FX1=0
end

function Main3()
SN = gg.choice({
}, nil, "本资源完全免费，root稳定，框架没试，自己测")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-1;25;0;0;0::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("40", gg.TYPE_FLOAT)
	 gg.toast("❤️最爱小灰灰❤️")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-1;25;0;0;0::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("45", gg.TYPE_FLOAT)
	 gg.toast("❤️最爱小灰灰❤️")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-1;25;0;0;0::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_FLOAT)
	 gg.toast("❤️最爱小灰灰❤️")
	 gg.clearResults()
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