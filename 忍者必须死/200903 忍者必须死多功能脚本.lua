function Main0()
SN = gg.choice({
	 "『人物无敌』",
	 "『武器无CD』",
	 "『人物大招』",
	 "『变态功能』",
}, nil, "勇太原创脚本禁止二改")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main6()
end
if SN==3 then
	 Main17()
end
if SN==4 then
	 Main25()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "小黑无敌①",
	 "阿力无敌②",
	 "琳无敌③",
	 "苍牙无敌④",
	 "小椒无敌（测试阶段）⑤",
	 "返回主页",
}, nil, "小椒的是测试的，我也不知道能不能用，毕竟我没有这人物，我是根据看附近代码来改的，能用的话反馈一下🤔")
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
	 HS21()
end
if SN==6 then
	 HS22()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15.12345678910~576.78123456789;1.83000004292;0.20000000298;3.0::70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15.12345678910~576.78123456789", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("小黑无敌开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15.12345678910~576.78123456789;1.83000004292;0.20000000298;3.0::70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15.12345678910~576.78123456789", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("阿力无敌开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15.12345678910~576.78123456789;0.20000000298;3.0;0.95999997854::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15.12345678910~576.78123456789", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("琳无敌开启成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15.12345678910~576.78123456789;0.20000000298;3.0;0.95999997854::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15.12345678910~576.78123456789", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("苍牙无敌开启成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15.12345678910~576.78123456789;0.20000000298;3.0;0.95999997854::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15.12345678910~576.78123456789", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("小椒无敌开启成功")
	 gg.clearResults()
end

function HS22()
	 Main0()
end

function Main6()
SN = gg.choice({
	 "雷弓无CD①",
	 "火之扇无CD②",
	 "大太刀无CD③",
	 "火焰刀无CD④",
	 "苍雪剑无CD⑤",
	 "豪肉叉无CD⑥",
	 "返回主页",
}, nil, "为什么一把ssr的武器都没有？因为咱没有啊😭")
if SN==1 then
	 HS7()
end
if SN==2 then
	 HS8()
end
if SN==3 then
	 HS9()
end
if SN==4 then
	 HS10()
end
if SN==5 then
	 HS11()
end
if SN==6 then
	 HS12()
end
if SN==7 then
	 HS14()
end
FX1=0
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;5018D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("雷弓无CD开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;5041D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("火之扇无CD开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;5002D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("大太刀无CD开启成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;5039D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("火焰刀无CD开启成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;5026D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("苍雪剑无CD开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;5037D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("豪肉叉无CD开启成功")
	 gg.clearResults()
end

function HS14()
	 Main0()
end

function Main17()
SN = gg.choice({
	 "火龙炎弹秒放①（需打怪开启）〖小黑〗",
	 "烈雷暴丸秒放②（需打怪开启）〖阿力〗",
	 "冰天雪葬秒放③（需打怪开启）〖琳〗",
	 "魔风鬼轮秒放④（需打怪开启）〖苍牙〗",
	 "返回主页",
}, nil, "大招是什么？就是进游戏人物左上角的那个东西😏")
if SN==1 then
	 HS18()
end
if SN==2 then
	 HS19()
end
if SN==3 then
	 HS20()
end
if SN==4 then
	 HS23()
end
if SN==5 then
	 HS24()
end
FX1=0
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~3500;0.20000000298;5D;0.10000000149;10;100:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~3500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("火龙炎弹秒放开启成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~3500;0.20000000298;5D;0.10000000149;10;100:130", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~3500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("烈雷暴丸秒放开启成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~3500;0.20000000298;5D;0.10000000149;10;100:125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~3500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("冰天雪葬秒放开启成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~3500;0.20000000298;5D;0.10000000149;10;100:125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~3500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("魔风鬼轮秒放开启成功")
	 gg.clearResults()
end

function HS24()
	 Main0()
end

function Main25()
SN = gg.choice({
	 "秒杀boss①",
	 "全武器无CD②（测试阶段）",
	 "副武器无CD③",
}, nil, "①秒杀boss手动恢复数据不闪退，可连打，而且很稳②全武器无CD为测试阶段，能用的反馈一下")
if SN==1 then
	 HS26()
end
if SN==2 then
	 HS27()
end
if SN==3 then
	 HS28()
end
FX1=0
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D~3000000D;1.12103877e-44;14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000D~3000000D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("秒杀boss开启成功")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~45.35467890123;4000D~8000D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~45.35467890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("全武器无CD开启成功")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.12345678901~260.3547890123;4000D~8000D;550D;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.12345678901~260.3547890123", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("副武器无CD开启成功")
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