

function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("注入成功🐯👍")else return false end else return false end end 
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败🐯👎")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败🐯👎") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "注入成功🐯🤟,共修改" .. xgsl .. "个游戏数据") else gg.toast(qmnb[2]["name"] .. "注入失败🐯🖕") end end end end
local whu="[开启]"
local whn="[关闭]"
local fkjz=whu
local tsqt=whu
local rwys=whu
local tklt=whu
local bsdd=whu
local ssxz=whu
local sxxz=whu
local pxjs=whu
local ddjs=whu
local stjs=whu
local kjlf=whu
local kjdd=whu
local szbj=whu
local jmbj=whu
local ddfs=whu
local xhtx=whu
local pttx=whu
local lsb=whu
local rwss=whu
local rwyy=whu
local fdsj=whu
local rwgt=whu
local rwlt=whu
index = function()
WH = gg.choice({
"①打架系列🐯⚡️",
"②拆家系列🐯⚡️",
"③人物系列🐯⚡️",
"④加速系列🐯⚡️",
"🐮退出脚本🐯⚡️"
}, nil,'🐯提醒'..os.date(':现在的时间是%Y年 %m月%d日 %H时 %M分%S秒'))
if WH == 1 then
A()
end
if WH == 2 then
B()
end
if WH == 3 then
C()
end
if WH == 4 then
E()
end
if WH == 5 then
Ext()
end
XXS = -1
end
A = function()
WH1 = gg.choice({
"自瞄系列 [多选]",
"枪械系列 [多选]",
"范围系列 [多选]",
"路飞系列 [多选]",
"基瞄十倍 " .. jmbj,
"返回主页"
}, nil,'🐯⚡️提醒'..os.date(':现在的时间是%Y年 %m月%d日 %H时 %M分%S秒'))
if WH1 == 1 then
A1()
end
if WH1 == 2 then
A2()
end
if WH1 == 3 then
A3()
end
if WH1 == 4 then
A4()
end
if WH1 == 5 then
A5()
end
if WH1 == 6 then
who()
end
XXS = -1
end
B = function()
WH2 = gg.choice({
"GM 工具 [多选] ",
"浮空建造 " .. fkjz,
"透视全图 " .. tsqt,
"透视墙壁 [多选]",
"返回主页"
}, nil,'🐯👍提醒'..os.date(':现在的时间是%Y年 %m月%d日 %H时 %M分%S秒'))
if WH2 == 1 then
B1()
end
if WH2 == 2 then
B2()
end
if WH2 == 3 then
B3()
end
if WH2 == 4 then
B4()
end
if WH2 == 5 then
who()
end
XXS = -1
end
C = function()
WH3 = gg.choice({
"人透优化 [集合] ",
"人物天线 [多选]",
"人物上色 " .. rwss,
"人物夜视 " .. rwys,
"人物视觉 [多选]",
"人物高跳 " .. rwgt,
"人物连跳 " .. rwlt,
"水上行走 " .. ssxz,
"水下行走 " .. sxxz,
"半身遁地 " .. bsdd,
"返回主页"
}, nil,'🇧 🇾 🐯⚡️提醒'..os.date(':现在的时间是%Y年 %m月%d日 %H时 %M分%S秒'))
if WH3 == 1 then
C1()
end
if WH3 == 2 then
C2()
end
if WH3 == 3 then
C3()
end
if WH3 == 4 then
C4()
end
if WH3 == 5 then
C5()
end
if WH3 == 6 then
C6()
end
if WH3 == 7 then
C7()
end
if WH3 == 8 then
C8()
end
if WH3 == 9 then
C9()
end
if WH3 == 10 then
C10()
end
if WH3 == 11 then
who()
end
XXS = -1
end

E = function()
WH5 = gg.choice({
"刀棒加速",
"趴下加速 " .. pxjs,
"倒地加速 " .. ddjs,
"实体加速 " .. stjs,
"倒地开枪",
"返回主页"
}, nil,'🐯🐤提醒'..os.date(':现在的时间是%Y年 %m月%d日 %H时 %M分%S秒'))
if WH5 == 1 then
E1()
end
if WH5 == 2 then
E2()
end
if WH5 == 3 then
E3()
end
if WH5 == 4 then
E4()
end
if WH5 == 5 then
E5()
end
if WH5 == 6 then
who()
end
XXS = -1
end

