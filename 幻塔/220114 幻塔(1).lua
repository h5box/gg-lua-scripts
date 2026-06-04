function Main0()
gg.alert(os.date("闪避加速1没效的话用闪避加速2"))
SN = gg.choice({
	 "超实用功能",
	 "超远范围采集",
	 "范围",
	 "视角",
	 "移速",
	 "恢复功能",
}, nil, "yz")
if SN==1 then
	 Main9()
end
if SN==2 then
	 Main37()
end
if SN==3 then
	 Main7()
end
if SN==4 then
	 Main1()
end
if SN==5 then
	 Main32()
end
if SN==6 then
	 Main12()
end
FX1=0
end

function Main9()
SN = gg.multiChoice({
	 "任务展开",
	 "黑金核扫描",
	 "闪避加速.1",
	 "闪避加速.2",
	 "跳高",
	 "副本秒杀",
	 "全武器攻速",
}, nil, "いつまでもあなたを守ります")
if SN[1]==true then
	 HS17()
end
if SN[2]==true then
	 HS18()
end
if SN[3]==true then
	 HS35()
end
if SN[4]==true then
	 HS21()
end
if SN[5]==true then
	 HS36()
end
if SN[6]==true then
	 HS31()
end
if SN[7]==true then
	 HS40()
end
FX1=0
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("354;170::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("170", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300000", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000000)
	 gg.editAll("600000", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0;1,065,353,216;0;0;0;0;0::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1,095,899,757", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1100;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30000.1314520", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("830;884.59997558594", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("830;884.59997558594", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7000.1314520", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.0;5.0;0.10000000149;0.0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100000", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.0;0.0;0.0;0.0;0.0;0.0;0.0;0.10000000149::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3.761314520", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main37()
SN = gg.multiChoice({
	 "铁箱子范围",
	 "密码箱范围",
}, nil, "これは私の時代ではない")
if SN[1]==true then
	 HS38()
end
if SN[2]==true then
	 HS39()
end
FX1=0
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;1.5;1.5;1.5;0.0;0.0;0.0;9.48244546e-38::33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2883617;657396;786434;656896;1,065,353,216;1,065,353,216;1,065,353,216::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1,287,568,416", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main7()
SN = gg.multiChoice({
	 "爱歌xzy合并范围",
}, nil, "天空之蓝，大海之宽")
if SN[1]==true then
	 HS23()
end
FX1=0
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;0;1,116,471,296;0;0;0;1F;1F;1F;0;0;0;33,624,451::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main1()
SN = gg.multiChoice({
	 "视角（1）",
	 "视角（2）（上）",
	 "视角（3）",
}, nil, "天空之宽，大海之蓝")
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
	 gg.searchNumber("75;1;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120.1314520", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;1;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("121.1314520", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("350;2.0;1.0::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1300.1314520", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main32()
SN = gg.multiChoice({
	 "移速1（全局）",
	 "移速2",
}, nil, "")
if SN[1]==true then
	 HS33()
end
if SN[2]==true then
	 HS34()
end
FX1=0
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.34699988365;150.0;500.0::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000.1314520", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6,144.0;100.0::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,144.0;100.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70000", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main12()
SN = gg.multiChoice({
	 "人物加速恢复",
	 "视角（1）恢复",
	 "视角（2恢复）",
	 "视角（3）恢复",
	 "闪避加速.1恢复",
	 "闪避加速.2恢复",
	 "移速1恢复",
}, nil, "いつか私はあなたの心の中の神になる")
if SN[1]==true then
	 HS13()
end
if SN[2]==true then
	 HS14()
end
if SN[3]==true then
	 HS15()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS20()
end
if SN[6]==true then
	 HS22()
end
if SN[7]==true then
	 HS29()
end
FX1=0
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("120.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("121.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("121.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1300.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("350", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("14.1314520", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14.1314520", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_DWORD)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4000.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1100", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("50000.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50000.1314520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
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