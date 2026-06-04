function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("注入成功")else return false end else return false end end 
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "注入成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "注入失败") end end end end
local gngb="[OFF]"
local gnkq="[ON]"
local fkjz=gngb
local tsqt=gngb
local rwys=gngb
local tklt=gngb
local bsdd=gngb
local ssxz=gngb
local sxxz=gngb
local pxjs=gngb
local ddjs=gngb
local stjs=gngb
local kjlf=gngb
local kjdd=gngb
local szbj=gngb
local jmbj=gngb
local ddfs=gngb
local xhtx=gngb
local pttx=gngb
local lsb=gngb
local rwss=gngb
local rwyy=gngb
local fdsj=gngb
local rwgt=gngb
local rwlt=gngb
gg.alert("️️【神枪手通天路二代将在群里更新请加群更新‖神枪手官方群号码:724714972】\n\n\nby芒果好吃解")
index = function()
L60_179369 = gg.choice({
"✔战斗【专区】 ",
"✔人物【专区】 ",
"✔强化【专区】 ",
"✔变态【专区】 ",
"退出脚本"
}, nil)
if L60_179369 == 1 then
A()
end
if L60_179369 == 2 then
B()
end
if L60_179369 == 3 then
C()
end
if L60_179369 == 4 then
D()
end
if L60_179369 == 5 then
os.exit()
end
L3_179319 = -1
end
A = function()
L61_179370 = gg.choice({
"【自动瞄准‖持枪开启】",
"【武器强化‖持枪开启】",
"【子弹追踪‖持枪开启】",
"【实体路飞‖持枪开启】",
"【千米打击‖卸枪倍镜】 " .. jmbj,
"【垂死挣扎‖大厅开启】",
"【一秒五刀‖游戏开启】",
"【橡胶果实‖游戏开启】",
"【视野优化‖游戏开启】",
"【全枪无后‖大厅开启】",
"【磁性自瞄‖持枪开启】",
"【全枪瞬击‖持枪开启】"
}, nil)
if L61_179370 == 1 then
A1()
end
if L61_179370 == 2 then
A2()
end
if L61_179370 == 3 then
A3()
end
if L61_179370 == 4 then
A4()
end
if L61_179370 == 5 then
A5()
end
if L61_179370 == 6 then
A6()
end
if L61_179370 == 7 then
A7()
end
if L61_179370 == 8 then
A8()
end
if L61_179370 == 9 then
A9()
end
if L61_179370 == 10 then
A10()
end
if L61_179370 == 11 then
A11()
end
if L61_179370 == 12 then
A12()
end
L3_179319 = -1
end
B = function()
L46_179359 = gg.choice({
"【人物透视‖游戏开启】 ",
"【人物坐标‖游戏开启】 ",
"【人物上色‖游戏开启】 " .. rwss,
"【全图透视‖游戏开启】 " .. tsqt,
"【透视墙壁‖游戏开启】 ",
"【火眼金睛‖游戏开启】 " .. rwys,
"【独家上色‖游戏开启】 ",
"【视角锁定‖游戏开启】 ",
"【黑白上色‖游戏开启】 ",
"【循环坐标‖游戏开启】 "
}, nil)
if L46_179359 == 1 then
B1()
end
if L46_179359 == 2 then
B2()
end
if L46_179359 == 3 then
B3()
end
if L46_179359 == 4 then
B4()
end
if L46_179359 == 5 then
B5()
end
if L46_179359 == 6 then
B6()
end
if L46_179359 == 7 then
B7()
end
if L46_179359 == 8 then
B8()
end
if L46_179359 == 9 then
B9()
end
if L46_179359 == 10 then
B10()
end
L3_179319 = -1
end
C = function()
L40_179353 = gg.choice({
"【独家鬼跳‖游戏开启】 " .. rwlt,
"【超级跳跃‖游戏开启】 " .. rwgt,
"【趴下加速‖游戏开启】 " .. pxjs,
"【强化视野‖游戏开启】 ",
"【倒地加速‖游戏开启】 " .. ddjs
}, nil)
if L40_179353 == 1 then
C1()
end
if L40_179353 == 2 then
C2()
end
if L40_179353 == 3 then
C3()
end
if L40_179353 == 4 then
C4()
end
if L40_179353 == 5 then
C5()
end
L3_179319 = -1
end
D = function()
L30_179344 = gg.choice({
"【实体加速‖游戏开启】 " .. stjs,
"【水面行走‖游戏开启】 " .. ssxz,
"【水底行走‖游戏开启】 " .. sxxz,
"【独家半遁‖游戏开启】 " .. bsdd,
"【强行建筑‖游戏开启】 " .. fkjz,
"【内部科技‖大厅开启】 ",
"【载具飞天‖大厅开启】 ",
"【地下建家‖大厅开启】 ",
"【实体隐身‖游戏开启】 ",
"【全图定怪‖游戏开启】 ",
"【全图找家‖游戏开启】 ",
"【人物飞天‖游戏开启】 "
}, nil)
if L30_179344 == 1 then
D1()
end
if L30_179344 == 2 then
D2()
end
if L30_179344 == 3 then
D3()
end
if L30_179344 == 4 then
D4()
end
if L30_179344 == 5 then
D5()
end
if L30_179344 == 6 then
D6()
end
if L30_179344 == 7 then
D7()
end
if L30_179344 == 8 then
D8()
end
if L30_179344 == 9 then
D9()
end
if L30_179344 == 10 then
D10()
end
if L30_179344 == 11 then
D11()
end
if L30_179344 == 12 then
D12()
end
L3_179319 = -1
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
L2_179318 = gg.alert(" 【坐标自瞄适合群架‖内存自瞄适合单挑】 ", "坐标自瞄", "内存自瞄")
if L2_179318 == 1 then
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
gg.toast("神枪手独家坐标自瞄已成功为您开启")
elseif L2_179318 == 2 then
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
gg.toast("神枪手独家内存自瞄已成功为您开启")
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
L2_179318 = gg.alert(" 【感谢您使用内部高端科技神枪手】 ", "无后聚点", "秒换弹夹", "全枪秒杀")
if L2_179318 == 1 then
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
gg.toast("已为您成功开启神枪手独家内部枪械无后子弹一个点️")
elseif L2_179318 == 2 then
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
elseif L2_179318 == 3 then
gg.setRanges(16384)
gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("900000000", 4)
gg.toast("已为您成功开启神枪手独家:️全枪秒杀")
gg.clearResults()
end
end

