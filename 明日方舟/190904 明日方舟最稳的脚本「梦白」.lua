
gg.alert("梦白:加群下载全新版本649669128\n此脚本只有全屏和加速")

function Main0()
SN = gg.choice({
	 "公告★必看",
	 "局内加速",
	 "全屏攻击",
	 "退出脚本",
}, nil, "梦白制作★使用前先看公告！！")
if SN==1 then
	 Main5()
end
if SN==2 then
	 Main3()
end
if SN==3 then
	 Main4()
end
if SN==4 then
	 HS21()
end
FX1=0
end

function Main5()
SN = gg.multiChoice({
	 "回到主页",
	 "转跳加速",
	 "转跳全屏",
}, nil, "梦白制作\n三楼ID:XG丶梦白\n最新脚本群649669128\n")
if SN[1]==true then
	 HS8()
end
if SN[2]==true then
	 HS9()
end
if SN[3]==true then
	 HS10()
end
FX1=0
end

function HS8()
	 Main0()
end

function HS9()
	 Main3()
end

function HS10()
	 Main4()
end

function Main3()
SN = gg.multiChoice({
	 "局内六倍",
	 "局内八倍",
	 "局内十五倍",
	 "局内九九九倍",
	 "恢复倍数",
	 "转跳全屏",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS11()
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
if SN[6]==true then
	 HS16()
end
if SN[7]==true then
	 HS17()
end
FX1=0
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;1F;2F;4F;::17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_DOUBLE)
	 gg.toast("六倍开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;1F;2F;4F;::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
	 gg.toast("八倍开启成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;1F;2F;4F;::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_FLOAT)
	 gg.toast("十五倍开启成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;1F;2F;4F;::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开始作死")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;1F;6~15;4F;::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6~15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
	 gg.clearResults()
end

function HS16()
	 Main4()
end

function HS17()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "大厅全屏",
	 "回到主页",
	 "转跳加速",
}, nil, "")
if SN[1]==true then
	 HS18()
end
if SN[2]==true then
	 HS20()
end
if SN[3]==true then
	 HS19()
end
FX1=0
end

function HS18()
	 gg.setRanges(32)
	 gg.searchNumber("-1.5;-0.5;1~7;1~7:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~7;1~7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(666)
	 gg.editAll("250", gg.TYPE_FLOAT)
	 gg.toast("开启中完成")
	 gg.clearResults()
	 
	 gg.setRanges(32)
	 gg.searchNumber("-1.5;-0.5;-2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.5;-0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(666)
	 gg.editAll("-18", gg.TYPE_FLOAT)
	 gg.toast("开启中完成")
	 gg.clearResults()
end
	 
function HS20()
	 Main0()
end

function HS19()
	 Main3()
end

function HS21()
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