function Main0()
SN = gg.choice({
	 "使用前请看一下哦！",
	 "全屏攻击",
	 "怪物移速",
	 "修改技力+自用",
	 "退出脚本",
}, nil, "欢迎加入游戏交流群，群聊号码：680222711")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main4()
end
if SN==3 then
	 Main11()
end
if SN==4 then
	 Main20()
end
if SN==5 then
	 HS19()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "QQ交流群:680222711",
	 "欢迎您的加入哟！",
	 "返回主页",
}, nil, "可转发分享  但请勿二改  谢谢  \n\n欢迎加入游戏交流群，群聊号码：680222711\n\n                                                  ——3L 桜梦吖丶")
if SN[1]==true then
	 HS9()
end
if SN[2]==true then
	 HS10()
end
if SN[3]==true then
	 HS8()
end
FX1=0
end

function HS9()
	 Main0()
end

function HS10()
	 Main0()
end

function HS8()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "全屏1",
	 "全屏2",
	 "返回主页",
}, nil, "请勾选1  2开启全屏攻击")
if SN[1]==true then
	 HS5()
end
if SN[2]==true then
	 HS6()
end
if SN[3]==true then
	 HS7()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;-1.5;-0.5;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("200", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;-1.5;-0.5;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.5;-0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("-15", gg.TYPE_FLOAT)
	 gg.toast("全屏开启成功  ——3L  桜梦吖丶")
	 gg.clearResults()
end

function HS7()
	 Main0()
end

function Main11()
SN = gg.choice({
	 "0（定怪）",
	 "0.25",
	 "1",
	 "2",
	 "5",
	 "恢复",
	 "返回主页",
}, nil, "请在关卡内修改  \n 注意第二次修改请点恢复  只有第一次不用\n\n初始为0.5   0为定怪   1为2倍速")
if SN==1 then
	 HS12()
end
if SN==2 then
	 HS13()
end
if SN==3 then
	 HS14()
end
if SN==4 then
	 HS15()
end
if SN==5 then
	 HS16()
end
if SN==6 then
	 HS17()
end
if SN==7 then
	 HS18()
end
FX1=0
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;50~150D;200~300D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;50~150D;200~300D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.25", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;50~150D;200~300D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;50~150D;200~300D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;50~150D;200~300D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0~5;50~150D;200~300D::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS18()
	 Main0()
end

function Main20()
SN = gg.choice({
	 "1到100",
	 "自用",
	 "返回主页",
}, nil, " 需要添加自己需要需要的还请联系我\n\n 常用的修改过多可能崩溃\n                                              ——3L  桜梦吖丶")
if SN==1 then
	 Main22()
end
if SN==2 then
	 Main39()
end
if SN==3 then
	 HS50()
end
FX1=0
end

function Main22()
SN = gg.multiChoice({
	 "1~5",
	 "5~10",
	 "10~15",
	 "15~20",
	 "20~25",
	 "25~30",
	 "30~35",
	 "35~40",
	 "40~45",
	 "45~50",
	 "50~55",
	 "55~60",
	 "60~100（可能崩溃）",
	 "返回",
}, nil, "有些初始就加的改不了  列如星熊")
if SN[1]==true then
	 HS32()
end
if SN[2]==true then
	 HS23()
end
if SN[3]==true then
	 HS31()
end
if SN[4]==true then
	 HS28()
end
if SN[5]==true then
	 HS26()
end
if SN[6]==true then
	 HS27()
end
if SN[7]==true then
	 HS29()
end
if SN[8]==true then
	 HS30()
end
if SN[9]==true then
	 HS33()
end
if SN[10]==true then
	 HS34()
end
if SN[11]==true then
	 HS35()
end
if SN[12]==true then
	 HS36()
end
if SN[13]==true then
	 HS37()
end
if SN[14]==true then
	 HS38()
end
FX1=0
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1~5;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5~10;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5~10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10~15;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10~15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15~20;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15~20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20~25;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20~25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25~30;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25~30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30~35;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30~35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("35~40;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("35~40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("40~45;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40~45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("45~50;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("45~50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("50~55;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50~55", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("55~60;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("55~60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60~100;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60~100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS38()
	 Main20()
end

function Main39()
SN = gg.choice({
	 "桜梦",
	 "返回",
}, nil, "需要添加请联系我\n\n                                          ——3L  桜梦吖丶")
if SN==1 then
	 Main42()
end
if SN==2 then
	 HS49()
end
FX1=0
end

function Main42()
SN = gg.multiChoice({
	 "天火芬",
	 "5",
	 "杰西卡",
	 "返回",
}, nil, "")
if SN[1]==true then
	 HS43()
end
if SN[2]==true then
	 HS44()
end
if SN[3]==true then
	 HS45()
end
if SN[4]==true then
	 HS46()
end
FX1=0
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30~31;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30~31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.0078125E:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;1.7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("3L  桜梦吖丶")
	 gg.clearResults()
end

function HS46()
	 Main39()
end

function HS49()
	 Main20()
end

function HS50()
	 Main0()
end

function HS19()
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