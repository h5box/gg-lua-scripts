gg.toast("正在加载脚本……")
function ZY()
SN = gg.choice({
'稳定功能',
}, nil, "反馈Q群号878270031")
if SN==1 then YM() end
OUT=1 end

function YM()
SN = gg.multiChoice({
"无限疾跑",
"无限跳高",
"疾跑0元",
"跳高0元",
"全屏开锁",
"全屏救人",
"透视",
"退出",
}, nil, "感谢使用")
if SN[1]==true then
	 GN1()
end
if SN[2]==true then
	 GN2()
end
if SN[3]==true then
	 GN3()
end
if SN[4]==true then
	 GN4()
end
if SN[5]==true then
	 GN5()
end
if SN[6]==true then
	 GN6()
end
if SN[7]==true then
	 GN7()
end
if SN[8]==true then
	 GO()
end
OUT=1 end

function GN1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000D;4.3;0.3;13D;80D::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function GN2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1001D;4.3;0.3;13D::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function GN3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("100;200;500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function GN4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("105;201;500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function GN5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30;0.2;1.3;1.3;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function GN6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function GN7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;1,082,467,303D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function GO()
gg.toast("反馈Q群878270031")
os.exit()
end

while true do
if gg.isVisible(true) then
OUT = 0
gg.setVisible(false)
end
if OUT == 0 then 
ZY() 
end
end