


function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do 
local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("🍭开启成功！（内测）🍭")else  return false end else  return false end end     function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "") end end end end            
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🍭搜索到（内测）🍭"..#data.."🍭条数据（内测）🍭")local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do
offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)  gg.toast("🍭开启成功已修改（内测）🍭"..#t.."🍭条数据（内测）🍭") gg.addListItems(t) else gg.toast("🍭开启失败（内测）🍭", false) return false end else
gg.toast("🍭开启失败（内测）🍭") return false end end

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) SH_searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🍭搜索到（内测）🍭"..#data.."🍭条数据（内测）🍭")local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do
offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)  gg.toast("🍭开启成功已修改（内测）🍭"..#t.."🍭条数据（内测）🍭") gg.addListItems(t) else gg.toast("🍭开启成功（内测）🍭", false) return false end else
gg.toast("🍭开启成功（内测）🍭") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end
return nSplitArray end
function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end
function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "🍭开启失败（内测）🍭") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "🍭开启失败（内测）🍭") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end
for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end
if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end
if xgjg == true then gg.toast(qmnb[2]["name"] .. "🍭开启成功,共修改（内测）🍭" .. xgsl .. "🍭条数据（内测）🍭") else gg.toast(qmnb[2]["name"] .. "🍭开启失败（内测）🍭") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end
for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end
tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end
for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end
if (#data > 0) then gg.toast("🍭搜索到（内测）🍭"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end
gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
local kqgn="⟬🍭开启🍭⟭"
local gbgn="⟬🍭关闭🍭⟭"
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

gg.alert("独家自瞄")

if gg.alert("是否加入反馈群","是","否") ~=1 then  os.exit() end gg.alert("已复制群号\n欢迎你的加入！！！")gg.copyText(579336216)


function yiyz_Main()
   menu=gg.choice({
    "🍭打架功能🍭",
    "🍭人物功能🍭",
    "🍭退出脚本"},
  2003,"脚本")
  if menu==1 then A() end
  if menu==2 then C() end
  if menu==3 then Exit() end
  XGCK=-1
end
function A()
  menu1=gg.multiChoice({
    "🍭单挑自瞄🍭",
    "🍭群架自瞄🍭",
    "🍭新版范围刀🍭",
    "🍭枪范围🍭",
    "🍭新版8倍多功能🍭",
    "🍭枪械射速加🍭快",
    "🍭（二改）实体小巨人🍭",
    "🍭（二改）实体大头🍭",
    "🍭机瞄🍭",
    "🍭（二改）人物微加速🍭",
    "🍭新版反伤🍭",
    "🍭返回主界面🍭"},
  nil,"脚本")
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
    if menu1[11]==true then a11() end
    if menu1[12]==true then HOME() end
  end
  GLWW=-1
end

function B()
  menu2=gg.multiChoice({
    "🍭双持全开",
    "🍭冲锋全开",
    "🍭改装全开🍭",
    "🍭半自全开🍭",
    "🍭AKM全开🍭",
    "🍭QBZ全开🍭",
    "🍭稳定枪械全开🍭",
    "🍭火箭筒瞬爆（二改）🍭",
    "🍭手枪全开🍭",
    "🍭m4全开🍭",
 "🍭返回主界面🍭"},
  nil,"脚本")
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
    if menu2[11]==true then HOME() end
  end
  GLWW=-1
end

function C()
  menu3=gg.multiChoice({
    "🍭蓝色透视🍭",
    "🍭天线刷新🍭",
    "🍭蓝色天线（配合蓝色透视）🍭",
    "🍭高光开启🍭",
    "🍭高光关闭🍭",
    "🍭人物上色🍭",
    "🍭全枪射速变快（更新）🍭",
    "🍭第3人称🍭",
    "🍭新版麒麟上色🍭",
    "🍭新版水上走路开启🍭",
    "🍭新版水上走路关闭🍭",
    "🍭白天变黑天🍭",
    "🍭黑天变白天🍭",
    "🍭返回主界面🍭"},
  nil,"🍭蓝色透视配合黑夜效果更佳，如果靠近天线消失请刷新人物坐标️🍭脚本")
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
    if menu3[13]==true then c13() end
    if menu3[14]==true then HOME() end
  end
  GLWW=-1
end

function D()
  menu4=gg.multiChoice({
    "🍭新版灵魂出窍（更新）🍭",
    "🍭新版地下建家🍭",
    "🍭新版路飞🍭",
    "🍭新版半遁地🍭",
    "🍭无功能待添加🍭",
    "🍭吸炮台子弹🍭",
    "🍭子弹穿石头🍭",
    "🍭房屋透视🍭",
    "🍭关闭房屋透视🍭",
    "🍭地基梯子飞天开🍭",
    "🍭地基梯子飞天关🍭",
    "🍭路飞（更新）🍭",
    "🍭房子天线开🍭",
    "🍭房子天线关🍭",
    "🍭旧版实体穿墙🍭",
    "🍭超级范围枪开🍭",
    "🍭超级范围枪关🍭",
    "🍭无功能待添加🍭",
    "🍭（二改）加速挖矿🍭",
    "🍭新版不死三连跳开启🍭",
    "🍭新版不死三连跳关闭",
    "🍭返回主界面🍭"},
  nil,"🍭看字哈🍭通天路先建好地基在开启，开启后建好地基台阶后关闭即可️🍭脚本🍭")
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
    if menu4[15]==true then d15() end
    if menu4[16]==true then d16() end
    if menu4[17]==true then d17() end
    if menu4[18]==true then d18() end
    if menu4[19]==true then d19() end
    if menu4[20]==true then d20() end
    if menu4[21]==true then d21() end
    if menu4[22]==true then HOME() end
  end
  GLWW=-1
end

   function E()
    MF5 = gg.choice({
    " 🍭地下家深 🍭", 
    " 🍭地下家潜 🍭",
    " 🍭实穿天花 🍭",
    " 🍭狙击枪射速变快 🍭",
    " 🍭全图除草 🍭",
    " 🍭返回列表 🍭", 
},nil,"脚本")
    if MF5 == 1  then  E1 () end
    if MF5 == 2  then  E2 () end
    if MF5 == 3  then  E3 () end   
    if MF5 == 4  then  E4 () end
    if MF5 == 5  then  E5 () end 
    if MF5 == 6  then index () end
  XGCK = -1 end   
 
function a1()
menu1=gg.multiChoice({
    "🍭单挑自瞄🍭",
    "🍭无功能待添加🍭",
    "🍭无功能待添加🍭",
    "🍭返回主界面🍭"},
  nil,"️脚本")
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
    "🍭群架自瞄🍭",
    "🍭无功能待添加🍭",
    "🍭无功能待添加🍭",
    "🍭返回主界面🍭"},
  nil,"脚本")
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
    "🍭旧版范围刀🍭",
    "🍭新版超级范围刀🍭",
    "🍭返回主界面🍭"},
  nil,"🍭稳定范围开启先砍1颗树🍭脚本")
  if menu1==nil then else
    if menu3[1]==true then ba1() end
    if menu3[2]==true then ba2() end
    if menu3[3]==true then HOME() end
  end
  GLWW=-1
