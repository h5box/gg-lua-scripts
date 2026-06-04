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
'防封区.交流群587274326',
'大厅区',
'透视区',
'落地区',
"开启加速",
"关闭加速",
"美化专区",
'退出脚本'},
2018,'')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then MH() end
if menu == 8 then Exit() end
if menu == 9 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'开启防封',
"若上面的那个防封开启不了开这个防封",
'返回上一页'},
nil,'第一个防封能开启成功就不要开第二个了')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then HO() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'无后',
'聚点',
'防抖',
'秒刹车',
'全屏自瞄+持枪圈透',
"全枪瞬击",
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then HOME() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'665透视',
'665上色',
'845透视',
'845上色',
"660透视",
"660上色",
"天线",
'返回上一页'},
nil,'均衡画质')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then HOME() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'范围伤害[单局]',
'吉普加速[单局]',
'上帝视角[单局]',
'下蹲路飞[持枪，单局]',
'跳跃翻墙[单局]',
'秒下飞机[单局]',
"M16A4连发[单局]",
"8倍红点全息[单局]",
"2倍加速",
'返回上一页'},
nil,'全局就是开一次就可以，单局则需要每局都开')
if menu1 == nil then else
if menu1[1] == true then d2() end
if menu1[2] == true then d3() end
if menu1[3] == true then d4() end
if menu1[4] == true then lf() end
if menu1[5] == true then d6() end
if menu1[6] == true then d7() end
if menu1[7] == true then d8() end
if menu1[8] == true then d9() end
if menu1[9] == true then d10() end
if menu1[10] == true then HOME() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end

function lf()
menu1 = gg.multiChoice({
"下蹲路飞",
"垂直路飞",
"站立向前",
"站立向右",
"下蹲小路飞",
"趴下向右",
"下蹲探头路飞",
'返回上一页'},
nil,'出生岛或落地开启,一把一开')

if menu1 == nil then else
if menu1[1] == true then lf1() end
if menu1[2] == true then lf2() end
if menu1[3] == true then lf3() end
if menu1[4] == true then lf4() end
if menu1[5] == true then lf5() end
if menu1[6] == true then lf6() end
if menu1[7] == true then lf7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function lf1()
Name = "蹲下路飞" 
gg.setRanges(32)
local dataType = 16
local search = {
{-0.004204273223876953, 0},
{-0.004206657409667969, -4},
{-0.10547397285699844, 4},
{-0.30011314153671265, 8},

}
local modify = {{-130, 0},}
SearchWrite(search,modify,dataType,Name)
end

function lf2()
gg.toast("下蹲路飞开启")
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-0.05608201399"),
        tonumber("-4")
      },
      {
        tonumber("0.01518154144"),
        tonumber("4")
      }
    }, {
      {
        tonumber("125"),
        tonumber("0")
      }
    }, (tonumber("16")))
end

function lf3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.65688276291;0.03494880721;5.82142114639;-2.83384513855", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5.82142114639", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("站立路飞开启成功")
end


function lf5()
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

function lf4()
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




function lf6()

gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00350189209", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 tts=gg.getResultCount()
   tti=gg.getResults(tts)
   luf={}
   ioo={}
  if tti[1]~=nil then
  for i=1,tts do
  luf[i]={}
  luf[i].address=tti[i].address-476
  luf[i].flags=16
luf=gg.getValues(luf)


if luf[i].value>-0.003 and luf[i].value<-0.0028 then
gg.setValues({[1]={address = luf[i].address,flags = 16,value = -200}})

end
end
end
end

function lf7()
Fxs({{18.38787841797,0,16},{0.53869867325,4,16},{-3.42231750488,8,16},},{{175,0,16},},32,"蹲下路飞开启成功")
end

