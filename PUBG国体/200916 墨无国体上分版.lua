-------脚本有些源码来源于网络-(打佬勿喷) --



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
           gg.toast("已修改"..#data.."条数据")
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
            gg.toast("代码跑啦...🐎", false)
            return false
        end
    else
        gg.toast("代码跑啦..重新干一遍🐎")
        return false
    end
end
gg.alert("作者本人QQ:260410374")
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "代码跑啦..重新干一遍") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "代码跑啦..重新干一遍") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function encodes(code)
  return (code:gsub("..", function(h)
    return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256)
  end
  ))
end

gg.toast("正在加载脚本......")
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

function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."已修改"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."开启成功,共修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."代码跑啦", false)  return false  end  else  gg.toast("未有数据")  return false  end end
function Main()
menu = gg.choice({
'🎯墨无超强自瞄🎨',
'🎯无后防抖🎨',
'🎯透视上色🎨',
'🎯落地功能🎨',
'🎯范围伤害🎨',
'🎯上帝视角🎨',
'🎯国体全防🎨',
'🎯终极落地🎨',
'🎯牛逼自用🎨',
'🎯牛逼自用落地🎨',
'退出脚本✅'},
nil,os.date'墨无制作:\n部分代码来自网络\n除了加速其他放心使用\n(看标题开)')
if menu == 1 then Q() end
if menu == 2 then A() end
if menu == 3 then B() end
if menu == 4 then C() end
if menu == 5 then D() end
if menu == 6 then E() end
if menu==  7 then F() end
if menu==  8 then G() end
if menu==  9 then H() end
if menu==  10 then J() end
if menu == 11 then Exit() end
XGCK=-1
end


function Q()
menu1 = gg.multiChoice({
'最新自瞄',
'全屏自瞄射和第一个自瞄起开',
'加速',
'小范围拾取',
'🎯不漏人天线🎨',
'全屏自瞄准',
'全屏自瞄眼',
'返回上一页'},
nil,'可以全开')
if menu1 == nil then else
if menu1[1] == true then q1() end
if menu1[2] == true then q2() end
if menu1[3] == true then q3() end
if menu1[4] == true then q4() end
if menu1[5] == true then q5() end
if menu1[6] == true then q6() end
if menu1[7] == true then q7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end



function A()
menu1 = gg.multiChoice({
'无后防抖(聚点)',
'子弹飞速(超快)',
'除草除树(落地)',
'步枪加伤(拿枪)',
'杀猪子弹(随时)',
'天空粉色(落地)',
'人物天线(随时)',
'车辆功能',
'返回上一页'},
nil,'都可以落地开\n看再开\n无法关闭\n.😋')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'自用仓库上色',
'透色710群主专用',
'透视659(上色)',
'透视660(上色)',
'透视625(上色)',
'439|450(上色)',
'710|725(上色)',
'P23|P60(上色)',
'返回上一页'},
nil,'625透视没问题\n其他不清楚\n(自测试).😋')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'全局除雾(随时)',
'人物地线(落地)',
'秒开倍镜(全枪)',
'屠杀准心(全枪)',
'移动防抖(全局)',
'蹲下路飞(已伤)',
'右手路飞(已伤)',
'全车刹车(落地)',
'地线(落地)',
'返回上一页'},
nil,'全部恢复\n看好再开\n(无法关闭).😋')
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
if menu1[10] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'范围追踪（持枪）',
'新范围240℉',
'香蕉君范围',
'全身范围',
'不减伤',
'小狗范围',
'返回上一页'},
nil,'范围目前未更新\n更新2个新范围落地开\n(抱歉).😋')
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

function q1()
local Zm=gg.multiChoice({
"魔仙自描(锁头)",
},{
[1]=false,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒:执行的可能有点慢,落地拿枪开"),nil)
if Zm==nil then 
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if Zm[1]==true then 
DW()--魔仙自描(锁头)
end
end
XGCK=-1
end

function DW()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
end

function q3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1.04", gg.TYPE_FLOAT)
  gg.toast("微加速开启!")
end
  
function q4()
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT) 
gg.searchNumber("200", gg.TYPE_FLOAT) 
gg.getResults(200) 
gg.editAll("285", gg.TYPE_FLOAT) 
gg.toast("小范围拾取开启成功")
end

function q5()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{9.73725,0x68},}SearchWrite(tb1,tb2,dataType)
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("不漏人天线开启成功")
	 end
	 
	 
