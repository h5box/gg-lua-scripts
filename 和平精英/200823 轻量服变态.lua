gg.alert("鸡巴🐔")
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
'QQ',
'大厅区',
'透视区',
'落地区',
"开启加速",
"关闭加速",
'退出脚本'},
2018,'')
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
'2381194782',
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then HOME() end
if menu1[3] == true then a3() end
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
'全屏自瞄',
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
nil,'掉分愉快')
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
'返回上一页'},
nil,'全局就是开一次就可以，单局则需要每局都开')
if menu1 == nil then else
if menu1[1] == true then d2() end
if menu1[2] == true then d3() end
if menu1[3] == true then d4() end
if menu1[4] == true then d5() end
if menu1[5] == true then d6() end
if menu1[6] == true then d7() end
if menu1[7] == true then HOME() end
if menu1[8] == true then HOME() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end





function E()
  

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,728,725,571",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,576,460,390",gg.TYPE_QWORD)
gg.toast("加速开启成功")
 
  end








function F()

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,328,550,408,576,460,390",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,328,550,408,728,725,571",gg.TYPE_QWORD)
gg.toast("40倍加速关闭成功")
end



function a1()


end
 




function a2()

gg.toast("开启成功")
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
gg.toast("内存自瞄已成功")

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



function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '这里可以填QQ'
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










