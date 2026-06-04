function Main0()
SN = gg.choice({
	 "人物美化区",
	 "背包美化",
	 "头盔美化",
	 "枪械美化",
	 "车辆美化",
	 "自瞄区",
	 "范围区",
	 "实用功能",
	 "载具区",
	 "路飞区",
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main16()
end
if SN==3 then
	 Main52()
end
if SN==4 then
	 Main66()
end
if SN==5 then
	 Main106()
end
if SN==6 then
	 Main115()
end
if SN==7 then
	 Main119()
end
if SN==8 then
	 Main126()
end
if SN==9 then
	 Main143()
end
if SN==10 then
	 Main150()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "s1战斗裤",
	 "木乃伊",
	 "小黄裤",
	 "身法口罩",
	 "身法衣",
	 "小白衣",
	 "红色风衣",
	 "牛仔外套",
	 "花仙子",
	 "幻世周年",
	 "小狗",
	 "金色手臂",
	 "金色大衣",
	 "黑色大衣",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net\nsgn")
if SN[1]==true then
	 HS4()
end
if SN[2]==true then
	 HS9()
end
if SN[3]==true then
	 HS10()
end
if SN[4]==true then
	 HS11()
end
if SN[5]==true then
	 HS12()
end
if SN[6]==true then
	 HS13()
end
if SN[7]==true then
	 HS14()
end
if SN[8]==true then
	 HS23()
end
if SN[9]==true then
	 HS43()
end
if SN[10]==true then
	 HS44()
end
if SN[11]==true then
	 HS45()
end
if SN[12]==true then
	 HS46()
end
if SN[13]==true then
	 HS47()
end
if SN[14]==true then
	 HS48()
end
if SN[15]==true then
	 HS51()
end
FX1=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("404031", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("404031", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 404049}})
	 end
	 gg.toast("s1身法裤🆗")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1400687}})
	 end
	 gg.toast("木乃伊🆗")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("404031", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("404031", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 404001}})
	 end
	 gg.toast("小黄裤🆗")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("405000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("405000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1403119}})
	 end
	 gg.toast("身法口罩🆗")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1404021}})
	 end
	 gg.toast("身法衣🆗")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 403005}})
	 end
	 gg.toast("小白衣🆗")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1400781}})
	 end
	 gg.toast("红色风衣🆗")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 403201}})
	 end
	 gg.toast("牛仔外套🆗")
	 gg.clearResults()
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1405132}})
	 end
	 gg.toast("花仙子🆗")
	 gg.clearResults()
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1405096}})
	 end
	 gg.toast("幻世周年🆗")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1405556}})
	 end
	 gg.toast("小狗🆗")
	 gg.clearResults()
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1405634}})
	 end
	 gg.toast("金色手臂🆗")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1405695}})
	 end
	 gg.toast("金色风衣🆗")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1405355}})
	 end
	 gg.toast("黑色大衣🆗")
	 gg.clearResults()
end

function HS51()
	 Main0()
end