Aran = function()
gg.setRanges(16384)
gg.searchNumber("1", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(499)
gg.editAll("999", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("999", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(100)
gg.editAll("0.7346464664", 16)
gg.setRanges(16384)
gg.searchNumber("999", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(50)
gg.editAll("0.99134679", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("999", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(50)
gg.editAll("0.36434346634", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("999", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(300)
gg.editAll("1.64497643446", 16)
gg.clearResults()
end

A1 = function()
xgg = gg.alert("提示一:CA适合群架\n提示二:全屏适合单挑", "CA自瞄", "全屏自瞄")
if xgg == 1 then
Aran()
gg.setRanges(16384)
SearchWrite({
{
8.3453106E22,
0
},
{
-5.4755273E27,
4
}
}, {
{
1.49E-9,
4,
true
}
}, 16)
gg.clearResults()
gg.clearList()
gg.toast("CA自瞄已开启")
elseif xgg == 2 then
Aran()
gg.clearList()
gg.setRanges(16384)
SearchWrite({
{
8.3453106E22,
0
},
{
-5.4755273E27,
4
}
}, {
{
1.49E-9,
4,
true
}
}, 16)
gg.clearResults()
gg.clearList()
gg.clearList()
gg.setRanges(16384)
SearchWrite({
{
-0.79999995232,
53564
},
{
2.20000004768,
53568
}
}, {
{
10,
53568,
true
}
}, 16)
gg.clearList()
gg.toast("全屏自瞄已开启")
end
end
L68_85521 = 4
L56_85513 = 3.7
L42_85500 = 7.6
L37_85496 = 2.8
L16_85477 = L68_85521 - L37_85496
L10_85471 = L16_85477 + L37_85496
L18_85478 = L56_85513 - L42_85500 + 4
L64_85518 = L68_85521 - 1
L21_85480 = L10_85471 * -216
A2 = function()
xgg = gg.alert("提示一:无后聚点瞬击", "单无后", "换弹加速", "子弹加速")
if xgg == 1 then
gg.setRanges(32)
SearchWrite({
{
-0.10000000149,
0
},
{
1.20000004768,
108
}
}, {
{
1,
-12,
false
},
{
1,
-16,
false
},
{
1,
-20,
false
},
{
1.0E-4,
4,
false
},
{
1.0E-4,
8,
false
},
{
1.0E-4,
144,
false
},
{
1.0E-4,
148,
false
},
{
1.0E-4,
152,
false
},
{
1.0E-4,
156,
false
},
{
1.0E-4,
172,
false
},
{
1.0E-4,
428,
false
},
{
1.0E-4,
432,
false
},
{
1.0E-4,
436,
false
},
{
1.0E-4,
452,
false
},
{
1.0E-4,
456,
false
},
{
1.0E-4,
592,
false
},
{
1.0E-4,
596,
false
},
{
1.0E-4,
600,
false
},
{
1.0E-4,
604,
false
},
{
1.0E-4,
620,
false
}
}, 16)
gg.toast("独家无后已开启️")
elseif xgg == 2 then
 gg.setRanges(4)
 SearchWrite({
 {
 L21_85480,
 0
 },
 {
 1063425514,
 -156
 },
 {
 1019625236,
 -152
 },
 {
 -1125603554,
 -160
 },
 {
 -1090519040,
 -144
 }
 }, {
 {
 1,
 8,
 false
 }
 }, 4)
 SearchWrite({
 {
 L21_85480,
 0
 },
 {
 1063415448,
 -156
 }
 }, {
 {
 1,
 8,
 false
 }
 }, 4)
 SearchWrite({
 {
 L21_85480,
 0
 },
 {
 1077237078,
 8
 }
 }, {
 {
 1,
 8,
 false
 }
 }, 4)
 SearchWrite({
 {
 L21_85480,
 0
 },
 {
 1076957458,
 8
 }
 }, {
 {
 1,
 8,
 false
 }
 }, 4)
elseif xgg == 3 then
gg.setRanges(16384)
gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("900000000", 4)
gg.toast("子弹加速已开启️")
gg.clearResults()
end
end

A3 = function()
xgg = gg.alert("提示一:小范围极其稳定%100防封\n提示二:大范围只能稳定10分钟｜封号自负\n提示三:范围刀禁止用枪 用枪重新登录即可 有部分机型会封号", "小范围[独家]", "范围刀[禁枪]", "大范围[10分封]")
if xgg == 1 then
gg.toast("循环小范围已开启")
A3A1()
elseif xgg == 2 then
gg.toast("循环范围刀已开启")
A3A2()
elseif xgg == 3 then
gg.toast("循环大范围已开启")
A3A3()
end
end

A4 = function()
 L2_85463 = gg.alert("提示一∶假如开启无效请重开", "开镜路飞", "开镜遁地" .. kjdd)
 if L2_85463 == 1 then
 A4A1()
 elseif L2_85463 == 2 then
 A4A2()
 end
end

A4A1 = function()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-0.31400001049;0.02710000053;-0.09340000153;-0.02099999972", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.31400001049",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("-3.2135418",gg.TYPE_FLOAT)
gg.toast("路飞觉醒成功，请下蹲开镜")
end

A4A2 = function()
 if kjdd == whu then
 kjdd = whn
 gg.clearList()
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 0.3,
 0
 },
 {
 -0.20000000298,
 4
 },
 {
 0,
 -4
 }
 }, {
 {
 1.39999985695,
 0,
 true
 },
 {
 1.39999985695,
 -4,
 true
 }
 }, 16)
 gg.toast("开镜遁地已开启")
 elseif whn then
 gg.clearList()
 gg.clearResults()
 gg.toast("开镜遁地已关闭")
 kjdd = whu
 end
end


A5 = function()
if jmbj == whu then
jmbj = whn
gg.setRanges(32)
SearchWrite({
{
-1111490560,
6584
},
{
0,
6588
},
{
0,
6596
}
}, {
{
1084410514,
6584,
false
}
}, 4)
gg.clearResults()
gg.setRanges(32)
SearchWrite({
{
-1110704128,
36264
},
{
0,
36256
},
{
0,
36268
}
}, {
{
1084410514,
36264,
false
}
}, 4)
gg.clearResults()
gg.toast("基瞄十倍已开启")
elseif whn then
gg.setRanges(32)
SearchWrite({
{
-1084410514,
6584
},
{
0,
6588
},
{
0,
6596
}
}, {
{
1111490560,
6584,
false
}
}, 4)
gg.clearResults()
gg.setRanges(32)
SearchWrite({
{
-1084410514,
36264
},
{
0,
36256
},
{
0,
36268
}
}, {
{
1110704128,
36264,
false
}
}, 4)
gg.clearResults()
gg.toast("基瞄十倍已关闭")
jmbj = whu
end
end

B1 = function()
L2_85463 = gg.alert("提示一:GM工具 大厅开启\n提示二:GM功能 封号封号", "GM工具", "飞天防死", "遁地防死" .. ddfs)
 if L2_85463 == 1 then
 gg.clearResults()
 gg.setRanges(32)
 SearchWrite({
 {
 -341,
 0
 },
 {
 196,
 28
 },
 {
 0,
 288
 }
 }, {
 {
 1,
 288,
 false
 }
 }, 4)
 gg.toast("GM工具已开启")
 elseif L2_85463 == 2 then
 gg.alert("提示一:开启后跳一下 然后用GM飞到位置 \n提示二:飞到位置之后 返回大厅重新进即可")
 gg.clearResults()
 gg.setRanges(32)
 SearchWrite({
 {
 -100,
 0
 },
 {
 0,
 -4
 },
 {
 256,
 80
 }
 }, {
 {
 256,
 4,
 true
 }
 }, (4))
 gg.toast("飞天防死已开启")
 elseif L2_85463 == 3 then
 B1A1()
 end
end

B1A1 = function()
 if ddfs == whu then
 ddfs = whn
 gg.alert("提示一:开启后直接用GM遁地即可\n提示二:想出来 点回到地面然后关闭此功能")
 gg.clearResults()
 gg.setRanges(32)
 SearchWrite({
 {
 -100,
 0
 },
 {
 0,
 -4
 },
 {
 256,
 80
 }
 }, {
 {
 999,
 4,
 true
 }
 }, (4))
 gg.toast("遁地防死已开启")
 elseif whn then
 gg.clearResults()
 gg.setRanges(32)
 SearchWrite({
 {
 -100,
 0
 },
 {
 0,
 -4
 },
 {
 256,
 80
 }
 }, {
 {
 0,
 4,
 true
 }
 }, (4))
 gg.toast("遁地防死已关闭")
 ddfs = whu
 end
end

B2 = function()
 if fkjz == whu then
 fkjz = whn
 gg.clearResults()
 gg.setRanges(32)
 SearchWrite({
 {
 -0.58823531866,
 0
 },
 {
 5.6051939E-45,
 4
 }
 }, {
 {
 6.734198E-41,
 32,
 false
 },
 {
 999,
 48,
 false
 }
 }, 16)
 gg.toast("浮空建造已开启")
 elseif whn then
 gg.clearResults()
 gg.setRanges(32)
 SearchWrite({
 {
 -0.58823531866,
 0
 },
 {
 5.6051939E-45,
 4
 }
 }, {
 {
 3.6734198E-40,
 32,
 false
 },
 {
 2.31347680092,
 48,
 false
 }
 }, 16)
 gg.toast("浮空建造已关闭")
 fkjz = whu
 end
end

B3 = function()
 if tsqt == whu then
 tsqt = whn
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 0.03518676758,
 0
 },
 {
 -0.50291442871,
 12
 }
 }, {
 {
 5.123,
 20,
 false
 }
 }, 16)
 gg.toast("透视全图已开启")
 elseif whn then
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 0.03518676758,
 0
 },
 {
 -0.50291442871,
 12
 }
 }, {
 {
 0.81399995089,
 20,
 false
 }
 }, 16)
 gg.clearResults()
 gg.toast("透视全图已关闭")
 tsqt = whu
 end
