function Main0()
SN = gg.choice({
	 "动作修改",
}, nil, "")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "俄舞改影之舞",
	 "俄舞改太极",
}, nil, "")
if SN==1 then
	 Main3()
end
if SN==2 then
	 Main5()
end
FX=0
end

function Main3()
SN = gg.choice({
	 "影之舞",
}, nil, "")
if SN==1 then
	 HS4()
end
FX=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2201401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2209402", gg.TYPE_DWORD)
	 gg.toast("完成")
	 gg.clearResults()
end

function Main5()
SN = gg.choice({
	 "俄舞改太极",
}, nil, "")
if SN==1 then
	 HS6()
end
FX=0
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2201401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2210002", gg.TYPE_DWORD)
	 gg.toast("完成")
	 gg.clearResults()
end



Main0()