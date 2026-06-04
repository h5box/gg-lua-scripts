function Main0()
SN = gg.choice({
	 "90%封号",
	 "电刀移速超快（人机）（第二步）",
	 "电刀一金币（人机）（第一步）",
	 "电刀百分百暴击（人机）（第三步）",
	 "电刀攻速封顶（人机）（第四步）",
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
	 HS6()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "稳定奔放人机哦！")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1D;3000D;2000D;800D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("80000", gg.TYPE_DWORD)
	 gg.toast("速度修改完毕小心晕车")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1840D;3000D;2000D;800D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1840", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("电刀超级便宜")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1D;3000D;2000D;80000D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_DWORD)
	 gg.toast("暴击杠杠滴！！！！")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1D;3000D;10000D;80000D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20000", gg.TYPE_DWORD)
	 gg.toast("攻速已经拉满了，盘它！")
	 gg.clearResults()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end