function lf8()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("0.53446578979", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("趴下路飞开启成功")
end



function E()
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,287,719,427,143,988,736", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  n=gg.getResultCount()
  jz=gg.getResults(n)
	 	 if gg.getResultCount() == 0 then
gg.toast("不拉回加速")
else
gg.clearResults()
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
         if gg.getResultCount() == 0 then
 for i=1, n do
    gg.setValues({[1] = {address =jz[i].address-8,flags = gg.TYPE_QWORD,value = "-1,296,744,149,883,614,555"}})
    gg.setValues({[1] = {address =jz[i].address-0x6F4058,flags = gg.TYPE_QWORD,value = "-1,904,987,454,010,553,855"}})
    gg.setValues({[1] = {address =jz[i].address-0x5E4B0,flags = gg.TYPE_BYTE,value = "-61"}})
end
else
 for i=1, n do
    gg.setValues({[1] = {address =jz[i].address-8,flags = gg.TYPE_QWORD,value = "-1,296,744,153,870,237,696"}})
    gg.setValues({[1] = {address =jz[i].address-0x6F4058,flags = gg.TYPE_QWORD,value = "-1,904,987,454,002,165,247"}})
    gg.setValues({[1] = {address =jz[i].address-0x5E4B0,flags = gg.TYPE_BYTE,value = "0"}})
end
end
end
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "40倍加速"},
{["value"] = 0.0005, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0001, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {

{["value"] = 0.07, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,728,725,571",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,576,460,390",gg.TYPE_QWORD)
gg.toast("40倍加速开启成功")
end








function F()

qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "关闭加速"},
{["value"] = 0.07, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0001, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {

{["value"] = 0.0005, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,576,460,390",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,728,725,571",gg.TYPE_QWORD)
gg.toast("40倍加速关闭成功")
end


function a1()

 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0;0;65,537;0;0;1,065,353,216:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65537", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("第一步成功")
	
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封开启第一步成功")
	 
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("防封开启失败")
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address-252,flags = 4,freeze = true,value = 10086}})
gg.addListItems({[1] = {address =jz[i].address+48,flags = 4,freeze = true,value = 110}})
gg.addListItems({[1] = {address =jz[i].address+100,flags = 4,freeze = true,value = 4451}})
end
gg.toast("防封开启成功")

end
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
end
 




function a2()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608:45',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('196,608',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 110}})

end
gg.toast("开启成功")
local dataType = 4
local tb1 = {{16384, 0}, {16384, 4}, {16384, 8}, {16384, 12}, {16384, 16}, {16384, 20}, }
local tb2 = {{4451, 0,true}, {4451, 8,true}, }
SearchWrite(tb1, tb2, dataType)
local dataType = 4
local tb1 = {{4451, 0}, {16384, 4}, {4451, 8}, {16384, 12}, {16384, 16}, {16384, 20}, }
local tb2 = {{4451, 508,true}, {69888, 100,true}, }
SearchWrite(tb1, tb2, dataType)

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("防封开启失败")
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address-252,flags = 4,freeze = true,value = 10086}})
gg.addListItems({[1] = {address =jz[i].address+48,flags = 4,freeze = true,value = 110}})
gg.addListItems({[1] = {address =jz[i].address+100,flags = 4,freeze = true,value = 4451}})
end
gg.toast("防封开启成功")

end
end



function a3()

gg.toast("开启成功")
end



function a4()

gg.toast("开启成功")
end



function a5()

gg.toast("开启成功")
end



function a6()

gg.toast("开启成功")
end



function a7()

gg.toast("开启成功")
end



function a8()

gg.toast("开启成功")
end



function a9()

gg.toast("开启成功")
end



function a10()

gg.toast("开启成功")
end



function b1()
 gg.clearResults()     
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)     
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)    
gg.getResults(1)
     gg.editAll('0', gg.TYPE_FLOAT)
     gg.toast("无后座开启成功")
end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点已成功")
end






function b3()

gg.clearResults()
     
gg.setRanges(gg.REGION_C_DATA)
     gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     
gg.getResults(1)
     gg.editAll('0', gg.TYPE_FLOAT)
     gg.toast("防抖开启成功")
     
gg.clearResults()
     
gg.setRanges(gg.REGION_C_DATA)
     gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(1)
     gg.editAll('0', gg.TYPE_FLOAT)
     gg.toast("完美防抖开启成功")
end


