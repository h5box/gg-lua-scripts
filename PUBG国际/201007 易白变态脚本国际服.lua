
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
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
           gg.toast("开启成功"..#data.."")
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
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        
        else
            gg.toast("开启失败", false)
            return false
        end
    else
        gg.toast("很抱歉未找到游戏\n开启失败")
        return false
    end
end
gg.alert("易白牛逼")
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function encodes(code)
  return (code:gsub("..", function(h)
    return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256)
  end
  ))
end

gg.toast("Loading...")
do
  do
    for _FORV_3_ = 1, 2000 do
      load("local results = gg.getFile(5000)")()
    end
  end
end
gg.setRanges(16420)
local results = gg.getFile()
local results = gg.getResults(5000)
gg.setValues(results)
local results = gg.getFile()
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
else
return false
end
else
return false
end
end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."🌹开启成功🌹"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."🌹开启成功🌹"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."🌹开启失败🌹", false)  return false  end  else  gg.toast("🌹开启失败🌹")  return false  end end  
gg.alert("骁龙通用透视")
e7sj="220"
function Main()
  menu = gg.choice({
    "训练场",
    "落地",
    "透色",
    "汽车",
    "加速",
    "防封",
    "退出脚本"},
  2018,"")
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then E() end
  if menu == 6 then F() end
  if menu == 7 then Exit() end
  XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
    "午后防抖聚点",
    "击中放大",
    "高伤子弹",
    "除草除树",
    "上帝视角",
    "返回上一页"},
  nil,"易白牛逼")
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    "天线1",
    "天线2",
    "脖子天线",
    "逼线",
    "暴力自瞄",
    "持枪自瞄",
    "锁头",
    "子弹追踪",
    "秒落地",
    "蹲下路飞(和谐)",
    "向前路飞(和谐)",
    "神夕范围第一步",
    "神夕范围第二步",
    "不拉回微加速",
    "微拉回加速",
    "范围拾取",
    "返回上一页"},
  nil,"易白牛逼")
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then b7() end
    if menu1[8] == true then b8() end
    if menu1[9] == true then b9() end
    if menu1[10] == true then b10() end
    if menu1[11] == true then b11() end
    if menu1[12] == true then b12() end
    if menu1[13] == true then b13() end
    if menu1[14] == true then b14() end
    if menu1[15] == true then b15() end
    if menu1[16] == true then b16() end
    if menu1[17] == true then HOME() end
  end
  GLWW=-1
end



function C()
  menu1 = gg.multiChoice({
    "联发科p70，麒麟980透视",
    "骁龙通用透视",
    "麒麟六系列透视",
    "麒麟通用红",
    "麒麟通用绿",
    "麒麟通用xa防闪",
    "全机型白色",
    "全机型黑色",
    "麒麟去除胸罩",
    "麒麟通用靓仔色",
    "聚乐园名字透视",
    "返回上一页"},
  nil,"易白牛逼")
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then c3() end
    if menu1[4] == true then c4() end
    if menu1[5] == true then c5() end
    if menu1[6] == true then c6() end
    if menu1[7] == true then c7() end
    if menu1[8] == true then c8() end
    if menu1[9] == true then c9() end
    if menu1[10] == true then c10() end
    if menu1[11] == true then c11() end
    if menu1[12] == true then HOME() end
  end
  GLWW=-1
end



function D()
  menu1 = gg.multiChoice({
    "吉普加速",
    "吉普浮空",
    "秒刹车",
    "蹦蹦穿墙",
    "全载具加速",
    "返回上一页"},
  nil,"部分机型浮空无效")
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end



function E()
  menu1 = gg.multiChoice({
    "加速开",
    "加速关",
    "翻倍开",
    "翻倍关",
    "返回上一页"},
  nil,"跑毒专用")
  if menu1 == nil then else
    if menu1[1] == true then e1() end
    if menu1[2] == true then e2() end
    if menu1[3] == true then e3() end
    if menu1[4] == true then e4() end
    if menu1[5] == true then HOME() end
  end
  GLWW=-1
end



function F()
    menu1 = gg.multiChoice({
    "2.0内防",
    "V2内防",
    "7.0内防",
    "V1内防",
    "清理日志",
    "返回上一页"},
  nil,"防封是搬的")
  if menu1 == nil then else
    if menu1[1] == true then f1() end
    if menu1[2] == true then f2() end
    if menu1[3] == true then f3() end
    if menu1[4] == true then f4() end
    if menu1[5] == true then f5() end
    if menu1[5] == true then HOME() end
  end
  GLWW=-1
