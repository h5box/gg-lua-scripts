function Main0()
SN = gg.choice({
	 "大厅裸奔午后",
}, nil, "欢迎使用三侬裸奔脚本")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "午后第一步",
	 "午后第二步",
}, nil, "欢迎使用三侬裸奔脚本 功能后续更新！")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.15700105e23F;-2.72505669e28F;-2.2673448e24F;-1.22855325e23F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("第一步已开启")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.6462205e23F;-2.97669991e20F;-2.97561835e20F;-9.98393277e27F;-1.11493373e28F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("裸奔午后已开启")
	 gg.clearResults()
end



Main0()