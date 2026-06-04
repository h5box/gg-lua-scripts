
function Main0()
SN = gg.choice({
	 "人物移速",
	 "实用功能",
	 "普攻秒杀功能",
	 "技能秒杀",
	 "普攻换无限大招",
	 "退出修仙",
}, nil, "二改随意")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main10()
end
if SN==3 then
	 Main42()
end
if SN==4 then
	 Main64()
end
if SN==5 then
	 Main16()
end
if SN==6 then
	 HS87()
end
FX1=0
FX2=0
end

function Main1()
SN = gg.choice({
	 "1.5倍移速",
	 "3倍速度",
	 "4倍移速",
	 "5倍移速",
	 "6倍移速",
	 "10倍移速",
	 "返回",
}, nil, "跑图专用")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS5()
end
if SN==4 then
	 HS6()
end
if SN==5 then
	 HS7()
end
if SN==6 then
	 HS8()
end
if SN==7 then
	 HS67()
end
FX1=0
FX2=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.5", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS67()
	 Main0()
end

function Main10()
SN = gg.choice({
	 "技能无冷却",
	 "50倍拾取范围",
	 "超级原地跳",
	 "5倍攻速",
	 "消除存在感",
	 "返回",
}, nil, "二改随意")
if SN==1 then
	 HS11()
end
if SN==2 then
	 HS12()
end
if SN==3 then
	 HS13()
end
if SN==4 then
	 HS14()
end
if SN==5 then
	 HS15()
end
if SN==6 then
	 HS68()
end
FX1=0
FX2=0
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;0;26;27;14;60::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4;0}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.0F;0.0F;0.0F;2.0F;0.0F;0.0F::61", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1065965499", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1065965499", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1122222222", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1743855065D;1::18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99999;0.066;0.2;0.3;0.4::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.066", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("222", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS68()
	 Main0()
end

function Main42()
SN = gg.choice({
	 "菲谢尔",
	 "安柏",
	 "等待添加",
	 "返回",
}, nil, "能秒怪就行，没必要太高")
if SN==1 then
	 Main43()
end
if SN==2 then
	 Main46()
end
if SN==3 then
	 Main91()
end
if SN==4 then
	 HS92()
end
FX1=0
FX2=0
end

function Main43()
SN = gg.choice({
	 "菲1级普攻",
	 "菲2级普攻",
	 "返回",
}, nil, "")
if SN==1 then
	 Main44()
end
if SN==2 then
	 Main54()
end
if SN==3 then
	 HS90()
end
FX1=0
FX2=0
end

function Main44()
SN = gg.choice({
	 "普攻1",
	 "普攻2",
	 "普攻3",
	 "普攻4",
	 "普攻5",
	 "普攻6",
	 "普攻7",
	 "返回",
}, nil, "")
if SN==1 then
	 HS55()
end
if SN==2 then
	 HS56()
end
if SN==3 then
	 HS57()
end
if SN==4 then
	 HS58()
end
if SN==5 then
	 HS59()
end
if SN==6 then
	 HS60()
end
if SN==7 then
	 HS61()
end
if SN==8 then
	 HS81()
end
FX1=0
FX2=0
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1054990936", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1054990936", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1055885497", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1055885497", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1058329602", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1058329602", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1058257460", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1058257460", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1060667004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1060667004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1067366482", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1067366482", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1054904366", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1054904366", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS81()
	 Main0()
end

function Main54()
SN = gg.choice({
	 "普攻1",
	 "等待添加",
	 "返回",
}, nil, "")
if SN==1 then
	 HS63()
end
if SN==2 then
	 Main95()
end
if SN==3 then
	 HS96()
