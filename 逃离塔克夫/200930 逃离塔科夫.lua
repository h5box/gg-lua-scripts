function Main1()
SN = gg.choice({
	 "全局功能",
	 "一局一开",
	 "退出脚本",
}, nil, "")
if SN==1 then
	 Main2()
end
if SN==2 then
	 Main6()
end
if SN==3 then
	 HS9()
end
FX1=0
end

function Main2()
SN = gg.multiChoice({
	 "885透视",
	 "通用透视",
	 "855上色",
	 "返回主页",
}, nil, "辉腾科技")
if SN[1]==true then
	 HS3()
end
if SN[2]==true then
	 HS4()
end
if SN[3]==true then
	 HS5()
end
if SN[4]==true then
	 HS11()
end
FX1=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1.25784444e-19;1,186,988,033D;30,720.001953125;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1.39125795e-19;541,343,761D;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("8220;8224;8225::60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS11()
	 Main0()
end

function Main6()
SN = gg.multiChoice({
	 "人物穿墙",
	 "穿墙恢复",
	 "子弹范围",
	 "返回主页",
}, nil, "辉腾科技")
if SN[1]==true then
	 HS7()
end
if SN[2]==true then
	 HS8()
end
if SN[3]==true then
	 HS14()
end
if SN[4]==true then
	 HS15()
end
FX1=0
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.4;0.6;0.1;0.25::16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-0.004567", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-0.004567", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.004567", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.4", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS15()
	 Main0()
end

function HS9()
	 os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main1()
  end
end