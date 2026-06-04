function Main0()
SN = gg.choice({
	 "变态功能",
	 "英雄专区",
	 "退出脚本",
}, nil, "疯子破解网:fengzipojie.com")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main10()
end
if SN==3 then
	 HS41()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "普攻叠加(普攻五下后开启)",
	 "子弹追踪",
	 "爬墙",
	 "飞天",
	 "关闭一三四功能",
	 "返回主页",
}, nil, "疯子破解网:fengzipojie.com")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS4()
end
if SN==3 then
	 HS5()
end
if SN==4 then
	 HS6()
end
if SN==5 then
	 HS7()
end
if SN==6 then
	 HS8()
end
FX1=0
end

function HS2()
		gg.clearResults()
		gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("393472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("393472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 393472}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.99904823303", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.99904823303", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("-999999",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.9~0.999;0.9~0.999::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.9~0.999;0.9~0.999::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("-999999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1W;2W;1W;1267W;0.1;0.8::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 520}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1W;2W;1W;1267W;0.1;0.8::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(".1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 20}})
	 end
	 gg.toast("飞天开始成功")
	 gg.clearResults()
end

function HS7()
	 gg.removeListItems()---移出全部数据=恢复全部坐标[搜索结果]remove=去除ListItems=项目
	 gg.clearList()---一个是搜索结果的数据，一个是列表里的数据[列表]list中文=列表clear=清楚
	 
	 gg.toast("修复成功")
end

function HS8()
	 Main0()
end

function Main10()
SN = gg.choice({
	 "魔灵骑士：哈卡",
	 "科学狂人：唐尼",
	 "毁灭王：阿甘博士",
	 "时空警察：桑杰",
	 "小天使：希尔",
	 "吸血鬼：德古拉斯",
	 "熊猫战士：潘塔",
	 "返回主页",
}, nil, "疯子破解网:fengzipojie.com")
if SN==1 then
	 Main11()
end
if SN==2 then
	 Main16()
end
if SN==3 then
	 Main20()
end
if SN==4 then
	 Main24()
end
if SN==5 then
	 Main27()
end
if SN==6 then
	 Main31()
end
if SN==7 then
	 Main35()
end
if SN==8 then
	 HS42()
end
FX1=0
end

function Main11()
SN = gg.multiChoice({
	 "全屏攻击",
	 "全屏秒杀",
	 "返回主页",
}, nil, "先开全屏再开秒杀")
if SN[1]==true then
	 HS12()
end
if SN[2]==true then
	 HS13()
end
if SN[3]==true then
	 HS14()
end
FX1=0
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("150;5;0.5;0.15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.15000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS13()
	gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("200.0;25.0;520::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00001", gg.TYPE_FLOAT)
	 gg.clearResults()
end

function HS14()
	 Main0()
end

function Main16()
SN = gg.multiChoice({
	 "子弹瞬击",
	 "小范围子弹追踪",
	 "返回主页",
}, nil, "疯子破解网:fengzipojie.com")
if SN[1]==true then
	 HS17()
end
if SN[2]==true then
	 HS18()
end
if SN[3]==true then
	 HS19()
end
FX1=0
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("70.0;0.0;1,000.0;0.25::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("0.25;15.0;10.0;20.0;60.0::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5201314", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS19()
	 Main0()
end

function Main20()
SN = gg.multiChoice({
	 "子弹瞬击",
	 "子弹下坠",
	 "返回主页",
}, nil, "疯子破解网:fengzipojie.com")
if SN[1]==true then
	 HS21()
end
if SN[2]==true then
	 HS22()
end
if SN[3]==true then
	 HS23()
end
FX1=0
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("65.0;0.0;30.0;100.0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.40000000596;0.05999999866::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS23()
	 Main0()
end

function Main24()
SN = gg.choice({
	 "全屏攻击",
	 "返回主页",
}, nil, "疯子破解网:fengzipojie.com")
if SN==1 then
	 HS25()
end
if SN==2 then
	 HS26()
end
FX1=0
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60.0;30.0;5.0;1.0;1.4012985e-45::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS26()
	 Main0()
end

function Main27()
SN = gg.multiChoice({
	 "救援距离",
	 "一口十奶",
	 "返回主页",
}, nil, "安顺序开启")
if SN[1]==true then
	 HS28()
end
if SN[2]==true then
	 HS29()
end
if SN[3]==true then
	 HS30()
end
FX1=0
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;75::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("21;25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("521", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("22;0.5;25;0.5;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".01", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("22;0.5;25;0.01;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("22;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS30()
	 Main0()
end

function Main31()
SN = gg.multiChoice({
	 "普攻距离",
	 "攻速秒杀(会异常)",
	 "返回主页",
}, nil, "按顺序开启")
if SN[1]==true then
	 HS32()
end
if SN[2]==true then
	 HS33()
end
if SN[3]==true then
	 HS34()
end
FX1=0
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12;50::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.25;0.75;12502D:;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(".25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".01", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS34()
	 Main0()
end

function Main35()
SN = gg.multiChoice({
	 "无后摇",
	 "普攻距离",
	 "子弹追踪",
	 "无限子弹",
	 "返回主页",
}, nil, "疯子破解网:fengzipojie.com")
if SN[1]==true then
	 HS36()
end
if SN[2]==true then
	 HS37()
end
if SN[3]==true then
	 HS38()
end
if SN[4]==true then
	 HS39()
end
if SN[5]==true then
	 HS40()
end
FX1=0
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;0.8::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;18;5::10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("17;50::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("520", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;10;-1::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS40()
	 Main0()
end

function HS42()
	 Main0()
end

function HS41()
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