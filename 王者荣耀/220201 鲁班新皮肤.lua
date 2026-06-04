function Main0()
SN = gg.choice({
	 "一级菜单",
}, nil, "太空猫真帅")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "鲁班皮肤修改",
	 "鲁班一技能",
	 "鲁班二技能",
	 "鲁班大招",
}, nil, "这是一个公告")
if SN==1 then
	 HS5()
end
if SN==2 then
	 HS2()
end
if SN==3 then
	 HS3()
end
if SN==4 then
	 HS4()
end
FX=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";11208", gg.TYPE_WORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("7,000;310,499,208;1,361,193,651", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15,000;-1,076,025,662;391,747,435", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("40,000;1,002,262,996;1,711,325,466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end



Main0()