end

B4 = function()
 L2_85463 = gg.alert("提示一:此功只支持骁龙处理器", "木墙透视[✅]", "石墙透视[✅]", "铁墙透视[✅]")
 if L2_85463 == 1 then
 gg.clearResults()
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.032023508101701736,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 36,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 36,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.03202327340841293,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 36,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 36,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.007704700343310833,
 ["type"] = 16
 },
 {
 ["lv"] = 20,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 8,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 70,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 72,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 40,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 72,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.1500033140182495,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -36,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -4,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 28,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 60,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -36,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 28,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 60,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.14999663829803467,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -4,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 28,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 60,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 92,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 28,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 60,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 92,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.002076801611110568,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 48,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 48,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.002076801611110568,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 80,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 80,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.41978082060813904,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.013329435139894485,
 ["type"] = 16
 },
 {
 ["lv"] = 3.799999952316284,
 ["offset"] = 12,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.7060922980308533,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -148,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -116,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -84,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -52,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -20,
 ["type"] = 16
 },
 {
 ["lv"] = 2.000000476837158,
 ["offset"] = 12,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -148,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -116,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -84,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -52,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -20,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.7060521841049194,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -80,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -48,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 48,
 ["type"] = 16
 },
 {
 ["lv"] = 2.000000476837158,
 ["offset"] = 80,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -80,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -48,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 40,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 80,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.014859022572636604,
 ["type"] = 16
 },
 {
 ["lv"] = 1.8001794815063477,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["lv"] = 1.8001794815063477,
 ["offset"] = 44,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 44,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.014859022572636604,
 ["type"] = 16
 },
 {
 ["lv"] = 1.8001794815063477,
 ["offset"] = -52,
 ["type"] = 16
 },
 {
 ["lv"] = 1.8001794815063477,
 ["offset"] = 12,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -52,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.02272883802652359,
 ["type"] = 16
 },
 {
 ["lv"] = 2.736318588256836,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["lv"] = 2.736318349838257,
 ["offset"] = 44,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 44,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.02272883802652359,
 ["type"] = 16
 },
 {
 ["lv"] = 2.736318588256836,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["lv"] = 2.736318349838257,
 ["offset"] = 46,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 76,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 gg.toast("木墙透视已开启")
 elseif L2_85463 == 2 then
 gg.clearResults()
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.6826953887939453,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.6826953887939453,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -24,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.682696521282196,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -24,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -24,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.6827419400215149,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -144,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -64,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = 96,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -144,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -64,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 96,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.6827935576438904,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -216,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -96,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 24,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -216,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -96,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 24,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.6828041672706604,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 24,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 96,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 104,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 24,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 96,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 104,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.6828030347824097,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = 64,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -64,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 64,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.8979434967041016,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -120,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -88,
 ["type"] = 16
 },
 {
 ["lv"] = -2.0,
 ["offset"] = -56,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0,
 ["offset"] = -24,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -120,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -88,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -56,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -24,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.9821171760559082,
 ["type"] = 16
 },
 {
 ["lv"] = -1.9338666200637817,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["lv"] = 1.933866262435913,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338666200637817,
 ["offset"] = 8,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338666200637817,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["lv"] = -1.9338667392730713,
 ["offset"] = 24,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -24,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 8,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 24,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.018658097833395004,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338665008544922,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338665008544922,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338667392730713,
 ["offset"] = 20,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338665008544922,
 ["offset"] = 44,
 ["type"] = 16
 },
 {
 ["lv"] = -1.9338668584823608,
 ["offset"] = 60,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338668584823608,
 ["offset"] = 100,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 12,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 20,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 44,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 60,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 100,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.08303508162498474,
 ["type"] = 16
 },
 {
 ["lv"] = 1.9338666200637817,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["lv"] = -1.9338666200637817,
 ["offset"] = 56,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 56,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 gg.toast("石墙透视已开启")
 elseif L2_85463 == 3 then
 gg.clearResults()
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.12962867319583893,
 ["type"] = 16
 },
 {
 ["lv"] = 1.6046782732009888,
 ["offset"] = 28,
 ["type"] = 16
 },
 {
 ["lv"] = 1.6046782732009888,
 ["offset"] = 100,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 28,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 100,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.12962867319583893,
 ["type"] = 16
 },
 {
 ["lv"] = 1.6046782732009888,
 ["offset"] = -20,
 ["type"] = 16
 },
 {
 ["lv"] = 1.6046782732009888,
 ["offset"] = 4,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -20,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 4,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.15298263728618622,
 ["type"] = 16
 },
 {
 ["lv"] = 1.3940107822418213,
 ["offset"] = -4,
 ["type"] = 16
 },
 {
 ["lv"] = 1.3940107822418213,
 ["offset"] = 20,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 20,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.1057068407535553,
 ["type"] = 16
 },
 {
 ["lv"] = 2.178743600845337,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["lv"] = 2.178743600845337,
 ["offset"] = 28,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = 4,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 28,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.17565540969371796,
 ["type"] = 16
 },
 {
 ["lv"] = 2.178743600845337,
 ["offset"] = -20,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -20,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.19516216218471527,
 ["type"] = 16
 },
 {
 ["lv"] = 2.115550994873047,
 ["offset"] = -20,
 ["type"] = 16
 },
 {
 ["lv"] = 2.115550994873047,
 ["offset"] = 52,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -20,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 53,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.17744342982769012,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0771946907043457,
 ["offset"] = 4,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 4,
 ["offset"] = 4,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = -0.21184007823467255,
 ["type"] = 16
 },
 {
 ["lv"] = 2.1394925117492676,
 ["offset"] = 4,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 4,
 ["offset"] = 4,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 1.2077791464015598E-41,
 ["type"] = 16
 },
 {
 ["lv"] = 1.3940107822418213,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["lv"] = 1.3940107822418213,
 ["offset"] = 8,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -16,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 8,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 qmnb = {
 {
 ["memory"] = 131072
 },
 {
 ["name"] = ""
 },
 {
 ["value"] = 0.8982726335525513,
 ["type"] = 16
 },
 {
 ["lv"] = 2.1371371746063232,
 ["offset"] = -8,
 ["type"] = 16
 },
 {
 ["lv"] = 2.0411479473114014,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 qmxg = {
 {
 ["value"] = 0,
 ["offset"] = -8,
 ["type"] = 16
 },
 {
 ["value"] = 0,
 ["offset"] = 16,
 ["type"] = 16
 }
 }
 xqmnb(qmnb)
 gg.toast("铁墙透视已开启")
 end
end

C1 = function()
gg.alert("提示一:请将画质调为最低\n提示二:此功能包括 人物透视 载具透视 地图优化")
gg.setRanges(131072)
gg.searchNumber("2.8133309e-40", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.clearResults()
gg.setRanges(131072)
gg.setRanges(131072)
gg.searchNumber("3.4897587e-39", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", 16)
gg.searchNumber("1,669,499,405", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", 4)
gg.clearResults()
gg.toast("人物透视|载具透视|地图优化|已开启")
end

C2 = function()
 L2_85463 = gg.alert("提示一:循环可以防止漏人\n提示二:蓝色天线适合夜晚开启\n提示三:想开启其他版本请关闭当前天线", "循环天线" .. xhtx, "普通天线" .. pttx, "蓝色版" .. lsb)
 if L2_85463 == 1 then
 C2A1()
 elseif L2_85463 == 2 then
 C2A2()
 elseif L2_85463 == 3 then
 C2A3()
 end
end

C2A1 = function()
 if xhtx == whu then
 xhtx = whn
 C2A1A1()
 elseif whn then
 C2A1A2()
 xhtx = whu
 end
end

C2A1A1 = function()
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 -0.16947640478610992,
 0
 },
 {
 -0.16947640478610992,
 20
 }
 }, {
 {
 999,
 0,
 false
 }
 }, 16)
 if gg.isVisible() == (true) then
 else
 C2A1A1()
 end
end

C2A1A2 = function()
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 -999,
 0
 },
 {
 -0.16947640478610992,
 20
 }
 }, {
 {
 0.16947640478610992,
 0,
 false
 }
 }, 16)