end

function a4()
menu4=gg.multiChoice({
    "🍭小范围🍭（配合自瞄）",
    "🍭新版小范围🍭（配合自瞄）",
    "🍭5分钟大范围🍭",
    "🍭返回主界面🍭"},
  nil,"🍭🍭脚本")
  if menu4==nil then else
    if menu4[1]==true then cw1() end
    if menu4[2]==true then cw2() end
    if menu4[3]==true then cw3() end
    if menu4[4]==true then HOME() end
  end
  GLWW=-1
end

function a5()
menu5=gg.multiChoice({
    "🍭新版8倍开启🍭内测",
    "🍭新版8倍关闭🍭内测",
    "🍭返回主界面🍭"},
  nil,"脚本")
  if menu5==nil then else
    if menu5[1]==true then ko1() end
    if menu5[2]==true then ko2() end
    if menu5[3]==true then HOME() end
  end
  GLWW=-1
end

function da1()
 gg.clearResults()
  gg.setRanges(16384)
  local Name="🍭注入全锁中🍭内测"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="🍭注入全锁中🍭内测"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"0", 0xBE453028, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(16384)
  local Name="🍭注入全锁中🍭内测"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
  local tp2 = {{"10", 0xBE453190, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "🍭注入中脚本")
  gg.clearList()
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.TYPE_FLOAT, "🍭全锁自瞄脚本")
  gg.clearList()
  gg.toast("🍭全锁自瞄已开启🍭内测")
end

function da2()
gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("  🍭呃锁开启中🍭内测")
  gg.clearResults()
  local Name="  🍭呃锁自瞄开启20%  🍭内测"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  local Name="  🍭呃锁自瞄开启60% 🍭内测 "
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  local Name=" 🍭呃锁 自瞄开启100%  🍭内测"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
  gg.TYPE_FLOAT, "  🍭增强呃锁死锁开启 🍭内测 ")
  gg.clearList()
  gg.toast("  🍭自瞄开启成功️ 🍭内测 ")
