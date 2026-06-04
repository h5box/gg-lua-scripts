function Main0()
SN = gg.choice({
	 "移动回程",
	 "纯净苍穹改回程",
	 "纯净苍穹0金币",
}, nil, "无名制作")
if SN==1 then
	 HS4()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS2()
end
FX=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("256;1288045081;-1622845275改", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("91000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90005", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2230;4000;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2230", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end



Main0()