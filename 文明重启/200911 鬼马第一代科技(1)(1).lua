--鬼马科技科技
function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do 
local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("开启成功！")else  return false end else  return false end end     function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "") end end end end            
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据")local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do
offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)  gg.toast("开启成功已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("开启失败", false) return false end else
gg.toast("开启失败") return false end end

ANONYMOUS=gg.REGION_ANONYMOUS  FLOAT=gg.TYPE_FLOAT
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE   WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
CB=gg.REGION_C_BSS XA=gg.REGION_CODE_APP CA=gg.REGION_C_ALLOC
EA=gg.editAll  GQR=gg.choice  NC=gg.setRanges  CZ=gg.searchNumber  FW=gg.getResults  QL=gg.clearResults CL=gg.clearList TS=gg.toast  FWW=gg.getResultCount GQRNB=gg.multiChoice AL=gg.alert
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function SearchWrite(Search, Write, Type) QL() gg.setVisible(false) CZ(Search[1][1], Type) local count = FWW() local result = FW(count) QL() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end
    for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end
      tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end
    for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end
    if (#data > 0) then TS("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end
      gg.setValues(t) else TS("not found", false) return false end else TS("Not Found") return false end end

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

function Main()
  menu=gg.choice({
    "️  鬼马武装",
    "  鬼马人物️",
    "  魔法修仙️️",
    "  枪械升级",
    "  ︎结束战争",
},nil,"【GPS：欢迎你的使用】") 
  if menu==1 then A() end
  if menu==2 then B() end
  if menu==3 then C() end
  if menu==4 then D() end
  if menu==5 then Exit() end
  XGCK=-1
end
function A()
  menu1=gg.multiChoice({
    "  独家自瞄选择",
    "  鬼马自瞄选择",
    "  战斗模式选择",
    "  枪械无后选择",
    "  实体路飞选择",
    "  千里打击选择",
    "  实体巨人选择",
    "  人物加速选择",
    "  独家稳范围刀",
    "  子弹升级选择",
    "︎  返回主界面️"},
  nil,"【鬼马：欢迎你的使用】")
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
    if menu1[10]==true then a10() end
    if menu1[11]==true then HOME() end
  end
  GLWW=-1
end

function B()
  menu2=gg.multiChoice({
    "  人物坐标选择",
    "  人物透视选择",
    "  房屋透视选择",
    "️  全服找家选择",
    "  独家纯白选择",
    "️  独家黑夜选择",
    "  激战小范围开",
    "  狂暴大范围开",
    "  独家除草开启",
    "  独家循环天线",
    "  独家夜视选择",
    "  迷你视角开启",
    "  返回总界面"},
  nil,"【鬼马：感谢你的使用】")
  if menu2==nil then else
    if menu2[1]==true then b1() end
    if menu2[2]==true then b2() end
    if menu2[3]==true then b3() end
    if menu2[4]==true then b4() end
    if menu2[5]==true then b5() end
    if menu2[6]==true then b6() end
    if menu2[7]==true then b7() end
    if menu2[8]==true then b8() end
    if menu2[9]==true then b9() end
    if menu2[10]==true then b10() end
    if menu2[11]==true then b11() end
    if menu2[11]==true then b12() end
    if menu2[13]==true then HOME() end
  end
  GLWW=-1
end

function C()
  menu3=gg.multiChoice({
    "  独家穿墙选择",
    "  通天路选择区",
    "  独家飞天选择",
    "  强制建筑选择",
    "  独家鬼跳选择",
    "  锁血反伤开启",
    "  无视炮台开启",
    "  物理隐身开启",
    "  地图优化开启",
    "  极品画质开启",
    "  全图透视选择",
    "  独家遁地选择",
    "︎  返回总界面️"},
  nil,"【鬼马：感谢你的使用】")
  if menu3==nil then else
    if menu3[1]==true then c1() end
    if menu3[2]==true then c2() end
    if menu3[3]==true then c3() end
    if menu3[4]==true then c4() end
    if menu3[5]==true then c5() end
    if menu3[6]==true then c6() end
    if menu3[7]==true then c7() end
    if menu3[8]==true then c8() end
    if menu3[9]==true then c9() end
    if menu3[10]==true then c10() end
    if menu3[11]==true then c11() end
    if menu3[12]==true then c12() end
    if menu3[13]==true then HOME() end
  end
  GLWW=-1
end

function D()
  menu4=gg.multiChoice({
    "  手枪瞬击无后秒换弹",
    "️  乌兹瞬击无后秒换弹",
    "  冲锋瞬击无后秒换弹",
    "️  改装瞬击无后秒换弹",
    "  半自瞬击无后秒换弹",
    "️  akm瞬击无后秒换弹",
    "  QbZ瞬击无后秒换弹",
    "  m4a瞬击无后秒换弹",
    "  m24瞬击无后秒换弹",
    "  炮筒瞬击无后秒换弹",
    "︎  返回总界面"},
  nil,"【鬼马：感谢你的使用】")
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
    if menu4[11]==true then HOME() end
  end
  GLWW=-1
end

function a1()
F = gg.alert("【全屏自瞄适合单挑‖内存适合群架】", "内存自瞄","全屏自瞄")
    if F == 1 then
    gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08817642995", gg.TYPE_FLOAT)
  gg.toast("注入内存自瞄中.......")
  gg.clearResults()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "内存自瞄开启中")
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="内存自瞄开启中"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.toast("内存自瞄开启")
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(16384)
  local Name="注入自瞄指针"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="注入死锁"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"0", 0xBE453028, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="注入全屏死锁"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"10", 0xBE453190, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "自瞄开启中")
  gg.clearList()
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.TYPE_FLOAT, "自瞄")
  gg.clearList()
  gg.toast("全屏死锁开启成功")
