function Main0()
SN = gg.choice({
	 "进入脚本",
}, nil, "倒卖死马，配合端口更好")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "无后",
	 "范围（稳定）",
}, nil, "这是稳定脚本（不闪退）不是裸奔脚本")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("700", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.5}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end



Main0()