function Main16()
SN = gg.multiChoice({
	 "银羽背包（1）",
	 "银羽背包（2）",
	 "银羽背包（3）",
	 "小丑背包（1）",
	 "小丑背包（2）",
	 "小丑背包（3）",
	 "恐龙背包（1）",
	 "恐龙背包（2）",
	 "恐龙背包（3）",
	 "棕色背包（1）",
	 "棕色背包（2）",
	 "棕色背包（3）",
	 "冰雪背包（1）",
	 "冰雪背包（2）",
	 "冰雪背包（3）",
	 "恶魔背包（1）",
	 "恶魔背包（2）",
	 "恶魔背包（3）",
	 "小狗背包（1）",
	 "小狗背包（2）",
	 "小狗背包（3）",
	 "粉红背包（1）",
	 "粉红背包（2）",
	 "粉红背包（3）",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS17()
end
if SN[2]==true then
	 HS18()
end
if SN[3]==true then
	 HS19()
end
if SN[4]==true then
	 HS20()
end
if SN[5]==true then
	 HS21()
end
if SN[6]==true then
	 HS22()
end
if SN[7]==true then
	 HS24()
end
if SN[8]==true then
	 HS25()
end
if SN[9]==true then
	 HS26()
end
if SN[10]==true then
	 HS27()
end
if SN[11]==true then
	 HS28()
end
if SN[12]==true then
	 HS29()
end
if SN[13]==true then
	 HS30()
end
if SN[14]==true then
	 HS31()
end
if SN[15]==true then
	 HS32()
end
if SN[16]==true then
	 HS33()
end
if SN[17]==true then
	 HS34()
end
if SN[18]==true then
	 HS35()
end
if SN[19]==true then
	 HS36()
end
if SN[20]==true then
	 HS37()
end
if SN[21]==true then
	 HS38()
end
if SN[22]==true then
	 HS39()
end
if SN[23]==true then
	 HS40()
end
if SN[24]==true then
	 HS41()
end
if SN[25]==true then
	 HS42()
end
FX1=0
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001009}})
	 end
	 gg.toast("银羽背包（1）🆗")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002009}})
	 end
	 gg.toast("银羽背包（2）")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003009}})
	 end
	 gg.toast("银羽背包（3）")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001051}})
	 end
	 gg.toast("小丑背包（1）🆗")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002051}})
	 end
	 gg.toast("小丑背包（2）🆗")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003051}})
	 end
	 gg.toast("小丑背包（3）🆗")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001065}})
	 end
	 gg.toast("恐龙背包（1）🆗")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002065}})
	 end
	 gg.toast("恐龙背包（2）🆗")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003065}})
	 end
	 gg.toast("恐龙背包（3）🆗")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001090}})
	 end
	 gg.toast("棕色背包（1）🆗")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002090}})
	 end
	 gg.toast("棕色背包（2）🆗")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003090}})
	 end
	 gg.toast("棕色背包（3）🆗")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001093}})
	 end
	 gg.toast("冰雪背包（1）🆗")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002093}})
	 end
	 gg.toast("冰雪背包（2）🆗")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003093}})
	 end
	 gg.toast("冰雪背包（3）🆗")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001126}})
	 end
	 gg.toast("恶魔背包（1）🆗")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002126}})
	 end
	 gg.toast("恶魔背包（2）🆗")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003126}})
	 end
	 gg.toast("恶魔背包（3）🆗")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001102}})
	 end
	 gg.toast("小狗背包（1）🆗")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002102}})
	 end
	 gg.toast("小狗背包（2）🆗")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003102}})
	 end
	 gg.toast("小狗背包（3）🆗")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501001013}})
	 end
	 gg.toast("粉红背包（1）🆗")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501002013}})
	 end
	 gg.toast("粉红背包（3）🆗")
	 gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1501003013}})
	 end
	 gg.toast("粉红背包（3）🆗")
	 gg.clearResults()
end

function HS42()
	 Main0()
end