end
FX1=0
FX2=0
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("569175168;1056195876;565247232", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1056195876", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Main95()
SN = gg.choice({
}, nil, "")
FX1=0
FX2=0
end

function HS96()
	 Main0()
end

function HS90()
	 Main0()
end

function Main46()
SN = gg.choice({
	 "安1级普攻",
	 "安2级普攻",
}, nil, "")
if SN==1 then
	 Main47()
end
if SN==2 then
	 Main62()
end
FX1=0
FX2=0
end

function Main47()
SN = gg.choice({
	 "普攻1",
	 "普攻2",
	 "普攻3",
	 "普攻4",
	 "普攻5",
	 "普攻6",
	 "返回",
}, nil, "")
if SN==1 then
	 HS48()
end
if SN==2 then
	 HS49()
end
if SN==3 then
	 HS50()
end
if SN==4 then
	 HS51()
end
if SN==5 then
	 HS52()
end
if SN==6 then
	 HS53()
end
if SN==7 then
	 HS82()
end
FX1=0
FX2=0
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1052307253", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1052307253", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1055770070", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1055770070", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1056058638", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1056058638", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1058531600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1058531600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1067366482", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1067366482", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1054904366", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1054904366", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1125200000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS82()
	 Main0()
end

function Main62()
SN = gg.choice({
	 "返回",
}, nil, "等待添加")
if SN==1 then
	 HS83()
end
FX1=0
FX2=0
end

function HS83()
	 Main0()
end

function Main91()
SN = gg.choice({
}, nil, "")
FX1=0
FX2=0
end

function HS92()
	 Main0()
end

function Main64()
SN = gg.choice({
	 "香菱",
	 "等待添加",
	 "返回",
}, nil, "能秒怪就行，没必要太高")
if SN==1 then
	 Main65()
end
if SN==2 then
	 Main93()
end
if SN==3 then
	 HS94()
end
FX1=0
FX2=0
end

function Main65()
SN = gg.choice({
	 "1级小熊",
	 "2级小熊",
	 "返回",
}, nil, "")
if SN==1 then
	 HS66()
end
if SN==2 then
	 HS88()
end
if SN==3 then
	 HS89()
end
FX1=0
FX2=0
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.1128000021", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1128000021", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("18.0834941864", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1851998208;1066999564;1308022656", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1066999564", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1099999999", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS89()
	 Main0()
end

function Main93()
SN = gg.choice({
}, nil, "")
FX1=0
FX2=0
end

function HS94()
	 Main0()
end

function Main16()
SN = gg.choice({
	 "七七",
	 "香菱",
	 "行秋",
	 "芭芭拉",
	 "砂糖",
	 "重云",
	 "北斗",
	 "凯亚",
	 "返回",
	 "等待添加",
}, nil, "配合无冷却使用，点不了就跳一下")
if SN==1 then
	 Main17()
end
if SN==2 then
	 Main20()
end
if SN==3 then
	 Main23()
end
if SN==4 then
	 Main26()
end
if SN==5 then
	 Main29()
end
if SN==6 then
	 Main32()
end
if SN==7 then
	 Main35()
end
if SN==8 then
	 Main38()
end
if SN==9 then
	 HS69()
end
if SN==10 then
	 Main97()
end
FX1=0
FX2=0
end

function Main17()
SN = gg.choice({
	 "七七1",
	 "七七2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS18()
end
if SN==2 then
	 HS19()
end
if SN==3 then
	 HS70()
end
FX1=0
FX2=0
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10353;30F;10352;20F;10351", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10353", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10351}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10351;30F;10352;20F;10351", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10351", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10353", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS70()
	 Main0()
end

function Main20()
SN = gg.choice({
	 "香菱1",
	 "香菱2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS21()
end
if SN==2 then
	 HS22()
end
if SN==3 then
	 HS71()
end
FX1=0
FX2=0
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10235;20F;10232;12F;10231", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10235", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10231}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10231;20F;10232;12F;10231", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10231", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10235", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS71()
	 Main0()
end

function Main23()
SN = gg.choice({
	 "行秋1",
	 "行秋2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS24()
end
if SN==2 then
	 HS25()
end
if SN==3 then
	 HS73()
end
FX1=0
FX2=0
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10385;21F;10382;20F;10381", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10385", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10381}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10381;21F;10382;20F;10381", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10381", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10385", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS73()
	 Main0()
end

function Main26()
SN = gg.choice({
	 "芭芭拉1",
	 "芭芭拉2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS27()
end
if SN==2 then
	 HS28()
end
if SN==3 then
	 HS74()
end
FX1=0
FX2=0
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10072;32F;10071;20F;10070", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10070}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10070;32F;10071;20F;10070", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10070", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10072", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS74()
	 Main0()
end

function Main29()
SN = gg.choice({
	 "砂糖1",
	 "砂糖2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS30()
end
if SN==2 then
	 HS31()
end
if SN==3 then
	 HS75()
end
FX1=0
FX2=0
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10435;15F;10432;20F;10431", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10435", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10431}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10431;15F;10432;20F;10431", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10431", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10435", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS75()
	 Main0()
end

function Main32()
SN = gg.choice({
	 "重云1",
	 "重云2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS33()
end
if SN==2 then
	 HS34()
end
if SN==3 then
	 HS76()
end
FX1=0
FX2=0
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10403;15F;10402;12F;10401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10401}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10401;15F;10402;12F;10401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10403", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS76()
	 Main0()
end

function Main35()
SN = gg.choice({
	 "北斗1",
	 "北斗2",
	 "返回",
	 "返回",
}, nil, "")
if SN==1 then
	 HS36()
end
if SN==2 then
	 HS37()
end
if SN==3 then
	 HS77()
end
if SN==4 then
	 HS78()
end
FX1=0
FX2=0
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10245;7.5F;10242;20F;10241", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10245", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10241}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10241;7.5F;10242;20F;10241", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10241", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10245", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS77()
	 Main0()
end

function HS78()
	 Main0()
end

function Main38()
SN = gg.choice({
	 "凯亚1",
	 "凯亚2",
	 "返回",
}, nil, "")
if SN==1 then
	 HS39()
end
if SN==2 then
	 HS40()
end
if SN==3 then
	 HS79()
end
FX1=0
FX2=0
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10075;6F;10074;15F;10073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10075", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10073}})
	 end
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10073;6F;10074;15F;10073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10075", gg.TYPE_DWORD)
	 gg.toast("第二步成功")
	 gg.clearResults()
end

function HS79()
	 Main0()
end

function HS69()
	 Main0()
end

function Main97()
SN = gg.choice({
}, nil, "")
FX1=0
FX2=0
end

function HS87()
	 os.exit()
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