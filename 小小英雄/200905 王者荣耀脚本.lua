function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags  end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end end end  for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)  end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("无数据", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.clearResults() gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end end end end  sleep=45 function readmem(addr,flag) local t = {} t[1] = {} t[1].address = addr t[1].flags = flag t = gg.getValues(t) local result = t[1].value return result end function freezexy(x, y) local t = {} local addr = gg.sendaddr t[1] = {} t[1].address = addr -0x88 t[1].flags = gg.TYPE_FLOAT t[1].value = x t[1].freeze = true t[2] = {} t[2].address = addr -0x80 t[2].flags = gg.TYPE_FLOAT t[2].value = y t[2].freeze = true t[3] = {} t[3].address = addr -0x44 t[3].flags = gg.TYPE_FLOAT t[3].value = x t[3].freeze = true t[4] = {} t[4].address = addr -0x3C t[4].flags = gg.TYPE_FLOAT t[4].value = y t[4].freeze = true gg.addListItems(t) end function unfreeze() local t = {} local addr = gg.sendaddr t[1] = {} t[1].address = addr -0x88 t[1].flags = gg.TYPE_FLOAT t[1].freeze = false t[2] = {} t[2].flags = gg.TYPE_FLOAT t[2].address = addr -0x80 t[2].freeze = false t[3] = {} t[3].address = addr -0x44 t[3].flags = gg.TYPE_FLOAT t[3].freeze = false t[4] = {} t[4].address = addr -0x3C t[4].flags = gg.TYPE_FLOAT t[4].freeze = false gg.addListItems(t) end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end ﻿function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.clearResults() gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end 
end end end
function SearchWrite(Search, Write, Type, Name)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
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
                tmp = gg.getValues(tmp)       
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
                   offset = w[1] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
               end
               end
        gg.loadResults(t)
        else  
        gg.clearResults()   
        gg.toast(Name.."开启失败❓请开启游戏设置灵敏度调节最高")
        end
    else
    end
end
sleep=15
function readmem(addr,flag)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = flag
t = gg.getValues(t)
local result = t[1].value
return result
end
function freezexy(x, y)
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0x84
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0x7C
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x40
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x38
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0x84
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = false
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0x7C
t[2].freeze = false
t[3] = {}
t[3].address = addr -0x40
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x38
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end

function Speedup()
gg.clearResults()
Loading={
{["memory"] = gg.REGION_C_ALLOC},
{["Projects"] = "Reinforce"},
{["flags"] = gg.TYPE_DWORD, ["value"] = 1023960469},
{["address"] = -4, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1051372203},
{["address"] = -8, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1065353216},
}Loading1={
{["address"] = -8, ["flags"] = gg.TYPE_FLOAT, ["value"] = 1.16},
}LoadingQ(Loading)
end

function getsendaddr()
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="技能线"
local dataType = gg.TYPE_DWORD
local tb1 = {{25000,0x0},{0,0x4},{0,0x8},{0,0xC},{1092616192,-0x6C},{1092616192,-0x70}}
local tb2 = {{-0x68}} 
SearchWrite(tb1,tb2,dataType,Name)
jg=gg.getResults(1)
gg.sendaddr=jg[1].address 
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
gg.clearResults()     
gg.setRanges(gg.REGION_C_ALLOC)
local Name="XY_ca"
local dataType = gg.TYPE_DWORD
local tb1 = {{999999,0x0},{1448607744,0xAC},{1448673280,0xCC},{256,0xF8},{1448673280,0x284}}
local tb2 = {{0x288}} 
SearchWrite(tb1,tb2,dataType,Name)
if gg.getResultCount()==10 then resultca = gg.getResults(20) end
if gg.getResultCount()==20 then resultca = gg.getResults(20,10) end
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="id_A"
local dataType = gg.TYPE_DWORD
local tb1 = {{"200024~200046",0x0},{257,-0xE4},{1,-0xEC},{0,-0xFC},{0,0x44},{0,0x48}}
local tb2 = {{-0x134}} 
SearchWrite(tb1,tb2,dataType,Name)
result=playertable
result = gg.getResults(20)
relen=gg.getResultCount()
enhp=result
if relen<=10 then
for i=1, 10 do
   id = readmem(result[i].address, gg.TYPE_DWORD)
    addr = result[i].address
    locate_addr[id] = addr
end
else
for i=1,10 do
   id = readmem(result[i+10].address, gg.TYPE_DWORD)
    addr = result[i+10].address
    locate_addr[id] = addr
    end
end
return locate_addr
end

function getlocate(baseaddr)
local result, id, x, y
local xytable = {}
for i, v in pairs(baseaddr) do
  t = {}
  t[1] = {}
  t[1].address = baseaddr[i] + 0x14
  t[1].flags = gg.TYPE_FLOAT
  t[2] = {}
  t[2].address = baseaddr[i] + 0x1C
  t[2].flags = gg.TYPE_FLOAT
  t = gg.getValues(t)
  x = t[1].value*1000
  y = t[2].value*1000
  xytable[i] = {}
  xytable[i][1] = x
  xytable[i][2] = y
  xytable[i][3] = os.clock()
end
return xytable
end

function getdistance(x1,y1,x2,y2)
return math.sqrt(math.pow(y2 - y1, 2) + math.pow(x2 - x1, 2))
end

function checkTarget(me,target,xytable,ld)
local distance = getdistance(xytable[me][1], xytable[me][2], xytable[target][1], xytable[target][2])
if distance <= ld  then
  return true
else
  return false
end
end

function preload(a,b,t)
local distance, usetime, speed, rundis, alldis, bili, xadd, yadd
if a[1] == b[1] and a[2] == b[2] then
  return a[1], a[2]
end
distance = getdistance(a[1], a[2], b[1], b[2])
usetime = b[3] - a[3]
speed = distance / usetime
rundis = speed * t
alldis = rundis + distance
bili = alldis / distance
xadd = (b[1] - a[1]) * bili
yadd = (b[2] - a[2]) * bili
return a[1] + xadd, a[2] + yadd
end

function getqt(a,b)
local c = math.sqrt(a * a + b * b)
return a / c, b / c
end

function getplayer()
local playertable = {}
local playerid, heroid
playertable=result
return playertable
end

function getbluegroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
     playgroup=readmem(v.address+0x3C, gg.TYPE_DWORD) --判断红蓝(正负)
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD) --同步XYid
    heroid=readmem(v.address+0x58, gg.TYPE_DWORD) --英雄代表id
    if playgroup<0 then
    if heroid==196 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
        playgroup=readmem(v.address+0x3C, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup >0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function getredgroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
    playgroup=readmem(v.address+0x3C, gg.TYPE_DWORD)
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x58, gg.TYPE_DWORD)
    if playgroup>0 then
    if heroid==196 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x3C, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup <0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function skslock(locate_addr, badgroup)
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
local me = gg.me
local xytable
local locked = false
local distance, needtime, prex, prey, ax, ay, fixgroup, v
xytable = getlocate(locate_addr)
fixgroup = gethptable(badgroup)
for i, val in pairs(fixgroup) do
  v = val.id
