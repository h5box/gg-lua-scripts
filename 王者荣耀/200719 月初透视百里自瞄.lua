
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.clearResults() gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end 
end end end
sleep=30
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
t[1].address = addr -0x88
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0x80
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x44
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x3C
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0x88
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = false
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0x80
t[2].freeze = false
t[3] = {}
t[3].address = addr -0x44
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x3C
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end


function getsendaddr()
gg.clearResults()
Loading={
{["memory"] = gg.REGION_ANONYMOUS},
{["Projects"] = "256"},
{["flags"] = gg.TYPE_DWORD, ["value"] = 25000},
{["address"] = 0x4, ["flags"] = gg.TYPE_DWORD, ["lv"] = 0},
{["address"] = 0x8, ["flags"] = gg.TYPE_DWORD, ["lv"] = 0},
{["address"] = 0xC, ["flags"] = gg.TYPE_DWORD, ["lv"] = 0},
{["address"] = -0x58, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1092616192},
{["address"] = -0x5C, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1092616192},
}Loading1={
{["address"] = -0x54, ["flags"] = gg.TYPE_DWORD, ["value"] = gg.TYPE_DWORD, ["freeze"] = false},
}LoadingQ(Loading) gg.loadResults(gg.getListItems()) gg.clearList()
jg=gg.getResults(1)
gg.sendaddr=jg[1].address 
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
  gg.clearResults()
  Loading={
  {["memory"] = gg.REGION_C_ALLOC},
  {["Projects"] = "XY"},
  {["flags"] = gg.TYPE_DWORD, ["value"] = 999999},
  {["address"] = 0xAC, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1448607744},
  {["address"] = 0xCC, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1448673280},
  {["address"] = 0xF8, ["flags"] = gg.TYPE_DWORD, ["lv"] = 256},
  }Loading1={
  {["address"] = 0xD0, ["flags"] = gg.TYPE_DWORD, ["value"] = gg.TYPE_DWORD, ["freeze"] = false},
  }LoadingQ(Loading) gg.loadResults(gg.getListItems()) gg.clearList()
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
  t[1].address = baseaddr[i] + 0x1C
  t[1].flags = gg.TYPE_DWORD
  t[2] = {}
  t[2].address = baseaddr[i] + 0x24
  t[2].flags = gg.TYPE_DWORD
  t = gg.getValues(t)
  x = t[1].value
  y = t[2].value
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
gg.clearResults()
Loading={
{["memory"] = gg.REGION_ANONYMOUS},
{["Projects"] = "id"},
{["flags"] = gg.TYPE_DWORD, ["value"] = "200024~200046"},
{["address"] = -0xE4, ["flags"] = gg.TYPE_DWORD, ["lv"] = 257},
{["address"] = -0xEC, ["flags"] = gg.TYPE_DWORD, ["lv"] = 1},
{["address"] = -0xFC, ["flags"] = gg.TYPE_DWORD, ["lv"] = 0},
{["address"] = 0x44, ["flags"] = gg.TYPE_DWORD, ["lv"] = 0},
{["address"] = 0x48, ["flags"] = gg.TYPE_DWORD, ["lv"] = 0},
}Loading1={
{["address"] = -0x134, ["flags"] = gg.TYPE_DWORD, ["value"] = gg.TYPE_DWORD, ["freeze"] = false},
}LoadingQ(Loading) gg.loadResults(gg.getListItems()) gg.clearList()
playertable=gg.getResults(10)
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
  if checkTarget(me, v, xytable, 26800) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / 64000
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
  id = result[i].value
  addr = result[i].address + 0xF00
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = result[i+10].value
  addr = result[i+10].address + 0xF00
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
  temp.hp = readmem(gg.hpaddr[v], gg.TYPE_DWORD)/8192
  if temp.hp ~= 0 then
    table.insert(hptable, temp)
  end
end
table.sort(hptable,hpsort)
return hptable
end
function hpsort(a, b) return a.hp <= b.hp end


function Main()
menu1 = gg.choice({
  "蓝方自瞄",
  "红方自瞄",
  "调整频率",
  "开启透视",
  "退出脚本",
}, nil)
if menu1 == 4 then  
NCts() end
if menu1 == 1 then  
selectgroupLF() end
if menu1 == 2 then  
selectgroupHF() end
if menu1 == 3 then sleep = gg.prompt({
  "30"}, {1})[1]
if sleep > 0 then gg.toast("当前频率"..sleep) else gg.toast("不能小于0") sleep=30 end end
if menu1 == 5 then 
gg.clearList()  gg.clearResults() 
print ("楠楓王者荣耀") 
os.exit() end  XGCK = -1 end

function NCts()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("158000~162000", gg.TYPE_XOR, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("FE50", -1, gg.TYPE_XOR, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("161644", gg.TYPE_XOR)
gg.toast("透视已开启") 
 end 

function selectgroupLF()
gg.clearList()
sleep=30
flag = false
enhp={}
gg.hist = {}
gg.setRanges(gg.REGION_C_ALLOC)
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
gg.setRanges(gg.REGION_ANONYMOUS)
getsendaddr()
badgroup = getbluegroup()
gg.toast("超级瞄准已部署")
 while true do
 skslock(locate_addr, badgroup)
end 
end


function selectgroupHF() 
gg.clearList()
sleep=30
flag=false
enhp={}
gg.hist = {}
gg.setRanges(gg.REGION_C_ALLOC)
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
gg.setRanges(gg.REGION_ANONYMOUS)
getsendaddr()
badgroup = getredgroup()
gg.toast("自瞄开启成功")
 while true do
 skslock(locate_addr, badgroup)
end
end


while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
Main()
end
end