function a1()
Name = "超级无后" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.171954133480088E27, 0},
{-2.78698202667584E28, -12},
{-3.7444097189855772E28, -8},
{-1.1368873507541788E-13, -4},

}
local modify = {{0, -12},}
SearchWrite(search,modify,dataType,Name)
Name = "超级聚点" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.171871492066637E27, 0},
{-5.729439469540494E27, 4},
{-1.238242388799446E28, 8},

}
local modify = {{-5.7294023e27, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "中心" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.171954133480088E27, 0},
{-5.90295866653701E21, 4},
{-1.1570010452933043E23, 8},
{-2.725056690512674E28, 12},

}
local modify = {{-5.9029581e21, 4},{-5.9029581e21, 8},{-5.9029581e21, 12},}
SearchWrite(search,modify,dataType,Name)
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
 gg.setRanges(32)
local tb1 = {{tonumber("29806"),tonumber("-140")}, {tonumber("7630437"),tonumber("-100")}, {tonumber("1633907556"),tonumber("-76")}, {tonumber("7632240"),tonumber("0")}, } 	
local tb2 = {{tonumber("1936942449"),tonumber("0")}, } 	
local dataType = 4
 SearchWrite(tb1,tb2, dataType)
Name = "身体防抖" 
gg.setRanges(16384)
local dataType = 16
local search = {
{8.498873666024618E-21, 0},
{3.812682238410043E-21, -4},

}
local modify = {{3.8126826e-21, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "手部防抖" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-4.125914625078661E26, 0},
{-2.7860167749667416E28, -20},

}
local modify = {{-2.7859698e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "肩膀防抖+秒切枪" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.6656266200427155E26, 0},
{-1.2359319936760283E21, -28},

}
local modify = {{-1.2359319e21, -28},}
SearchWrite(search,modify,dataType,Name)
--[[
Name = "肩膀防抖+秒切枪" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1476732032.0, 0},
{-3.7444097189855772E28, 4},
--{-1.114450155758339E28, 8},

}
local modify = {{-1,476,732,032.0, 0},}
SearchWrite(search,modify,dataType,Name)
]]
--[[
Name = "肩膀防抖" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.1784462068024127E26, 0},
{-1.114450155758339E28, 28},

}
local modify = {{-1.11445e28, 28},}
SearchWrite(search,modify,dataType,Name)
]]
gg.toast("防抖")
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
end

function a2()
Name = "子弹飞速" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.4278110478704994E28, 0},
{8.562694393506966E-26, -12},
{1.8175359108152E-27, -8},

}
local modify = {{-1.427802e28, 0},}
SearchWrite(search,modify,dataType,Name)
Name = "子弹飞速" 
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
gg.setRanges(32)
local dataType = 16
local tb1 = {{0.000005, 0}, {0.000005, -4}, {0, 4}, }
local tb2 = {{0.5, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function a4()
gg.setRanges(32)
local dataType = 16
local tb1 = {{90000, 0}, }
local tb2 = {{40000,0}, }
SearchWrite(tb1, tb2, dataType)

Name = "M416伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{88000, 0},

}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)

Name = "QBZ，SC伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{87000, 0},

}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)

Name = "M716伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{68000, 0},

}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
gg.toast("武器伤害开启")
end

function b1()
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("845红色开始")
end

function b2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("透明化开启成功")
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('8,201;1,703,961:9', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('8201', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('7',4)
gg.toast('绿色开启成功')
end

function b3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "659透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 448, ["offset"] = 76, ["type"] = 4},
{["lv"] = 2, ["offset"] = 92, ["type"] = 4},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 304, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = 312, ["type"] = 16},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "上色"},
{["value"] = 432, ["type"] = 4},
{["lv"] = 64, ["offset"] = -756, ["type"] = 4},
{["lv"] = 8, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = -756, ["type"] = 4},
}
xqmnb(qmnb)
end

