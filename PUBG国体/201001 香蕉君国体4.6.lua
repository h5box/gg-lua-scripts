---------加密是本分，不加密是情分---------
e1sj="30.5;25"
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
gg.alert("用哲学打败魔力")
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
gg.alert("如果你是买来的就说明你被骗了，脚本完全免费")
gg.alert("香蕉君国体昵称：cd功能测试，欢迎吊打")
e7sj="220"
function Main()
  menu = gg.choice({
    "训练场区",
    "落地区",
    "透色区",
    "汽车区",
    "加速区",
    "防封区",
    "退出脚本"},
  2018,"免费脚本禁止倒卖")
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
    "午后防抖聚点除雾",
    "瞬击",
    "击中反馈放大",
    "杀猪子弹",
    "除草除树",
    "自定义上帝视角",
    "哲学天线（不漏人可透视）",
    "抖音同款伸缩头",
    "哲学家♂视角",
    "返回上一页"},
  nil,"二改倒卖死妈")
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then a6() end
    if menu1[7] == true then a7() end
    if menu1[8] == true then a8() end
    if menu1[9] == true then a9() end
    if menu1[10] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    "头盔天线",
    "头盔天线2",
    "脖子天线",
    "逼线",
    "暴力自瞄",
    "优化持枪自瞄",
    "香蕉君锁头",
    "香蕉君追踪范围",
    "秒落地",
    "众生护甲加强",
    "向前路飞🚫",
    "子弹穿墙开",
    "子弹穿墙关",
    "不拉回微加速",
    "微拉回加速",
    "范围拾取",
    "返回上一页"},
  nil,"♂")
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
    "麒麟980透视（已修复）",
    "麒麟通用透视",
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
  nil,"♂")
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
    "哲学家♂吉普蹦蹦加速",
    "返回上一页"},
  nil,"部分来自网络")
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then d6() end
    if menu1[7] == true then HOME() end
  end
  GLWW=-1
end



function E()
  menu1 = gg.multiChoice({
    "加速开",
    "加速关",
    "翻倍开",
    "翻倍关",
    "防拉回",
    "步枪伤害",
    "返回上一页"},
  nil,"不开防封＝拉闸")
  if menu1 == nil then else
    if menu1[1] == true then e1() end
    if menu1[2] == true then e2() end
    if menu1[3] == true then e3() end
    if menu1[4] == true then e4() end
    if menu1[5] == true then e5() end
    if menu1[6] == true then e6() end
    if menu1[7] == true then HOME() end
  end
  GLWW=-1
end



function F()
    menu1 = gg.multiChoice({
    "防十年",
    "结算防封",
    "防举报",
    "返回上一页"},
  nil,"防封来自快猫，基本没啥用，443端口吊打一切")
  if menu1 == nil then else
    if menu1[1] == true then f1() end
    if menu1[2] == true then f2() end
    if menu1[3] == true then f3() end
    if menu1[4] == true then HOME() end
  end
  GLWW=-1
end