function MH() 
menu = gg.multiChoice({
"一键全开",
"M416粉红兔",
"SCAR-L血魔",
"UMP9赤橙",
"汤姆逊青耀",
"AUG血魔",
"QBZ血魔",
"QBZ街头涂鸦",
"M762珊瑚金",
"MK47少女心",
"M416赤橙",
"M16A4少女心",
"AKM黄金",
"SCAR-L赤橙",
"SKS蓝海",
"AWM霓虹",
"MINI14摇滚",
"DP-28空色",
"UZI街头小子",
"UMP9绿茵",
"GROZA蓝海",
"S1897黄金",
"S12K凋零者",
"M249凋零者",
"撬棍国王拐杖",
"Vector粉红兔",
"Vector蓝海",
"98K金龙",
"98K沙漠灰",
"98K血魔",
"98K赤橙",
"98K少女心",
"98K蓝海",
"98K黄金",
"98K新沙漠灰",
"P92沙漠灰",
"QBU沙漠灰",
"平底锅烈焰",
"平底锅拒绝",
"平底锅白金",
"平底锅靶子",
"平底锅美国",
"SKS金鳞",
"SKS沙漠灰";
"SKS新沙漠灰";
"退出脚本"
},nil, "") 
if menu == nil then else
if menu[1] == true then j666() end
if menu[2] == true then j1() end
if menu[3] == true then j2() end
if menu[4] == true then j3() end
if menu[5] == true then j4() end
if menu[6] == true then j5() end
if menu[7] == true then j6() end
if menu[8] == true then j7() end
if menu[9] == true then j8() end
if menu[10] == true then j9() end 
if menu[11] == true then j10() end
if menu[12] == true then j11() end
if menu[13] == true then j12() end
if menu[14] == true then j13() end
if menu[15] == true then j14() end
if menu[16] == true then j15() end
if menu[17] == true then j16() end
if menu[18] == true then j17() end
if menu[19] == true then j18() end
if menu[20] == true then j19() end
if menu[21] == true then j20() end
if menu[22] == true then j21() end
if menu[23] == true then j22() end
if menu[24] == true then j23() end
if menu[25] == true then j24() end
if menu[26] == true then j25() end
if menu[27] == true then j26() end
if menu[28] == true then j27() end
if menu[29] == true then j28() end
if menu[30] == true then j29() end
if menu[31] == true then j30() end
if menu[32] == true then j31() end
if menu[33] == true then j32() end
if menu[34] == true then j33() end 
if menu[35] == true then j34() end
if menu[36] == true then j35() end
if menu[37] == true then j36() end
if menu[38] == true then j37() end
if menu[39] == true then j38() end
if menu[40] == true then j39() end
if menu[41] == true then j40() end
if menu[42] == true then j41() end
if menu[43] == true then j42() end
if menu[44] == true then j43() end
if menu[45] == true then HO() end
if menu[46] == true then 
print("") os.exit()
end end XGCK = -1 end

function j1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("101004001",gg.TYPE_DWORD)
gg.toast("M416改粉红兔")
end

function j2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("101003001",gg.TYPE_DWORD)
gg.toast("SCAR-L改血魔")
end

function j3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("102002001",gg.TYPE_DWORD)
gg.toast("UMP9改赤橙")
end

function j4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("103004001",gg.TYPE_DWORD)
gg.toast("汤姆逊改青耀")
end

function j5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101006003",gg.TYPE_DWORD)
gg.toast("AUG改血魔")
end

function j6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101007001",gg.TYPE_DWORD)
gg.toast("QBZ改血魔")
end

function j7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101007002",gg.TYPE_DWORD)
gg.toast("QBZ改街头涂鸦")
end

function j8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101008016",gg.TYPE_DWORD)
gg.toast("M762改珊瑚金")
end

function j9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100900",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101009001",gg.TYPE_DWORD)
gg.toast("MK47改少女心")
end

function j10()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101004015",gg.TYPE_DWORD)
gg.toast("M416改赤橙")
end

function j11()
gg.clearResults()
gg.searchNumber("10100200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101002019",gg.TYPE_DWORD)
gg.toast("M16A4改少女心")
end

function j12()
gg.clearResults()
gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101001007",gg.TYPE_DWORD)
gg.toast("AKM改黄金")
end

function j13()
gg.clearResults()
gg.searchNumber("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101003018",gg.TYPE_DWORD)
gg.toast("SCAR-L改赤橙")
end

function j14()
gg.clearResults()
gg.searchNumber("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103004004",gg.TYPE_DWORD)
gg.toast("SKS改蓝海")
end

function j15()
gg.clearResults()
gg.searchNumber("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103003002",gg.TYPE_DWORD)
gg.toast("AWM改霓虹")
end

function j16()
gg.clearResults()
gg.searchNumber("10300600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103006002",gg.TYPE_DWORD)
gg.toast("MINI14改摇滚")
end

