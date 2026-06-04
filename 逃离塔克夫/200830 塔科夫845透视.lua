function Main0()
SN = gg.choice({
	 "845透视（最低画质）",
}, nil, "1")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "点击开启",
}, nil, "845透视")
if SN==1 then
	 HS4()
end
FX=0
end

function HS4()
	  gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1.1011433e-19;24,576.0078125;2.0;1.6623025e-19;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("人物马赛克")
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("1.6628977e-19;1.6623694e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("透明化")
	 gg.clearResults()
end



Main0()