function Main52()
SN = gg.multiChoice({
	 "小狗头盔（1）",
	 "小狗头盔（2）",
	 "小狗头盔（3）",
	 "棕色头盔（1）",
	 "棕色头盔（2）",
	 "棕色头盔（3）",
	 "身法头盔（1）",
	 "身法头盔（2）",
	 "身法头盔（3）",
	 "斗笠头盔（1）",
	 "斗笠头盔（2）",
	 "斗笠头盔（3）",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS53()
end
if SN[2]==true then
	 HS54()
end
if SN[3]==true then
	 HS55()
end
if SN[4]==true then
	 HS56()
end
if SN[5]==true then
	 HS57()
end
if SN[6]==true then
	 HS58()
end
if SN[7]==true then
	 HS59()
end
if SN[8]==true then
	 HS60()
end
if SN[9]==true then
	 HS61()
end
if SN[10]==true then
	 HS62()
end
if SN[11]==true then
	 HS63()
end
if SN[12]==true then
	 HS64()
end
if SN[13]==true then
	 HS65()
end
FX1=0
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502001099}})
	 end
	 gg.toast("小狗头盔（1）🆗")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502002099}})
	 end
	 gg.toast("小狗头盔（2）🆗")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502003099}})
	 end
	 gg.toast("小狗头盔（3）🆗")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502001071}})
	 end
	 gg.toast("棕色头盔（1）🆗")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502002071}})
	 end
	 gg.toast("棕色头盔（2）🆗")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502003071}})
	 end
	 gg.toast("棕色头盔（3）🆗")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502001088}})
	 end
	 gg.toast("身法头盔（1）🆗")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502002000}})
	 end
	 gg.toast("身法头盔（2）🆗")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1502003088}})
	 end
	 gg.toast("身法头盔（3）🆗")
	 gg.clearResults()
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1402298}})
	 end
	 gg.toast("斗笠头盔（1🆗）")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1402299}})
	 end
	 gg.toast("斗笠头盔（2）🆗")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1402298}})
	 end
	 gg.toast("斗笠头盔（3）🆗")
	 gg.clearResults()
end

function HS65()
	 Main0()
end

function Main66()
SN = gg.multiChoice({
	 "m4冰雪",
	 "ak赤诚",
	 "死嘎赤诚",
	 "ak金",
	 "m4金",
	 "m4金机喵",
	 "m4萌龙",
	 "m762光子鸡",
	 "awm雵红",
	 "98k赤诚",
	 "98k粉",
	 "98k金",
	 "狗砸",
	 "Aug",
	 "mk47",
	 "uzi",
	 "ump45",
	 "维克托",
	 "汤姆逊",
	 "m24",
	 "sks",
	 "vss",
	 "迷你",
	 "s686",
	 "s1897",
	 "s12k",
	 "m249",
	 "OP28",
	 "qbz",
	 "SLR",
	 "平底锅",
	 "撬棍",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS67()
end
if SN[2]==true then
	 HS72()
end
if SN[3]==true then
	 HS73()
end
if SN[4]==true then
	 HS74()
end
if SN[5]==true then
	 HS75()
end
if SN[6]==true then
	 HS76()
end
if SN[7]==true then
	 HS77()
end
if SN[8]==true then
	 HS78()
end
if SN[9]==true then
	 HS79()
end
if SN[10]==true then
	 HS81()
end
if SN[11]==true then
	 HS82()
end
if SN[12]==true then
	 HS83()
end
if SN[13]==true then
	 HS84()
end
if SN[14]==true then
	 HS85()
end
if SN[15]==true then
	 HS86()
end
if SN[16]==true then
	 HS87()
end
if SN[17]==true then
	 HS88()
end
if SN[18]==true then
	 HS90()
end
if SN[19]==true then
	 HS91()
end
if SN[20]==true then
	 HS92()
end
if SN[21]==true then
	 HS93()
end
if SN[22]==true then
	 HS94()
end
if SN[23]==true then
	 HS95()
end
if SN[24]==true then
	 HS96()
end
if SN[25]==true then
	 HS97()
end
if SN[26]==true then
	 HS98()
end
if SN[27]==true then
	 HS99()
end
if SN[28]==true then
	 HS100()
end
if SN[29]==true then
	 HS101()
end
if SN[30]==true then
	 HS102()
end
if SN[31]==true then
	 HS103()
end
if SN[32]==true then
	 HS104()
end
if SN[33]==true then
	 HS105()
end
FX1=0
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101004040}})
	 end
	 gg.toast("m4冰雪🆗")
	 gg.clearResults()
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101001006}})
	 end
	 gg.toast("ak赤诚🆗")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101003018}})
	 end
	 gg.toast("死嘎赤诚🆗")
	 gg.clearResults()
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101001007}})
	 end
	 gg.toast("ak金🆗")
	 gg.clearResults()
end

