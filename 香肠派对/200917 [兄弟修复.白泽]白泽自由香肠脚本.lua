if string.find(tostring(debug.getinfo(load)['func']), "function: load") == nil then
end

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](_on.." 开启失败")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](xgsj)else gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](xgsj)end end xgjg=true end end if xgjg==true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](_on.." A内存功能禁用开启成功")else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](_on.." 开启失败")end end end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))]({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))]({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "开启失败") else gg[string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("66",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("65",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3]["value"], qmnb[3]["type"]) gg[string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("66",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("65",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3]["value"], qmnb[3]["type"]) gg[string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("66",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("65",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "开启失败") end end end end

----美化启动代码一一一一一一一一一一一一一一一一一一一一一一一一一一一一一一



--配置
local app = {}
function Assert(data)
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg.setVisible(false)
local rx = mearrass(memory, array)
if rx then
local rx, datatype = typetab(array, type)
if rx then
if Assert(array[1].hv) then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
for i = 1, #data do
data[i].rx = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
data[z].rx = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].rx = false
end
end
end
end
for i = 1, #data do
if data[i].rx then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print("type参数错误")
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("type参数错误")
os.exit()
end
else
print("memory or array参数错误")
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("memory or array参数错误")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze
--gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](t)
return gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](t)
else
return gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](t)
end
else
return false
end
end
----------------------------------------------仿XS配置代码,不准动,不然鸡掰给你砍断♂----------------------------------------------

--配置↓↓↓勿修改
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))]({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))]({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "注入失败") else gg[string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("66",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("65",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3]["value"], qmnb[3]["type"]) gg[string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("66",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("65",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3]["value"], qmnb[3]["type"]) gg[string.char(tonumber("72",16))..string.char(tonumber("65",16))..string.char(tonumber("66",16))..string.char(tonumber("69",16))..string.char(tonumber("6e",16))..string.char(tonumber("65",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "注入成功,共修改" .. xgsl .. "条数据") else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2]["name"] .. "注入失败") end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)

function SearchWrite(Search, Write, Type)
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
    local data = {} 
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1]             
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](tmp) 
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false 
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](item)
                   end
                  
               end
           end
           gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](t)
    
           gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](t)
        else
            gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("无数据", false)
            return false
        end
    else
        gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("Not Found")
        return false
    end
end
--配置代码
function Main()
menu = gg[string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("6f",16))..string.char(tonumber("69",16))..string.char(tonumber("63",16))..string.char(tonumber("65",16))]({
"稳定天线",
"稳定范围",
"稳定锁头",
"无线飞高",
"子弹加速",
"全枪自动",
"人物遁地",
"环境异常第一步",
"第二步",
"加大拉勾勾",
"爬墙爬树",
"人物飞天",
"稳定无后",
"二跳穿墙",
"水上行走",
"加特林不红",
"自慰隐身",
"麒麟透视",
"骁龙透视",
"小范围透视",
"三种人称",
"范围伤害",
"多选加速",
"蹦蹦天线",
"人物上色",
"物品透视",
"自瞄开了就闪不要开",
"天空黑色",
"退出脚本"},
2018,os.date'欢迎使用――当前时间:%Y年%m月%d日%H时%M分')
if menu == 1 then a() end
if menu == 2 then b() end
if menu == 3 then c() end
if menu == 4 then d() end
if menu == 5 then e() end
if menu == 6 then f() end
if menu == 7 then g() end
if menu == 8 then h() end
if menu == 9 then i() end
if menu == 10 then j() end
if menu == 11 then k() end
if menu == 12 then l() end
if menu == 13 then m() end
if menu == 14 then n() end
if menu == 15 then o() end
if menu == 16 then p() end
if menu == 17 then q() end
if menu == 18 then r() end
if menu == 19 then s() end
if menu == 20 then t() end
if menu == 21 then u() end
if menu == 22 then v() end
if menu == 23 then w() end
if menu == 24 then x() end
if menu == 25 then y() end
if menu == 26 then z() end
if menu == 27 then aa() end
if menu == 28 then bb() end
if menu == 29 then Exit() end
XGCK=-1
end





function a()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setVisible(false)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
gg.searchNumber("1.72448539734~1.72448551655", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.72448539734~1.72448551655", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setVisible(false)
gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(350)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("-999", gg.TYPE_FLOAT)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("天线")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
gg.searchNumber("1.57410383224", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("99", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("四角天线开启")
end



function b()
 gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
 
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC) 
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) 
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1.8", gg.TYPE_FLOAT) gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功") end




function c()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
	 gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.8", gg.TYPE_FLOAT)
	 gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("锁头开启成功")
	 gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
end



