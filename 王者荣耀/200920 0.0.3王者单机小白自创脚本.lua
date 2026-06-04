function Main0()
SN = gg.choice({
	 "菜单1",
	 "下面是技能无cd",
	 "吕布一技能",
	 "吕布二技能",
	 "吕布三技能",
	 "鲁班一技能",
	 "鲁班二技能",
	 "鲁班三技能",
	 "铠一技能",
	 "铠二技能",
	 "铠三技能",
	 "孙悟空一技能",
	 "孙悟空二技能",
	 "孙悟空三技能",
	 "妲己一技能",
	 "妲己二技能",
	 "妲己三技能",
	 "小乔一技能",
	 "小乔二技能",
	 "小乔三技能",
	 "武则天一技能",
	 "武则天二技能",
	 "武则天三技能",
	 "解锁被锁和不能玩的英雄  点进来",
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main2()
end
if SN==3 then
	 HS16()
end
if SN==4 then
	 HS17()
end
if SN==5 then
	 HS18()
end
if SN==6 then
	 HS19()
end
if SN==7 then
	 HS20()
end
if SN==8 then
	 HS21()
end
if SN==9 then
	 HS22()
end
if SN==10 then
	 HS23()
end
if SN==11 then
	 HS24()
end
if SN==12 then
	 HS6()
end
if SN==13 then
	 HS7()
end
if SN==14 then
	 HS8()
end
if SN==15 then
	 HS9()
end
if SN==16 then
	 HS10()
end
if SN==17 then
	 HS11()
end
if SN==18 then
	 HS12()
end
if SN==19 then
	 HS13()
end
if SN==20 then
	 HS14()
end
if SN==21 then
	 HS28()
end
if SN==22 then
	 HS29()
end
if SN==23 then
	 HS30()
end
if SN==24 then
	 Main26()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "这里没东西",
	 "退出脚本",
}, nil, "新手小白做的免费脚本")
if SN==1 then
	 Main35()
end
if SN==2 then
	 HS4()
end
FX=0
end

function Main35()
SN = gg.choice({
}, nil, "目前就这样 毕竟我也就是一个小白\n不懂的东西太多了")
FX=0
end

function HS4()
	 os.exit()
end

function Main2()
SN = gg.choice({
}, nil, "选择英雄界面时使用")
FX=0
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12310;5000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12320;8000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12330;50000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11210;7000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11220;15000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11230;40000;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19310;10000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19320;6000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19330;60000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16710;12000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16720;8000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16730;40000;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10910;5000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10920;12000;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10930;18000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10610;5000;45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10620;10000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10630;42000;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("13610;3000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("13620;8000;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("13630;80000;150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Main26()
SN = gg.choice({
	 "嬴政",
	 "赵云",
	 "武则天",
	 "韩信",
	 "马超",
	 "艾琳",
}, nil, "A内存范围 搜索类型D 先选小乔 然后搜索106 再选墨子 改善108 再修改成???\n最后点一下皮肤 再点回英雄就可以确定了")
if SN==1 then
	 Main37()
end
if SN==2 then
	 Main38()
end
if SN==3 then
	 Main39()
end
if SN==4 then
	 Main40()
end
if SN==5 then
	 Main41()
end
if SN==6 then
	 Main42()
end
FX=0
end

function Main37()
SN = gg.choice({
}, nil, "三个问号写110就行了")
FX=0
end

function Main38()
SN = gg.choice({
}, nil, "三个问号写107就好了")
FX=0
end

function Main39()
SN = gg.choice({
}, nil, "三个问号写136就好了")
FX=0
end

function Main40()
SN = gg.choice({
}, nil, "三个问号写150就好了")
FX=0
end

function Main41()
SN = gg.choice({
}, nil, "三个问号写518就好了")
FX=0
end

function Main42()
SN = gg.choice({
}, nil, "三个问号写155就好了")
FX=0
end



Main0()