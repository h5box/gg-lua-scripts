function Main0()
SN = gg.choice({
	 "一级菜单",
	 "透视区",
	 "退出",
}, nil, "脚本免费，如果你发现买的，就说明你被骗了")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main11()
end
if SN==3 then
	 HS10()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "脚本免费，如果你发现买的，就说明你被骗了")
FX1=0
end

function Main11()
SN = gg.multiChoice({
	 "麒麟810",
	 "返回",
}, nil, "雪乃QQ:764954675")
if SN==1 then
	 HS12()
end
if SN==2 then
	 HS13()
end
FX1=0
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("148D;280D;4D;0.5;780.5;360;0.5;80;1;3;1.5;-100;-307.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("提示:透视成功")
	 gg.clearResults()
end

function HS13()
	 Main0()
end

function HS10()
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