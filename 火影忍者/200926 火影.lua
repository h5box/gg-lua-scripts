function Main0()
SN = gg.choice({
	 "鸣人",
	 "佐助",
	 "小樱",
	 "退出脚本",
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main2()
end
if SN==3 then
	 Main3()
end
if SN==4 then
	 HS4()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "小鸣人改秽土扉间",
	 "一技能图标",
	 "二技能图标",
	 "大招图标",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS5()
end
if SN[2]==true then
	 HS8()
end
if SN[3]==true then
	 HS9()
end
if SN[4]==true then
	 HS10()
end
if SN[5]==true then
	 HS11()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3145785;3145776;49::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3670065;51", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010351;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900010351", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830351", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010251;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900010251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830251", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010451;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900010451", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830451", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS11()
	 os.exit()
end

function Main2()
SN = gg.multiChoice({
	 "小佐助改秽土扉间",
	 "一技能图标",
	 "二技能图标",
	 "大招图标",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS6()
end
if SN[2]==true then
	 HS12()
end
if SN[3]==true then
	 HS13()
end
if SN[4]==true then
	 HS14()
end
if SN[5]==true then
	 HS15()
end
FX1=0
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3145785;3145776;51::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3670065;51", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030351;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900030351", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830351", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030251;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900030251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830251", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030451;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900030451", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830451", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS15()
	 os.exit()
end

function Main3()
SN = gg.multiChoice({
	 "小樱改秽土扉间",
	 "一技能图标",
	 "二技能图标",
	 "大招图标",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS7()
end
if SN[2]==true then
	 HS16()
end
if SN[3]==true then
	 HS17()
end
if SN[4]==true then
	 HS18()
end
if SN[5]==true then
	 HS19()
end
FX1=0
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3145785;3145776;50::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5;3145785;3670065;51", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020351;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900020351", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830351", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020251;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900020251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830251", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020451;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("900020451", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901830451", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS19()
	 os.exit()
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