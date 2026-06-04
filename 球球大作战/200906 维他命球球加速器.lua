function Main0()
SN = gg.choice({
	 "功能菜单","退出"
}, nil, "制作不易!不喜勿喷")
if SN==1 then
	 Main1()
end
if SN==2 then
	 os.exit()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "吐球加速(支持逃杀 娱乐模式等)",
	 "分身加速(支持逃杀娱乐模式等)",
	 "视野扩大(支持逃杀娱乐模式等)",
}, nil, "维他命制作☞制作不易!不惜勿喷!")
if SN==1 then
	 HS5()
end
if SN==2 then
	 HS6()
end
if SN==3 then
	 HS7()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.055", gg.TYPE_FLOAT)
	 gg.toast("维他命恭喜你修改成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.0599999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.0599999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-100", gg.TYPE_FLOAT)
	 gg.toast("维他命恭喜你开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.8", gg.TYPE_FLOAT)
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