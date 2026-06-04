
function Main0()
SN = gg.choice({
	 "进入脚本","退出"
}, nil, "倒卖司马（风之子制作）")
if SN==1 then
	 Main1()
end
if SN==2 then
	os.exit()
end
FX1=0
FX2=0
end

function Main1()
SN = gg.choice({
	 "无限子弹（打两发在开）",
	 "枪托无后座（有可能会闪退）",
	 "子弹穿墙",
	 "无限背包（先把背包下了改完了在穿上）",
	 "超大范围",
	 "超大范围",
	 "人物变大（小）（多人训练营里开）",
	 "人物变大（大）（多人训练营开）",
	 "人物天线",
}, nil, "风之子制作")
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
	 HS9()
end
if SN==9 then
	 HS10()
end
FX1=0
FX2=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 9999999999999999}})
	 end
	 gg.toast("修改成功（无效纯属脸黑）")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 12800}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.4}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.15}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.72448539734", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.72448551655}})
	 end
	 gg.toast("修改成功")
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