--  print(val.id)
  if checkTarget(me, v, xytable, 26750) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / 80000
      prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + needtime)
      ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
      ax = ax*1
      ay = ay*1
      freezexy(ax, ay)
      locked = true
  end
    break
  end
end
if locked == false then
 unfreeze()
end
gg.hist = xytable
gg.sleep(sleep)
end

function init_hpaddr()
local hpaddr = {}
local id, addr
local result=enhp
if #result<=10 then
for i=1, 10 do
  id = resultca[i].value
  addr = resultca[i].address + 0xD50
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = resultca[i+10].value
  addr = resultca[i+10].address + 0xD50
  hpaddr[id] = addr
end
end
gg.hpaddr = hpaddr
return hpaddr
end

function gethptable(idlist)
local hptable = {}
local temp, id, hp
local newtable = {}
for i, v in pairs(idlist) do
  temp = {}
  temp.id = v
  temp.hp = readmem(gg.hpaddr[v], gg.TYPE_DWORD)
  if temp.hp ~= 0 then
    table.insert(hptable, temp)
  end
end
table.sort(hptable,hpsort)
return hptable
end
function hpsort(a, b) return a.hp <= b.hp end

function C()
menu1 = gg.choice({
  "开启自瞄（蓝方）",
  "开启自瞄（红方）",
  "调整频率（调节）",
  "返回上一页",
}, nil,"记得好好上分")
if menu1 == 1 then selectgroupLF() end
if menu1 == 2 then selectgroupHF() end
if menu1 == 3 then sleep = gg.prompt({
  "输入你想要的预判间隔：默认15 ms\n    更小的预判间隔能够更快的捕捉敌方走位的变化,\n    更小的预判间隔会导致配置低的手机发生卡顿"}, {30})[1]