function HS75()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101004034}})
	 end
	 gg.toast("m4金🆗")
	 gg.clearResults()
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("20300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1010040342}})
	 end
	 gg.toast("m4金机喵")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101004083}})
	 end
	 gg.toast("m4萌龙🆗")
	 gg.clearResults()
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101008014}})
	 end
	 gg.toast("m762金🆗")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103003002}})
	 end
	 gg.toast("awm霓虹🆗")
	 gg.clearResults()
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103001009}})
	 end
	 gg.toast("98k赤诚🆗")
	 gg.clearResults()
end

function HS82()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103001010}})
	 end
	 gg.toast("98k粉🆗")
	 gg.clearResults()
end

function HS83()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103001013}})
	 end
	 gg.toast("98k金🆗")
	 gg.clearResults()
end

function HS84()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101005002}})
	 end
	 gg.toast("狗砸🆗")
	 gg.clearResults()
end

function HS85()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101006001}})
	 end
	 gg.toast("Aug🆗")
	 gg.clearResults()
end

function HS86()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10100900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10100900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1101009001}})
	 end
	 gg.toast("mk47🆗")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1102001024}})
	 end
	 gg.toast("uzi🆗")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1102002030}})
	 end
	 gg.toast("ump45🆗")
	 gg.clearResults()
end

function HS90()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1102003015}})
	 end
	 gg.toast("维克托🆗")
	 gg.clearResults()
end

function HS91()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1102004012}})
	 end
	 gg.toast("汤姆逊🆗")
	 gg.clearResults()
end

function HS92()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10300200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103002012}})
	 end
	 gg.toast("m24🆗")
	 gg.clearResults()
end

function HS93()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103004018}})
	 end
	 gg.toast("sks🆗")
	 gg.clearResults()
end

function HS94()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103005015}})
	 end
	 gg.toast("vss🆗")
	 gg.clearResults()
end

function HS95()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103006011}})
	 end
	 gg.toast("迷你🆗")
	 gg.clearResults()
end

function HS96()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1104001018}})
	 end
	 gg.toast("s686🆗")
	 gg.clearResults()
end

function HS97()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1104002028}})
	 end
	 gg.toast("s1897🆗")
	 gg.clearResults()
end

function HS98()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1104003015}})
	 end
	 gg.toast("s12k🆗")
	 gg.clearResults()
end

function HS99()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1105001012}})
	 end
	 gg.toast("m249🆗")
	 gg.clearResults()
end

function HS100()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1105002023}})
	 end
	 gg.toast("OP28🆗")
	 gg.clearResults()
end

function HS101()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103010001}})
	 end
	 gg.toast("qbz🆗")
	 gg.clearResults()
end

function HS102()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1103009013}})
	 end
	 gg.toast("slr🆗")
	 gg.clearResults()
end

function HS103()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1102005011}})
	 end
	 gg.toast("平底锅🆗")
	 gg.clearResults()
end

function HS104()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10200500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10200500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1102005011}})
	 end
	 gg.toast("撬棍🆗")
	 gg.clearResults()
end

function HS105()
	 Main0()
end

function Main106()
SN = gg.multiChoice({
	 "吉普",
	 "轿车",
	 "磞磞",
	 "船",
	 "三轮摩托",
	 "摩托",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS107()
end
if SN[2]==true then
	 HS108()
end
if SN[3]==true then
	 HS109()
end
if SN[4]==true then
	 HS110()
end
if SN[5]==true then
	 HS111()
end
if SN[6]==true then
	 HS112()
end
if SN[7]==true then
	 HS113()
end
FX1=0
end

function HS107()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1908001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1908001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1908023}})
	 end
	 gg.toast("吉普🆗")
	 gg.clearResults()
end

function HS108()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1903001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1903001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1903037}})
	 end
	 gg.toast("轿车🆗")
	 gg.clearResults()
end

function HS109()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1907001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1907001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1907018}})
	 end
	 gg.toast("磞磞🆗")
	 gg.clearResults()
end

function HS110()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1911001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1911001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1911008}})
	 end
	 gg.toast("船🆗")
	 gg.clearResults()
end

