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
	 "分身加速",
	 "视野扩大二倍",
}, nil, "这是一个公告")
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
	 gg.searchNumber("10;16;20;30;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("分身加速开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1;500;100;100;500;250;250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("视野扩大开启成功")
	 gg.clearResults()
end



Main0()