end

C2A2 = function()
 if pttx == whu then
 pttx = whn
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 -0.16947640478610992,
 0
 },
 {
 -0.16947640478610992,
 20
 }
 }, {
 {
 999,
 0,
 false
 }
 }, 16)
 gg.toast("天线已开启")
 elseif whn then
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 -999,
 0
 },
 {
 -0.16947640478610992,
 20
 }
 }, {
 {
 0.16947640478610992,
 0,
 false
 }
 }, 16)
 gg.toast("天线已关闭")
 pttx = whu
 end
end

C2A3 = function()
 if lsb == whu then
 lsb = whn
 gg.clearResults()
 gg.setRanges(131072)
 gg.searchNumber("2.25000309944F;2.8133309e-40F:512,", 16, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("0", 16)
 gg.toast("颜色已开启")
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 -0.16947640478610992,
 0
 },
 {
 -0.16947640478610992,
 20
 }
 }, {
 {
 999,
 0,
 false
 }
 }, 16)
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 2.7859868E28,
 0
 },
 {
 0.0549999997,
 -4
 },
 {
 0.04044999927,
 -8
 }
 }, {
 {
 2,
 -4,
 false
 }
 }, 16)
 elseif whn then
 gg.clearResults()
 gg.setRanges(4)
 SearchWrite({
 {
 -999,
 0
 },
 {
 -0.16947640478610992,
 20
 }
 }, {
 {
 0.16947640478610992,
 0,
 false
 }
 }, 16)
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 2.7859868E28,
 0
 },
 {
 2,
 -4
 },
 {
 0.04044999927,
 -8
 }
 }, {
 {
 0.0549999997,
 -4,
 false
 }
 }, 16)
 gg.toast("颜色已关闭")
 lsb = whu
 end
