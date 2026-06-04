
Qjctx=1
function a()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1008981770;1148846080;2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("108700", gg.TYPE_DWORD)
	 gg.toast("透视已开启")
	 gg.clearResults()
end

function b()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1008981770;1148846080;108700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2048", gg.TYPE_DWORD)
	 gg.toast("关闭透视")
	 gg.clearResults()
end



function e()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("57.29578018188;1000;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("57.29578018188;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("105;0", gg.TYPE_FLOAT)
	 gg.toast("自瞄🇨🇳已开启")
	 gg.clearResults()
end

function f()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("57.29578018188;1000;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("57.29578018188;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("105;0.5", gg.TYPE_FLOAT)
	 gg.toast("关闭🇨🇳自瞄")
	 gg.clearResults()
end



--------------------------
function Main()
menu1 = gg.choice({'开启无敌🇨🇳双透',"关闭🇨🇳双透","57超级🇨🇳自瞄","关闭🇨🇳自瞄",'退出🇨🇳脚本'},nil,"稳定奔放（QQ群229710759）")
if menu1 == 1 then a() end
if menu1 == 2 then b() end
if menu1 == 3 then e() end
if menu1 == 4 then f() end
if menu1 == 5 then aaaa() end
Qjctx=-1
end
function aaaa()
print('天帝')
os.exit() 
end

while(true)
do
if gg.isVisible(true)then
Qjctx=1
gg.setVisible(false) 
end 
gg.clearResults()
if Qjctx==1 then Main() end
end