function Main0()
SN = gg.choice({
	 "无限小喷",
}, nil, "########")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "退出脚本",
	 "无限小喷",
}, nil, "#####")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX=0
end

function HS2()
	 os.exit()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("20;3.5;25", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("250", gg.TYPE_DOUBLE)
	 gg.toast("无限小喷开启成功😊")
	 gg.clearResults()
end



Main0()