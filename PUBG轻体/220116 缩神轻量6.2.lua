
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
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
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg.clearResults()
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
local t = gg.getValues(t)
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
gg.toast("type参数错误")
os.exit()
end
else
print("memory or array参数错误")
gg.toast("memory or array参数错误")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
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
--gg.setValues(t)
return gg.addListItems(t)
else
return gg.setValues(t)
end
else
return false
end
end
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
gg.toast(Name.."共搜索到"..#data.."个数据")
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
gg.toast(Name.."开启成功,共修改"..#t.."条数据")
else
gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了")
return false
end
else
gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了")
return false
end
end
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
           gg.toast(" 开启成功 "..#data.."")
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
            gg.toast(" 开启失败 ", false)
            return false
        end
    else
        gg.toast(" 很抱歉未找到游戏机制 \n 开启失败 ")
        return false
    end
end

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
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.." 开启成功 "..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.." 开启成功 "..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.." 开启失败 ", false)  return false  end  else  gg.toast(" 开启失败 ")  return false  end end  

function Main()
menu = gg.choice({
'防封区',
'大厅区',
'落地区',
"透视区",
"加速区",
"美化区",
"娱乐区",
'退出脚本'},
2018,'祝你好运')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then Exit() end
XGCK=-1
end
function A()
menu1 = gg.multiChoice({
"防十年",
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then HOME() end
if menu1[3] == true then HOME() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
function B()
menu1 = gg.multiChoice({
'基址无后',
'基址聚点',
'基址防抖',
'圈圈透视',
'全屏自瞄',
'头部范围',
'汽车秒刹',
'全图除草',
'超级远跳',
'全枪瞬击',
'返回上一页'},
nil,'随时可以开启，这些功能开一次全局有效')
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
if menu1[11] == true then HOME() end
end
GLWW=-1
end
function C()
menu1 = gg.multiChoice({
'身法视角[落地]',
'秒下飞机[出生岛]',
'越飞越高[出生岛]',
'全车加速[车上]',
'下蹲路飞[持枪]',
'八倍红点[装上红点]',
'返回上一页'},
nil,'[]里表示，达到要求后开启才有效')
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
function D()
menu1 = gg.multiChoice({
'天线',
'地线',
'665透色[均衡]',
'855透色[均衡]',
'660透色[均衡]',
'联发科p22/23/35透视[流畅]',
"骁龙流畅通用透视",
'返回上一页'},
nil,'落地开启')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then HOME() end

end
GLWW=-1
end
function E()
menu1 = gg.multiChoice({
'防拉回[落地开启]',
'开启加速',
"关闭加速",
'返回上一页'},
nil,'落地开启防拉回，开启后趴下，再蹲下，人物会浮空，然后开启加速，不可以拉满疾跑，会拉回')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then HOME() end

end
GLWW=-1
end
function F()
menu1 = gg.multiChoice({
'M416特效枪[适合美观]',
'M416赤橙[适合身法]',
"M416黄金",
"SCAR美化",
"AKM美化",
"M762美化",
"其余枪械美化",
"S1战神裤[适合身法]",
"初始小白衣[适合身法]",
"带帽风衣[适合身法]",
"菠萝风衣[适合美观，身法]",
"帅气的衣服[适合美观]",
"降落伞美化",
"汽车美化",
"头盔美化",
"背包美化",
'返回上一页'},
nil,'需要下载资源包，大厅开启')
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f16() end
if menu1[4] == true then f3() end
if menu1[5] == true then f4() end
if menu1[6] == true then f5() end
if menu1[7] == true then f6() end
if menu1[8] == true then f7() end
if menu1[9] == true then f8() end
if menu1[10] == true then f9() end
if menu1[11] == true then f10() end
if menu1[12] == true then f11() end
if menu1[13] == true then f12() end
if menu1[14] == true then f13() end
if menu1[15] == true then f14() end
if menu1[16] == true then f15() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end
function G()
menu1 = gg.multiChoice({
'UI透明',
"天空黑色",
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then HOME() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16384;16384;16384;12::13",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("防封开启失败")
else
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address-4,flags = 4,freeze = true,value = 196864}})
gg.addListItems({[1] = {address =jz[i].address+0,flags = 4,freeze = true,value = 196864}})
gg.addListItems({[1] = {address =jz[i].address-8,flags = 4,freeze = true,value = 196864}})
gg.addListItems({[1] = {address =jz[i].address-420,flags = 4,freeze = true,value = 196864}})
gg.addListItems({[1] = {address =jz[i].address-796,flags = 4,freeze = true,value = 196864}})
gg.addListItems({[1] = {address =jz[i].address-792,flags = 4,freeze = true,value = 196864}})
end
gg.toast("防封开启成功")

end
end

function b1()
 so=gg.getRangesList("libUE4.so")[1].start
py=0xDA5734
setvalue(so+py,16,0)
gg.toast("基址无后")
end
function b2()
 so=gg.getRangesList("libUE4.so")[1].start
py=0xDA5C20
setvalue(so+py,16,90)
gg.toast("基址聚点1")
 so=gg.getRangesList("libUE4.so")[1].start
py=0x260D578
setvalue(so+py,16,90)
gg.toast("基址聚点2")
end
function b3()
 so=gg.getRangesList("libUE4.so")[1].start
py=0x2626B60
setvalue(so+py,16,0)
gg.toast("基址防抖1")
gg.clearResults()    
 so=gg.getRangesList("libUE4.so")[1].start
py=0x26A2DDC
setvalue(so+py,16,0)
gg.toast("基址防抖2")
end
function b4()
gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {-2.8488793E28, 0},
        {-5.4827808E27, 4},
        {-1.2464639E28, 8},
        {-2.7270195E28, 12}
      }, {
        {0, 4},
        {0, 0}
      }, gg.TYPE_FLOAT, "自瞄第一步")
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-301790705", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("99999", gg.TYPE_DWORD)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {-5.4561862E27, 0},
        {-3.6893502E20, -8},
        {-5.9075698E21, -4}
      }, {
        {0, 0}
      }, 16)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {"360", "-12"},
        {"0.0001", "0"},
        {"1478828288", "84"}
      }, {
        {"99999", "0"}
      }, 16)
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-476,053,504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99999)
      gg.editAll("-476,053,503", gg.TYPE_DWORD)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {5.533321713993693E-21, 0}
      }, {
        {2.62532929E-27, 52}
      }, 16, "圈圈透视")
      end