end
 
 function da3()
 gg.setRanges(16384)
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("🍭全锁开启中🍭内测")
  gg.clearResults()
  local Name="🍭全锁🍭内测"
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
  gg.toast("🍭注入全锁🍭内测")
  gg.clearResults()
  gg.toast("🍭开启全锁🍭内测")

  gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("9999.50", gg.TYPE_FLOAT)
  gg.toast("🍭注入中🍭内测")
  gg.clearResults()
  local Name="🍭自瞄10%脚本"
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
  gg.toast("🍭自瞄20%🍭内测")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999.5',gg.TYPE_FLOAT)
  gg.toast('🍭自瞄40%🍭内测')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999.5',gg.TYPE_FLOAT)
  gg.toast('🍭自瞄80%🍭内测')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999.5',gg.TYPE_FLOAT)
  gg.toast('🍭自瞄开启🍭内测')
end
   
  function ca1()
  gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.00010000002004", gg.TYPE_FLOAT)
gg.toast("🍭自瞄启动中🍭内测")
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
gg.toast("🍭自瞄已启动10%🍭内测")
gg.clearResults()
gg.toast("🍭自瞄已启动20%🍭内测")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.08810000002004", gg.TYPE_FLOAT)
gg.toast("🍭自瞄已启动30%🍭内测")
gg.clearResults()
gg.searchNumber(0.00048828148, gg.TYPE_FLOAT)
gg.getResultCount()
gg.getResults(0)
gg.clearResults()
gg.toast("🍭自瞄已启动40%🍭内测")
gg.clearList()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("🍭自瞄已启动50%🍭内测")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("🍭自瞄已启动60%🍭内测")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("🍭自瞄已启动70%🍭内测")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("🍭自瞄已启动80%️🍭内测")
gg.setRanges(16384)
gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.08817642900095", gg.TYPE_FLOAT)
gg.toast("🍭自瞄已启动90%🍭内测")
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
gg.toast("🍭自瞄已启动完毕🍭内测")
gg.clearResults()
end
 
 function ca2()
   gg.setRanges(16384)
gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.00010002004", gg.TYPE_FLOAT)
gg.toast("🍭自瞄注入中……脚本")
gg.clearResults()
local Name="🍭自瞄循环开启中……脚本"
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
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.11078428477', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.11000000000~0.11000090000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.11000000000~0.11000090000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0.188',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.06000000000~0.06000090000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.06000000000~0.06000090000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0.188',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.05000000000~0.05000090000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.05000000000~0.05000090000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0.188',16)
gg.toast('🍭自瞄开启成功🍭内测')
end
  
  function ca3()
   gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("🍭自瞄开启中....🍭内测")
  gg.clearResults()
  local Name="🍭自瞄10%🍭内测"
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
  gg.toast("🍭自瞄40%🍭内测")
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("🍭自瞄60%🍭内测")
  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(16384)
  gg.toast("🍭自瞄80%🍭（内测）")
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("🍭脚本"))
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
  gg.toast("🍭自瞄%100🍭（内测）")
end
  
  function ba1()
  gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("4.5", gg.TYPE_FLOAT)
    gg.clearResults()
    ba1()
  end
    
  function ba2()
  gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("5.5", gg.TYPE_FLOAT)
    gg.clearResults()
ba2()
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
 gg.toast('🍭小范围已开启（配合自瞄）脚本')
 end
    
  function cw2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.08000000100~0.08000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("0.08000000100~0.08000000900",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("0.19",gg.TYPE_FLOAT)
  gg.toast("🍭小范围已开启（配合自瞄脚本）")
end
   
  function cw3()
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("🍭5分钟大范围已开启（内测）🍭")
  cw3()
end

   function ko1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="神枪手独家新版千里眼开启成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{8, 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
end
   
   function ko2()
    gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="神枪手独家千里眼关闭成功"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{"400", 0xB2D467AC},{"-360", 0xB2D467E4},{"360", 0xB2D467E8},{"80", 0xB2D467E0},{"-70", 0xB2D467DC}}
  local tp2 = {{"56", 0xB2D467F4, true},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
end
  
  function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("🍭二改射速加快开启成功（内测）🍭")
  gg.clearResults()
end
  
  function a7()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4.1", gg.TYPE_FLOAT)
  gg.toast("🍭二改垃圾巨人已开启🍭内测")
end
  
  function a8()
  gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_C_BSS))
