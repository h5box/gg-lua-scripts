
----------------------------------------------配置区域--------------------------------------------------------------------------------------------------------

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
            gg.toast("搜索η"..#data.."条ΔΘ")
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
            gg.toast("无数据", false)
            return false
        end
    else
        gg.toast("Not Found")
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
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."开启成功"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."开启成功"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("开启失败")  return false  end end  
gg.alert("🐔Q群1038723289")
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Main()
menu = gg.choice({
'🐔透色',
'🐔加速',
'🐔大厅',
'🐔落地',
'🐔范围',
'🐔车辆',
"🐔自瞄",
'小🐔下凡'},
nil,'无知nb')
if menu == 1 then H() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then G() end
if menu == 7 then ZM() end
if menu == 8 then Exit() end
XGCK=-1
end

function H()
menu1 = gg.multiChoice({
"晓龙",
"联发科",
"麒麟",
"没有的点这个(大全)",
'返回上页'},
nil,'1038723289')

if menu1 == nil then else
if menu1[1] == true then XL() end
if menu1[2] == true then LFK() end
if menu1[3] == true then QL() end
if menu1[4] == true then TSZH() end
if menu1[8] == true then HOME() end
end
end

function XL()
menu1 = gg.multiChoice({
'6系列透视',
'6系列红色',
'6系列绿色',
'6系列枪色',
'6系列车色',
'845透视',
'845浅蓝',
'845绿色',
'845深蓝',
"865透色",
"855透色",
'返回上页'},
nil,'🐔无知变态脚本')

if menu1 == nil then else
if menu1[1] == true then h1() end
if menu1[2] == true then h2() end
if menu1[3] == true then h3() end
if menu1[4] == true then h4() end
if menu1[5] == true then h5() end
if menu1[6] == true then h6() end
if menu1[7] == true then h7() end
if menu1[8] == true then h8() end
if menu1[9] == true then h9() end
if menu1[10] == true then h10() end
if menu1[11] == true then h11() end
if menu1[12] == true then HOME() end
end
end
function h1()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.5695588e-40, 0}, {4.7408149e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.5774027e-39, 0}, {5.6262783e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪1
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202017189786658E-19, -132}, {3.76158192263132E-37, -124}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪2
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202010727438122E-19, -132}, {9.80908925027372E-45, -128}, {1.1202014604847243E-19, -124}, {255.0, -8}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
end
function h2()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1661304844, -4}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
end
function h3()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1661304844, -4}, }
local tb2 = {{6, 0}, }
SearchWrite(tb1, tb2, dataType)
end
function h4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,200;8,201;983,052;738,328,592:113", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("5",gg.TYPE_DWORD)
gg.toast("枪械上色")
end
function h5()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {539246600, -4}, }
local tb2 = {{5, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function h6()
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
end

function h7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end



function h8()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
end



function h9()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("深一点的蓝色开启成功")
end





function h10()
SN = gg.choice({
	 "865透明裤头",
	 "865逼逼的马赛克",
	 "865头顶一片绿",
	 "865红色裤衩",
}, nil, "快进来，好舒服")
if SN==1 then
	 HS6()
end
if SN==2 then
	 HS7()
end
if SN==3 then
	 HS8()
end
if SN==4 then
	 HS9()
end
FX1=0
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1.12020508e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
	 end
	 gg.toast("865透视开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1.25414346e-19;1.7506772e-39;2.0;1.8425141e-39;1.74488844e-39::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("865马赛克开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1,194,347,012;8,196;8,200;524,292;1,080,039,424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200\n", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_DWORD)
	 gg.toast("865绿色开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults(gg.REGION_VIDEO)
	 gg.setRanges(262207)
	 gg.searchNumber("1,194,347,012;8,196;8,200;524,292;1,080,039,424\n", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_DWORD)
	 gg.toast("865红色开启成功")
	 gg.clearResults()
end

function h11()
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移马赛克"},
{["value"] = -1.6815581571897805E-44, ["type"] = 16},
{["lv"] = 4.92528066768045E21, ["offset"] = -12, ["type"] = 16},
{["lv"] = 9.763126660643865E-41, ["offset"] = -8, ["type"] = 16},
{["lv"] = 4.906834486556694E21, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移人物透视"},
{["value"] = -2.5774194758203506E-39, ["type"] = 16},
{["lv"] = 5.626267638530528E21, ["offset"] = -28, ["type"] = 16},
{["lv"] = 6.087445810522475E21, ["offset"] = -20, ["type"] = 16},
{["lv"] = 6.105893117546138E21, ["offset"] = -12, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "人物上色6蓝色7绿色8黑色10白色"},
{["value"] = 8201, ["type"] = 4},
{["lv"] = 1194344495, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194379840, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "车辆黄色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1075052562, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1661599764, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 11, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function LFK()
menu1 = gg.multiChoice({
'P60透视(1)',
'P60红色',
"自改上色",
"P70透色",
"P60透色(2)",
"通用防闪",
"P22透色",
"P23透色",
"P10透视",
'返回上页'},
nil,'🐔Q群1038723289')

if menu1 == nil then else
if menu1[1] == true then lfk1() end
if menu1[2] == true then lfk2() end
if menu1[3] == true then lfk3() end
if menu1[4] == true then lfk4() end
if menu1[5] == true then lfk5() end
if menu1[6] == true then lfk6() end
if menu1[7] == true then lfk7() end
if menu1[8] == true then lfk8() end
if menu1[9] == true then lfk9() end
if menu1[10] == true then HOME() end
end
end
function lfk1()
gg.alert("需要冻结2")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("5.1567783e-43;3.5873241e-43;3.2229865e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end

function lfk2()
  qmnb = {
    {memory = 4},
    {name = "成功"},
    {value = 395976705, type = 4},
    {
      lv = 802824192,
      offset = 8,
      type = 4
    },
    {
      lv = 802824192,
      offset = 16,
      type = 4
    },
    {
      lv = 40,
      offset = 60,
      type = 4
    }
  }
  qmxg = {
    {
      value = 38,
      offset = 60,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function lfk3()
  a = gg.prompt({
    "联发科上色，随便改正负都可以"
  }, {
    [1] = 36
  }, {
    [1] = "number"
  })
  ab = "\"" .. a[1] .. "\""
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("802,824,192;48;937,041,920;40;736,370,688", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(ab, gg.TYPE_DWORD)
  gg.toast("上色")
end

function lfk4()
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
	 gg.toast("透视联发科 P70")
	 gg.clearResults()
	 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("38", gg.TYPE_DWORD)
gg.toast("联发科红色上色，正在进行中")
	 end
function lfk5()
gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.8530377e-34;1.2960464e-38;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;5.1567783e-43;1.4012985e-45;2.8025969e-45;0.5:289", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    var = gg.getResults(20)
    gg.editAll("2", gg.TYPE_FLOAT)
    var = gg.getResults(100)
    var[1].value = 2
    var[1].freeze = true
    var[2].value = 2
    var[2].freeze = true
    gg.addListItems(var)
    gg.clearResults()
    gg.toast("联发科P60透视")
end	 	 

function lfk6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
   end  
function lfk7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = 80
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("君かげさがじくぇぉ透视开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("23;76;44;77;45;78:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("41",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
end 
function lfk8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
end 
function lfk9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("304D;328D;328D;64D;3,552D:100",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("64", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("61",gg.TYPE_DWORD)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value = '61'
t[i].freeze = true
end
gg.addListItems(t)
gg.toast("透视成功")
end


function QL()
menu1 = gg.multiChoice({
"麒麟980透色",
"麒麟659透️",
"麒麟659色",
"麒麟710透️",
"麒麟710红️",
"麒麟710绿️",
'返回上页'},
nil,'🐔Q群1038723289')

if menu1 == nil then else
if menu1[1] == true then ql1() end
if menu1[2] == true then ql2() end
if menu1[3] == true then ql3() end
if menu1[4] == true then ql4() end
if menu1[5] == true then ql5() end
if menu1[6] == true then ql6() end
if menu1[7] == true then HOME() end
end
end




function ql1()
 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.9}})
	 end
	 gg.toast("☯️透视开启成功☯️")
	 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("16;32;40::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 26}})
	 end
	 gg.toast("☯️上色开启成功☯️")
end


function ql2()
 qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "透视"},
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
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "透视[备用]"},
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
end


function ql3()
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

function ql4()
gg.setRanges(4)
local dataType = 4
local Name ="透视"
local tb1 = {{801112064, 0}, {256, -872}, {112, -852}, {256, -836}, {112, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = {{8, -852}, {8, -172},}
SearchWrite(tb1, tb2, dataType)
end

function ql5()
gg.setRanges(4)
local dataType = 4
local tb1 = {{801112064, 0}, {256, -872}, {8, -852}, {256, -836}, {8, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = {{24, 4}, {26, -60},}
SearchWrite(tb1, tb2, dataType)
end


function ql6()
gg.setRanges(4)
local dataType = 4
local tb1 = {{801112064, 0}, {256, -872}, {8, -852}, {256, -836}, {8, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = { {26, 4}, {28, -60},}
SearchWrite(tb1, tb2, dataType)
end

function TSZH()
 ts =gg.multiChoice({
"联发科p22/P35",
"联发科p70",
"联发科p23",
"联发科p60",
"麒麟659",
"麒麟970/980",
"骁龙435",
"骁龙615",
"骁龙616",
"骁龙625",
"骁龙626",
"骁龙636",
"骁龙650",
"骁龙653",
"骁龙660",
"骁龙670",
"骁龙710",
"骁龙800",
"骁龙801",
"骁龙815",
"骁龙820",
"骁龙821",
"骁龙835",
"骁龙845",
"骁龙855",
"骁龙855plus",
"麒麟通用透色",
"骁龙自改上色",
"联发科自改上色",
" 返回 "}, 
nil, "骁龙麒麟透色搬自香蕉君，支持所有b内存修改器和v内存修改器✨")
if ts == nil then else
if ts[1] == true then a() end
if ts[2] == true then W410() end
if ts[3] == true then W415() end
if ts[4] == true then W425() end
if ts[5] == true then W430() end
if ts[6] == true then W435() end
if ts[7] == true then W450() end
if ts[8] == true then W615() end
if ts[9] == true then W616() end
if ts[10] == true then W625() end
if ts[11] == true then W626() end
if ts[12] == true then W636() end
if ts[13] == true then W650() end
if ts[14] == true then W653() end
if ts[15] == true then W660() end
if ts[16] == true then W670() end
if ts[17] == true then W710() end
if ts[18] == true then W800() end
if ts[19] == true then W801() end
if ts[20] == true then W815() end
if ts[21] == true then W820() end
if ts[22] == true then W821() end
if ts[23] == true then W835() end
if ts[24] == true then W845() end
if ts[25] == true then W855() end
if ts[26] == true then w855p() end
if ts[27] == true then qlty() end
if ts[28] == true then zgss() end
if ts[29] == true then zgiyw() end
if ts[30] == true then HOME() end
end
HM = -1 end


function W400()
qmnb = {
{["memory"] = 4},
{["name"] = "透视"},
{["value"] = 0.765625, ["type"] = 16},
{["lv"] = 1.20000004768, ["offset"] = -72, ["type"] = 16},
{["lv"] = 3, ["offset"] = 256, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 256, ["type"] = 16, ["freeze"] = true},

}
gg.toast("透视开启成功")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("房区防闪开启成功")
end
function W410()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.793662e-43;3.5873241e-43;1.1210388e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 2
  var[1].freeze = true
  var[2].value = 2
  var[2].freeze = true
  var[3].value = 2
  var[3].freeze = true
  var[4].value = 2
  var[4].freeze = true
  var[5].value = 2
  var[5].freeze = true
  var[6].value = 2
  var[6].freeze = true
  var[7].value = 2
  var[7].freeze = true
  var[8].value = 2
  var[8].freeze = true
  var[9].value = 2
  var[9].freeze = true
  gg.addListItems(var)
  gg.clearResults()
  gg.toast("联发科p70透视成功")
end

function W415()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4.0917915e-43;4.6523109e-43;5.6051939e-45;1.4012985e-45;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;6.0536094e-43;1.4012985e-45;2.8025969e-45;3.5873241e-43;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.addListItems({
    [1] = {
      address = 2645292240,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645292256,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645301140,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645301172,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645304980,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645305012,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645306708,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645306740,
      flags = 16,
      freeze = true,
      value = 2
    }
  })--ՏԵʍԺeՇՏԹՐɿԹ
  gg.addListItems({
    [1] = {
      address = 2645308820,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645308852,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645313748,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645313780,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645325716,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645325748,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645329940,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2645329972,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2650191312,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2650191344,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2687549132,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2687565632,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2687582140,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2687603216,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.addListItems({
    [1] = {
      address = 2687603644,
      flags = 16,
      freeze = true,
      value = 2
    }
  })
  gg.clearResults()
  gg.searchNumber("56;64;48::35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("47", gg.TYPE_DWORD)
  gg.toast("联发科p23透视成功")
end

function W425()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5,1567783e-43;3,5873241e-43;3,2229865e-44;0,5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_3_, _FORV_4_ in ipairs((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_4_.flags == gg.TYPE_FLOAT then
      _FORV_4_.value = "\"1\""
      _FORV_4_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.toast("联发科p60")
end

function W430()
qmnb = {
{["memory"] = 4},
{["name"] = "麒麟655透视"},
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

function W435()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.9}})
	 end
	 gg.toast("麒麟970/980透视")	
end

function W450()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)  gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("435透视已开启")
end

function W615()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("122",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W616()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W625()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W626()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("5.79227989e21;4.81460302e21;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("哲学")
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("1.39125666e-19;1.1202056e-19;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end

function W636()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", 16, false, 536870912, 0, -1)
gg.refineNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("120", 16)
gg.clearResults()
gg.toast("开启成功")
end

function W650()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber(2,gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber(2,gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W653()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.clearResults()
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber(2,gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber(2,gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W660()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("5.79227989e21;4.81460302e21;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("哲学")
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("1.39125666e-19;1.1202056e-19;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end

function W670()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("218D;3.7615819e-37;2;-1;1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("95D;2;9.2194229e-41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(15)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("206D;3.7615819e-37;2;-1;1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function W710()
qmnb = {
{["memory"] = 131072},
{["name"] = "马赛克"},
{["value"] = 7.0208711e-29, ["type"] = 16},
{["lv"] = 2, ["offset"] = 16, ["type"] = 16},
{["lv"] = 7.2303596e-15, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 131072},
{["name"] = "人物虚化"},
{["value"] = 6.4883821e-29, ["type"] = 16},
{["lv"] = 2, ["offset"] = 200, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 228, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 200, ["type"] = 16},
}
xqmnb(qmnb)
end

function W800()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W801()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W815()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W820()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W821()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("130",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W835()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19::17",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("-0.01000213623;2;-1;0;0.04000854492",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function W845()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978::29",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.4382593e-43;1.3312335e-43;2::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function W855()
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("-0.01000213623F;2.0F;-1.0F;0.0F;0.04000854492F;0.11999511719F;-0.02749633789F;-0.57177734375F;0.02200317383F;0.04251098633F:37",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("-1000",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("1.3912657e-19F;2.0F;1.6623164e-19F;3.6734353e-39F",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("129",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
gg.searchNumber("1.3912525e-19;3.7615819e-37;2;-1::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("129",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1.3912559e-19;2;1.6623071e-19::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("129",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1.391256e-19;2;1.6623108e-19::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("129",gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1.5414283e-44;1.1202057e-19;3.7615819e-37;2::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("129",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("1.3912563e-19;2;1.6623075e-19;2.25000858307;1.6643298e10::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("118",gg.TYPE_FLOAT)
gg.clearResults()
gg.editAll("6",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("2.6102227e21F;9;45,259.12109375F;34::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("34",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1",gg.TYPE_DWORD)
gg.clearResults()
gg.toast("开启成功")
end

function w855p()
qmnb = {
{["memory"] = 131072},
{["name"] = "哲学"},
{["value"] = -1.6815582e-44, ["type"] = 16},
{["lv"] = 9.7636872e-41, ["offset"] = 8, ["type"] = 16},
{["lv"] = 4.9252812e21, ["offset"] = 12, ["type"] = 16},
{["lv"] = 2.2982696e-41, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 131072},
{["name"] = "透视"},
{["value"] = -2.5774195e-39, ["type"] = 16},
{["lv"] = 8.6880505e-44, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.3912519e-19, ["offset"] = 12, ["type"] = 16},
{["lv"] = 2.3962204e-43, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function qlty()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("麒麟透视开启成功")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("28", gg.TYPE_DWORD)
	 gg.toast("麒麟上色完成")
	 gg.clearResults()
end

function zgss()
while true do
 t = gg.prompt({"  人物颜色修改界面\n\n  默认5是白色\n  6是蓝色，7是绿色，8是黑色\n  其他自测"}, {[1]="6"}, {[1]="number"})
if t == nil then break HOME() else
  gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO) 
local tb1 = {{tonumber("1194344475"),tonumber("-4")}, {tonumber("1194379806"),tonumber("4")}, {tonumber("1661767680"),tonumber("12")}, } 
local tb2 = {{t[1],tonumber("0")}, } 	
local dataType = 4
 SearchWrite(tb1,tb2, dataType)
gg.clearList() break
end end  end
function h5()
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO)
local tb1 = {{tonumber("5.2806111e-40"),tonumber("-160")}, {tonumber("6.50000333786"),tonumber("-148")}, {tonumber("3.7615819e-37"),tonumber("-124")}, {tonumber("2"),tonumber("0")}, } 	
local tb2 = {{tonumber("9999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(gg.REGION_BAD | gg.REGION_VIDEO) 
local tb1 = {{tonumber("1.1202011e-19"),tonumber("-124")}, {tonumber("1.1202015e-19"),tonumber("-116")}, {tonumber("3.7615819e-37"),tonumber("-108")}, {tonumber("2"),tonumber("0")}, } 	
local tb2 = {{tonumber("9999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end


function zgiyw()
lfkse = gg.prompt({"联发科人物颜色修改界面\n\n  32是红色，33是绿色，10是黑色\n  其他自测"}, {[1]="33"}, {[1]="number"})
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("29D;9D;56D::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(5)
  gg.editAll(lfkse[1], gg.TYPE_DWORD)
  gg.toast("修改成功")
  HOME()
end

function isgdv()
qlse = gg.prompt({"麒麟人物颜色修改界面\n\n 默认28绿色(我也不记得是不是绿色)  其他自测"}, {[1]="28"}, {[1]="number"})
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(qlse[1], gg.TYPE_DWORD)
	 gg.toast("麒麟上色完成")
	 HOME()
end

---------------------------------

function B()
menu1 = gg.multiChoice({
"雨林加速",
"关闭加速",
"海岛加速",
"关闭加速",
"全局加速",
"加速关闭",
"跳伞加速",
"伤害修复",
'返回上一页'},
nil,'加速雨林图不拉\n海岛和全局是偷小狗的自己去测试')

if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then f7() end
if menu1[8] == true then f8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end


function f1()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2.1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.setRanges(gg.REGION_C_DATA)
local dataType=gg.TYPE_FLOAT
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}SearchWrite(tb1,tb2,dataType)
Fxs({{10.90734863281,0,16},{-1.8890966e26,4,16},{-0.60239994526,8,16},},{{11,0,16},},8,"Fxs")
gg.setRanges(gg.REGION_C_DATA)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00050000002,0x33E4}, {1.20000004768, 0x33D8}, {1.4012985e-45, 0x3378}, {0.10000000149, 0x335C},}
local tb2 = {{0.02, 0x33E4},}
SearchWrite(tb1, tb2, dataType)
Name = "防拉黑" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.839564474795097E26, 0},
{-3.7444097189855772E28, 328},
{-3.7181718523570815E19, 332},
{-5.90526394659627E21, 336},
{-2.7869827350308126E28, 340},
{-550024314880.0, 344},
{-3.7444097189855772E28, 348},
{-3.6893492545465614E19, 352},

}
local modify = {{-3.6893488E19, 352},}
SearchWrite(search,modify,dataType,Name)
end



function f2()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速关闭中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
Fxs({{11,0,16},{-1.8890966e26,4,16},{-0.60239994526,8,16},},{{10.90734863281,0,16},},8,"Fxs")
gg.setRanges(gg.REGION_C_DATA)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.01999999955,0x33E4}, {1.20000004768, 0x33D8}, {1.4012985e-45, 0x3378}, {0.10000000149, 0x335C},}
local tb2 = {{0.00050000002, 0x33E4},}
SearchWrite(tb1, tb2, dataType)
gg.toast("关闭成功")
end

function f3()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速开启中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2.3,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速开启中")
gg.setRanges(8)
local dataType=gg.TYPE_FLOAT Name="全速统一"
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(32) 
local tb1 = {{ ("3600000000"), ("80")}, { ("2500000000"), ("88")} } 	
local tb2 = {{ ("1200"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Fxs({{11.25,0,16},{-1.8890966e26,4,16},{-0.60239994526,8,16},},{{10.90734863281,0,16},},8,"Fxs")
gg.setRanges(32) 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.0005, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.025, 0xF904},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(8)
local dataType = 16
local tb1 = {{1.448214205959717E-35, 0},{-3.8369230488065634E21, -4},}
local tb2 = {{-3.8369228e21, -4},}
SearchWrite(tb1, tb2, dataType)
end

function f4()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速关闭中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速关闭中")
gg.setRanges(32) 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.025, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.0005, 0xF904},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(8)
local dataType = 16
Name = "恢复" 
local tb1 = {{1.448214205959717E-35, 0},{-3.8369228e21, -4},{-1.1903915942440579E21, -44},{-2.9557634527827853E20, -40},{-3.6893509258042357E20, -12},}
local tb2 = {{-3.8369230488065634E21, -4},}
SearchWrite(tb1, tb2, dataType)
end




function f5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1228926273126264269", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1585267068834414592",gg.TYPE_QWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1328550408728725571", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1328550408578138112",gg.TYPE_QWORD)
gg.toast("开启成功")
end
function f6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1228926273126264269", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1228926273201366461", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1296744153870237696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1296744149883614555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1585267068834414592", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1585267064848315881",gg.TYPE_QWORD)
gg.toast("关闭成功")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1328550408578138112", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("-1328550408728725571",gg.TYPE_QWORD)
gg.toast("关闭成功")
end
function f8()
Name = "M416伤害" 
gg.setRanges(32)
local dataType = 16
local search = {{88000, 0},}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
Name = "QBZ，SC伤害" 
gg.setRanges(32)
local dataType = 16
local search = {{87000, 0},}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
Name = "AKM，大盘鸡伤害" 
gg.setRanges(32)
local dataType = 16
local search = {{71500, 0},}
local modify = {{350000, 0},}
SearchWrite(search,modify,dataType)
Name = "M716伤害" 
gg.setRanges(32)
local dataType = 16
local search = {{68000, 0},}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
end


function f7()
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
gg.toast("成功")
end



function C()
menu1 = gg.multiChoice({
"[1]一键全开 [全局]",
"[2]枪械美化 [全局]",
"[3]秒落地 [出生岛]",
"[4]枪械美化2",
"[5]衣服美化 [大厅]",
"[6]居然美化 [大厅]",
"[7]除草除树 [大厅]",
"[8]除草树关 [大厅]",
"[9]击杀特效",
"[10]返回上一页    "},
nil,"大厅开启一次就行\n一键开启包括无防聚除雾范围")
if menu1 == nil then else 
if menu1[1] == true then dd1() end
if menu1[2] == true then dd2() end
if menu1[3] == true then dd3() end
if menu1[4] == true then dd4() end
if menu1[5] == true then dd5() end
if menu1[6] == true then dd6() end
if menu1[7] == true then ___________25() end
if menu1[8] == true then ___________26() end
if menu1[9] == true then ___________27() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end


function dd1()
Name = "超级无后" 
gg.setRanges(8)
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
gg.setRanges(8)
local dataType = 16
local search = {
{-6.171871492066637E27, 0},
{-5.729439469540494E27, 4},
{-1.238242388799446E28, 8},

}
local modify = {{-5.7294023e27, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "中心" 
gg.setRanges(8)
local dataType = 16
local search = {
{-6.171954133480088E27, 0},
{-5.90295866653701E21, 4},
{-1.1570010452933043E23, 8},
{-2.725056690512674E28, 12},

}
local modify = {{-5.9029581e21, 4},{-5.9029581e21, 8},{-5.9029581e21, 12},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(8)
local dataType = 4
local tb1 = {{-405405696, 0}, {-499122175, 4}, {-481296380, 8}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(8)
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
gg.setRanges(8)
local dataType = 16
local search = {
{8.498873666024618E-21, 0},
{3.812682238410043E-21, -4},

}
local modify = {{3.8126826e-21, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "手部防抖" 
gg.setRanges(8)
local dataType = 16
local search = {
{-4.125914625078661E26, 0},
{-2.7860167749667416E28, -20},

}
local modify = {{-2.7859698e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "肩膀防抖+秒切枪" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.6656266200427155E26, 0},
{-1.2359319936760283E21, -28},

}
local modify = {{-1.2359319e21, -28},}
SearchWrite(search,modify,dataType,Name)
--[[
Name = "肩膀防抖+秒切枪" 
gg.setRanges(8)
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
gg.setRanges(8)
local dataType = 16
local search = {
{-6.1784462068024127E26, 0},
{-1.114450155758339E28, 28},

}
local modify = {{-1.11445e28, 28},}
SearchWrite(search,modify,dataType,Name)
]]
gg.toast("防抖")
Name = "除雾" 
gg.setRanges(8)
local dataType = 16
local search = {
{-6.1689999980971475E26, 0},

}
local modify = {{0, 48},}
SearchWrite(search,modify,dataType,Name)
gg.toast("开启成功")
gg.toast("范围开启较久，请耐心等待")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("变态全身真伤范围开启成功")
end

function dd2()
 gg.setRanges(32)
local Name="ak"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, 12}, }
local tb2 = {{1101001068, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="ak"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, -12}, }
local tb2 = {{1101001068, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("ak成功")
 gg.setRanges(32)
local Name="SC"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, 12}, }
local tb2 = {{1101003057, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="SCAR"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, -12}, }
local tb2 = {{1101003057, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("SCAR成功")
gg.setRanges(32)
local Name="M416"
local dataType = 4
local tb1 = {{10100400, 0}, {101004, 12}, }
local tb2 = {{1101004046, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M416"
local dataType = 4
local tb1 = {{10100400, 0}, {101004, -12}, }
local tb2 = {{1101004046, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M416成功")
 gg.setRanges(32)
local Name="98k"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, 12}, }
local tb2 = {{1103001060, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="98k"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, -12}, }
local tb2 = {{1103001060, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("98k成功")

gg.setRanges(32)
local Name="M16A4"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, 12}, }
local tb2 = {{1101002029, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M16A4"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, -12}, }
local tb2 = {{1101002029, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M16A4成功")

 gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, 12}, }
local tb2 = {{1102001004, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, -12}, }
local tb2 = {{1102001004, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("UZI美化成功")
gg.setRanges(32)
local Name="汤姆逊美化"
local dataType = 4
local tb1 = {{10200400, 0}, {102004, 12}, }
local tb2 = {{1102004018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="汤姆逊美化"
local dataType = 4
local tb1 = {{10200400, 0}, {102004, -12}, }
local tb2 = {{1102004018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("汤姆逊美化成功")
gg.setRanges(32)
local Name="up9美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, 12}, }
local tb2 = {{1102002028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="up9美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, -12}, }
local tb2 = {{1102002028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("up9美化成功")
gg.setRanges(32)
local Name="M24美化"
local dataType = 4
local tb1 = {{10300200, 0}, {103002, 12}, }
local tb2 = {{1103002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M24美化"
local dataType = 4
local tb1 = {{10300200, 0}, {103002, -12}, }
local tb2 = {{1103002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M24美化成功")
gg.setRanges(32)
local Name="AWM美化"
local dataType = 4
local tb1 = {{10300300, 0}, {103003, 12}, }
local tb2 = {{1103003030, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="AWM美化"
local dataType = 4
local tb1 = {{10300300, 0}, {103003, -12}, }
local tb2 = {{1103003030, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("AWM美化成功")
gg.setRanges(32)
local Name="AUG美化"
local dataType = 4
local tb1 = {{10100600, 0}, {101006, 12}, }
local tb2 = {{1101006001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="AUG美化"
local dataType = 4
local tb1 = {{10100600, 0}, {101006, -12}, }
local tb2 = {{1101006001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("AUG美化成功")
gg.setRanges(32)
local Name="狗杂美化"
local dataType = 4
local tb1 = {{10100500, 0}, {101005, 12}, }
local tb2 = {{1101005002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M狗杂美化"
local dataType = 4
local tb1 = {{10100500, 0}, {101005, -12}, }
local tb2 = {{1101005002, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("狗杂美化成功")
gg.setRanges(32)
local Name="QBZ美化"
local dataType = 4
local tb1 = {{10100700, 0}, {101007, 12}, }
local tb2 = {{1101007003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="QBZ美化"
local dataType = 4
local tb1 = {{10100700, 0}, {101007, -12}, }
local tb2 = {{1101007003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("QBZ美化成功")
gg.setRanges(32)
local Name="M762美化"
local dataType = 4
local tb1 = {{10100800, 0}, {101008, 12}, }
local tb2 = {{1101008014, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M762美化"
local dataType = 4
local tb1 = {{10100800, 0}, {101008, -12}, }
local tb2 = {{1101008014, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M762美化成功")
gg.setRanges(32)
local Name="大盘鸡美化"
local dataType = 4
local tb1 = {{10500200, 0}, {105002, 12}, }
local tb2 = {{1105002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="大盘鸡美化"
local dataType = 4
local tb1 = {{10500200, 0}, {105002, -12}, }
local tb2 = {{1105002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("大盘鸡美化成功")
gg.setRanges(32)
local Name="大菠萝美化"
local dataType = 4
local tb1 = {{10500100, 0}, {105001, 12}, }
local tb2 = {{1105001012, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="大菠萝美化"
local dataType = 4
local tb1 = {{10500100, 0}, {105001, -12}, }
local tb2 = {{1105001012, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("大菠萝美化成功")
gg.setRanges(32)
local Name="妹控47美化"
local dataType = 4
local tb1 = {{10100900, 0}, {101009, 12}, }
local tb2 = {{1101009001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="妹控47美化"
local dataType = 4
local tb1 = {{10100900, 0}, {101009, -12}, }
local tb2 = {{1101009001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("妹控47美化成功")
gg.setRanges(32)
local Name="s686美化"
local dataType = 4
local tb1 = {{10400100, 0}, {104001, 12}, }
local tb2 = {{1104001005, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="s686美化"
local dataType = 4
local tb1 = {{10400100, 0}, {104001, -12}, }
local tb2 = {{1104001005, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("s686美化成功")
gg.setRanges(32)
local Name="R1895美化"
local dataType = 4
local tb1 = {{10400200, 0}, {104002, 12}, }
local tb2 = {{1104002003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="R1895美化"
local dataType = 4
local tb1 = {{10400200, 0}, {104002, -12}, }
local tb2 = {{1104002003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("R1895美化成功")
gg.setRanges(32)
local Name="s12k美化"
local dataType = 4
local tb1 = {{10400300, 0}, {104003, 12}, }
local tb2 = {{1104003003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="s12k美化"
local dataType = 4
local tb1 = {{10400300, 0}, {104003, -12}, }
local tb2 = {{1104003003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("s12k美化成功")
gg.setRanges(32)
local Name="平底锅美化"
local dataType = 4
local tb1 = {{10800400, 0}, {108004, 12}, }
local tb2 = {{1108004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="平底锅美化"
local dataType = 4
local tb1 = {{10800400, 0}, {108004, -12}, }
local tb2 = {{1108004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("平底锅美化成功")
gg.setRanges(32)
local Name="野牛美化"
local dataType = 4
local tb1 = {{10200500, 0}, {102005, 12}, }
local tb2 = {{1102005001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="野牛美化"
local dataType = 4
local tb1 = {{10200500, 0}, {102005, -12}, }
local tb2 = {{1102005001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("野牛美化成功")
gg.setRanges(32)
local Name="维克托美化"
local dataType = 4
local tb1 = {{10200300, 0}, {102003, 12}, }
local tb2 = {{1102003020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="维克托美化"
local dataType = 4
local tb1 = {{10200300, 0}, {102003, -12}, }
local tb2 = {{1102003020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("维克托美化成功")
end


function dd3()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1024", 16)
    resultCounts = gg.getResultsCount()
    results = gg.getResults(resultCounts)
    for _FORV_3_ = 1, resultCounts do
      values = {}
      values[1] = {}
      values[1].address = results[_FORV_3_].address - 4
      values[1].flags = 16
      values = gg.getValues(values)
      if values[1].value == 5000 then
        values = {}
        values[1] = {}
        values[1].address = results[_FORV_3_].address - 8
        values[1].flags = 16
        values = gg.getValues(values)
        if values[1].value == 3000 then
          values = {}
          values[1] = {}
          values[1].address = results[_FORV_3_].address - 12
          values[1].flags = 16
          values = gg.getValues(values)
          if values[1].value == 0.5 then
            setvalues = {}
            setvalues[1] = {}
            setvalues[1].address = results[_FORV_3_].address
            setvalues[1].flags = 16
            setvalues[1].value = 999999
            setvalues[2] = {}
            setvalues[2].address = results[_FORV_3_].address - 4
            setvalues[2].flags = 16
            setvalues[2].value = 999999
            setvalues[3] = {}
            setvalues[3].address = results[_FORV_3_].address - 8
            setvalues[3].flags = 16
            setvalues[3].value = 999999
            setvalues[4] = {}
            setvalues[4].address = results[_FORV_3_].address - 12
            setvalues[4].flags = 16
            setvalues[4].value = 999999
            gg.setValues(setvalues)
            gg.toast("一秒落地开启成功")
          end
        end
      end
    end
  end

function dd4()
  menu1 = gg.multiChoice({
     "🚴AKM—至尊黄金  (红)",
    "🚴猪年限定      (红)",
    "🚴勇者赤橙      (蓝)",
    "🚵M416—至尊黄金(红)",
    "🚵七彩颜色       (粉)",
    "🚵冰封山谷       (红)",
    "🚵加拿大🇨🇦枫叶  (紫)",
    "🚵勇者赤橙       (蓝)",
    "🚵火箭少女101    (红)",
    "🏇SCAEL—勇者赤橙(蓝)",
    "🏇至尊黄金       (红)",
    "🏇绿白拼盘       (紫)",
    "🚣M16A4—至尊黄金(红)",
    "🚣少女粉        (紫)",
    "🚣冰封山谷      (红)",
    "🏌️GROZA—蓝色空间(粉)",
    "⛹️AUG—蓝色空间  (粉)",
    "⛹️雨林咆哮      (紫)",
    "🏋️QBZ—街头涂鸦  (粉)",
    "🏋️龙纹浮雕      (紫)",
    "🏂M792—圣诞节   (粉)",
    "⛷️98K—彩虹六号  (粉)",
    "⛷️黑龙符文      (蓝)",
    "⛷️天启符文      (紫)",
    "⛷️黄金时代      (红)",
    "🎣M24—米色     (蓝)",
    "🀄AWM—粉色霓虹  (粉)",
    "🎡Win94—米色   (蓝)",
    "🎫SKS—海洋之心  (紫)",
    "🏁MINI—摇滚名星 (紫)",
    "🚓SLR—雪域守卫  (紫)",
    "🚓炫酷白银      (蓝)",
    "🚕QBU—少女粉    (粉)",
    "🚕剧毒蜘蛛      (红)",
    "🚗UZI—街头小子  (紫)",
    "🚙UMP9—玩具枪   (紫)",
    "🚙勇者赤橙      (蓝)",
    "🚙至尊黄金      (红)",
    "🚙猪年限定      (红)",
    "🚙街头涂鸦      (紫)",
    "🚙黑鹰         (蓝)",
    "🚙米色         (蓝)",
    "🚚汤姆逊—米色   (蓝)",
    "🚲S686—勇敢小鸡 (紫)",
    "🚏S1879—至尊黄金（红)",
    "⛽S12K—凋零者   (紫)",
    "🚧M249—凋零者   (紫)",
    "🚥DP-28—虚空   (无)",
    "🚀P92—米色     (蓝)",
    "✈P1911—沙鹰玩具(紫)",
    "💺R1895—黑白相间(蓝)",
    "🚢P18C—米色    (蓝)",
    "🚤R45—勇敢小鸡  (紫)",
    "⛵短管手枪—米色  (蓝)",
    "🗽十字弩—米色    (蓝)",
    "🗼撬棍—国王权杖  (红)",
    "🗼高尔夫球棒     (紫)",
    "⛲镰刀—死神镰刀  (紫)",
    "🍳平底锅—冰封山谷 (红)",
    "🍳科技标志       (红)",
    "新版增加区😘😘",
    "🇨🇳M416黑黄双拼    (紫)",
    "🇭🇰M416炫酷白银    (蓝)",
    "🇲🇴M416橙黑双拼    (紫)",
    "🇫🇷M416米色        (蓝)",
    "🇩🇪M416赤血战神    (紫)",
    "🇮🇹M416圣诞恋歌    (红)",
    "🇯🇵M416热带雨林    (紫)",
    "🇰🇷M416疯狂沙漠    (蓝)",
    "🇳🇱M416俄罗斯风情  (红)",
    "🇬🇧M416红色口吻    (红)",
    "🍳平底锅火焰披萨   (紫)",
    "🍳平底锅双黄蛋     (蓝)",
    "🍳平底锅西红柿     (蓝)",
    "🍳平底锅银色烧鸡   (蓝)",
    "🍳平底锅靶心       (蓝)",
    "🍳平底锅骷髅头     (蓝)",
    "🍳平底锅羊驼       (紫)",
    "🍳平底锅鸡鸡玩蛋   (红)",
    "🍳平底锅迷彩圈圈   (紫)",
    "🍳平底锅冰封4AM   (红)",
    "🍳平底锅黄金刺激   (红)",
    "🍳平底锅魔爪限定   (红)",
    "🍳平底锅刺激黄金熊 (红)",
    "🍳平底锅刺激粉色泡 (红)",
    "🚔UMP9嗜血       (紫)",
    "🌉UMP9墨绿       (蓝)",
    "⛩️UMP9木星斑纹   (蓝)",
    "🕋UMP9至尊黄金   (红)",
    "🗿UMP9圣诞恋歌   (紫)",
    "🕍UMP9极速科技   (红)",
    "🗾UMP9少女粉     (紫)",
    "🚨维克托火箭少女101(粉)",
    "🕌UZI米色          (蓝)",
    "🏛️UZI火焰披萨      (紫)",
    "🏤UZI清凉一夏      (粉)",
    "🏟️S686米色        (蓝)",
    "🏔️S686至尊黄金    (红)",
    "⛰️S686黄色彩带    (粉)",
    "🌋S686火焰披萨    (紫)",
    "🏜️S1897圣诞恋歌   (紫)",
    "🏕️S1897黄白双拼   (紫)",
    "🛤️S1897海洋之心   (粉)",
    "🛣️S1897街头恶霸   (紫)",
    "🏗️S12K米色        (蓝)",
    "🏡S12K蓝色妖姬    (粉)",
    "🏘️R45米色         (蓝)",
    "🏚️R45海洋之心     (紫)",
    "🏤P18C白红双拼    (粉)",
    "💿P1911海洋之心   (紫)",
    "📀P1911火焰披萨   (紫)",
    "📼M249嗜血        (粉)",
    "😁SCAR七彩甜甜圈  (红)",
    "😂SCAR JK萌妹子   (红)",
    "😃SCAR雷蛇        (粉)",
    "😉SCAR圣诞至尊版  (红)",
    "😊SCAR圣诞普通版  (粉)",
    "😍SCAR影武者      (粉)",
    "😏SCAR洛杉矶      (红)",
    "😜M416冰霜核心    (粉)",
    "😝M416哥斯拉      (红)",
    "😞AWM AIM        (红)",
    "😠AWM冰雪女王     (粉)",
    "小鸡上一页"
  }, nil, "小鸡亲测，右边是在游戏里的品质，皮肤效果贼6，不要问我怎么做的，抓代码去💐💐，皮肤保证全，不全来打我🍡🍡")
  if menu1 == nil then
  else
    if menu1[1] == true then
      c1()
    end
    if menu1[2] == true then
      c2()
    end
    if menu1[3] == true then
      c3()
    end
    if menu1[4] == true then
      c4()
    end
    if menu1[5] == true then
      c5()
    end
    if menu1[6] == true then
      c6()
    end
    if menu1[7] == true then
      c7()
    end
    if menu1[8] == true then
      c8()
    end
    if menu1[9] == true then
      c9()
    end
    if menu1[10] == true then
      c10()
    end
    if menu1[11] == true then
      c11()
    end
    if menu1[12] == true then
      c12()
    end
    if menu1[13] == true then
      c13()
    end
    if menu1[14] == true then
      c14()
    end
    if menu1[15] == true then
      c15()
    end
    if menu1[16] == true then
      c16()
    end
    if menu1[17] == true then
      c17()
    end
    if menu1[18] == true then
      c18()
    end
    if menu1[19] == true then
      c19()
    end
    if menu1[20] == true then
      c20()
    end
    if menu1[21] == true then
      c21()
    end
    if menu1[22] == true then
      c22()
    end
    if menu1[23] == true then
      c23()
    end
    if menu1[24] == true then
      c24()
    end
    if menu1[25] == true then
      c25()
    end
    if menu1[26] == true then
      c26()
    end
    if menu1[27] == true then
      c27()
    end
    if menu1[28] == true then
      c28()
    end
    if menu1[29] == true then
      c29()
    end
    if menu1[30] == true then
      c30()
    end
    if menu1[31] == true then
      c31()
    end
    if menu1[32] == true then
      c32()
    end
    if menu1[33] == true then
      c33()
    end
    if menu1[34] == true then
      c34()
    end
    if menu1[35] == true then
      c35()
    end
    if menu1[36] == true then
      c36()
    end
    if menu1[37] == true then
      c37()
    end
    if menu1[38] == true then
      c38()
    end
    if menu1[39] == true then
      c39()
    end
    if menu1[40] == true then
      c40()
    end
    if menu1[41] == true then
      c41()
    end
    if menu1[42] == true then
      c42()
    end
    if menu1[43] == true then
      c43()
    end
    if menu1[44] == true then
      c44()
    end
    if menu1[45] == true then
      c45()
    end
    if menu1[46] == true then
      c46()
    end
    if menu1[47] == true then
      c47()
    end
    if menu1[48] == true then
      c48()
    end
    if menu1[49] == true then
      c49()
    end
    if menu1[50] == true then
      c50()
    end
    if menu1[51] == true then
      c51()
    end
    if menu1[52] == true then
      c52()
    end
    if menu1[53] == true then
      c53()
    end
    if menu1[54] == true then
      c54()
    end
    if menu1[55] == true then
      c55()
    end
    if menu1[56] == true then
      c56()
    end
    if menu1[57] == true then
      c57()
    end
    if menu1[58] == true then
      c58()
    end
    if menu1[59] == true then
      c59()
    end
    if menu1[60] == true then
      c60()
    end
    if menu1[61] == true then
      c60()
    end
    if menu1[62] == true then
      c62()
    end
    if menu1[63] == true then
      c63()
    end
    if menu1[64] == true then
      c64()
    end
    if menu1[65] == true then
      c65()
    end
    if menu1[66] == true then
      c66()
    end
    if menu1[67] == true then
      c67()
    end
    if menu1[68] == true then
      c68()
    end
    if menu1[69] == true then
      c69()
    end
    if menu1[70] == true then
      c70()
    end
    if menu1[71] == true then
      c71()
    end
    if menu1[72] == true then
      c72()
    end
    if menu1[73] == true then
      c73()
    end
    if menu1[74] == true then
      c74()
    end
    if menu1[75] == true then
      c75()
    end
    if menu1[76] == true then
      c76()
    end
    if menu1[77] == true then
      c77()
    end
    if menu1[78] == true then
      c78()
    end
    if menu1[79] == true then
      c79()
    end
    if menu1[80] == true then
      c80()
    end
    if menu1[81] == true then
      c81()
    end
    if menu1[82] == true then
      c82()
    end
    if menu1[83] == true then
      c83()
    end
    if menu1[84] == true then
      c84()
    end
    if menu1[85] == true then
      c85()
    end
    if menu1[86] == true then
      c86()
    end
    if menu1[87] == true then
      c87()
    end
    if menu1[88] == true then
      c88()
    end
    if menu1[89] == true then
      c89()
    end
    if menu1[90] == true then
      c90()
    end
    if menu1[91] == true then
      c91()
    end
    if menu1[92] == true then
      c92()
    end
    if menu1[93] == true then
      c93()
    end
    if menu1[94] == true then
      c94()
    end
    if menu1[95] == true then
      c95()
    end
    if menu1[96] == true then
      c96()
    end
    if menu1[97] == true then
      c97()
    end
    if menu1[98] == true then
      c98()
    end
    if menu1[99] == true then
      c99()
    end
    if menu1[100] == true then
      c100()
    end
    if menu1[101] == true then
      c101()
    end
    if menu1[102] == true then
      c102()
    end
    if menu1[103] == true then
      c103()
    end
    if menu1[104] == true then
      c104()
    end
    if menu1[105] == true then
      c105()
    end
    if menu1[106] == true then
      c106()
    end
    if menu1[107] == true then
      c107()
    end
    if menu1[108] == true then
      c108()
    end
    if menu1[109] == true then
      c109()
    end
    if menu1[110] == true then
      c110()
    end
    if menu1[111] == true then
      c111()
    end
    if menu1[112] == true then
      c112()
    end
    if menu1[113] == true then
      c113()
    end
    if menu1[114] == true then
      c114()
    end
    if menu1[115] == true then
      c115()
    end
    if menu1[116] == true then
      c116()
    end
    if menu1[117] == true then
      c117()
    end
    if menu1[118] == true then
      c118()
    end
    if menu1[119] == true then
      c119()
    end
    if menu1[120] == true then
      c120()
    end
    if menu1[121] == true then
      c121()
    end
    if menu1[122] == true then
      c122()
    end
    if menu1[123] == true then
      c123()
    end
    if menu1[124] == true then
      HOME()
    end
  end
  GLWW = -1
end
function c1()
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101001007", gg.TYPE_DWORD)
  gg.toast("AKM至尊黄金美化成功")
end
function c2()
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101001030", gg.TYPE_DWORD)
  gg.toast("AKM猪年限定美化成功")
end
function c3()
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101001006", gg.TYPE_DWORD)
  gg.toast("AKM勇者赤橙美化成功")
end
function c4()
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004034 ", gg.TYPE_DWORD)
  gg.toast("M416至尊黄金美化成功")
end
function c5()
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004035 ", gg.TYPE_DWORD)
  gg.toast("M416七彩颜色美化成功")
end
function c6()
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004045 ", gg.TYPE_DWORD)
  gg.toast("M416冰封山谷美化成功")
end
function c7()
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004036 ", gg.TYPE_DWORD)
  gg.toast("M416加拿大🇨🇦枫叶🍁美化成功")
end
function c8()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004015", gg.TYPE_DWORD)
  gg.toast("M416勇者赤橙美化成功")
end
function c9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("101004001", gg.TYPE_DWORD)
  gg.toast("M416火箭少女101美化成功")
end
function c10()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003018", gg.TYPE_DWORD)
  gg.toast("SCAE-L勇者赤橙美化成功")
end
function c11()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003016", gg.TYPE_DWORD)
  gg.toast("SCAE-L至尊黄金美化成功")
end
function c12()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003020", gg.TYPE_DWORD)
  gg.toast("SCAE-L绿白拼盘美化成功")
end
function c13()
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101002009", gg.TYPE_DWORD)
  gg.toast("M16至尊黄金美化成功")
end
function c14()
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101002019", gg.TYPE_DWORD)
  gg.toast("M16少女粉美化成功")
end
function c15()
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101002020", gg.TYPE_DWORD)
  gg.toast("M16冰封山谷美化成功")
end
function c16()
  gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101005002", gg.TYPE_DWORD)
  gg.toast("GROZA蓝色空间美化成功")
end
function c17()
  gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101006007", gg.TYPE_DWORD)
  gg.toast("AUG蓝色空间美化成功")
end
function c18()
  gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101006006", gg.TYPE_DWORD)
  gg.toast("AUG雨林咆哮美化成功")
end
function c19()
  gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101007009", gg.TYPE_DWORD)
  gg.toast("QBZ街头涂鸦美化成功")
end
function c20()
  gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101007006", gg.TYPE_DWORD)
  gg.toast("QBZ龙纹浮雕美化成功")
end
function c21()
  gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101008010", gg.TYPE_DWORD)
  gg.toast("M792圣诞节美化成功")
end
function c22()
  gg.searchNumber("10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103001031", gg.TYPE_DWORD)
  gg.toast("98K彩虹六号美化成功")
end
function c23()
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103001040", gg.TYPE_DWORD)
  gg.toast("98K黑龙符文美化成功")
end
function c24()
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103001042", gg.TYPE_DWORD)
  gg.toast("98K天启符文美化成功")
end
function c25()
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103001013", gg.TYPE_DWORD)
  gg.toast("98K至尊黄金美化成功")
end
function c26()
  gg.searchNumber("10300200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103002001", gg.TYPE_DWORD)
  gg.toast("M24米色美化成功")
end
function c27()
  gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103003002", gg.TYPE_DWORD)
  gg.toast("AWM粉色霓虹美化成功")
end
function c28()
  gg.searchNumber("10300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103008001", gg.TYPE_DWORD)
  gg.toast("WIN94米色美化成功")
end
function c29()
  gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103004004", gg.TYPE_DWORD)
  gg.toast("SKS海洋之心美化成功")
end
function c30()
  gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103006002", gg.TYPE_DWORD)
  gg.toast("mini14摇滚明星美化成功")
end
function c31()
  gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103009010", gg.TYPE_DWORD)
  gg.toast("SLR雪域守卫美化成功")
end
function c32()
  gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103009012", gg.TYPE_DWORD)
  gg.toast("SLR炫酷白银美化成功")
end
function c33()
  gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103010004", gg.TYPE_DWORD)
  gg.toast("QBU少女粉美化成功")
end
function c34()
  gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10301000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103010003", gg.TYPE_DWORD)
  gg.toast("QBU剧毒蜘蛛美化成功")
end
function c35()
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102001004", gg.TYPE_DWORD)
  gg.toast("UZI街头小子美化成功")
end
function c36()
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(" 1102002003 ", gg.TYPE_DWORD)
  gg.toast("UMP9玩具美化成功")
end
function c37()
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(" 1102002005 ", gg.TYPE_DWORD)
  gg.toast("UMP9勇者赤橙美化成功")
end
function c38()
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(" 1102002020 ", gg.TYPE_DWORD)
  gg.toast("UMP9至尊黄金美化成功")
end
function c39()
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(" 1102002026 ", gg.TYPE_DWORD)
  gg.toast("UMP9猪年限定美化成功")
end
function c40()
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002028 ", gg.TYPE_DWORD)
  gg.toast("UMP9街头涂鸦美化成功")
end
function c41()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("112002002 ", gg.TYPE_DWORD)
  gg.toast("UMP9黑鹰美化成功")
end
function c42()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002001", gg.TYPE_DWORD)
  gg.toast("UMP9米色美化成功")
end
function c43()
  gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("110004001", gg.TYPE_DWORD)
  gg.toast("汤姆逊米色美化成功")
end
function c44()
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104001004", gg.TYPE_DWORD)
  gg.toast("S686勇敢小鸡美化成功")
end
function c45()
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104002004", gg.TYPE_DWORD)
  gg.toast("S1897至尊黄金美化成功")
end
function c46()
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104003003", gg.TYPE_DWORD)
  gg.toast("S12K凋零者美化成功")
end
function c47()
  gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1105001001", gg.TYPE_DWORD)
  gg.toast("M249凋零者美化成功")
end
function c48()
  gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1105002001", gg.TYPE_DWORD)
  gg.toast("DP-28虚空美化成功")
end
function c49()
  gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106001001", gg.TYPE_DWORD)
  gg.toast("P92米色美化成功")
end
function c50()
  gg.searchNumber("10600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106002004", gg.TYPE_DWORD)
  gg.toast("P1911沙鹰玩具美化成功")
end
function c51()
  gg.searchNumber("10600300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106003001", gg.TYPE_DWORD)
  gg.toast("R1895黑白相间美化成功")
end
function c52()
  gg.searchNumber("10600400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106004001", gg.TYPE_DWORD)
  gg.toast("P18C米色美化成功")
end
function c53()
  gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106005002", gg.TYPE_DWORD)
  gg.toast("R45勇敢小鸡美化成功")
end
function c54()
  gg.searchNumber("10600600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106006001", gg.TYPE_DWORD)
  gg.toast("短管手枪米色美化成功")
end
function c55()
  gg.searchNumber("10700100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10700100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1107001001", gg.TYPE_DWORD)
  gg.toast("十字弩米色美化成功")
end
function c56()
  gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108002003", gg.TYPE_DWORD)
  gg.toast("撬棍国王权杖美化成功")
end
function c57()
  gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108002001", gg.TYPE_DWORD)
  gg.toast("撬棍高尔夫球棒美化成功")
end
function c58()
  gg.searchNumber("10800300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108003001", gg.TYPE_DWORD)
  gg.toast("镰刀死神镰刀美化成功")
end
function c59()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004027", gg.TYPE_DWORD)
  gg.toast("平底锅冰封山谷美化成功")
end
function c60()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004054", gg.TYPE_DWORD)
  gg.toast("平底锅科技标志美化成功")
end
function c61()
end
function c62()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004001", gg.TYPE_DWORD)
  gg.toast("M416黑黄双拼美化成功")
end
function c63()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004005", gg.TYPE_DWORD)
  gg.toast("M416炫酷白银美化成功")
end
function c64()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004002", gg.TYPE_DWORD)
  gg.toast("M416橙黑双拼美化成功")
end
function c65()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004006", gg.TYPE_DWORD)
  gg.toast("M416米色美化成功")
end
function c66()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004007", gg.TYPE_DWORD)
  gg.toast("M416赤血战神美化成功")
end
function c67()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004008", gg.TYPE_DWORD)
  gg.toast("M416圣诞恋歌美化成功")
end
function c68()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004009", gg.TYPE_DWORD)
  gg.toast("M416热带雨林美化成功")
end
function c69()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004010", gg.TYPE_DWORD)
  gg.toast("M416疯狂沙漠美化成功")
end
function c70()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004014", gg.TYPE_DWORD)
  gg.toast("M416俄罗斯风情美化成功")
end
function c71()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004060", gg.TYPE_DWORD)
  gg.toast("M416红色口吻美化成功")
end
function c72()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004001", gg.TYPE_DWORD)
  gg.toast("平底锅火焰披萨美化成功")
end
function c73()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004002 ", gg.TYPE_DWORD)
  gg.toast("平底锅双黄蛋美化成功")
end
function c74()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004005", gg.TYPE_DWORD)
  gg.toast("平底锅西红柿美化成功")
end
function c75()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004008", gg.TYPE_DWORD)
  gg.toast("平底锅银色烧鸡美化成功")
end
function c76()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004009", gg.TYPE_DWORD)
  gg.toast("平底锅靶心美化成功")
end
function c77()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004011", gg.TYPE_DWORD)
  gg.toast("平底锅骷髅头美化成功")
end
function c78()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004020", gg.TYPE_DWORD)
  gg.toast("平底锅羊驼美化成功")
end
function c79()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004025", gg.TYPE_DWORD)
  gg.toast("平底锅鸡鸡玩蛋美化成功")
end
function c80()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004032", gg.TYPE_DWORD)
  gg.toast("平底锅迷彩圈圈美化成功")
end
function c81()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004033", gg.TYPE_DWORD)
  gg.toast("平底锅冰封4AM美化成功")
end
function c82()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004047", gg.TYPE_DWORD)
  gg.toast("平底锅黄金刺激美化成功")
end
function c83()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004053", gg.TYPE_DWORD)
  gg.toast("平底锅魔爪限定美化成功")
end
function c84()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004060 ", gg.TYPE_DWORD)
  gg.toast("平底锅刺激黄金熊🐻美化成功")
end
function c85()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1108004061", gg.TYPE_DWORD)
  gg.toast("平底锅刺激粉色泡🍳美化成功")
end
function c86()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002006", gg.TYPE_DWORD)
  gg.toast("UMP9嗜血美化成功")
end
function c87()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002008", gg.TYPE_DWORD)
  gg.toast("UMP9墨绿美化成功")
end
function c88()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002019", gg.TYPE_DWORD)
  gg.toast("UMP9木星斑纹美化成功")
end
function c89()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002020", gg.TYPE_DWORD)
  gg.toast("UMP9至尊黄金美化成功")
end
function c90()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002025", gg.TYPE_DWORD)
  gg.toast("UMP9圣诞恋歌美化成功")
end
function c91()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002030", gg.TYPE_DWORD)
  gg.toast("UMP9极速科技美化成功")
end
function c92()
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102002034", gg.TYPE_DWORD)
  gg.toast("UMP9少女粉美化成功")
end
function c93()
  gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102003001", gg.TYPE_DWORD)
  gg.toast("维克托火箭少女101美化成功")
end
function c94()
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102001001", gg.TYPE_DWORD)
  gg.toast("UZI米色美化成功")
end
function c95()
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102001002", gg.TYPE_DWORD)
  gg.toast("UZI火焰披萨美化成功")
end
function c96()
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1102001003", gg.TYPE_DWORD)
  gg.toast("UZI清凉一夏美化成功")
end
function c97()
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104001001", gg.TYPE_DWORD)
  gg.toast("S686米色美化成功")
end
function c98()
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104001002", gg.TYPE_DWORD)
  gg.toast("S686至尊黄金美化成功")
end
function c99()
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104001005", gg.TYPE_DWORD)
  gg.toast("S686黄色彩带美化成功")
end
function c100()
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104001015", gg.TYPE_DWORD)
  gg.toast("S686火焰披萨美化成功")
end
function c101()
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104002002", gg.TYPE_DWORD)
  gg.toast("S1897圣诞恋歌美化成功")
end
function c102()
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104002003", gg.TYPE_DWORD)
  gg.toast("S1897黄白双拼美化成功")
end
function c103()
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104002005", gg.TYPE_DWORD)
  gg.toast("S1897海洋之心美化成功")
end
function c104()
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104002015", gg.TYPE_DWORD)
  gg.toast("S1897街头恶霸美化成功")
end
function c105()
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104003001", gg.TYPE_DWORD)
  gg.toast("S12K米色美化成功")
end
function c106()
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1104003005", gg.TYPE_DWORD)
  gg.toast("S12K蓝色妖姬美化成功")
end
function c107()
  gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106005001", gg.TYPE_DWORD)
  gg.toast("R45米色美化成功")
end
function c108()
  gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106005004", gg.TYPE_DWORD)
  gg.toast("R45海洋之心美化成功")
end
function c109()
  gg.searchNumber("10600400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106004002", gg.TYPE_DWORD)
  gg.toast("P18C白红双拼美化成功")
end
function c110()
  gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106001005", gg.TYPE_DWORD)
  gg.toast("P1911海洋之心美化成功")
end
function c111()
  gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1106001015", gg.TYPE_DWORD)
  gg.toast("P1911火焰披萨美化成功")
end
function c112()
  gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1105001002", gg.TYPE_DWORD)
  gg.toast("M249嗜血美化成功")
end
function c113()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003043", gg.TYPE_DWORD)
  gg.toast("SCAR七彩甜甜圈至尊版美化成功")
end
function c114()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003049", gg.TYPE_DWORD)
  gg.toast("SCARJK萌妹子美化成功，单身狗的福音呀")
end
function c115()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003042", gg.TYPE_DWORD)
  gg.toast("SCAR雷蛇限定美化成功")
end
function c116()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003038", gg.TYPE_DWORD)
  gg.toast("SCAR圣诞节至尊版美化成功")
end
function c117()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003041", gg.TYPE_DWORD)
  gg.toast("SCAR圣诞节普通版美化成功")
end
function c118()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003033", gg.TYPE_DWORD)
  gg.toast("SCAR影武者美化成功")
end
function c119()
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101003021", gg.TYPE_DWORD)
  gg.toast("SCAR洛杉矶美化成功")
end
function c120()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004041", gg.TYPE_DWORD)
  gg.toast("M416冰霜核心美化成功")
end
function c121()
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1101004067", gg.TYPE_DWORD)
  gg.toast("M416哥斯拉美化成功")
end
function c122()
  gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103003003", gg.TYPE_DWORD)
  gg.toast("AWM AIM限定美化成功")
end
function c123()
  gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1103003004", gg.TYPE_DWORD)
  gg.toast("AWM冰雪女王美化成功")
end


function dd5()
  SN = gg.multiChoice({
"骚气伴娘",
  "甜甜圈套装",
  "100级套装",
  "狐狸套装",
  "格斗少女",
  "关羽套装",
  "黄金裙子",
  "健身衣服",
  "骚气伴娘",
  "木乃伊套装",
  "粉衣羊腿",
  "军人套装",
  "精神小伙",
  "格斗少女",
  "幻夜猫娘",
  "巴拉拉小魔仙",  
  "京剧套装",    
  "死神之触",      
  "s11战斗服",   
  "黑色风衣",  
  "海岛风衣",   
  "沙漠风衣", 
  "沙漠吉利服", 
  "刺激战场默认白衣", 
  "狗熊套装", 
  "古城探案", 
  "玄武套装",  
  "黄金嘻哈",   
  "圣诞女孩", 
  "猩猩套装",  
  "蝙蝠侠",
   "粉色小马",  
   "蜘蛛侠",    
  "街舞嘻哈",  
    "小丑套装",   
  "电视套装",  
  "白色小兔",
  "国服粉兔", 
  "豌豆套装",   
  "熊猫套装", 
  "哥斯拉服装",   
  "完整哥斯拉", 
    "基多拉服装", 
   "小黄鸭鸭",
   "婚纱套装", 
  "河童小弟",
  "战斗盔甲",       
  "背包美化",   
   "绿巨人", 
 "国服披风", 
 "动态战斗服", 
  "愤怒的小鸡头盔",   
       "冰雪头盔",
         "小白兔子头盔",                                                                                                                                                                                                           
  "返回上页"
 }, nil, "衣服只能选择一个")
   if SN == nil then
  else
  if SN[1] == true then
    aa80()
  end
  if SN[2] == true then
   aa81()
  end
  if SN[3] == true then
   aa82()
  end
  if SN[4] == true then
   aa83()
  end
  if SN[5] == true then
   aa84()
  end
  if SN[6] == true then
   aa85()
  end
  if SN[7] == true then
   aa86()
  end
  if SN[8] == true then
   aa87()
  end
  if SN[9] == true then
   aa88()
  end
  if SN[10] == true then
  aa89()
  end
  if SN[11] == true then
   aa90()
  end
  if SN[12] == true then
   aa91()
  end
  if SN[13] == true then
   aa92()
  end
  if SN[14] == true then
   aa93()
  end
  if SN[15] == true then
   aa94()
  end
  if SN[16] == true then
   oo()
  end
    if SN[17] == true then
   ooo()
  end
   if SN[18] == true then
   qq()
  end
  if SN[19] == true then
   s11()
  end
    if SN[20] == true then
   s111()
  end
  if SN[21] == true then
   ss11()
end
  if SN[22] == true then
   s1()
  end
  if SN[23] == true then
   SM()
  end
  if SN[24] == true then
   MR()
  end
  if SN[25] == true then
   GX()
  end
  if SN[26] == true then
   GC()
  end
  if SN[27] == true then
   XW()
  end
  if SN[28] == true then
   XX()
  end
  if SN[29] == true then
   SDNH()
  end
  if SN[30] == true then
   XBXX()
  end
  if SN[31] == true then
   BFX()
  end
  if SN[32] == true then
   CNM()
  end
  if SN[33] == true then
   ZZX()
  end
  if SN[34] == true then
   JWXH()
  end
  if SN[35] == true then
   XCTZ()
  end
  if SN[36] == true then
   DSTZ()
  end
  if SN[37] == true then
   BSTZFGQ()
  end
  if SN[38] == true then
   GFFT()
  end
  if SN[39] == true then
   WDTZQR()
  end
  if SN[40] == true then
   XMTZ()
  end
  if SN[41] == true then
   GSL1()
  end
  if SN[42] == true then
   GSL2()
  end
  if SN[43] == true then
   JDL()
  end
  if SN[44] == true then
   XHYY()
  end
  if SN[45] == true then
   HSTS()
  end
  if SN[46] == true then
   HTXD()
  end
  if SN[47] == true then
   ZDKJ()
  end
   if SN[48] == true then
   HJBB()
  end
     if SN[49] == true then
   LJRKQ()
  end
   if SN[50] == true then
   HFPF()
  end
   if SN[51] == true then
   DTZDF()
  end
     if SN[52] == true then
   ee1()
  end
       if SN[53] == true then
   ee2()
end
     if SN[54] == true then
   ee3()
end
  if SN[55] == true then
   HOME()
  end
end
  XGCK = -1
end




function ee1()
qmnb = {
{["memory"] = 32},
{["name"] = "愤怒的小鸡一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 2301, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001072, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 9997, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002072, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 9999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003072, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ee2()
qmnb = {
{["memory"] = 32},
{["name"] = "冰雪一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 2301, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 9997, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 9999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ee3()
qmnb = {
{["memory"] = 32},
{["name"] = "小白兔子一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 2301, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 9997, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 9999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function DTZDF()
qmnb = {
{["memory"] = 32},
{["name"] = "动态战斗服"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405481, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function HFPF()
qmnb = {
{["memory"] = 32},
{["name"] = "国服披风"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405352, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function LJRKQ()
qmnb = {
{["memory"] = 32},
{["name"] = "绿巨人"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405327, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function HJBB()
menu = gg.choice({
'哥斯拉背包',
'基多拉背包',
'愤怒的小鸟',
'冰雪背包',
'小鹿背包',
'幻世周年庆',
'武士背包美化',
'金龙背包美化',
'天使的翅膀',
'退出脚本'},
2020,'懒得写这个了  要开自己去我帖子看修改值')
if menu == 1 then GSLBB() end
if menu == 2 then JDLBB() end
if menu == 3 then FNDXN() end
if menu == 4 then BXBBX() end
if menu == 5 then XLBB() end
if menu == 6 then HSZNQ() end
if menu == 7 then WSBBMH() end
if menu == 8 then JLBBMH() end
if menu == 9 then TSDCB() end
if menu == 10 then Exit() end
XGCK=-1
end



function TSDCB()
qmnb = {
{["memory"] = 32},
{["name"] = "天使翅膀一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001081, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002081, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003081, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function JLBBMH()
qmnb = {
{["memory"] = 32},
{["name"] = "金龙一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001053, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002053, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003053, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function WSBBMH()
qmnb = {
{["memory"] = 32},
{["name"] = "武士一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001046, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002046, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003046, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function HSZNQ()
qmnb = {
{["memory"] = 32},
{["name"] = "幻世周年庆一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001045, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002045, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003045, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XLBB()
qmnb = {
{["memory"] = 32},
{["name"] = "小鹿一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001036, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002036, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003036, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function BXBBX()
qmnb = {
{["memory"] = 32},
{["name"] = "冰雪一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function FNDXN()
qmnb = {
{["memory"] = 32},
{["name"] = "愤怒的小鸟庆一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001091, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002091, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003091, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function JDLBB()
qmnb = {
{["memory"] = 32},
{["name"] = "基多拉一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function GSLBB()
qmnb = {
{["memory"] = 32},
{["name"] = "哥斯拉一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 2101, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001061, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 9102, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002061, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 9103, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003061, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ZDKJ()
qmnb = {
{["memory"] = 32},
{["name"] = "战斗盔甲"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405295, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function HTXD()
qmnb = {
{["memory"] = 32},
{["name"] = "河童小弟"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405176, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function HSTS()
qmnb = {
{["memory"] = 32},
{["name"] = "婚纱套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405174, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XHYY()
qmnb = {
{["memory"] = 32},
{["name"] = "小黄鸭鸭"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405170, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function JDL()
qmnb = {
{["memory"] = 32},
{["name"] = "基多拉"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405161, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function GSL2()
qmnb = {
{["memory"] = 32},
{["name"] = "完整哥斯拉"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405186, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function GSL1()
qmnb = {
{["memory"] = 32},
{["name"] = "哥斯拉套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405160, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XMTZ()
qmnb = {
{["memory"] = 32},
{["name"] = "熊猫套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 14051517, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function WDTZQR()
qmnb = {
{["memory"] = 32},
{["name"] = "豌豆套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405131, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function GFFT()
qmnb = {
{["memory"] = 32},
{["name"] = "国服小兔"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405127, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function BSTZFGQ()
qmnb = {
{["memory"] = 32},
{["name"] = "白色小兔"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405098, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function DSTZ()
qmnb = {
{["memory"] = 32},
{["name"] = "电视套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405096, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XCTZ()
qmnb = {
{["memory"] = 32},
{["name"] = "小丑套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405092, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function JWXH()
qmnb = {
{["memory"] = 32},
{["name"] = "街舞嘻哈"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405073, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa80()
qmnb = {
{["memory"] = 32},
{["name"] = "骚气伴娘"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405426, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa81()
qmnb = {
{["memory"] = 32},
{["name"] = "甜甜圈套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405425, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa82()
qmnb = {
{["memory"] = 32},
{["name"] = "100级套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405419, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa83()
qmnb = {
{["memory"] = 32},
{["name"] = "国服狐狸"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405409, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa84()
qmnb = {
{["memory"] = 32},
{["name"] = "格斗少女"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405408, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa85()
qmnb = {
{["memory"] = 32},
{["name"] = "关羽套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405406, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa86()
qmnb = {
{["memory"] = 32},
{["name"] = "黄金裙子"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405518, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa87()
qmnb = {
{["memory"] = 32},
{["name"] = "健身衣服"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405429, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa88()
qmnb = {
{["memory"] = 32},
{["name"] = "骚气伴娘"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405426, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa89()
qmnb = {
{["memory"] = 32},
{["name"] = "木乃伊套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1400687, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa90()
qmnb = {
{["memory"] = 32},
{["name"] = "粉衣羊腿"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405424, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa91()
qmnb = {
{["memory"] = 32},
{["name"] = "军人套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405423, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa92()
qmnb = {
{["memory"] = 32},
{["name"] = "精神小伙"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405422, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa93()
qmnb = {
{["memory"] = 32},
{["name"] = "格斗少女"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405408, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function aa94()
qmnb = {
{["memory"] = 32},
{["name"] = "幻夜猫娘"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405491, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function oo()
qmnb = {
{["memory"] = 32},
{["name"] = "巴拉拉小魔仙"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405487, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ooo()
qmnb = {
{["memory"] = 32},
{["name"] = "京剧套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405431, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function qq()
qmnb = {
{["memory"] = 32},
{["name"] = "死神套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405318, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function s11()
qmnb = {
{["memory"] = 32},
{["name"] = "s11衣服美化"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405427, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function s111()
qmnb = {
{["memory"] = 32},
{["name"] = "风衣"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 403184, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ss11()
qmnb = {
{["memory"] = 32},
{["name"] = "海岛风衣"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 403182, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "海岛裤子"},
{["value"] = 404000, ["type"] = 4},
{["lv"] = 559, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 404066, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function s1()
qmnb = {
{["memory"] = 32},
{["name"] = "沙漠风衣"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 403183, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function SM()
qmnb = {
{["memory"] = 32},
{["name"] = "沙漠吉利服"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 403187, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function MR()
qmnb = {
{["memory"] = 32},
{["name"] = "刺激战场默认白衣"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 403251, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "默认裤子"},
{["value"] = 404000, ["type"] = 4},
{["lv"] = 559, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 404007, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "默认鞋子"},
{["value"] = 405000, ["type"] = 4},
{["lv"] = 599, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 405001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function GX()
qmnb = {
{["memory"] = 32},
{["name"] = "狗熊套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405274, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function GC()
qmnb = {
{["memory"] = 32},
{["name"] = "古城探案"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405302, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XW()
qmnb = {
{["memory"] = 32},
{["name"] = "玄武套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405293, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XX()
qmnb = {
{["memory"] = 32},
{["name"] = "黄金嘻哈"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405030, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function SDNH()
qmnb = {
{["memory"] = 32},
{["name"] = "圣诞女孩"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405012, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function XBXX()
qmnb = {
{["memory"] = 32},
{["name"] = "猩猩套装"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function BFX()
qmnb = {
{["memory"] = 32},
{["name"] = "蝙蝠侠"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405041, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function CNM()
qmnb = {
{["memory"] = 32},
{["name"] = "粉色小马"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405061, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ZZX()
qmnb = {
{["memory"] = 32},
{["name"] = "蜘蛛侠"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1405066, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function dd6()
menu = gg.choice({
'头盔美化',
'身体美化',
'背包美化',
'返回上页'},
nil,'众生')
if menu == 1 then ZS() end
if menu == 2 then ZO() end
if menu == 3 then ZP() end
if menu == 4 then Exit() end
XGCK=-1
end



function ZS()
menu1 = gg.multiChoice({
'御灵师一',
'二级头',
'三级头',
'地狱骑士一',
'二级头',
'三级头',
'咆哮南瓜一',
'二级头',
'三级头',
'返回上一页'},
nil,'大厅开启不可切换每个级别头盔可用不同的')
if menu1 == nil then else
if menu1[1] == true then zs1() end
if menu1[2] == true then zs2() end
if menu1[3] == true then zs3() end
if menu1[4] == true then zs4() end
if menu1[5] == true then zs5() end
if menu1[6] == true then zs6() end
if menu1[7] == true then zs7() end
if menu1[8] == true then zs8() end
if menu1[9] == true then zs9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end



function ZO()
menu1 = gg.multiChoice({
'御灵师',
'死神之触',
'伯爵',
'血雨',
'雪峰舞者',
'狗熊',
'木乃伊',
'古城探案',
'返回上一页'},
nil,'游戏中开启再捡个背包啥的')
if menu1 == nil then else
if menu1[1] == true then zo1() end
if menu1[2] == true then zo2() end
if menu1[3] == true then zo3() end
if menu1[4] == true then zo4() end
if menu1[5] == true then zo5() end
if menu1[6] == true then zo6() end
if menu1[7] == true then zo7() end
if menu1[8] == true then zo8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function ZP()
menu1 = gg.multiChoice({
'半神勇士一',
'二级包',
'三级包',
'血雨一',
'二级包',
'三级包',
'小妖精一',
'二级包',
'三级包',
'返回上一页'},
nil,'大厅开启不可切换每个级别背包可用不同的')
if menu1 == nil then else
if menu1[1] == true then zp1() end
if menu1[2] == true then zp2() end
if menu1[3] == true then zp3() end
if menu1[4] == true then zp4() end
if menu1[5] == true then zp5() end
if menu1[6] == true then zp6() end
if menu1[7] == true then zp7() end
if menu1[8] == true then zp8() end
if menu1[9] == true then zp9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end


function zs1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,001;2301:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502001069",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,002;9997:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502002069",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,003;9,999:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502003069", gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,001;2301:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502001014",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,002;9997:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502002014",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,003;9,999:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502003014",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,001;2301:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502001018",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zs8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,002;9997:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502002018",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function zs9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;502;502,003;9,999:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1502003018",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1405334",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1405318",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1400693",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1405319",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1405032",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1405274",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1400687",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zo8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,400,129;5;500;1;404,000:53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1400129", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1405302",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,001;2101:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501001084",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,002;9102:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501002084",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,003;9103:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501003084", gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,001;2101:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501001086",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,002;9102:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501002086",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,003;9103:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501003086",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,001;2101:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501001022",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function zp8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,002;9102:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501002022",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function zp9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;501;501,003;9,103:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("501003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1501003022",gg.TYPE_DWORD)
gg.toast("开启成功")
end

  function ___________25()
    gg.setRanges(8)
    SearchWrite({
      {
        tonumber("-3.1863806e30"),
        tonumber("0")
      },
      {
        tonumber("-6.1840865e27"),
        tonumber("12")
      }
    }, {
      {
        tonumber("0"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
  
  function ___________26()
    gg.setRanges(8)
    SearchWrite({
      {
        tonumber("-6.1840865e27"),
        tonumber("12")
      }
    }, {
      {
        tonumber("-3.1863806e30"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
function ___________27()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("Kill Players X ✔")
end

function D()
local D = gg.multiChoice({
'天空黑色',
'天空粉色',
'无知自制子弹追踪',
'上帝视角',
'人物地线',
'步枪瞬机',
'步枪加伤',
'装备定位',
'循环天地线',
'人物天线',
'下蹲路飞',
'爬墙开启',
'爬墙关闭',
'人物锁头',
'腾云驾雾',
'腾云驾雾关',
"98K连狙",
"M24连狙",
"AWM连狙",
"穿墙路飞",
"返回上业",
},{
--[1]=true,
--[2]=true,
--[3]=true,
--[4]=true,
--[5]=true,
--[6]=true,
--[7]=true,
--[8]=true,
--[9]=true,
--[10]=true,
--[11]=true,
--[12]=true,
--[13]=true,
--[14]=true
--[15]=true,
--[16]=true
--[17]=true
--[18]=true,
--[19]=true
--[20]=true
--[21]=true
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if D==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if D[1]==true then 
d1()
end
if D[2]==true then
d2()
end
if D[3]==true then
d3()
end
if D[4]==true then
d4()
end
if D[5]==true then
d5()
end
if D[6]==true then
d6()
end
if D[7]==true then 
d7()
end
if D[8]==true then
d8()
end
if D[9]==true then
d9()
end
if D[10]==true then
d10()
end
if D[11]==true then
d11()
end
if D[12]==true then
d12()
end
if D[13]==true then
d13()
end
if D[14]==true then
d14()
end
if D[15]==true then
d15()
end
if D[16]==true then
d16()
end
if D[17]==true then
d17()
end
if D[18]==true then
d18()
end
if D[19]==true then
d19()
end
if D[20]==true then
d20()
end
if D[21]==true then
HOME()
end
end
XGCK=-1
end


function d1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('28992425112437505',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('28992425112437505',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('0',gg.TYPE_QWORD)
gg.toast("天空黑色开启成功")   
end



function d2()
gg.clearResults()
 Name = "天空粉色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{1669401088, 0},
{537149463, 8},
{4, 12},
{256, 24},

}
local modify = {{1669398529, 0},}
SearchWrite(search,modify,dataType,Name)    
end



function d3()
Name = "子弹追踪［微］" 
gg.setRanges(32)
local dataType = 16
local search = {
{-88.71304321289062, 0},
{8.0, 4},
{16.0, 8},

}
local modify = {{120, 8},}
SearchWrite(search,modify,dataType,Name)

Name = "子弹追踪2［微］" 
gg.setRanges(32)
local dataType = 16
local search = {
{-92.23117065429688, 0},
{16.0, 4},
{26.0, 8},

}
local modify = {{120, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "头部范围" 
gg.setRanges(32)
local dataType = 16
local search = {
{12.667054176330566, 0},
{15.0, -612},

}
local modify = {{330, 0},{330, -612},{330, 484},{330, 228},{330, 100},{330, 1948}}
SearchWrite(search,modify,dataType,Name)
--[[
gg.setRanges(32)
gg.searchNumber("12.66705417633;28;15;26:5120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
if gg.getResultCount() == 0 then
gg.toast("子弹头部范围开启失败")
else
gg.editAll("330", gg.TYPE_FLOAT)
gg.toast("子弹头部范围追踪开启成功")
end]]
end



function d4()
gg.setRanges(32) 
local tb1 = {{ ("3.3579315e-41"), ("-136")}, { ("3.6025982e-41"), ("-128")}, } 	
local tb2 = {{ ("500"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end



function d5()
gg.setRanges(32)
local tb1 = {{tonumber("-1.68741369247"),tonumber("0")}, {tonumber("0.33067199588"),tonumber("12")}, } 	
local tb2 = {{tonumber("-999999999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("地线开启成功")
end

function d6()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000292", gg.TYPE_FLOAT)
  gg.toast("M4射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000083", gg.TYPE_FLOAT)
  gg.toast("Scar射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.00100000005", gg.TYPE_FLOAT)
  gg.toast("AK射速开启成功")  
end



function d7()
 gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("166000", gg.TYPE_FLOAT)
gg.toast("25%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140000", gg.TYPE_FLOAT)
gg.toast("50%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("167000", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("180000", gg.TYPE_FLOAT)
gg.toast("100%")
end


function d8()
A = gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{7.1689529418945, 0x38A4}, {9.2457857132, 0x489C}, {13.18564987183, 0x4894},}
    local tb2 = {{999999, 0x38A4},}
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.4779739379883, 0x749C}, {1.38781404495, 0x7498}, {2.03120303154, 0x748C},}
    local tb2 = {{99999, 0x749C, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{7.4993133544922, 0xD1C4}, {-25.68770980835, 0xD1C0}, {17.2485370636, 0xD1BC},}
    local tb2 = {{99999, 0xD1C4, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.10485887527, 0x7B60}, {4.03340053558, 0x7B5C}, {15.11002922058, 0x7B58},}
    local tb2 = {{99999, 0x7B60, false},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("3级装备+8倍镜天线已开启  ") 
   gg.setRanges(gg.REGION_VIDEO)                      
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.26353430748, 0xA068}, {-1.59971761703, 0xA058},{-2.26234126091, 0xA040},}
    local tb2 = {{99999, 0xA068,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{1.58135390282, 0xC0D4}, {1.56683290005, 0xC0D0}, {1.56683623791, 0xC0C4},}
    local tb2 = {{99999, 0xC0D4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("消音器天线开启成功")
gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.28105437756, 0x917C}, {5.90920639038, 0x9178},{0.11737322807, 0x9174},}
    local tb2 = {{99999, 0x917C,},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("步枪快扩天线已开启")    
end      

function d9()gg.setRanges(gg.REGION_C_DATA)
local Md=1
local dataType=gg.TYPE_FLOAT Name="暴力男装"
local tb1={{-1.86394e26,0xE5A8}}
local tb2={{-5.9049397e20,0xE5F0},{-3.8376433e21,0xE5F4}}SearchWrite(tb1,tb2,dataType)
local Sleep= gg.prompt({"循环间隔:默认125Ms/次"},{125},{"number"})
if Sleep==nil then gg.toast("不选间隔你玩你🐴")Md=0 Main()
else gg.toast("已设置循环间隔"..Sleep[1].."Ms/次")
local Shark=gg.choice({"循环天线","循环地线"}) 
if Shark==nil then Md=0 Main() end 
if Shark==1 then Name="暴力天线" Bytes=9.73725 end 
if Shark==2 then Name="暴力地线" Bytes=-9.73725 end 
gg.setRanges(gg.REGION_ANONYMOUS) while(Md==1) do
if gg.isVisible(true)then Md=0 Main()gg.setVisible(false)gg.toast("已暂停")else gg.sleep(Sleep[1])
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{Bytes,0x68},}SearchWrite(tb1,tb2,dataType)end end end end

function d10()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("千米天线")   
end

function d11()
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


function d12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1F;35F;443F;55F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("♡爬墙开启成功℃")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5032462e-44F;10.0F;45.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("♡翻墙开启成功℃")
end

  
  function d13()
Fxs({{443,0,16},{2,-8,16},{220,-4,16},},{{35,-4,16},{1,-8,16},},32,"Fxs")
  end

function d14()
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
gg.toast("锁头开启成功")
end

function d15()
  gg.setRanges(32)
  local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, }
  local tb2 = {{tonumber("1.25"), tonumber("0")}, {tonumber("1.25"),tonumber("4")}, {tonumber("1.25"),tonumber("8")}, }
  local dataType = 16
  SearchWrite(tb1,tb2, dataType)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("腾云驾雾开启成功")
end

function d16()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6;4,000.0F;0.30000001192F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-980", gg.TYPE_FLOAT)
  local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, }
  local tb2 = {{tonumber("1"), tonumber("0")}, {tonumber("1"),tonumber("4")}, {tonumber("1"),tonumber("8")}, }
  local dataType = 16
  SearchWrite(tb1,tb2, dataType)
  gg.toast("腾云驾雾关闭成功")

end


function d17()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000;1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("98k连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("98k瞬击成功")
end



function d18()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000;1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("M24连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("M24瞬击成功")
end

function d19()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91,000.0F;2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("AWM连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("AWM瞬击成功")
end



function d20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.65688276291;0.03494880721;5.82142114639;-2.83384513855", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5.82142114639", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("站立穿墙路飞开启成功")
end





function E()
menu1 = gg.multiChoice({
"1.诸神范围",
"2.800范围",
"3.不减伤范围",
"4.全身变态范围",
"5.真伤范围",
"6.自改范围",
"7.返回主页"},
nil,"众生制作")
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


function e1()
 gg.toast("")
Fxs({{23,0,16},{25,4,16},{30.5,8,16},},{{-430,0,16},{430,4,16},{430,8,16},},32,"20%")
gg.clearResults()
Fxs({{10,0,16},{35,24,16},{33,28,16},{69.5,32,16},},{{-430,0,16},{-430,24,16},{-430,28,16},{-430,32,16},},32,"30%")
gg.clearResults()
Fxs({{40,0,16},{33,4,16},{69.5,8,16},},{{-430,0,16},{-430,4,16},{-430,8,16},},32,"40%")
gg.clearResults()
Fxs({{16,0,16},{26,4,16},},{{-430,0,16},{-430,4,16},},32,"50%")
gg.clearResults()
Fxs({{18,0,16},{28,4,16},},{{-430,0,16},{-430,4,16},},32,"60%")
gg.clearResults()
Fxs({{45,0,16},{15,-8,16},{30,-4,16},},{{-430,0,16},{-430,-8,16},{-430,-4,16},},32,"70%")
gg.clearResults()
Fxs({{8,0,16},{15,4,16},},{{-430,0,16},{-430,4,16},},32,"80")
gg.clearResults()
Fxs({{18,0,16},{27.25,4,16},},{{-430,0,16},{-430,4,16},},32,"90%")
gg.clearResults()
Fxs({{18.38787841797,0,16},{0.53869867325,4,16},{-3.42231750488,8,16},},{{135,0,16},},32,"100%")
gg.setRanges(gg.REGION_C_BSS)
gg.toast("诸神级范围开启成功")
end


function e2()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.10000000149F;64.50088500977F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("80",gg.TYPE_FLOAT)
gg.toast("八百倍范围开启成功")
end



function e3()  
gg.setRanges(131072)
    gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("26", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-89999960", 16)
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("28", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-99999960", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", 16, false, 536870912, 0, -1)
    gg.searchNumber("16", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("9.20161819458;23;25;30.5", 16, false, 536870912, 0, -1)
    gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("245", 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
    gg.searchNumber("45", 16, false, 536870912, 0, -1)
    gg.getResults(30)
    gg.editAll("999999", 16)
    gg.toast("众生超强范围")
    end



function e4()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("变态全身真伤范围开启成功")
end


function e5()
 gg.setRanges(32)
local dataType = 16
local search = {{9.201618194580078, 0},{9.203507215715945E-5, 8},{23.0, 24},}
local modify = {{240, 28},{240, 32},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
end



function e6()
  fw = gg.prompt({
    "输入范围大小："
  }, {""})
  if fw ~= nil then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll(fw[1], gg.TYPE_FLOAT)
  gg.toast("10%")
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll(fw[1], gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("20%")
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(fw[1], gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll(fw[1], gg.TYPE_FLOAT)
  gg.toast("40%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("60%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("70%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("80%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("90%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("100%")
    gg.toast("超大真伤范围开启成功")
  end
end






function G()
menu1 = gg.multiChoice({
"1.吉普加速",
"2.汽车锁油",
"3.汽车秒刹",
"4.车辆浮空",
"5.全车加速",
"6.全车JS关",
"7.返回主页"},
nil,"众生制作")
if menu1 == nil then else 
if menu1[1] == true then qc1() end
if menu1[2] == true then qc2() end
if menu1[3] == true then qc3() end
if menu1[4] == true then qc4() end
if menu1[5] == true then qc5() end
if menu1[6] == true then qc6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end

function qc1()
gg.alert("注意被撞树和石头秒死")
 gg.setRanges(32)
local tb1 = {{tonumber("0.76000005007"),tonumber("-12")}, {tonumber("0.96078431606"),tonumber("-8")}, {tonumber("1"),tonumber("-4")}, {tonumber("0.74509805441"),tonumber("0")}, } 
local tb2 = {{tonumber("88888"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
end

function qc2()
 gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("汽车锁油")
end

function qc3()  
 gg.toast("")
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

function qc4()
Name = "车浮空" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.139455925665468E27, 0},
{-7.583908064996921E27, 4},
{-5.112866641183671E27, 8},
{-1.2793503529145021E28, 12},
{-7.600827713809233E27, 16},
{-7.600830074992474E27, 20},
{-7.593578290962217E27, 24},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end

function qc5()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end


function qc6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  g10sj="0"
  gg.toast("全车加速已关闭")
end
function ZM()
  SN = gg.multiChoice({
    "全屏自瞄1",
    "全屏自瞄2",
    "全屏自瞄3",
    "全屏自瞄4",
    "锁胸自瞄",
    "全屏自瞄5",
    "近战自瞄",
    "全屏自瞄6",
    "老外自瞄",
    "鸡腿自瞄(第一步)",
    "鸡腿自瞄(第二步)",
    "老外锁头",
    "退出脚本",
  }, nil, "全屏自瞄只能开一个\n本人经常用全品屏自瞄1\n鸡腿自瞄不能跟其他自瞄开")
  if SN == nil then
  else
  if SN[1] == true then
   zm1()
  end
   if SN[2] == true then
   zm2()
  end
  if SN[3] == true then
   zm3()
  end
  if SN[4] == true then
   zm4()
  end
  if SN[5] == true then
   zm5()
  end
  if SN[6] == true then
   zm6()
  end
  if SN[7] == true then
   zm7()
  end
  if SN[8] == true then
   zm8()
  end
  if SN[9] == true then
   zm9()
  end
    if SN[10] == true then
   zm11()
  end
    if SN[11] == true then
   zm11()
  end
  if SN[12] == true then
   zm12()
  end
  if SN[13] == true then
    Exit()   
  end
end
  XGCK = -1
end
 


function zm1()
gg.alert("🇨🇳落地持枪开🇨🇳")
A = gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("🇨🇳25%🇨🇳")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("🇨🇳50%🇨🇳")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("🇨🇳75%🇨🇳")
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("🇨🇳100%🇨🇳")
gg.toast("🇨🇳全屏开启成功🇨🇳")
  gg.setRanges(32)
  local dataType = 16
  Name = "🇨🇳小🐔🇨🇳:"
  local tb1 = {
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
  }
  local tb2 = {
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
  }
  SearchWrite(tb1, tb2, dataType)
 gg.toast("🇨🇳优化成功🇨🇳")
end
function zm2()
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("28", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-99999960", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", 16, false, 536870912, 0, -1)
    gg.searchNumber("16", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
    gg.searchNumber("45", 16, false, 536870912, 0, -1)
    gg.getResults(30)
    gg.editAll("999999", 16)
 gg.toast("自瞄第一步开启成功")

 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("250", gg.TYPE_FLOAT)
  gg.toast("Auto HeadShot 99% activated!")

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

qmnb = {
{["memory"] = 8},
{["name"] = "近处自瞄"},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
gg.setRanges(8)
local tb1 = {{tonumber("360"),tonumber("-12")}, {tonumber("0.0001"),tonumber("0")}, {tonumber("1478828288"),tonumber("84")}, } 	
local tb2 = {{tonumber("99999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("全屏百米开启成功")
  gg.setRanges(32)
  local dataType = 16-----AF内存喵
  Name = "居居"
  local tb1 = {
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
  }
  local tb2 = {
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
  }
  SearchWrite(tb1, tb2, dataType)
end

function zm3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("全屏自瞄开启成功")
end


function zm4()
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(8)
local dataType = 16
local tb1 = {{-2.8488793e28, 0}, {-5.4827808e27, 4}, {-1.2464639e28, 8}, {-2.7270195e28, 12}, }
local tb2 = {{0, 4},{0, 0}, } 	
SearchWrite(tb1, tb2, dataType) 
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("开枪自动锁人,有效范围约100米")

gg.setRanges(8)
local dataType = 16
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{-3.8369228e21,0x64DC}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(8)
local dataType = 32
local tb1={{ -2123974960349970432,0},{-1759781550398895551,36}}
local tb2={{-1759781554395021312,36}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.toast("开枪自动锁人,无视障碍可全图")
end



function zm5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("自瞄锁胸已开启")
end

function zm6()
gg.setRanges(32)
  local dataType = 16
  Name = "小鸡"
  local tb1 = {
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
  }
  local tb2 = {
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
  }
  SearchWrite(tb1, tb2, dataType)
  end
  

function zm7()

gg.clearResults()

gg.setRanges(gg.REGION_C_DATA)

gg.searchNumber('6.163085289950575E-33;-1.0767316701863626E28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('-1.0767316701863626E28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(100)

gg.editAll('0', gg.TYPE_FLOAT)

gg.toast("近战自瞄已开启")


end



function zm8()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6.0;2.0;1.0::99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("101", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
  gg.searchNumber("1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("20000000000000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全屏磁性自瞄")
end


function zm9()
gg.setRanges(32)
local dataType = 16
local tb1 = {{1, 0}, {3.5, -4}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{1, 0}, {0.5, -4}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{1, 0}, {1, -4}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{1, 0}, {3.5, -4}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{1, 0}, {1, 4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(32)
local dataType = 16
local tb1 = {{1, 0}, {1, -4}, }
local tb2 = {{999, 0}, }
SearchWrite(tb1, tb2, dataType)
end


function zm10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

gg.searchNumber('30;30;0.3;0.3;80;25;220::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(10)

gg.editAll('0.03', gg.TYPE_FLOAT)
gg.toast("鸡腿自瞄第一部已开启")
gg.toast("请在出生地开启自瞄第二步")
end

function zm11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36;1065353216;50528513;1203982336:', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('1065353216', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(10)

gg.editAll('1,090,519,040', gg.TYPE_DWORD)
gg.toast("自瞄已开启")
end

function zm12()
gg.alert("落地持枪开")
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("28", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-99999960", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", 16, false, 536870912, 0, -1)
    gg.searchNumber("16", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
    gg.searchNumber("45", 16, false, 536870912, 0, -1)
    gg.getResults(30)
    gg.editAll("999999", 16)
 gg.toast("开启成功")
end

function Exit()
print("无知nb")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '无知制作'
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