A3 = function()
L2_179318 = gg.alert(" 【子弹追踪小/稳定‖子弹追踪大/封号‖十米大刀/稳定但不能摸枪】 ", "子弹追踪[小]", "十米大刀[中]", "子弹追踪[大]")
if L2_179318 == 1 then
gg.toast("循环子弹追踪小/已为您开启")
A3A1()
elseif L2_179318 == 2 then
gg.toast("循环十米大刀已为您开启")
A3A2()
elseif L2_179318 == 3 then
gg.toast("循环子弹追踪大/已为您开启")
A3A3()
end
end

A4 = function()
 L2_85463 = gg.alert(" 【如果开启无效果‖重新开启‖或者关机重启】", "开镜路飞", "开镜遁地" .. kjdd)
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
gg.toast("已为您成功开启神枪手独家:️实体路飞，请下蹲开镜")
end

A4A2 = function()
 if kjdd == gngb then
 kjdd = gnkq
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
 gg.toast("已为您成功开启神枪手独家:️开镜遁地")
 elseif gnkq then
 gg.clearList()
 gg.clearResults()
 gg.toast("已为您成功关闭神枪手独家:️开镜遁地")
 kjdd = gngb
 end
end


A5 = function()
if jmbj == gngb then
jmbj = gnkq
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
gg.toast("已为您成功开启神枪手独家:️千米打击请卸枪倍镜")
elseif gnkq then
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
gg.toast("已关闭")
jmbj = gngb
end
end

A6 = function()
F = gg.alert("【 Sharpshooters welcome your use 】", "垂死挣扎","")
    if F == 1 then
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
  }, 4)
  gg.toast("已为您成功开启神枪手独家:️垂死挣扎")
    elseif F == 2 then  
 gg.alert("️️待添加")
end
end

A7 = function()
gg.alert("【 Sharpshooters welcome your use 】")
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
gg.toast("已为您成功开启神枪手独家:近战加速")
end

