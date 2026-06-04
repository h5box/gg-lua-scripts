function Main0()
SN = gg.choice({
	 "墨清制作，二改死🐴",
	 "小鸣人改武士白",
	 "小鸣人，泳装照美冥",
	 "佐助，柱间",
	 "井野，招财猫",
	 "伊比喜改柱间",
   "退出"
}, nil, "")
if SN==1 then
	 Main1()
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
if SN==5 then
	 HS5()
end
if SN==6 then
	 HS6()
end
if SN==7 then
	 os.exit()
end
FX=0
end

function Main1()
SN = gg.choice({
}, nil, "")
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;3145785;3145776;49::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3473458;50", gg.TYPE_DWORD)
	 gg.toast("墨清👌👌")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;3145785;3145776;49::23", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3670066;54", gg.TYPE_DWORD)
	 gg.toast("墨清👌👌")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;3145785;3145776;51::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3276848;52", gg.TYPE_DWORD)
	 gg.toast("墨清👌👌")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;3145785;3145776;52::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3211313;57", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;3145785;3407921;51::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3276848;52", gg.TYPE_DWORD)
	 gg.toast("giao")
	 gg.clearResults()
end



Main0()