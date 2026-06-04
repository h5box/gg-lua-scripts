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
           gg.toast("🎃开启成功🎃"..#data.."")
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
            gg.toast("🎃开启失败🎃", false)
            return false
        end
    else
        gg.toast("🎃很抱歉未找到游戏机制🎃\n🎃开启失败🎃")
        return false
    end
end
gg.alert("🎃此脚本由BN俱乐部北念制作，“禁止二改，二改死母”这是BN俱乐部Q群号764187514，有什么问题给我说 🎃")
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
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."🎃开启成功🎃"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."🎃开启成功🎃"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."🎃开启失败🎃", false)  return false  end  else  gg.toast("🎃开启失败🎃")  return false  end end  
gg.copyText([[
交流群:764187514
]])
gg.alert(os.date("更多科技与狠活请加群764187514"))
function Main()
menu = gg.choice({
"🎃 1-全图大视角  🎃",
"🎃2-人物透视区  🎃",
"🎃  3-上色功能区  🎃",
" 🎃 4-大厅功能区  🎃",
"🎃  5-变态加速区  🎃",
" 🎃 6-范围伤害区  🎃",
"🎃  7-变态功能区  🎃",
"🎃 8-汽车功能区  🎃",
"🎃  9-天线定位区  🎃",
"🎃 10-手臂路飞区 🎃",
"🎃 11-自瞄设置区 🎃",
"🎃12-整活区 🎃",
"🎃 13-枪械皮肤区 🎃",
"🎃脚本的优势与说明🎃",
"🎃-------退出辅助-------🎃"},
nil,"🎃脚本作者北念🎃\n🎃BN国体1.0🎃\n🎃更多科技与狠活请加群764187514🎃")
if menu == 1 then qtjs() end
if menu == 2 then TSQ() end
if menu == 3 then SSQ() end
if menu == 4 then DTQ() end
if menu == 5 then js() end
if menu == 6 then E() end
if menu == 7 then BTQ() end
if menu == 8 then G() end
if menu == 9 then T() end
if menu == 10 then F() end
if menu == 11 then zm() end
if menu == 12 then zyzl() end
if menu == 13 then qxpf() end
if menu == 14 then sysm() end
if menu == 15 then Exit() end
GLWW=-1
end


--————————————功能列表顶置功能————————————



function qtjs()
 gg.toast("")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="🎃视角开启成功🎃"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =25000, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.toast("🎃5秒后自动关闭功能🎃")
gg.sleep(5000)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="🎃视角关闭成功🎃"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
  




----————————————透视区域——————————




function TSQ()
menu1 = gg.multiChoice({
"🎃1-660透视🎃",
"🎃2-835透视🎃",
"🎃3-845透视🎃",
"🎃4-980透色🎃",
"🎃5-新版防闪🎃",
"🎃6-地皮透视🎃",
"🎃7-物品透视🎃",
"🎃8-车辆透视🎃",
"🎃9-返回主页🎃"},
nil,"🎃如果透视开启后🎃\n🎃有bug请看主页最下面的说明🎃")
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


--物品透第一步:4.0872856e-29;5.1374591e-29;3.7615819e-37;0.00390625;2.0
--第二步:1.1202038e-19;1.6623365e-19;3.7615819e-37;2.0
--第三步:5.8013756e-42;2.2964479e-41;6.50000190735;3.7615819e-37;2.0
--第四步:4.6349768e-40;1.1202034e-19;3.7615819e-37;2.0