gg.searchNumber('56,54,52,68,59,50,46,49,54,54,54,54,54,55,52,54,49,52,58,58,49,48',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('50,46,49,54,54,54,54,54,55,52,54,49,52',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('48,46,49',gg.TYPE_FLOAT)
gg.toast('🍭二改垃圾实体大头开启成功🍭内测')
gg.clearResults()
end
 
  function a9()
gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="🍭机瞄🍭内测"
  local tb1={{"0.10000000149",0xCFA2A858},{"0.20000000298",0xCFA2A854},{"3.99000000954",0xCFA2A830}}
  local tb2={{"9",0xCFA2A890,true},}
  local dataType=gg.TYPE_FLOAT
  SearchWrite(tb1,tb2,dataType,Name)
end

   function a10()
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6.8", gg.TYPE_FLOAT)
  gg.toast("🍭（二改）人物微加速开启成功🍭内测")
  gg.clearResults()
end

   function a11()
   gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2.5", gg.TYPE_FLOAT)
    gg.toast("🍭反伤开启成功请进入游戏🍭内测")
  end

  function b1()
 gg.setRanges(32)
  SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
  gg.REGION_C_BSS, ("🍭双持无后🍭内测1104703619"))
  gg.clearList()
  SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
  gg.REGION_C_BSS, ("🍭双持瞬击🍭内测"))
  gg.clearList()
  SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
  gg.REGION_C_BSS, ("🍭双持射速加快🍭内测"))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
  gg.REGION_C_BSS, ("🍭双持射速加快🍭内测"))
  gg.clearList()
  gg.toast("🍭双持开启成功🍭内测")
end
  
  function b2()
 qmnb = {
    {["memory"] = 32},
    {["name"] = "🍭SMG无后🍭内测"},
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
    {["name"] = "🍭SMG瞬击🍭内测"},
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
    {["name"] = "🍭SMG秒换弹50%🍭内测"},
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
  gg.toast("🍭SMG秒换弹开启成功🍭内测")
  
  gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", gg.TYPE_FLOAT)
    
  gg.setRanges(32)
SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
gg.REGION_C_BSS, ("🍭UZI无后🍭内测"))
gg.clearList()
SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
gg.REGION_C_BSS, ("🍭UZI瞬击🍭内测"))
gg.clearList()
SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
gg.REGION_C_BSS, ("🍭UZI射速加快🍭内测"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
gg.REGION_C_BSS, ("🍭UZI射速加快🍭内测"))
gg.clearList()
gg.toast("🍭UZI开启成功🍭内测")
end
  
  function b3()
   qmnb = {
    {["memory"] = 32},
    {["name"] = "🍭改装无后🍭内测"},
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
    {["name"] = "🍭改装瞬击🍭内测"},
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
    {["name"] = "🍭改装秒换弹🍭内测"},
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
    gg.REGION_C_BSS, ("🍭改装无后🍭内测"))
    
    gg.clearList()
    SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
    gg.REGION_C_BSS, ("🍭改装射速加快🍭内测"))
    gg.clearList()
end

  
  function b4()
   qmnb = {
    {["memory"] = 32},
    {["name"] = "🍭半自动无后🍭内测"},
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
  gg.toast("🍭半自动瞬击开启成功🍭内测")
  gg.clearResults()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "🍭半自动秒换弹50%🍭内测"},
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
    {["name"] = "🍭半动秒换弹100%🍭内测"},
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
    gg.REGION_C_BSS, ("🍭半自动无后🍭内测"))
end
  
  function b5()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "🍭AKM无后🍭内测"},
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
    {["name"] = "🍭AKM瞬击🍭内测"},
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
    {["name"] = "🍭AKM秒换弹50%🍭内测"},
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
    {["name"] = "🍭AKM秒换弹100%🍭内测"},
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
    gg.REGION_C_BSS, ("🍭AK无后子🍭内测"))
    gg.clearList()
  SearchWrite({{480, 228},{1, 232},{0.375, 248}}, {{1000000000,228,false}},
  gg.REGION_C_BSS, ("🍭AK瞬击🍭内测"))
 end
 
  function b6()
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
  gg.toast("  🍭QBZ开启成功🍭 ")
