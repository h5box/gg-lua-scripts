function Main0()
SN = gg.choice({
	 "",
	 "全模式加米",
}, nil, "############")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS2()
end
FX=0
end

function Main1()
SN = gg.choice({
}, nil, "")
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end



Main0()