function b5()
gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-301790705", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("99999", gg.TYPE_DWORD)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {-5.4561862E27, 0},
        {-3.6893502E20, -8},
        {-5.9075698E21, -4}
      }, {
        {0, 0}
      }, 16)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {"360", "-12"},
        {"0.0001", "0"},
        {"1478828288", "84"}
      }, {
        {"99999", "0"}
      }, 16)
      gg.setRanges(32)
      SearchWrite({
        {3.5, 3296},
        {1, 3300},
        {1, 3304},
        {1, 3308},
        {1, 3312},
        {0.5, 3316},
        {0.5, 3324},
        {200, 3348},
        {20, 3352},
        {20, 3364}
      }, {
        {999999999, 3296},
        {999999999, 3300},
        {999999999, 3304},
        {999999999, 3308},
        {999999999, 3312},
        {999999999, 3316},
        {999999999, 3324},
        {999999999, 3348},
        {999999999, 3352},
        {999999999, 3364}
      }, 16)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {
          "6.1630853e-33",
          "-8"
        },
        {
          "-1.0767317e28",
          "0"
        }
      }, {
        {"0", "0"}
      }, 16)
      gg.setRanges(gg.REGION_CODE_APP)
      SearchWrite({
        {
          "-1.5573156e26",
          "8"
        }
      }, {
        {"0", "0"}
      }, 16)
      gg.toast("内存自瞄已成功")