end




function a1()
Name = "全枪无后" 
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



function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("击杀特效开启成功")
end



function a3()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.2179556e21;0.0;-8.5223958e22:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("真·杀猪子弹")
end



function a4()
Name = "除草除树"
gg.setRanges(32)
local dataType = 16
local tb1 = {{0.000005, 0}, {0.000005, -4}, {0, 4}, }
local tb2 = {{0.5, 0}, }
SearchWrite(tb1, tb2, dataType)
end



function a5()
menu2 = gg.choice({
    "视角修改",
    "视角还原",
    "返回"
  })
  if menu2 == 1 then
    sj1()
  end
  if menu2 == 2 then
    sj2()
  end
  if menu3 == 3 then
    HOME()
  end
  GLWW = -1   
end



function sj1()
  st = gg.prompt({
    "上帝视角修改（正常为220）"
  }, {"600"})
  if st ~= nil then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber(e7sj..";25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(e7sj, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(st[1], gg.TYPE_FLOAT)
    e7sj=st[1]
    gg.toast("上帝视角修改成功")
  end
end



function sj2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(e7sj..";25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(e7sj, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("220", gg.TYPE_FLOAT)
  e7sj="220"
  gg.toast("上帝视角还原成功")
end



function b1()
  qmnb = {
    {["memory"] = gg.REGION_ANONYMOUS},
    {["name"] = "天线开启"},
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



function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("天线2开启成功")
end



function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("脖子天线")
end



function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("香蕉原创逼线")
end



function b5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("暴力全屏自瞄开启成功")
end



function b6()
  Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)
  Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.2573531344941352E23, 0},{-9.90656151829801E27, -40},}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)
Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {{1.1625219467270265E33, 0},{7.476871833205223E-4, 64},}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336691171:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("持枪自瞄开启成功")
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("哲学锁头开启成功")
end


function b8()
  gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-89999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-99999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", 16, false, 536870912, 0, -1)
