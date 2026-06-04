function Main0()
SN = gg.choice({
	 "白天区",
	 "黑天区",
	 "防封",
	 "改皮肤",
	 "娱乐",
	 "变态功能",
	 "角色自走",
	 "改护盾区域",
	 "火箭筒改武器",
	 "透视",
	 "半稳定功能",
	 "大乱斗功能",
	 "引力场专区",
	 "坑人专区",
	 "封号机制",
	 "全天赋",
	 "秒开",
	 "退出脚本",
}, nil, "湖心制作\n禁止二改")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main15()
end
if SN==3 then
	 Main32()
end
if SN==4 then
	 Main48()
end
if SN==5 then
	 Main66()
end
if SN==6 then
	 Main71()
end
if SN==7 then
	 Main94()
end
if SN==8 then
	 Main85()
end
if SN==9 then
	 Main102()
end
if SN==10 then
	 Main126()
end
if SN==11 then
	 Main133()
end
if SN==12 then
	 Main143()
end
if SN==13 then
	 Main147()
end
if SN==14 then
	 Main153()
end
if SN==15 then
	 Main161()
end
if SN==16 then
	 Main165()
end
if SN==17 then
	 Main169()
end
if SN==18 then
	 HS45()
end
FX=0
end

function Main1()
SN = gg.multiChoice({
	 "透视（41,82）",
	 "1.8开锁速度（82）",
	 "2.8开锁速度（41）",
	 "火箭筒0.8CD（41,82）",
	 "火箭筒76伤害（82）",
	 "火箭筒116伤害（41）",
	 "疾跑微微加速（82）",
	 "疾跑微微加速（41）",
	 "疾跑跳高30秒（41）",
	 "疾跑跳高10秒（82）",
	 "疾跑30秒（41）",
	 "疾跑10秒（82）",
	 "返回",
}, nil, "一点要演，别全开，只是给你列表找一些开。")
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
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1.4012985e-45F;8.0;1,082,467,303D::56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.8", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.8", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.1;-0.06;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.8", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("76", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("116", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.4", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.3;0.3::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.3;0.3::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS14()
	 Main0()
end

function Main15()
SN = gg.multiChoice({
	 "透视（41,82）",
	 "5倍开锁速度（82）",
	 "10倍开锁速度开启成功（41）",
	 "疾跑跳高无限（41）",
	 "疾跑跳高60秒（82）",
	 "疾跑无限（41）",
	 "疾跑60秒（82）",
	 "火箭筒0.5CD（41,82）",
	 "疾跑加速（41）",
	 "疾跑加速（82）",
	 "火箭筒146伤害（41）",
	 "火箭筒96伤害（82）",
	 "虚拟无限金币（41）",
	 "实体无限金币（41,82）",
	 "返回",
}, nil, "没说可以完全奔放")
if SN[1]==true then
	 HS16()
end
if SN[2]==true then
	 HS17()
end
if SN[3]==true then
	 HS18()
end
if SN[4]==true then
	 HS19()
end
if SN[5]==true then
	 HS20()
end
if SN[6]==true then
	 HS21()
end
if SN[7]==true then
	 HS22()
end
if SN[8]==true then
	 HS24()
end
if SN[9]==true then
	 HS25()
end
if SN[10]==true then
	 HS26()
end
if SN[11]==true then
	 HS27()
end
if SN[12]==true then
	 HS28()
end
if SN[13]==true then
	 HS29()
end
if SN[14]==true then
	 HS30()
end
if SN[15]==true then
	 HS31()
end
FX=0
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1.4012985e-45F;8.0;1,082,467,303D::56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.3;0.3::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.3;0.3::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.1;-0.06;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.7", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("146", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("96", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("70F;444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20;20;20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS31()
	 Main0()
end

function Main32()
SN = gg.multiChoice({
	 "防封1",
	 "防封2",
	 "防封3",
	 "防封4",
	 "防封5",
	 "防封6",
	 "防封7",
	 "防封8",
	 "防封9",
	 "防封10",
	 "防封11",
	 "返回",
}, nil, "防封是鸟之风的xa防封")
if SN[1]==true then
	 HS33()
end
if SN[2]==true then
	 HS34()
end
if SN[3]==true then
	 HS35()
end
if SN[4]==true then
	 HS36()
end
if SN[5]==true then
	 HS37()
end
if SN[6]==true then
	 HS38()
end
if SN[7]==true then
	 HS39()
end
if SN[8]==true then
	 HS40()
