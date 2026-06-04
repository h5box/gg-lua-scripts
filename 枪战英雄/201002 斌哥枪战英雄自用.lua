function Main0()
SN = gg.choice({
	 "此脚本用的代码为老代码，可能有的没效果，就是和谐掉了。",
	 "七彩祥云踏空",
	 "橡胶路飞",
	 "斌哥BT自瞄",
	 "斌哥BT脚本退出",
}, nil, "斌哥BT专用脚本")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS2()
end
if SN==3 then
	 HS3()
end
if SN==4 then
	 HS4()
end
if SN==5 then
	 HS5()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
}, nil, "需要软件加卡密的私我QQ227403450")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03999999911", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999}})
	 end
	 gg.toast("软件加卡密私q227403450")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.10899999738;1.55999994278", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.55999994278", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 2.5}})
	 end
	 gg.toast("软件加卡密私q227403450")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999}})
	 end
	 gg.toast("需要软件加卡密的私q227403450")
	 gg.clearResults()
end

function HS5()
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