gg.searchNumber("16", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("100", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;23;25;30.5", 16, false, 536870912, 0, -1)
gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("245", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("⁦林子子弹追摆脱托香蕉⁩")
 end  


function b9()
  Name = "秒下飞机"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {3000.0, 0},
    {5000.0, 4},
    {1024.0, 8},
    {89.0, 36},

  }
  local modify = {{200000, 0},{200000, 4},{200000, 8},}
  SearchWrite(search,modify,dataType,Name)
  gg.toast("开启成功")
end



function b10()
  qmnb = {
{["memory"] = 32},
{["name"] = "下蹲路飞"},
{["value"] = -0.90990304947, ["type"] = 16},
{["lv"] = 18.38787841797, ["offset"] = 8, ["type"] = 16},
{["lv"] = -3.42231750488, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 140, ["offset"] = 8, ["type"] = 16},
{["value"] = 250, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end



function b11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.65688276291;0.03494880721;5.82142114639;-2.83384513855", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5.82142114639", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("250", gg.TYPE_FLOAT)
  gg.toast("站立向前路飞已开启")
end



function b12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("350", gg.TYPE_FLOAT)
  gg.toast("神夕第一步")
end



function b13()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("25")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("50")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("75")
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("100")
gg.toast("神夕第二步")
end



function b14()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("人物加速开启成功")
end



function b15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.05", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全局加速开启成功")
end



function b16()
  gg.clearResults() 
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT) 
  gg.searchNumber("200", gg.TYPE_FLOAT) 
  gg.getResults(200) 
  gg.editAll("310", gg.TYPE_FLOAT) 
  gg.toast("围拾取开启成功")
end



function c1()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.793662e-43F;1.4012985e-45F;0.5F;360.0F;0.5F;776.0F:121", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(20)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 	 end
	 gg.toast("联发科通用透视")
	 gg.clearResults()
end



function c2()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType=gg.TYPE_FLOAT 
Name="马赛克"--- 4.814603e21
local tb1={{4.814603e21,0x24CC},{4.7408149e21,0x24C4}}
local tb2={{9999,0x24C8}}
SearchWrite(tb1,tb2,dataType)
gg.toast("马赛克开启成功，正在开启透明码.................")
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType=gg.TYPE_FLOAT 
Name="透明码"--- 5.1466568e21
local tb1={{5.1466568e21,0x47E4},{5.6262783e21,0x47DC}}
local tb2={{5444,0x47E0}}
SearchWrite(tb1,tb2,dataType)
gg.toast("透视开启成功")
gg.setRanges(1048576 or 131072) 
local tb1 = {{tonumber("-1.7632431e-38"),tonumber("0")}, {tonumber("-1.7632429e-38"),tonumber("-16")}, {tonumber("4.5920551e-41"),tonumber("12")}, {tonumber("4.5919149e-41"),tonumber("-4")}, } 	
local tb2 = {{tonumber("4.594157e-41"),tonumber("-4")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end



function c3()
qmnb = {
{["memory"] = 4},
{["name"] = "麒麟6系列透视"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 268, ["offset"] = 4, ["type"] = 16},
{["lv"] = 268, ["offset"] = 8, ["type"] = 16},
{["lv"] = 480, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 16, ["type"] = 16},
{["lv"] = 480, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1.00000011921, ["offset"] = 24, ["type"] = 16},   
{["lv"] = 1.00000011921, ["offset"] = 28, ["type"] = 16},   
{["lv"] = 2.569395e-10, ["offset"] = 64, ["type"] = 16},     
{["lv"] = 0.00008785885, ["offset"] = 68, ["type"] = 16},   
{["lv"] = 0.65723782778, ["offset"] = 72, ["type"] = 16},   
{["lv"] = 14.57730102539, ["offset"] = 76, ["type"] = 16},  
{["lv"] = 0.00041242075, ["offset"] = 80, ["type"] = 16},  
{["lv"] = 0.02505219355, ["offset"] = 84, ["type"] = 16},  
{["lv"] = 0.0000675781, ["offset"] = 88, ["type"] = 16},  
{["lv"] = 0.00782599207, ["offset"] = 92, ["type"] = 16},  
{["lv"] = 0.00782405864, ["offset"] = 96, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 100, ["type"] = 16},  
{["lv"] = 1.3813413e-16, ["offset"] = 112, ["type"] = 16},  
{["lv"] = 2.1466491e-41, ["offset"] = 116, ["type"] = 16},  
{["lv"] = 7.6824924e21, ["offset"] = 128, ["type"] = 16},  
{["lv"] = 0.00783725083, ["offset"] = 132, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 144, ["type"] = 16},  
{["lv"] = 1.7506422e-41, ["offset"] = 148, ["type"] = 16},  
{["lv"] = 0.0078125, ["offset"] = 156, ["type"] = 16},  
{["lv"] = 0.04523181915, ["offset"] = 160, ["type"] = 16},  
{["lv"] = 1.9202086e-7, ["offset"] = 164, ["type"] = 16},  
{["lv"] = 0.04523181915, ["offset"] = 168, ["type"] = 16},  
{["lv"] = 1.6606788e-41, ["offset"] = 172, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 200, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
end



function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 26}})
  end
  gg.toast("上色开启成功")
  gg.clearResults()
end



function c5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 28}})
  end
  gg.toast("绿色开启成功")
  gg.clearResults()
end



function c6()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
  end
  gg.toast("开启成功")
  gg.clearResults()
end



function c7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("白色开启成功")
end



function c8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("黑色开启成功")
end



function c9()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 24}})
  end
  gg.toast("去除胸罩开启成功")
  gg.clearResults()
end



function c10()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16D;32D;40D::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16;32;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("26;36", gg.TYPE_DWORD)
gg.toast("靓仔黄色开启成功")
gg.clearResults()
end



function c11()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("720576352751714304", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_QWORD,freeze = true,value = 720576352751714305}})
	 end
	 gg.toast("透视开启成功")
	 gg.clearResults()
end



function d1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("吉普加速")
end



function d2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("吉普浮空")
end



function d3()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "全车秒刹车"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function d4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end



function d5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end



function e1()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end



function e2()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("关闭成功")
end



function e3()
  qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "翻倍中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1.49,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速翻倍开启成功")
end



function e4()
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "关闭翻倍中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("翻倍关闭成功")
end



