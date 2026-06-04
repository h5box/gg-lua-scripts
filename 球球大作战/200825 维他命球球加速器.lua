function Main0()
SN = gg.choice({
	 "功能菜单",
}, nil, "维他命制作☞制作不易!不喜勿喷!")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "吐球加速",
	 "分身加速",
}, nil, "维他命制作☞制作不易!不惜勿喷!维他命QQ1250740392")
if SN==1 then
	 HS5()
end
if SN==2 then
	 HS6()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.055}})
	 end
	 gg.toast("维他命恭喜你修改成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.0599999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.0599999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -200}})
	 end
	 gg.toast("维他命恭喜你开启成功")
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