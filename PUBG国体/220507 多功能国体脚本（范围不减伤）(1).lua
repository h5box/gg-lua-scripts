function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function readAdd(add)
  t=gg.getValues({[1]={address=add,flags=4}})
  add=string.format("%X",t[1].value)
  if (#add)==16 then add=add:sub(9,16) end
  if (#add)==1 then add=add.."0000000" else
    add=string.format("%d","0x"..add)
  end
  return add
end

function getAdd(so,offset,off1)
  add=gg.getRangesList(so)[1].start
  add=readAdd(add+offset)
  return add
end

function addListltems(address,flags,value,freeze,toast)
  t={}
  t[1]={}
  t[1].address=address
  t[1].flags=flags
  t[1].value=value
  t[1].freeze=freeze
  gg.addListItems(t)
  gg.toast("▓"..toast.."▓")
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
--↑配置文件↑
function str_table(strtable, strnum)--分割table
  if type(strtable) ~= "table" then
    return nil
  end
  local tabData = {}
  for i=1, #strtable/strnum do
    tabData[i] = {}
    local post = i*strnum
    for s=(post-(strnum-1)),post, 1 do
      table.insert(tabData[i],strtable[s])
    end
  end
  return tabData
end
function soAddress(so,memory)
  local soList = gg.getRangesList(so)
  if (#soList > 0) then
    local soTypes = {}
    for i,item in ipairs(soList) do
      if item.state == memory then
        table.insert(soTypes,"0x"..string.format("%08X",item['start']))
        table.insert(soTypes,"0x"..string.format("%08X",item['end']))
      end
    end
    return str_table(soTypes,2)
   else
    return {}
  end
end
function gg.searchSoNumber(so,memory,num,type)
  local t = {}
  local valueTable = gg.getListItems()
  local so_add = soAddress(so,memory)
  if (#so_add > 0) then
    for _,s in pairs(so_add) do
      gg.clearResults()
      gg.searchNumber(num, type, false, gg.SIGN_EQUAL, s[1], s[2])
      local count = gg.getResultCount()
      local result = gg.getResults(count)
      for i,v in pairs(result) do
        t[#t+1] = {}
        t[#t].address = v.address
        t[#t].flags = v.flags
      end
    end
    gg.loadResults(t)
   else
    gg.toast("牛马玩意不是国体")
  end
end
--网最强吃鸡进程识别系统☝
--↑配置文件↑
-----------------------------------------------------------------------------------------
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."🌹开启成功🌹"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."🌹开启成功🌹"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."🌹开启失败🌹", false)  return false  end  else  gg.toast("🌹开启失败🌹")  return false  end end  
gg.alert("加入电报:@qingqiunb")
e7sj="220"
function Main()
gg.setVisible(false)
FUN = gg.multiChoice({
"1:大厅防封",
"2:上色",
"3:骁龙内透",
"4.午后防抖聚点",
"5.范围(不减伤)",
"6.人物天线",
"7.超广角",
"8.20倍加速(开启)",
"9.20倍加速(关闭)",
"退出",
 }, nil, "加速蹲下不拉疾跑不拉回")
if FUN == nil then else
if FUN[1] == true then Fn1() end
if FUN[2] == true then Fn2() end
if FUN[3] == true then Fn3() end
if FUN[4] == true then Fn4() end
if FUN[5] == true then Fn5() end
if FUN[6] == true then Fn6() end
if FUN[7] == true then Fn7() end
if FUN[8] == true then Fn8() end
if FUN[9] == true then Fn9() end
if FUN[10] == true then Exit() end
end
XGCK = -1
end
-------------------------------------
function Fn1()
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",436207619,4)
gg.getResults(8000)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",436207650,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",436207679,4)
gg.getResults(200)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",436207636,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",60866562,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",60866570,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",329277440,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",436207641,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.clearResults()
gg.setRanges(16384)
gg.searchSoNumber("libtersafe.so","Xa",436207682,4)
gg.getResults(800)
gg.editAll("0", 4)
gg.alert("腾讯防开启成功")
end




function Fn2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("537,133,071;1,194,380,048;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4", gg.TYPE_DWORD)
gg.toast("彩色")
end

  
function Fn3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('3.76158192e-37;4.81460077e21;2.0:21',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('80',gg.TYPE_FLOAT)
gg.toast("马赛克")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('0.24022650719;0.69314718246;0.00999999978;2.0;-1,082,130,432D;1.12020327e-19;1.39125226e-19',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('80',gg.TYPE_FLOAT)
gg.toast("透视")
end

function Fn4()
Name = "无后" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
Name = "防抖" 
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-405405696, 0},{-499122175, 4},{-481296380, 8},}
local tb2 = {{0, 0},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0},{-2.8111605430681328E28, -12},{-1476732160.0, -8},{-3.7444097189855772E28, -4},{128.0, 4},}
local tb2 = {{0, 0},}
SearchWrite(tb1, tb2, dataType)
Name = "聚点" 
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0},{-1.238242388799446E28, -8},{-1.423933276633091E28, -4},{-1.8331474059341755E27, 4},{-7.160887698833495E24, 8},}
local tb2 = {{90, 0},}
SearchWrite(tb1, tb2, dataType)
end

function Fn5()
  gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{16.0, 4},{26, 8},}
local modify = {{450, 4},{-89999960, 8},}SearchWrite(search,modify,dataType,Name)
local dataType = 16
local search = {{-88.73961639404, 0},{28.0, 8},}
local modify = {{-99999960, 8},}SearchWrite(search,modify,dataType,Name)
local dataType = 16
local search = {{9.20161819458, 0},{25.0, 28},{30.5, 32}}
local modify = {{480, 28},{480, 32}}SearchWrite(search,modify,dataType,Name)
local dataType = 16
local search = {{150, 0},{85.0, 4},{45.0, 8},{-129, 12},{-85, 16},}
local modify = {{999999, 8},}SearchWrite(search,modify,dataType,Name)
local dataType = 16
local search = {{-86.45767974854, 0},{16.0, 8},{26, 12},}
local modify = {{450, 8},{-89999960, 12},}
SearchWrite(search,modify,dataType,Name)
end



function Fn6()
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
function Fn7()
gg.setRanges(16384)
  gg.setVisible(false)
  gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("360.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-1.4235595e-27;254.70928955078", gg.TYPE_FLOAT)
end

function Fn8()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(30) 
gg.editAll("4,525,216,907,473,673,257", gg.TYPE_QWORD) 
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1,328,550,408,728,725,571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(10) 
gg.editAll("-1,328,550,408,576,460,390", gg.TYPE_QWORD) 
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(699) 
gg.editAll("-1228926273126264269", gg.TYPE_QWORD)
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(699) 
gg.editAll("-1296744149264269342", gg.TYPE_QWORD) 
gg.toast("a普开启") 
end


function  Fn9()

gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("4,525,216,907,473,673,257", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(30) 
gg.editAll("4,525,216,907,414,147,695", gg.TYPE_QWORD) 
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1,328,550,408,576,460,390", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(10) 
gg.editAll("-1,328,550,408,728,725,571", gg.TYPE_QWORD) 
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1228926273126264269", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(699) 
gg.editAll("-1228926273201366461", gg.TYPE_QWORD) 
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1296744149264269342", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(699) 
gg.editAll("-1296744149883614555", gg.TYPE_QWORD) 
gg.toast("a普关闭") 
end


function Exit()
print()
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end

function yiyz()
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
end
yiyz()