function a1()
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "全局午后"},
{["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "防抖"},
    {["value"] = -1476732160.0, ["type"] = 16},
    {["lv"] = -3.7444097189855772E28, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -1.114450155758339E28, ["offset"] = 8, ["type"] = 16},
    {["lv"] = 128.0, ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0, ["offset"] = 8, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "全局防抖"},
    {["value"] = -6.154945350000412E27, ["type"] = 16},
    {["lv"] = -2.656333398413989E21, ["offset"] = 4, ["type"] = 16},
    {["lv"] = -1.114450155758339E28, ["offset"] = 12, ["type"] = 16},
    {["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0, ["offset"] = 12, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 16384},
    {["name"] = "全局聚点"},
    {["value"] = -1.2382423887994e+28, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = -1.4239332766331e+28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = -1.1144501557583e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
    {["lv"] = -1.8331474059342e+27, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
  }
  qmxg = { {["value"] = 90, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, }
  xqmnb(qmnb)
  gg.toast("开启成功")
  qmnb = {
{["memory"] = 16384},
{["name"] = "除雾"},
{["value"] = -1.3620439e28, ["type"] = 16},
{["lv"] = -2.3805859e21, ["offset"] = -4, ["type"] = 16},
{["lv"] = -1.3978205e24, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function a2()
Name = "瞬击" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.4278110478704994E28, 0},
{8.562694393506966E-26, -12},
{1.8175359108152E-27, -8},

}
local modify = {{-1.427802e28, 0},}
SearchWrite(search,modify,dataType,Name)
Name = "瞬击" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-3.254379949369797E30, 0},
{2.646983324423844E-23, -56},

}
local modify = {{-1.427802e28, -56},}
SearchWrite(search,modify,dataType,Name)
end



function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("击杀特效开启成功")
end



function a4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.2179556e21;0.0;-8.5223958e22:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("真·杀猪子弹")
end



function a5()
Name = "除草除树"
gg.setRanges(32)
local dataType = 16
local tb1 = {{0.000005, 0}, {0.000005, -4}, {0, 4}, }
local tb2 = {{0.5, 0}, }
SearchWrite(tb1, tb2, dataType)
end



function a6()
menu2 = gg.choice({
    "视角修改",
    "视角还原",
    "返回"
  })
  if menu1 == 1 then
    sj1()
  end
  if menu2 == 2 then
    sj2()
  end
  if menu5 == 3 then
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




function a9()
  gg.setRanges(16384)
  gg.setVisible(false)
  gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("360.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-1.4235595e-27;254.70928955078", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("哦～♂")
end



function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38613319397F;0.53447723389F;3.42665576935F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38613319397", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("8888", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("准备部署♂")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13142681122;0.53447723389;22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("9621", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50％♂")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("0.53446006775F;-1.68741035461F:501", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.68741035461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1995)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("75％♂")
  gg.searchNumber("18.38612365723F;0.54026412964F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38612365723F;0.54026412964F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1995)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("天线开启成功，开始v♂an")
  d14sj="1"
end



function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13142681122;0.53447723389;22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("666", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功🍌香蕉君自抓🍌")
  gg.toast("开始装逼")
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
Name = "无视队友自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.8169383774134962E31, 0},
{6.7130534448394674E22, -52},

}
local modify = {{-9.0338317e22, -52},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)


Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)

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

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "频率自瞄"
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)

Name = "近战自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.999999747378752E-5, 0},
{360.0, -12},
{-360.0, -8},
{180.0, -4},
{-1.0153182385499395E28, 8},

}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "自瞄" 
gg.setRanges(32)
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
Name="距离"
local dataType = 32
local tb1 = {{-2044634016379303408, 0}, }
local tb2 = {{-1292522027172757503, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name="趴锁"
local dataType = 32
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
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
  menu2 = gg.choice({
    "范围打击修改♂",
    "范围打击还原♂",
    "香蕉君增伤♂",
    "返回首页"
  })


  if menu2 == 1 then
    e1xg()
  end
  if menu2 == 2 then
    e1hy()
  end
  if menu2 == 3 then
    e1hj()
  end
  if menu2 == 4 then
    HOME()
  end
  GLWW = -1
  

    

end




function e1xg()
  st = gg.prompt({
    "范围大小修改数值"
  }, {"777"})
  if st ~= nil then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;"..e1sj, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(e1sj, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(st[1], gg.TYPE_FLOAT)
    e1sj=st[1]
    gg.toast("范围伤害已开启♂")
  end
end

function e1hy()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;"..e1sj, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(e1sj, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30.5", gg.TYPE_FLOAT)
  e1sj="30.5"
  gg.toast("范围伤害已开启♂")
end

function e1hj()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君增伤🍌")
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
  menu = gg.choice({
    "头",
    "甲",
    "返回"
  }, 2018, "打不死小强无敌")
  if menu == 1 then
    TK()
  end
  if menu == 2 then
    JIA()
  end
  if menu == 3 then
    HOME()
  end
  XGCK = -1
end

function TK()
  menu1 = gg.multiChoice({
    "一级头",
    "二级头",
    "三级头",
    "返回上一页"
  }, nil, "铁头功")
  if menu1 == nil then
  else
    if menu1[1] == true then
      tk1()
    end
    if menu1[2] == true then
      tk2()
    end
    if menu1[3] == true then
      tk3()
    end
    if menu1[11] == true then
      HOME()
    end
  end
  GLWW = -1
end

function JIA()
  menu1 = gg.multiChoice({
    "一级甲",
    "二级甲",
    "三级甲",
    "返回上一页"
  }, nil, "乌龟护甲")
  if menu1 == nil then
  else
    if menu1[1] == true then
      jia1()
    end
    if menu1[2] == true then
      jia2()
    end
    if menu1[3] == true then
      jia3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  GLWW = -1
end

function tk1()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;1.0F;80.0F;0.30000001192F;0.75F:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function tk2()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;1.0F;150.0F;0.40000000596F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999969", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function tk3()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;1.0F;230.0F;0.55000001192F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("230", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("光头强版小强变身完毕")
end

function jia1()
  gg.setRanges(32)
  gg.searchNumber("4.2038954e-45F;1.0F;200.0F;0.30000001192F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function jia2()
  gg.setRanges(32)
  gg.searchNumber("4.2038954e-45F;1.0F;220.0F;0.40000000596F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function jia3()
  gg.setRanges(32)
  gg.searchNumber("4.2038954e-45F;1.0F;250.0F;0.55000001192F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
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
  gg.setRanges(gg.REGION_C_BSS)
  gg.clearResults()
  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("子弹穿墙开启成功")
end



function b13()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("1.0e-7;1;-10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("子弹穿墙关闭成功")
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
  gg.searchNumber("112;256;128;2848;352;32;384;16;2848;336;16;272;332;352;368;384;388;392;396;400;404;468;784;734,003,200;64;16;4095;4095;4095;4095;4095;112:6477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("4", gg.TYPE_DWORD)
  gg.toast("980透视开启成功（作者：快猫憨憨夙夜）")
end



function c2()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.12103877e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.0}})
  end
  gg.toast("透视成功")
  gg.clearResults()
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
  gg.setRanges(4)
  gg.searchNumber("16;32;40::17",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("26",gg.TYPE_DWORD)
  gg.toast("红色第一步成功")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("26;32;40::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("42",gg.TYPE_DWORD)
  gg.toast("红色开启成功")
end



function c5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16;32;40::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("28",gg.TYPE_DWORD)
  gg.toast("绿色第一步成功")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("28;32;40::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("45",gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end



function c6()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
  end
  gg.toast("防闪开启成功")
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
  gg.setRanges(4)
  gg.searchNumber("3,152,519,739,159,347,240", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("288888", gg.TYPE_QWORD)
  gg.toast("🍌香蕉君去胸罩内裤开启成功🍌")
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



function d6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-1", gg.TYPE_FLOAT)
  gg10sj="1"
  gg.toast("开启成功")
  gg.alert("配合秒刹车")
end



function e1()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.setRanges(32)
gg.toast("加速开启成功♂")
end



function e2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.toast("加速关闭成功♂")
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



function e5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber('-6.1526231e27;-1.0070975e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('-6.1526231e27',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('-5',gg.TYPE_FLOAT)
  gg.toast('加速防拉回开启成功')
end



function e6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("伤害修复开启成功♂")
end



function f1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    for _FORV_3_ = 1, n do
      gg.addListItems({
        [1] = {
          address = jz[_FORV_3_].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
    end
    gg.toast("开启成功")
  else
    gg.toast("开启失败")
  end
end



function f2()
  gg.clearResults()
 gg.setRanges(32) gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) gg.editAll('0', 16) gg.toast('结算防追封开启成功')
end



function f3()
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/afd/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/map_helicopter_0.19.3.13455.pak")
gg.toast("开启成功")
end



function HOME()
  lw=1
  Main()
end



function Exit()
  print("作者：快猫香蕉君。此脚本完全免费")
  os.exit()
end



cs = "禁止倒卖"
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