end


C3 = function()
if rwss == whu then
rwss = whn
gg.setRanges(131072)
SearchWrite({
{
-3,
0
},
{
1.7001953125,
32
}
}, {
{
999,
0,
false
}
}, 16)
gg.toast("上色已开启")
elseif whn then
gg.setRanges(131072)
SearchWrite({
{
-999,
0
},
{
1.7001953125,
32
}
}, {
{
3,
0,
false
}
}, 16)
gg.toast("上色已关闭")
rwss = whu
end
end

C4 = function()
if rwys == whu then
rwys = whn
gg.setRanges(16384)
SearchWrite({
{
-12.92000007629,
0
},
{
0.0549999997,
4
},
{
-1.228204E23,
28
}
}, {
{
2,
4,
false
}
}, 16)
gg.setRanges(16384)
SearchWrite({
{
-12.92000007629,
0
},
{
0.0549999997,
4
},
{
10,
126.515625,
28
}
}, {
{
2,
4,
false
}
}, 16)
gg.toast("夜视已开启")
elseif whn then
gg.setRanges(16384)
SearchWrite({
{
-12.92000007629,
0
},
{
2,
4
},
{
-1.228204E23,
28
}
}, {
{
0.0549999997,
4,
false
}
}, 16)
gg.setRanges(16384)
SearchWrite({
{
-12.92000007629,
0
},
{
2,
4
},
{
10,
126.515625,
28
}
}, {
{
0.0549999997,
4,
false
}
}, 16)
gg.toast("夜视已关闭")
rwys = whu
end
end