function b4()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineAddress("504")
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineAddress("900")
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(1048576 or 131072) 
local tb1 = {{tonumber("-1.7632431e-38"),tonumber("0")}, {tonumber("-1.7632429e-38"),tonumber("-16")}, {tonumber("4.5920551e-41"),tonumber("12")}, {tonumber("4.5919149e-41"),tonumber("-4")}, } 	
local tb2 = {{tonumber("4.594157e-41"),tonumber("-4")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function b5()
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

function b6()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.5695588e-40, 0}, {4.814603e21, 4}, }
local tb2 = {{6444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.5774027e-39, 0}, {5.1466568e21, 4}, }
local tb2 = {{6444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("通用防闪开启成功") 
qmnb = {
{["memory"] = 1048576},
{["name"] = "吉利服补色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1669726218, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1194380045, 4}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1194380047, 4}, }
local tb2 = {{8192, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(gg.REGION_VIDEO)
local dataType = gg.TYPE_FLOAT
local tb1 = {{100, 0x8028}, {403200.0, 0x8030},{403193.71875, 0x8034},}
local tb2 = {{-90, 0x8028,},} 
SearchWrite(tb1, tb2, dataType)
end

function b7()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-1.6815582e-44, 0}, {1.6588375e-39, -56}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.5774195e-39, 0}, {2.25000047684, 44}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{2, 0}, {5.5681716e-40, -240}, {5.2806111e-40, -160}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{2, 0}, {4.7605609e21, -404}, {4.75926e21, -396}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物红色已开启")
end

function b8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12;48;368;84;4;52;356;96;12;64;372::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("356", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("28",gg.TYPE_DWORD)
gg.toast("开启成功")
--透视	 
local tb1 ={{425,0},{400855040,0x408},{395976705 ,0x410},{802824192 ,0x420},{736370688 ,0x428},{937041920 ,0x448},{736370688 ,0x450},{131074 ,0xAC8},{327680 ,0xACC},} 
local tb2 = {{4,0x124},{4,0x38C}}
local dataType = 4
gg.setRanges(4) 
SearchWrite(tb1,tb2, dataType)
--上色
local tb1 ={{425,0},{400855040,0x408},{395976705 ,0x410},{802824192 ,0x420},{736370688 ,0x428},{937041920 ,0x448},{736370688 ,0x450},{131074 ,0xAC8},{327680 ,0xACC},} 
local tb2 = {{28,0x424}}
local dataType = 4
gg.setRanges(4) 
SearchWrite(tb1,tb2, dataType)
end

function c1()
qmnb = {
{["memory"] = 16384},
{["name"] = "新除雾"},
{["value"] = -1.3620439e28, ["type"] = 16},
{["lv"] = -2.3805859e21, ["offset"] = -4, ["type"] = 16},
{["lv"] = -1.3978205e24, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function c2()
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
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-1.68741369247"),
        tonumber("0")
      },
      {
        tonumber("0.33067199588"),
        tonumber("12")
      }
    }, {
      {
        tonumber("-999999999"),
        tonumber("0")
      }
    }, (tonumber("16")))
    qmnb = {
      {
        ["memory"] = gg.REGION_VIDEO
      },
      {
        ["name"] = "盒子定位"
      },
      {
        ["value"] = 11.05930042267,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = tonumber("13.30930042267"),
        ["offset"] = tonumber("48"),
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = tonumber("13.30930042267"),
        ["offset"] = tonumber("60"),
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = 99999,
        ["offset"] = tonumber("48"),
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["value"] = 99999,
        ["offset"] = tonumber("60"),
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["value"] = 99999,
        ["offset"] = tonumber("144"),
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["value"] = 99999,
        ["offset"] = tonumber("156"),
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
end

function c3()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.37999999523,0xEAE0}, {6.16031837463, 0xEAD4},{6.1603140831,0xEACC}, }
local tb2 = {{0, 0xEAE0},}
SearchWrite(tb1, tb2, dataType)
gg.toast("秒开倍镜已开启")
end

function c4()
qmnb = {
{["memory"] = 32},
{["name"] = "屠杀准X"},
{["value"] = 16, ["type"] = 16},
{["lv"] = 4, ["offset"] = -4, ["type"] = 16},
{["lv"] = 8, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 669, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function c5()
Name = "移动防抖" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.108018541693195E27, 0},
{-1.3697733999143556E28, -4},
{-5.729405232383493E27, 4},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end

function c6()
qmnb = {
{["memory"] = 32},
{["name"] = "新下蹲路飞"},
{["value"] = 18.38787841797, ["type"] = 16},
{["lv"] = 0.4148209691, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.53869867325, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 110, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function c7()
qmnb = {
{["memory"] = 32},
{["name"] = "值站右手路飞"},
{["value"] = -2.83384513855, ["type"] = 16},
{["lv"] = 5.82142114639, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.19047555327, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 80, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function c8()
qmnb = {
{["memory"] = 16},
{["name"] = "全车刹车"},
{["value"] = 9999, ["type"] = 16},
{["lv"] = 0.70700001717, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function c9()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("香蕉原创逼线")
end

function d1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
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
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围伤害"},
{["value"] = 9.20161819458, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 180, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT, ["freeze"] = true},
{["value"] = 180, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT, ["freeze"] = false},
{["value"] = 180, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["value"] = 180, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("12.66705417633;28;15;26:5120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
--ÿ ÿD ÿ" ÿ ÿ" ÿD  ÿ --
--2020年07月04日 11:08:48
gg.toast("范围伤害已成功")
end

function d2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;25;30.5::", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("魔仙范围1已开启")
else
gg.searchNumber("30.5;25.0:385", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("240", 16)
gg.toast("魔仙范围2已开启")
end
end

function d3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('9.201618;30.5;25', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30.5;25', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('999',16)
gg.toast('香蕉君独家范围')
end

function d4()
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("20.51941871643"),
        tonumber("-24")
      },
      {
        tonumber("16"),
        tonumber("0")
      },
      {
        tonumber("26"),
        tonumber("4")
      }
    }, {
      {
        tonumber("200"),
        tonumber("0")
      },
      {
        tonumber("-200"),
        tonumber("4")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-88.66608428955"),
        tonumber("-4")
      },
      {
        tonumber("16"),
        tonumber("0")
      },
      {
        tonumber("26"),
        tonumber("4")
      }
    }, {
      {
        tonumber("88.66608"),
        tonumber("0")
      },
      {
        tonumber("-56"),
        tonumber("0")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-88.73961639404"),
        tonumber("-8")
      },
      {
        tonumber("28"),
        tonumber("0")
      }
    }, {
      {
        tonumber("-560"),
        tonumber("0")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("9.20161819458"),
        tonumber("-28")
      },
      {
        tonumber("23"),
        tonumber("-4")
      },
      {
        tonumber("25"),
        tonumber("0")
      },
      {
        tonumber("30.5"),
        tonumber("4")
      }
    }, {
      {
        tonumber("300"),
        tonumber("0")
      },
      {
        tonumber("300"),
        tonumber("4")
      }
    }, (tonumber("16")))
  end

function d5()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="不减伤范围"},
{["value"] =9.20161819458, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 30.5, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =156, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["value"] =156, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function d6()
gg.setRanges(32)--A内存
local dataType = 16
local Name ="头部范围"
local tb1 = {{0.00009203507, 0}, {25, 20}, {30.5, 24}, }
local tb2 = {{295, 20}, {295, 24}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)--A内存
local dataType = 16
local Name ="身体范围"
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)--A内存
local dataType = 16
local Name ="身体范围2"
local tb1 = {{-88.73961639404, 0}, {18, 4}, {28, 8}, }
local tb2 = {{-530, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)--A内存
local dataType = 16
local Name ="全身范围"
local tb1 = {{69.5, 0}, {33, -4}, {35, -8}, }
local tb2 = {{270, 0}, {130, -4}, }
SearchWrite(tb1, tb2, dataType)
end

function E()
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/afd/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/map_helicopter_0.19.3.13455.pak")
  gg.toast("开启成功")
end

function G()
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
gg.toast("刚点就下去了")
end
end
end
end
end

function H()
local Zm=gg.multiChoice({
"魔仙自描(锁头)",
},{
[1]=false,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒:执行的可能有点慢,落地拿枪开"),nil)
if Zm==nil then 
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if Zm[1]==true then 
DW()--魔仙自描(锁头)
end
end
XGCK=-1
end

function DW()
qmnb = {
{["memory"] = 16384},
{["name"] = "恭喜：内存自瞄未"},
{["value"] = 90468612, ["type"] = 4},
{["lv"] = -476053504, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] = -476053503, ["offset"] = 140, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "内存自瞄"},
{["value"] = 1324370533, ["type"] = 4},
{["lv"] = 1324366404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 60, ["type"] = 4},
}
xqmnb(qmnb)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄"
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)
Name = "内存自瞄" 
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
Name = "内存自瞄" 
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
Name="内存自瞄"
local dataType = 32
local tb1 = {{-2044634016379303408, 0}, }
local tb2 = {{-1292522027172757503, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name="内存自瞄"
local dataType = 32
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast("内存自瞄已成功")
end

function J()
qmnb = {
{["memory"] = 32},
{["name"] = "新下蹲路飞"},
{["value"] = 18.38787841797, ["type"] = 16},
{["lv"] = 0.4148209691, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.53869867325, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 110, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "值站右手路飞"},
{["value"] = -2.83384513855, ["type"] = 16},
{["lv"] = 5.82142114639, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.19047555327, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 80, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{9.73725,0x68},}SearchWrite(tb1,tb2,dataType)
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("不漏人天线开启成功")
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT) 
gg.searchNumber("200", gg.TYPE_FLOAT) 
gg.getResults(200) 
gg.editAll("285", gg.TYPE_FLOAT) 
gg.toast("小范围拾取开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("击杀特效")
end

function a2()
Name = "子弹飞速" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.4278110478704994E28, 0},
{8.562694393506966E-26, -12},
{1.8175359108152E-27, -8},

}
local modify = {{-1.427802e28, 0},}
SearchWrite(search,modify,dataType,Name)
Name = "子弹飞速" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-3.254379949369797E30, 0},
{2.646983324423844E-23, -56},

}
local modify = {{-1.427802e28, -56},}
SearchWrite(search,modify,dataType,Name)
end

function a5()
Name = "杀猪子弹" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.2516221238243211E23, 0},}
local modify = {{-1.98130876e28, 8},{-2.78596955e28, 16},}
SearchWrite(search,modify,dataType,Name)
end

 function a6()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType= 16
Name="天空粉色"
local tb1={{1.0761972e-42,0x424C},{4.5919149e-41,0x4250}}
local tb2={{1.2611686e-44,0x4250}}
SearchWrite(tb1,tb2,dataType)
 end

function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "天线"},
{["value"] = tonumber("88.50576019287"), ["type"] = 16},
{["lv"] = tonumber("87.27782440186"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("1.96875"), ["offset"] = tonumber("0"), ["type"] = 16},
{["value"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "天线"},
{["value"] = tonumber("1.96875"), ["type"] = 16},
{["lv"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("999"), ["offset"] = tonumber("12"), ["type"] = 16},
}
xqmnb(qmnb)
end

function a8()
local Zm=gg.multiChoice({
"吉普加速",
"轿车加速",
"蹦蹦加速",
"摩托加速",
"载具锁油",
"正在更新",
"正在更新",
"正在更新",
},{
[1]=false,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if Zm==nil then 
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if Zm[1]==true then 
DA()--
end
if Zm[2]==true then 
DS()--
end
if Zm[3]==true then
DI()--
end
if Zm[4]==true then 
DY()--
end
if Zm[5]==true then 
DE()--
end
if Zm[6]==true then 
DK()--
end
if Zm[7]==true then 
DL()--
end
if Zm[8]==true then 
DP()--
end
end
XGCK=-1
end

function DA()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  gg.editAll("100.241295", 16)
  gg.clearResults()
  gg.toast("吉普车加速")
end

function DS()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车车加速")
end

function DI()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹦蹦车加速")
end

function DY()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("摩托车加速")
end


function DE()
 gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("汽车锁油")
end

function Exit()
print("墨无国体制作.😋")
os.exit()
end




function HOME()
lw=1
Main()
end



cs = '墨无国体制作.😋'
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
