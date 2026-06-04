function Main0()
SN = gg.choice({
	 "稳定功能",
}, nil, "我是一个默默无闻的公告")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "天线",
	 "麒麟透视",
	 "锁头",
	 "第一人称",
	 "无后",
	 "锁头",
	 "锁身",
	 "二段穿墙",
	 "聚点",
	 "秒扶菜鸡队友",
	 "武器射速",
	 "秒车区域",
	 "信号枪天线",
	 "除树",
	 "超远拉勾勾",
	 "M416高伤",
}, nil, "这是一个公告")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS4()
end
if SN==3 then
	 HS6()
end
if SN==4 then
	 HS7()
end
if SN==5 then
	 HS8()
end
if SN==6 then
	 HS9()
end
if SN==7 then
	 HS10()
end
if SN==8 then
	 HS11()
end
if SN==9 then
	 HS12()
end
if SN==10 then
	 HS13()
end
if SN==11 then
	 HS24()
end
if SN==12 then
	 Main14()
end
if SN==13 then
	 HS25()
end
if SN==14 then
	 HS26()
end
if SN==15 then
	 HS27()
end
if SN==16 then
	 HS28()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 99999}})
	 end
	 gg.toast("天线开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.80259693e-45;4.20389539e-45;2.66246708e-44;819.0;378.0;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 6}})
	 end
	 gg.toast("麒麟透视开启成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1}})
	 end
	 gg.toast("锁头开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("第一人称开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无后开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.4}})
	 end
	 gg.toast("锁头成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.3}})
	 end
	 gg.toast("锁身成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,055,286,886;1,065,353,216;1,067,869,798:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,055,286,886", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -99}})
	 end
	 gg.toast("二段穿墙开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("聚点成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1.0F;10.0F;-10.0F;1.0F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 10}})
	 end
	 gg.toast("秒扶菜鸡队友开启成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.01~0.4;200D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01~0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.015}})
	 end
	 gg.toast("射速增加成功")
	 gg.clearResults()
end

function Main14()
SN = gg.choice({
	 "M416",
	 "scad",
	 "Mini14",
	 "M16A4",
	 "M249",
	 "AUG",
	 "QBZ",
	 "AKM",
	 "DP-28",
}, nil, "秒车大法")
if SN==1 then
	 HS15()
end
if SN==2 then
	 HS16()
end
if SN==3 then
	 HS17()
end
if SN==4 then
	 HS18()
end
if SN==5 then
	 HS19()
end
if SN==6 then
	 HS20()
end
if SN==7 then
	 HS21()
end
if SN==8 then
	 HS22()
end
if SN==9 then
	 HS23()
end
FX1=0
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,028,443,341;41;30;750::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("M416秒车成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,029,785,518;41;30;600::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("scad秒车成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,028,443,341;44;20;650::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("Mini14秒车成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,027,101,164;41;30;800::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("M16A4秒车成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("8.19999980927F;45;100;400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("45D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("M249秒车成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,028,443,341;41;30;670::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("AUG秒车成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,029,785,518;41;30;650::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("QBZ秒车成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,028,443,341;44;30;700::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("AKM秒车成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,028,443,341;51;47;350::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("51", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("DP-28开启成功")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.34413027763", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.34413027763", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("信号枪天线开启成功")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("981,467,136D;1,149,239,296D;0.5F:50 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("除树成功")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1059145646;1109393408:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1109393408", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2139095040}})
	 end
	 gg.toast("越远拉勾勾")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,090,686,812;41;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 240}})
	 end
	 gg.toast("M416高伤开启成功")
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