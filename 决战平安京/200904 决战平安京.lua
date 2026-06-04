

function Main0()
SN = gg.choice({
	 "开局搜索（1）",
	 "第二步（出现人）",
	 "还原",
	 "蜗牛娱乐网www.woniuwl.com",
}, nil, "蜗牛娱乐网www.woniuwl.com")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS5()
end
if SN==4 then
	 HS4()
end
FX=0
end

function HS2()
	 
	 gg.setRanges(4)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("16777216", gg.TYPE_DWORD)
	 gg.toast("开启第二步")
end

function HS3()
	 gg.setRanges(4)
	 gg.searchNumber("16,842,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16,842,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16,842,752D}})
	 end
	 gg.toast("断网开")
end

function HS5()
	 gg.setRanges(4)
	 gg.searchNumber("16,842,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16,842,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("16,777,216", gg.TYPE_DWORD)
	 gg.toast("一局一开")
	 gg.clearResults()
end

function HS4()
	 os.exit()
end



 ::CAINAIO_END::


Main0()