end
  
  function b7()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("🍭SMG冲锋枪瞬击开启成功🍭内测")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("667F;300F;100F;75F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("🍭改装瞬击开启成功🍭内测")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("🍭qbz瞬击开启成功🍭内测")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("🍭ak瞬击开启成功🍭内测")
  gg.clearResults()
end
  
  function b8()
  gg.setRanges(gg.REGION_ANONYMOUS)
local Name="🍭火箭筒瞬爆🍭内测"
local tb1={{"278.0",0xAC85C98C}}
local tb2={{"9999",0xAC85C95C},}
local dataType=gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType,Name)
end
  
  function b9()
   gg.setRanges(32)
  SearchWrite({{600, 116},{-1, 120},{83, 104}}, {{480,116,false}},
  gg.REGION_C_BSS, ("🍭手枪射速加快🍭"))
  gg.clearList()
  SearchWrite({{18, 212},{15, 224},{3, 240}}, {{0.01,224,false}},
  gg.REGION_C_BSS, ("🍭手枪无后🍭"))
  gg.clearList()
  SearchWrite({{6, 40},{300, 52},{-0.5, 64}}, {{1000000000,52,false}},
  gg.REGION_C_BSS, ("🍭手枪瞬击🍭"))
  gg.clearList()
  gg.toast("🍭手枪全开成功🍭")
end
  
  function b10()
  gg.setRanges(32)
  SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
  gg.REGION_C_BSS, ("  🍭M4无后🍭  "))
  gg.clearList()
  SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
  gg.REGION_C_BSS, ("  🍭M4瞬击🍭  "))
  gg.clearList()
  gg.setRanges(4)
  SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
  gg.REGION_C_BSS, ("  🍭M4秒换弹%50🍭  "))
  gg.clearList()
  SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
  gg.REGION_C_BSS, (" 🍭 M4秒换弹%100🍭  "))
  gg.clearList()
  gg.toast("  🍭M4开启成功🍭  ")
end
  
  function c1()
 gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("🍭蓝色透视开启中……🍭内测")
    gg.clearResults()
    
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("🍭蓝色透视开启中……🍭内测")
   
   gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("🍭蓝色透视开启中……🍭内测")
    gg.clearResults()
  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("🍭蓝色透视开启成功🍭内测"))
    gg.clearList()
    gg.toast("🍭蓝色天线开启成功🍭内测")
  end
  
  function c2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("🍭天线刷新成功🍭内测")
