function Main0()
SN = gg.choice({
	 "一级菜单",
}, nil, "我是一个默默无闻的公告")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "无限兵线",
	 "无尽免费",
	 "无尽秒杀","退出"
}, nil, "这是一个公告")
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
	 os.exit()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3;27000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("27000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("删除data成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2140;110;2500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("删除data成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("0;110;2500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("删除data成功")
	 gg.clearResults()
end



Main0()