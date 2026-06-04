function Main1()
SN = gg.choice({
	 "1飞行，转上2改1，下24改1真创",
	 "真创代码，以防万一",
	 "2假创找E4结尾名称改1或2或0",
	 "假创提示，需要模式就改什么",
}, nil, "想简单点就按照吧")
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
	 Main5()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.searchNumber("0.00643634377;0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00643634377", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_FLOAT)
	 gg.toast("第一步")
end

function HS3()
	 gg.clearResults()
	 gg.searchNumber("-1588916341", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("完成")
end

function HS4()
	 gg.clearResults()
	 gg.searchNumber("1.875;0D~16D;5;10;0.60000002384::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_FLOAT)
	 gg.toast("完成")
end

function Main5()
SN = gg.choice({
}, nil, "创造1，生存0，冒险2，这是模式代码")
FX=0
end



Main1()