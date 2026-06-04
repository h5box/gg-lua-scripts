
hszmx=-108
bszmx=-40
pmx=2100/2
pmy=1080/2
local jnpy,ygjs,zdxl,yxid,yzb,yxhp,xzb,matrix,pd,nm,hy,xm,zm,hc,bjjz,yxzb,hy1={},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}

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
  t[1].address = addr + hszmx - 8
  t[1].flags = gg.TYPE_FLOAT
  t[1].value = x
  t[1].freeze = true
  t[2] = {}
  t[2].address = addr + hszmx
  t[2].flags = gg.TYPE_FLOAT
  t[2].value = y
  t[2].freeze = true
  t[3] = {}
  t[3].address = addr + bszmx - 8
  t[3].flags = gg.TYPE_FLOAT
  t[3].value = x
  t[3].freeze = zz
  t[4] = {}
  t[4].address = addr + bszmx
  t[4].flags = gg.TYPE_FLOAT
  t[4].value = y
  t[4].freeze = zz
  gg.addListItems(t)
end
function unfreeze()
  local t = {}
  local addr = gg.sendaddr
  t[1] = {}
  t[1].address = addr + hszmx - 8
  t[1].flags = gg.TYPE_FLOAT
  t[1].freeze = false
  t[2] = {}
  t[2].flags = gg.TYPE_FLOAT
  t[2].address = addr + hszmx
  t[2].freeze = false
  t[3] = {}
  t[3].address = addr + bszmx - 8
  t[3].flags = gg.TYPE_FLOAT
  t[3].freeze = false
  t[4] = {}
  t[4].address = addr + bszmx
  t[4].flags = gg.TYPE_FLOAT
  t[4].freeze = false
  gg.addListItems(t)
end

function getsendaddr()
  cnmb=10
  gg.setRanges(gg.REGION_ANONYMOUS)
  local tb1={
    {["类型"]= 4 ,["主特征码"] = sn } ,
    {["类型"]= 4 ,["偏移"]= 8 ,["副特征码"]= 1 },
    {["类型"]= 4 ,["偏移"]= 20 ,["副特征码"]= 1092616192 },
    {["类型"]= 4 ,["偏移"]= 24 ,["副特征码"]= 1092616192 },
    {["类型"]= 4 ,["偏移"]= 32 ,["副特征码"]= 1065353216 },
  }
  local tb2={
    {["类型"] = 4 ,["偏移"] = 0 , ["冻结"] = false , ["修改"] = false } ,
  } LongTao(tb1, tb2)
  jg=gg.getResults(1)
  gg.sendaddr=jg[1].address
  return gg.sendaddr
end