end
end

function a2()
F = gg.alert("【鬼马用心打造】", "鬼马自瞄","任平生自瞄")
    if F == 1 then
   gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("鬼马自瞄开启中....")
  gg.clearResults()
  local Name="鬼马自瞄10%"
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
  gg.toast("鬼马自瞄40%")
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("鬼马自瞄60%")
  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(16384)
  gg.toast("鬼马自瞄80%")
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("鬼马自瞄算法"))
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
  gg.toast("鬼马自瞄%100")
    elseif F == 2 then  
   gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.00010000002004", gg.TYPE_FLOAT)
gg.toast("任平生独家诛仙自瞄启动中")
gg.clearResults()
gg.clearList()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动10%")
gg.clearResults()
gg.toast("任平生自瞄已启动20%")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.08810000002004", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动30%")
gg.clearResults()
gg.searchNumber(0.00048828148, gg.TYPE_FLOAT)
gg.getResultCount()
gg.getResults(0)
gg.clearResults()
gg.toast("任平生自瞄已启动40%")
gg.clearList()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动50%")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动60%")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动70%")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动80%️")
gg.setRanges(16384)
gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.08817642900095", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动90%")
gg.clearResults()
SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892}}, {{0,284,true}}, gg.TYPE_FLOAT, "自瞄")
gg.clearList()
gg.setRanges(32)
gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.18", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.06000000000~0.06000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.06000000000~0.06000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.18", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.05000000000~0.05000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.05000000000~0.05000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.18", gg.TYPE_FLOAT)
gg.toast("任平生自瞄已启动完毕")
gg.clearResults()
end
end

function a3()
F = gg.alert("【打仗模式适合单挑‖战斗模式适合群架】", "打仗模式","战斗模式")
    if F == 1 then
    gg.clearResults()
  gg.setRanges(16384)
  local Name="注入打仗模式"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="注入打仗模式"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"0", 0xBE453028, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="打仗模式"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"10", 0xBE453190, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "打仗模式开启中")
  gg.clearList()
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.TYPE_FLOAT, "打仗模式")
  gg.clearList()
  gg.toast("打仗模式开启成功")
  
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("蓝色透开启中")
   
   gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("蓝色透开启中")
    gg.clearResults()
    
    gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearResults()
  gg.toast("独家蓝透开启中")
  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("蓝色透视开启成功"))
    gg.clearList()
    gg.toast("500米蓝色天线开启")
    
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
    {["value"] = tonumber("1.2000002588888880476837158"), ["type"] = 16},
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

gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{40, 3908}, {7, 3920},{15, 3932},}
  local tb2 = {{0.00999999978,3920,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.20000000298, 0}, {1, -8},{360, -12},}
  local tb2 = {{1.0E19,-12, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.76666688919, 88}, {1.2107219E-42, 80},}
  local tb2 = {{0.00999999978,88,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("改装开启成功")

gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
  local tb2 = {{0.00999999978, 0x40, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.60000002384, 32},{480, 20},{80, 4},}
  local tb2 = {{1000000,20,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("半自动开启成功")

gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{30, 0xD4}, {10, 0xE0},{13, 0xEC},}
  local tb2 = {{0.00999999978, 0xE0, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.66666674614, 24}, {1.2107219E-42, 16},}
  local tb2 = {{0.00999999978, 24,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("AKM开启成功")

gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.10000000149, 0x24}, {6, 0x50},{4, 0x60},}
  local tb2 = {{0.00999999978, 0x50, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.375, 0},{540, -20},{-0.5, -8},}
  local tb2 = {{1000000000,-20,false}}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.90000009537, 0x98}, {1.2107219e-42, 0x90},}
  local tb2 = {{0.00999999978, 0x98, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.03333353996, 0xD8}, {1.2107219e-42, 0xD0},}
  local tb2 = {{0.00999999978, 0xD8, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("QBZ开启成功")

gg.setRanges(32)
  SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
  gg.REGION_C_BSS, ("M4无后"))
  gg.clearList()
  SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
  gg.REGION_C_BSS, ("M4瞬击"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
  gg.REGION_C_BSS, ("M4秒换弹%50"))
  gg.clearList()
  SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
  gg.REGION_C_BSS, ("M4秒换弹%100"))
  gg.clearList()
  gg.toast("M4开启成功")
  
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
    elseif F == 2 then  
    gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("战斗模式开启中....")
  gg.clearResults()
  local Name="战斗模式开启10%"
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
  gg.toast("战斗模式40%")
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("战斗模式60%")
  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(16384)
  gg.toast("战斗模式80%")
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("战斗模式自瞄算法"))
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
  gg.toast("战斗模式自瞄%100")

gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("蓝色透开启中")
   
   gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("蓝色透开启中")
    gg.clearResults()
    
    gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearResults()
  gg.toast("独家蓝透开启中")
  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("蓝色透视开启成功"))
    gg.clearList()
    gg.toast("500米蓝色天线开启")
    
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

gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{40, 3908}, {7, 3920},{15, 3932},}
  local tb2 = {{0.00999999978,3920,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.20000000298, 0}, {1, -8},{360, -12},}
  local tb2 = {{1.0E19,-12, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.76666688919, 88}, {1.2107219E-42, 80},}
  local tb2 = {{0.00999999978,88,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("改装开启成功")

gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
  local tb2 = {{0.00999999978, 0x40, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.60000002384, 32},{480, 20},{80, 4},}
  local tb2 = {{1000000,20,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("半自动开启成功")

gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{30, 0xD4}, {10, 0xE0},{13, 0xEC},}
  local tb2 = {{0.00999999978, 0xE0, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.66666674614, 24}, {1.2107219E-42, 16},}
  local tb2 = {{0.00999999978, 24,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("AKM开启成功")

gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.10000000149, 0x24}, {6, 0x50},{4, 0x60},}
  local tb2 = {{0.00999999978, 0x50, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.375, 0},{540, -20},{-0.5, -8},}
  local tb2 = {{1000000000,-20,false}}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.90000009537, 0x98}, {1.2107219e-42, 0x90},}
  local tb2 = {{0.00999999978, 0x98, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.03333353996, 0xD8}, {1.2107219e-42, 0xD0},}
  local tb2 = {{0.00999999978, 0xD8, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("QBZ开启成功")

gg.setRanges(32)
  SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
  gg.REGION_C_BSS, ("M4无后"))
  gg.clearList()
  SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
  gg.REGION_C_BSS, ("M4瞬击"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
  gg.REGION_C_BSS, ("M4秒换弹%50"))
  gg.clearList()
  SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
  gg.REGION_C_BSS, ("M4秒换弹%100"))
  gg.clearList()
  gg.toast("M4开启成功")
  
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
end

function a4()
F = gg.alert("【科技开启较慢‖独家开启较快】", "科技全开","独家全开")
    if F == 1 then
  gg.setRanges(32)
  SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
  gg.REGION_C_BSS, ("双持无后"))
  gg.clearList()
  SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
  gg.REGION_C_BSS, ("双持瞬击"))
  gg.clearList()
  SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
  gg.REGION_C_BSS, ("双持射速加快"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
  gg.REGION_C_BSS, ("双持射速加快"))
  gg.clearList()
  gg.toast("双持开启成功")
  
  qmnb = {
    {["memory"] = 32},
    {["name"] = "SMG无后"},
    {["value"] = tonumber("0.20059604645"), ["type"] = 16},
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
    {["value"] = tonumber("1.2000476837158"), ["type"] = 16},
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
  gg.REGION_C_BSS, ("uzi无后"))
  gg.clearList()
  SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
  gg.REGION_C_BSS, ("uzi瞬击"))
  gg.clearList()
  SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
  gg.REGION_C_BSS, ("uzi射速加快"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
  gg.REGION_C_BSS, ("uzi射速加快"))
  gg.clearList()
  gg.toast("UZI开启成功")

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
  
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.10000000149, 0x24}, {6, 0x50},{4, 0x60},}
  local tb2 = {{0.00999999978, 0x50, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.375, 0},{540, -20},{-0.5, -8},}
  local tb2 = {{1000000000,-20,false}}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.90000009537, 0x98}, {1.2107219e-42, 0x90},}
  local tb2 = {{0.00999999978, 0x98, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.03333353996, 0xD8}, {1.2107219e-42, 0xD0},}
  local tb2 = {{0.00999999978, 0xD8, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("QBZ开启成功")

  gg.setRanges(32)
  SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
  gg.REGION_C_BSS, ("M4无后"))
  gg.clearList()
  SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
  gg.REGION_C_BSS, ("M4瞬击"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
  gg.REGION_C_BSS, ("M4秒换弹%50"))
  gg.clearList()
  SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
  gg.REGION_C_BSS, ("M4秒换弹%100"))
  gg.clearList()
  gg.toast("M4开启成功")
    elseif F == 2 then  
  gg.clearResults(gg.REGION_C_ALLOC)
    SearchWrite({
      {
        "0.8845000267",
        51956
      },
      {"1", 51948},
      {"0.5", 51932}
    }, {
      {"0.1", 52120}
    }, gg.TYPE_FLOAT, "sam")
    gg.clearResults(gg.REGION_C_ALLOC)
    SearchWrite({
      {
        "0.00229999842",
        2623993208
      },
      {
        "0.92049998045",
        2623993204
      },
      {
        "0.01530000102",
        2623993200
      }
    }, {
      {"0.1", 2623993368}
    }, gg.TYPE_FLOAT, "uzi")
    gg.setRanges(32)
    SearchWrite({
      {40, 3908},
      {7, 3920},
      {15, 3932}
    }, {
      {
        0.00999999978,
        3920,
        false
      }
    }, gg.REGION_C_BSS, "SMG无后")
    gg.clearList()
    SearchWrite({
      {300, 0},
      {1, 4}
    }, {
      {
        1000000000,
        0,
        false
      }
    }, gg.REGION_C_BSS, "SMG瞬击")
    gg.clearList()
    gg.setRanges(32)
    SearchWrite({
      {40, 3908},
      {7, 3920},
      {15, 3932}
    }, {
      {
        0.00999999978,
        3920,
        true
      }
    }, gg.REGION_C_BSS, "乌兹无后")
    gg.clearList()
    SearchWrite({
      {-0.20000000298, 0},
      {1, -8},
      {360, -12}
    }, {
      {
        1.0E19,
        -12,
        false
      }
    }, gg.REGION_C_BSS, "乌兹瞬击")
    gg.clearList()
    SearchWrite({
      {290, 132},
      {100, 136},
      {80, 144}
    }, {
      {
        60,
        144,
        false
      }
    }, gg.REGION_C_BSS, "乌兹射速加快")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.76666688919, 88},
      {1.2107219E-42, 80}
    }, {
      {
        0.00999999978,
        88,
        true
      }
    }, gg.REGION_C_BSS, "乌兹射速加快")
    gg.clearList()
    gg.toast("UZI开启成功")
    gg.setRanges(32)
    SearchWrite({
      {40, 3908},
      {7, 3920},
      {15, 3932}
    }, {
      {
        0.00999999978,
        3920,
        true
      }
    }, gg.REGION_C_BSS, "改装无后")
    gg.clearList()
    SearchWrite({
      {-0.20000000298, 0},
      {1, -8},
      {360, -12}
    }, {
      {
        1.0E19,
        -12,
        false
      }
    }, gg.REGION_C_BSS, "改装瞬击")
    gg.clearList()
    SearchWrite({
      {290, 132},
      {100, 136},
      {80, 144}
    }, {
      {
        60,
        144,
        false
      }
    }, gg.REGION_C_BSS, "改装射速加快")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.76666688919, 88},
      {1.2107219E-42, 80}
    }, {
      {
        0.00999999978,
        88,
        true
      }
    }, gg.REGION_C_BSS, "改装秒换弹")
    gg.clearList()
    
    gg.clearResults(gg.REGION_C_ALLOC)
    SearchWrite({
      {
        "1.2107219e-42",
        2610968528
      },
      {
        "0.02419999987",
        2610968376
      },
      {
        "0.88510000706",
        2610968372
      }
    }, {
      {"0.1", 2610968536}
    }, gg.TYPE_FLOAT, "温馨提示:半自动秒换")
    gg.setRanges(32)
    SearchWrite({
      {10, 64},
      {0.10000000149, 20},
      {5, 80}
    }, {
      {
        0.00999999978,
        64,
        false
      }
    }, gg.REGION_C_BSS, "半自动无后")
    gg.clearList()
    SearchWrite({
      {-0.60000002384, 32},
      {480, 20},
      {80, 4}
    }, {
      {
        480,
        20,
        true
      }
    }, gg.REGION_C_BSS, "半自动瞬击")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("864D<2.16666674614::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.16666674614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("0.1", gg.TYPE_FLOAT)
    gg.toast("半自动无后瞬击秒换弹开启成功")
    gg.clearResults()
    gg.setRanges(32)
    SearchWrite({
      {-20, 64},
      {5, 48},
      {10, 32}
    }, {
      {
        0.00999999978,
        32,
        false
      }
    }, gg.REGION_C_BSS, "AK无后")
    gg.clearList()
    SearchWrite({
      {480, 228},
      {1, 232},
      {0.375, 248}
    }, {
      {
        1000000000,
        228,
        false
      }
    }, gg.REGION_C_BSS, "AK瞬击")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.16666674614, 152},
      {1.2107219E-42, 144}
    }, {
      {
        0.00999999978,
        152,
        true
      }
    }, gg.REGION_C_BSS, "AK秒换弹%50")
    gg.clearList()
    SearchWrite({
      {2.66666674614, 24},
      {1.2107219E-42, 16}
    }, {
      {
        0.00999999978,
        24,
        false
      }
    }, gg.REGION_C_BSS, "AK秒换弹%100")
    gg.clearList()
    gg.setRanges(32)
    SearchWrite({
      {0.10000000149, 36},
      {6, 80},
      {4, 96}
    }, {
      {
        0.00999999978,
        80,
        false
      }
    }, gg.REGION_C_BSS, "QBZ无后")
    gg.clearList()
    SearchWrite({
      {0.375, 0},
      {540, -20},
      {-0.5, -8}
    }, {
      {
        1000000000,
        -20,
        false
      }
    }, gg.REGION_C_BSS, "QBZ瞬击")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.90000009537, 152},
      {1.2107219E-42, 144}
    }, {
      {
        0.00999999978,
        152,
        false
      }
    }, gg.REGION_C_BSS, "QBZ秒换弹%50")
    gg.clearList()
    SearchWrite({
      {2.03333353996, 216},
      {1.2107219E-42, 208}
    }, {
      {
        0.00999999978,
        216,
        false
      }
    }, gg.REGION_C_BSS, "QBZ秒换弹%100")
    gg.clearList()
    gg.setRanges(32)
    SearchWrite({
      {-20, 64},
      {5, 48},
      {10, 32}
    }, {
      {
        0.00999999978,
        32,
        false
      }
    }, gg.REGION_C_BSS, "M4无后")
    gg.clearList()
    SearchWrite({
      {480, 228},
      {1, 232},
      {0.375, 248}
    }, {
      {
        1000000000,
        228,
        false
      }
    }, gg.REGION_C_BSS, "M4瞬击")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.16666674614, 152},
      {1.2107219E-42, 144}
    }, {
      {
        0.00999999978,
        152,
        true
      }
    }, gg.REGION_C_BSS, "M4秒换弹%50")
    gg.clearList()
    SearchWrite({
      {2.66666674614, 24},
      {1.2107219E-42, 16}
    }, {
      {
        0.00999999978,
        24,
        false
      }
    }, gg.REGION_C_BSS, "M4秒换弹%100")
    gg.clearList()