function j17()
gg.clearResults()
gg.searchNumber("10500200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1105002001",gg.TYPE_DWORD)
gg.toast("DP-28改空色")
end

function j18()
gg.clearResults()
gg.searchNumber("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102001004",gg.TYPE_DWORD)
gg.toast("UZI改街头小子")
end

function j19()
gg.clearResults()
gg.searchNumber("10200200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102002003",gg.TYPE_DWORD)
gg.toast("UMP9改绿茵")
end

function j20()
gg.clearResults()
gg.searchNumber("10100500",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1101005002",gg.TYPE_DWORD)
gg.toast("GROZA改蓝海")
end

function j21()
gg.clearResults()
gg.searchNumber("10400200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1104002004",gg.TYPE_DWORD)
gg.toast("S1897改黄金")
end

function j22()
gg.clearResults()
gg.searchNumber("10400300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1104003003",gg.TYPE_DWORD)
gg.toast("S12K改凋零者")
end

function j23()
gg.clearResults()
gg.searchNumber("10500100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1105001001",gg.TYPE_DWORD)
gg.toast("M249改凋零者")
end

function j24()
gg.clearResults()
gg.searchNumber("10800200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108002003",gg.TYPE_DWORD)
gg.toast("撬棍改国王拐杖")
end

function j25()
gg.clearResults()
gg.searchNumber("10200300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102003001",gg.TYPE_DWORD)
gg.toast("Vector改粉红兔")
end

function j26()
gg.clearResults()
gg.searchNumber("10200300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1102003002",gg.TYPE_DWORD)
gg.toast("Vector改蓝海")
end

function j27()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001003",gg.TYPE_DWORD)
gg.toast("98K改金龙")
end

function j28()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001005",gg.TYPE_DWORD)
gg.toast("98K改沙漠灰")
end

function j29()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001007",gg.TYPE_DWORD)
gg.toast("98K改血魔")
end

function j30()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001009",gg.TYPE_DWORD)
gg.toast("98K改赤橙")
end

function j31()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001010",gg.TYPE_DWORD)
gg.toast("98K改少女心")
end

function j32()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001011",gg.TYPE_DWORD)
gg.toast("98K改蓝海")
end

function j33()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001013",gg.TYPE_DWORD)
gg.toast("98K改黄金")
end

function j34()
gg.clearResults()
gg.searchNumber("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103001014",gg.TYPE_DWORD)
gg.toast("98K改新沙漠灰")
end

function j35()
gg.clearResults()
gg.searchNumber("10600100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1106001001",gg.TYPE_DWORD)
gg.toast("P92改沙漠灰")
end

function j36()
gg.clearResults()
gg.searchNumber("10301000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103010002",gg.TYPE_DWORD)
gg.toast("QBU改沙漠灰")
end

function j37()
gg.clearResults()
gg.searchNumber("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108004001",gg.TYPE_DWORD)
gg.toast("平底锅改烈焰")
end

function j38()
gg.clearResults()
gg.searchNumber("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108004004",gg.TYPE_DWORD)
gg.toast("平底锅加拒绝")
end

function j39()
gg.clearResults()
gg.searchNumber("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108004008",gg.TYPE_DWORD)
gg.toast("平底锅改白金")
end

function j40()
gg.clearResults()
gg.searchNumber("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108004009",gg.TYPE_DWORD)
gg.toast("平底锅加靶子")
end

function j41()
gg.clearResults()
gg.searchNumber("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1108004015",gg.TYPE_DWORD)
gg.toast("平底锅加美国标志")
end

function j42()
gg.clearResults()
gg.searchNumber("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103004001",gg.TYPE_DWORD)
gg.toast("SKS改金鳞")
end

function j43()
gg.clearResults()
gg.searchNumber("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103004002",gg.TYPE_DWORD)
gg.toast("SKS改沙漠灰")
end

function j44()
gg.clearResults()
gg.searchNumber("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("1103004003",gg.TYPE_DWORD)
gg.toast("SKS改新沙漠灰")
end
function b4()
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



function b5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-476,053,504',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-476,053,503',gg.TYPE_DWORD)
qmnb = {
{["memory"] = 8},
{["name"] = "内存自瞄第一步"},
{["value"] = -2.8488793e28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -5.4827808e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.2464639e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.7270195e28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 0, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 8},
{["name"] = "内存自瞄第一步"},
{["value"] = -6.179705e26, ["type"] = 16},
{["lv"] = -1.427811e28, ["offset"] = 52, ["type"] = 16},
{["lv"] = -6.0800085e27, ["offset"] = 108, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 52, ["type"] = 16},
{["value"] = 0, ["offset"] = 108, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 8},
{["name"] = "内存自瞄第一步"},
{["value"] = 90468612, ["type"] = 4},
{["lv"] = -476053504, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] = -476053503, ["offset"] = 140, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 8},
{["name"] = "内存自瞄第一步"},
{["value"] = 1324370533, ["type"] = 4},
{["lv"] = 1324366404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 60, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-301790705", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_DWORD)
qmnb = {
{["memory"] = 8},
{["name"] = "内存自瞄第一步"},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(8) 
local tb1 = {{ ("6.1630853e-33"), ("-8")}, { ("-1.0767317e28"), ("0")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{ ("-1.5573156e26"), ("8")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("内存自瞄第一步已成功")
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.toast("开启成功")
end






function b6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("瞬击成功")
end




function b7()

gg.toast("开启成功")
end



function b8()

gg.toast("开启成功")
end



function b9()

gg.toast("开启成功")
end



function b10()

gg.toast("开启成功")
end



function c1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_FLOAT)
end







function c2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('8,200;1,194,346,760;8,202;1,194,344,462;8,203:17',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8200;8203',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('6;10',gg.TYPE_DWORD)
end



function c3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.2857208e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-3.1294694e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_FLOAT)

end



function c4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('8,201;1,194,344,458;8,202;1,194,344,460;8203',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8201',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('7',gg.TYPE_DWORD)
gg.toast("上色开启成功")
end



function c5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-8.3358201e-40',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-8.3358201e-40',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('-1.568266e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.568266e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
end


function c6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('1,194,344,455;8,201;1,194,346,763;8,203;1,194,377,232:17',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8201;8203',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('7;10',gg.TYPE_DWORD)
gg.toast("上色开启成功")
end



function c7()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "肩部全局天线"},
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



function c8()

gg.toast("开启成功")
end



function c9()

gg.toast("开启成功")
end



function c10()

gg.toast("开启成功")
end


function d1()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全屏自瞄"},
{["value"] = 3.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.20000004768, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.10000000149, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 36, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 200, ["offset"] = 52, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20, ["offset"] = 56, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.toast("内存自瞄启成功")
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("增强自瞄")
end


function d2()

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

function d3()
qmnb = {
{["memory"] = 32},
{["name"] = "吉普加速"},
{["value"] = 1500, ["type"] = 16},
{["lv"] = 1025, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1000, ["offset"] = 32, ["type"] = 16},
{["lv"] = 10, ["offset"] = 36, ["type"] = 16},
{["lv"] = 50, ["offset"] = 84, ["type"] = 16},
{["lv"] = 5, ["offset"] = 88, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 120, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 124, ["type"] = 16},

}
qmxg = {
{["value"] = -0.23, ["offset"] = 124, ["type"] = 16},
}
xqmnb(qmnb)
end



function d4()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="上帝模式开启成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function d5()
gg.setRanges(32)
local dataType = 16
local search = {
{-0.004204273223876953, 0},
{-0.004206657409667969, -4},
{-0.10547397285699844, 4},
{-0.30011314153671265, 8},

}
local modify = {{-130, 0},}
SearchWrite(search,modify,dataType,Name)
end


function d6()
qmnb = {
{["memory"] = 32},
{["name"] = "翻墙"},
{["value"] = 45.0, ["type"] = 16},
{["lv"] = 40, ["offset"] = 4, ["type"] = 16},

}
qmxg = {
{["value"] = 9999, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end



function d7()
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
end
function d8()


gg.alert("请将M16切换至3连射然后开一枪后再开启此功能！")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("12,884,902,402", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12,884,902,402", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(5) 
gg.editAll("9999", gg.TYPE_QWORD)
gg.toast("M16连射开启成功")
end
function d9()

gg.toast("开镜后开启")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("60;55;1.9618179e-44", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("55", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("15",gg.TYPE_FLOAT)
gg.toast("四倍红点开启成功")
end
function d10()

gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("1.123", gg.TYPE_FLOAT)
     gg.toast("人物2倍加速开启成功")
end



function Exit()
print("")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = ''
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










