function Main0()
SN = gg.choice({
	 "进入脚本",
}, nil, "里面所有功能修改后重新拿就可以了，只能在联机创造和自己的创造房间有用，联机生存理论上也可以，炸图造成的损失你自己负责")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.choice({
	 "短剑改黑龙球（炸图必备）",
	 "能量剑改岩浆（炸图必备）",
	 "金头盔改炸药桶（炸图必备）",
	 "金胸甲改方块复制器",
	 "金护腿改黑龙图腾（卡图）",
	 "金靴子改地形编辑器（炸图必备）",
	 "联机复制物品（第一格随便拿1个东西）",
	 "微加速（4倍）",
	 "15倍加速（通用）这几个加速一局只能开一个",
	 "30倍加速（通用）",
	 "100倍加速",
	 "350倍加速",
}, nil, "免责声明:本脚本仅供学习交流，请勿用于任何商业用途，请在24小时内销毁\n使用本脚本时，不能破坏迷你世界的游戏平衡，不得胡乱炸图，导致玩家流失，否则后果自负")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
if SN==5 then
	 HS6()
end
if SN==6 then
	 HS7()
end
if SN==7 then
	 HS8()
end
if SN==8 then
	 HS13()
end
if SN==9 then
	 HS9()
end
if SN==10 then
	 HS10()
end
if SN==11 then
	 HS11()
end
if SN==12 then
	 HS12()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15057}})
	 end
	 gg.toast("修改成功，重新拿即可")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 6}})
	 end
	 gg.toast("修改成功，重新拿即可")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12231", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 834}})
	 end
	 gg.toast("修改成功，从新拿即可")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12232", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1002}})
	 end
	 gg.toast("修改成功从新拿即可")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12233", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 918}})
	 end
	 gg.toast("修改成功，重新拿即可")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12234", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("修改成功，重新拿即可")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("945804461", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945804999}})
	 end
	 gg.toast("修改成功，把第一格长按进箱子里就可以了")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast("加速成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 10}})
	 end
	 gg.toast("加速成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 20}})
	 end
	 gg.toast("加速成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 75}})
	 end
	 gg.toast("加速成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 250}})
	 end
	 gg.toast("加速成功")
	 gg.clearResults()
end



Main0()