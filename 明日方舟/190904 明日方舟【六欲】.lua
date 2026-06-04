function Main0()
SN = gg.choice({
	 "禁止二改原创【六欲】",
}, nil, "")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "秒杀",
}, nil, "游戏内开启")
if SN==1 then
	 HS2()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("400~3000;100~700;31~300;5~30;1~5::22", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(3000)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end



Main0()