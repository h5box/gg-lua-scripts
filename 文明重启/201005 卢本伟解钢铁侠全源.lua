
function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do 
local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("开启成功！")else  return false end else  return false end end     function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "") end end end end            
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据")local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do
offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)  gg.toast("开启成功已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("开启失败", false) return false end else
gg.toast("开启失败") return false end end

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) SH_searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据")local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do
offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)  gg.toast("开启成功已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("开启成功", false) return false end else
gg.toast("开启成功") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end
return nSplitArray end
function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end
function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end
for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end
if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end
if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end
for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end
tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end
for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end
if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end
gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
local kqgn="⟬开启⟭"
local gbgn="⟬关闭⟭"
local cx1=kqgn
local cx2=kqgn
local cx3=kqgn
local cx4=kqgn
local cx5=kqgn
local cx6=kqgn
local cx7=kqgn
local cx8=kqgn
local cx9=kqgn
local cx10=kqgn

gg.alert("❗开启钢铁侠前请务必检测是否已开启拦截2－3模式❗️")
gg.alert("Ⓜ️圈钱钢铁侠官方群")
gg.alert("🛡圈钱钢铁侠独家通天路使用教程:先建地基，然后开启通天路建好地基台阶后，关闭通天路即可🛡️")
gg.toast("欢迎使用钢铁侠直")

function yiyz_Main()
  menu=gg.choice({
    "🔰钢铁侠战斗库🔰️",
    "🔰钢铁侠枪械库🔰",
    "🔰钢铁侠武装库🔰",
    "🔰钢铁侠科技库🔰",
    "🔴一键退钢铁侠🔴"},
  2003,"🛡钢铁侠小提示:请选择需要武装自己的功能列表🛡️")
  if menu==1 then A() end
  if menu==2 then B() end
  if menu==3 then C() end
  if menu==4 then D() end
  if menu==5 then Exit() end
  XGCK=-1
end
function A()
  menu1=gg.multiChoice({
    "🔰全智能自瞄选择区🔰",
    "🔰半智能自瞄选择区🔰",
    "🔰近战刀战范围选择🔰",
    "🔰子弹百发百中选择🔰",
    "🔻钢铁侠人物微加速🔻",
    "🔻钢铁侠枪射速加快🔻",
    "🔻钢铁侠千里眼开启🔻",
    "🔻钢铁侠千里眼关闭🔻",
    "🔻钢铁侠瞬间秒开镜🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡钢铁侠小提示:️请选择需要战斗的功能模式🛡️")
  if menu1==nil then else
    if menu1[1]==true then a1() end
    if menu1[2]==true then a2() end
    if menu1[3]==true then a3() end
    if menu1[4]==true then a4() end
    if menu1[5]==true then a5() end
    if menu1[6]==true then a6() end
    if menu1[7]==true then a7() end
    if menu1[8]==true then a8() end
    if menu1[9]==true then a9() end
    if menu1[10]==true then HOME() end
  end
  GLWW=-1
end

function B()
  menu2=gg.multiChoice({
    "🔻手枪无后瞬击秒弹🔻",
    "🔻冲锋无后瞬击秒弹🔻",
    "🔻改装无后瞬击秒弹🔻",
    "🔻半自无后瞬击秒弹🔻",
    "🔻akm无后瞬击秒弹🔻",
    "🔻QBz无后瞬击秒弹🔻",
    "🔻狙击无后瞬击秒弹🔻",
    "🔻钢铁侠火箭筒瞬爆🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡钢铁侠小提示:️请选择需要开启的枪械功能🛡️")
  if menu2==nil then else
    if menu2[1]==true then b1() end
    if menu2[2]==true then b2() end
    if menu2[3]==true then b3() end
    if menu2[4]==true then b4() end
    if menu2[5]==true then b5() end
    if menu2[6]==true then b6() end
    if menu2[7]==true then b7() end
    if menu2[8]==true then b8() end
    if menu2[9]==true then HOME() end
  end
  GLWW=-1
end

function C()
  menu3=gg.multiChoice({
    "🔻钢铁侠蓝透插件🔻",
    "🔻钢铁侠敌人坐标🔻",
    "🔻钢铁侠人物蓝色🔻",
    "🔻钢铁侠夜视开启🔻",
    "🔻钢铁侠夜视关闭🔻",
    "🔻钢铁侠人物全白🔻",
    "🔻钢铁侠全图黑夜🔻",
    "🔻钢铁侠迷你视角🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡钢铁侠小提示:️请选择需要武装自己的功能🛡️")
  if menu3==nil then else
    if menu3[1]==true then c1() end
    if menu3[2]==true then c2() end
    if menu3[3]==true then c3() end
    if menu3[4]==true then c4() end
    if menu3[5]==true then c5() end
    if menu3[6]==true then c6() end
    if menu3[7]==true then c7() end
    if menu3[8]==true then c8() end
    if menu3[9]==true then HOME() end
  end
  GLWW=-1
end

function D()
  menu4=gg.multiChoice({
    "🔻钢铁侠灵魂出窍🔻",
    "🔻钢铁侠地下建家🔻",
    "🔻钢铁侠实体穿墙🔻",
    "🔻钢铁侠新半遁地🔻",
    "🔻钢铁侠独家防摔🔻",
    "🔻钢铁侠无视炮台🔻",
    "🔻钢铁侠橡胶路飞🔻",
    "🔻钢铁侠房屋透视🔻",
    "🔻钢铁侠关闭房屋🔻",
    "🔻全网独家通天路（开）🔻",
    "🔻全网独家通天路（关）🔻",
    "🔻钢铁侠子弹穿墙🔻",
    "🔻钢铁侠全服找家（开）🔻",
    "🔻钢铁侠全服找家（关）🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡钢铁侠小提示:️请选择需要开启的科技模式🛡️")
  if menu4==nil then else
    if menu4[1]==true then d1() end
    if menu4[2]==true then d2() end
    if menu4[3]==true then d3() end
    if menu4[4]==true then d4() end
    if menu4[5]==true then d5() end
    if menu4[6]==true then d6() end
    if menu4[7]==true then d7() end
    if menu4[8]==true then d8() end
    if menu4[9]==true then d9() end
    if menu4[10]==true then d10() end
    if menu4[11]==true then d11() end
    if menu4[12]==true then d12() end
    if menu4[13]==true then d13() end
    if menu4[14]==true then d14() end
    if menu4[15]==true then HOME() end
  end
  GLWW=-1
end

function a1()
menu1=gg.multiChoice({
    "🔻钢铁侠超锁自瞄🔻",
    "🔻钢铁侠瞄锁自瞄🔻",
    "🔻钢铁侠鬼锁自瞄🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡️钢铁侠小提示:本区域为全智能自瞄，打群架可能会出现乱锁现象🛡️")
  if menu1==nil then else
    if menu1[1]==true then da1() end
    if menu1[2]==true then da2() end
    if menu1[3]==true then da3() end
    if menu1[4]==true then HOME() end
  end
  GLWW=-1
end

function a2()
menu2=gg.multiChoice({
    "🔻钢铁侠天神自瞄🔻",
    "🔻钢铁侠战神自瞄🔻",
    "🔻钢铁侠殺神自瞄🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡️钢铁侠小提示:本区域为半智能自瞄，可打群架不乱锁🛡️")
  if menu2==nil then else
    if menu2[1]==true then ca1() end
    if menu2[2]==true then ca2() end
    if menu2[3]==true then ca3() end
    if menu2[4]==true then HOME() end
  end
  GLWW=-1
end

function a3()
menu3=gg.multiChoice({
    "🔻钢铁侠稳定范围刀🔻",
    "🔻钢铁侠十米范围刀🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡️钢铁侠小提示:稳定范围开启先砍5－10颗树，十米大范围刀即开即用（有封号风险）🛡️")
  if menu1==nil then else
    if menu3[1]==true then ba1() end
    if menu3[2]==true then ba2() end
    if menu3[3]==true then HOME() end
  end
  GLWW=-1
end

function a4()
menu4=gg.multiChoice({
    "🔻钢铁侠打仗模式🔻",
    "🔻钢铁侠战斗模式🔻",
    "🔻钢铁侠战争模式🔻",
    "🔵返回钢铁侠主界面🔵"},
  nil,"🛡️钢铁侠小提示:钢铁侠打仗模式和战斗模式属于小范围，钢铁侠战争模式属于大范围🛡️")
  if menu4==nil then else
    if menu4[1]==true then cw1() end
    if menu4[2]==true then cw2() end
    if menu4[3]==true then cw3() end
    if menu4[4]==true then HOME() end
  end
  GLWW=-1
end

function da1()
 gg.clearResults()
  gg.setRanges(16384)
  local Name="注入超锁自瞄指针"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="注入超锁死锁"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"0", 0xBE453028, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="注入超锁死锁"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"10", 0xBE453190, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "超锁自瞄开启中")
  gg.clearList()
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.TYPE_FLOAT, "超锁自瞄")
  gg.clearList()
  gg.toast("钢铁侠超锁自瞄开启成功")
end

function da2()
gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("  喵锁开启中")
  gg.clearResults()
  local Name="  喵锁自瞄开启20%  "
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  local Name="  喵锁自瞄开启60%  "
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  local Name=" 喵锁 自瞄开启100%  "
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "  增强喵锁死锁开启  ")
  gg.clearList()
  gg.toast("  喵锁自瞄开启成功️  ")
end
 
 function da3()
 gg.setRanges(16384)
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("鬼锁开启中")
  gg.clearResults()
  local Name="鬼锁"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  gg.clearList()
  gg.setRanges(32)
  gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("注入鬼锁")
  gg.clearResults()
  gg.toast("开启鬼锁")

  gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("9999.50", gg.TYPE_FLOAT)
  gg.toast("鬼锁注入中")
  gg.clearResults()
  local Name="鬼锁自瞄10%"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(32)
  gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("鬼锁自瞄20%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999.5',gg.TYPE_FLOAT)
  gg.toast('鬼锁自瞄40%')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999.5',gg.TYPE_FLOAT)
  gg.toast('鬼锁自瞄80%')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999.5',gg.TYPE_FLOAT)
  gg.toast('鬼锁独家自瞄开启')
end
   
  function ca1()
  gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("注入天神自瞄中")
  gg.clearResults()
local Name="开启中%"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
local tp2 = {{0, 0x11C, true},}
local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(32)
  gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("注入天神死锁中")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast('注入天神自瞄中%')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast('注入防封拦截数据中%')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast('钢铁侠天神自瞄开启成功！')
  end
 
 function ca2()
   gg.setRanges(16384)
    gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.00010002004", gg.TYPE_FLOAT)
    gg.toast("注入钢铁侠独家防封中")
    gg.clearResults()
    local Name="开启战神自瞄中"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
    local tp2 = {{0, 0x11C, true},}
    local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
    SearchWrite(tb1, tp2, dataType,Name)
    gg.clearList()
    gg.setRanges(32)
    gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("", gg.TYPE_FLOAT)
    gg.toast("战神自瞄开启中")
    gg.clearResults()
    gg.toast("战神自瞄开启成功")
  end
  
  function ca3()
   gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("殺神自瞄开启中....")
  gg.clearResults()
  local Name="殺神自瞄10%"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(16384)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-128.00001525879, 0xB44},{0.00048828148, 0x20C},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("10;5;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("殺神自瞄40%")
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("殺神自瞄60%")
  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(16384)
  gg.toast("殺神自瞄80%")
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("殺神自瞄算法"))
  gg.clearList()
  gg.setRanges(16)
  gg.searchNumber("0.0000000078;", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.45~0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.addListItems({
    [1] = {
      ["address"] = 0xd18fbf58,
      ["flags"] = 16,
      ["freeze"] = true,
      ["value"] = 0.01,
    },
  })
  gg.toast("殺神自瞄%100")
end
  
  function ba1()
  gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_FLOAT)
    gg.clearResults()
    ba1()
  end
    
  function ba2()
  gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("5", gg.TYPE_FLOAT)
    gg.toast("钢铁侠10米循环范围刀开启成功")
    gg.clearResults()
  end
  
  function cw1()
  gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber('0.11000000000~0.11000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber('0.11000000000~0.11000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('0.2', gg.TYPE_FLOAT)
 gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber('0.06000001356',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber('0.06000001356',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('0.2',gg.TYPE_FLOAT)
 gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber('0.03999999911', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber('0.03999999911', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('0.2', gg.TYPE_FLOAT)
 gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber('0.04000000000~0.04000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber('0.04000000000~0.04000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('0.2', gg.TYPE_FLOAT)
 gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
 gg.searchNumber('0.1600000000~0.16000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber('0.1600000000~0.16000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('0.2', gg.TYPE_FLOAT)
 gg.toast('钢铁侠打仗模式开启成功1')
 end
    
  function cw2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.08000000100~0.08000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("0.08000000100~0.08000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("0.19",gg.TYPE_FLOAT)
  gg.toast("钢铁侠战斗模式开启成功")
end
   
  function cw3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.04000000000~0.04000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.04000000000~0.04000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
cw3()
end
    
  function a5()
   gg.setRanges(16384)
    SearchWrite({{-3.1514847E24, 53344},{1.7031426E-38, 53352},{0.14177720249, 53348}}, {{0.143,53348,false}},
    gg.REGION_C_BSS, ("钢铁侠人物微加速"))
    gg.clearList()
end
  
  function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("钢铁侠射速加快开启成功")
  gg.clearResults()
end
  
  function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="钢铁侠独家十倍千里眼开启成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{8, 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
end
  
  function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="钢铁侠独家十倍千里眼关闭成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{"56", 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
end

  function a9()
gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="钢铁侠瞬间秒开镜"
  local tb1={{"0.10000000149",0xCFA2A858},{"0.20000000298",0xCFA2A854},{"3.99000000954",0xCFA2A830}}
  local tb2={{"9",0xCFA2A890,true},}
  local dataType=gg.TYPE_FLOAT
  SearchWrite(tb1,tb2,dataType,Name)
end

  function b1()
  gg.setRanges(32)
  SearchWrite({{600, 116},{-1, 120},{83, 104}}, {{480,116,false}},
  gg.REGION_C_BSS, ("手枪射速加快"))
  gg.clearList()
  SearchWrite({{18, 212},{15, 224},{3, 240}}, {{0.01,224,false}},
  gg.REGION_C_BSS, ("手枪无后"))
  gg.clearList()
  SearchWrite({{6, 40},{300, 52},{-0.5, 64}}, {{1000000000,52,false}},
  gg.REGION_C_BSS, ("手枪瞬击"))
  gg.clearList()
  gg.toast("手枪全开成功")
end
  
  function b2()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "SMG无后"},
    {["value"] = tonumber("0.4000000059604645"), ["type"] = 16},
    {["lv"] = tonumber("1.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.5"), ["offset"] = 12, ["type"] = 16},
    {["lv"] = tonumber("0.6000000238418579"), ["offset"] = 16, ["type"] = 16},
    {["lv"] = tonumber("43.0"), ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0"), ["offset"] = 12, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 32},
    {["name"] = "SMG瞬击"},
    {["value"] = tonumber("1.2000000476837158"), ["type"] = 16},
    {["lv"] = tonumber("43.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("40.0"), ["offset"] = 8, ["type"] = 16},
    {["lv"] = tonumber("300.0"), ["offset"] = 20, ["type"] = 16},
    {["lv"] = tonumber("43.0"), ["offset"] = 60, ["type"] = 16},
    {["lv"] = tonumber("100.0"), ["offset"] = 64, ["type"] = 16},
    {["lv"] = tonumber("238.0"), ["offset"] = 68, ["type"] = 16},
    {["lv"] = tonumber("667.0"), ["offset"] = 72, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("99999"), ["offset"] = 20, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "SMG秒换弹50%"},
    {["value"] = tonumber("0.8845000267028809"), ["type"] = 16},
    {["lv"] = tonumber("-0.024000000208616257"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.5"), ["offset"] = 24, ["type"] = 16},
    {["lv"] = tonumber("1.0"), ["offset"] = 136, ["type"] = 16},
    {["lv"] = tonumber("1.210721873176642E-42"), ["offset"] = 156, ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 160, ["type"] = 16},
    {["lv"] = tonumber("2.0"), ["offset"] = 164, ["type"] = 16},
    {["lv"] = tonumber("5.493089980153283E-43"), ["offset"] = 212, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 164, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.66666674614;864D",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.66666674614",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("0.00001",gg.TYPE_FLOAT)
  gg.toast("SMG秒换弹开启成功")
  
  gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", gg.TYPE_FLOAT)
    
  gg.setRanges(32)
SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
gg.REGION_C_BSS, ("乌兹无后"))
gg.clearList()
SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
gg.REGION_C_BSS, ("乌兹瞬击"))
gg.clearList()
SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
gg.REGION_C_BSS, ("乌兹射速加快"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
gg.REGION_C_BSS, ("乌兹射速加快"))
gg.clearList()
gg.toast("UZI开启成功")
end
  
  function b3()
   qmnb = {
    {["memory"] = 32},
    {["name"] = "改装无后"},
    {["value"] = tonumber("360.0"), ["type"] = 16},
    {["lv"] = tonumber("-0.20000000298023224"), ["offset"] = 12, ["type"] = 16},
    {["lv"] = tonumber("0.699999988079071"), ["offset"] = 24, ["type"] = 16},
    {["lv"] = tonumber("0.20000000298023224"), ["offset"] = 28, ["type"] = 16},
    {["lv"] = tonumber("0.30000001192092896"), ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0"), ["offset"] = 28, ["type"] = 16},
    {["value"] = tonumber("0"), ["offset"] = 32, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 32},
    {["name"] = "改装瞬击"},
    {["value"] = tonumber("65.0"), ["type"] = 16},
    {["lv"] = tonumber("25.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("360.0"), ["offset"] = 16, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("99999999"), ["offset"] = 16, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "改装秒换弹"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.766666889190674"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  
  gg.setRanges(32)
    SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
    gg.REGION_C_BSS, ("改装无后"))
    
    gg.clearList()
    SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
    gg.REGION_C_BSS, ("改装射速加快"))
    gg.clearList()
end

  
  function b4()
   qmnb = {
    {["memory"] = 32},
    {["name"] = "半自动无后"},
    {["value"] = tonumber("-0.6000000238418579"), ["type"] = 16},
    {["lv"] = tonumber("1.399999976158142"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("3.0"), ["offset"] = 12, ["type"] = 16},
    {["lv"] = tonumber("1.0"), ["offset"] = 16, ["type"] = 16},
    {["lv"] = tonumber("1.0"), ["offset"] = 20, ["type"] = 16},
    {["lv"] = tonumber("2.0"), ["offset"] = 24, ["type"] = 16},
    {["lv"] = tonumber("80.0"), ["offset"] = 28, ["type"] = 16},
    {["lv"] = tonumber("200.0"), ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0"), ["offset"] = 16, ["type"] = 16},
    {["value"] = tonumber("0"), ["offset"] = 20, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("半自动瞬击开启成功")
  gg.clearResults()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "半自动秒换弹50%"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.1666667461395264"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "半动秒换弹100%"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.6666667461395264"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  
  gg.setRanges(32)
    SearchWrite({{10, 64},{0.10000000149, 20},{5, 80}}, {{0.00999999978,64,false}}, 
    gg.REGION_C_BSS, ("半自动无后"))
end
  
  function b5()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "AKM无后"},
    {["value"] = tonumber("0.5"), ["type"] = 16},
    {["lv"] = tonumber("0.375"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.8999999761581421"), ["offset"] = 8, ["type"] = 16},
    {["lv"] = tonumber("0.20000000298023224"), ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0"), ["offset"] = 4, ["type"] = 16},
    {["value"] = tonumber("0"), ["offset"] = 8, ["type"] = 16},
    {["value"] = tonumber("0"), ["offset"] = 12, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 32},
    {["name"] = "AKM瞬击"},
    {["value"] = tonumber("110.0"), ["type"] = 16},
    {["lv"] = tonumber("30.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("540.0"), ["offset"] = 16, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("99999"), ["offset"] = 16, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "AKM秒换弹50%"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.1666667461395264"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "AKM秒换弹100%"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.6666667461395264"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)

gg.setRanges(32)
    SearchWrite({{-20, 64},{5, 48},{10, 32}}, {{0.00999999978,32,false}},
    gg.REGION_C_BSS, ("AK无后子"))
    gg.clearList()
  SearchWrite({{480, 228},{1, 232},{0.375, 248}}, {{1000000000,228,false}},
  gg.REGION_C_BSS, ("AK瞬击"))
 end
 
  function b6()
   qmnb = {
    {["memory"] = 32},
    {["name"] = "QBZ/m4无后"},
    {["value"] = tonumber("0.5"), ["type"] = 16},
    {["lv"] = tonumber("0.375"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.8999999761581421"), ["offset"] = 8, ["type"] = 16},
    {["lv"] = tonumber("0.20000000298023224"), ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0"), ["offset"] = 4, ["type"] = 16},
    {["value"] = tonumber("0"), ["offset"] = 8, ["type"] = 16},
    {["value"] = tonumber("0"), ["offset"] = 12, ["type"] = 16},
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("QBZ/m4瞬击开启成功")
  qmnb = {
    {["memory"] = 4},
    {["name"] = "QBZ/m4秒换弹50%"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.0333335399627686"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "QBZ/m4秒换弹100%"},
    {["value"] = tonumber("1.210721873176642E-42"), ["type"] = 16},
    {["lv"] = tonumber("0.0"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("2.9000000953674316"), ["offset"] = 8, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("0.000001"), ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  
  gg.setRanges(32)
    SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
    gg.REGION_C_BSS, ("QBZ无后"))
    
     gg.clearList()
	 gg.setRanges(gg.REGION_ANONYMOUS)
     local Name="m4无后"
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
     local tb2 = {{0.00999999978, 0x40, false},} 
     SearchWrite(tb1, tb2, dataType,Name)
     
	 gg.setRanges(4)
     local Name="m4秒换弹"
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
     local tb2 = {{0.00999999978, 152,false},} 
     SearchWrite(tb1, tb2, dataType,Name)
end
    
  function b7()
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.2107219e-42;3.1333334446;5.49309e-43::57", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.1333334446", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("秒换开启成功")
end
  
  function b8()
  gg.setRanges(gg.REGION_ANONYMOUS)
  SearchWrite({{"278.0",2894449036}}, {{"9999",2894448988}},
  gg.TYPE_FLOAT, ("炮筒瞬爆"))
end
  
  function c1()
  gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("蓝色天线插件开启完毕")
    gg.clearResults()
  end
  
  function c2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("钢铁侠天线坐标开启成功")
end
  
  function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("钢铁侠蓝色透开启中")
   
   gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("钢铁侠蓝色透开启中")
    gg.clearResults()
  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("蓝色透视开启成功"))
    gg.clearList()
    gg.toast("500米蓝色天线开启")
  end
  
  function c4()
   gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("夜视开启成功"))
    gg.clearList()
    gg.toast("夜视开启")
  end
  
  function c5()
   gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{2, -4},{0.04044999927, -8}}, {{0.0549999997,-4,false}},
    gg.REGION_C_BSS, ("夜视关闭成功"))
    gg.clearList()
    gg.toast("夜视关闭")
  end
  
  function c6()
   gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("0.10998535156;1", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("1", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("20", gg.REGION_C_BSS)
  gg.clearResults()
  end
  
  function c7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.21072187e-42;24::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('24',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(99)
  gg.editAll('120', gg.TYPE_FLOAT)
  gg.toast('钢铁侠黑夜开启成功')
  gg.clearResults()
end
  
  function c8()
   gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.toast('钢铁侠迷你视角已开启')
end
    
  function d1()
   gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber('-1.0e32;999.0;0.39999997616;1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 8
      }
    })
  end
  gg.toast("钢铁侠新灵魂出窍开启成功，请断网")
  gg.clearResults()
  gg.clearList()
end
  
  function d2()
  gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("1.7", gg.TYPE_FLOAT)
gg.toast("地下建家")
gg.alert("自我解脱找个不死的地方建家")
end
  
  function d3()
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16,261W;25W;161W;1W;1.03999996185",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.03999996185", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.5}})
	 end
	 gg.toast("爬下卡进天花板里下线不成功多试几次")
	 gg.clearResults()
	 
os.exit()
end
  
  function d4()
   gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("注入成功")gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W  ;1W;1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
        gg.getResults(100)
    gg.editAll('2.222222',gg.TYPE_FLOAT)
    gg.toast("注入半遁地成功等待注入第二段")

    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W;1W;1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2.222222', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItemsX({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 1.1
        }
      })
    end
    gg.toast("钢铁侠独家半遁地开启成功")
end
  
  function d5()
  gg.setRanges(16384)
    SearchWrite({{-3.8685732E25, 19100},{1, 19104},{1.00999999046, 19120}}, {{0.10000000149,19104,false}},
    gg.REGION_C_BSS, ("钢铁侠独家防摔"))
    gg.clearList()
end

  function d6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber('-1.0e32;999.0;0.39999997616;1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.0e32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
  end
  gg.toast('注入隔墙吸子弹50%')
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('注入成功')
end
  
  function d7()
  gg.setRanges(gg.REGION_ANONYMOUS)
local Name="橡胶人路飞开启成功请开镜"
local tb1={{"0.10000000149",0xCFA2A858},{"0.20000000298",0xCFA2A854},{"3.99000000954",0xCFA2A830}}
local tb2={{"1.8",0xCFA2A89C},}
local dataType=gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType,Name)
end
  
  function d8()
 gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.81399995089", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10.123", gg.TYPE_FLOAT)
  gg.toast("房屋透视开启成功")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.setVisible(false)
  gg.clearList()
end
  
  function d9()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1)
  gg.getResults(100)
  gg.editAll("0.81399995089", 16)
  gg.toast("房屋透视关闭成功")
  gg.clearResults()
end

  function d10()
  gg.setRanges(16)
local dataType = 16
local tb1 = {{1.0, 0}, {0.13333334028720856, 52}, {0.1725490242242813, 56}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
end
    
  function d11()
  gg.setRanges(16)
local dataType = 16
local tb1 = {{999, 0}, {0.13333334028720856, 52}, {0.1725490242242813, 56}, }
local tb2 = {{1, 0}, }
SearchWrite(tb1, tb2, dataType)
end

  function d12()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('16,261W;25W;161W;1W;1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.toast('子弹穿墙（石头墙）')
end
 
 function d13()
 gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("木墙坐标开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("石墙坐标开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("铁墙坐标开启成功")
  end
 
 function d14()
  gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("木墙坐标关闭成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("石头坐标开启关闭")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("铁墙坐标关闭成功")
  end

function Exit()
  print("钢铁侠官方群:622592779")
  os.exit()
end
function HOME()
  lw=1
  yiyz_Main()
end
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearList()
  gg.clearResults()
  if XGCK==1 then
    yiyz_Main()
  end
end

