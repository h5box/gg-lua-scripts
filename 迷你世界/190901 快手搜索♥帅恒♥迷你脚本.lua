function Main0()
SN = gg.choice({
	 "迷你世界白九脚本",
	 "肘子吃出各种东西",
	 "主界面可开启:物品解锁",
	 "秒孵化坐骑蛋",
	 "联机不可用:生物掉落物品",
	 "刷物品",
	 "联机不可用：野人掉落999星星",
	 "无限跳1层用",
	 "无限跳2层用",
	 "无限跳3层用",
	 "无线跳4层用",
	 "无线跳5层用",
	 "无线跳6层用",
	 "无限跳7层用",
	 "无限跳8层用",
	 "无限跳9层用",
	 "无限跳10层用",
	 "无限跳20层用",
	 "无限跳30层用",
	 "无限跳40层用",
	 "无限跳50层用",
	 "无限跳60层用",
	 "无限跳61层用",
	 "无限跳62层用",
	 "无限跳63层用",
	 "无限跳64层用",
	 "无限跳65层用",
	 "无限跳66层用",
	 "无限跳67层用",
	 "无限跳68层用",
	 "无线跳69层用",
	 "无限跳70层用",
}, nil, "快手搜索♥白九♥")
if SN==1 then
	 Main2()
end
if SN==2 then
	 Main60()
end
if SN==3 then
	 Main49()
end
if SN==4 then
	 HS47()
end
if SN==5 then
	 Main23()
end
if SN==6 then
	 HS27()
end
if SN==7 then
	 HS48()
end
if SN==8 then
	 HS45()
end
if SN==9 then
	 HS44()
end
if SN==10 then
	 HS43()
end
if SN==11 then
	 HS42()
end
if SN==12 then
	 HS41()
end
if SN==13 then
	 HS40()
end
if SN==14 then
	 HS39()
end
if SN==15 then
	 HS38()
end
if SN==16 then
	 HS37()
end
if SN==17 then
	 HS36()
end
if SN==18 then
	 HS35()
end
if SN==19 then
	 HS34()
end
if SN==20 then
	 HS22()
end
if SN==21 then
	 HS18()
end
if SN==22 then
	 HS17()
end
if SN==23 then
	 HS16()
end
if SN==24 then
	 HS15()
end
if SN==25 then
	 HS14()
end
if SN==26 then
	 HS3()
end
if SN==27 then
	 HS5()
end
if SN==28 then
	 HS6()
end
if SN==29 then
	 HS10()
end
if SN==30 then
	 HS11()
end
if SN==31 then
	 HS12()
end
if SN==32 then
	 HS13()
end
FX=0
end

function Main2()
SN = gg.multiChoice({
	 "能量剑无限CD",
}, nil, "脚本内容：迷你世界♥白九♥")
if SN[1]==true then
	 HS63()
end
FX=0
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12005;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function Main60()
SN = gg.multiChoice({
	 "肘子吃出钻石块",
	 "肘子吃出金矿搞",
}, nil, "")
if SN[1]==true then
	 HS61()
end
if SN[2]==true then
	 HS62()
end
FX=0
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12526;11302", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11302", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("408", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12526;11302", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11302", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11014", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function Main49()
SN = gg.multiChoice({
	 "火箭背包",
	 "弩",
	 "爆竹",
	 "火箭筒",
	 "弹弓",
}, nil, "")
if SN[1]==true then
	 HS50()
end
if SN[2]==true then
	 HS51()
end
if SN[3]==true then
	 HS52()
end
if SN[4]==true then
	 HS53()
end
if SN[5]==true then
	 HS54()
end
FX=0
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12280;59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("59", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12281;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("成功开启")
	 gg.clearResults()
end

function Main23()
SN = gg.choice({
	 "鸡掉落化石龙坐骑蛋",
	 "鸡掉落小飞鼠坐骑蛋",
	 "鸡掉落麒麟坐骑蛋",
	 "鸡掉落陆行鸟坐骑蛋",
	 "鸡掉落小白像坐骑蛋",
	 "鸡掉落海豹坐骑蛋",
}, nil, "")
if SN==1 then
	 HS59()
end
if SN==2 then
	 HS58()
end
if SN==3 then
	 HS24()
end
if SN==4 then
	 HS55()
end
if SN==5 then
	 HS56()
end
if SN==6 then
	 HS57()
end
FX=0
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 950}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 951}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 952}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 953}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 954}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3400;12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 955}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1000;945,804,457", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("945,804,457", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945,804,524}})
	 end
	 gg.toast("成功开启刷物品")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3101;12526;13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;100;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;200;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;300;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;400;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;500;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;600;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;700;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;800;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;900;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;2000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;3000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;4000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;5000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6100;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6200;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6300;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6400;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6500;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6600;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6700;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6800;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;6900;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;7000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("成功开启")
	 gg.clearResults()
end



Main0()