so=gg.getRangesList('libUE4.so')[1].start
py=0xBD16BC
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0xBD1618
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0xBD1668
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0xBD16B8
setvalue(so+py,16,0)
gg.toast("自瞄第一开启成功")
so=gg.getRangesList('libUE4.so')[1].start
py=0x2720464
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x272049C
setvalue(so+py,16,0)
gg.toast("自瞄第二开启成功")
so=gg.getRangesList('libUE4.so')[1].start
py=0x193A69C
setvalue(so+py,16,0)
gg.toast("自瞄第三开启成功")
so=gg.getRangesList('libUE4.so')[1].start
py=0x193A694
setvalue(so+py,16,0)
gg.toast("自瞄第四开启成功")
end
function b6()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "头部范围"},
{["value"] = 0.00009203507, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 30.5, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 295, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["value"] = 295, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "身体范围"},
{["value"] = -88.66608428955, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 16, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 26, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = -430, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "身体范围"},
{["value"] = -88.73961639404, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 18, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = -530, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全身范围"},
{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
--["freeze"] = true   添加这个为冻结
--["freeze"] = false   这个为恢复冻结，取消冻结
{["value"] = 270, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 130, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function b7()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "全车秒刹车已成功"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function b8()
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
gg.toast("除草成功")
end
function b9()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("-800", gg.TYPE_FLOAT)
qmnb = {
{["memory"] = 8 | 16384},
{["name"] = "超级跳跃"},
{["value"] = -1327371999739700736, ["type"] = 32},
{["lv"] = -301987312, ["offset"] = -4, ["type"] = 4},
{["lv"] = -309052878, ["offset"] = 4, ["type"] = 4},
{["lv"] = -293533184, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = -289990143, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function b10()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.427811e28", 16, false, 536870912, 0, -1)
gg.getResults(99999)
gg.editAll("0", 16)
gg.toast("全枪瞬击已成功")
end
function b11()
gg.toast("开启成功")
end
function b12()
gg.toast("开启成功")
end
function c1()
gg.clearResults()
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-8.7370373e22, 0}, {0.00100000005, -48}, {-9.3857935e22, -16},  {360, -44}, {-5.9052662e21, 12}, }
local tb2 = {{300, -44}, }
SearchWrite(tb1, tb2, dataType)
gg.sleep(500)
gg.toast("16:9已成功")
end
function c2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=200000
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=200000
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=200000
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=200000
gg.setValues(setvalues)
gg.toast("缩神：OK")
end
end
end
end
end;
function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("反向跳伞")
end
function c4()
gg.setRanges(32) 
local tb1 = {{tonumber("50"),tonumber("-40")}, {tonumber("5"),tonumber("-36")}, {tonumber("0.00999999978"),tonumber("0")}, } 	
local tb2 = {{tonumber("-0.23"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
  gg.toast("全车加速已开启")
end
function c5()
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="新下蹲路飞"
local dataType = gg.TYPE_DWORD
local tb1 = {{18.38787841797,0},{0.4148209691,-4},{0.53869867325,4}}
local tb2 = {{110,4}}
SearchWrite(tb1, tb2, dataType, Name)
end
function c6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("60;55;1.9618179e-44", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("55", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("15",gg.TYPE_FLOAT)
gg.toast("四倍红点开启成功")
end
function c7()
gg.toast("开启成功")
end
function c8()
gg.toast("开启成功")
end
function c9()
gg.toast("开启成功")
end
function c10()
gg.toast("开启成功")
end
function c11()
gg.toast("开启成功")
end
function c12()
gg.toast("开启成功")
end
function d1()
qmnb = {
{["memory"] = 32},
{["name"] = "肩膀天线"},
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
function d2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("可透视地线")
end
function d3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('5444',gg.TYPE_FLOAT)
end
function d4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('8,201;1,194,344,458;8,202;1,194,344,460;8203',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8201',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('7',gg.TYPE_DWORD)
gg.toast("上色开启成功")
end
function d5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-8.3358201e-40',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-8.3358201e-40',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-1.568266e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.568266e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('1,194,344,455;8,201;1,194,346,763;8,203;1,194,377,232:17',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8201;8203',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99999)
gg.editAll('7;10',gg.TYPE_DWORD)
gg.toast("上色开启成功")
end
function d6()
gg.clearResults()
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
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)  
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
gg.setRanges(16384)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("122;54;1;55;1;1;56;1;2;57;1;34;8::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("32", gg.TYPE_DWORD)
end
function d7()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("480")
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("180", gg.TYPE_FLOAT)
  gg.toast("马赛克开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("880")
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("180", gg.TYPE_FLOAT)
  gg.toast("透明＋白色开启成功")
end
function d8()
gg.toast("开启成功")
end
function d9()
gg.toast("开启成功")
end
function d10()
gg.toast("开启成功")
end
function d11()
gg.toast("开启成功")
end
function d12()
gg.toast("开启成功")
end
function e1()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("-50", gg.TYPE_FLOAT)
  end
function e2()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-1,287,719,427,143,988,736", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
      if gg.getResultCount() == 0 then
        gg.toast("不拉回加速")
      else
        gg.clearResults()
        gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        if gg.getResultCount() == 0 then
          for _FORV_3_ = 1, n do
            gg.setValues({
              [1] = {
                address = jz[_FORV_3_].address - 8,
                flags = gg.TYPE_QWORD,
                value = "-1,296,744,149,883,614,555"
              }
            })
            gg.setValues({
              [1] = {
                address = jz[_FORV_3_].address - 7290968,
                flags = gg.TYPE_QWORD,
                value = "-1,904,987,454,010,553,855"
              }
            })
            gg.setValues({
              [1] = {
                address = jz[_FORV_3_].address - 386224,
                flags = gg.TYPE_BYTE,
                value = "-61"
              }
            })
          end
        else
          for _FORV_3_ = 1, n do
            gg.setValues({
              [1] = {
                address = jz[_FORV_3_].address - 8,
                flags = gg.TYPE_QWORD,
                value = "-1,296,744,153,870,237,696"
              }
            })
            gg.setValues({
              [1] = {
                address = jz[_FORV_3_].address - 7290968,
                flags = gg.TYPE_QWORD,
                value = "-1,904,987,454,002,165,247"
              }
            })
            gg.setValues({
              [1] = {
                address = jz[_FORV_3_].address - 386224,
                flags = gg.TYPE_BYTE,
                value = "0"
              }
            })
          end
        end
      end
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="40倍加速"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.0005,0},{20,-4},{0.0001,-8},{0,16}}
local tb2 = {{0.07,0}}
SearchWrite(tb1, tb2, dataType, Name)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,328,550,408,728,725,571",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,576,460,390",gg.TYPE_QWORD)
gg.toast("40倍加速开启成功")
end
function e3()
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="关闭加速"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.07,0},{20,-4},{0.0001,-8},{0,16}}
local tb2 = {{0.0005,0}}
SearchWrite(tb1, tb2, dataType, Name)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,328,550,408,576,460,390",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,728,725,571",gg.TYPE_QWORD)
gg.toast("40倍加速关闭成功")
end
function f1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101004086",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040862, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040863, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040861, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function f16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1,101,004,034",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "黄金m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040342, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function f2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101004015",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20300800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1010040152",gg.TYPE_DWORD)
gg.toast("M416")
end
function f3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101003005",gg.TYPE_DWORD)
gg.toast("SCAR")
end
function f4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101001007",gg.TYPE_DWORD)
gg.toast("AKM")
end
function f5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101008025",gg.TYPE_DWORD)
gg.toast("M762")
end

function f6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101002020",gg.TYPE_DWORD)
gg.toast("M16A4")
qmnb = {
{["memory"] = 32},
{["name"] = "机瞄"},
{["value"] = 20300600, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 203006, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010020203, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100500",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101005002",gg.TYPE_DWORD)
gg.toast("GROZA")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101006001",gg.TYPE_DWORD)
gg.toast("AUG")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101007012",gg.TYPE_DWORD)
gg.toast("QBZ")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100900",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101009001",gg.TYPE_DWORD)
gg.toast("MK47")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102001024",gg.TYPE_DWORD)
gg.toast("UZI")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102002030",gg.TYPE_DWORD)
gg.toast("UMP45")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102003002",gg.TYPE_DWORD)
gg.toast("Vector")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("102004001",gg.TYPE_DWORD)
gg.toast("汤姆逊")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001010",gg.TYPE_DWORD)
gg.toast("98k")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103002014",gg.TYPE_DWORD)
gg.toast("M24")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103004016",gg.TYPE_DWORD)
gg.toast("SKS")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300500",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103005014",gg.TYPE_DWORD)
gg.toast("VSS")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103006002",gg.TYPE_DWORD)
gg.toast("mini14")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10400100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1104001015",gg.TYPE_DWORD)
gg.toast("S686")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10400200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1104002003",gg.TYPE_DWORD)
gg.toast("S1897")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10400300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1104003003",gg.TYPE_DWORD)
gg.toast("S12k")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10500100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1105001001",gg.TYPE_DWORD)
gg.toast("M249")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10500200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1105002012",gg.TYPE_DWORD)
gg.toast("OP-28")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108004008",gg.TYPE_DWORD)
gg.toast("平底锅")
end
function f7()
qmnb = {
{["memory"] = 32},
{["name"] = "身法裤"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "红鞋子"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 405009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function f8()
qmnb = {
{["memory"] = 32},
{["name"] = "小白衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 403005, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f9()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 403189, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function f10()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404153, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f11()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1405318, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function f12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("100;4;1;703,001;", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("703001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("703013", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("降落伞")
end
function f13()
qmnb = {
{["memory"] = 32},
{["name"] = "吉普"},
{["value"] = 1908001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1908001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1908008, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车"},
{["value"] = 1903001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1903001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1903005, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "蹦蹦"},
{["value"] = 1907001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1907001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1907006, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function f14()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001014, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002014, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003014, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f15()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003051, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003051, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003051, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end
function g1()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-294,340,062", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("60")
gg.getResults(100)
gg.editAll("0", 4)
gg.toast("UI透明化已成功")
end
function g2()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("28992425112437505", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("28992425112437505", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(510)
    gg.editAll("0", gg.TYPE_QWORD)
    gg.toast("天空黑色开启成功")
  end
  






function Exit()
print("恩帝永远的神")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '恩帝永远的神'
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