C5 = function()
xgg = gg.alert("提示一:鹰眼可以放大距离\n提示二:视觉可以放大视角", "人物鹰眼" .. rwyy, "放大视角(无法使用刀)" .. fdsj)
if xgg == 1 then
C5A1()
elseif xgg == 2 then
C5A2()
end
end
C5A1 = function()
if rwyy == whu then
rwyy = whn
gg.setRanges(32)
SearchWrite({
{
-56,
0
},
{
8,
24
},
{
400,
32
}
}, {
{
8,
0,
true
}
}, 16)
gg.toast("鹰眼已开启")
elseif whn then
gg.setRanges(32)
SearchWrite({
{
-8,
0
},
{
8,
24
},
{
400,
32
}
}, {
{
56,
0,
false
}
}, 16)
gg.toast("鹰眼已关闭")
rwyy = whu
end
end

C5A2 = function()
if fdsj == whu then
fdsj = whn
gg.setRanges(32)
SearchWrite({
{
-1.70000004768,
0
},
{
1.0,
4
},
{
1.0,
8
}
}, {
{
4.9123654,
0,
false
}
}, 16)
gg.toast("放大视角已开启")
elseif whn then
gg.setRanges(32)
gg.toast("放大视角已关闭")
fdsj = whu
end
end
C6 = function()
if rwgt == whu then
rwgt = whn
gg.setRanges(32)
SearchWrite({
{
-100,
0
},
{
0,
-4
},
{
256,
80
}
}, {
{
999,
4,
true
}
}, (4))
gg.setRanges(4)
SearchWrite({
{
1.0E32,
0
},
{
49,
20
},
{
999,
32
}
}, {
{
30,
-8,
true
}
}, 16)
gg.sleep(1000)
gg.clearList()
gg.toast("高跳已开启")
elseif whn then
gg.setRanges(32)
SearchWrite({
{
-100,
0
},
{
0,
-4
},
{
256,
80
}
}, {
{
0,
4,
true
}
}, (4))
gg.toast("高跳已关闭")
rwgt = whu
end
end
C7 = function()
if rwlt == whu then
rwlt = whn
gg.setRanges(16384)
gg.toast("连跳已开启")
elseif whn then
gg.clearResults()
gg.setRanges(16384)
SearchWrite({
{
0.50291442871,
0
},
{
0.10000000149,
4
},
{
1.00999999046,
28
}
}, {
{
1,
4,
false
}
}, 16)
gg.toast("连跳已关闭")
rwlt = whu
end
end
C8 = function()
if ssxz == whu then
ssxz = whn
gg.alert("提示一:抢货轮 必备功能\n提示二:水边开启 出水请关闭 否则会死")
gg.setRanges(4)
SearchWrite({
{
1.0E32,
0
},
{
49,
20
},
{
999,
32
}
}, {
{
0.37,
-8,
true
}
}, 16)
gg.setRanges(16384)
SearchWrite({
{
0.50291442871,
0
},
{
1,
4
},
{
1.00999999046,
28
}
}, {
{
0.10000000149,
4,
false
}
}, 16)
gg.toast("水上行走已开启")
elseif whn then
gg.clearList()
gg.clearResults()
gg.setRanges(16384)
SearchWrite({
{
0.50291442871,
0
},
{
0.10000000149,
4
},
{
1.00999999046,
28
}
}, {
{
1,
4,
false
}
}, 16)
gg.toast("水上行走已关闭")
ssxz = whu
end
end