function skslock()
  while true do
    gg.sleep(sleep)
    if gg.isVisible(true) then
      gg.setVisible(false)
      yiyz_Main()
    end
    local yxid = gg.getValues(yxid)
    local pd = gg.getValues(pd)
    local hy = gg.getValues(hy)
    local yxhp = gg.getValues(yxhp)
    local zdxl = gg.getValues(zdxl)
    local matrix = gg.getValues(matrix)
    local hc={}
    local xzb = gg.getValues(xzb)
    local yzb = gg.getValues(yzb)
    local jnpy = gg.getValues(jnpy)
    local ygjs=gg.getValues(ygjs)
    local dfsl=0,temp, id, hp,distan, needtime, prex, prey, ax, ay, v
    local xytable={} hptable = {}


    for i=1,nb do
      if hy1[i]~=hy[i].value then
        hyjc(i)
      end
      if nm[i]~=pd[i].value then
        fhy()
      end

      if me ~= i then
        local jn1 =jnpy[i].value/ 8192000;
        local jn2 =jnpy[i+10].value/ 8192000;
        local xt=yxhp[i].value*100/zdxl[i].value
        if xt > 0 then
          dfx=xzb[i].value*lhpd
          dfy=yzb[i].value*lhpd
         else
          xt=0
          dfx=-99999
          dfy=-99999

        end
        local xm=xzb[i].value*0.001
        local zm=yzb[i].value*0.001
        local fksf = xm * matrix[3].value + zm * matrix[11].value + matrix[15].value;
        if fksf>0.01 then
          FX = pmx + (xm * matrix[0].value + zm * matrix[8].value + matrix[12].value) / fksf * pmx;
          FY = pmy - (xm * matrix[1].value + zm * matrix[9].value + matrix[13].value) / fksf * pmy;
          local FW = pmy - (xm * matrix[1].value + matrix[5].value + zm * matrix[9].value +
          matrix[13].value) / fksf * pmy;
          FX = FX - (FY - FW) / 4;
          FY = FY - (FY - FW) / 4;
         else
          FX=0;
          FY=0;
        end
        table.insert(hc,yxid[i].value..","..xt..","..dfx..","..dfy..","..jn1..","..jn2..","..(FX//1)..","..(FY//1)..",\n")
      end
    end

    table.insert(hc,(ygjs[ltyx1].value/1000)..","..(ygjs[ltyx2].value/1000)..","..(ygjs[ltyx3].value/1000)..","..(ygjs[ltyx4].value/1000)..",\n")
   
    
   

    for j=1,nb do
      xytable[j] = {}
      xytable[j][1] = xzb[j].value
      xytable[j][2] = yzb[j].value
      xytable[j][3] = os.clock()
      
      temp = {}
      temp.id = j
      temp.hp = yxhp[j].value
      if temp.hp ~= 0 and  me~=j then
        table.insert(hptable, temp)
      end
    end
    table.sort(hptable,hpsort)
    local locked = false
    for i, val in pairs(hptable) do
      v = val.id
      distan = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      if distan <= jl and gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
        prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + distan / yp)
        ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
        ax = ax*1
        ay = ay*1
        freezexy(ax, ay)
        locked = true
        break
      end
    end
    if locked == false then
      unfreeze()
    end
    gg.hist = xytable
  end
end



function getdistance(x1,y1,x2,y2)
  return math.sqrt(math.pow(y2 - y1, 2) + math.pow(x2 - x1, 2))
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



function hpsort(a, b) return a.hp <= b.hp end



function addr(addr)
  if addr~=nil and addr~="0x0" then
    local t = {}
    t[1]={address=addr,flags=4}
    t=gg.getValues(t)
    return t
   else
    return {{['value']=0,['address']=0}}
  end
end



function read(aa,bb)
  if aa[1].address~=nil then
    local lt={}
    lt[1]={address=aa[1].address+bb,flags=4}
    lt=gg.getValues(lt)
    return lt
   else
    return {{['value']=0,['address']=0}}
  end
end


function readValue(zh,px,py)
  sz=read(zh,px)
  ss=string.format("%#x",sz[1].value & 0xffffffff)
  sl=addr("0x"..ss)
  rg=read(sl,py)
  return rg
end

hy1={}
function hyjc(i)
  hy1[i]=hy[i].value
  if hy[i].value==0 then
    x1=0;
    y1=8;
   else
    x1=12;
    y1=20;
  end
  xzb[i]={address=yxzb[i][1].address+x1,flags=4}
  yzb[i]={address=yxzb[i][1].address+y1,flags=4}
end



function fhy()
  nb=0
  for i=0,50 do
    jz=addr("0x"..mm)
    jz=readValue(jz,0,sjpy7)
    jz=readValue(jz,0,sjpy8+i*16)
    jz=readValue(jz,0,sjpy9)
    jz4=readValue(jz,0,0)
    dw=read(jz4,sjpy10)
    dfid=read(jz4,sjpy11);
    yxxh=readValue(jz4,sjpy12,sjpy13-16);
    if ltnb == dw[1].value or dfid[1].value==yx then
    gg.addListItems(dfid)
      if yxxh[1].value>=24 and yxxh[1].value<=33 and jz4[1].value~=0 then
          nb=nb+1
        if ltnb ~= dw[1].value and dfid[1].value==yx then
          me=nb
        end
        jn=readValue(jz4,sjpy17,sjpy18)
        jn=readValue(jn,0,sjpy19);
        jnpy[nb]={address=jn[1].address,flags=4}
        jnpy[nb+10]={address=jn[1].address+2432,flags=4}
        yxid[nb]={address=dfid[1].address,flags=4}
        yxhp[nb]={address=yxxh[1].address+16,flags=4}
        zdxl[nb]={address=yxxh[1].address+24,flags=4}
        bjjz[nb]=read(jz4,sjpy14);
        pd[nb]={address=bjjz[nb][1].address,flags=4}
        pd = gg.getValues(pd)
        nm[nb]=pd[nb].value;
        jz5=readValue(bjjz[nb],0,sjpy15);
        yxzb[nb]=readValue(jz5,0,0);
        hx=readValue(bjjz[nb],0,sjpy16);
        hy[nb]={address=hx[1].address,flags=4}
        hy=gg.getValues(hy)
        hyjc(nb)
      end
    end
  end
  skslock()
end


function jzss()
  gg.setRanges(4 | 32)
  local tb1={
    {["类型"]= 4 ,["主特征码"] = 1018444120 } ,
    {["类型"]= 4 ,["偏移"]= -20 ,["副特征码"]= 16777216 },
    {["类型"]= 4 ,["偏移"]= -12 ,["副特征码"]= 65793 },
    {["类型"]= 4 ,["偏移"]= -8 ,["副特征码"]= 1 },
  }
  local tb2={
    {["类型"] = 4 ,["偏移"] = -20 , ["冻结"] = false , ["修改"] = false } ,
  } LongTao(tb1, tb2)
  if gg.getResultCount() == 0 then
    jzss()
   else
    jz = gg.getResults(1)
  end
  for i=0,16 do
    matrix[i]={address=jz[1].address-952+i*4,flags=16}
  end
  matrix=gg.getValues(matrix)
  if matrix[0].value > 0 then
    lhpd = 1
    ltnb = 2
    ltyx1 = 0;
    ltyx2 = 1;
    ltyx3 = 2;
    ltyx4 = 3;
   else
    lhpd = -1
    ltnb = 1
    ltyx1 = 2;
    ltyx2 = 3;
    ltyx3 = 0;
    ltyx4 = 1;
  end
  add=gg.getRangesList("libGameCore.so")[1].start+sjpy1
  mm=string.format("%#x",add & 0xffffffff)
  jz=addr("0x"..mm)
  jz=readValue(jz,0,56)
  jz=readValue(jz,0,16)
  jz=readValue(jz,0,48)
  jz=readValue(jz,0,160)
  jz=readValue(jz,0,208)
  for i=0,3 do
    jz1=readValue(jz,0,i*32)
    jz1=readValue(jz1,0,1712)
    ygjs[i]={address=jz1[1].address,flags=4}
  end
  getsendaddr()
  fhy()
end


function zy()
  menu2 = gg.choice({
    "英雄:  "..Name,
    "频率:  "..sleep,
    "进程:  "..fwq,
    "模式:  "..aa
  })
  if menu2 == 1 then
    xzhero() yiyz_Main()
  end
  if menu2 == 2 then
    v_value = gg.prompt({"输入你想要的预判距离：默认45 m "},{[1] ="45"})
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
    yiyz_Main()
  end
  if menu2 ==4 then
    if aa=="强力模式" then
      zz=false
      aa="追踪模式"
     else
      zz=true
      aa="强力模式"
    end
    yiyz_Main()
  end
  if menu2 ==3 then
    gg.clearList()
    gg.clearResults()
    if fwq=="正式服" then
      fwq="体验服"
      jnqh(tyf)
     else
      fwq="正式服"
      jnqh(zsf)
    end
    yiyz_Main()
  end
end

function mrsz()
  zz=true
  aa="强力模式"
  sleep=50
  sn=25000
  yx=196
  yp=64000
  jl=26800
  Name="百里守约"
  fwq="正式服"
end


function bdsz()
  jbsz = jc1:read('*a')
  sleep =jbsz:match('1,(.-)\n')
  sn =jbsz:match('2,(.-)\n')
  yx =jbsz:match('3,(.-)\n')
  yp =jbsz:match('4,(.-)\n')
  jl =jbsz:match('5,(.-)\n')
  Name =jbsz:match('6,(.-)\n')
  fwq =jbsz:match('7,(.-)\n')
  jc1:close()
end

function xrsz()
  file=io.open(pz,"w+")
  file:write("1,"..sleep.."\n2,"..sn.."\n3,"..yx.."\n4,"..yp.."\n5,"..jl.."\n6,"..Name.."\n7,"..fwq.."\n")
  file:close()
end



function jnqh(code)
  sjpy1=code:match("sjpy1=(.-),")
  sjpy2=code:match("sjpy2=(.-),")
  sjpy3=code:match("sjpy3=(.-),")
  sjpy4=code:match("sjpy4=(.-),")
  sjpy5=code:match("sjpy5=(.-),")
  sjpy6=code:match("sjpy6=(.-),")
  sjpy7=code:match("sjpy7=(.-),")
  sjpy8=code:match("sjpy8=(.-),")
  sjpy9=code:match("sjpy9=(.-),")
  sjpy10=code:match("sjpy10=(.-),")
  sjpy11=code:match("sjpy11=(.-),")
  sjpy12=code:match("sjpy12=(.-),")
  sjpy13=code:match("sjpy13=(.-),")
  sjpy14=code:match("sjpy14=(.-),")
  sjpy15=code:match("sjpy15=(.-),")
  sjpy16=code:match("sjpy16=(.-),")
  sjpy17=code:match("sjpy17=(.-),")
  sjpy18=code:match("sjpy18=(.-),")
  sjpy19=code:match("sjpy19=(.-),")
end

function wllj()
  local code ="【软件版本】9.17【软件版本】【更新说明】无【更新说明】【加入群聊】【加入群聊】【公告日期】9.17【公告日期】【000】sjpy1=42662368,sjpy2=20199904,sjpy3=40,sjpy4=164,sjpy5=8,sjpy6=164,sjpy7=8,sjpy8=48,sjpy9=72,sjpy10=36,sjpy11=24,sjpy12=224,sjpy13=248,sjpy14=320,sjpy15=128,sjpy16=40,sjpy17=192,sjpy18=248,sjpy19=1092,【000】【111】sjpy1=47918192,sjpy2=109546156,sjpy3=80,sjpy4=56,sjpy5=8,sjpy6=164,sjpy7=8,sjpy8=38,sjpy9=72,sjpy10=44,sjpy11=32,sjpy12=216,sjpy13=120,sjpy14=328,sjpy15=128,sjpy16=40,sjpy17=192,sjpy18=248,sjpy19=1092,【111】【公告标题】陈宝【公告标题】【公告内容】此脚本完全免费且仅供学习交流，如作他用所承受的法律责任一概与作者无关【公告内容】"
  if code==nil then print("网络异常") os.exit() end
  local rjbb = code:match("【软件版本】(.-)【软件版本】")
  if tonumber(rjbb)~=9.17 then print("版本异常") os.exit() end
  jrql = code:match("【000】(.-)【000】")
  ggnr = code:match("【000】(.-)【000】")
  zsf = code:match("【000】(.-)【000】")
  tyf = code:match("【111】(.-)【111】")
  pz='/storage/emulated/0/.神杀'
  mrsz()
  jc1=io.open(pz,"r")
  if jc1~=nil then
    bdsz()
  end
  if fwq=="体验服" then
    jnqh(tyf)
   else
    jnqh(zsf)
  end
end

wllj()

function yiyz_Main()
  menu1 = gg.choice({
    "开启脚本",
    "脚本设置",
    "退出脚本"
  },nil,"免费脚本"..fwq.."  "..Name.."  "..aa.."  "..sleep.."m")
  if menu1 == 1 then
    gg.clearList()
    gg.clearResults()
    xrsz()
    jzss()
  end
  if menu1 == 2 then
    zy()
  end
  if menu1 == 3 then
    gg.clearList()
    gg.clearResults()
    print (ggnr.."\n开挂一时爽，一直开挂一直爽✔ "..jrql)
    os.exit()
  end
end



function xzhero()
  FG = gg.choice({
    "百里守约(二技能)",
    "鲁班七号(二技能)",
    "钟馗(二技能)",
    "墨子(二技能)",
    "女娲(大招)"
  }, nil,"当前英雄: "..Name)
  if FG == 1 then
    sn=25000
    yx=196
    yp=64000
    jl=26800
    Name="百里守约"
    gg.toast("已选择百里守约")
  end
  if FG == 3 then
    sn=12000
    yx=175
    yp=16000
    jl=13000
    Name="钟馗"
    gg.toast("已选择钟馗")
  end
  if FG == 4 then
    sn=12000
    yx=108
    yp=64000
    jl=13500
    Name="墨子"
    gg.toast("已选择墨子")
  end
  if FG == 2 then
    sn=200000
    yx=112
    yp=64000
    jl=99999999
    Name="鲁班七号"
    gg.toast("已选择鲁班七号")
  end
  if FG == 5 then
    sn=200000
    yx=179
    yp=64000
    jl=99999999
    Name="女娲"
    gg.toast("已选择女娲")
  end
end


--配置↓↓↓勿修改

-------花粥警告⚠️

function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
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
    yiyz_Main()
  end
end
