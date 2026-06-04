
zz=true
aa="强力模式"
sleep=10
fwq="体验服"


sn=25000
yx=196
yp=64000
jn=26800
Name="百里守约"

------------------------------------------------------------------------------------------------------------------

function Main()
  menu1 = gg.choice({
    "开启脚本",
    "脚本设置",
    "退出脚本"
  },nil,fwq.." "..Name.."  "..aa.."  "..sleep.." ms")
  if menu1 == 1 then
    SBM()
  end
  if menu1 == 2 then
    ZY()
  end
  if menu1 == 3 then
    gg.clearList()
    gg.clearResults()
    print ("欢迎加入反馈群:597892838 ")
    os.exit()
  end
end

function ZY()
  menu2 = gg.choice({
    "英雄:  "..Name,
    "频率:  "..sleep,
    "模式:  "..aa
  }, nil,os.date"%Y年-%m月-%d日 %H时 %M分  ")
  if menu2 == 1 then
    xzhero() Main()
  end
  if menu2 == 2 then
    v_value = gg.prompt({"输入你想要的预判间隔：默认10 ms"},{[1] ="10"})
    if v_value == nil then
      gg.toast("取消")
     else
      sleep = v_value[1]
      if sleep > 0 then
        gg.toast("当前频率:"..sleep)
       else
        gg.toast("不能小于1")
        sleep=10
      end
    end
    Main()
  end
  if menu2 ==3 then
    if aa=="强力模式" then
      zz=false
      aa="追踪模式"
     else
      zz=true
      aa="强力模式"
    end
    Main()
  end
end



------------------------------------------------------------------------------------------------------------------

function SBM()
  gg.clearList()
  gg.clearResults()
  flag=false
  enhp={}
  gg.hist = {}
  while (true) do
    if xueliang() then
      break
    end
  end
  honglan()
  locate_addr = init_locate()
  init_hpaddr()
  local badgroup
  getlocate(locate_addr)
  getsendaddr()
  if (lhpd == "1") then
    badgroup = getbluegroup()
   else
    badgroup = getredgroup()
  end
  gg.toast("开启成功")
  while true do
      skslock(locate_addr, badgroup)
      if gg.isVisible(true) then
        gg.setVisible(false)
        Main()
     end
  end
end

function honglan()
  gg.setRanges(gg.REGION_C_ALLOC)
  
local tb1={
{["类型"]=  4  ,["主特征码"] =  1018444120  } , 
{["类型"]=  4  ,["偏移"]=  -1116  ,["副特征码"]=  2  },
{["类型"]=  4  ,["偏移"]=  -996  ,["副特征码"]=  -1082125398  },
{["类型"]=  4  ,["偏移"]=  -20  ,["副特征码"]=  16777216  },
{["类型"]=  4  ,["偏移"]=  -12  ,["副特征码"]=  65793  },
{["类型"]=  4  ,["偏移"]=  -8  ,["副特征码"]=  1  },
}

 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -932  , ["冻结"] =  false  , ["修改"] =  false  } , 
} LongTao(tb1, tb2)
  local whz = gg.getResults(1)
  if whz[1].value > 0 then
    lhpd = 1
   else
    lhpd = -1
  end
end



function xueliang()
  gg.setRanges(gg.REGION_C_ALLOC)
local tb1={
{["类型"]=  4  ,["主特征码"] =  156250000  } , 
{["类型"]=  4  ,["偏移"]=  0x8  ,["副特征码"]=  12500  },
{["类型"]=  4  ,["偏移"]=  0xA24  ,["副特征码"]=  1610612736  },
{["类型"]=  4  ,["偏移"]=  0xA30  ,["副特征码"]=  8192  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  0xA60  , ["冻结"] =  false  , ["修改"] =  false  } , 
} LongTao(tb1, tb2)
  
  relen=gg.getResultCount()
  if relen<10 then
    fhz=false
   else
    fhz=true
    resultca = gg.getResults(20)
  end
  return fhz
end




function getsendaddr()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local tb1={
    {["类型"]= 4 ,["主特征码"] = sn } ,
    {["类型"]= 4 ,["偏移"]= -0x84 ,["副特征码"]= 1092616192 },
    {["类型"]= 4 ,["偏移"]= -0x80 ,["副特征码"]= 1092616192 },
  }
  local tb2={
    {["类型"] = 4 ,["偏移"] = -0x7C , ["冻结"] = false , ["修改"] = false } ,
  } LongTao(tb1, tb2)
  jg=gg.getResults(1)
  gg.sendaddr=jg[1].address
  return gg.sendaddr
end