function a1()
 gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT--2;-5.5695588e-40;4.7408149e21
    local tb1 = {{2, 0x4504}, {-5.5695588e-40, 0x44C8}, {4.7408149e21, 0x44C4},}
    local tb2 = {{60, 0x4504},}
    SearchWrite(tb1, tb2, dataType)--2;4.8699466e21;5.3495659e21
    local tb1 = {{2, 0xF900}, {1.3912567e-19, 0xF8BC}, {4.7975957e21, 0xF8B4},}
    local tb2 = {{60, 0xF900, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("🎃开启成功🎃")
end

function a2()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("🎃稍等🎃")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("🎃835完美透视开启成功🎃")
end

function a3()
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
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "山体防闪"},
{["value"] = -6.488152e-40, ["type"] = 16},
{["lv"] = 4.7604163e21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 5.6051939e-45, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.1202011e-19, ["offset"] = 12, ["type"] = 16},
{["lv"] = 2, ["offset"] = 144, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 144, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("🎃开启成功🎃")
end

function a4()
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
	 gg.toast("🎃透视开启成功🎃")
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
	 gg.toast("🎃上色开启成功🎃")
end

function a5()
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
qmnb = {
{["memory"] = 1048576},
{["name"] = "山体防闪"},
{["value"] = -6.488152e-40, ["type"] = 16},
{["lv"] = 4.7604163e21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 5.6051939e-45, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.1202011e-19, ["offset"] = 12, ["type"] = 16},
{["lv"] = 2, ["offset"] = 144, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 144, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("🎃通用防闪开启成功🎃")
end

function a6()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("167772178;-308311455:113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-308,311,455", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("🎃地皮透视开启成功🎃")
end

function a7()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.7592617e21;-5.5693627e-40;4.8157559e21;7.2303283e-15;2.37548828125;4.0872856e-29;2.37548828125;5.1374591e-29;4.7223687e21;3.7615819e-37;0.00390625;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("🎃稍等🎃")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.1202038e-19;1.6623365e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42;2.2964479e-41;6.50000190735;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(16)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.6349768e-40;1.1202034e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(12)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("🎃物品透视🎃")
end

---301,987,312;-289,895,744;-369,098,752;0


--物品马赛克:4.814603e21;2.2964479e-41;3.7615819e-37;2.0
--物品虚化:1.1202034e-19;1.662336e-19;3.7615819e-37;2.0

function a8()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.7975957e21;1.3912567e-19;1.1202056e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("🎃开启成功🎃")
end




--——————————大厅功能区域——————————






function DTQ()
menu1 = gg.multiChoice({
"🎃1.无后聚点 [全局]🎃",
"🎃2.大厅除草 [全局]🎃",
"🎃3.大厅除雾 [全局]🎃",
"🎃4.一键全开 [大厅]🎃",
"🎃5.  返回上一页     🎃"},
nil,"🎃大厅开启一次就行🎃")
if menu1 == nil then else 
if menu1[1] == true then dd1() end
if menu1[2] == true then dd2() end
if menu1[3] == true then dd3() end
if menu1[4] == true then dd4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end


function dd1()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.2673448e24;-1.36203639e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-1.36203639e28',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('全枪无后')
qmnb = {
{["memory"] = 8},
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
{["memory"] = 8},
{["name"] = "完美防抖"},
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
 {["memory"] = gg.REGION_C_DATA},
 {["name"] = "全局聚点"},
 {["value"] = -1.2382423887994e+28, ["type"] = gg.TYPE_FLOAT}, 
 {["lv"] = -1.4239332766331e+28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT}, 
 {["lv"] = -1.1144501557583e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, 
 {["lv"] = -1.8331474059342e+27, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT}, 
 }
 qmxg = { {["value"] = 90, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, } 
 xqmnb(qmnb)
 gg.toast("🎃开启成功🎃")
end

function dd2()
 gg.setRanges(32)
local tb1 = {{tonumber("29806"),tonumber("-140")}, {tonumber("7630437"),tonumber("-100")}, {tonumber("1633907556"),tonumber("-76")}, {tonumber("7632240"),tonumber("0")}, } 	
local tb2 = {{tonumber("1936942449"),tonumber("0")}, } 	
local dataType = 4
 SearchWrite(tb1,tb2, dataType)
end

function dd3()
 gg.setRanges(8) 
local tb1 = {{tonumber("-2.3805679e21"),tonumber("-4")}, {tonumber("-1.3620439e28"),tonumber("0")}, {tonumber("-6.1689952e26"),tonumber("64")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function dd4()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.2673448e24;-1.36203639e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-1.36203639e28',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('全枪无后')
qmnb = {
{["memory"] = 8},
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
{["memory"] = 8},
{["name"] = "完美防抖"},
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
 {["memory"] = gg.REGION_C_DATA},
 {["name"] = "全局聚点"},
 {["value"] = -1.2382423887994e+28, ["type"] = gg.TYPE_FLOAT}, 
 {["lv"] = -1.4239332766331e+28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT}, 
 {["lv"] = -1.1144501557583e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, 
 {["lv"] = -1.8331474059342e+27, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT}, 
 }
 qmxg = { {["value"] = 90, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}, } 
 xqmnb(qmnb)
  gg.setRanges(32)
local tb1 = {{tonumber("29806"),tonumber("-140")}, {tonumber("7630437"),tonumber("-100")}, {tonumber("1633907556"),tonumber("-76")}, {tonumber("7632240"),tonumber("0")}, } 	
local tb2 = {{tonumber("1936942449"),tonumber("0")}, } 	
local dataType = 4
 SearchWrite(tb1,tb2, dataType)
 gg.setRanges(8) 
local tb1 = {{tonumber("-2.3805679e21"),tonumber("-4")}, {tonumber("-1.3620439e28"),tonumber("0")}, {tonumber("-6.1689952e26"),tonumber("64")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("🎃OK呀，开启成功🎃")
end






--————————————上色区域————————————




function SSQ()
menu1 = gg.multiChoice({
"🎃1.灰色天空🎃",
"🎃2.完美上色🎃",
"🎃3.钛合金色🎃",
"🎃4.清爽战场🎃",
"🎃5.去除太阳🎃",
"🎃6.翡翠天空🎃",
"🎃7.返回主页🎃"},
nil,"🎃北念提示:训练营里开启🎃\n🎃骁龙理论通用🎃\n🎃完美上色可以修复吉利服不透🎃\n🎃完美上色持枪开启会给武器上色🎃\n🎃不想给武器上色不拿枪开启🎃")
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b5() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b2() end
if menu1[6] == true then b6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end


function b1()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1194330629;8192;119,330632;277872645", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("🎃开启成功🎃")
end
--纯黑
--9.7635471e-41;5.5681716e-40;9.7641076e-41;4.7223665e21
--4.7223665e21

function b2()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("277872645;1081084421;0;256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1081084421", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("🎃开启成功🎃")
end



function b3()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("281,153,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("60", gg.TYPE_DWORD)
  gg.toast("🎃开启成功🎃")
end

function b4()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("671236106;1074790414;8,200;1194363663", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("671236106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("🎃开启成功🎃")
end






--黑色天卡:720,901;671,236,105;1,669,562,379;8,200
--8200D值:536,887,322;1,670,119,449;289,476,651;8,200

function b5()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("281,153,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("60", gg.TYPE_DWORD)
  gg.toast("🎃50%🎃")
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,669,466,626", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("60", gg.TYPE_DWORD)
  gg.toast("🎃100%🎃")
  gg.toast("🎃开启，成功祝您旅途愉快🎃")
end


function b6()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1669496843;671236105;1074790413;720903", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("671236105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("🎃开启成功🎃")
end













--————以下是特效美化代码————————











function BTQ()
menu1 = gg.multiChoice({
"🎃1.打鸟瞬击  🎃",
"🎃2.s12k聚点 🎃",
"🎃3.步枪射速  🎃",
"🎃4.加速增伤  🎃",
"🎃5.秒开背景  🎃",
"🎃6.红点倍数  🎃",
"🎃7.步枪增伤  🎃",
"🎃8.范围拾取  🎃",
"🎃9.视角超大  🎃",
"🎃10.团队套装🎃",
"🎃11.穿墙打车🎃",
"🎃12.S1897聚 🎃",
"🎃13.S686聚点🎃",
"🎃14.微高跳🎃",
"🎃15.返回主页🎃"},
nil,"🎃北念完美内存处理🎃\n🎃所有功能一起开也不会有内存相撞🎃\n🎃自杀高跳开启之后关不掉会导致加速拉回🎃")
if menu1 == nil then else
if menu1[1] == true then qxsj() end
if menu1[2] == true then s12k() end
if menu1[3] == true then bwss() end
if menu1[4] == true then bqsh() end
if menu1[5] == true then mkbj() end
if menu1[6] == true then hdbs() end
if menu1[7] == true then bqzs() end
if menu1[8] == true then fwsq() end
if menu1[9] == true then sjkd() end
if menu1[10] == true then tdtz() end
if menu1[11] == true then zdqc() end
if menu1[12] == true then s1897() end
if menu1[13] == true then s686() end
if menu1[14] == true then xdt() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end





function qxsj()
 gg.clearResults()
gg.setRanges(8)
local dataType = 16
local tb1 = {{-1.427811e28, 0}, {1.8175359e-27, -8}, {6.1630956e-33, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("🎃开启成功🎃")
end

function tdtz()
 gg.setRanges(8)
  SearchWrite({
    {
      tonumber("6.1630904e-33"),
      tonumber("-4")
    },
    {
      tonumber("-9.9839328e27"),
      tonumber("4")
    },
    {
      tonumber("-1.0070975e28"),
      tonumber("16")
    }
  }, {
    {
      tonumber("0"),
      tonumber("0")
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("60000"),
      tonumber("-100")
    },
    {
      tonumber("4.2038954e-42"),
      tonumber("268")
    },
    {
      tonumber("4.2038954e-42"),
      tonumber("272")
    },
    {
      tonumber("4.4995694e-41"),
      tonumber("328")
    }
  }, {
    {
      tonumber("5"),
      tonumber("0")
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("-980"),
      tonumber("-364")
    },
    {
      tonumber("800000"),
      tonumber("-308")
    },
    {
      tonumber("1.4125089e-40"),
      tonumber("80")
    }
  }, {
    {
      tonumber("1.2"),
      tonumber("0")
    },
    {
      tonumber("1.2"),
      tonumber("4")
    },
    {
      tonumber("1.2"),
      tonumber("8")
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("5.6823967e-32"),
      tonumber("-184")
    },
    {
      tonumber("0.57357645035"),
      tonumber("12")
    },
    {
      tonumber("60000"),
      tonumber("68")
    }
  }, {
    {
      tonumber("2500"),
      tonumber("0")
    }
  }, 16)
gg.toast("🎃团队套装开启成功🎃")
end

function s12k()
   gg.alert("🎃请卸掉枪口🎃")
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.79999995232;1.79999995232;4;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("35000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("300000", gg.TYPE_FLOAT)
  gg.toast("🎃S12K聚点开启成功🎃")
end





function bqss()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000292", gg.TYPE_FLOAT)
  gg.toast("🎃M4射速开启成功🎃")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000083", gg.TYPE_FLOAT)
  gg.toast("🎃Scar射速开启成功🎃")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.00100000005", gg.TYPE_FLOAT)
  gg.toast("🎃AK射速开启成功🎃")
end


  
  

function bqsh()
 gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("25%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("50%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("100%")
end
    
function mkbj()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.37999999523,0xEAE0}, {6.16031837463, 0xEAD4},{6.1603140831,0xEACC}, }
    local tb2 = {{0, 0xEAE0},}
    SearchWrite(tb1, tb2, dataType)
  gg.toast("🎃秒开倍镜已开启🎃")
end


function hdbs()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{55,0x284C}, {-2.7864239e-12, 0x2840},{-2.7863753e-12,0x2830}, }
    local tb2 = {{20, 0x284C},}
    SearchWrite(tb1, tb2, dataType)
    gg.toast("🎃红点倍镜修改成功🎃")
end


function bqzs()
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
    
function fwsq()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{200,0x7D40}, {7.5279292e-24, 0x7D04}, }
    local tb2 = {{300, 0x7D40},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("🎃范围拾取开启成功🎃")
end

function sjkd()
 gg.setRanges(32) 
local tb1 = {{tonumber("3.3579315e-41"),tonumber("-136")}, {tonumber("3.6025982e-41"),tonumber("-128")}, } 	
local tb2 = {{tonumber("2500"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("🎃扩大成功🎃")
end

function s1897()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4.2038954e-45;12.0;18.0;3.5;1.1509145e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12.0;18.0;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.39999997616;1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("🎃S1897聚点🎃")
end

function s686()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4.2038954e-45;12.0;18.0;3.5;1.1509145e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12.0;18.0;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.39999997616;1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("🎃S686聚点🎃")
end
--小地图放大:2.3822074e-44;-2,306,719.0;-1.1585784e-13;635.91766357422

function xdt()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("843", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("🎃微高跳以开启🎃")
end


-----------------------以下是加速区域----------——————————————











function js()
menu1 = gg.multiChoice({
"🎃1--团队加速开启🎃",
"🎃2--团队加速关闭🎃",
"🎃3--新版极速加速🎃",
"🎃4--关闭新版加速🎃",
"🎃5--全局不拉加速🎃",
"🎃6--关闭全局不拉🎃",
"🎃7--武器伤害修复🎃",
"🎃8--新加速下飞机🎃",
"🎃----返回上一页---🎃"},
nil,"🎃特别提示:加速在游戏里开就可以🎃\n🎃雨林也可以用后期拉回关掉就行🎃")

if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function j1()
 gg.setRanges(8)
    SearchWrite({
      {-1.0530367E28, -12},
      {-5.8454586E27, -8},
      {-2.7860151E28, 0},
      {-3.7444097E28, 4},
      {-2.793752E28, 296}
    }, {
      {0, 0},
      {0, 4},
      {0, 296}
    }, 16)
    gg.setRanges(8)
    SearchWrite({
      {6.1630904E-33, -4},
      {-9.9839328E27, 4},
      {-1.0070975E28, 16}
    }, {
      {0, 0}
    }, 16)
gg.setRanges(32)
    SearchWrite({
      {-980, -296},
      {800000, -240},
      {1.4125089E-40, 60}
    }, {
      {1.96, -20},
      {1.96, -16},
      {1.96, -12}
    }, 16)
    gg.setRanges(8)
    SearchWrite({
      {-36028732594454528, -276},
      {0.00999999978, 76}
    }, {
      {10.19, 0}
    }, 16)
gg.toast("🎃团队加速开启成功🎃")
end 

function j2()
 gg.setRanges(8)
    SearchWrite({
      {-1.0530367E28, -12},
      {-5.8454586E27, -8},
      {0, 0},
      {0, 4},
      {0, 296}
    }, {
      {
        -2.7860151E28,
        0,
        0
      },
      {-3.7444097E28, 4},
      {-2.793752E28, 296}
    }, 16)
    gg.setRanges(8)
    SearchWrite({
      {6.1630904E-33, -4},
      {-9.9839328E27, 4},
      {-1.0070975E28, 16}
    }, {
      {-6.1526231E27, 0}
    }, 16)
    gg.setRanges(8)
    SearchWrite({
      {-36028732594454528, -276},
      {0.00999999978, 76}
    }, {
      {10.90734863281, 0}
    }, 16)
    gg.setRanges(32)
    SearchWrite({
      {-980, -296},
      {800000, -240},
      {1.4125089E-40, 60}
    }, {
      {1, -20},
      {1, -16},
      {1, -12}
    }, 16)
gg.toast("🎃关闭成功🎃")
end


 function j3()
 gg.setRanges(8) 
local tb1 = {{ ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-1.0070975e28"), ("16")}, } 	
local tb2 = {{ ("0"),  ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{ ("-1.0530367e28"), ("-12")}, { ("-5.8454586e27"), ("-8")}, { ("-2.7860151e28"), ("0")}, { ("-3.7444097e28"), ("4")}, { ("-2.793752e28"), ("296")}, } 	
local tb2 = {{ ("0"), ("0")}, { ("0"), ("4")}, { ("0"), ("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("1.2"),  ("0")}, { ("1.2"), ("4")}, { ("1.2"), ("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("3600000000"), ("80")}, { ("2500000000"), ("88")} } 	
local tb2 = {{ ("1100"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.0005, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
    local tb2 = {{0.025, 0xF904},}--0.00050000002;1.20000004768;1.4012985e-45;0.10000000149
    SearchWrite(tb1, tb2, dataType)
    gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("479.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.clearResults()
 gg.toast("🎃稳定加速🎃")
end


function j4()
 gg.setRanges(8) 
local tb1 = {{ ("6.1630904e-33"), ("-4")}, { ("-9.9839328e27"), ("4")}, { ("-1.0070975e28"), ("16")}, } 	
local tb2 = {{ ("-6.1526231e27"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{ ("-1.0530367e28"), ("-12")}, { ("-5.8454586e27"), ("-8")}, { ("0"), ("0")}, { ("0"), ("4")}, { ("0"), ("296")}, } 	
local tb2 = {{ ("-2.7860151e28"), ("0")}, { ("-3.7444097e28"), ("4")}, { ("-2.793752e28"), ("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{ ("-980"), ("-364")}, { ("800000"), ("-308")}, { ("1.4125089e-40"), ("80")}, } 	
local tb2 = {{ ("1"),  ("0")}, { ("1"), ("4")}, { ("1"), ("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
  gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.025, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
    local tb2 = {{0.0005, 0xF904},}--0.00050000002;1.20000004768;1.4012985e-45;0.10000000149
    SearchWrite(tb1, tb2, dataType)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
 gg.toast("🎃关闭成功🎃")
end





function j5()
 gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.setRanges(32)
gg.toast("🎃开启成功🎃")
end




function j6()
 gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
  gg.toast("🎃关闭成功🎃")
end


function j7()
 gg.toast("")
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

Name = "AKM，大盘鸡伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{71500, 0},

}
local modify = {{350000, 0},}
SearchWrite(search,modify,dataType)

Name = "M716伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{68000, 0},

}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
end



function j8()
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
gg.toast("开启成功")
end
end
end
end
end








----------------------以下是范围去域代码-----------------------------










function E()
menu1 = gg.multiChoice({
"🎃头部大范围 [持枪]🎃",
"🎃打鸟大范围 [持枪]🎃",
"🎃诸神级范围 [持枪]🎃",
"🎃800倍头部 [头部]🎃",
"🎃---------返回上一页----------🎃"},
nil,"🎃训练营持枪开启🎃\n🎃开一次就可以🎃\n🎃本人力推诸神级大范围我常用🎃\n🎃这三范围一起开后果自己脑补🎃")
if menu1 == nil then else 
if menu1[1] == true then fw1() end
if menu1[2] == true then fw2() end
if menu1[3] == true then fw3() end
if menu1[4] == true then fw4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end

function fw1()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{25, 0x678C}, {0.00009203507, 0x6868},{-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{260, 0x686C,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{30.5, 0x6880}, {0.00009203507, 0x6868}, {-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{260, 0x6880, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{16, 0x9EF8}, {-92.2311706543, 0x9EF4}, {-86.45767974854, 0x9EF0},{-2.92052054405, 0x9EEC},}
    local tb2 = {{120, 0x9EF8, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("🎃卡头部范围开启成功🎃")
end


function fw2()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{25, 0x678C}, {0.00009203507, 0x6868},{-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{699, 0x686C,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{30.5, 0x6880}, {0.00009203507, 0x6868}, {-1.31859207153, 0x6864},{9.20161819458, 0x6860},}
    local tb2 = {{699, 0x6880, false},} 
    SearchWrite(tb1, tb2, dataType)
gg.toast("🎃北念独家打鸟669头部范围已开启🎃")
end


function fw3()
 gg.toast("")
Fxs({{23,0,16},{25,4,16},{30.5,8,16},},{{-430,0,16},{430,4,16},{430,8,16},},32,"🎃20%🎃")
gg.clearResults()
Fxs({{10,0,16},{35,24,16},{33,28,16},{69.5,32,16},},{{-430,0,16},{-430,24,16},{-430,28,16},{-430,32,16},},32,"🎃30%🎃")
gg.clearResults()
Fxs({{40,0,16},{33,4,16},{69.5,8,16},},{{-430,0,16},{-430,4,16},{-430,8,16},},32,"🎃40%🎃")
gg.clearResults()
Fxs({{16,0,16},{26,4,16},},{{-430,0,16},{-430,4,16},},32,"🎃50%🎃")
gg.clearResults()
Fxs({{18,0,16},{28,4,16},},{{-430,0,16},{-430,4,16},},32,"🎃60%🎃")
gg.clearResults()
Fxs({{45,0,16},{15,-8,16},{30,-4,16},},{{-430,0,16},{-430,-8,16},{-430,-4,16},},32,"🎃70%🎃")
gg.clearResults()
Fxs({{8,0,16},{15,4,16},},{{-430,0,16},{-430,4,16},},32,"🎃80％🎃")
gg.clearResults()
Fxs({{18,0,16},{27.25,4,16},},{{-430,0,16},{-430,4,16},},32,"🎃90%🎃")
gg.clearResults()
Fxs({{18.38787841797,0,16},{0.53869867325,4,16},{-3.42231750488,8,16},},{{135,0,16},},32,"🎃100%🎃")
gg.setRanges(gg.REGION_C_BSS)
gg.toast("🎃诸神级范围开启成功🎃")
end


function fw4()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.10000000149F;64.50088500977F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("80",gg.TYPE_FLOAT)
gg.toast("🎃八百倍范围开启成功🎃")
end





--————————以下是路飞功能区代码————————————

function F()
menu1 = gg.multiChoice({
"🎃路飞(下蹲)🎃",
"🎃路飞(站立)🎃",
"🎃路飞(趴下)🎃",
"🎃路飞(左边)🎃",
"🎃返回上一页🎃"},
nil,"🎃路飞伤害以修复🎃")
if menu1 == nil then else
if menu1[1] == true then l1() end
if menu1[2] == true then l2() end
if menu1[3] == true then l3() end
if menu1[4] == true then l4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end
function l1()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{18.38787841797,0x5860}, {-0.01565527916, 0x5840}, {-0.00102636218, 0x583C},}
    local tb2 = {{160, 0x5860},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("🎃下蹲路飞已开启🎃")
end



function l2()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("160", gg.TYPE_FLOAT)
gg.toast("🎃站立路飞开启🎃")
end



function l3()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("18.38614463806;0.53446578979", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("160", gg.TYPE_FLOAT)
gg.toast("🎃趴下路飞开启🎃")
end



function l4()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614845276;0.53446006775;-3.4266242981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("160", gg.TYPE_FLOAT)
gg.toast("🎃左手路飞开启🎃")
end





--——————————以下是汽车区域代码-------








function G()
menu1 = gg.multiChoice({
"🎃1.吉普加速🎃",
"🎃2.加速恢复🎃",
"🎃3.吉普飞天🎃",
"🎃4.飞天恢复🎃",
"🎃5.轿车飞天🎃",
"🎃6.轿车恢复🎃",
"🎃7.汽车锁油🎃",
"🎃8.汽车秒刹🎃",
"🎃9.返回主页🎃"},
nil,"🎃BN国体最强辅助🎃")
if menu1 == nil then else 
if menu1[1] == true then qc1() end
if menu1[2] == true then qc2() end
if menu1[3] == true then qc3() end
if menu1[4] == true then qc4() end
if menu1[5] == true then qc5() end
if menu1[6] == true then qc6() end
if menu1[7] == true then qc7() end
if menu1[8] == true then qc8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end

function qc1()
gg.alert("🎃注意被撞树和石头秒死🎃")
 gg.setRanges(32)
local tb1 = {{tonumber("0.76000005007"),tonumber("-12")}, {tonumber("0.96078431606"),tonumber("-8")}, {tonumber("1"),tonumber("-4")}, {tonumber("0.74509805441"),tonumber("0")}, } 
local tb2 = {{tonumber("88888"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("🎃开启成功🎃")
end
function qc2()
 gg.setRanges(32)
local tb1 = {{tonumber("0.76000005007"),tonumber("-12")}, {tonumber("0.96078431606"),tonumber("-8")}, {tonumber("1"),tonumber("-4")}, {tonumber("88888"),tonumber("0")}, } 
local tb2 = {{tonumber("0.74509805441"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("🎃以关闭🎃")
end
function qc3()
gg.alert("🎃如果动不了就关闭🎃")
 gg.setRanges(32) 
local tb1 = {{tonumber("45"),tonumber("0")}, {tonumber("15"),tonumber("4")}, {tonumber("20"),tonumber("8")}, {tonumber("2500"),tonumber("16")}, } 	
local tb2 = {{tonumber("500"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("🎃开启成功🎃")
end
function qc4()
 gg.setRanges(32) 
local tb1 = {{tonumber("500"),tonumber("0")}, {tonumber("15"),tonumber("4")}, {tonumber("20"),tonumber("8")}, {tonumber("2500"),tonumber("16")}, } 	
local tb2 = {{tonumber("45"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("🎃关闭成功🎃")
end
function qc5()
 gg.setRanges(32) 
local tb1 = {{tonumber("30"),tonumber("0")}, {tonumber("16"),tonumber("4")}, {tonumber("49"),tonumber("8")}, {tonumber("22050"),tonumber("12")}, } 	
local tb2 = {{tonumber("500"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function qc6()
 gg.setRanges(32) 
local tb1 = {{tonumber("500"),tonumber("0")}, {tonumber("16"),tonumber("4")}, {tonumber("49"),tonumber("8")}, {tonumber("22050"),tonumber("12")}, } 	
local tb2 = {{tonumber("30"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function qc7()
 gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("🎃汽车锁油🎃")
end

function qc8()  
 gg.toast("")
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "🎃全车秒刹车🎃"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end






---——————————以下是天线区域代码——————————


function T()
menu1 = gg.multiChoice({
"🎃1.头发天线 [全局]🎃",
"🎃2.盒子天线 [全局]🎃",
"🎃3.三级八倍 [全局]🎃",
"🎃4.消音天线 [单局]🎃",
"🎃5.快扩天线 [单局]🎃",
"🎃6.脖子天线 [单局]🎃",
"🎃7.人物地线 [单局]🎃",
"🎃8. 返回上一页  🎃"},
nil,"🎃特别提示:游戏里开启🎃\n🎃理论通用🎃")
if menu1 == nil then else
if menu1[1] == true then tx1() end
if menu1[2] == true then tx2() end
if menu1[3] == true then tx3() end
if menu1[4] == true then tx4() end
if menu1[5] == true then tx5() end
if menu1[6] == true then tx6() end
if menu1[7] == true then tx7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function tx1()
 gg.toast("")
qmnb = {
{["memory"] = 32},
{["name"] = "🎃50%🎃"},
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
{["name"] = "🎃100%🎃"},
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


function tx2()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(30)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("🎃盒子天线开启成功🎃")
end

function tx3()
 gg.setRanges(gg.REGION_VIDEO)
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
  gg.toast("🎃3级+8倍天线已开启🎃")
end

function tx4()
 gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.26353430748, 0xA068}, {-1.59971761703, 0xA058},{-2.26234126091, 0xA040},}
    local tb2 = {{99999, 0xA068,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{1.58135390282, 0xC0D4}, {1.56683290005, 0xC0D0}, {1.56683623791, 0xC0C4},}
    local tb2 = {{99999, 0xC0D4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("🎃消音器天线开启成功🎃")
end

function tx5()
 gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.28105437756, 0x917C}, {5.90920639038, 0x9178},{0.11737322807, 0x9174},}
    local tb2 = {{99999, 0x917C,},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("🎃步枪快扩天线已开启🎃")
end

function tx6()
gg.alert("🎃推荐训练营开🎃\n🎃脖子天线不漏人全局有效🎃")
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("🎃脖子天线已开启🎃")
end

function tx7()
  gg.alert("🎃推荐出生岛开启🎃\n🎃每局开一次🎃")
 gg.setRanges(32)
local tb1 = {{tonumber("-1.68741369247"),tonumber("0")}, {tonumber("0.33067199588"),tonumber("12")}, } 	
local tb2 = {{tonumber("-999999999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("🎃地线开启成功🎃")
end





----——————自瞄区域——————————







function zm()
menu1 = gg.multiChoice({
"🎃1-内存自瞄🎃",
"🎃2-关闭圆圈🎃",
"🎃3-隔墙效果🎃",
"🎃4-返回主页🎃"},
nil,"🎃新版内存自瞄🎃\n🎃训练营开就OK🎃\n🎃你没看错就这么简单🎃")
if menu1 == nil then else
if menu1[1] == true then zm1() end
if menu1[2] == true then zm2() end
if menu1[3] == true then zdcq() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function zm1()
local memory = 8
local array = {
{["lv"] = 2.6253291e-27, ["type"] = 16},
{["lv"] = 6.1629971e-33, ["offset"] = 4, ["type"] = 16},
{["lv"] = -4.5748159e22, ["offset"] = 8, ["type"] = 16},
{["lv"] = -9.156971e22, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, 2.6253293e-27,true)
end
gg.toast("30%")
else
gg.toast("开启失败")
end
local array = {
{["lv"] = -2.9522003e20, ["type"] = 16},
{["lv"] = -2.9525603e20, ["offset"] = 4, ["type"] = 16},
{["lv"] = -9.9065615e27, ["offset"] = 8, ["type"] = 16},
{["lv"] = -5.9029581e21, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +12, 16, -5.9029587e21,true)
end
gg.toast("50%")
else
gg.toast("开启失败")
end
local array = {
{["lv"] = -9.9839328e27, ["type"] = 16},
{["lv"] = -3.8685626e25, ["offset"] = 4, ["type"] = 16},
{["lv"] = -6.1549554e27, ["offset"] = 8, ["type"] = 16},
{["lv"] = -1.3697734e28, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, -9.9839906e27,true)
end
gg.toast("60%")
else
gg.toast("开启失败")
end
local array = {
{["lv"] = -3.6965549e20, ["type"] = 16},
{["lv"] = -8.7366122e22, ["offset"] = 4, ["type"] = 16},
{["lv"] = -3.8369228e21, ["offset"] = 8, ["type"] = 16},
{["lv"] = 5.8191335e-26, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, -3.6965553e20,true)
end
gg.toast("70%")
else
gg.toast("开启失败")
end
local array = {
{["lv"] = -3.8685626e25, ["type"] = 16},
{["lv"] = -6.1526668e27, ["offset"] = 4, ["type"] = 16},
{["lv"] = -1.2811952e23, ["offset"] = 8, ["type"] = 16},
{["lv"] = -1.1159009e28, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, -3.8685631e25,true)
end
gg.toast("80%")
else
gg.toast("开启失败")
end
local array = {
{["lv"] = 1.6615354e35, ["type"] = 16},
{["lv"] = -1.1221873e28, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.6615354e35, ["offset"] = 468, ["type"] = 16},
{["lv"] = -1.1221873e28, ["offset"] = 472, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, 1.6615352e35,true)
app.memorywrite(data[i] +468, 16, 1.6615352e35,true)
end
gg.toast("90%")
else
gg.toast("开启失败")
end
local array = {
{["lv"] = -8.3342498e22, ["type"] = 16},
{["lv"] = -1.3799359e28, ["offset"] = 12, ["type"] = 16},
{["lv"] = -1.2382423e28, ["offset"] = 32, ["type"] = 16},
{["lv"] = 1.6615354e35, ["offset"] = 56, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +56, 16, 1.6615352e35,true)
end
gg.toast("🎃内存自瞄以开启🎃")
else
gg.toast("开启失败")
end
end



function zm2()
local memory = 8
local array = {
{["lv"] = 2.6253293e-27, ["type"] = 16},
{["lv"] = 6.1629971e-33, ["offset"] = 4, ["type"] = 16},
{["lv"] = -4.5748159e22, ["offset"] = 8, ["type"] = 16},
{["lv"] = -9.156971e22, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, 2.6253291e-27,true)
end
gg.toast("🎃圈透关闭成功🎃")
else
gg.toast("🎃圈透关闭失败🎃")
end
end







--——————————整活区代码————————————









function zyzl()
menu1 = gg.multiChoice({
"🎃1.子弹穿墙🎃",
"🎃2.头盔变大🎃",
"🎃3.稳定飞天🎃",
"🎃4.毫米蚁人🎃",
"🎃5.下蹲飞天🎃",
"🎃6.开船遁地🎃",
"🎃7.直线升天🎃",
"🎃8.升天关闭🎃",
"🎃9.返回主页🎃"},
nil,"🎃特别提示:开多了会出现不好的现象🎃")
if menu1 == nil then else
if menu1[1] == true then zdcq() end
if menu1[2] == true then tkbd() end
if menu1[3] == true then wdft() end
if menu1[4] == true then hmyy() end
if menu1[5] == true then xdft() end
if menu1[6] == true then kcdd() end
if menu1[7] == true then stkq() end
if menu1[8] == true then stgb() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end


function zdcq()
gg.alert("🎃开启后自瞄跟子弹穿枪搭配可以隔墙自瞄🎃\n🎃开启后紧紧的贴着枪开镜或者扫射就可以打死人🎃\n🎃可以隔墙扫车🎃")
 gg.setRanges(gg.REGION_C_BSS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2, 0xB320}, {9.9999997e-10, 0xB2EC},{0.9986295104-12, 0xBEA8}, }
    local tb2 = {{0, 0xB320},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("🎃子弹穿墙开启🎃")
end


function tkbd()
 gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287;87.27782440186;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("4",gg.TYPE_FLOAT)
    gg.toast("🎃头盔变大开启🎃")
  end
  
  
function wdft()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.0064923e-45;4.2038954e-45;1.793662e-43;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("🎃人物踏空开启成功🎃")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("900", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.searchNumber("0.03E;0.6E;1.0E;0.5E::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DOUBLE)
  gg.clearResults()
  gg.searchNumber("1F;0.6;0.1;0.125F:55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.03E;0.6E;1.0E;0.5E::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.0001", gg.TYPE_DOUBLE)
  gg.toast("🎃人物稳定防摔开启成功🎃")
end

function hmyy()
gg.alert("🎃屏幕抖动属于正常现象🎃")
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_FLOAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("🎃蚁人开启成功🎃")
end

function xdft()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{60, 0x6464}, {2500000000.0, 0x6444},{-1.1767352e-17, 0x6428}, }
    local tb2 = {{-4000, 0x6464},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("🎃下蹲飞天开启🎃")
end

function kcdd()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.78125;200;200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("🎃开船上岸即可遁地🎃")
end

function stkq()
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
  gg.toast("🎃直线升天开启成功🎃")
end
function stgb()
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
  gg.toast("🎃关闭成功🎃")
  
end









--——————————————枪械美化区域————————————


function qxpf()
menu1 = gg.multiChoice({
"🎃  AK改赤橙  🎃",
"🎃  SC改狂怒  🎃",
"🎃  M4改樱花 🎃",
"🎃M16玫瑰精灵🎃",
"🎃UMP9改樱花🎃",
"🎃98K拼色美化🎃",
"🎃  AWM樱花 🎃",
"🎃返回上一页🎃"},
nil,"🎃特别提示:持枪开启🎃")
if menu1 == nil then else
if menu1[1] == true then AKCC() end
if menu1[2] == true then SCKN() end
if menu1[3] == true then M4YH() end
if menu1[4] == true then M16MGJL() end
if menu1[5] == true then P9YH() end
if menu1[6] == true then g8KPS() end
if menu1[7] == true then AWMYH() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function AKCC()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001001", gg.TYPE_DWORD)
gg.toast("🎃AK改赤橙成功🎃")
end

function SCKN()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003001", gg.TYPE_DWORD)
gg.toast("🎃SC改狂怒成功🎃")
end

function M4YH()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004001", gg.TYPE_DWORD)
gg.toast("🎃M416改樱花成功🎃")
end

function M16MGJL()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002004", gg.TYPE_DWORD)
gg.toast("🎃M16改玫瑰精灵成功🎃")
end

function P9YH()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102002003", gg.TYPE_DWORD)
gg.toast("🎃UP9改樱花成功🎃")
end

function g8KPS()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103001001", gg.TYPE_DWORD)
gg.toast("🎃98k拼色成功🎃")
end

function AWMYH()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300300;103003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103003001", gg.TYPE_DWORD)
gg.toast("🎃AWM改樱花成功🎃")
  end




---——————————说明书——————————





function sysm()
   gg.alert("🎃时间 " .. os.date("%H:%M🎃\n🎃日期:%m/%d🎃", curTime) .. "\n🎃BN国体辅助脚本\n国际体验服yyds🎃", "🎃返回功能主页🎃", "🎃功能使用方法🎃", "🎃脚本优势与负面优势🎃")
  if A == nil then
    Exit()
  else
    if A == 3 then
      ysls()
    end
    if A == 2 then
     fzsm()
    end
    if A == 1 then
      Main()
    end
    XGCK = -1
  end
end

function fzsm()
menu1 = gg.multiChoice({
"🎃全屏万米使用方法🎃",
"🎃散弹聚点的使用方法🎃",
"🎃透视没倍镜解决方法🎃",
"🎃返回上一页🎃"},
nil,"🎃北念提示:持枪开启🎃")
if menu1 == nil then else
if menu1[1] == true then jczm() end
if menu1[2] == true then jcsd() end
if menu1[3] == true then jcts() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


function jczm()
 gg.alert("🎃落地拿枪开一次换枪也开一次🎃\n🎃拥有了他你基本无敌🎃\n🎃开完自瞄把倍镜切换一下🎃")
  if A == nil then
    Exit()
  else
    if A == 1 then
      fzsm()
    end
    XGCK = -1
  end
end

function jcsd()
 gg.alert("🎃使用散弹聚点时🎃\n🎃需要把枪口配件卸掉🎃\n🎃要不然没效果🎃\n🎃拥有了他你是散弹的靓仔🎃")
  if A == nil then
    Exit()
  else
    if A == 1 then
      fzsm()
    end
    XGCK = -1
  end
end

function jcts()
 gg.alert("🎃透视没倍镜的方法解决很简单🎃\n🎃进训练营进去别碰屏幕🎃\n🎃直接开透视等他开完就好了🎃\n🎃你碰一下屏幕人物动一下或者🎃\n🎃点设置切换人称都不行🎃")
  if A == nil then
    Exit()
  else
    if A == 1 then
      fzsm()
    end
    XGCK = -1
  end
end

function ysls()
menu1 = gg.multiChoice({
"🎃全屏万米自瞄优势劣势🎃",
"🎃散弹聚点的使用方法🎃",
"🎃透视没倍镜解决方法🎃",
"🎃返回上一页🎃"},
nil,"🌹特别提示:持枪开启🎃")
if menu1 == nil then else
if menu1[1] == true then ylzm() end
if menu1[2] == true then jcsd() end
if menu1[3] == true then jcts() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


function jczm()
 gg.alert("🎃劣势在于落地拿枪开🎃\n🎃拥有了他你基本无敌🎃\n🎃开完自瞄把倍镜切换一下🎃")
  if A == nil then
    Exit()
  else
    if A == 1 then
      ysls()
    end
    XGCK = -1
  end
end

function jcsd()
 gg.alert("🎃使用散弹聚点时🎃\n🎃需要把枪口配件卸掉🎃\n🎃要不然没效果🎃\n🎃拥有了他你是散弹的靓仔🎃")
  if A == nil then
    Exit()
  else
    if A == 1 then
      ysls()
    end
    XGCK = -1
  end
end

function jcts()
 gg.alert("🎃透视没倍镜的方法解决很简单🎃\n🎃进训练营进去别碰屏幕🎃\n🎃🎃直接开透视等他开完就好了🎃\n🎃你碰一下屏幕人物动一下或者🎃\n🎃点设置切换人称都行🎃")
  if A == nil then
    Exit()
  else
    if A == 1 then
      ysls()
    end
    XGCK = -1
  end
end


------------------------------------------------------关闭区页码----------



function Exit()
gg.alert("🇨🇳BN俱乐部群QQ764187514，有更多问题还是进QQ群处理吧，反正我没有问题，这是为了更好给你们解决问题 🇨🇳")
  os.exit()
end


function HOME()
lw=1
Main()
end



cs = "♚【BNyyds】♚"
while(true)do
if gg.isVisible(true) then
GLWW=1
gg.setVisible(false)
end
gg.clearResults()
if GLWW==1 then
Main()
end
end