function d()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_CODE_APP)
gg.searchNumber("-1.2701581e28;-1.4186147e28;-1.3262672e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.2701581e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e()
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](32)
  gg.searchNumber("0.01~0.4;200D;100D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01~0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.038", gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("枪械射速开启成功")
end



function f()
fw= gg[string.char(tonumber("70",16))..string.char(tonumber("72",16))..string.char(tonumber("6f",16))..string.char(tonumber("6d",16))..string.char(tonumber("70",16))..string.char(tonumber("74",16))]({i='手持输入目前枪械子弹(子弹数不能低于2)'}, {i='2'})
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_ANONYMOUS)
gg.searchNumber(""..fw["i"]..";0;0;1;1;1::21",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1",gg.TYPE_DWORD)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("全抢自动")
end



function g()
gg[string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("74",16))]("开的时候不要乱动\n提前准备好胶囊")
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](16)
  gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("99", gg.TYPE_FLOAT)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
  gg.searchNumber("0.07999999821;0.5;1;1.5::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    do
      for _FORV_3_ = 1, n do
        gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("75",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))]({
          [1] = {
            address = jz[_FORV_3_].address + 54,
            flags = gg.TYPE_FLOAT,
            value = "2.82080483437"
          }
        })
      end
    end
  end
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
  gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.95", gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("站着遁地开启成功")
end



function h()
os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/cache")
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("环境异常解决第一步开启成功")
end



function i()
os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/files")
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("环境异常解决第二步开启成功，请重启游戏")
end



function j()
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
    gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_ANONYMOUS)
    gg.searchNumber("1109393408;1059145646:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1109393408", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1,112,593,408", gg.TYPE_DWORD)
    gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("加长拉钩钩距离开启成功")
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  end



function k()
  F = gg[string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("74",16))]("爬墙", "开启", "关闭")
  if F == 1 then
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
    gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("50", gg.TYPE_FLOAT)
    gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("爬墙")
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  elseif F == 2 then
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
    gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;50::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.07999999821", gg.TYPE_FLOAT)
    gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("爬墙关闭")
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  end
end



function l()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
	 gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
	 gg.searchNumber("0.4999999702;0.07999999821;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("15.964513", gg.TYPE_FLOAT)
	 gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("飞天开启成功")
	 gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
end



function m()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setVisible(false)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0",gg.TYPE_DWORD)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("无后座开启成功")
end



function n()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_ANONYMOUS)
gg.searchNumber('1,055,286,886;1,065,353,216;1,067,869,798:9',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1,055,286,886',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]('-99',gg.TYPE_DWORD)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("连跳穿墙开启")
end



function o()
F = gg[string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("74",16))]("水上行走", "开启", "关闭","退出")
if F == 1 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.95", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
elseif F == 2 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.95;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.07999999821", gg. TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("关闭成功")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
end
end



function p()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_ANONYMOUS)
gg.searchNumber("1128792064;100;100F",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("99999999",gg.TYPE_DWORD)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("加特林不红")
end



function q()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setVisible(false)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;9.0283548e-37;9.02825794e-37;9.02865255e-37;9.02861309e-37;-1.30940708e25;-1.30683878e21;-3.69511342e20;-9.38598081e22;-8.24338876e19;-1.22781529e23;-3.83692277e21:49",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.10000000149",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("隐身开启成功")
end



function r()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
	 gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
	 gg.searchNumber("1.40129846e-45F;4.25994733e-43F;3.58732407e-43F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))]({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("透视开启成功")
	 gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
end



function s()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_VIDEO)
  gg.searchNumber("3.7470893e-29;112D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("6", gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("骁龙开启成功")
end



function t()
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_VIDEO)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("6", gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("透视-人物物品小范围")
end



function u()
  F = gg[string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("74",16))]("三种视角", "第三人称", "第一人称[偏移]", "第一人称")
  if F == 1 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("-9", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("第三人称[扩大]开启成功")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  elseif F == 2 then
qmnb = {
{["memory"] = 32},
{["name"] = "第一人称"},
{["value"] = 0.2609032392501831, ["type"] = 16},
{["lv"] = 0.550000011920929, ["offset"] = 20, ["type"] = 16},
{["lv"] = -3.799999952316284, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
  elseif F == 3 then
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("-1", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("第一人称开启成功")
 end
end


function v()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
 
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC) 
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) 
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("2.1", gg.TYPE_FLOAT) gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功") end




function w()
F = gg[string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("74",16))]("多选加速", "稳定加速", "中等加速","高等加速")
if F == 1 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1.3", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
elseif F == 2 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1.5", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
elseif F == 3 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1.7", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
end
end



function x()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("蹦蹦车开启失败")
else
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("100",gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("蹦蹦车天线开启成功")
end
end



function y()
  F = gg[string.char(tonumber("61",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))..string.char(tonumber("74",16))]("两种人物上色", "蓝", "白")
  if F == 1 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("5",gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
  elseif F == 2 then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("99",gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
  end
end



function z()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](1048576)
  gg.searchNumber("983,055D;3.7470893e-29;3.25;128D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("6",gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("物品透视开启成功")
end



function aa()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0.08810002004", gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("注入代码中")
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
local Name="自瞄10"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
local tp2 = {{0, 0x11C, true},}
local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](32)
  gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("", gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("死锁20")
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]('99',gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("自瞄40")
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]('99',gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("自瞄80")
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]('99',gg.TYPE_FLOAT)
  gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("自瞄开启成功")
end



function bb()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("61",16))..string.char(tonumber("6e",16))..string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))](gg.REGION_C_ALLOC)
gg.searchNumber('41d;2.25f::5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2.25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(300)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]('99',gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("天空黑色开启成功")
end




function Exit()
print("欢迎⊙ω⊙使用！")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '我不见人'
while(true)do
if gg[string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](true) then
XGCK=1
gg.setVisible(false)
end
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
if XGCK==1 then
Main()
end
end















