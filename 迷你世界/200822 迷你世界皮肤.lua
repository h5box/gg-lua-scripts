function Main0()
SN = gg.choice({
	 "孙悟空",
	 "二郎神",
	 "劳尔",
	 "退出脚本",
}, nil, "此脚本由忘魂一个一个地写的，没有任何抄袭，偷码的地方")
if SN==1 then
	 Main2()
end
if SN==2 then
	 Main7()
end
if SN==3 then
	 Main9()
end
if SN==4 then
	 HS6()
end
FX1=0
end

function Main2()
SN = gg.choice({
	 "孙悟空",
}, nil, "点击使用定制装扮（原版皮肤，不得添加皮肤装饰零件），如未准备好，请好了再来     重点：他修改100度之后，必须在一秒之内取消使用，否则无效")
if SN==1 then
	 HS3()
end
FX1=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3211264", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 512}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function Main7()
SN = gg.choice({
	 "二郎神",
}, nil, "点击使用定制装扮（原版皮肤，不得添加皮肤装饰零件），如未准备好，请好了再来     重点：他修改完之后，必须取消使用，再确认使用")
if SN==1 then
	 HS8()
end
FX1=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3211264", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 6400}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function Main9()
SN = gg.choice({
	 "劳尔",
}, nil, "点击使用定制装扮（原版皮肤，不得添加皮肤装饰零件），如未准备好，请好了再来     重点：他修改完之后，必须取消使用，再确认使用")
if SN==1 then
	 HS10()
end
FX1=0
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3211264", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 17400}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function HS6()
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