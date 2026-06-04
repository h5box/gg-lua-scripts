function Main0()
SN = gg.choice({
	 "初始血量改无敌",
	 "弓箭伤害",
	 "弓箭射程",
	 "修改分数",
	 "无限选技能！",
}, nil, "联机直接开gg变速！进群@管理让他给你做想做的游戏脚本956302532")
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
	 HS9()
end
if SN==5 then
	 Main5()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("125;10~125;1::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10~125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 200}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("快去称霸全场吧")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("嗨皮！")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;10~2000;42;98::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10~2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("成功修改9.9亿分")
	 gg.clearResults()
end

function Main5()
SN = gg.choice({
	 "第一步",
	 "第二步",
}, nil, "请按顺序开启否则无效")
if SN==1 then
	 HS6()
end
if SN==2 then
	 HS7()
end
FX1=0
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~20;1;25::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("第一步开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~40;5.88545355e-44;5.88545355e-44::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})
	 end
	 gg.toast("第二步开启成功")
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