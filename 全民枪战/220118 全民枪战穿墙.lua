function Main0()
SN = gg.choice({
	 "穿墙神器百分百成功不会崩溃",
}, nil, "1、每一局必须要恢复穿墙第二步，否则卡视野后果自负😏2、开启第一步前单选xa内存，旁路模式点没有，开启第二步单选a内存即可")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "穿墙第一步",
	 "穿墙第二步《子弹穿墙》每一局恢复",
	 "穿墙第一步恢复《不习惯的话就关》",
	 "穿墙第二步恢复《每一局结束必须恢复》",
}, nil, "仙者&殇魂制作感谢无尘和晚九的代码")
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
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.01;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
 gg.searchNumber("1.7;1.2;0.1;0.04; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("9999", gg.TYPE_FLOAT)
 gg.toast("开启成功")
 gg.setVisible(false)
 gg.searchNumber("1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.setVisible(false)
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("10000;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
 gg.searchNumber("1.7;1.2;0.1;0.04;9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("1.6815582e-44", gg.TYPE_FLOAT)
 gg.toast("关闭成功")
 gg.setVisible(false)
 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.setVisible(false)
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