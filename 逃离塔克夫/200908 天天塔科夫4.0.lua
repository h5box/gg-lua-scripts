function Main0()
SN = gg.choice({
	 "进入脚本",
}, nil, "不用端口封号自己负责，倒卖司马")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "透视（不保证你的处理器能用）",
	 "无后",
	 "头部范围",
	 "上帝视角",
	 "实体变大",
	 "全图除草",
	 "天线",
	 "枪械射速",
	 "开镜路飞",
	 "范围拾取",
	 "返回主页",
}, nil, "快猫搬砖工制作，脚本将持续更新，天天总群708056205")
if SN==1 then
	 HS12()
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
	 HS7()
end
if SN==6 then
	 HS9()
end
if SN==7 then
	 HS11()
end
if SN==8 then
	 HS13()
end
if SN==9 then
	 HS14()
end
if SN==10 then
	 HS15()
end
if SN==11 then
	 HS5()
end
FX=0
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1,073,741,824;541,343,762;897,988,541;541,343,763:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1,123,024,896", gg.TYPE_DWORD)
	 gg.toast("您的不支持您的处理器，开启失败")
	 gg.clearResults()
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
	 gg.toast("无后开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("头部范围开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.89999997616;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 51}})
	 end
	 gg.toast("上帝视角开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.81}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10D;5,126D;3D;11D:", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("除草成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -120.0}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 7}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.484;0.284;0.924", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.484;0.284;0.924", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 15}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5D;0E;1F;2F::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})
	 end
	 gg.toast("范围拾取成功")
	 gg.clearResults()
end

function HS5()
	 Main0()
end



Main0()