end
end

function a5()
F = gg.alert("【鬼马用心打造】", "倍镜路飞","机瞄路飞")
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
end
end

function a6()
F = gg.alert("【鬼马用心打造】", "关闭千米打击","开启千米打击")
    if F == 1 then
     gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="千米打击关闭成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{"56", 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="千米打击开启成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{8, 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
end
end

function a7()
F = gg.alert("【鬼马用心打造】", "实体小巨人","实体大巨人")
    if F == 1 then
    gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4.1", gg.TYPE_FLOAT)
  gg.toast("实体小巨人已开启")
    elseif F == 2 then  
    gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.setRanges(32)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.alert("实体大巨人开启成功")
end
end

function a8()
F = gg.alert("【GPS用心打造】", "倒地加速","人物加速")
    if F == 1 then
    gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_FLOAT)
  gg.toast("倒地加速开启成功")
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6.8", gg.TYPE_FLOAT)
  gg.toast(" 人物加速开启成功 ")
  gg.clearResults()
end
end

function a9()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4.5", gg.TYPE_FLOAT)
  gg.clearResults()
  a9()
end

function a10()
F = gg.alert("【GPS用心打造】", "子弹瞬击","射速加快")
    if F == 1 then
    gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("射速加快开启成功")
  gg.clearResults()