A8 = function()
F = gg.alert("【 如果开启无修改请重启后在开启即可 】", "倍镜路飞","机瞄路飞","新版路飞")
    if F == 1 then
       gg.setRanges(gg.REGION_ANONYMOUS)
                                  SearchWrite({
                                    {
                                      "0.10000000149",
                                      3482826840
                                    },
                                    {
                                      "0.20000000298",
                                      3482826836
                                    },
                                    {
                                      "3.99000000954",
                                      3482826800
                                    }
                                  }, {
                                    {
                                      "-1.8",
                                      3482826900
                                    }
                                  }, gg.TYPE_FLOAT, ("倍镜路飞开启成功"))
    elseif F == 2 then  
                                   gg.setRanges(gg.REGION_ANONYMOUS)
                                  SearchWrite({
                                    {
                                      "0.10000000149",
                                      3483543640
                                    },
                                    {
                                      "0.20000000298",
                                      3483543636
                                    },
                                    {
                                      "3.99000000954",
                                      3483543600
                                    }
                                  }, {
                                    {
                                      "1.8",
                                      3483543708
                                    }
                                  }, gg.TYPE_FLOAT, ("机瞄路飞开启成功"))
        elseif F == 3 then  
qmnb = {
{["memory"] = 4},
{["name"] = "路飞"},
{["value"] = 0.00419999985, ["type"] = 16},
{["lv"] = 0.02710000053, ["offset"] = -12, ["type"] = 16},
{["lv"] = -0.09340000153, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = -3, ["offset"] = -4, ["type"] = 16},

}
xqmnb(qmnb)
gg.toast("路飞开启成功")
end
end

A9 = function()
F = gg.alert("【 Sharpshooters welcome your use 】", "迷你视角","趴下视野")
        if F == 1 then
    gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.toast('迷你视野已开启')
    elseif F == 2 then  
    gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.20000000298F;1.29999995232F;1.0F',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1.29999995232',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('9',gg.TYPE_FLOAT)
gg.toast('趴下视野扩大开启成功')
gg.clearResults()
end
end

