function Main0()
SN = gg.choice({
	 "秒杀：www.kjdao.cc",
}, nil, "步云桥")
if SN==1 then
	 HS2()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("114,188,600D;1F::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_DWORD)
	 gg.toast("ＱＵＡＴＲＡ")
	 gg.clearResults()
end



Main0()