C9 = function()
if sxxz == whu then
sxxz = whn
gg.setRanges(4)
SearchWrite({
{
-10000.001953125,
0
},
{
10000,
-4
},
{
0.009999999776482582,
-16
},
{
1.0,
-32
}
}, {
{
0,
-4,
false
}
}, 16)
gg.toast("水下行走已开启")
elseif whn then
gg.setRanges(4)
SearchWrite({
{
-10000.001953125,
0
},
{
0,
-4
},
{
0.009999999776482582,
-16
},
{
1.0,
-32
}
}, {
{
10000,
-4,
false
}
}, 16)
gg.toast("水下行走已关闭")
sxxz = whu
end
end

C10 = function()
if bsdd == whu then
bsdd = whn
gg.setRanges(4)
SearchWrite({
{
-0.41999998689,
0
},
{
1.4012985E-45,
8
},
{
1.03999996185,
16
}
}, {
{
2.123,
16,
false
}
}, 16)
gg.toast("遁地已开启")
elseif whn then
gg.setRanges(4)
SearchWrite({
{
-0.41999998689,
0
},
{
1.4012985E-45,
8
},
{
2.123,
16
}
}, {
{
1.03999996185,
16,
false
}
}, 16)
gg.toast("遁地已关闭")
bsdd = whu
end
end

