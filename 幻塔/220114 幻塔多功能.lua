function Main0()
SN = gg.choice({
	 "一级菜单",
	 "铁箱范围",
	 "黑金核范围",
	 "密码箱范围",
	 "无限跳跃",
	 "无限闪避",
	 "黑金核扫描透视",
	 "副本秒杀",
	 "弓箭攻速",
	 "轮子妈攻速",
	 "双枪攻速",
	 "全武器攻速",
}, nil, "我是一个默默无闻的公告")
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
	 HS11()
end
if SN==5 then
	 HS4()
end
if SN==6 then
	 HS5()
end
if SN==7 then
	 HS6()
end
if SN==8 then
	 HS7()
end
if SN==9 then
	 HS8()
end
if SN==10 then
	 HS9()
end
if SN==11 then
	 HS12()
end
if SN==12 then
	 HS10()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "这是一个公告")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.125E;1.5F;1.5F;1.5F;0D;0D;5.097369226312269E-299E;33624448D::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("999999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8.0E;2.5F;2.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("999999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2883617;657396;786434;656896;1,065,353,216;1,065,353,216;1,065,353,216::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("1,287,568,416", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,060,439,282D;1,107,296,256D;256D;2D;0D:45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;1082130432;3:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.69999998808F;-8.0F;30.0F;-4.0F;2000.0F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;5D;16D;2048E;5;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.1;0.2;1;-1;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3.6", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.1;0.2;1;-1;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.1;0.2;1;-1;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.0;0.10000000149;0.20000000298;-1.0;0.20000000298;-1.0::125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
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