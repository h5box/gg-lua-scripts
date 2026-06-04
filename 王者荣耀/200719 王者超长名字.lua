function Main0()
SN = gg.choice({
	 "王者超长名字",
	 "退出脚本",
}, nil, "无名制作")
if SN==1 then
	 HS3()
end
if SN==2 then
	 HS4()
end
FX=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;12;86400::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("64", gg.TYPE_DWORD)
	 gg.toast("50％")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("42;16;::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("88", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS4()
	 os.exit()
end



Main0()