
function Main1()
SN = gg.multiChoice({
	 "1.贴墙透视",
	 "关闭贴透",
	 "2.全局加速",
	 "关闭全速",
	 "3.人物加速",
	 "关闭物速",
	 "4.人物超速",
	 "关闭超速",
	 	"5.人物高跳",
		 "关闭高跳",
		 "6.人物浮空",
		 "关闭浮空",
		 "7.疾跑远跳",
		 "关闭远跳",
		 "8.地皮夜视",
		 "关闭夜视",
}, nil, "【现8项】已被遗忘的银少文本12项（外挂的目的是什么？突破规律，逆天而行，我若成神，你奈我何？）")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS3()
end
if SN[3]==true then
	 HS4()
end	 
if SN[4]==true then
	 HS5()
end
if SN[5]==true then
	 HS6()
end
if SN[6]==true then
	 HS7()
end
if SN[7]==true then
	 HS8()
end
if SN[8]==true then
	 HS9()
end
if SN[9]==true then
	 HS10()
end
if SN[10]==true then
	 HS11()
end
if SN[11]==true then
	 HS12()
end
if SN[12]==true then
	 HS13()
end
if SN[13]==true then
	 HS14()
end
if SN[14]==true then
	 HS15()
end
if SN[15]==true then
	 HS16()
end
if SN[16]==true then
	 HS17()
end

FX1=0
end

function HS2()
gg.clearResults()
gg.searchAddress("DC???2D4", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.05', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('1.6', gg.TYPE_FLOAT)
end--温馨提示，看不懂找我，我给你解释|（噗嗤）

function HS3()
gg.clearResults()
gg.searchAddress("DC???2D4", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.6', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0.05', gg.TYPE_FLOAT)
end

function HS4()
	gg.clearResults()
gg.searchAddress("D????9F8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('1', gg.TYPE_FLOAT)
end

function HS5()
	 gg.clearResults()
gg.searchAddress("D????9F8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.001', gg.TYPE_FLOAT)
end


function HS6()
	 gg.clearResults()
gg.searchAddress("D????FC4", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.54600006342', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('1', gg.TYPE_FLOAT)
end

function HS7()
	 gg.clearResults()
gg.searchAddress("D????FC4", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.54600006342', gg.TYPE_FLOAT)
end

function HS8()
	 gg.clearResults()
gg.searchAddress("D????FC8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.91000002623', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.41000002623', gg.TYPE_FLOAT)
end

function HS9()
	 gg.clearResults()
gg.searchAddress("D????FC8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.41000002623', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.91000002623', gg.TYPE_FLOAT)
end

function HS10()
	 gg.clearResults()
gg.searchAddress("D????CE8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.98', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('1.23', gg.TYPE_FLOAT)
end

function HS11()
	 gg.clearResults()
gg.searchAddress("D????CE8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.23', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.98', gg.TYPE_FLOAT)
end

function HS12()
gg.clearResults()
gg.searchAddress("D????CE8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.98', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
end

function HS13()
gg.clearResults()
gg.searchAddress("D????CE8", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.98', gg.TYPE_FLOAT)
end

function HS14()
gg.clearResults()
gg.searchAddress("D????450", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('5', gg.TYPE_FLOAT)
end

function HS15()
gg.clearResults()
gg.searchAddress("D????450", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.2', gg.TYPE_FLOAT)
end

function HS16()
gg.clearResults()
gg.searchAddress("D????8E0", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('3', gg.TYPE_FLOAT)
end

function HS17()
gg.clearResults()
gg.searchAddress("D????8E0", -1,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.2', gg.TYPE_FLOAT)
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

--