end
end

function b1()
F = gg.alert("【超清天线即开即用‖蓝透坐标配合黑夜效果更佳】", "蓝透坐标","超清天线")
    if F == 1 then
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("蓝色透开启中")
   
   gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("蓝色透开启中")
    gg.clearResults()
    
    gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearResults()
  gg.toast("独家蓝透开启中")
  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("蓝色透视开启成功"))
    gg.clearList()
    gg.toast("500米蓝色天线开启")
    elseif F == 2 then  
                            qmnb = {
                          {
                            ["memory"] = 4
                          },
                          {
                            ["name"] = "超清天线开启中"
                          },
                          {
                            ["value"] = 0.16947640478610992,
                            ["type"] = 16
                          },
                          {
                            ["lv"] = -0.16947640478610992,
                            ["offset"] = 20,
                            ["type"] = 16
                          }
                        }
                        qmxg = {
                          {
                            ["value"] = 999,
                            ["offset"] = 0,
                            ["type"] = 16
                          }
                        }
                        xqmnb(qmnb)
gg.toast("独家超清天线开启")
end
end

function b2()
F = gg.alert("【独家透视只透视活物‖定制透视透视范围:人物，载具，地图透等】", "独家透视","定制透视")
    if F == 1 then
    gg.setRanges(131072)
  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)
  gg.clearResults()
  gg.toast("独家透视开启成功")
    elseif F == 2 then  
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.8133309e-40", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(100)
    gg.editAll("0", 16)
    gg.clearResults()  
    gg.setRanges(131072)
    local dataType = 16
    local tb1 = {{-150, 0x2284}, {-30, 0x2280},{0.00999999978, 0x2288},}
    local tb2 = {{0, 0x2288, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.setRanges(131072)
    gg.searchNumber("3.4897587e-39", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.searchNumber("1,669,499,405", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", 4)
    gg.clearResults()          
    gg.toast("定制透视已开启")
end
end

function b3()
F = gg.alert("【GPS用心打造】", "房屋透视关闭","房屋透视开启")
    if F == 1 then
     gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("1.12020366e-19;5.6051939e-45:5", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.searchNumber("5.6051939e-45", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.toast("房屋透视已开启")  
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("7.0064923e-45;1.12020366e-19;0::9", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.searchNumber("0", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(1)
    gg.editAll("5.6051939e-45", 16)
    gg.clearResults()
    gg.toast("房屋透视已关闭")  
end
end

function b4()
F = gg.alert("【GPS用心打造】", "全服找家关闭","全服找家开启")
    if F == 1 then
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.14822639525;4.0;0.74931889772;0.36428490281:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("木墙天线关闭成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.14822684228;4.0;-0.14822591841;4.0:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("石头天线开启关闭")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("铁墙天线关闭成功")
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.14822639525;4.0;0.74931889772;0.36428490281:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("木墙天线开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.14822684228;4.0;-0.14822591841;4.0:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("石墙天线开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("铁墙天线开启成功")
end
end

function b5()
F = gg.alert("【鬼马科技用心打造】", "通用纯白","麒麟纯白")
    if F == 1 then
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;-1.0;1.0;0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("play纯白通用版开启成功")
  gg.clearResults()
  gg.clearList()
    elseif F == 2 then  
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("麒麟专用上色开启成功")
gg.clearList()
end
end

function b6()
F = gg.alert("【GPS科技用心打造】", "高光模式","黑夜模式")
    if F == 1 then
     gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.04044999927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.04044999927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("人物高光开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.0549999997F;-2.78598679e28F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0549999997", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("1.3", gg.TYPE_FLOAT)
  gg.toast("人物高光开启成功")
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1,004,243,884D;9.2194229e-41;-1D::", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("9.2194229e-41",16,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(1)
    gg.editAll("999",16)
    gg.toast("黑夜模式开启成功")  
end
end

function b7()
gg.alert("稳定小范围循环中")
  while true do
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.05000000100~0.05000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("0.05000000100~0.05000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(999)
    gg.editAll("0.18",gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.06000000100~0.06000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("0.06000000100~0.06000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(999)
    gg.editAll("0.18",gg.TYPE_FLOAT)
    if gg.isVisible(true)then
      break
    end
  end
end

function b8()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.09000000100~0.09000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.09000000100~0.09000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.setVisible(false)
  gg.toast("大范围开启成功")
end

function b9()
gg.setRanges(131072)
  gg.clearResults()
  gg.searchNumber("3.7314056e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("独家除草已开启")
  gg.clearResults()
end

function b10()
gg.alert("定制版循环防失效天线")
  while true do
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-999", gg.REGION_C_BSS)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-999", gg.REGION_C_BSS)
  if gg.isVisible(true)then
      break
    end
  end
end

function b11()
F = gg.alert("【GPS用心打造】", "关闭夜视","开启夜视")
    if F == 1 then
     gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{2, -4},{0.04044999927, -8}}, {{0.0549999997,-4,false}},
    gg.REGION_C_BSS, ("夜视关闭成功"))
    gg.clearList()
    gg.toast("夜视关闭")
    elseif F == 2 then  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("夜视开启成功"))
    gg.clearList()
    gg.toast("夜视开启")
end
end

function b12()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.toast('迷你视角已开启')
end

function c1()
F = gg.alert("【灵魂出窍需要断网或者变速进行穿家‖实体穿墙开启即可穿】", "灵魂出窍","实体穿墙")
    if F == 1 then
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
  gg.toast("新灵魂出窍开启成功")
  gg.clearResults()
  gg.clearList()
    elseif F == 2 then  
    AL("独家穿墙无需断网即可穿家")
  QL()
  NC(4)
  CZ("-1.0e32;999.0;0.39999997616;1.0e32", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  CZ("1.0e32", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=FW(100)
  sl=FWW()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = 8}})
  end
  TS("正在开启穿墙中")
  QL()
  QL()
  NC(CA)
  CZ("1.03999996185", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  CZ("1.03999996185", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  FW(20)
  EA("5", FLOAT)
  QL()
  TS("正在开启穿墙中")
  
 QL()
  NC(XA)
  CZ("0.125", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  CZ("0.125", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  FW(100)
  EA("5", FLOAT)
  TS("实体穿墙开启成功")
end
end

function c2()
F = gg.alert("【先建一块地基然后开启通天路，开启后在建一块地基台阶，然后关闭通天路即可】", "关闭通天路","开启通天路")
    if F == 1 then
    gg.setRanges(16)
local dataType = 16
local tb1 = {{999, 0}, {0.13333334028720856, 52}, {0.1725490242242813, 56}, }
local tb2 = {{1, 0}, }
SearchWrite(tb1, tb2, dataType)
    elseif F == 2 then  
    gg.setRanges(16)
local dataType = 16
local tb1 = {{1.0, 0}, {0.13333334028720856, 52}, {0.1725490242242813, 56}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
end
end

function c3()
F = gg.alert("【鬼马用心打造】", "变速飞天","新版飞天")
    if F == 1 then
    gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('999',gg.TYPE_FLOAT)
	gg.toast('飞天开启中')
  
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1)
  gg.editAll("1",gg.TYPE_FLOAT)
  gg.toast("注入飞天")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
  dzy=jg[i].address
  gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.95}})
  end
  gg.toast("变速控制高低")
  Exit()
    elseif F == 2 then  
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.37698}})

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('999',gg.TYPE_FLOAT)
gg.toast('100%')
end
gg.toast("飞天开启成功")
end
end

function c4()
F = gg.alert("【鬼马科技用心打造】", "地下建家","浮空建家")
    if F == 1 then
    gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("1.7", gg.TYPE_FLOAT)
gg.toast("地下建家开启成功")
    elseif F == 2 then  
    gg.clearResults()
  gg.searchNumber('1,073,741,824D;1,120,403,456D;3.6734198e-40', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('3.6734198e-40', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('浮空建筑开启成功')
  gg.toast('如果没效果多开几次')
  gg.clearResults()
end
end

function c5()
F = gg.alert("【GPS用心打造】", "鬼跳关闭","鬼跳开启")
    if F == 1 then
    gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-3.8685732E25, 19100},{0.10000000149, 19104},{1.00999999046, 19120}}, {{1,19104,false}}, gg.TYPE_FLOAT, "三段跳关闭")
  gg.clearResults()
  gg.toast("独家鬼跳关闭成功")
    elseif F == 2 then  
    gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-3.8685732E25, 19100},{1, 19104},{1.00999999046, 19120}}, {{0.10000000149,19104,false}}, gg.TYPE_FLOAT, "三段跳")
  gg.clearList()
  gg.toast("独家鬼跳开启成功")
end
end

function c6()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("1.9", gg.TYPE_FLOAT)
gg.toast("锁血开启成功")
gg.alert("反伤开启成功")
end

function c7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15D;1D;84000D.", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100000)
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("无视炮台开启成功")
end

function c8()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("1.9", gg.TYPE_FLOAT)
gg.toast("找个不死的地方遁地开路飞")
gg.alert("硬核物理隐身")
end

function c9()
gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('0.00999999978<3.76158192e-37<1.12020417e-19<4.48415509e-44::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.00999999978',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('0.0001',gg.TYPE_FLOAT)
	gg.toast('已优化雾霾')	gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('0.00999999978<12.92000007629<0.00313080009::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.00999999978<12.92000007629<0.00313080009::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('0.0000001',gg.TYPE_FLOAT)
	gg.toast("已优化太阳光照")
	end

function c10()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_SYS)
gg.searchNumber('1;1.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('99',gg.TYPE_FLOAT)
gg.toast('独家极品画质')
gg.clearResults()
end

function c11()
 F = gg.alert("【鬼马科技用心打造】", "透视开启","透视关闭")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)   
    gg.searchNumber("0.81399995089", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", 16)
    gg.clearResults()
    gg.toast("全图透视已开启")  
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(100)
    gg.editAll("0.81399995089", 16)   
    gg.clearResults()
    gg.toast("全图透视已关闭")  
end
end

function c12()
 F = gg.alert("【鬼马科技用心打造】", "遁地开启","遁地关闭")
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W  ;1W;1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('2.222222',gg.TYPE_FLOAT)
    gg.toast("遁地开启成功")
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()
    gg.toast("遁地已关闭")
end
end

function d1()
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

function d2()
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

function d3()
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
    {["value"] = tonumber("1.2000476837158"), ["type"] = 16},
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
    {["value"] = tonumber("0.88450267028809"), ["type"] = 16},
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

function d4()
gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{40, 3908}, {7, 3920},{15, 3932},}
  local tb2 = {{0.00999999978,3920,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.20000000298, 0}, {1, -8},{360, -12},}
  local tb2 = {{1.0E19,-12, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.76666688919, 88}, {1.2107219E-42, 80},}
  local tb2 = {{0.00999999978,88,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("改装开启成功")
end

function d5()
gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{10, 0x40}, {0.10000000149, 0x14},{5, 0x50},}
  local tb2 = {{0.00999999978, 0x40, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-0.60000002384, 32},{480, 20},{80, 4},}
  local tb2 = {{1000000,20,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("半自动开启成功")
end

function d6()
gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{30, 0xD4}, {10, 0xE0},{13, 0xEC},}
  local tb2 = {{0.00999999978, 0xE0, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.16666674614, 152}, {1.2107219E-42, 144},}
  local tb2 = {{0.00999999978, 152,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.66666674614, 24}, {1.2107219E-42, 16},}
  local tb2 = {{0.00999999978, 24,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("AKM开启成功")
end

function d7()
gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.10000000149, 0x24}, {6, 0x50},{4, 0x60},}
  local tb2 = {{0.00999999978, 0x50, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.375, 0},{540, -20},{-0.5, -8},}
  local tb2 = {{1000000000,-20,false}}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.setRanges(4)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.90000009537, 0x98}, {1.2107219e-42, 0x90},}
  local tb2 = {{0.00999999978, 0x98, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{2.03333353996, 0xD8}, {1.2107219e-42, 0xD0},}
  local tb2 = {{0.00999999978, 0xD8, false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearList()
  gg.clearResults()
  gg.toast("QBZ开启成功")
end

function d8()
gg.setRanges(32)
  SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
  gg.REGION_C_BSS, ("M4无后"))
  gg.clearList()
  SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
  gg.REGION_C_BSS, ("M4瞬击"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
  gg.REGION_C_BSS, ("M4秒换弹%50"))
  gg.clearList()
  SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
  gg.REGION_C_BSS, ("M4秒换弹%100"))
  gg.clearList()
  gg.toast("M4开启成功")
end

function d9()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.2107219e-42;3.1333334446;5.49309e-43::57', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('3.1333334446', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(999)
  gg.editAll("0.1",gg.TYPE_FLOAT)
  gg.toast("秒换开启成功")
end

function d10()
gg.setRanges(gg.REGION_ANONYMOUS)
    SearchWrite({
      {"278.0", 2894449036}
    }, {
      {"9999", 2894448988}
    }, gg.TYPE_FLOAT, "火箭筒瞬爆")
end

function Exit()
  print("鬼马打造全网最稳科技")
  os.exit()
end
function HOME()
  lw=1
  Main()
end
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearList()
  gg.clearResults()
  if XGCK==1 then
    Main()
  end
end



function nwxhhaesaklkbfx()
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    main()
  end
end
end
