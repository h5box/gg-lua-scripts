function Main()
SN=gg.choice({
"人物天线 左右肩，头",
"人物地线 左右腿，屁股",
"人物天线2，头",
"人物浮空(低)飞天",
"浮空飞天(低)恢复",
"浮空(中)飞天",
"浮空(中)恢复",
"浮空(高)飞天",
"浮空(高)恢复",
"人物穿墙",
"人物穿墙恢复",
"人物爬墙",
"爬墙恢复",
"遁地(可能是视角)(不可恢复)",
"飞天(同上)(不可恢复)(跟上边只能用一个)",
"人物蓝紫色(易闪退不可恢复)",
"退出脚本"
},2018,"1.0，十分钟脚本，人物飞天有的会拉回，人物穿墙请使人物处于前进状态，穿过目标后跳到高处恢复")
if SN==1 then a()end
if SN==2 then b()end
if SN==3 then c()end
if SN==4 then d()end
if SN==5 then e()end
if SN==6 then f()end
if SN==7 then g()end
if SN==8 then h()end
if SN==9 then i()end
if SN==10 then j()end
if SN==11 then k()end
if SN==12 then l()end
if SN==13 then m()end
if SN==14 then n()end
if SN==15 then o()end
if SN==16 then p()end
if SN==17 then Exit()end
XGCK=-1
end

function a()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.05",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("成功")
end
function b()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.09",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.09", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(6000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function c()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function d()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;0.15",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function e()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("0.15",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function f()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;0.15",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function g()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;10",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("0.15",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function h()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;0.15",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("15",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function i()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;15",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("0.15",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function j()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;0.80000001192;0.15",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("-0.03",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function k()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.9999999404;0.80000001192;-0.03",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.03", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("0.15",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function l()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.2",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("1003",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function m()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1003",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1003", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("0.2",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function n()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.65",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.65", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function o()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.65",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.65", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4000)
gg.editAll("-5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function p()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100000)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function Exit()
print("ok")
os.exit()
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
Main()
end
end