function init_locate()
  local locate_addr = {}
  local id, addr
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
local tb1={
{["类型"]=  4  ,["主特征码"] = "200026~200044"   } , 
{["类型"]=  4  ,["偏移"]=  0x4C  ,["副特征码"]=  12500  },
{["类型"]=  4  ,["偏移"]=  -0xE4  ,["副特征码"]=  257  },
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -0x13C  , ["冻结"] =  false  , ["修改"] =  false  } , 
} LongTao(tb1, tb2)
  gg.refineNumber("24~33",4)
  result=playertable
  result = gg.getResults(20)
  relen=gg.getResultCount()
  enhp=result
  if relen<=20 then
    for i=1, 10 do
      id = readmem(result[i].address, gg.TYPE_DWORD)
      addr = result[i].address
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
    t[1].address = baseaddr[i] + 0x14 --x坐标
    t[1].flags = gg.TYPE_FLOAT
    t[2] = {}
    t[2].address = baseaddr[i] + 0x1C  --y坐标
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
  if distance <= ld then
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
    playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
    playerid=readmem(v.address+0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD)
    if playgroup<0 then
      if heroid==yx then
        gg.me=playerid
        flag = true
      end
    end
  end
  if flag == true then
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
      playerid=readmem(v.address+0, gg.TYPE_DWORD)
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
    playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
    playerid=readmem(v.address+0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD)  --英雄id
    if playgroup>0 then
      if heroid==yx then
        gg.me=playerid
        flag = true
      end
    end
  end
  if flag == true then
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)-- 45000~60000或-60000~-45000
      playerid=readmem(v.address+0, gg.TYPE_DWORD) --24~33
      if playgroup <0 then
        table.insert(badgroup, playerid)
      end
    end
  end
  return badgroup
end

function skslock(locate_addr, badgroup)
  local me = gg.me
  local xytable
  local locked = false
  local distance, needtime, prex, prey, ax, ay, fixgroup, v
  xytable = getlocate(locate_addr)
  fixgroup = gethptable(badgroup)
  for i, val in pairs(fixgroup) do
    v = val.id
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
  if relen<20 then
    for i=1, 10 do
      id = resultca[i].value
      addr = resultca[i].address + 16 --血量
      hpaddr[id] = addr
     end
    else 
      for i=10, 20 do
      id = resultca[i].value
      addr = resultca[i].address + 16
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
t[1].address = addr -0xA8
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0xA0
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x54
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x4C
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA8
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = true
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0xA0
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x54
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x4C
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end

function xzhero()
  FG = gg.choice({
    "百里守约(二技能)",
    "钟馗(二技能)",
    "墨子(二技能)",
    "不知火舞(二技能)",
    "鲁班七号(二技能)",
    "女娲(大招)"
  }, nil)
  if FG == 1 then
    sn=25000
    yx=196
    yp=64000
    jn=26800
    Name="百里守约"
    gg.toast("已选择百里守约")
  end
  if FG == 2 then
    sn=12000
    yx=175
    yp=16000
    jn=13000
    Name="钟馗"
    gg.toast("已选择钟馗")
  end
  if FG == 3 then
    sn=12000
    yx=108
    yp=64000
    jn=13500
    Name="墨子"
    gg.toast("已选择墨子")
  end
  if FG == 4 then
    sn=10000
    yx=157
    yp=64000
    jn=13400
    Name="不知火舞"
    gg.toast("已选择不知火舞")
  end
  if FG == 5 then
    sn=200000
    yx=112
    yp=64000
    jn=99999999
    Name="鲁班七号"
    gg.toast("已选择鲁班七号")
  end
  if FG == 6 then
    sn=200000
    yx=179
    yp=64000
    jn=99999999
    Name="女娲"
    gg.toast("已选择女娲")
  end
end
------------------------------------------------------------------------------------------------------------------


-----------开源百里自瞄 ,   龙套 二改优化

---------此脚本完全免费且开源,请勿倒卖


function SearchWrite(tb1, tb2, dataType, Name)
  local lt1={}
  local lt2={}
  local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType }
  table.insert(lt1,1,mm1)
  for i=2 , #tb1 do
    local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}
    table.insert(lt1,i,mm2)
  end
  for i=1 , #tb2 do
    if tb2[i][2]~=nil then
      local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}
      table.insert(lt2,i,mm3)
     else
      local mm3={["修改"] = false,["偏移"] = tb2[i][1]}
      table.insert(lt2,i,mm3)
    end
  end
  LongTao(lt1, lt2 )
end

function LongTao(Search, Write)
  gg.clearResults()
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
      gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
        lx =Search[k]["类型"]
       else
        lx = Search[1]["类型"]
      end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
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
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
            lx = w["类型"]
           else
            lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
       gg.toast("未搜到数据！")
      return false
    end
   else
     gg.toast("未搜到数据！")
    return false
  end
end


while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    Main()
  end
end