end
  
  function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("🍭蓝色天线开启中……🍭内测")
   
   gg.setRanges(131072)
    gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.REGION_C_BSS)
    gg.toast("🍭蓝色天线开启中……🍭内测")
    gg.clearResults()
  
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("🍭蓝色天线开启成功🍭内测"))
    gg.clearList()
    gg.toast("🍭500米蓝色天线已开启🍭内测")
  end
  
  function c4()
   gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("🍭高光开启成功🍭内测"))
    gg.clearList()
    gg.toast("🍭高光已开启🍭内测")
  end
  
  function c5()
   gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{2, -4},{0.04044999927, -8}}, {{0.0549999997,-4,false}},
    gg.REGION_C_BSS, ("🍭高光关闭成功🍭内测"))
    gg.clearList()
    gg.toast("🍭高光关闭成功🍭内测")
  end
  
  function c6()
   gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("0.10998535156;1", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("1", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("20", gg.REGION_C_BSS)
  gg.clearResults()
  gg.toast("🍭人物上色开启成功🍭内测")
  end
  
  function c7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("🍭全枪射速增加开启成功🍭")
  gg.clearResults()
end
  
  function c8()
   gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.toast('🍭第三人称已开启🍭内测')
end

  function c9()
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("🍭新版麒麟上色🍭内测")
gg.clearList()
end

  function c10()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("🍭新版水上走路已开启🍭内测")
  gg.clearResults()
end
  
  function c11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;-999F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("🍭新版水上走路已关闭🍭内测")
  gg.clearResults()
end
  
  function c12()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.21072187e-42;24::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('24',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(99)
  gg.editAll('120', gg.TYPE_FLOAT)
  gg.toast('🍭黑天开启成功🍭内测')
  gg.clearResults()
end
  
  function c13()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.21072187e-42;24::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('24',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(99)
  gg.editAll('120', gg.TYPE_FLOAT)
  gg.toast('  🍭黑天变白天开启成功🍭  ')
  gg.clearResults()
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
  gg.toast("🍭（新版本）灵魂出窍开启成功，请断网🍭")
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
gg.toast("🍭地下建家🍭")
gg.alert("🍭自我解脱找个不死的地方建家🍭")
end
  
  function d3()
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
                                  }, gg.TYPE_FLOAT, ("🍭倍镜路飞已开启🍭内测"))
 end
  
  function d4()
   gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("🍭注入成功🍭内测")gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W  ;1W;1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
        gg.getResults(100)
    gg.editAll('2.222222',gg.TYPE_FLOAT)
    gg.toast("🍭半遁地开启成功🍭内测")
 end
  
  function d5()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('0.05000000075;2.9203751e-31;5.1414089e-39', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.05', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.toast('🍭防摔已开启🍭内测')
  gg.setRanges(16384)
  local Name='🍭防摔🍭内测'
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-3.8685732e25, 0x4A9C}, {1, 0x4AA0},{1.00999999046, 0x4AB0},}
  local tb2 = {{0.10000000149, 0x4AA0, false},} 
  SearchWrite(tb1, tb2, dataType,Name)
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll('',gg.TYPE_FLOAT)
  gg.toast('🍭防摔🍭内测')
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
  gg.toast('🍭注入隔墙吸子弹50%🍭内测')
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.03999996185', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('🍭注入成功🍭内测')
end
  
  function d7()
  gg.setRanges(gg.REGION_ANONYMOUS)
local Name="🍭橡胶人路飞开启成功🍭内测"
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
  gg.toast("🍭房屋透视开启成功🍭内测")
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
  gg.toast("🍭房屋透视关闭成功🍭内测")
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
gg.searchNumber("-0.31400001049;0.02710000053;-0.09340000153;-0.02099999972", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.31400001049",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("-3.2135418",gg.TYPE_FLOAT)
gg.toast("🍭路飞已开启，请开镜🍭")
gg.clearResults()
end
 
 function d13()
 gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("🍭木墙天线开启成功🍭内测")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("🍭石墙天线开启成功🍭内测")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('999',gg.TYPE_FLOAT)
    gg.toast("🍭铁墙天线开启成功🍭内测")
  end
 
 function d14()
  gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("🍭木墙天线关闭成功🍭内测")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("🍭石头天线开启关闭🍭内测")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('4',gg.TYPE_FLOAT)
    gg.toast("🍭铁墙天线关闭成功🍭内测")
  end
  
  function d15()
   gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
  end
  gg.toast("🍭二改变速穿墙开启中🍭内测")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🍭二改穿墙开启成功🍭内测")
end

function d16()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("60F;0.02999999933F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("🍭超级范围枪已开启🍭内测")
  gg.clearResults()
end

function d17()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("60F;0.02999999933F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("🍭超级范围枪已关闭🍭内测")
  gg.clearResults()
end

function d18()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('无功能待添加')
  
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1)
  gg.editAll("1",gg.TYPE_FLOAT)
  gg.toast("无功能待添加")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>10 then sl=10 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.5}})
  end
  gg.toast("无功能待添加")
end

function d19()
gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('0.14177720249', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.14177720249', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll('0.1492135418', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('6.30000019073', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('6.30000019073', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll('3.3157794', gg.TYPE_FLOAT)
  gg.toast('🍭加速挖矿开启🍭内测')
end

function d20()
gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-3.8685732E25, 19100},{1, 19104},{1.00999999046, 19120}}, {{0.10000000149,19104,false}}, gg.TYPE_FLOAT, "三段跳")
  gg.clearList()
  gg.toast("🍭新版不死三连跳开启成功🍭内测")
end

function d21()
gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({{-3.8685732E25, 19100},{0.10000000149, 19104},{1.00999999046, 19120}}, {{1,19104,false}}, gg.TYPE_FLOAT, "三段跳关闭")
  gg.clearResults()
  gg.toast("🍭新版不死三连跳关闭成功🍭内测")
end

function E1()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("2.5", gg.TYPE_FLOAT)
      gg.toast("🍭请冻结调零，并且大厅开启🍭内测")
    end

function E2()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.97", gg.TYPE_FLOAT)
  gg.toast("   🍭 开启成功，请在游戏大厅开启️🍭 内测 ")
end

function E3()
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
	 gg.toast("️🍭不成功多试几次️🍭内测")
	 gg.clearResults()
end

function E4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("🍭全枪射速增加开启成功🍭内测")
  gg.clearResults()
end

function E5()
  gg.setRanges(131072)
  gg.clearResults()
  gg.searchNumber("3.7314056e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("🍭除草已开启🍭")
  gg.clearResults()
end

function Exit()
  print("🍭欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，脚本欢迎下次光临，🍭🍭⭕💰科技。内测，内测，内测，内测")
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