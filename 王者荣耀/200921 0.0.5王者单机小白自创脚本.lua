function Main0()
SN = gg.choice({
	 "菜单1",
	 "无cd 点进来",
	 "英雄技能无cd",
	 "不能玩的英雄无cd",
	 "解锁被锁和不能玩的英雄",
	 "修改英雄皮肤（出错）",
	 "退出脚本",
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main43()
end
if SN==3 then
	 Main2()
end
if SN==4 then
	 Main68()
end
if SN==5 then
	 Main26()
end
if SN==6 then
	 Main78()
end
if SN==7 then
	 HS75()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "这里真没东西!别点进来",
}, nil, "新手小白做的免费脚本")
if SN==1 then
	 Main35()
end
FX=0
end

function Main35()
SN = gg.choice({
}, nil, "目前就这样，有时间更新一下，毕竟我也就是一个小白\n不懂的东西太多了\n修改时间2020.9.20")
FX=0
end

function Main43()
SN = gg.choice({
	 "120秒改0",
	 "100秒改0",
	 "90秒改0",
	 "60秒改0",
	 "30秒改0",
	 "返回",
}, nil, "修改装备cd和召唤师技能cd")
if SN==1 then
	 HS44()
end
if SN==2 then
	 HS47()
end
if SN==3 then
	 HS45()
end
if SN==4 then
	 HS46()
end
if SN==5 then
	 HS48()
end
if SN==6 then
	 HS67()
end
FX=0
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("100000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS67()
	 Main0()
end

function Main2()
SN = gg.choice({
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
	 "返回",
}, nil, "选择英雄界面时使用")
if SN==1 then
	 HS49()
end
if SN==2 then
	 HS50()
end
if SN==3 then
	 HS51()
end
if SN==4 then
	 HS52()
end
if SN==5 then
	 HS53()
end
if SN==6 then
	 HS54()
end
if SN==7 then
	 HS55()
end
if SN==8 then
	 HS56()
end
if SN==9 then
	 HS57()
end
if SN==10 then
	 HS58()
end
if SN==11 then
	 HS59()
end
if SN==12 then
	 HS60()
end
if SN==13 then
	 HS61()
end
if SN==14 then
	 HS62()
end
if SN==15 then
	 HS63()
end
if SN==16 then
	 HS64()
end
if SN==17 then
	 HS65()
end
if SN==18 then
	 HS66()
end
if SN==19 then
	 HS73()
end
FX=0
end

function HS49()
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

function HS50()
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

function HS51()
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

function HS52()
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

function HS53()
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

function HS54()
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

function HS55()
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

function HS56()
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

function HS57()
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

function HS58()
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

function HS59()
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

function HS60()
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

function HS61()
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

function HS62()
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

function HS63()
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

function HS64()
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

function HS65()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10920;10000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function HS66()
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

function HS73()
	 Main0()
end

function Main68()
SN = gg.choice({
	 "武则天一技能",
	 "武则天二技能",
	 "武则天三技能",
	 "韩信一技能",
	 "韩信二技能",
	 "韩信三技能",
}, nil, "选择英雄界面时使用\n有些英雄技能特殊 可能会没效果")
if SN==1 then
	 HS69()
end
if SN==2 then
	 HS70()
end
if SN==3 then
	 HS71()
end
if SN==4 then
	 HS72()
end
if SN==5 then
	 HS76()
end
if SN==6 then
	 HS77()
end
FX=0
end

function HS69()
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

function HS70()
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

function HS71()
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

function HS72()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15010;9000;55", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function HS76()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15020;5000;80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function HS77()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15030;36000;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
	 "返回",
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
if SN==7 then
	 HS74()
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

function HS74()
	 Main0()
end

function Main78()
SN = gg.choice({
	 "铠 龙域领主",
	 "铠 曙光守护者",
	 "铠 青龙志",
	 "李白 范海辛",
	 "李白 千年之狐",
	 "李白 凤求凰",
	 "李白 敏锐之力",
	 "武则天 东方不败",
	 "武则天 海洋之心",
	 "武则天 倪克斯神境",
	 "返回",
}, nil, "修改成功后点一下皮肤\n原皮肤修改，不是原皮肤推荐重启游戏，重新修改")
if SN==1 then
	 HS79()
end
if SN==2 then
	 HS80()
end
if SN==3 then
	 HS81()
end
if SN==4 then
	 HS83()
end
if SN==5 then
	 HS84()
end
if SN==6 then
	 HS85()
end
if SN==7 then
	 HS86()
end
if SN==8 then
	 HS87()
end
if SN==9 then
	 HS88()
end
if SN==10 then
	 HS89()
end
if SN==11 then
	 HS82()
end
FX=0
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19301", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19302", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19303", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS83()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13101", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS84()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13102", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS85()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13103", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS86()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13104", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13601", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13602", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS89()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";13603", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS82()
	 Main0()
end

function HS75()
	 os.exit()
end



Main0()