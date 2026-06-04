function Main0()
SN = gg.multiChoice({
	 "透视(游戏内一句一开)",
	 "开钥匙1.8倍(游戏内一局一开)",
	 "疾跑0.5倍加速（大厅）",
	 "失忆者机关大师概率(大厅)",
	 "失忆者购物达人概率(大厅)",
	 "失忆者来抓我呀概率(大厅)",
	 "雇佣兵会心一击概率(大厅)",
	 "雇佣兵浑身是劲概率(大厅)",
	 "雇佣兵再来一发概率(大厅)",
	 "秒开补给箱(游戏内)",
	 "退出脚本",
},nil,"快乐")
if SN[1]==true then
	 HS5()
end
if SN[2]==true then
     HS6()
end
if SN[3]==true then
     HS7()
end
if SN[4]==true then
     HS8()
end
if SN[5]==true then
     HS9()
end
if SN[6]==true then
     HS10()
end
if SN[7]==true then
     HS11()
end
if SN[8]==true then
     HS12()
end
if SN[9]==true then
     HS13()
end
if SN[10]==true then
     HS14()
end
if SN[11]==true then
     HS15()
end
FX1=0
end




function HS5()
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;8.0;1,082,467,303D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(100)
     gg.editAll("0", gg.TYPE_DWORD)
     gg.toast("透视开启成功")
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.8", gg.TYPE_FLOAT)
	 gg.toast("开锁")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("加速成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.14~0.15;0.1~0.2;0.2~0.3;0.4~0.6::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("机关大师概率")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.02~0.03;0.04~0.05;0.07~0.08;0.12~0.14::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("购物达人概率")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.09~0.1;0.14~0.15;0.24~0.25;0.39~0.41::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("来抓我呀概率")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.02~0.03;0.04~0.05;0.08~0.09;0.17~0.19::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("来抓我呀概率")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.09~0.1;0.15~0.16;0.23~0.24;0.39~0.41::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("浑身是劲概率")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.02~0.03;0.05~0.06;0.09~0.1;0.17~0.19::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.51", gg.TYPE_FLOAT)
	 gg.toast("再来一发概率")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;0.2;1;1;0.5::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001", gg.TYPE_FLOAT)
	 gg.toast("秒开补给箱")
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