if sleep > 0 then gg.toast("当前频率"..sleep) else gg.toast("不能小于1")  end end
if menu1 == 4 then HOME() end
XGCK=-1
end

function selectgroupLF()
gg.clearList()
flag = false
enhp={}
gg.hist = {}
Speedup()
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getbluegroup()
gg.toast("超级瞄准已部署")
 while true do
 skslock(locate_addr, badgroup)
end 
end


function selectgroupHF() 
gg.clearList()
flag=false
enhp={}
gg.hist = {}
Speedup()
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getredgroup()
gg.toast("超级瞄准已部署")
 while true do
 skslock(locate_addr, badgroup)
end
end
function Main()
menu = gg.choice({
'    王者内存透视上帝视角',
'    王者内存防封',
'    王者百里自瞄',
'    （）',
'安全退出'},
nil,'！')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then Main2() end
if menu == 5 then Exit() gg.clearList() os.exit() end
XGCK=-1
end



function A()
menu1 = gg.choice({
'    [内存透视1]←泉水开启',
'    [内存透视2]←泉水开启（透视1闪退的用透视2）',
'    [上帝视角]←泉水开启',
'    [王者锁星](大厅)←水晶结束前关闭网络 三秒在开启网络',
'返回上一页'},
nil,'')
if menu1 == 1 then a1() end
if menu1 == 2 then a2() end
if menu1 == 3 then a4() end
if menu1 == 4 then a3() end
if menu1 == 5 then HOME() end
GLWW=-1
end



function B()
menu1 = gg.choice({
'    [防封1]←登录界面开启（更新中）',
'    [防封2]←大厅开启（框架用户稳定/n水晶结束前关闭网络三秒在开启网络）',
'    [防封3]←泉水开启（更新中）',
'返回上一页'},
nil,'')
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then HOME() end GLWW=-1 end



function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("154444~174444", gg.TYPE_XOR, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("FD38", -1, gg.TYPE_XOR, gg.SIGN_EQUAL, 0, -1)
gg.getResults(89)
gg.editAll("160001", gg.TYPE_XOR)
gg.toast("内存透视开启成功")
end


function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("154444~174444", gg.TYPE_XOR, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("FD38", -1, gg.TYPE_XOR, gg.SIGN_EQUAL, 0, -1)
gg.getResults(89)
gg.editAll("160444", gg.TYPE_XOR)
gg.toast("内存透视开启成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(";1.51.1.7", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("55", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("56", gg.TYPE_WORD)
gg.toast("锁星开启成功")
end
function a4()
gg.clearResults()
gg.searchNumber("1,081,006,571;-1,082,125,398;-1,082,130,432;-1,088,838,298::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,082,130,432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1,079,613,850", gg.TYPE_DWORD)
gg.toast("上帝视角开启成功")
end



function b1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("5221;1::24",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("5221", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
t = gg.getResults(10)
gg.editAll("5227", gg.TYPE_DWORD)
for _FORV_3_ = 1, 20 do
t[_FORV_3_].value = "5227"
t[_FORV_3_].freeze = true
t[_FORV_3_].freezeType = gg.FREEZE_NORMAL
gg.addListItems(t)
gg.clearResults()
gg.clearList(true)
gg.toast("登录防封开启成功")  end end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_ALLOC)
gg.searchNumber(";1.51.1.5")
gg.getResults(9999)
gg.editAll(";1.99.9.999", gg.TYPE_BYTE)
gg.toast("第一步")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_ALLOC)
gg.searchNumber(";1.51.1.7")
gg.getResults(9999)
gg.editAll(";1.99.9.999", gg.TYPE_WORD)
gg.toast("开启成功")
end

function b3()
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;2577::24",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2577", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  t = gg.getResults(10)
  gg.editAll("1", gg.TYPE_DWORD)
  for _FORV_3_ = 1, 1000 do
    t[_FORV_3_].value = "1"
    t[_FORV_3_].freeze = true
    t[_FORV_3_].freezeType = gg.FREEZE_NORMAL
    gg.addListItems(t)
    gg.clearResults()
    gg.clearList(true)
    gg.toast("泉水防封开启成功")
    end end

function Exit()
print("玩着王者，换着so，挂着拦截不香吗？")
os.exit() end function HOME()
lw=1 Main() end cs =''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end