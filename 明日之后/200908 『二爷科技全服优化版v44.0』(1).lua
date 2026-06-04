local L0_0  L0_0 = 0  function SearchWrite(Search,Write,Type)  gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults()  local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do  v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags  end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address  end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."条数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do  offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."已成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误！") return false end else gg.toast(Name.."主特征码错误！") return false end end   function split(szFullString, szSeparator)   local nFindStartIndex = 1   local nSplitIndex = 1   local nSplitArray = {}   while true do   local nFindLastIndex = string.find  (szFullString, szSeparator, nFindStartIndex)   if not nFindLastIndex then   nSplitArray[nSplitIndex] =   string.sub(szFullString, nFindStartIndex, string.len  (szFullString))   break end   nSplitArray[nSplitIndex] = string.sub  (szFullString, nFindStartIndex, nFindLastIndex - 1)   nFindStartIndex = nFindLastIndex + string.len  (szSeparator)   nSplitIndex = nSplitIndex + 1 end return   nSplitArray end   function xgxc(szpy, qmxg)   for x = 1, #(qmxg) do   xgpy = szpy + qmxg[x]["offset"]   xglx = qmxg[x]["type"]   xgsz = qmxg[x]["value"]   xgdj = qmxg[x]["freeze"]   if xgdj == nil or xgdj == "" then   gg.setValues({[1]   = {address = xgpy, flags = xglx, value = xgsz}})   else   gg.addListItems({[1]   = {address = xgpy, flags = xglx,   freeze = xgdj, value = xgsz}}) end   xgsl = xgsl + 1 xgjg = true end end   function xqmnb(qmnb)   gg.clearResults()   gg.setRanges(qmnb[1]["memory"])   gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else           sl = gg.getResults(999999)   sz = gg.getResultCount()           xgsl = 0 if sz > 999999 then   sz = 999999 end for i = 1, sz do   pdsz = true for v = 4, #(qmnb) do if   pdsz == true then   pysz = {} pysz[1]   = {} pysz[1].address   = sl[i].address + qmnb[v]["offset"] pysz[1].flags   = qmnb[v]["type"]   szpy = gg.getValues(pysz)   pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd   = split(pdpd, ";") tzszpd   = szpd[1] pyszpd = szpd[2]   if tzszpd == pyszpd then   pdjg = true pdsz = true else   pdjg = false pdsz = false end end end if   pdjg == true then szpy   = sl[i].address xgxc(szpy, qmxg) end end   if xgjg == true then   gg.toast(qmnb[2]["name"] .. "已成功,共修改" .. xgsl .. "条数据")   else   gg.toast(qmnb[2]["name"] .. "开启失败")   end   end   end   end  function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."已成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("Not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "已成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end  function SearchWrite(Search, Write, Type) gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()   local data = {}     local base = Search[1][2]        if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end               for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end                        tmp = gg.getValues(tmp)                         for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                     result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("共修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("", false) return false end else gg.toast("") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) elsegg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误！") gg.toast("type参数错误！") os.exit() end else print("memory or array参数错误！") gg.toast("memory or array参数错误！") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function EYNB()
SN = gg.choice({
"1.大厅功能区",
"2.出生岛功能区",
"3.稳定功能区",
"4.透视染色功能区",
"5.国体/国际功能区",
"6.稳定防封功能区",
"7.退出脚本",
}, nil, "欢迎使用！")
if SN == 1 then
a()
end
if SN == 2 then
b()
end
if SN == 3 then
c()
end
if SN == 4 then
d()
end
if SN == 5 then
e()
end
if SN == 6 then
f()
end
if SN == 7 then
g()
end
EYKJ = -1
end
function a()
menu1 = gg.multiChoice({
"全部开启",
"全枪无后",
"全枪防抖",
"全枪聚点",
"牛逼自瞄",
"⭕⭕透视",
"天空黑色",
"全图除草",
"返回上一页"},
nil,"以下为稳定大厅功能。")
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then qqts() end
if menu1[7] == true then a6() end
if menu1[8] == true then a7() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end
function b()
menu1 = gg.multiChoice({
"经典模式全部开启",
"团队竞技全部开启",
"肩部天线",
"范围伤害",
"瞬间落地",
"返回上一页"},
nil,"以下为稳定出生岛功能。")
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then SJLD() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end
function c()
menu1 = gg.multiChoice({
"全部开启(持枪开启)",
"上帝视角(落地开启)",
"子弹穿墙(大厅开启)",
"全枪瞬击(大厅开启)",
"人物翻墙(落地开启)",
"八倍红点(持枪开启)",
"返回上一页"},
nil,"以下为稳定功能。")
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end
function d()
menu1 = gg.multiChoice({
"骁龙处理器自改人物染色",
"骁龙处理器通用人物透视",
"骁龙435处理器人物透视",
"骁龙435处理器人物染色",
"联发科P23处理器人物透视",
"联发科P23处理器人物染色",
"联发科P22/35处理器人物透视",
"联发科P22/35处理器人物染色",
"返回上一页",},
nil,"以下为稳定透视染色功能。")
if menu1 == nil then else
if menu1[1] == true then nmskdkk() end
if menu1[2] == true then qbckkwl() end
if menu1[3] == true then xl435ts() end
if menu1[4] == true then xl435ss() end
if menu1[5] == true then ldlwppwe() end
if menu1[6] == true then loveyou() end
if menu1[7] == true then lfk22ts() end
if menu1[8] == true then lfk22ss() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end
function e()
SN = gg.multiChoice({
"内存防封",
"内存自瞄",
"范围伤害",
"聚点无后",
"人物透视",
"全图除草",
"瞬间落地",
"除草除树",
"肩部天线",
"封号功能",
"人物地线",
"返回上一页",
}, nil, "以下为稳定国体/国际功能。")
if SN == nil then
else
if SN[1] == true then
gt1()
end
if SN[2] == true then
gt2()
end
if SN[3] == true then
gt3()
end
if SN[4] == true then
gt4()
end
if SN[5] == true then
gt5()
end
if SN[6] == true then
gt6()
end
if SN[7] == true then
gt7()
end
if SN[8] == true then
gt8()
end
if SN[9] == true then
gt9()
end
if SN[10] == true then
gt10()  
end
if SN[11] == true then
gt11()  
end
if SN[12] == true then
HOME()   
end
end
XGCK = -1
end
function f()
SN = gg.multiChoice({
"内存防封第一步",
"内存防封第二步",
"内存防封第三步",
"内存防封第四步",
"防禁网封十分钟",
}, nil, "以下为稳定防封功能。")
if SN == nil then
else
if SN[1] == true then
f1()
end
if SN[2] == true then
f2()
end
if SN[3] == true then
f3()
end
if SN[4] == true then
f4()
end
if SN[5] == true then
f5()
end
end
XGCK = -1
end
function f1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("196,864;16,842,753:5",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("内存防封开启失败")
else
gg.searchNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address+16,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+20,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+72,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+76,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+80,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+180,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+184,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+188,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+288,flags = 4,freeze = true,value =  0}})
gg.addListItems({[1] = {address =jz[i].address+292,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+296,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+316,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+320,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+340,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+344,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+356,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+764,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+784,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+788,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+792,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+796,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+800,flags = 4,freeze = true,value = 70086}})
end
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("11194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("11194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(80)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("131,072;131072::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -99)
gg.refineNumber("131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -99)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f034,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f044,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f048,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0e8,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0ec,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0f0,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f14e,
['flags'] = 4, 
['freeze'] = true,
['value'] = 119,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1b2,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1e4,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1f8,
['flags'] = 4, 
['freeze'] = true,
['value'] = 4451,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f25c,
['flags'] = 4, 
['freeze'] = true,
['value'] = 0,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f266,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f298,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f2f2,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f3ba,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f450,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.setRanges(4)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("内存防封第一步已成功")
end
function f2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f034,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f044,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f048,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0e8,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0ec,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0f0,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f14e,
['flags'] = 4, 
['freeze'] = true,
['value'] = 119,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1b2,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1e4,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1f8,
['flags'] = 4, 
['freeze'] = true,
['value'] = 4451,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f25c,
['flags'] = 4, 
['freeze'] = true,
['value'] = 0,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f266,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f298,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f2f2,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f3ba,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f450,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.setRanges(4)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f034,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f044,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f048,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0e8,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0ec,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f0f0,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f14e,
['flags'] = 4, 
['freeze'] = true,
['value'] = 119,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1b2,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1e4,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f1f8,
['flags'] = 4, 
['freeze'] = true,
['value'] = 4451,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f25c,
['flags'] = 4, 
['freeze'] = true,
['value'] = 0,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f266,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f298,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f2f2,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f3ba,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.addListItems({ 
[1] = { 
['address'] = 0xa689f450,
['flags'] = 4, 
['freeze'] = true,
['value'] = 70086,
},
})
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
if 80 < sl then
sl = 80
end
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = gg.TYPE_DWORD,
freeze = true,
value = 0
}
})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377;133378::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(800)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.toast("内存防封第二步已成功")
end
function f3()
qmnb = {
{["memory"] = 4},
{["name"] = "大厅防封"},
{["value"] = 196864, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16842753, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 252, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 256, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 260, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 264, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 268, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 272, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4864, ["offset"] = 352, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 1441809, ["offset"] = 256, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 1441809, ["offset"] = 260, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 1441809, ["offset"] = 264, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 1441809, ["offset"] = 268, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 1441809, ["offset"] = 272, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
gg.sleep(500)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2;134914;67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(800)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("65535;196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(800)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.sleep(2000)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
if 90 < sl then
sl = 90
end
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = gg.TYPE_DWORD,
freeze = true,
value = 0
}
})
end
gg.toast("内存防封第三步已成功")
end
function f4()
gg.clearResults()
gg.searchNumber("1042;10240:1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.searchNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.searchNumber("1042;10240:1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems({
[1] = { 
['address'] = 0xf03a695c,
['flags'] = 4,
['freeze'] = true,
['value'] = 0,
},
})
gg.clearResults()
gg.searchNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems({
[1] = {
['address'] = 0xf2867ec4,
['flags'] = 4,
['freeze'] = true,
['value'] = 0,
},
})
gg.toast("内存防封第四步已成功️")
gg.sleep(1000)
gg.clearResults()
end
function f5()
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/*.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloudSDKLog/GCloud/")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/afd/*.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/*.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/map_helicopter_0.18.0.13578.pak")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/Engine")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/content")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Screenshots")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/IGH5Cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/ODPaks")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*.sav")
gg.toast("防禁网封10分钟已成功")
end
function a1()
a2() a3() a4() a5() a6() a7() qqts()
end
function a2()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-6,196,952,597,921,662,448",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(15)
gg.editAll("-6,196,952,601,930,498,048",gg.TYPE_QWORD)
gg.toast("全枪无后座已成功")
end
function a3()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪防抖已成功")
end
function a4()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1,387,800,265,460,020,720",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,387,800,268,334,956,544",gg.TYPE_QWORD)
gg.toast("全枪聚点已成功")
end
function a5()
qmnb = {
{["memory"] = 8},
{["name"] = "超大范围"},
{["value"] = -2.8488793e28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -5.4827808e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.2464639e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.7270195e28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 0, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 8},
{["name"] = "全图距离"},
{["value"] = -6.179705e26, ["type"] = 16},
{["lv"] = -1.427811e28, ["offset"] = 52, ["type"] = 16},
{["lv"] = -6.0800085e27, ["offset"] = 108, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 52, ["type"] = 16},
{["value"] = 0, ["offset"] = 108, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 8},
{["name"] = "身体锁定"},
{["value"] = 1324370533, ["type"] = 4},
{["lv"] = 1324366404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 60, ["type"] = 4},
}
xqmnb(qmnb)
gg.sleep(300)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-301790705", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_DWORD)
gg.toast("磁性自瞄已成功")
qmnb = {
{["memory"] = 8},
{["name"] = "开火自瞄"},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.sleep(500)
Name = "趴下照锁" 
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.sleep(1000)
Name = "近战自瞄" 
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.sleep(1000)
Name = "自瞄加快" 
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.sleep(1000)
Name = "开火自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("6.1630853e-33"), ("-8")}, { ("-1.0767317e28"), ("0")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.sleep(1000)
Name = "概率锁头" 
gg.setRanges(8)
local dataType = 16
local search = {{-5.482780823407247E27, 0},{1476731008.0, -124},{-5.456187406854777E27, -104},{-6.075158016793277E27, -100},{-1.9822775553687006E28, -96},}
local modify = {{-1.3620444e28, -140},{-1,477,256,064.0, -144},{-3.7444121e28, -148},{-2.7889165e28, 152},{-1.2464636e28, 160},{-2.8488821e28, 164},{-2.9262512e28, 172}}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,228,926,275,344,631,229", 32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1,228,926,276,669,014,016",32)
gg.toast("频率自瞄已成功")
gg.sleep(1000)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast("增强自瞄已成功")
gg.sleep(500)
gg.toast("牛逼自瞄已成功")
end
function qqts()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-476,053,504',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-476,053,503',gg.TYPE_DWORD)
Name = "⭕⭕透视" 
gg.setRanges(8)
local dataType = 16
local search = {{5.533321713993693E-21, 0},}
local modify = {{2.62532929e-27, 52},}
SearchWrite(search,modify,dataType,Name)
end
function a6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('28992425112437505',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('28992425112437505',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_QWORD)
gg.toast("天空黑色已成功")
end
function a7()
qmnb = {
{["memory"] = 32},
{["name"] ="全图除草"},
{["value"] =29806, ["type"] = gg.TYPE_DWORD},
{["lv"] = 7630437, ["offset"] = 40, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1633907556, ["offset"] = 64, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] =1936942449, ["offset"] = 140, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end
function b2()
b3() b4()
end
function b3()
qmnb = {
{["memory"] = 32},
{["name"] = "肩部天线"},
{["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function b1()
SJLD() b3() b4()
end
function b4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("400", gg.TYPE_FLOAT)
qmnb = {
{["memory"] = 32},
{["name"] = "范围伤害"},
{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 300, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 150, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "范围伤害"},
{["value"] = 9.20161819458, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 180, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT,},
{["value"] = 180, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT,},
{["value"] = 180, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["value"] = 180, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "范围伤害"},
{["value"] = -88.66608428955, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 16, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 26, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = -430, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "范围伤害"},
{["value"] = -88.73961639404, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 18, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = -530, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.sleep(1000)
gg.toast("范围伤害已成功")  
end
function SJLD()
gg.setRanges(32)
local dataType = 16
local tb1 = {{3000.0, 0},{5000.0, 4},{1024.0, 8},{89.0, 36},}
local tb2 = {{210000, 0},{210000, 4},{210000, 8},}
SearchWrite(tb1, tb2, dataType)
gg.toast("折跃跳机已准备就绪")
end
function c1()
c2() c4() c5() c6()
end
function c2()
qmnb = {
{["memory"] = 32},
{["name"] ="上帝视角"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 440, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function c3()
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("1.0e-7;1.0e-7;2;2;1::512", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("0", 16)
gg.toast("子弹穿墙已成功")
end
function c4()
qmnb = {
{["memory"] = 8},
{["name"] = "全枪瞬击"},
{["value"] = -1.427811e28, ["type"] = 16},
{["lv"] = 6.1631066e-33, ["offset"] = -4, ["type"] = 16},
{["lv"] = -1.3045718e23, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("全枪瞬击已成功")
end
function c5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3.5032462e-44F;10.0F;45.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("人物翻墙已成功")
end
function c6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;55;1.9618179e-44", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("55", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("15",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("八倍红点已成功")
end

function nmskdkk()
ssz = gg.prompt({
"请输入修改人物染色值的大小："
}, {""})
if ssz ~= nil then
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("8200D;8,201D;8,203D:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200D;8,201D;8,203D:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(ssz[1], gg.TYPE_FLOAT)
gg.toast("骁龙处理器自改人物染色已成功")
end
end
function qbckkwl()	 
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("480")
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast('骁龙处理器通用人物透视已成功50%')
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("900")
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast('骁龙处理器通用人物透视已成功')
end
function xl435ts()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("480")---人物/车辆马赛克
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("800")---车辆透视
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("880")---人物透视
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast('骁龙4系列处理器人物透视已成功')
end
function xl435ss()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("8196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("B0")---单值染色
gg.getResults(100)
gg.editAll("3", gg.TYPE_DWORD)
gg.toast("骁龙435处理器人物染色已成功")
end
function ldlwppwe()
qmnb = {
{["memory"] = 4},
{["name"] = "联发科P23处理器人物透视"},
{["value"] = 360, ["type"] = gg.TYPE_DWORD},
{["lv"] = 52, ["offset"] = -4, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 1, ["offset"] = 0, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end
function lfk22ts()
gg.clearResults()
gg.setRanges(4)  
gg.searchNumber("1065353216;925410615;-1082131351;1077533056;0;1077936128;1087775063::133", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1077936128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("318")
jg=gg.getResults(10)
sl=gg.getResultCount()
if sl>10 then sl=10 
end
for i = 1, sl do
dzy=jg[i].address                                                                    
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1125515264}})
end
gg.clearResults()
gg.setRanges(16384 | 8 | 4)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("联发科P22/35处理器人物透视已成功")
end
function lfk22ss()	 	
qmnb = {
{["memory"] = 4},
{["name"] = "联发科P22/35处理器人物染色"},
{["value"] = 4294967352, ["type"] = 32},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1, ["offset"] = -8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1, ["offset"] = -16, ["type"] = 4},
{["lv"] = 55, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 2, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 34, ["offset"] = 32, ["type"] = 4},
{["lv"] = 0, ["offset"] = 36, ["type"] = 4},
{["lv"] = 8, ["offset"] = 40, ["type"] = 4},
{["lv"] = 1, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 48, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 4, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = 60, ["type"] = 4},
{["lv"] = 58, ["offset"] = 64, ["type"] = 4},
{["lv"] = 1, ["offset"] = 68, ["type"] = 4},
{["lv"] = 0, ["offset"] = 72, ["type"] = 4},
}
qmxg = {
{["value"] = 32, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
function gt1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842,753:5",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("内存防封开启失败")
else
gg.searchNumber("196864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address+16,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+20,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+72,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+76,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+80,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+180,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+184,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+188,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+288,flags = 4,freeze = true,value =  0}})
gg.addListItems({[1] = {address =jz[i].address+292,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+296,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+316,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+320,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+340,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+344,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+356,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+764,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+784,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+788,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address+792,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+796,flags = 4,freeze = true,value =  70086}})
gg.addListItems({[1] = {address =jz[i].address+800,flags = 4,freeze = true,value = 70086}})
end
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(500)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(500)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2;134914;67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(800)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(800)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(800)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.toast("内存防封已成功")
gg.clearResults()
end
function gt2()
---国体众生---二爷优化---
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)--持枪自瞄
local dataType = 16
local search = {{-1.2573531344941352E23, 0},{-9.90656151829801E27, -40},}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--持枪自瞄
local dataType = 16
local search = {{1.1625219467270265E33, 0},{7.476871833205223E-4, 64},}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-476,053,504',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-476,053,503',gg.TYPE_DWORD)
gg.toast("持枪自瞄已成功")
gg.setRanges(16384)--开火自瞄
local dataType = 16
local search = {{5.819133540166275E-26, 0},{-3.696554925989424E20, -12},}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--开火自瞄
local dataType = 16
local search = {{2.641425091258327E29, 0},{1.8526925134222195E28, -104},}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--趴下自瞄
local dataType = 16
local search = {{-1.2811951909214346E23, 0},{-9.90656151829801E27, -12},}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--趴下自瞄
local dataType = 16
local search = {{4.387686491826876E31, 0},{2.0621421385430327E-19, -80},}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--距离
local dataType = 16
local search = {{-2.952560267547818E20, 0},{-3.8685626227668134E25, 8},}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--距离
local dataType = 16
local search = {{4.387686491826876E31, 0},{1.9938161152173576E-19, -92},}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--无死角
local dataType = 16
local search = {{-1.7366438177148862E26, 0},{-2.739592370665271E28, -20},}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--无死角
local dataType = 16
local search = {{9.299955479230584E-40, 0},{172224217088.0, -12},}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--频率自瞄
local dataType = 16
local search = {{4.5422619231892774E30, 0},{15149272399872.0, -44},}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)--近战自瞄
local dataType = 16
local search = {{9.999999747378752E-5, 0},{360.0, -12},{-360.0, -8},{180.0, -4},{-1.0153182385499395E28, 8},}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)--自瞄
local dataType = 16
local search = {{8000.0, 0},{3.5, -64},{0.5, -44},{200.0, -12},{100.0, -4},}
local modify = {{99999, -48},{99999, -52},{99999, -56},{99999, -60},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{-2.8488793e28, 0}, {-5.4827808e27, 4}, {-1.2464639e28, 8}, {-2.7270195e28, 12}, }
local tb2 = {{0, 4},{0, 0}, } 	
SearchWrite(tb1, tb2, dataType) 
gg.setRanges(16384)
local dataType = 32--距离
local tb1 = {{-2044634016379303408, 0}, }
local tb2 = {{-1292522027172757503, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 32--趴下锁人
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
SearchWrite(tb1, tb2, dataType)
Name = "头部被锁" 
gg.setRanges(16384)
local dataType = gg.TYPE_FLOAT
local tb1 = {{-2.8488793e28, 0}, {-5.4827808e27, 4}, {-1.2464639e28, 8}, {-2.7270195e28, 12}, }
local tb2 = {{0, 4},{0, 0}, } 	
SearchWrite(tb1, tb2, dataType) 
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="加载判断"--/-3.9291568e21;2.6469862e-23;-8.736414e22;-3.8369228e21
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{-3.9291565e21,0x6D58}}SearchWrite(tb1,tb2,dataType)
local dataType=gg.TYPE_FLOAT Name="超强判断"--/1.6615354e35;-1.1221873e28;-5.8048698e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7A38}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="全图距离"--/1.6615354e35;-1.1144502e28;-5.8053394e26;-1.0525532e28
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x6654}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="270℃范围"--/1.6615354e35;-1.1221873e28;-5.8049129e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7864}}SearchWrite(tb1,tb2,dataType)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-301790705", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,228,926,275,344,631,229", 32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1,228,926,276,669,014,016",32)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast("内存自瞄已成功")
end
function gt3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2067152224969545200",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-2067152228963057664",32)
gg.clearResults()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围伤害"},
{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 150, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 150, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围伤害"},
{["value"] = 9.20161819458, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 100, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT,},
{["value"] = 100, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT,},
{["value"] = 100, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["value"] = 100, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb) 
gg.setRanges(32)
local dataType = 16
local search = {
{12.667054176330566, 0},
{15.0, -612},
}
local modify = {{330, 0},{330, -612},{330, 484},{330, 228},{330, 100},{330, 1948}}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local tb1 = {{90.775703430176, 0}, {0, 0}, {8, 0}, {16, 2}, }
local tb2 = {{240, 2}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
gg.toast("范围伤害已成功")
end
function gt4()
qmnb = {
{["memory"] = 16384},
{["name"] = "全枪无后"},
{["value"] = -1.427811e28, ["type"] = 16},
{["lv"] = -1.7450247e28, ["offset"] = -4, ["type"] = 16},
{["lv"] = -1.2604906e28, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
gg.setRanges(16384)
local dataType = 16
local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
Name = "全枪防抖"
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-405405696, 0}, {-499122175, 4}, {-481296380, 8}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0}, {-2.8111605430681328E28, -12}, {-1476732160.0, -8}, {-3.7444097189855772E28, -4}, {128.0, 4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
Name = "全枪聚点"
gg.setRanges(16384)
local dataType = 16
local search = {{-6.171871492066637E27, 0},{-3.868563083935415E25, -8},}
local modify = {{0, -8},{0, 4},}
SearchWrite(search,modify,dataType,Name)
end
function gt5()
SN = gg.multiChoice({
"联发科人物透视",
"联发科人物透视防闪",
"联发科人物仿骁龙黄色",
"联发科人物荧光绿色",
"骁龙人物透视",
"骁龙人物黄色",
"骁龙人物红色",
"返回上一页",
}, nil, "欢迎使用！")
if SN == nil then
else
if SN[1] == true then
a11()
end
if SN[2] == true then
a21()
end
if SN[3] == true then
a31()
end
if SN[4] == true then
a41()
end
if SN[5] == true then
a51()
end
if SN[6] == true then
a61()
end
if SN[7] == true then
a71()
end
if SN[8] == true then
HOME1()
end
end
GLWW=-1
end
function a11()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.30534994602F;0.56855899096F;0.00060000003F;12,000.0F;0.00003F;3.0F:517", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("C8")
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 130}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-294,802,802", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("联发科人物透视已成功")
end
function a21()
for i=1,3 do
gg.clearResults()
gg.setRanges(16384 | 8 | 4)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
end
gg.toast("联发科人物透视防闪已成功")
end
function a31()
---二爷原创---
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("29;9;56::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("DC")
gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("31", gg.TYPE_DWORD)
gg.setRanges(4)
gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("67", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("联发科人物仿骁龙黄色已成功")
end
function a41()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("23;76;44;77;45;78:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchAddress("DC")
gg.searchNumber("45", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("41",gg.TYPE_DWORD)
gg.toast("联发科人物荧光绿色已成功")
end
function a51()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("900")
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("骁龙人物透视已成功")
end
function a61()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("B0")
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("骁龙人物黄色已成功")
end
function a71()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("B0")
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("骁龙人物红色已成功")
end
function gt6()
qmnb = {
{["memory"] = 32},
{["name"] = "全图除草"},
{["value"] = 1.39999997616, ["type"] = 16},
{["lv"] = 1.39999997616, ["offset"] = -4, ["type"] = 16},
{["lv"] = 2.0318828e-43, ["offset"] = 24, ["type"] = 16},
{["lv"] = 1.29999995232, ["offset"] = 48, ["type"] = 16},
}
qmxg = {
{["value"] = -0.00001, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "全图除雾"},
{["value"] = -2123974960349970432, ["type"] = 32},
{["lv"] = -1.3620439e28, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
end
function gt7()
SJLD()
end
function gt8()
qmnb = {
{["memory"] = 8},
{["name"] = "除草除树"},
{["value"] = -1.2537165e28, ["type"] = 16},
{["lv"] = -3.1863806e30, ["offset"] = 4, ["type"] = 16},
{["lv"] = -3.8685677e25, ["offset"] = 8, ["type"] = 16},
{["lv"] = 9.9999999e-9, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = -1.2537316e28, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("除草除树已成功")
end
function gt9()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "肩部天线"},
{["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function gt10()
SN = gg.multiChoice({
"人物路飞",
"变态全除",
"上帝视角",
"UI透明化",
"返回上一页",
}, nil, "封号十年浑不怕，要留变态在人间。")
if SN == nil then
Main()
else
if SN[1] == true then
b11()
end
if SN[2] == true then
b21()
end
if SN[3] == true then
b31()
end
if SN[4] == true then
b41()
end
if SN[5] == true then
HOME1()
end
end
GLWW=-1
end
function b11()
---众生---
Name = "人物路飞" 
gg.setRanges(32)
local dataType = 16
local search = {
{-0.004204273223876953, 0},
{-0.004206657409667969, -4},
{-0.10547397285699844, 4},
{-0.30011314153671265, 8},
}
local modify = {{-130, 0},}
SearchWrite(search,modify,dataType,Name)
qmnb = {
{["memory"] = 32},
{["name"] = "人物路飞"},
{["value"] = -2.83384513855, ["type"] = 16},
{["lv"] = 5.82142114639, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.19047555327, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 80, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end
function b21()
---二爷原创功能---
sjjg = gg.prompt({
"请输入您要持续该功能效果的时间长短(单位:ms)："
}, {""})
if sjjg ~= nil then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2,089,612,928,250,541,568",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-2,089,612,932,236,181,504",32)
gg.sleep(sjjg[1])---单位:ms
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-2,089,612,932,236,181,504',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-2,089,612,928,250,541,568",gg.TYPE_QWORD)
gg.toast("变态全除已成功")
end
end
function b31()
qmnb = {
{["memory"] = 32},
{["name"] ="上帝视角"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] =440, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function b41()
---『修复』二爷原创功能---
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-294,340,062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("FC")
gg.searchNumber("-294,340,062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("UI透明化已成功")
end
function gt11()
---未知作者---
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] =-999999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function HOME()
lw=1
EYNB()
end
function HOME1()
lw=1
g()
end
function g()
gg.toast("期待您的下次使用！")
os.exit()
end
while true do
if gg.isVisible(true) then
EYKJ = 1
gg.setVisible(false)
end
gg.clearResults()
if EYKJ == 1 then
EYNB()
end
end