E1 = function()
gg.alert("提示一:配合范围刀 前期开荒无敌\n提示二:近战武器加速 来回走动才会有效果")
SearchWrite({
{
-1.2107219E-42,
0
},
{
0.90000003576,
8
}
}, {
{
0.48,
4,
false
}
}, 16)
gg.clearResults()
SearchWrite({
{
-1.2107219E-42,
0
},
{
-2,
12
},
{
5.49309E-43,
56
}
}, {
{
0.48,
4,
false
},
{
0.90000003576,
8,
false
}
}, 16)
gg.toast("近战加速已开启")
end

E2 = function()
 if pxjs == whu then
 pxjs = whn
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 3.6247978E-34,
 0
 },
 {
 -0.50291442871,
 4
 },
 {
 -2,
 24
 }
 }, {
 {
 -11,
 24,
 false
 },
 {
 -11,
 28,
 false
 }
 }, 16)
 gg.clearResults()
 gg.toast("趴下加速已开启")
 elseif whn then
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 3.6247978E-34,
 0
 },
 {
 -0.50291442871,
 4
 },
 {
 -11,
 24
 }
 }, {
 {
 -2,
 24,
 false
 },
 {
 -2,
 28,
 false
 }
 }, 16)
 gg.clearResults()
 gg.toast("趴下加速已关闭")
 pxjs = whu
 end
end

E3 = function()
 if ddjs == whu then
 ddjs = whn
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 3.6247978E-34,
 0
 },
 {
 -0.50291442871,
 4
 },
 {
 2,
 32
 }
 }, {
 {
 11,
 32,
 false
 }
 }, 16)
 gg.clearResults()
 gg.toast("倒地加速已开启")
 elseif whn then
 gg.clearResults()
 gg.setRanges(16384)
 SearchWrite({
 {
 3.6247978E-34,
 0
 },
 {
 -0.50291442871,
 4
 },
 {
 11,
 32
 }
 }, {
 {
 2,
 32,
 false
 }
 }, 16)
 gg.clearResults()
 gg.toast("倒地加速已关闭")
 ddjs = whu
 end
end

E4 = function()
if stjs == whu then
stjs = whn
gg.setRanges(16384)
SearchWrite({
{
0.50352632999,
0
},
{
-3.1514847E24,
8
}
}, {
{
0.149123456,
12,
false
}
}, 16)
gg.toast("实体加速已开启")
elseif whn then
gg.setRanges(16384)
gg.toast("实体加速已关闭")
stjs = whu
end
end

E5 = function()
gg.setRanges(32)
gg.toast("倒地开枪已开启")
end

A3A1 = function()
 gg.clearList()
 gg.clearResults()
 gg.setRanges(4)
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536205,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536207,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536203,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536198,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536201,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536199,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536210,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536200,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536211,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 if gg.isVisible() == (true) then
 elseif gg.isVisible() == (true) then
 else
 SearchWrite({
 {
 -196616,
 84
 },
 {
 1042536206,
 200
 }
 }, {
 {
 1056454581,
 200,
 true
 },
 {
 0,
 196,
 true
 }
 }, 4)
 gg.clearList()
 A3A1()
 end
 end
 end
 end
 end
 end
 end
 end
 end
 end
end

A3A2 = function()
if gg.isVisible() == (true) then
else
gg.searchNumber("0.1099999993~0.1099999994", 16, false, gg.SIGN_EQUAL, 0, -1)
if gg.isVisible() == (true) then
else
gg.searchNumber("0.1099999993~0.1099999994", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
if gg.isVisible() == (true) then
else
gg.editAll("5", 16)
A3A2()
end
end
end
end

A3A3 = function()
if gg.isVisible() == (true) then
else
gg.searchNumber("0.1099999993~0.1099999994", 16, false, gg.SIGN_EQUAL, 0, -1)
if gg.isVisible() == (true) then
else
gg.searchNumber("0.1099999993~0.1099999994", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
if gg.isVisible() == (true) then
else
gg.editAll("6.5", 16)
A3A3()
end
end
end
end
exit = function()
print("艹你奶子")
os.exit()
end
home = function()
xgh = 1
index()
end

function who()
lw=1
index()
end


function Ext()
os.remove("/storage/emulated/0/记录.lua")
nb=[[使用🐯⚡️记录]]
io.open("/storage/emulated/0/记录.lua","a","w"):write(""..nb.."")
print("再见       下辈子再用🐯⚡️")
os.exit()
end


while true do
if gg.isVisible(true) then
XXS = 1
gg.setVisible(false)
end
gg.clearResults()
if XXS == 1 then
index()
end
end