end
if SN[9]==true then
	 HS41()
end
if SN[10]==true then
	 HS42()
end
if SN[11]==true then
	 HS43()
end
if SN[12]==true then
	 HS44()
end
FX=0
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5225", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5225", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("10003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("19000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("19000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5227", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5227", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("57740", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("57740", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5226", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5226", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("9952", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9952", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("9981", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9981", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5224", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5224", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5056", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5026", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS44()
	 Main0()
end

function Main48()
SN = gg.multiChoice({
	 "疾跑改13级皮肤 梦想",
	 "跳高13级皮肤 完美空翻",
	 "跳高改10级皮肤 恶搞之舞",
	 "医疗箱改13级皮肤 圣光之箱",
	 "皮卡改10级皮肤 摇滚小黄鸭",
	 "皮卡改13级皮肤 RMM-R超跑",
	 "飞爪改10级皮肤 超凡蜘蛛网",
	 "飞爪改13级皮肤 神龙金爪",
	 "冲锋枪改10级皮肤 激光",
	 "冲锋枪改13级皮肤 DNA-RayGun",
	 "火箭筒改13级皮肤 火焰龙头鲨",
	 "火箭筒改皮肤 梦想鲤鱼王",
	 "手榴弹改13级皮肤 氪金石脉冲弹",
	 "迫击炮改10级皮肤 磁暴",
	 "迫击炮改13级皮肤 黄金虎纹鲨",
	 "返回",
}, nil, "湖心制作，禁止二改。")
if SN[1]==true then
	 HS50()
end
if SN[2]==true then
	 HS51()
end
if SN[3]==true then
	 HS52()
end
if SN[4]==true then
	 HS53()
end
if SN[5]==true then
	 HS54()
end
if SN[6]==true then
	 HS55()
end
if SN[7]==true then
	 HS56()
end
if SN[8]==true then
	 HS57()
end
if SN[9]==true then
	 HS58()
end
if SN[10]==true then
	 HS59()
end
if SN[11]==true then
	 HS60()
end
if SN[12]==true then
	 HS61()
end
if SN[13]==true then
	 HS62()
end
if SN[14]==true then
	 HS63()
end
if SN[15]==true then
	 HS64()
end
if SN[16]==true then
	 HS65()
end
FX=0
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600066", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600111", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600006", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600161", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600276", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600376", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600441", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600236", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS65()
	 Main0()
end

function Main66()
SN = gg.multiChoice({
	 "封号",
	 "解封",
	 "返回",
}, nil, "貌似没啥用，就是占一下内存的事。")
if SN[1]==true then
	 HS67()
end
if SN[2]==true then
	 HS68()
end
if SN[3]==true then
	 HS69()
end
FX=0
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS68()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS69()
	 Main0()
end

function Main71()
SN = gg.multiChoice({
	 "锁血",
	 "火箭筒改迫击炮",
	 "迫击炮全屏",
	 "医疗箱全屏范围",
	 "医疗箱无CD",
	 "倒地复活",
	 "反开锁",
	 "血包杀队友",
	 "41没锁",
	 "82没锁",
	 "火箭筒秒杀",
	 "追捕无限护盾",
	 "机关大师无限金币",
	 "疾跑加速",
	 "逃生直接死",
	 "41吸人",
	 "82吸人",
	 "雷达无CD",
	 "手雷秒杀",
	 "冲锋枪秒换弹",
	 "穿墙（ch内存）",
	 "木偶锁血",
	 "秒开锁",
	 "全屏开锁",
	 "火箭筒无限子弹",
	 "返回",
}, nil, "抓包或者自建房专用")
if SN[1]==true then
	 HS72()
end
if SN[2]==true then
	 HS73()
end
if SN[3]==true then
	 HS74()
end
if SN[4]==true then
	 HS75()
end
if SN[5]==true then
	 HS76()
end
if SN[6]==true then
	 HS77()
end
if SN[7]==true then
	 HS78()
end
if SN[8]==true then
	 HS79()
end
if SN[9]==true then
	 HS80()
end
if SN[10]==true then
	 HS81()
end
if SN[11]==true then
	 HS82()
end
if SN[12]==true then
	 HS83()
end
if SN[13]==true then
	 HS91()
end
if SN[14]==true then
	 HS92()
end
if SN[15]==true then
	 HS95()
end
if SN[16]==true then
	 HS112()
end
if SN[17]==true then
	 HS113()
end
if SN[18]==true then
	 HS115()
end
if SN[19]==true then
	 HS117()
end
if SN[20]==true then
	 HS118()
end
if SN[21]==true then
	 HS119()
end
if SN[22]==true then
	 HS121()
end
if SN[23]==true then
	 HS123()
end
if SN[24]==true then
	 HS124()
end
if SN[25]==true then
	 HS159()
end
if SN[26]==true then
	 HS160()
end
FX=0
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 999}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS75()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3F;1007D;500005D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.2F;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("45;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS82()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS83()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS91()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;30;30::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS92()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS95()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-66.89824676514", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS112()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS113()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS115()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS117()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS118()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS119()
	 gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("1;0.05000000075;2.3694278e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS121()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;14;50::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 50}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS123()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS124()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS159()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300F;4D;3F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS160()
	 Main0()
end

function Main94()
SN = gg.multiChoice({
	 "逃生自走开启",
	 "逃生自走恢复",
	 "追捕自走开启",
	 "追捕自走恢复",
	 "返回",
}, nil, "不知道能不能用")
if SN[1]==true then
	 HS97()
end
if SN[2]==true then
	 HS98()
end
if SN[3]==true then
	 HS99()
end
if SN[4]==true then
	 HS100()
end
if SN[5]==true then
	 HS101()
end
FX=0
end

function HS97()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100F;1::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS98()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100F;0::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS99()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("175F;1::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS100()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("175F;0::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS101()
	 Main0()
end

function Main85()
SN = gg.multiChoice({
	 "跳高开启改护盾",
	 "疾跑开启改护盾",
	 "队友进魔法墙改护盾",
	 "返回",
}, nil, "不知道还能不能用")
if SN[1]==true then
	 HS86()
end
if SN[2]==true then
	 HS87()
end
if SN[3]==true then
	 HS88()
end
if SN[4]==true then
	 HS89()
end
FX=0
end

function HS86()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.40129846e-45F;102D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.40129846e-45F;103D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.9F;1F;50F;202D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS89()
	 Main0()
end

function Main102()
SN = gg.multiChoice({
	 "火箭筒1级改2级",
	 "火箭筒1级改3级",
	 "火箭筒1级改迫击炮1级",
	 "火箭筒1级改迫击炮2级",
	 "火箭筒1级改迫击炮3级",
	 "火箭筒1级改冲锋枪1级",
	 "火箭筒1级改冲锋枪2级",
	 "火箭筒1级改冲锋枪3级",
	 "返回",
}, nil, "阿巴阿巴")
if SN[1]==true then
	 HS103()
end
if SN[2]==true then
	 HS104()
end
if SN[3]==true then
	 HS105()
end
if SN[4]==true then
	 HS106()
end
if SN[5]==true then
	 HS107()
end
if SN[6]==true then
	 HS108()
end
if SN[7]==true then
	 HS109()
end
if SN[8]==true then
	 HS110()
end
if SN[9]==true then
	 HS111()
end
FX=0
end

function HS103()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("101", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS104()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("102", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS105()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS106()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("111", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS107()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS108()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("130", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS109()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("131", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS110()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("132", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS111()
	 Main0()
end

function Main126()
SN = gg.multiChoice({
	 "暗黑透视",
	 "亮透视",
	 "xa透视",
	 "返回",
}, nil, "占内存")
if SN[1]==true then
	 HS127()
end
if SN[2]==true then
	 HS128()
end
if SN[3]==true then
	 HS131()
end
if SN[4]==true then
	 HS132()
end
FX=0
end

function HS127()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1.4012985e-45F;8.0;1,082,467,303D::56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS128()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1.4012985e-45F;8.0;1,082,467,303D::56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS131()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS132()
	 Main0()
end

function Main133()
SN = gg.multiChoice({
	 "14倍开锁速度",
	 "追捕无限传送",
	 "逃生回血变强",
	 "皮卡32秒",
	 "皮卡64秒",
	 "返回",
}, nil, "湖心制作\n倒卖没妈")
if SN[1]==true then
	 HS134()
end
if SN[2]==true then
	 HS135()
end
if SN[3]==true then
	 HS136()
end
if SN[4]==true then
	 HS137()
end
if SN[5]==true then
	 HS138()
end
if SN[6]==true then
	 HS139()
end
FX=0
end

function HS134()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("14", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS135()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS136()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS137()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("32", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS138()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("64", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS139()
	 Main0()
end

function Main143()
SN = gg.multiChoice({
	 "大乱斗无限道具",
	 "大乱斗无冷却",
	 "返回",
}, nil, "阿巴阿巴")
if SN[1]==true then
	 HS144()
end
if SN[2]==true then
	 HS145()
end
if SN[3]==true then
	 HS146()
end
FX=0
end

function HS144()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS145()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("111D;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS146()
	 Main0()
end

function Main147()
SN = gg.multiChoice({
	 "引力场无冷却",
	 "引力场秒杀",
	 "引力场全屏吸人",
	 "引力场改手雷眩晕",
	 "返回",
}, nil, "湖心制作")
if SN[1]==true then
	 HS148()
end
if SN[2]==true then
	 HS149()
end
if SN[3]==true then
	 HS150()
end
if SN[4]==true then
	 HS151()
end
if SN[5]==true then
	 HS152()
end
FX=0
end

function HS148()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1021D;3;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS149()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;1.5;0.3;0.2;6;-0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS150()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500;2.5;2.5;0.2::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS151()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25F;502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("105", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS152()
	 Main0()
end

function Main153()
SN = gg.multiChoice({
	 "负开锁速度",
	 "火箭筒加血",
	 "迫击炮加血",
	 "冲锋枪加血",
	 "返回",
}, nil, "自建房")
if SN[1]==true then
	 HS154()
end
if SN[2]==true then
	 HS155()
end
if SN[3]==true then
	 HS156()
end
if SN[4]==true then
	 HS157()
end
if SN[5]==true then
	 HS158()
end
FX=0
end

function HS154()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS155()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS156()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS157()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS158()
	 Main0()
end

function Main161()
SN = gg.multiChoice({
	 "封号机制1",
	 "封号机制2",
	 "返回",
}, nil, "湖心制作封号机制")
if SN[1]==true then
	 HS162()
end
if SN[2]==true then
	 HS163()
end
if SN[3]==true then
	 HS164()
end
FX=0
end


function HS162()
	 gg.alert("hello，大家好，我是湖心，相信大家都知道啥是封号吧，那么如果防封呢？请点封号机制2","一会点封号机制2")
end

function HS163()
gg.alert("我们来将一下封号机制，那就是只要你一个号一直开挂也是会封号的，这里你是可以开稳定防封和拦截，并且还得演，不过就算是演，只要遇到个行家也是会被发现的，所以你们可以尝试一下开一局退一局，清理数据，这样估计会比之前稳定一点，要是你还是觉得不稳定，你可以试试一天就开一局，这样估计封号率就会降到很低，好了就先到这里吧，等有了新的发现再加上去","知道了")
end
function HS164()
	 Main0()
end

function Main165()
SN = gg.multiChoice({
	 "追捕者全天赋",
	 "逃生者全天赋",
	 "返回",
}, nil, "湖心制作\n阿巴阿巴")
if SN[1]==true then
	 HS166()
end
if SN[2]==true then
	 HS167()
end
if SN[3]==true then
	 HS168()
end
FX=0
end

function HS166()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.08;0.12;0.16;0.18;0.27;0.36;0.08;12;0.16::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.08;0.12;0.16;0.18;0.27;0.36;0.08;12;0.16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS167()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.06;0.09;0.12;0.20;0.30;0.40;0.20;0.30;0.40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.06;0.09;0.12;0.20;0.30;0.40;0.20;0.30;0.40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS168()
	 Main0()
end

function Main169()
SN = gg.multiChoice({
	 "全东西秒开",
	 "秒开禁闭室",
	 "秒开补给箱",
	 "秒开逃生门",
	 "秒开夹子",
	 "钥匙秒开",
	 "返回",
}, nil, "huxin制作")
if SN[1]==true then
	 HS170()
end
if SN[2]==true then
	 HS171()
end
if SN[3]==true then
	 HS172()
end
if SN[4]==true then
	 HS173()
end
if SN[5]==true then
	 HS174()
end
if SN[6]==true then
	 HS175()
end
if SN[7]==true then
	 HS176()
end
FX=0
end

function HS170()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("66.89824676514", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS171()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;0.2;1;1;1;1D;100D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS172()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS173()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-90;1D;256D;8;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS174()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1D;10D;1D;2.5;0.5;1;14::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS175()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;1;256D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS176()
	 Main0()
end

function HS45()
	 os.exit()
end



cs = '湖心制作'
while(true)do
if gg.isVisible(true) then
FX=nil
gg.setVisible(false)
end
gg.clearResults()
if FX==nil then
Main0()
end
end