function HS111()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1902001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1902001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1902013}})
	 end
	 gg.toast("三轮摩托")
	 gg.clearResults()
end

function HS112()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1901001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1901001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1901040}})
	 end
	 gg.toast("摩托🆗")
	 gg.clearResults()
end

function HS113()
	 Main0()
end

function Main115()
SN = gg.multiChoice({
	 "开火自瞄",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS129()
end
if SN[2]==true then
	 HS134()
end
FX1=0
end

function HS129()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -999}})
	 end
	 gg.toast("开火自瞄🆗")
	 gg.clearResults()
end

function HS134()
	 Main0()
end

function Main119()
SN = gg.multiChoice({
	 "大范围",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS121()
end
if SN[2]==true then
	 HS135()
end
FX1=0
end

function HS121()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 400}})
	 end
	 gg.toast("大范围🆗")
	 gg.clearResults()
end

function HS135()
	 Main0()
end

function Main126()
SN = gg.multiChoice({
	 "黑天",
	 "瞬击",
	 "16:9",
	 "黄色血雾",
	 "高伤",
	 "聚点",
	 "秒开倍镜",
	 "秒落地",
	 "人物天线",
	 "人物爬墙",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS127()
end
if SN[2]==true then
	 HS130()
end
if SN[3]==true then
	 HS131()
end
if SN[4]==true then
	 HS138()
end
if SN[5]==true then
	 HS139()
end
if SN[6]==true then
	 HS141()
end
if SN[7]==true then
	 HS142()
end
if SN[8]==true then
	 HS146()
end
if SN[9]==true then
	 HS147()
end
if SN[10]==true then
	 HS149()
end
FX1=0
end

function HS127()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("32933049016582913", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32933049016582913", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_QWORD,freeze = true,value = 0}})
	 end
	 gg.toast("黑天🆗")
	 gg.clearResults()
end

function HS130()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("瞬击🆗")
	 gg.clearResults()
end

function HS131()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("360", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 280}})
	 end
	 gg.toast("16:9🆗")
	 gg.clearResults()
end

function HS138()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-289,596,733;-308,983,296;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-289,596,733;-308,983,296;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("黄色血雾")
	 gg.clearResults()
end

function HS139()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("341;412", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 99;180}})
	 end
	 gg.toast("高伤🆗")
	 gg.clearResults()
end

function HS141()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 90}})
	 end
	 gg.toast("聚点🆗")
	 gg.clearResults()
end

function HS142()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -9151}})
	 end
	 gg.toast("秒开倍镜🆗")
	 gg.clearResults()
end

function HS146()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -9999}})
	 end
	 gg.toast("秒落地🆗")
	 gg.clearResults()
end

function HS147()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 99999}})
	 end
	 gg.toast("人物天线🆗")
	 gg.clearResults()
end

function HS149()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;35;443~1000;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5000}})
	 end
	 gg.toast("人物爬墙🆗")
	 gg.clearResults()
end

function Main143()
SN = gg.multiChoice({
	 "吉普加速",
	 "轿车加速（测试中）",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS144()
end
if SN[2]==true then
	 HS153()
end
if SN[3]==true then
	 HS154()
end
FX1=0
end

function HS144()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.647058857;0.30000001192::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100.241295}})
	 end
	 gg.toast("吉普加速🆗")
	 gg.clearResults()
end

function HS153()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -023}})
	 end
	 gg.toast("轿车加速🆗")
	 gg.clearResults()
end

function HS154()
	 Main0()
end

function Main150()
SN = gg.multiChoice({
	 "下蹲路飞",
	 "返回主页",
}, nil, "科技岛：www.kjdao.net")
if SN[1]==true then
	 HS151()
end
if SN[2]==true then
	 HS152()
end
FX1=0
end

function HS151()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2,810,246,175,001,347,936", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2,810,246,175,001,347,936", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2,810,246,172,909,699,072}})
	 end
	 gg.toast("下蹲路飞🆗")
	 gg.clearResults()
end

function HS152()
	 Main0()
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