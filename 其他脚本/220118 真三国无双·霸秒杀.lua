function Main0()
SN = gg.choice({
	 "真三国无双·霸秒杀",
}, nil, "")
if SN==1 then
	 Main2()
end
FX=0
end

function Main2()
SN = gg.choice({
	 "真三国无双·霸秒杀",
}, nil, "大厅开，没有什么可以说的，思路别人的")
if SN==1 then
	 Main3()
end
FX=0
end

function Main3()
SN = gg.choice({
	 "秒杀",
	 "退出脚本",
}, nil, "大厅开，封号别找我，本人自己测试可用")
if SN==1 then
	 HS4()
end
if SN==2 then
	 HS5()
end
FX=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("40;3;10;10;2;1;10,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS5()
	 os.exit()
end



Main0()