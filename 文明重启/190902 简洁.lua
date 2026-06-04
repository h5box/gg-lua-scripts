function Main0()
SN = gg.choice({
	 "小晕文明重启2.0简洁版",
}, nil, "小晕整理")
if SN==1 then
	 Main1()
end
FX=0
end

function Main1()
SN = gg.multiChoice({
	 "踏空（请勿对游戏隐藏4）",
	 "关闭踏空",
	 "高挑",
	 "贴墙透视别趴着",
}, nil, "小晕整理")
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
FX=0
end

function HS2()
	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("踏空已开启")
end
function HS3()
	 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.05",gg.TYPE_FLOAT)
gg.toast("踏空已关闭")
end

function HS4()
	 gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0;1.5;0;0.73000001907;0;0.41999998689;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50", gg.TYPE_FLOAT)
gg.toast("防止高度不够所以调大了")
gg.clearResults()
end

function HS5()
	 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("贴墙透视开启")
end



Main0()