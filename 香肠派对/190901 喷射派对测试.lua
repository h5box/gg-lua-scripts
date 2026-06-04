function Main0()
SN = gg.choice({
	 "喷射派对",
}, nil, "朱瑞制作，娱乐使用")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "无限子弹",
	 "人物遁地",
	 "退出脚本",
}, nil, "娱乐脚本")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS3()
end
if SN[3]==true then
	 HS4()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100;100;1D;1;0;1.29999995232;1,067,869,798D;1,067,869,798D;0;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.29999995232}})
	 end
	 gg.toast("无限子弹开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("157,286,450D;0;1,056,964,608D;0.5~1;0;4D::133", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5~1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.toast("人物遁地开启成功")
	 gg.clearResults()
end

function HS4()
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