A10 = function()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4;1;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("全枪无后座开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00999999978;0;1;0.00100000005::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("聚点开启成功")
gg.clearResults()
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1;1.2331426e-42;2.90000009537;5.49309e-43::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('2.90000009537', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(999)
  gg.editAll("0.1",gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功️  ")
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1;1.2331426e-42;2.03333353996;5.49309e-43::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('2.03333353996', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(999)
  gg.editAll("0.1",gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功️  ")gg.clearResults()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00999999978;0;1;0.00899999961::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("聚点开启成功")
gg.clearResults()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1;1.2331426e-42;2.66666674614;5.49309e-43::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('2.66666674614', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(999)
  gg.editAll("0.1",gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功️  ")
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1;1.2331426e-42;2.16666674614;5.49309e-43::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('2.16666674614', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(999)
  gg.editAll("0.1",gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功️  ")
end

A11 = function()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("神枪手已为您成功开启磁性自瞄")
end

A12 = function()
gg.clearResults()
gg.setRanges(16384)   gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("SMG冲锋枪瞬击开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("667F;300F;100F;75F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("改装瞬击开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("qbz瞬击开启成功")
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("ak瞬击开启成功")
      gg.clearResults()
    end
    
    A13 = function()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    if gg.isVisible()==true then else
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.isVisible()==true then else
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    if gg.isVisible()==true then else
    gg.editAll("4.5", gg.TYPE_FLOAT)
    gg.clearResults()
    A13()
end end end  end

B1 = function()
gg.alert("神枪手温馨提示‖游戏画质调最低即可")
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
gg.toast("已为您成功开启神枪手独家:人物透视|载具透视|地图优化|")
end

B2 = function()
L2_85463 = gg.alert("【 Sharpshooters welcome your use 】", "循环坐标" .. xhtx, "普通天线" .. pttx, "头部天线" .. lsb)
 if L2_85463 == 1 then
 C2A1()
 elseif L2_85463 == 2 then
 C2A2()
 elseif L2_85463 == 3 then
 C2A3()
 end
end

C2A1 = function()
 if xhtx == gngb then
 xhtx = gnkq
 C2A1A1()
 elseif gnkq then
 C2A1A2()
 xhtx = gngb
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
 if pttx == gngb then
 pttx = gnkq
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
 elseif gnkq then
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
 pttx = gngb
 end
end

C2A3 = function()
 if lsb == gngb then
gg.clearResults()
    qmnb = {{["memory"] = 4},
    {["name"] = "天线"},
    {["value"] = 0.16947640478610992, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = -999, ["offset"] = 0, ["type"] = 16},}
    xqmnb(qmnb)
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("-12",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(100)
    gg.editAll("999",gg.TYPE_FLOAT )
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.3981491e21;3.7615819e-37;16.0;-12.0;3.0;2.0;-1.0;-2.0;-0.0:141",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("-12",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(100)
    gg.editAll("999",gg.TYPE_FLOAT )
    gg.toast("开启成功")
    gg.clearResults()
 end
end

B3 = function()
if rwss == gngb then
rwss = gnkq
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
gg.toast("已为您成功开启神枪手独家:上色")
elseif gnkq then
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
gg.toast("已关闭")
rwss = gngb
end
end

B4 = function()
 if tsqt == gngb then
 tsqt = gnkq
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
 gg.toast("已为您成功开启神枪手独家:全图透视")
 elseif gnkq then
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
 gg.toast("已关闭")
 tsqt = gngb
 end
end

B5 = function()
 L2_85463 = gg.alert("【 Sharpshooters welcome your use 】", "木墙透视", "石墙透视", "铁墙透视")
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
 gg.toast("已为您成功开启神枪手独家:木墙透视")
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
 gg.toast("已为您成功开启神枪手独家:石墙透视")
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
 gg.toast("已为您成功开启神枪手独家:铁墙透视")
 end
end

B6 = function()
if rwys == gngb then
rwys = gnkq
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
gg.toast("已为您成功开启神枪手独家:火眼金睛/夜晚开启")
elseif gnkq then
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
gg.toast("已关闭")
rwys = gngb
end
end

B7 = function()
F = gg.alert("【如果开通用无效果请开启麒麟上色即可】", "通用上色","麒麟上色")
    if F == 1 then
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41",16,false,536870912,0,-1)
gg.searchNumber("-12",16,false,536870912,0,-1)
gg.getResults(100)
gg.editAll("999",16)
gg.setRanges(131072)
gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41",16,false,536870912,0,-1)
gg.searchNumber("-12",16,false,536870912,0,-1)
gg.getResults(100)
gg.editAll("-999",16)
gg.toast("上色成功")
    elseif F == 2 then  
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2",16)
gg.getResults(138)
gg.setRanges(131072)
gg.searchNumber("2",16)
gg.getResults(138)
gg.toast("麒麟已开启")
end
end

B8 = function()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999999)
gg.editAll("999999",gg.TYPE_FLOAT)
gg.toast("视角锁定开启成功")
end

B9 = function()
local a = gg.prompt({"【输入999为人物白色‖输入-999为人物黑色】"
 }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1]
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;-1;3;0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll(a, gg.TYPE_FLOAT)
gg.toast("开启成功")
   end
   end
   
B10 = function()
gg.clearResults()
if gg.isVisible()==true then else
    qmnb = {{["memory"] = 4},
    {["name"] = "天线"},
  
    {["value"] = 0.16947640478610992, ["type"] = 16},
    {["lv"] = -0.16947640478610992, ["offset"] = 20, ["type"] = 16},}
    qmxg = {{["value"] = -999, ["offset"] = 0, ["type"] = 16},}

    xqmnb(qmnb)
    if gg.isVisible()==true then else
    B10()
    end end end

C1 = function()
if rwlt == gngb then
rwlt = gnkq
gg.setRanges(16384)
gg.toast("已为您成功开启神枪手独家:鬼跳")
elseif gnkq then
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
gg.toast("已关闭")
rwlt = gngb
end
end

C2 = function()
if rwgt == gngb then
rwgt = gnkq
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
gg.toast("已为您成功开启神枪手独家:高跳")
elseif gnkq then
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
gg.toast("已关闭")
rwgt = gngb
end
end


C3 = function()
if pxjs == gngb then
 pxjs = gnkq
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
 gg.toast("已为您成功开启神枪手独家:趴下加速")
 elseif gnkq then
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
 gg.toast("已关闭")
 pxjs = gngb
 end
end

C4 = function()
L2_179318 = gg.alert("【 Sharpshooters welcome your use 】", "鹰眼" .. rwyy, "天眼" .. fdsj)
if L2_179318 == 1 then
C5A1()
elseif L2_179318 == 2 then
C5A2()
end
end
C5A1 = function()
if rwyy == gngb then
rwyy = gnkq
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
gg.toast("已开启")
elseif gnkq then
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
gg.toast("已关闭")
rwyy = gngb
end
end

C5A2 = function()
if fdsj == gngb then
fdsj = gnkq
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
gg.toast("已开启")
elseif gnkq then
gg.setRanges(32)
gg.toast("已关闭")
fdsj = gngb
end
end

C5 = function()
if ddjs == gngb then
 ddjs = gnkq
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
 gg.toast("已为您成功开启神枪手独家:倒地加速")
 elseif gnkq then
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
 gg.toast("已关闭")
 ddjs = gngb
 end
end

D1 = function()
if stjs == gngb then
stjs = gnkq
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
gg.toast("已为您成功开启神枪手独家:实体加速")
elseif gnkq then
gg.setRanges(16384)
gg.toast("已关闭")
stjs = gngb
end
end

D2 = function()
if ssxz == gngb then
ssxz = gnkq
gg.alert("【水边开启‖出水关闭】")
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
gg.toast("已为您成功开启神枪手独家:水上行走")
elseif gnkq then
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
gg.toast("已关闭")
ssxz = gngb
end
end

D3 = function()
if sxxz == gngb then
sxxz = gnkq
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
gg.toast("已为您成功开启神枪手独家:水下行走")
elseif gnkq then
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
gg.toast("已关闭")
sxxz = gngb
end
end

D4 = function()
if bsdd == gngb then
bsdd = gnkq
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
gg.toast("已开启")
elseif gnkq then
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
gg.toast("已关闭")
bsdd = gngb
end
end

D5 = function()
if fkjz == gngb then
 fkjz = gnkq
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
 gg.toast("已为您成功开启神枪手独家:强行建筑")
 elseif gnkq then
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
 gg.toast("已关闭")
 fkjz = gngb
 end
end

D6 = function()
L2_85463 = gg.alert("【GM工具 大厅开启‖封号功能 后果自负】", "GM工具", "飞天防死", "遁地防死" .. ddfs)
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
 if ddfs == gngb then
 ddfs = gnkq
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
 elseif gnkq then
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
 ddfs = gngb
 end
end

D7 = function()
F = gg.alert("【 大厅开启‖提前在载具旁边放好睡袋 】", "载具飞天","")
    if F == 1 then
    gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("1.9", gg.TYPE_FLOAT)
gg.toast("大厅开启然后进游戏开载具")
gg.alert("也可以人物遁地开路飞秒人")
    elseif F == 2 then  
 gg.alert("️️待添加")
end
end

D8 = function()
    F = gg.alert("【 先在游戏大厅开启，进游戏后可进入地下建家，如不知道在哪里建，可自杀寻找不死的位置 】", "地下建家深","地下建家潜")
    if F == 1 then
    gg.clearResults()
   gg.setRanges(gg.REGION_CODE_APP)
   gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(100)
   gg.editAll("2.5", gg.TYPE_FLOAT)
   gg.toast(" 游戏大厅开启 ")
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.97", gg.TYPE_FLOAT)
  gg.toast(" 游戏大厅开启️  ")
end
end

D9 = function()
F = gg.alert(" 【隐身教程：\n 人物隐身：\n  需要任意载具配合开启\n  点击乘坐，在车上开启第一步\n  开启成功后，点击下车，然后开启第二步即可隐身\n\n  注：请在人物可视范围内开启，距离过远无效", "  第一步" ,"  第二步")
if F==1 then
    gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("16",gg.TYPE_DWORD)
gg.toast("第一步成功")

   elseif F==2 then
   gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("17",gg.TYPE_DWORD)
gg.toast("第二步成功")
end
end

D10 = function()
F = gg.alert("  教程：\n  游戏里开启第一步，开启成功后，返回大厅，重新进游戏，然后开始第二步即可定怪\n\n  注：无效果换号即可", "  第一步" ,"  第二步")
if F==1 then
        gg.clearResults()
gg.setRanges(32)
gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("16",gg.TYPE_DWORD)
gg.toast("第一步成功")

   elseif F==2 then
   gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("17",gg.TYPE_DWORD)
gg.toast("第二步成功")
   
end
end

D11 = function()
F = gg.alert("【全服找家】", "开启" ,"关闭")
if F==1 then
    gg.alert("神枪手正在为您开启中")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("木墙天线开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("石墙天线开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("铁墙天线开启成功")
  

   elseif F==2 then
   
       gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("木墙天线关闭成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("石头天线开启关闭")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("铁墙天线关闭成功")
  end
end

D12 = function()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("60%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if sl > 10 then
    sl = 10
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0.5
      }
    })
  end
  gg.toast("100%")
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
print(" Sharpshooters welcome your use ")
os.exit()
end
home = function()
L53_179365 = 1
index()
end
while true do
if gg.isVisible(true) then
L3_179319 = 1
gg.setVisible(false)
end
gg.clearResults()
if L3_179319 == 1 then
index()
end
end