function f1()
 gg.sleep(300)
  gg.toast("■□□□□□□10%  ")
  gg.sleep(300)
  gg.toast("■■□□□□□20%  ")
  gg.sleep(300)
  gg.toast("■■■□□□□40%  ")
  gg.sleep(300)
  gg.toast("■■■■□□□60%  ")
  gg.sleep(300)
  gg.toast("■■■■■□□80%  ")
  gg.sleep(300)
  gg.toast("■■■■■■□90%  ")
  gg.sleep(300)
  gg.toast("■■■■■■■100%")
  gg.sleep(600)
  gg.toast(" 2.O")
  gg.sleep(300)
  gg.toast("ʟᴏᴀᴅᴇᴅ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.getResultsCount()
  gg.setVisible(false)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.getResults(30101996)
  gg.addListItems({
    [1] = {
      address = 5927846363,
      flags = 4,
      freeze = true,
      value = 0
    },
    [2] = {
      address = 5927802716,
      flags = 4,
      freeze = true,
      value = 0
    },
    [3] = {
      address = 5927009374,
      flags = 4,
      freeze = true,
      value = 0
    },
    [4] = {
      address = 6055847264,
      flags = 4,
      freeze = true,
      value = 0
    },
    [5] = {
      address = 6055847264,
      flags = 4,
      freeze = true,
      value = 0
    },
    [6] = {
      address = 6055805953,
      flags = 4,
      freeze = true,
      value = 0
    }
  })
  gg.editAll("0", 4)
  gg.clearResults()
  gg.toast("50%")
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.tenc")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  gg.toast("80%")
  gg.sleep(300)
  gg.toast("■□□□□□□10%  ")
  gg.sleep(300)
  gg.toast("■■□□□□□20%  ")
  gg.sleep(300)
  gg.toast("■■■□□□□40%  ")
  gg.sleep(300)
  gg.toast("■■■■□□□60%  ")
  gg.sleep(300)
  gg.toast("■■■■■□□80%  ")
  gg.sleep(300)
  gg.toast("■■■■■■□90%  ")
  gg.sleep(300)
  gg.toast("■■■■■■■100%")
  gg.sleep(600)
  gg.toast(" 2.O")
  gg.sleep(300)
  gg.toast("100%")
  gg.alert("第一步")
end


function f2()
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(134658, gg.TYPE_DWORD)
gg.getResultsCount()
gg.getResults(50000)
gg.getValues({ -- table(bc429ee)
	[1] = { -- table(457ab69)
		['address'] = 539450738744,
		['flags'] = 4, -- gg.TYPE_DWORD
	},
})
gg.addListItems({ -- table(b69525)
	[1] = { -- table(d26751c)
		['address'] = 539450738744,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.toast("Memory Freeze")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,3,3,4,253})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,2,3,1,3})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,1,0,3,3})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,3,6,255,3})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,2,6,253,255})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,1,3,255,0})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,255,2,4,1})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,255,5,0,253})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,1,3,255,255})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,2,1,252,253})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,3,2,0,4,2})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,3,5,6,3,252})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,8,4,5,2,2})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({7,255,4,2,4})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({6,6,255,254,252,252,254,254})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({3,1,5,6,255,4})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({2,5,0,1,252,254})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,2,255,0,255,252})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({8,2,6,5,3,254,0,250})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,255,254,3,2,255,255,0,255})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("EX({1,0,5,1,0,252,1,2,251})", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("HELL SQUAD")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.2958874e-41", 16, false, 536870912, 0, -1)
gg.getResults(1)
gg.getResults(1)
gg.getResults(1)
gg.addListItems({ -- table(835b714)
	[1] = { -- table(e2c3d67)
		['address'] = 539439977320,
		['flags'] = 16, -- gg.TYPE_FLOAT
		['value'] = 2.2958874e-41,
	},
})
gg.clearResults()
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({ -- table(aad8fca)
	[1] = { -- table(ae9cf35)
		['address'] = 3153762356,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(c964043)
	[1] = { -- table(b2781f2)
		['address'] = 3153762372,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(8abff9)
	[1] = { -- table(a5ff6c0)
		['address'] = 3153762376,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(1d29d9f)
	[1] = { -- table(527cb3e)
		['address'] = 3153762536,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(2ae62b5)
	[1] = { -- table(aadbeec)
		['address'] = 3153762540,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(54d74bb)
	[1] = { -- table(3515d4a)
		['address'] = 3153762544,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(d2f7531)
	[1] = { -- table(f2dddd8)
		['address'] = 3153762638,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 119,
	},
})
gg.addListItems({ -- table(3d4a197)
	[1] = { -- table(7d00416)
		['address'] = 3153762738,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(ed5336d)
	[1] = { -- table(c8eff84)
		['address'] = 3153762788,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(f37c033)
	[1] = { -- table(9c04ba2)
		['address'] = 3153762808,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 4451,
	},
})
gg.addListItems({ -- table(19e9969)
	[1] = { -- table(1be8ff0)
		['address'] = 3153762908,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.addListItems({ -- table(ca42c8f)
	[1] = { -- table(37b7fee)
		['address'] = 3153762918,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(67e6325)
	[1] = { -- table(d14bb1c)
		['address'] = 3153762968,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(cc102ab)
	[1] = { -- table(9a3acfa)
		['address'] = 3153763058,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(d70ca1)
	[1] = { -- table(8406d08)
		['address'] = 3153763258,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.addListItems({ -- table(98b1e87)
	[1] = { -- table(6ef9ec6)
		['address'] = 3153763408,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 70086,
	},
})
gg.clearResults()
gg.clearList()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633;67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633;67109377", 4, false, 536870912, 0, -1)
gg.getResults(11084001)
gg.getResults(11084001)
gg.getResults(11084001)
gg.addListItems({ -- table(2d3aed9)
})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResults(100)
gg.getResults(100)
gg.addListItems({ -- table(83dc09e)
})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109377", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("67598982", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("67598981", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.processResume()
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.processResume()
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262,403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.getResults(100000)
gg.getResults(100000)
gg.addListItems({ -- table(234ec4d)
})
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.getResults(100000)
gg.getResults(100000)
gg.addListItems({ -- table(1164302)
})
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.getResults(100000)
gg.getResults(100000)
gg.addListItems({ -- table(4715413)
})
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("7,077,901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.getResults(100000)
gg.getResults(100000)
gg.addListItems({ -- table(cf10049)
})
gg.clearList()
gg.clearResults()
gg.alert("@OFICCIAHELL")
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
gg.getFile()
end
function f4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"67109633"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('67109633', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('0',4)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-88.66608428955;26:512', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('26', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-460',16)
gg.searchNumber('-88.73961639404;28:512', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('28', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-560',16)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('9.201618;30.5;25', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('25;30.5', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('250',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"1380"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"134402"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"67109377"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"136303"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"131586"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"19507"', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.getResults(99999)
gg.alert('v1')
gg.toast('V1内防开启成功')
end

function f5()
gg.toast(" ║▓▒▒▒▒▒▒▒▒▒║ ")
gg.toast(" ║▓▓▒▒▒▒▒▒▒▒║ ")
gg.toast(" ║▓▓▓▒▒▒▒▒▒▒║ ")
gg.toast(" ║▓▓▓▓▒▒▒▒▒▒║ ")
gg.toast(" ║▓▓▓▓▓▒▒▒▒▒║ ")
gg.toast(" ║▓▓▓▓▓▓▒▒▒▒║ ")
gg.toast(" ║▓▓▓▓▓▓▓▒▒▒║ ")
gg.toast(" ║▓▓▓▓▓▓▓▓▒▒║ ")
gg.toast(" ║▓▓▓▓▓▓▓▓▓▒║ ")
gg.toast(" ║▓▓▓▓▓▓▓▓▓▓║ ")
gg.clearResults()
os.remove("/data/user/0/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/com.tencent.ig/data/data/0/com.tencent.ig/app_appcache")
os.remove("/data/user/0/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly")
os.remove("/data/user/0/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord")
os.remove("/data/user/0/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/com.tencent.ig/data/data/0/com.tencent.ig/cache")
os.remove("/data/user/0/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/com.tencent.ig/data/data/0/com.tencent.ig/code_cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/crashinfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Movies")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
os.remove("/storage/emulated/0/Android/data/com.ludashi.superboost")
os.remove("/storage/emulated/0/Android/data/io.va.exposed/files")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/al")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Unity")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Pictures")
gg.clearResults()
gg.toast("日志清理完成")
end


function f3()
gg.alert("易白NB")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('655361', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.searchNumber('131586', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.searchNumber('12547', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.searchNumber('99999', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.searchNumber('11082001', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.searchNumber('67109377', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.searchNumber('67,109,377', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15000)
gg.editAll('0',4)
gg.alert('7.0内防')
 end



function HOME()
  lw=1
  Main()
end



function Exit()
  print("作者：易白。功能来自易白")
  os.exit()
end



cs = "易白牛逼"
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