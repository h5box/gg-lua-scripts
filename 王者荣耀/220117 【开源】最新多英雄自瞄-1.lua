--[[
二改圈钱死妈
版权Gxl
]]

sleep=50
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
t[1].address = addr -112
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -104
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -44
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -36
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -112
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = false
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -104
t[2].freeze = false
t[3] = {}
t[3].address = addr -44
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -36
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end

function getsendaddr()
gg.clearResults()
gg.searchNumber("1,092,616,192;1,092,616,192;256::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(1)
gg.sendaddr=jg[1].address
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
gg.clearResults()
gg.searchNumber('1448673280;24~33;256;200~800;1448607744;1448673280;1448607744::139', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("24~33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
  t[1].address = baseaddr[i] + 24
  t[1].flags = gg.TYPE_DWORD
  t[2] = {}
  t[2].address = baseaddr[i] + 32
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
gg.searchNumber("200026~200044;00000000h;00000000h;00000000h;00000000h;01000000h;000030D4h::41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("200026~200044", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
playertable=gg.getResults(10)
return playertable
end

function getbluegroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
     playgroup=readmem(v.address-60, gg.TYPE_DWORD)
    playerid=readmem(v.address-116, gg.TYPE_DWORD)
    heroid=readmem(v.address-36, gg.TYPE_DWORD)
    if playgroup<0 then
    if heroid==yx then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
        playgroup=readmem(v.address-60, gg.TYPE_DWORD)
       playerid=readmem(v.address-116, gg.TYPE_DWORD)
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
    playgroup=readmem(v.address-60, gg.TYPE_DWORD)
    playerid=readmem(v.address-116, gg.TYPE_DWORD)
    heroid=readmem(v.address-36, gg.TYPE_DWORD)
    if playgroup>0 then
    if heroid==yx then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address-60, gg.TYPE_DWORD)
       playerid=readmem(v.address-116, gg.TYPE_DWORD)
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
--  print(val.id)g
--x
--l
  if checkTarget(me, v, xytable, jn) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / yp
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
  addr = result[i].address + 3768
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = result[i+10].value
  addr = result[i+10].address + 3768
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

Name="未选择英雄"
function Main()
menu1 = gg.choice({
  "开启自瞄",
  "选择英雄",
  "调整频率",
  "退出脚本"
 }, nil, "英雄:"..Name)
if menu1 == 1 then
if Name == "未选择英雄"then
dh=gg.alert("请先选择需要自瞄的英雄","选择英雄","NO")
if dh == 1 then
xzhero()
end
else
   selectgroup() end end
   if menu1 == 2 then
   xzhero() end
   
   if menu1 == 3 then
   sleep = gg.prompt({
  "输入你想要的预判间隔：默认50 ms\n    更小的预判间隔能够更快的捕捉敌方走位的变化,\n    更小的预判间隔会导致配置低的手机发生卡顿"
}, {50})[1]
if sleep > 1 then
  gg.toast("当前频率"..sleep)
  else
   gg.toast("不能小于0")
  sleep=50
  end
   end
if menu1 == 4 then
gg.clearList()
os.exit()
end
XGCK=-1
end

function xzhero()
FG = gg.choice({
"百里守约(二技能)",
"钟馗(二技能)",
"墨子(二技能)",
"不知火舞(二技能)",
"小乔(一技能)",
"马可波罗(一技能)",
"安琪拉(二技能)",
"兰陵王(二技能)",
"虞姬(一技能)",
"鲁班七号(二技能)",
"狄仁杰(大招)",
"女娲(大招)",
"干将莫邪(二三技能)",
"玄策(二技能)"
}, nil)
if FG == 1 then
yx=196
yp=64000
jn=26800
Name="百里守约"
gg.toast("已选择百里守约")
Main()
end
if FG == 2 then
yx=175
yp=16000
jn=13000
Name="钟馗"
gg.toast("已选择钟馗")
Main()
end
if FG == 3 then
yx=108
yp=64000
jn=13500
Name="墨子"
gg.toast("已选择墨子")
Main()
end
if FG == 4 then
yx=157
yp=64000
jn=13400
Name="不知火舞"
gg.toast("已选择不知火舞")
Main()
end
if FG == 5 then
yx=106
yp=64000
jn=11300
gg.toast("已选择小乔")
Name="小乔"
Main()
end
if FG == 6 then
yx=332
yp=32000
jn=12500
Name="马可波罗"
gg.toast("已选择马可波罗")
Main()
end
if FG == 7 then
yx=142
yp=64000
jn=11000
Name="安琪拉"
gg.toast("已选择安琪拉")
Main()
end
if FG == 8 then
yx=153
yp=64000
jn=11000
Name="兰陵王"
gg.toast("已选择兰陵王")
Main()
end
if FG == 9 then
yx=174
yp=64000
jn=13500
Name="虞姬"
gg.toast("已选择虞姬")
Main()
end
if FG == 10 then
yx=112
yp=64000
jn=99999999
Name="小短腿"
gg.toast("已选择鲁班")
Main()
end
if FG == 11 then
yx=133
yp=64000
jn=11000
Name="狄仁杰"
gg.toast("已选择狄仁杰")
Main()
end
if FG == 12 then
yx=179
yp=64000
jn=99999999
Name="女娲"
gg.toast("已选择女娲")
Main()
end
if FG == 13 then
yx=382
yp=64000
jn=13500
Name="干将莫邪"
gg.toast("已选择干将")
Main()
end
if FG == 14 then
yx=195
yp=32000
jn=12500
Name="百里玄策"
gg.toast("已选择百里玄策")
Main()
end


end

function selectgroup()
menu2 = gg.choice({
  "你是蓝方",
  "你是红方"
}, nil)
if menu2 == 1 then
sleep=50
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
--print(gg.me)
while true do
  skslock(locate_addr, badgroup)
end
end
if menu2 == 2 then
sleep=50
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
gg.toast("Open Success")
while true do
  skslock(locate_addr, badgroup)

end
end
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end