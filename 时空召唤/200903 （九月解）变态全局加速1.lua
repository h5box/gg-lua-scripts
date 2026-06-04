function Main0()
SN = gg.choice({
	 "稳定大号上分",
}, nil, "祝你拉闸愉快")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "防封（登录界面开启一次一直到游戏退出）",
	 "完美防封（大厅开）",
	 "葬仙全局加速（登录界面开一次直到退出游戏）",
	 "上帝视角1（配合2完美）",
	 "2上帝视角修复",
	 "基本射手无后（一局一开）",
	 "基本近战午后（一局一开）",
	 "退出神仙模式",
}, nil, "训练营开或者游戏大厅开\n完了可以到退出游戏，先开个防封再开加速，开好什么都不要管只玩就对了，祝你封号")
if SN[1]==true then
	 HS12()
end
if SN[2]==true then
	 HS19()
end
if SN[3]==true then
	 HS2()
end
if SN[4]==true then
	 HS13()
end
if SN[5]==true then
	 HS18()
end
if SN[6]==true then
	 HS16()
end
if SN[7]==true then
	 HS17()
end
if SN[8]==true then
	 HS9()
end
FX1=0
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10558", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("修改成功祝你封号")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10558", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_WORD)
	 gg.toast("咳咳不知道写什么了")
	 gg.clearResults()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1;0.33333334237::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.58}})
	 end
	 gg.toast("号铁定出事")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("17.29999923706F;1.0F;5.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.0", gg.TYPE_FLOAT)
	 gg.toast("祝你封号")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("17.29999923706F;1.0F;5.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("17.29999923706", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("34", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7.5;0.93~0.99;0.87::1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.87", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.1}})
	 end
	 gg.toast("开启")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;0.93~0.99;0.87::1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.87", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.1}})
	 end
	 gg.toast("很OK")
	 gg.clearResults()
end

function HS9()
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