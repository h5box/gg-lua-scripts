




local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
if (v.state == 'Xa') then
il2cppStart = v['start']
break
end
end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function xqmnb(Search,Modification)
gg.clearResults()
gg.setRanges(Search[1].memory)
gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
if gg.getResultCount()==0 then
gg.toast(Search[2].name..'开启失败')
return
end
local Result=gg.getResults(gg.getResultCount())
local sum
for index=4,#Search do
sum=0
for i=1,#Result do
if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
Result[i].Usable=true
sum=sum+1
end
end
if sum==#Result then
gg.toast(Search[2].name..'开启失败')
return
end
end
local Data,Freeze,Freezes={},{},0
sum=0
for index,value in ipairs(Modification)do
for index=1,#Result do
if not Result[index].Usable then
local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
if value.freeze then
Freeze[#Freeze+1]=Value
Freezes=Freezes+1
else
Data[#Data+1]=Value
end
sum=sum+1
end
end
end
gg.setValues(Data)
gg.addListItems(Freeze)
if Freezes==0 then
gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
else
gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
end
gg.clearResults()
end
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
if (v.state == 'Xa') then
il2cppStart = v['start']
break
end
end

DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
--
--
function nc_offset(addr, tablex, tt)
for i, v in ipairs(tablex) do
if v[4] == true then
gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
else
gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
end
end
gg.toast((tt or "") .. "开启成功")
end
function getso(So_name)
return gg.getRangesList(So_name)[1].start
end
function BaAdd(add)
t = gg.getValues({[1] = {address = add, flags = 4}})
return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
for i = 1, (#Item - 1) do
Add = BaAdd(Add + Item[i])
end
return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
local WY = {}
WY[1] = {}
WY[1].address = add
WY[1].value = value
WY[1].flags = falgs
if dj == true then
WY[1].freeze = true
gg.addListItems(WY)
else
gg.setValues(WY)
end
end
function getnc(Name, nc)
local t = gg.getRangesList(Name)
for i, v in ipairs(t) do
if v.state == nc then
return v.start
end
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
for k = 2, #Search do
local tmp = {}
local offset = Search[k][2] - base
local num = Search[k][1]
for i, v in ipairs(result) do
tmp[#tmp + 1] = {}
tmp[#tmp].address = v.address + offset
tmp[#tmp].flags = v.flags
end
tmp = gg.getValues(tmp)
for i, v in ipairs(tmp) do
if (tostring(v.value) ~= tostring(num)) then
result[i].isUseful = false
end
end
end
for i, v in ipairs(result) do
if (v.isUseful) then
data[#data + 1] = v.address
end
end
if (#data > 0) then
gg.toast("\n共修改" .. #data .. "条数据")
local t = {}
local base = Search[1][2]
for i = 1, #data do
for k, w in ipairs(Write) do
offset = w[2] - base
t[#t + 1] = {}
t[#t].address = data[i] + offset
t[#t].flags = Type
t[#t].value = w[1]
if (w[3] == true) then
local item = {}
item[#item + 1] = t[#t]
item[#item].freeze = true
gg.addListItems(item)
end
end
end
gg.setValues(t)
else
gg.toast("\n开启失败", false)
return false
end
else
gg.toast("\n开启失败")
return false
end
end
--
function split(szFullString, szSeparator)
local nFindStartIndex = 1
local nSplitIndex = 1
local nSplitArray = {}
while true do
local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
if not nFindLastIndex then
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
break
end
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
nFindStartIndex = nFindLastIndex + string.len(szSeparator)
nSplitIndex = nSplitIndex + 1
end
return nSplitArray
end
function xgxc(szpy, qmxg)
for x = 1, #(qmxg) do
xgpy = szpy + qmxg[x]["offset"]
xglx = qmxg[x]["type"]
xgsz = qmxg[x]["value"]
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
xgsl = xgsl + 1
end
end
function xqmnb(qmnb)
gg.clearResults()
gg.setRanges(qmnb[1]["memory"])
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(qmnb[2]["name"] .. "\n开启失败")
else
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(qmnb[2]["name"] .. "\n开启失败")
else
sl = gg.getResults(999999)
sz = gg.getResultCount()
xgsl = 0
if sz > 999999 then
sz = 999999
end
for i = 1, sz do
pdsz = true
for v = 4, #(qmnb) do
if pdsz == true then
pysz = {}
pysz[1] = {}
pysz[1].address = sl[i].address + qmnb[v]["offset"]
pysz[1].flags = qmnb[v]["type"]
szpy = gg.getValues(pysz)
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
szpd = split(pdpd, ";")
tzszpd = szpd[1]
pyszpd = szpd[2]
if tzszpd == pyszpd then
pdjg = true
pdsz = true
else
pdjg = false
pdsz = false
end
end
end
if pdjg == true then
szpy = sl[i].address
xgxc(szpy, qmxg)
xgjg = true
end
end
if xgjg == true then
gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
else
gg.toast(qmnb[2]["name"] .. "\n开启失败")
end
end
end
end
function readPointer(name, offset, i)
local re = gg.getRangesList(name)
local x64 = gg.getTargetInfo().x64
local va = {[true] = 32, [false] = 4}
if re[i or 1] then
local addr = re[i or 1].start + offset[1]
for i = 2, #offset do
addr = gg.getValues({{address = addr, flags = va[x64]}})
if not x64 then
addr[1].value = addr[1].value & 0xFFFFFFFF
end
addr = addr[1].value + offset[i]
end
return addr
end
end
gg.edits = function(addr, Table, name)
local Table1 = {{}, {}}
for k, v in ipairs(Table) do
local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
if v[4] then
Table1[2][#Table1[2] + 1] = value
else
Table1[1][#Table1[1] + 1] = value
end
end
gg.addListItems(Table1[2])
gg.setValues(Table1[1])
gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end
function Mswrite(search)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(search[1][3])
if type(search[1][4]) == "string" then
gg.searchAddress(search[1][4])
end
gg.searchNumber(search[1][1], search[1][2])
if gg.getResultsCount() == 0 then
return gg.toast("搜索失败")
else
local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for i = 2, #search do
local mtp = {}
for w, r in ipairs(result) do
mtp[#mtp + 1] = {address = r.address + search[i][2], flags = search[i][3]}
end
mtp = gg.getValues(mtp)
local hook = {}
for w, r in ipairs(mtp) do
if r.value == search[i][1] then
hook[#hook + 1] = result[w]
end
end
result = hook
end
gg.toast("共搜索到" .. #result .. "条数据")
return result
end
end
function SearchWrite(read, write)
gg.clearResults()
gg.setRanges(read["内存"])
gg.setVisible(false)
gg.searchNumber(read["主特征码"], read["类型"])
if gg.getResultCount() > 0 then
local Result = gg.getResults(gg.getResultCount())
gg.clearResults()
for i = 1, #read do
local t = {}
for e, v in ipairs(Result) do
t[#t + 1] = {address = v.address + read[i]["偏移"], flags = read[i]["类型"]}
end
t = gg.getValues(t)
for _a, x in ipairs(t) do
if x.value ~= read[i]["值"] then
Result[_a] = nil
end
end
local MS = {}
for i, v in pairs(Result) do
MS[#MS + 1] = Result[i]
end
Result = MS
end
if (#Result > 0) then
local data = {{}, {}}
for i, v in ipairs(Result) do
for a, x in ipairs(write) do
if x["冻结"] == true then
data[2][#data[2] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"], freeze = true}
else
data[1][#data[1] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"]}
end
end
end
gg.setValues(data[1])
gg.addListItems(data[2])
gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启成功,共搜索" .. #Result .. "条地址\n已修改" .. (#data[1] + #data[2]) .. "条数据")
else
gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改失败")
end
else
gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启失败,未搜索到数据")
end
end
function xqmnb(x)
local tp1 = {["内存"] = x[1]["memory"], ["主特征码"] = x[3]["value"], ["类型"] = x[3]["type"], ["name"] = x[2]["name"]}
for i = 4, #x do
tp1[#tp1 + 1] = {["值"] = x[i]["lv"], ["偏移"] = x[i].offset, ["类型"] = x[i].type}
end
local tp2 = {}
for i, v in ipairs(qmxg) do
tp2[#tp2 + 1] = {["值"] = v.value, ["类型"] = v.type, ["偏移"] = v.offset, ["冻结"] = (v.freeze or nil)}
end
SearchWrite(tp1, tp2)
end
function readValue(add, flags)
local t = gg.getValues({[1] = {address = add, flags = flags}})
return t[1].value
end
function readAdd(add)
local t = gg.getValues({[1] = {address = add, flags = 4}})
return t[1].value & 0xFFFFFFFF
end
--
function setvalue(add,lv,falg) gg.setValues({{address=add,flags=falg,value=lv}}) end
function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end
--
function fastsearch(search, write,we)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(search[1][3])
gg.searchNumber(search[1][1], search[1][2])
if gg.getResultsCount() == 0 then
if we~=nil then
gg.toast(we.." -> 主特征码不存在")
end
return false
else
local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for i = 2, #search do
local mtp = {}
for w, r in ipairs(result) do
mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
end
mtp = gg.getValues(mtp)
local hook = {}
for w, r in ipairs(mtp) do
if r.value == search[i][1] then
hook[#hook + 1] = result[w]
end
end
result = hook
end
if #result > 0 then
local tb = {{}, {}}
for i, v in ipairs(result) do
--- 遍历每个结果
for _, vv in ipairs(write) do
local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
if vv[4] then --- true 就是冻结
table.insert(tb[2], p)
else
table.insert(tb[1], p)
end
end
end
gg.addListItems(tb[2])
gg.setValues(tb[1])
if we~=nil then
gg.toast(we.." -> 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
end
else
if we~=nil then
gg.toast(we.." -> 开启失败")
end
end
end
end
--
function fastsearch(search, write)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(search[1][3])
gg.searchNumber(search[1][1], search[1][2])
if gg.getResultsCount() == 0 then
gg.toast("开启失败")
return false
else
local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for i = 2, #search do
local mtp = {}
for w, r in ipairs(result) do
mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
end
mtp = gg.getValues(mtp)
local hook = {}
for w, r in ipairs(mtp) do
if r.value == search[i][1] then
hook[#hook + 1] = result[w]
end
end
result = hook
end
if #result > 0 then
local tb = {{}, {}}
for i, v in ipairs(result) do
--- 遍历每个结果
for _, vv in ipairs(write) do
local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
if vv[4] then --- true 就是冻结
table.insert(tb[2], p)
else
table.insert(tb[1], p)
end
end
end
gg.addListItems(tb[2])
gg.setValues(tb[1])
gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
else
gg.toast("开启失败")
end
end
end
--
local function LongTao(Search, Write)
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
readPointer = function(name, offset, i)
local re=gg.getRangesList(name)
local x64=gg.getTargetInfo().x64
local va={[true]=32,[false]=4}
if re[i or 1] then
local addr=re[i or 1].start+offset[1]
for i = 2,#offset do
addr = gg.getValues({{address=addr,flags=va[x64]}})
if not x64 then
addr[1].value = addr[1].value & 0xFFFFFFFF
end
addr = addr[1].value + offset[i]
end
return addr
end
end
function gg.edits(addr, Table, name)
local Table1 = {{}, {}}
for k, v in ipairs(Table) do
local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
if v[4] then
Table1[2][#Table1[2]+1] = value
else
Table1[1][#Table1[1]+1] = value
end    
end
gg.addListItems(Table1[2])
gg.setValues(Table1[1])
gg.toast((name or "") .. "开启成功 [ 修改"..#Table.."个值 ] ")
end
--
function setvalue(address,value,flags) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
--
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
--
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function S_Pointer(t_So, t_Offset, _bit)
local function getRanges()
local ranges = {}
local t = gg.getRangesList('^/data/*.so*$')
for i, v in pairs(t) do
if v.type:sub(2, 2) == 'w' then
table.insert(ranges, v)
end
end
return ranges
end
local function Get_Address(N_So, Offset, ti_bit)
local ti = gg.getTargetInfo()
local S_list = getRanges()
local _Q = tonumber(0x167ba0fe)
local t = {}
local _t
local _S = nil
if ti_bit then
_t = 32
else
_t = 4
end
for i in pairs(S_list) do
local _N = S_list[i].internalName:gsub('^.*/', '')
if N_So[1] == _N and N_So[2] == S_list[i].state then
_S = S_list[i]
break
end
end
if _S then
t[#t + 1] = {}
t[#t].address = _S.start + Offset[1]
t[#t].flags = _t
if #Offset ~= 1 then
for i = 2, #Offset do
local S = gg.getValues(t)
t = {}
for _ in pairs(S) do
if not ti.x64 then
S[_].value = S[_].value & 0xFFFFFFFF
end
t[#t + 1] = {}
t[#t].address = S[_].value + Offset[i]
t[#t].flags = _t
end
end
end
_S = t[#t].address
end
return _S
end
local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
return _A
end
function fastsearch(search, write)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(search[1][3])
gg.searchNumber(search[1][1], search[1][2])
if gg.getResultsCount() == 0 then
gg.toast("Not Found")
return false
else
local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for i = 2, #search do
local mtp = {}
for w, r in ipairs(result) do
mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
end
mtp = gg.getValues(mtp)
local hook = {}
for w, r in ipairs(mtp) do
if r.value == search[i][1] then
hook[#hook + 1] = result[w]
end
end
result = hook
end
if #result > 0 then
local tb = {{}, {}}
for i, v in ipairs(result) do
--- 遍历每个结果
for _, vv in ipairs(write) do
local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
if vv[4] then --- true 就是冻结
table.insert(tb[2], p)
else
table.insert(tb[1], p)
end
end
end
gg.addListItems(tb[2])
gg.setValues(tb[1])
gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
else
gg.toast("Not Found")
end
end
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
--------------------------------------------------------------
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end
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
gg.toast("\n共修改"..#data.."条数据")
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
gg.toast("\n开启失败", false)
return false
end
else
gg.toast("\n开启失败")
return false
end
end
--
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
--
local function LongTao(Search, Write)
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

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
readPointer = function(name, offset, i)
  local re=gg.getRangesList(name)
  local x64=gg.getTargetInfo().x64
  local va={[true]=32,[false]=4}
  if re[i or 1] then
    local addr=re[i or 1].start+offset[1]
    for i = 2,#offset do
      addr = gg.getValues({{address=addr,flags=va[x64]}})
      if not x64 then
        addr[1].value = addr[1].value & 0xFFFFFFFF
      end
      addr = addr[1].value + offset[i]
    end
    return addr
  end
end

function gg.edits(addr, Table, name)
  local Table1 = {{}, {}}
  for k, v in ipairs(Table) do
    local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
    if v[4] then
      Table1[2][#Table1[2]+1] = value
    else
      Table1[1][#Table1[1]+1] = value
    end    
  end
  gg.addListItems(Table1[2])
  gg.setValues(Table1[1])
  gg.toast((name or "") .. "开启成功 [ 修改"..#Table.."个值 ] ")
end
-------------------------------------------------------------------------------------------------------------
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
-------------------------------------------------------------------------------------------------------------
--仿xs写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function BaAdd(add)
	t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
	for i = 1, (#Item - 1) do
		Add = BaAdd(Add + Item[i])
	end
	return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
	local WY = {}
	WY[1] = {}
	WY[1].address = add
	WY[1].value = value
	WY[1].flags = falgs
	if dj == true then
		WY[1].freeze = true
		gg.addListItems(WY)
	else
		gg.setValues(WY)
	end
end
function getnc(Name, nc)
	local t = gg.getRangesList(Name)
	for i, v in ipairs(t) do
		if v.state == nc then
			return v.start
		end
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

		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]

			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = v.flags
			end

			tmp = gg.getValues(tmp)

			for i, v in ipairs(tmp) do
				if (tostring(v.value) ~= tostring(num)) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end

		if (#data > 0) then
			gg.toast("\n共修改" .. #data .. "条数据")
			local t = {}
			local base = Search[1][2]
			for i = 1, #data do
				for k, w in ipairs(Write) do
					offset = w[2] - base
					t[#t + 1] = {}
					t[#t].address = data[i] + offset
					t[#t].flags = Type
					t[#t].value = w[1]

					if (w[3] == true) then
						local item = {}
						item[#item + 1] = t[#t]
						item[#item].freeze = true
						gg.addListItems(item)
					end

				end
			end
			gg.setValues(t)
		else
			gg.toast("\n开启失败", false)
			return false
		end
	else
		gg.toast("\n开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1]["memory"])
	gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2]["name"] .. "\n开启失败")
	else
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2]["name"] .. "\n开启失败")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(qmnb) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + qmnb[v]["offset"]
						pysz[1].flags = qmnb[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
			else
				gg.toast(qmnb[2]["name"] .. "\n开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
--偏移配置
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

gg.edits = function(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end

function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	if type(search[1][4]) == "string" then
		gg.searchAddress(search[1][4])
	end
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast("搜索失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = {address = r.address + search[i][2], flags = search[i][3]}
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		gg.toast("共搜索到" .. #result .. "条数据")
		return result
	end
end

function SearchWrite(read, write)
	gg.clearResults()
	gg.setRanges(read["内存"])
	gg.setVisible(false)
	gg.searchNumber(read["主特征码"], read["类型"])
	if gg.getResultCount() > 0 then
		local Result = gg.getResults(gg.getResultCount())
		gg.clearResults()
		for i = 1, #read do
			local t = {}
			for e, v in ipairs(Result) do
				t[#t + 1] = {address = v.address + read[i]["偏移"], flags = read[i]["类型"]}
			end
			t = gg.getValues(t)
			for _a, x in ipairs(t) do
				if x.value ~= read[i]["值"] then
					Result[_a] = nil
				end
			end
			local MS = {}
			for i, v in pairs(Result) do
				MS[#MS + 1] = Result[i]
			end
			Result = MS
		end
		if (#Result > 0) then
			local data = {{}, {}}
			for i, v in ipairs(Result) do
				for a, x in ipairs(write) do
					if x["冻结"] == true then
						data[2][#data[2] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"], freeze = true}
					else
						data[1][#data[1] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"]}
					end
				end
			end
			gg.setValues(data[1])
			gg.addListItems(data[2])
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启成功,共搜索" .. #Result .. "条地址\n已修改" .. (#data[1] + #data[2]) .. "条数据")
		else
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改失败")
		end
	else
		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启失败,未搜索到数据")
	end
end

function xqmnb(x)
	local tp1 = {["内存"] = x[1]["memory"], ["主特征码"] = x[3]["value"], ["类型"] = x[3]["type"], ["name"] = x[2]["name"]}
	for i = 4, #x do
		tp1[#tp1 + 1] = {["值"] = x[i]["lv"], ["偏移"] = x[i].offset, ["类型"] = x[i].type}
	end
	local tp2 = {}
	for i, v in ipairs(qmxg) do
		tp2[#tp2 + 1] = {["值"] = v.value, ["类型"] = v.type, ["偏移"] = v.offset, ["冻结"] = (v.freeze or nil)}
	end
	SearchWrite(tp1, tp2)
end

function readValue(add, flags)
	local t = gg.getValues({[1] = {address = add, flags = flags}})
	return t[1].value
end

function readAdd(add)
	local t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
-------------------------------------------------------------------------------------------------------------
function setvalue(add,lv,falg) gg.setValues({{address=add,flags=falg,value=lv}}) end
function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end
-------------------------------------------------------------------------------------------------------------
function fastsearch(search, write,we)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
	   if we~=nil then
		gg.toast(we.." -> 主特征码不存在")
	   end
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			if we~=nil then
			gg.toast(we.." -> 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
			end
		else
		    if we~=nil then
			gg.toast(we.." -> 开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
		else
			gg.toast("开启失败")
		end
	end
end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
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

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD E=gg.TYPE_DOUBLE F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
-------------------------------------------------------------------------------------------------------------
 function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
-------------------------------------------------------------------------------------------------------------
function X(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name.."\n".."开启成功") else gg.toast("提示:".."\n"..Name.."\n".."开启失败",false) return false end else gg.toast("提示:".."\n"..Name.."\n".."开启失败") return false end end
-------------------------------------------------------------------------------------------------------------

function Main()
  gg.toast("倒卖的司马")
  menu = gg.choice({
	 "🎉基质功能🎉",
	 "🎊武器进化🎊",
	 "😇特殊功能😇",
	 "👑美化功能👑",
	 "✨自调功能✨",
	 "🥱普通功能🥱",
	 "🌙秒赢功能🌙",
	 "🌕武器功能🌕",
	 "☀️游戏设置☀️",
	 "🌈男刀进化🌈",
	 "🪐buff功能🪐",
	 "⚡实体变身⚡",
	 "🌟逃生功能🌟",
	 "😍换卡功能😍",
	 "🇨🇳连发功能🇨🇳",
	 "🏜️️角色一区🏜️",
	 "🗼奥特曼区🗼",
	 "🗽变形金刚🗽",
	 "🤩普通变身🤩",
	 "🎈角色二区🎈",
	 "🌊全自调区🌊",
	 "🤤超级防封🤤",
	 "角 色 三 区",
	 "查 询 代 码",
	 "乱 斗 功 能",
	 "武 器 综 合",
	 "实 战 功 能",
	 "刷 钱 功 能",
	 "️😈退 出 脚 本😈️️",
}, nil, os.date("-----------小羽神辅助-----------\n目前版本:8.14.1 | 小羽神QQ2957285936\n最新版本:8.14.1 | 交流群746617738"))
if menu == 1 then sjskbs44jsbsj() end
if menu == 2 then xhlgnxhlxhl() end
if menu == 3 then GPTSTSGP() end
if menu == 4 then YSHSJVSHD() end
if menu == 5 then ZCfhxhxgxhc() end
if menu == 6 then Idhshvsjsvsbs() end
if menu == 7 then Hmygnmymy() end
if menu == 8 then Ggsjsbsjsvsjb() end
if menu == 9 then TShzkwhsusbs() end
if menu == 10 then ahsjvsjsbbbs() end
if menu == 11 then buffgngng() end
if menu == 12 then bsbsbsbs() end
if menu == 13 then a35sbsjdbsjsb() end
if menu == 14 then MTYUAN() end
if menu == 15 then VLFK12346S() end
if menu == 16 then JA1JAJA() end
if menu == 17 then shwkv1546vsbdheh() end
if menu == 18 then c30sgjsgshsvs() end
if menu == 19 then PTBSPTBS() end
if menu == 20 then JS2jsjsjsjsjs() end
if menu == 21 then opopopop123123() end
if menu == 22 then c12325jsksbsjsbs() end
if menu == 23 then Cbbbbsdghj17() end
if menu == 24 then Kshjsgjsvshwj() end
if menu == 25 then ldgnldjdhsjs() end
if menu == 26 then mswqzhwqzh() end
if menu == 27 then nmksjsjvsjsbss()end
if menu == 28 then a1shishsjwb3()end
if menu == 29 then Exit() end
XGCK=-1
end

function sjskbs44jsbsj()
SN = gg.multiChoice({
	 "无间隔   ---持火箭筒",
	 "无间隔   ---持水枪",
	 "无间隔   ---持一级能量剑",
	 "无间隔   ---持二级能量剑",
	 "无间隔   ---持三级能量剑",
	 "无间隔   ---持一级迫击炮",
	 "无间隔   ---持二级迫击炮",
	 "无间隔   ---持三级迫击炮",
	 "无间隔   ---持一级能量炮",
	 "无间隔   ---持一级幻锋镖",
	 "无间隔   ---持冲锋枪",
	 "无间隔   ---持一级蹦蹦枪",
	 "无间隔   ---持二级蹦蹦枪",
	 "无间隔   ---持三级蹦蹦枪",
	 "皮卡改无敌暴龙兽",
	 "无敌暴龙兽加速",
	 "无敌暴龙兽属性加强［用一次开］",
	 "无敌暴龙兽属性微加强［用一次开］",
	 "加强［修复］",
	 "微加强［修复］",
	 "能量炮全图范围",
	 "能量炮小范围",
	 "幻锋镖全图范围",
	 "时光机无敌效果",
	 "时光机无限时间",
	 "罗宁光线释放数量［用一次开］",
	 "罗宁激光无限时间",
	 "手雷全图范围",
	 "手雷全图范围［关］",
	 "手雷锁血",
	 "手雷无敌效果",
	 "肾上腺素锁血",
	 "肾上腺素无敌效果",
	 "肾上腺素持续暴走效果",
	 "返回主页",
}, nil, "基质功能")
if SN[1]==true then
	 HS299()
end
if SN[2]==true then
	 HS409()
end
if SN[3]==true then
	 HS300()
end
if SN[4]==true then
	 HS301()
end
if SN[5]==true then
	 HS302()
end
if SN[6]==true then
	 HS303()
end
if SN[7]==true then
	 HS304()
end
if SN[8]==true then
	 HS305()
end
if SN[9]==true then
	 HS329()
end
if SN[10]==true then
	 HS362()
end
if SN[11]==true then
	 HS308()
end
if SN[12]==true then
	 HS230()
end
if SN[13]==true then
	 HS306()
end
if SN[14]==true then
	 HS307()
end
if SN[15]==true then
	 HS399()
end
if SN[16]==true then
	 HS400()
end
if SN[17]==true then
	 HS397()
end
if SN[18]==true then
	 HS401()
end
if SN[19]==true then
	 HS404()
end
if SN[20]==true then
	 HS403()
end
if SN[21]==true then
	 HS434()
end
if SN[22]==true then
	 HS435()
end
if SN[23]==true then
	 HS363()
end
if SN[24]==true then
	 HS424()
end
if SN[25]==true then
	 HS425()
end
if SN[26]==true then
	 HS370()
end
if SN[27]==true then
	 HS369()
end
if SN[28]==true then
	 HS431()
end
if SN[29]==true then
	 HS436()
end
if SN[30]==true then
	 HS433()
end
if SN[31]==true then
	 HS432()
end
if SN[32]==true then
	 HS347()
end
if SN[33]==true then
	 HS348()
end
if SN[34]==true then
	 HS407()
end
if SN[42]==true then
	 HOME()
end
FX1=0
end

function HS299()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43F;1.0F;0F;1.0F;1.0F;3.0F;0.98000001907F;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持火箭筒")
	 gg.clearResults()
end

function HS409()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0.0;2.5;1.0;9.18354962e-41::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持水枪")
	 gg.clearResults()
end

function HS300()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;3;0.80000001192;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持一级能量剑")
	 gg.clearResults()
end

function HS301()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;2.75;0.80000001192;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持二级能量剑")
	 gg.clearResults()
end

function HS302()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;2.5;0.80000001192;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持三级能量剑")
	 gg.clearResults()
end

function HS303()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;2.5;1.1;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持一级迫击炮")
	 gg.clearResults()
end

function HS304()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;1.85;1.1;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持二级迫击炮")
	 gg.clearResults()
end

function HS305()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;1.2;1.1;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持三级迫击炮")
	 gg.clearResults()
end

function HS329()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1;0.0;0.5;0.30000001192;3.0;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持一级能量炮")
	 gg.clearResults()
end

function HS362()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0.0;0.80000001192;0.10000000149;3.0;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持一级幻锋镖")
	 gg.clearResults()
end

function HS308()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;2.5;1.1;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持冲锋枪")
	 gg.clearResults()
end

function HS230()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;0.5;0.3;3;0.8;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("减少间隔   ---持一级蹦蹦枪")
	 gg.clearResults()
end

function HS306()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;0.5;0.3;2.5;0.8;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持二级蹦蹦枪")
	 gg.clearResults()
end

function HS307()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;0.5;0.3;2;0.8;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("无间隔   ---持三级蹦蹦枪")
	 gg.clearResults()
end

function HS399()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500,002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500,002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70,500,014", gg.TYPE_DWORD)
	 gg.toast("皮卡改无敌暴龙兽")
	 gg.clearResults()
end

function HS400()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.5;15.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("无敌暴龙兽加速")
	 gg.clearResults()
end

function HS397()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.0;1.38728548e-43;3.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001;98.0", gg.TYPE_FLOAT)
	 gg.toast("无敌暴龙兽属性加强［用一次开］")
	 gg.clearResults()
end

function HS401()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.0;1.38728548e-43;3.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001;5.5", gg.TYPE_FLOAT)
	 gg.toast("无敌暴龙兽属性微加强［用一次开］")
	 gg.clearResults()
end

function HS404()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("98.0;1.38728548e-43;0.001::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("98.0;0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001;98.0", gg.TYPE_FLOAT)
	 gg.toast("加强［修复］")
	 gg.clearResults()
end

function HS403()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.5;1.38728548e-43;0.001::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5.5;0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001;5.5", gg.TYPE_FLOAT)
	 gg.toast("微加强［修复］")
	 gg.clearResults()
end

function HS434()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.0;1.0;8.0;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1500", gg.TYPE_FLOAT)
	 gg.toast("能量炮全图范围")
	 gg.clearResults()
end

function HS435()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5.0;1.0;8.0;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.toast("能量炮小范围")
	 gg.clearResults()
end

function HS363()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75;1.5;4.19999980927;1.70000004768;1.25;2.5;0.75;1.79999995232::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("450", gg.TYPE_FLOAT)
	 gg.toast("幻锋镖全图范围")
	 gg.clearResults()
end

function HS424()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,086,324,736;1,086,324,736;1,065,353,216;1,053,609,165;-1,098,907,648;1,058,642,330;1,092,616,192;256;1,036,831,949;547::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("时光机无敌效果")
	 gg.clearResults()
end

function HS425()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6.0;6.0;1.0;0.40000000596;-0.25;0.60000002384;10.0;3.58732407e-43;0.10000000149;5.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4500", gg.TYPE_FLOAT)
	 gg.toast("时光机无限时间")
	 gg.clearResults()
end

function HS370()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5F;3.0F;1D;1.70000004768F;3.5F;3.0F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 888}})
	 end
	 gg.toast("罗宁光线释放数量［用一次开］")
	 gg.clearResults()
end

function HS369()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;3.0;1.70000004768;3.5;3.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1500", gg.TYPE_FLOAT)
	 gg.toast("罗宁激光无限时间")
	 gg.clearResults()
end

function HS431()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.60133705e-43;-0.25;0.60000002384;0.80000001192;20.0;1,000.0;2.0;2.5;0.20000000298;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("870.542358841", gg.TYPE_FLOAT)
	 gg.toast("手雷全图范围")
	 gg.clearResults()
end

function HS436()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("870.542358841", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("870.542358841", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("手雷全图范围［关］")
	 gg.clearResults()
end

function HS433()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("257;-1,098,907,648;1,058,642,330;1,061,997,773;1,101,004,800;1,148,846,080;1,075,838,976;1,045,220,557;1,107,558,400;1,075,838,976::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,107,558,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("手雷锁血")
	 gg.clearResults()
end

function HS432()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("257;-1,098,907,648;1,058,642,330;1,061,997,773;1,101,004,800;1,148,846,080;1,075,838,976;1,045,220,557;105;1,075,838,976::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("手雷无敌效果")
	 gg.clearResults()
end

function HS347()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,052,266,988;1,053,609,165;-1,098,907,648;1,101,004,800;1,050,253,722;1,053,609,165;1,101,004,800;1,120,403,456::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,120,403,456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("这一针下去比泰森都牛逼")
	 gg.clearResults()
end

function HS348()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,052,266,988;1,053,609,165;-1,098,907,648;1,101,004,800;1,050,253,722;1,053,609,165;1,101,004,800;108::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("这一针下去比泰森都牛逼")
	 gg.clearResults()
end

function HS407()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,052,266,988;1,053,609,165;-1,098,907,648;1,101,004,800;1,050,253,722;1,053,609,165;1,101,004,800;108::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("111", gg.TYPE_DWORD)
	 gg.toast("这一针下去比泰森都牛逼")
	 gg.clearResults()
end

function xhlgnxhlxhl()
menu = gg.choice({
"小火力功能",
"无间隔[局内1]",
"无间隔[局内2]",
"无间隔[局内3]",
"子弹速度",
"无后锁子",
"迫击炮功能",
"能量炮功能",
"蹦蹦枪功能",
"迫击炮射程",
"迫击炮范围",
"腕炮射程",
"腕炮范围",
"能量剑距离",
"能量剑伤害",
"返回页面",
}, nil, "小羽神\n武器功能\n［部分功能失效]\n感谢您的谅解")
if menu == 1 then
MAin1() end
if menu == 2 then
WAN() end
if menu == 3 then
WAN1() end
if menu == 4 then
WAN6() end
if menu == 5 then
WAN2() end
if menu == 6 then
MAin2() end
if menu == 7 then
WAN3() end
if menu == 8 then
WAN4() end
if menu == 9 then
WAN5() end
if menu == 10 then
WAN7() end
if menu == 11 then
WAN8() end
if menu == 12 then
WAN9() end
if menu == 13 then
WAN10() end
if menu == 14 then
WAN11() end
if menu == 15 then
WAN12() end
if menu == 16 then
HOME() end
FX1 = 0
end


function WAN12()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("66F;240D;2.2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("66", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  xh = gg.prompt({
i = "能量剑伤害"
}, {i = "9999999999"})
  gg.editAll(xh.i, gg.TYPE_FLOAT)
  gg.toast("能量剑伤害开启成功")
  gg.clearResults()
end



function WAN10()
a=gg.prompt({"能量腕炮范围"},{[1]= 3})
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{a[1],4,16, false}})
gg.toast("能量腕炮范围修改为"..a[1])
end

function WAN11()
a=gg.prompt({"能量剑距离"})
fastsearch({{1115947008, 32, 32}, {240, 0x8, 4}, {1135869952, 0x14, 4},}, {{a[1], 0x30, 16, false}})
end

function WAN9()
local xt=gg.prompt({"腕炮射程"}, {[1] = 100})
xtnb({{false,0.20000000298023224,12,16,nil,nil},{5.0,24,16},{0.009999999776482582,40,16},{0.009999999776482582,44,16},{0.009999999776482582,48,16}},{{xt[1],0,16,false}},16,32,"腕炮射程")
end


function WAN8()
xh=gg.prompt({"输入想要的范围"},{[1]=""})
fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{xh[1], -36, 16, false}},"迫击炮范围")
end


function WAN7()
xh=gg.prompt({"输入想要的射程"},{[1]="25"})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{xh[1], -4, 16, false}},"迫击炮射程")
end


function WAN6()
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end


function WAN5()
SW="蹦蹦枪功能"
xh=gg.prompt({"输入想要的范围","输入想要的射程","输入想要的连发"},{[1]=""},{[2]=""},{[3]=""})
readWrite({{false,0.05999999865889549,4,16,nil,nil},{0.009999999776482582,16,16}},{{xt[1],0,16}},16,32,"蹦蹦枪")

xtnb({{false,-20.0,4,16,nil,nil},{0.800000011920929,12,16},{-0.4000000059604645,16,16},{2.5,20,16},{1.5,24,16}},{{xh[2],0,16,false}},16,32,"蹦蹦枪射程")

fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{xh[3], 8, 4, false}, {0, 24, 16, false}}) 

fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{xh[3], 8, 4, false}, {0, 24, 16, false}}) 

 fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{xh[3], 8, 4, false}, {0, 24, 16, false}}) 
end


function WAN4()
SW="能量炮功能"


xh=gg.prompt({"输入想要的范围","输入想要的射程","输入想要的连发"},{[1]=""},{[2]=""},{[3]=""})
if xh==nil then Aain3(print("你点了取消")) end
fastsearch({{4575657222492651520, 32, 32}, {8.0, 120, 16}, {999.0, 124, 16}, {2.0, 128, 16}, {0.800000011920929, 132, 16}}, {{xh[1], 4, 16, false}})

fastsearch({{4333543705419175690, 32, 32}, {1045220557, -28, 32}, {1084227584, -16, 32}, {1008981770, 4, 4}, {1036831949, 16, 4}}, {{xh[2], -40, 16, false}, {5, -16, 16, true}})

fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{xh[3], 8, 4, false}, {0, 24, 16, false}})
end



function WAN3()
SW="迫击炮功能"

xh= gg.prompt({"请输入您要修改的范围","请输入您要修改的射程","请输入您要修改的降落速度","请输入您要修改的连发"},{[1]="10"},{[2]=""},{[3]=""},{[4]=""},{[1]="txet"},{[2]="txet"},{[3]="txet"},{[4]="txet"})
 if xh==nil then Aain3(print("你点了取消")) end

fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{xh[1], -36, 16, false}})

fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{xh[2], -4, 16, false}})

fastsearch({
{1000.0,16,32},
{2.0,8,16},
{1.0,-12,16},
{2.5,12,16},
{0.20000000298023224,16,16},
{20.0,-4,16},
{0.8500000238418579,-8,16}
},{
{0,8,16,true},
{xh[3],-12,16,true}
})


fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{xh[4], 8, 4, false}, {0, 24, 16, false}})
end
function WAN2()
SW="子弹速度"
xh=gg.alert("子弹加速","开启","关闭","子弹穿墙")
if xh==1 then
fastsearch
({
{-352321541,4,16384},
{0,4,16},
},
{
{14.5,4,16,false}})
end

if xh==2 then
fastsearch
({{14.5,16,16384}},
{
{0,0,16,false}})
end 

if xh==3 then
fastsearch
({
{-442563748,4,16384},
{-382906384,-60,4},
{-390230032,-108,4}
},
{
{-516948194,-60,4,false}})
end
end


function WAN1()
    nc_offset(getso("libil2cpp.so"), {
      {
        -442564368,
        4,
        30268364
      }
    })
    nc_offset(getso("libil2cpp.so"), {
      {
        -516948194,
        4,
        30268368
      }
    })
end

function WAN()
function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

end


function Main3()
SW="返回主页"

Main0()
end

function MAin1()
SW="小火力功能"

UI = "E"
local menu = gg.multiChoice({
"武器间隔[局内]",
"武器射程[大厅]",
"武器射速[全局]",
"腕炮全屏[局内]",
"迫击范围[局内]",
"锁定子弹[全局]",
"武器无后[全局]",
"风镖范围[局内]",
"️返回主页️",
}, nil, "稳定武器功能")
if menu then
for i in pairs(menu) do
_ENV[({"F1","F2","F3","F4","F5","F6","F7","F8","Main3",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function F1()
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x209F44, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end


function F2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc26e60},})--武器射程
end

function F3()
nc_offset(getso("libil2cpp.so"),{{10,16,0x1bd0560},})
end     

function F4()
   fastsearch({
     {3.923635700109488E-43, 16, 32},
     {5.0, -88, 16},
   }, {
     {99999, -84, 16, false},
   },"腕炮全屏")
end

function F5()
gg.clearResults()
gg.alert("先打一炮再开")
fastsearch({{99.0, 16, 32}, {2.0, -36, 16}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{5, -36, 16, false}})
end

function F6()
  fastsearch({
     {64910848, 4, 16384},
     {64778592, -4, 4}, 
   }, {
    {-476053404, 4, 4, false},
    {-516948194, 8, 4, false},
   },"武器锁弹夹")
end

function F7()
nc_offset(getso("libil2cpp.so"),{{1,16,0x188896C},})
end     

function F8()
fastsearch({
{4.199999809265137,16,32},
{1.7000000476837158,4,16},
{1.25,8,16},
{2.5,12,16},
{1.5,-4,16},
{0.75,-8,16}
},{
{6.0,12,16},
{6.0,-4,16}
})
end


function MAin2()
SW="锁子弹"
xh=gg.alert("选择功能","无后","锁子","锁子无后")
if xh ==3 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1cddbcc},})
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})

if xh ==2 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1cddbcc},})
   end
 end
if xh ==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})
 end
end

function GPTSTSGP()
SN = gg.choice({
"修改货币",
"修改等级",
"修改段位",
"修改道具",
"修改角色",
"️返回上一页",
}, 2018, os.date("特殊功能"))
if SN == 2018 then else
if SN == 1 then xxs1() end
if SN == 2 then xxs2() end
if SN == 3 then xxs3() end
if SN == 4 then xxs4() end
if SN == 5 then xxs5() end
if SN == 6 then HOME() end
FX1=0 end
end

function xxs1()
local kj=gg.prompt({'银币','点券','钻石'})
if kj==nil then else
if kj[1]=='' or kj[2]=='' or kj [3]then end
TG(32,{{900001,0},{910001,4},{1,-8},},{{kj[1],-12,false},{kj[3],40,false},{kj[2],44,false},},4,"已修改为"..kj[1].."银币"..kj[2].."点券"..kj[3].."钻石")
end
end

function xxs2()
local xt=gg.prompt({"道具等级"}, {[1] = 13}, {[1] = "text"})
xtnb({{false,502000,0,4,nil,nil},{501900,4,4}},{{xt[1],56,4,false},{xt[1],60,4,false},{xt[1],64,4,false},{xt[1],68,4,false},{xt[1],72,4,false},{xt[1],76,4,false},{xt[1],80,4,false},{xt[1],84,4,false},{xt[1],88,4,false},{xt[1],92,4,false},{xt[1],96,4,false},{xt[1],100,4,false}},4,32,"修改等级")
end

function xxs3()
local SA=gg.prompt({"\n请输入需要修改的逃生段位"},{[1]=""})
xtnb({{false,900001,44,4,nil,nil},{910001,48,4},{0,52,4}},{{SA[1],0,4,false}},4,32,"逃生段位")
local SA=gg.prompt({"\n请输入需要修改的追捕段位"},{[1]=""})
xtnb({{false,900001,36,4,nil,nil},{910001,40,4},{0,44,4}},{{SA[1],0,4,false}},4,32,"追捕段位")end

function xxs4()
local fy=gg.prompt({"医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子"}, {[1] = 50}, {[1] = "1007"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱"},
{["value"] = 1007, ["type"] = 4},
{["lv"] = 37,["offset"] =0x4, ["type"] = 4},
{["lv"] = 3,["offset"] =-0x10, ["type"] = 4},
{["lv"] = 8,["offset"] =-0x18, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =-0x20, ["type"] = 4},
}
xqmnb(qmnb)
end

function xxs5()
a=gg.prompt({"BOSS10000 阿治2100 指绘师2000 机械之心1900 灵膳子1800 小骇客1700 命石者1600 小狮子1500 黎明盾卫1400 星辰圣女1300 影之忍者1200 水之忍者1100 小梦魇1000 小狐狸900艾可800 发明家700 魔术师600 机器人500 小学妹400 女特工300 失忆者200 雇佣兵100 自行修改"},{[1]="" })
fastsearch({
{100,4,32},
{2,-4,4},
{0,-8,4},
{0,-12,4}
},
{{a[1],4,4,true}})
end

function Exit()
gg.playVideo("https://alimov2.a.kwimgs.com/upic/2023/02/06/19/BMjAyMzAyMDYxOTA5MjBfMjU1Mzg3Mjg5N185NTYyNTMwNTYzOV8yXzM=_b_B4665292e364a241b5357e9d11646d8a4.mp4?clientCacheKey=3x4zrx6iitix49m_b.mp4&tt=b&di=7925590b&bp=10000")
print("小羽神")
os.exit()
end

function YSHSJVSHD()
gg.toast('小羽神QQ2957285936')
SN = gg.choice({
"动作修改",
"变身道具",
"修改文字",
"全部星耀动作",
"迫击炮改皮肤",
"刀星耀皮肤",
"道具美化",
"满级皮肤",
"道具卡初始美化",
"道具卡风格美化",
"返回主页"
}, 2018, os.date("小羽神交流群746617738"))
if SN == 2018 then else
if SN == 1 then mepm1() end
if SN == 2 then mepm2() end
if SN == 3 then mepm3() end
if SN == 4 then mepm4() end
if SN == 5 then mepm5() end
if SN == 6 then mepm6() end
if SN == 7 then mepmm7() end
if SN == 8 then mepm8() end
if SN == 9 then mepm9() end
if SN == 10 then mepm10() end
if SN == 11 then HOME() end
FX1=0 end
end
function mepm9()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601211',gg.TYPE_DWORD)
gg.toast("疾跑美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500002',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600971',gg.TYPE_DWORD)
gg.toast("皮卡美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500003',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600251',gg.TYPE_DWORD)
gg.toast("侦查眼美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500004',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600906',gg.TYPE_DWORD)
gg.toast("手雷美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500005',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602006',gg.TYPE_DWORD)
gg.toast("医疗箱美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500006',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600116',gg.TYPE_DWORD)
gg.toast("跳高美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500007',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601981',gg.TYPE_DWORD)
gg.toast("生命护盾美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500008',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602026',gg.TYPE_DWORD)
gg.toast("阻挡美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650631',gg.TYPE_DWORD)
gg.toast("美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602126',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601691',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602106',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602021',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601776',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602011',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500900',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602111',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501000',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601676',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601696',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601836',gg.TYPE_DWORD)
gg.toast("开启成功")gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500010',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒1级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500011',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒2级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500012',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒3级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500021',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500022',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500030',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500031',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500032',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500041',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500042',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500050',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500051',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500052',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500060',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500061',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500062',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500070',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500071',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500072',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪3美化成功")
gg.toast("一键美化成功")
end
function mepm10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500002',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650071',gg.TYPE_DWORD)
gg.toast("皮卡风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500004',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650261',gg.TYPE_DWORD)
gg.toast("手雷风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500005',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650681',gg.TYPE_DWORD)
gg.toast("医疗箱风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500007',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650121',gg.TYPE_DWORD)
gg.toast("生命护盾风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500008',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650161',gg.TYPE_DWORD)
gg.toast("阻挡箱风格美花成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650461',gg.TYPE_DWORD)
gg.toast("巡逻犬风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650771',gg.TYPE_DWORD)
gg.toast("肾上腺素风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650281',gg.TYPE_DWORD)
gg.toast("酒桶风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650766',gg.TYPE_DWORD)
gg.toast("飞爪风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650211',gg.TYPE_DWORD)
gg.toast("传送门风格成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650081',gg.TYPE_DWORD)
gg.toast("自走球风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650441',gg.TYPE_DWORD)
gg.toast("毒液风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500900',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650171',gg.TYPE_DWORD)
gg.toast("滑板风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501000',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650141',gg.TYPE_DWORD)
gg.toast("魔法墙风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650051',gg.TYPE_DWORD)
gg.toast("引力场风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650651',gg.TYPE_DWORD)
gg.toast("治疗求风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650686',gg.TYPE_DWORD)
gg.toast("气垫风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650391',gg.TYPE_DWORD)
gg.toast("捣蛋风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650481',gg.TYPE_DWORD)
gg.toast("追踪雷风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650411',gg.TYPE_DWORD)
gg.toast("震荡波风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650776',gg.TYPE_DWORD)
gg.toast("飞机风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650561',gg.TYPE_DWORD)
gg.toast("时光机风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500010',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650756',gg.TYPE_DWORD)
gg.toast("火箭筒风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500011',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650756',gg.TYPE_DWORD)
gg.toast("火箭筒风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500012',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650756',gg.TYPE_DWORD)
gg.toast("火箭筒风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650761',gg.TYPE_DWORD)
gg.toast("破击炮风格美化1成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500021',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650761',gg.TYPE_DWORD)
gg.toast("破击炮风格美化2成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500022',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650761',gg.TYPE_DWORD)
gg.toast("破击炮风格美化3成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650401',gg.TYPE_DWORD)
gg.toast("能亮剑风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500041',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650401',gg.TYPE_DWORD)
gg.toast("能亮剑风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500042',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650401',gg.TYPE_DWORD)
gg.toast("能亮剑风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500050',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650616',gg.TYPE_DWORD)
gg.toast("蹦蹦枪风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500051',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650616',gg.TYPE_DWORD)
gg.toast("蹦蹦枪风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500052',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650616',gg.TYPE_DWORD)
gg.toast("蹦蹦枪风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500060',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650671',gg.TYPE_DWORD)
gg.toast("能量炮风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500061',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650671',gg.TYPE_DWORD)
gg.toast("能量炮风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500062',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650671',gg.TYPE_DWORD)
gg.toast("能量炮风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500070',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650741',gg.TYPE_DWORD)
gg.toast("霰弹枪风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500071',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650741',gg.TYPE_DWORD)
gg.toast("霰弹枪风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500072',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650741',gg.TYPE_DWORD)
gg.toast("霰弹枪风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500090',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650781',gg.TYPE_DWORD)
gg.toast("霸天夫风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500091',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650781',gg.TYPE_DWORD)
gg.toast("霸天夫风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500092',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650781',gg.TYPE_DWORD)
gg.toast("霸天夫风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650696',gg.TYPE_DWORD)
gg.toast("换风标风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502301',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650696',gg.TYPE_DWORD)
gg.toast("换风标风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502302',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650696',gg.TYPE_DWORD)
gg.toast("换风标风格3美化成功")
gg.toast("道具卡风格美化成功")
end

function mepm1()
_ENV["gg"]["clearResults"]()
_ENV["gg"]["setRanges"](32)
a = _ENV["gg"]["prompt"]({"旧版\n960001 雇佣兵·招手\n960011 失忆者·招手\n960021 女特工·招手\n960031 小学妹·招手\n960041 机器人·招手\n960051 魔术师·招手\n960061 雇佣兵·嘲讽\n960071 失忆者·嘲讽\n960081 女特工·嘲讽\n960091 小学妹·嘲讽\n960101 机器人·嘲讽\n960111 魔术师·嘲讽\n960121 雇佣兵·摆手舞\n960131 失忆者·恶搞舞\n960141 女特工·啦啦队舞\n960151 小学妹·扭扭舞\n960161 机器人·皮筋舞\n960171 魔术师·摇摆舞\n960181 雇佣兵·Hip Hop\n960191 失忆者·抓钱舞\n960201 女特工·猫步舞\n960211 小学妹·海草舞\n960221 机器人·机械舞\n960231 魔术师·膜拜之舞\n960241 雇佣兵·打篮球\n960251 失忆者·打篮球\n960261 雇佣兵·篮球之舞\n960271 失忆者·篮球之舞\n960281 战斗少女·招手\n960291 战斗少女·Girls\n960301 雇佣兵·捧蛋糕\n960311 失忆者·捧蛋糕\n96032 女特工·捧蛋糕\n960331 小学妹·捧蛋糕\n960341 机器人·捧蛋糕\n960351 魔术师·捧蛋糕\n960371 战斗少女·捧蛋糕\n960381  战斗少女·比心\n960391  战斗少女·喵喵\n960401  战斗少女·甜心火花\n960411   雇佣兵·JOJO\n960421   失忆者·花式倒立\n960431   失忆者·侧滑拳击\n960441   雇佣兵·不屑\n960451   失忆者·滑步登场\n960461   雇佣兵·来打我呀\n960481   雇佣兵·独轮车\n960491   魔术师·招手\n960501   女特工·呼啦圈\n960511   小学妹·魔力弹弹球\n960521   机器人·眩晕杂技\n960531   魔术师·变羊术\n960541   战斗少女·魔力弹弹球\n960551   失忆者·闪耀登场\n960561   发明家·招手\n960571   雇佣兵·拜年\n960581   失忆者·拜年\n960591   女特工·拜年\n960601   小学妹·拜年\n960611   机器人·拜年\n960621   魔术师·拜年\n960631   发明家·拜年\n960641   战斗少女·拜年\n960651   发明家·野狼discD\n960661   发明家·摩登风暴\n960671   战斗少女·少女爵士\n960681   雇佣兵·摇滚贝斯\n960691   失忆者·应援boy\n960701   女特工·演唱女王\n960711   小学妹·应援girl\n960721   机器人·电音摇摆\n960731   发明家·我为歌狂\n960741   战斗少女·打碟少女\n\n失忆\n960551闪耀登场\n962901终极赛罗闪耀变身\n962881赛罗变身\n961881关起来\n963981俺老孙来也\n960551闪耀登场\n960921来口西瓜\n962331怪兽出没\n961041贵族风度\n\n追捕\n960931冲浪达人\n961481剑来\n961941海上豪杰\n962931贝利亚变身\n962941帝斯修姆光线\n962961极恶爆裂\n\n狮子\n962711健康达人\n962691招手\n963391到站了\n962701俯卧撑\n\n忍者\n打招呼961701\n能量聚集962321\n泽塔蒂姆光线963851\n泽塔头镖963801\n泽塔变身963841\n摇摆水忍963681\n替身甜筒961781\n被偷袭了962811\n\n梦魇\n打招呼961301\n新春快乐961581\n吵死了961641\n泡泡周年962071\n月兔奔月962491\n愿者上钩962681\n玩泡泡962061", "↑修改前\n↓修改后"}, {"", ""}, {"text", "text"})
if a == nil then
_ENV["gg"]["alert"]("有数值为空")
end
if a[1] == nil then
_ENV["gg"]["alert"]("有数值为空")
end
if a[2] == nil then
_ENV["gg"]["alert"]("有数值为空")
end
_ENV["gg"]["searchNumber"](a[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
b = _ENV["gg"]["getResultCount"]()
_ENV["gg"]["getResults"](b)
_ENV["gg"]["editAll"](a[2], gg.TYPE_DWORD)
end
function mepm2()
_ENV["gg"]["clearResults"]()
	_ENV["gg"]["setRanges"](32)
	a = _ENV["gg"]["prompt"]({"长椅100\n床101\n箱子102\n仙人掌103\n凳子104\n马桶105\n电脑106\n抽屉107\n花108109\n桌子110\n路障115\n牌116\n鼓117\n绿色垃圾桶118\n蓝色垃圾桶119\n120球", "↑修改前\n↓修改后"}, {"", ""}, {"text", "text"})
	if a == nil then
		_ENV["gg"]["alert"]("有数值为空")
	end
	if a[1] == nil then
		_ENV["gg"]["alert"]("有数值为空")
	end
	if a[2] == nil then
		_ENV["gg"]["alert"]("有数值为空")
	end
	_ENV["gg"]["searchNumber"](a[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	b = _ENV["gg"]["getResultCount"]()
	_ENV["gg"]["getResults"](b)
	_ENV["gg"]["editAll"](a[2], gg.TYPE_DWORD)
end
function mepm3()
local a=gg.prompt({"文字","改完之后的文字"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
end
function mepm4()
fastsearch
({
{950001,4,32},
{6,-4,4},
{0,8,4},
{0,12,4},
{0,16,4},
{0,20,4},
{0,-8,4},
{0,-12,4}
},
{{961731,0,4},
{961711,4,4},
{961721,8,4},
{961361,12,4},
{961191,16,4},
{961351,20,4,false}})
end
function mepm5()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function Ggsjsbsjsvsjb()--武器功能
menu1 = gg.multiChoice({
"无间隔",
"锁子弹",
"无后座",
"破盾（全局）",
"霸天斧范围",
"能量剑距离",
"换风标范围",
"腕炮范围",
"迫击炮范围",
"斧头伤害",
'返回上一页'},
nil,'必须制白日梦')
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then g4() end
if menu1[5] == true then g5() end
if menu1[6] == true then g6() end
if menu1[7] == true then g7() end
if menu1[8] == true then g8() end
if menu1[9] == true then g9() end
if menu1[10] == true then g10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function Hmygnmymy()
menu1 = gg.multiChoice({
"倒地结算",
"击倒50",
"逃脱8人",
"个人伤害",
"救人数量",
'返回上一页'},
nil,'倒地结算30秒后开')
if menu1 == nil then else
if menu1[1] == true then h1() end
if menu1[2] == true then h2() end
if menu1[3] == true then h3() end
if menu1[4] == true then h4() end
if menu1[5] == true then h5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end


function Idhshvsjsvsbs()
menu1 = gg.multiChoice({
"服装变色",
"大厅10年",
"队友箭头",
"激活锁位",
"强制准备",
"生命护盾",
"人物踏空",
'返回上一页'},
nil,'普通功能')
if menu1 == nil then else
if menu1[1] == true then i1() end
if menu1[2] == true then i2() end
if menu1[3] == true then i3() end
if menu1[4] == true then i4() end
if menu1[5] == true then i5() end
if menu1[6] == true then i6() end
if menu1[7] == true then i7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end



function ZCfhxhxgxhc()
menu1 = gg.multiChoice({
"全星耀动作",--1
"飞爪[自调]",--2
"滑板[自调]",--3
"医疗箱[自调]",--4
"自走球[自调]",--5
"火箭筒[自调]",--6
"冲锋枪[自调]",--7
"迫击炮[自调]",--8
"能量剑[自调]",--9
"蹦蹦枪[自调]",--10
"能量炮[自调]",--11
"霰弹枪[自调]",--12
"唤风镖[自调]",--13
"霸天斧[自调]",--14
'返回上一页'},
nil,'自调功能')
if menu1 == nil then else
if menu1[1] == true then z1() end
if menu1[2] == true then z2() end
if menu1[3] == true then z3() end
if menu1[4] == true then z4() end
if menu1[5] == true then z5() end
if menu1[6] == true then z6() end
if menu1[7] == true then z7() end
if menu1[8] == true then z8() end
if menu1[9] == true then z9() end
if menu1[10] == true then z10() end
if menu1[11] == true then z11() end
if menu1[12] == true then z12() end
if menu1[13] == true then z13() end
if menu1[14] == true then z14() end
if menu1[15] == true then HOME() end

end
GLWW=-1
end

function z1()--全星耀动作
fastsearch({{950001,4,32},{6,-4,4},{0,8,4},{0,12,4},{0,16,4},{0,20,4},{0,-8,4},{0,-12,4}},{{961731,0,4},{961711,4,4},{961721,8,4},{961361,12,4},{961191,16,4},{961351,20,4,false}})
end

function z2()--飞爪
local I2=gg.prompt({"——————飞爪皮肤——————\n初始:500500\n科技款:600151\n马桶抽:600156\n超凡蜘蛛网:600161\n神龙金爪:600276\n食人花:600341\n猫爪冰棒:600446\n量子飞爪:600531\n量子飞爪-彩金:650021\n布谷鸟:600716\n布谷鸟-桃粉:650221\n磁场矿控:600461\n星握:601386\n深海船锚:601186\n深海船锚-镀金:650421\n捷德之爪:601466\n鲨鱼咬咬:601551\n飞碟抓手:601821\n肥柴餐叉:601956\n肥柴餐叉-金柴:650721\n瞬影:602106\n瞬影-暗紫:650766\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500500},{[2] = 600161})
if I2==nil then ID9() end
fastsearch({{I2[1],4,32},},{{I2[2],0,4,false}},"飞爪美化")
end

function z3()--滑板
local I3=gg.prompt({"——————滑板皮肤——————\n初始:500900\n青青双翘:600496\n镭射子弹:600501\n疾速异形:600601\n麒麟传说:600616\n麒麟传说-熔岩:650131\n电音派对:600526\n电音派对-橙金:650011\n鲤鱼浪板:600636\n鲤鱼浪板-乌焰:650171\n海豚:600861\n重岩大剑:600896\n重岩打剑-玄冰:650331\n科技星能:600946\n数码链接:600961\n青龙之握:601206\n虎虎生威:601521\n叱咤风云:601621\n便捷推进器:601746\n便捷推进器-涂鸦:650656\n苍龙:601826\n霜雪之星:601991\n未来巡航:602111\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500900},{[2] = 600861})
if I3==nil then ID9() end
fastsearch({{I3[1],4,32},},{{I3[2],0,4,false}},"滑板美化")
end

function z4()--医疗箱
local I4=gg.prompt({"——————医疗箱皮肤——————\n初始:500005\n网红同款:600086\nDMM彩豆蛋糕:600091\n自制爱心便当:600096\n圣光之箱:600271\n外卖盒:600366\n月饼礼盒:600411\n新春礼盒:600486\n春日野餐篮:600516\nDMM掌机:600966\nD胜客披萨:600996\n周年蛋糕:601271\n千星攻略:600576\n龙龙曲奇:601866\n龙龙曲奇-蜜享:650681\n鹅宝棒冰:602006\n疗愈音箱:602156\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500005},{[2] = 600366})
if I4==nil then ID9() end
fastsearch({{I4[1],4,32},},{{I4[2],0,4,false}},"医疗箱美化")
end

function z5()--自走球
local I5=gg.prompt({"——————自走球皮肤——————\n初始:500700\n环保款:600301\n光能双环:600306\n魔力紫球:600316\n闪闪飞轮:600321\n风火轮:600476\n蝴蝶泡泡:600566\n蝴蝶泡泡-紫韵:650081\n星能时计:600811\n水流术:601066\n庆典彩球:601226\n小鸡扭蛋:601311\n小鸡扭蛋-成年:650491\n极动光轮:601776\n星河流光:601926\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500700},{[2] = 601226})
if I5==nil then ID9() end
fastsearch({{I5[1],4,32},},{{I5[2],0,4,false}},"自走球美化")
end

function z6()--火箭筒
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I6=gg.prompt({"——————火箭筒皮肤——————\n初始:500010\n青鸟M2:600076\n丛林迷彩:600081\n雷神:600016\n火焰龙头鲨:600286\n焰:600011\n梦想鲤鱼王:600441\n猎枪:600736\n猎枪-噬火:650241\n无垠星能:600816\n夜骑士:601266\n蒸汽火车:601401\n蒸汽火车-童话:650521\n迪迦之力:601491\n流星彩虹:601946\n流星彩虹-桃桃:650701\n烈焰龙魂:602046\n烈焰龙魂-龙啸:650756\n\n输入要改的皮肤↓"},{[1] = 600816})
if I6==nil then ID9() end
fastsearch({{500010,4,32},},{{I6[1],0,4,false}})
fastsearch({{500011,4,32},},{{I6[1],0,4,false}})
fastsearch({{500012,4,32},},{{I6[1],0,4,false}},"火箭筒美化")
end

function z7()--冲锋枪
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I7=gg.prompt({"——————冲锋枪皮肤——————\n初始:500030\n马克Z1:600346\n古斯塔夫45:600351\n激光:600376\nDNA-RayGun:600436\n滋水枪:600646\n腾龙:600941\n赛罗之力:601496\n侦查者:602136\n\n输入要改的皮肤↓"},{[1] = 600646})
if I7==nil then ID9() end
fastsearch({{500030,4,32},},{{I7[1],0,4,false}})
fastsearch({{500031,4,32},},{{I7[1],0,4,false}})
fastsearch({{500032,4,32},},{{I7[1],0,4,false}},"冲锋枪美化")
end

function z8()--迫击炮
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I8=gg.prompt({"——————迫击炮皮肤——————\n初始:500020\n秋冬款:600186\n网球发射器:600191\n磁暴:600236\n黄金虎纹鲨:600241\n糖果大炮:600641\n糖果大炮-蓝莓:650181\n星能爆裂:600881\n彩虹角马:601301\n彩虹角马-梦幻:650471\n泽塔之力:601506\n泽塔之爪:650601\n机龙咆哮:602116\n\n输入要改的皮肤↓"},{[1] = 600881})
if I8==nil then ID9() end
fastsearch({{500020,4,32},},{{I8[1],0,4,false}})
fastsearch({{500021,4,32},},{{I8[1],0,4,false}})
fastsearch({{500022,4,32},},{{I8[1],0,4,false}},"迫击炮美化")
end

function z9()--能量剑
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I9=gg.prompt({"——————能量剑皮肤——————\n初始:500040\n浪潮之刃:600655\n紫电:600691\n紫电-赤尘:650201\n雷闪:600766\n耀光:600771\n干将:600886\n干将-莫邪:650311\n斩星:601076\n斩星-炫晶:650401\n击浪鱼剑:601191\n击浪鱼剑-剑鱼:650431\n像素剑:601281\n天行之翼:601751\n天行之翼-炽焰:650661\n掠星:602031\n欧布圣剑:601481\n\n输入要改的皮肤↓"},{[1] = 601481})
if I9==nil then ID9() end
fastsearch({{500040,4,32},},{{I9[1],0,4,false}})
fastsearch({{500041,4,32},},{{I9[1],0,4,false}})
fastsearch({{500042,4,32},},{{I9[1],0,4,false}},"能量剑美化")
end

function z10()--蹦蹦枪
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I10=gg.prompt({"——————蹦蹦枪皮肤——————\n初始:500050\n青空爆弹:600871\n夜之歌:600876\n夜之歌-樱花:650301\n电能新星:601586\n王朝之辉:601591\n草莓果汁:601026\n草莓果汁-蓝莓:650361\n聚星者:601361\n聚星者-炫晶:650511\n贝利亚之力:601501\n紫金葫芦:601626\n紫金葫芦-风火:650616\n擎天:602041\n\n输入要改的皮肤↓"},{[1] = 601501})
if I10==nil then ID9() end
fastsearch({{500050,4,32},},{{I10[1],0,4,false}})
fastsearch({{500051,4,32},},{{I10[1],0,4,false}})
fastsearch({{500052,4,32},},{{I10[1],0,4,false}},"蹦蹦枪美化")
end

function z11()--能量炮
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I11=gg.prompt({"——————能量腕炮皮肤——————\n初始:500060\n青云:601556\n疾雷:601561\n疾雷-圣洁:650611\n科技之作:601721\n焦土之光:601726\n驭星者:601686\n驭星者-炫晶:650636\n罗卜特:601796\n霸龙戏珠炮:601856\n霸龙戏珠炮-遗红:650671\n特利迦腕炮:601896\n\n输入要改的皮肤↓"},{[1] = 601796})
if I11==nil then ID9() end
fastsearch({{500060,4,32},},{{I11[1],0,4,false}})
fastsearch({{500061,4,32},},{{I11[1],0,4,false}})
fastsearch({{500062,4,32},},{{I11[1],0,4,false}},"能量腕炮美化")
end

function z12()--霰弹枪
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I12=gg.prompt({"——————霰弹枪皮肤——————\n初始:500070\n玩具士兵:601661\n霓虹脉冲:601666\n霓虹脉冲-樱花:650641\n启明:601781\n龙啸:601786\n星云湮灭:601941\n星云湮灭-霓霞:650741\n蜂芒:602036\n\n输入要改的皮肤↓"},{[1] = 601941})
if I12==nil then ID9() end
fastsearch({{500070,4,32},},{{I12[1],0,4,false}})
fastsearch({{500071,4,32},},{{I12[1],0,4,false}})
fastsearch({{500072,4,32},},{{I12[1],0,4,false}},"霰弹枪美化")
end

function z13()--唤风镖
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I13=gg.prompt({"——————唤风镖皮肤——————\n初始:500080\n清凉:601886\n秩序:601891\n秩序-烈风:650696\n\n输入要改的皮肤↓"},{[1] = 600816})
if I13==nil then ID9() end
fastsearch({{500080,4,32},},{{I13[1],0,4,false}})
fastsearch({{500081,4,32},},{{I13[1],0,4,false}})
fastsearch({{500082,4,32},},{{I13[1],0,4,false}},"唤风镖美化")
end

function z14()--霸天斧
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I14=gg.prompt({"——————霸天斧皮肤——————\n初始:500090\n青霜:602141\n裂空:602146\n裂空-红月:650781\n\n输入要改的皮肤↓"},{[1] = 600816})
if I14==nil then ID9() end
fastsearch({{500090,4,32},},{{I14[1],0,4,false}})
fastsearch({{500091,4,32},},{{I14[1],0,4,false}})
fastsearch({{500092,4,32},},{{I14[1],0,4,false}},"霸天斧美化")
end



--------------------------------------------------------------------------------------------------------------------------------------------------------------



function i1()
a=gg.prompt({"1 绿色 2红色 3白色黑色[其他的也行]"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0x1ced84c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ced850},})
end


function i2()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-0.10000000149;-3.67522966e35;-3.67523442e35;-3.67563056e35;25.72529029846;0.8125::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25.72529029846", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("大礼包40%")
	 gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8.68381962e-21;9.21479283e-21;8.54808526e-21;8.47695338e-21;9.53077583e-21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8.54808526e-21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8.47695338e-21", gg.TYPE_FLOAT)
	 gg.toast("大礼包70%")
	 gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.10000000149;0.00999999978;0.30000001192;100.0;60.0;1,000.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("大礼包99%")
	 gg.clearResults()
while true do
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000;2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000;2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 999}})
	 end
	 gg.toast("恭喜获得大礼包")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1000;2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000;2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 999}})
	 end
	 gg.toast("恭喜获得大礼包")
	 gg.clearResults()
end
end


function i3()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd5cdbc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd5cdd0},})
end


function i4()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x177b60c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x177b610},})
end


function i5()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xd74284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd74288},})
end


function i6()
fastsearch({{0.30000001192092896, 16, 16384}, {0.30000001192092896, 316840, 16}}, {{10, 0, 16, false}, {10, 316840, 16, false}})
end


function i7()
tk=gg.alert("人物踏空","开启","关闭")
if tk==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4.2", gg.TYPE_FLOAT)
gg.toast("踏空")
gg.clearResults()
end
if tk==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("4.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.08", gg.TYPE_FLOAT)
gg.toast("踏空[关]")
gg.clearResults()
end
end


function a1()--开锁赚钱
qc=gg.alert("开锁赚钱，请选择当前游玩的模式！\n开启成功后退出脚本才有明显效果","4v1","8v2")
if qc==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "开锁赚钱[4v1]"},
{["value"] = 1106247680, ["type"] = 4},
{["lv"] = 256,["offset"] =20, ["type"] = 4},
{["lv"] = 100,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = 1,["offset"] =88, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end     
if qc==2 then  
qmnb = {
{["memory"] = 32},
{["name"] = "开锁赚钱[8v2]"},
{["value"] = 1110704128, ["type"] = 4},
{["lv"] = 256,["offset"] =20, ["type"] = 4},
{["lv"] = 100,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = 1,["offset"] =88, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
end



function a2()
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] =3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
fastsearch({{4.900000095367432,16,32},{900.0, -4, 16},{20.0, -8, 16}}, {{7, 0, 16}},"高跳")
fastsearch({{2.5,16,32},{1.0, 4, 16},{8.0, -4, 16},{12.0, -8, 16},}, {{200, -4, 16}},"明透")
end



function a3()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end



function a4()
fastsearch({{-364751401, 4, 16384}, {-509607932, 4, 4}, {-476049303, 8, 4}, {-382907280, 36, 4}}, {{-516948194, 36, 4, false}})
end



function a5()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end



function a6()
fastsearch({{-1023410175, 4, 16384}, {-390232016, 4, 4}, {64671734, 8, 4}, {64203932, 12, 4}, {-382908368, 20, 4}, {-494030840, 24, 4}}, {{-516948194, 24, 4, false}, {-486539264, 20, 4, false}})
end



function a7()
    qmnb = {
      {["memory"] = 32},
      {["name"] = "倒地复活"},
      {["value"] = 4575657222537216000, ["type"] = 32},
      {["lv"] = 1050253722, ["offset"] = -16, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 100, ["offset"] = -20, ["type"] = 16},
      {["value"] = 100, ["offset"] = -24, ["type"] = 16},
    }
    xqmnb(qmnb)
end



function a8()--暴击
fastsearch({{-509603836, 4, 16384}, {-476045312, 4, 4}, {-390248400, 8, 4}, {-366213989, 12, 4}, {-382908368, 36, 4}, {-494030840, 40, 4}}, {{-516948194, 40, 4, false}, {-476053503, 36, 4, false}})
end



function a9()
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =3.6, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end



function a10()
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙范围伤害"},
      {["value"] = 4481982349412139008, ["type"] = 32},
      {["lv"] = 1080033280, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = -12, ["type"] = 4},
      {["lv"] = 1043542835, ["offset"] = 4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 200, ["offset"] = 0, ["type"] = 16},
      {["value"] = 10, ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙无冷却"},
      {["value"] = 215832592384, ["type"] = 32},
      {["lv"] = 50, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = 12, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = 0, ["type"] = 16},
    }
    xqmnb(qmnb)
end



function a11()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"输入变身代码\n恐龙:\n翼龙70010\n三角龙70011\n剑龙70012\n迅猛龙70013\n霸王龙70014\n  沧龙70015\n变形金刚:\n擎天柱90001\n大黄蜂90002\n热破90003\n威震天90004\n声波90005\n红蜘蛛90006↓"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end



function a12()
qmnb = {
{["memory"] = 32},
{["name"] = "威震天"},
{["value"] = 0.800000011920929, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 80, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 80, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 84, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


--------------------------------------------------------------------------------------------------------------------------------------------------------------

function b1()
GG=gg.alert([[先攻击一下再开]],'确定','返回')
if GG==2 then gguu() end
LL=gg.prompt({"请输入要修改的buff↓\n100暴怒\n101夹子\n102高\n103跑\n105手雷\n107无敌\n108针\n109学妹\n110学妹\n111持续暴走\n112变羊术\n113达\n114天降正义\n200酒桶\n201毒液\n202加速\n203狗\n204魔法墙正面\n205魔法墙负面\n206护盾\n300boss盾\n301boss吸血\n302boss眩晕\n400机器人\n401小学妹\n402幽灵\n403缴械\n404天降正义\n405减速\n501水\n502引力场\n505超级加速\n506加速\n508减速\n509boss攻速永久\n510boss吸血永久\n511boss盾\n512解控\n520梦魇泡泡\n521梦魇\n522梦魇无敌\n528缴械\n529缈\n530缈\n531缈\n532缈\n533缈加圣女\n534圣女\n535圣女\n537盾卫\n538盾卫\n539盾卫\n540盾卫\n542狮子吸血\n543泷\n544泷\n545泷\n547时光机\n548狮子视野\n549狮子冷却\n550毒\n551命石\n552命石\n553命石\n554命石\n557减血\n558眩晕\n559无敌\n560永久加速\n561超级加速\n564团子\n566团子\n567机器人\n568恐龙\n570奥博\n571眩晕\n572护盾\n573疾跑\n575狮子视野\n577指绘师\n578指绘师\n580互拉圈减速\n581互拉圈加速\n70110全体护盾\n70109竞速掉血\n70108-70103恐龙护盾\n70102竞速减速\n70101竞速夹子\n10509红方旗子\n10508蓝方旗子\n10203减血\n10600电能球buff\n11201针\n10201毒\n10103狂暴\n10509红旗buff"},{[1]="10509"})
if LL==nil then gguu() end
fastsearch({{2.5, 16, 32}, {568, 8, 4}, {1, 12, 4},{0,16,4},{0,84,4},{1075838976,4,4},{568,60,32}}, {{99,4,16,true},{LL[1],8,4,true},{0,92,16,true}},'吼吼号')
end



function b2()
fastsearch--杀队友 --开启
({
{104,4,16384},
{104,4,4},
{-382908368,-1564,4}
},
{
{-516948194,-1564,4,false}})
end



function b3()
fastsearch--杀队友 --关闭
({
{104,4,16384},
{104,4,4},
{-516948194,-1564,4}
},
{
{-382908368,-1564,4,false}})
end



function b4()
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end



function b5()
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] =3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
fastsearch({{4.900000095367432,16,32},{900.0, -4, 16},{20.0, -8, 16}}, {{7, 0, 16}},"高跳")
end



function b6()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function b7()
qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},l
}
qmxg = {
{["value"] = 3.0,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function b8()
qmnb = {
{["memory"] = 32},
{["name"] = "无视夹子"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end



function b9()
qmnb = {
{["memory"] = 32},
{["name"] = "穿墙"},
{["value"] = -10.0, ["type"] = 16},
{["lv"] = 49.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



function b10()
qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end



function b11()
qmnb = {
{["memory"] = 32},
{["name"] = "视野"},
{["value"] = 6.0, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 24, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
end



function b12()
qmnb = {
{["memory"] = 32},
{["name"] = "全图高亮"},
{["value"] = 8.0, ["type"]=16},
{["lv"] = 4,["offset"]=-4, ["type"]=4},
{["lv"] = 1,["offset"]=8, ["type"]=4},
{["lv"] = 8,["offset"]=12, ["type"]=4},
}
qmxg = {
{["value"] = 1, ["offset"] = 46, ["type"] = 4, ['freeze'] = true},
}
xqmnb(qmnb)
end


--------------------------------------------------------------------------------------------------------------------------------------------------------------

function c1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end
function c2()--锁金币--方法名RpcSubCoin
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x3143a6c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3143a70},})
end     
function c3()--锁道具--方法名CostCard
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e0761c},})
end
function c4()--移动开物--方法名EndUsing
yw=gg.alert("移动开物","开启","关闭")
if yw==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("移动开物")
gg.clearResults()
end
if yw==2 then  
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT)
gg.toast("移动开物关")
gg.clearResults()
end
end
function c5()--攻击吸血--get_BloodSucking
readWrite({{false,295731200,0,4,nil,nil},{-481296384,1932,4},{436207620,1936,4},{-442564508,1940,4}},{{-476052411,1908,4,false},{-516948194,1912,4,false}},4,16384,"攻击吸血")end
function c6()--反弹伤害--方法名get_DamageReflect
nc_offset(getso("libil2cpp.so"),{{-482082700,4,0x1b148d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b148d8},})
end
function c7()--基扯改子弹--方法名get_MaxRoundCount
nc_offset(getso("libil2cpp.so"),{{-476053404,4,0xf3d288},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d28c},})
end
function c8()--无间隔--方法名get_CooldownGain
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b13ebc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13ec0},})
end
function c9()--锁子弹--方法名get_CostFree
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end    
function c10()--解锁模式--方法名GetGameModeIsGradeLimit
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end     
function c11()--道具皮肤--方法名OwnCardSkin
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b5141c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51420},})
end     
function c12()--道具无CD--方法名GetRemainedCooldownTime
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
end
function c13()--杀队友
yw=gg.alert("猎杀队友","开启","关闭")
if yw==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("猎杀队友")
gg.clearResults()
end
if yw==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
gg.toast("猎杀队友")
gg.clearResults()
end
end
function c14()--免费购物--方法名GetCardPrice
yw=gg.alert("超级免费购物","开启","关闭")
if yw==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-1.30928164e25;-1.30683765e21;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("免费购物")
gg.clearResults()
end
if yw==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-5.90295867e21;-2.02910209e20;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT)
gg.toast("免费购物关")
gg.clearResults()
end
end
function c15()--不死--方法名DamageShield
yw=gg.alert("超级不死","开启","关闭")
if yw==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-1.30939232e25;-1.3068399e21;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("人物无敌")
gg.clearResults()
end
if yw==2 then  
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT)
gg.toast("人物无敌关")
gg.clearResults()
end
end
function c16()--倒地丢道具--方法名Boolean get_Disabled()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f2eac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f2eac8},})
end
function c17()--超级移速--方法名get_SpeedGain
nc_offset(getso("libil2cpp.so"),{{-476052417,4,0x1b13e18},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13e1c},})
end     
function c18()--武器秒杀--方法名get_Attack
fastsearch--秒杀一切
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
end
function c19()--解锁道具--方法名IsOwned
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},})
end
function c20()--无限变身时间--方法名EndShapeShift
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x3c706ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3c706b0},})
end
function c21()--裁判模式--方法名set_PlayingRole
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b13d7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13d80},})
end
function c22()--解锁风格--方法名OwnCardStyle
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b51c68},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51c68},})
end
function c23()--枪枪暴击--方法名RealTeammateAttack
gg.alert("局内开启")
fastsearch
({
{8388578.5,16,16384},
{0,336,16},
},
{
{1,336,16,false}})
end
function c24()--超级高跳--方法名get_JumpGain
nc_offset(getso("libil2cpp.so"),{{-476052415,4,0x1b13f50},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13f54},})
end     
function c25()--超级透视--方法名get_IsVisible
yw=gg.alert("超级透视","开启","关闭")
if yw==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("128.00001525879;-128.00001525879;0.30000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("超级透视")
gg.clearResults()
end
if yw==2 then  
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("128.00001525879;-128.00001525879;-1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.30000001192", gg.TYPE_FLOAT)
gg.toast("超级透视关")
gg.clearResults()
end
end	
function c26()--全角色--方法名IsOwnCharacter
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea5158},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea515c},})
end     
function c27()--直接开门--方法名get_IsOpend
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end
function c28()--无后
yw=gg.alert("超级无后座","开启","关闭")
if yw==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.0", gg.TYPE_FLOAT)
gg.toast("武器无后开启")
gg.clearResults()
end     
if yw==2 then  
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2.02910614e20;1.0;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00100000005", gg.TYPE_FLOAT)
gg.toast("武器无后关闭")
gg.clearResults()
end
end


function c29()--全武器间隔--方法名1-get_FireCooldownTime方法名2-get_FireCooldownTimeRatio
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end
function c30()--稳定锁金--方法名FinishBuy
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f3daec},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3daf0},})
end     
function c31()--子弹穿墙--方法名RpcFinishProjectile
readWrite({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"子弹穿墙")end
function c32()--无视架子--方法名get_IsInvincible
fastsearch({
{25.0, 16, 32},
{1.0, -4, 16},
{0.5, -8, 16},
{2.5, -12, 16}
}, {
{0.0, -4, 16, false},
},"无视夹子")
end
function c33()--无限金币--方法名get_CoinNum
nc_offset(getso("libil2cpp.so"),{{-471858942,4,0x1f401d8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f401dc},})
end     
function c34()--追捕救人--方法名IsPoliceLike
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfdc1ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdc1b0},})
end
function c35()--无视buff--方法名GetBuffById
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.54742062e26;-9.38577544e22;-3.69079137e20;-1.50171254e24;-3.68935198e20;-3.68935198e20;-9.39921227e20;-7.16145955e24;-1.30951038e25;-1.30684047e21;-9.4914291e20;-9.40125702e22;-3.70087803e20;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30951038e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("无视buff")
gg.clearResults()
end
function c36()--无视护盾
yw=gg.alert("破追捕盾","开启","关闭")
if yw==1 then
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})
end
if yw==2 then
fastsearch
({{-128.00001525879,16,16384},
{-486539264,20,4},
{-516948194,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
end
end
function c37()--全图踩架
yw=gg.alert("全图踩架","开启","关闭")
if yw==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("74732764;-382907280;-494030832::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-382907280;-494030832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-516948194", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end  
if yw==2 then  
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("74732764;-476053503;-516948194::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053503;-516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-382907280;-494030832", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
end
function c38()--变身攻击--方法名SpawnFireProjectileOrder
fastsearch--变身攻击
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end
function c39()--亮透--方法名get_DisableFogVisual
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},})
end
function c40()--丝血不死--方法名get_IsDying
yw=gg.alert("丝血不死","开启","关闭")
if yw==1 then 
qmnb = {
{["memory"] = 32},
{["name"] = "丝血不死"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end
if yw==2 then 
qmnb = {
{["memory"] = 32},
{["name"] = "丝血不死"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 100.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end
end
function c41()--a内存全武器无间隔
local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end
function c42()--吸人--方法名SetEnablePhysics
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17e1380},})
end
function c43()--追捕开锁
fastsearch
({
{-0.00195311918,16,16384},
{-382908368,-548,4},
{-494030840,-544,4}
},
{
{-516948194,-548,4,false}})
end
function c44()--开门秒逃--方法名get_Radius
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x4ac39a4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x4ac39a8},})
end     
function c45()--死亡不掉Buff--方法名LocalClearAllBuffAndDebuff
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b1216c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12170},})
end     
function c46()--修改段位
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-36,4,false}},4,32,"开启成功")
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-44,4,false}},4,32,"开启成功")
end
function c47()--满级道具--方法名GetCardLevel
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d630},})
end     
function c48()--跳跃移动--方法名RpcEndUsing
gg.alert("被和谐了所以用移动开物")
end
function c49()--观战控人--方法名protected Void Start
yw=gg.alert("观战控人","开启","关闭")
if yw==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd52374},})
end
if yw==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xd52374},})
end
end
function c50()--额外伤害--方法名get_Target
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x38e8240},})
end
function c51()--自动开锁--方法名1--CalculateResult--方法名2--CheckResultable--方法名3--get_CanTrigger
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5ebf8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5ebf8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5eb64},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb68},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xc5f108},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5f108+4},})
end
function c52()--角色技能免费--方法名1--get_CoinCost--方法名2--CostCoin
fastsearch
({
{0.00048828154,16,16384},
{-382908368,-576,4},
{-494030840,-572,4},
{167772163,-648,4}
},
{{-476053503,3328,4},
{-516948194,3332,4},
{-476053504,-576,4},
{-516948194,-572,4,false}})
end
function c53()--角色技能无冷--方法名1--ReduceCoolingDown--方法名2--CanStartSkill--方法名3--get_ChargeProgress--方法名4--get_Cooldown--方法名5--get_Activating
fastsearch
({
{-0.00048828369,16,16384},
{-382907280,-360,4},
{-494030832,-356,4},
},
{{-476053503,-360,4},
{-516948194,-356,4,false}})
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
},
{{-476053504,308,4},
{-516948194,312,4},
{-476050943,1652,4},
{-516948194,1656,4},
{-476053503,2344,4},
{-516948194,2348,4},
{-476053503,-536,4},
{-516948194,-532,4,false}})
end

function c54()--逃生秒赢--方法名1--get_GameTime改~A MOV R0, #66, 8;~A BX LR--方法名2--get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--方法名3--get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--方法名4--get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--方法名5--get_IsOpend改~A MOV R0, #1;~A BX LR--方法名6--UpdateMaxLife-Update改~A MOV R0, #0 BX LR
nc_offset(getso("libil2cpp.so"),{{-476,052,414,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfded2c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfded30},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd67f40},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd67f44},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eed014},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eed018},})
end
function c55()--追捕秒赢--方法名1--get_StillPlayingThiefCount改~A MOV R0 #0;~A BX LR--方法名2--get_FinalCapturedThiefCount改~A MOVT R0 #20;~A BX LR--方法名3--get_RemainedThiefCount改~A MOV R0 #0;~A BX LR--方法名4--get_KnockDownNum改~A MOVt R0, #999;~A BX LR--方法名5--get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--方法名6--get_GameTime改~A MOVT R0, #17250;~A BX LR--方法名7--get_RealCapturedThiefCount改~A MOV R0 #20;~A BX LR--方法名8--get_SuvivingThiefCount改~A MOV R0 #50;~A BX LR
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfde5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde5d4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfdddd4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdddd4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfdbcd8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdbcd8+4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c0+4},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a0+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfde384},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde384+4},})
end



--------------------------------------------------------------------------------------------------------------------------------------------------------------


function d1()--锁定道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1E07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E0761C},})
end



function d2()
qmnb = {
{["memory"] = 32},
{["name"] = "道具无冷"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =12, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
{["lv"] = 1.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =24, ["type"] = 16},
}
xqmnb(qmnb)
end

function d3()
qmnb = {
{["memory"] = 16384},
{["name"] = "渲染透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearList()
end



function d4()--武器射程
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF43B64},})
end



function d5()--子弹穿墙
fastsearch({{-442563748,4,16384},{-382906384,-60,4},{-390230032,-108,4}},{{-516948194,-60,4,false}}) 
end



function d6()--变身攻击
fastsearch({{0.00100000005,16,16384},{-382907280,184,4}},{{-516948194,184,4,false}})
end



function d7()--人物爬墙
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
end



function d8()
qmnb = {
{["memory"] = 32},
{["name"] = "武器秒杀"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 136, ["type"] = 16, ['freeze'] = true},
}
end



function d9()
fastsearch({{-509603836, 4, 16384}, {-476045312, 4, 4}, {-390248400, 8, 4}, {-366213989, 12, 4}, {-382908368, 36, 4}, {-494030840, 40, 4}}, {{-516948194, 40, 4, false}, {-476053503, 36, 4, false}})
end



function d10()

end



--------------------------------------------------------------------------------------------------------------------------------------------------------------

function e1()
xj = gg.alert("圣女配套","圣女","明透")
if xj==1 then
NH=gg.prompt({"修改前的金币↓"},{[1]="130"})
qmnb = {
{["memory"] = 32},
{["name"] = "星辰圣女"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = NH[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 56, ["type"] = 16, ["freeze"] = true},
{["value"] = 999, ["offset"] = 60, ["type"] = 16, ["freeze"] = true},
{["value"] = 999, ["offset"] = 64, ["type"] = 16, ["freeze"] = true},
{["value"] = 999, ["offset"] = 100, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 end
if xj==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end
end


function e2()
qmnb = {
{["memory"] = 32},
{["name"] = "艾可全屏禁攻"},
{["value"] = 0.30000001192092896, ["type"] = 16},
{["lv"] = 403, ["offset"] = -24, ["type"] = 4},
}
qmxg = {
{["value"] = 999, ["offset"] = -156, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -148, ["type"] = 4, ["freeze"] = true},
{["value"] = 150, ["offset"] = -28, ["type"] = 16, ["freeze"] = true},
{["value"] = 10509, ["offset"] = -24, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -12, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


function e3()
NH=gg.prompt({"劲铠当前金币 100/95/85/80↓","修改后的冷却↓","修改后的范围↓","修改后的牵制时间↓","修改后的击飞高度↓","修改后的伤害↓"},{[1]="100",[2]="0",[3]="999",[4]="999",[5]="10",[6]="999"})
qmnb = {
{["memory"] = 32},
{["name"] = "劲凯"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = NH[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = NH[2], ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[3], ["offset"] = 112, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[4], ["offset"] = 148, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[5], ["offset"] = 176, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[6], ["offset"] = 184, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function e4()
xtnb({{false,10.0,4,16,nil,nil},{1.2000000476837158,8,16},{1.401298464324817E-45,48,16}},{{0,0,16,true},{0,40,16,true},{0,44,16,true},{0,164,16,true}},16,32,"")
end


function e5()
qmnb = {
{["memory"] = 32},
{["name"] = "水之忍者"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 999, ["offset"] = -4, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 104, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


function e6()
NH=gg.prompt({"修改后的次数↓","修改后的金币↓","修改后的范围↓"},{[1]="999",[2]="0",[3]="999"})
qmnb = {
{["memory"] = 32},
{["name"] = "影之忍者"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 80, ["offset"] = -120, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -128, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[2], ["offset"] = -120, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[3], ["offset"] = -80, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[3], ["offset"] = -4, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


function e7()
qmnb = {
{["memory"] = 32},
{["name"] = "命石抱摔锁定距离秒杀"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
}
qmxg={
{["value"] = 200.0, ["offset"] = -84, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "强力抱摔"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-256, ["type"] = 16, ["freeze"] = true},
{["value"] = 1,["offset"] =-268, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0,["offset"] =-100, ["type"] = 16},
{["value"] = 99.0,["offset"] =-96, ["type"] = 16},
}
xqmnb(qmnb)
nh=gg.prompt({"输入抱摔冲刺距离(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "暴摔冲刺距离"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 0,["offset"] =8, ["type"] = 4},
{["lv"] = 0,["offset"] =32, ["type"] = 4},
{["lv"] = 2.0,["offset"] =56, ["type"] = 16},
{["lv"] = 1077936128, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1],["offset"] =16, ["type"] = 16},
{["value"] = nh[1],["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end


function e8()
XJ=gg.prompt({"修改前的金币↓","修改后的后摆↓","修改后的冷却金币↓","修改后的射程↓","修改后的飞镖速度↓","修改后的上墙buff↓","修改后的飞镖返回速度↓"},{[1]="90",[2]="0",[3]="0",[4]="5.5",[5]="0.1",[6]="300",[7]="0"})
qmnb = {
{["memory"] = 32},
{["name"] = "夜翎"},
{["value"] = 15.0, ["type"] = 16},
{["lv"] = XJ[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = XJ[3], ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = XJ[3], ["offset"] = 104, ["type"] = 4, ["freeze"] = true},
{["value"] = XJ[2], ["offset"] = 120, ["type"] = 16, ["freeze"] = true},
{["value"] = XJ[4], ["offset"] = 128, ["type"] = 16, ["freeze"] = true},
{["value"] = XJ[5], ["offset"] = 148, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 188, ["type"] = 16, ["freeze"] = true},
{["value"] = XJ[2], ["offset"] = 192, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 208, ["type"] = 16, ["freeze"] = true},
{["value"] = XJ[6], ["offset"] = 236, ["type"] = 4, ["freeze"] = true},
{["value"] = XJ[7], ["offset"] = 252, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


function e9()
NH=gg.prompt({"当前的金币↓","修改后的变身速度↓","修改后的电击时间↓","修改后的范围↓","修改后的电机速度↓"},{[1]="120",[2]="0.1",[3]="999",[4]="999",[5]="0"})
qmnb = {
{["memory"] = 32},
{["name"] = "奥博"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = NH[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[2], ["offset"] = 108, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[3], ["offset"] = 120, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[4], ["offset"] = 124, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[5], ["offset"] = 128, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


function e10()
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子"},
{["value"] = 1106247680, ["type"] = 4},
{["lv"] = 80, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
{["value"] = 1, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = 120, ["offset"] = 104, ["type"] = 16, ["freeze"] = true},
{["value"] = 140, ["offset"] = 108, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end


function e11()
qmnb = {
{["memory"] = 32},
{["name"] = "独家a内存全角色技能无冷+免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end



function e12()
NH=gg.prompt({"修改后的冷却↓","修改后的金币↓","修改后的木偶血量↓","修改后的木偶时间↓"},{[1]="0",[2]="0",[3]="300",[4]="150"})
qmnb = {
{["memory"] = 32},
{["name"] = "木偶"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 50, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = NH[2], ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[3], ["offset"] = 52, ["type"] = 4, ["freeze"] = true},
{["value"] = NH[4], ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


















--------------------------------------------------------------------------------------------------------------------------------------------------------------
function f1()
qy=gg.alert("大厅开启","开启","返回")
if qy==1 then
fastsearch({{-509587456, 4, 16384}, {-382907280, -12, 4}, {-494030832, -8, 4}, {-442539904, -4, 4}, {-509591551, 4, 4}, {-382907280, 3732616, 4}, {-494030832, 3732620, 4}, {-442539904, 3732624, 4}, {-509587456, 3732628, 4}}, {{-516948194, -12, 4, false}, {-516948194, 3732616, 4, false}},'全员buff')
end
if qy==2 then gguu() end
end


function f2()
gg.alert("丢个再开")
qmnb = {
{["memory"] = 32},
{["name"] ="范围"},
{["value"] =4619567317775286272, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = -356, ["type"] = 16},
 }
qmxg = {
{["value"] =9999, ["offset"] = -356, ["type"] = 16},
}
xqmnb(qmnb)
local LL=gg.prompt({"输入要修改的buff代码\n100暴怒\n101夹子\n102高\n103跑\n105手雷\n107无敌\n108针\n109学妹\n110学妹\n111持续暴走\n112变羊术\n113达\n114天降正义\n200酒桶\n201毒液\n202加速\n203狗\n204魔法墙正面\n205魔法墙负面\n206护盾\n300boss盾\n301boss吸血\n302boss眩晕\n400机器人\n401小学妹\n402幽灵\n403缴械\n404天降正义\n405减速\n501水\n502引力场\n505超级加速\n506加速\n508减速\n509boss攻速永久\n510boss吸血永久\n511boss盾\n512解控\n520梦魇泡泡\n521梦魇\n522梦魇无敌\n528缴械\n529缈\n530缈\n531缈\n532缈\n533缈加圣女\n534圣女\n535圣女\n537盾卫\n538盾卫\n539盾卫\n540盾卫\n542狮子吸血\n543泷\n544泷\n545泷\n547时光机\n548狮子视野\n549狮子冷却\n550毒\n551命石\n552命石\n553命石\n554命石\n557减血\n558眩晕\n559无敌\n560永久加速\n561超级加速\n564团子\n566团子\n567机器人\n568恐龙\n570奥博\n571眩晕\n572护盾\n573疾跑\n575狮子视野\n577指绘师\n578指绘师\n580互拉圈减速\n581互拉圈加速\n70110全体护盾\n70109竞速掉血\n70108-70103恐龙护盾\n70102竞速减速\n70101竞速夹子\n10509红方旗子\n10508蓝方旗子\n10203减血\n10600电能球buff\n11201针\n10201毒\n10103狂暴\n10509红旗buff"},{[1]="10509"})
fastsearch({{1036831949, 4, 32},{1064695286,-16,4},{1064695286,-12,4},{1065353216,-8,4},{1065353216,-24,4},{1065353216,-28,4},{1065353216,-32,4},{1064695286,-20,4},{1,-436,4}}, {{LL[1],-392,4}})
end


--------------------------------------------------------------------------------------------------------------------------------------------------------------

function g1()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end


function g2()--锁子
fastsearch({{-364751401, 4, 16384}, {-509607932, 4, 4}, {-476049303, 8, 4}, {-382907280, 36, 4}}, {{-516948194, 36, 4, false}})
end


function g3()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end


function g4()--破盾
fastsearch({{-1023410175, 4, 16384}, {-390232016, 4, 4}, {64671734, 8, 4}, {64203932, 12, 4}, {-382908368, 20, 4}, {-494030840, 24, 4}}, {{-516948194, 24, 4, false}, {-486539264, 20, 4, false}})
end


function g5()--霸天斧范围
fastsearch({{-442691564, 4, 16384}, {-336489166, 4, 4}, {-498348004, 8, 4}, {-390230032, 12, 4}, {-382906896, 116, 4}}, {{-516948194, 116, 4, false}})
end


function g6()--能量剑
a=gg.prompt({"全网首发能量剑距离"})
fastsearch({
{66,16,32},
{2.2,48,16}},
{{a[0],48,16, false}})
gg.toast("能量剑距离修改为"..a[0])
end


function g7()--换风标
fastsearch({{1.25,16,32},{2.5,4,16}},{{5,4,16,false}})
fastsearch({{0.75,16,32},{1.5,4,16}},{{5,4,16,false}})
end


function g8()
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{1500,4,16, false}})
end


function g9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.40000000596;0.15000000596;20.0;2.0;0.20000000298::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.9", gg.TYPE_FLOAT)
	 gg.toast("迫击炮爆炸范围")
	 gg.clearResults()
end


function g10()
fastsearch
({{6.25,16,32},{-1.5,-8,16},{1.5,4,16},{2.25,8,16},{0.5,12,16},{1.5,-12,16},{584,-24,4},{583,-48,4}},
{{99,0,16},
{300,-48,4},
{300,-24,4},
{10,-4,16,false}})
end



--------------------------------------------------------------------------------------------------------------------------------------------------------------

function h1()
qmnb = {
{["memory"] = 32},
{["name"] = "强制结算"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end


function h2()--击倒50人
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
end


function h3()--逃脱8人
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})
end


function h4()--个人伤害
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
end


function h5()--救人数量
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function TShzkwhsusbs()
menu1 = gg.multiChoice({
"防闪",
"独家xa防",
"独家大厅防",
"独家防封第一步",
"独家防封第二步",
"防检测防举报",
"️返回主页️",
}, nil, os.date("游戏设置"))
if menu1 == nil then else
if menu1[1] == true then ts1() end
if menu1[2] == true then ts2() end
if menu1[3] == true then ts3() end
if menu1[4] == true then ts4() end
if menu1[5] == true then ts5() end
if menu1[6] == true then ts6() end
if menu1[7] == true then HOME() end
end
GLWW=-1

end

function ts1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ts2()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("316458", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("28822", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_AUTO,freeze = true,value = 575757}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ts3()
gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("4875", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4875", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_BYTE,freeze = true,value = 1582}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ts4()
gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1;1;1;1;1;11;1;11;1;11;1;11;1;11;1;11;1;11;1;11;1;1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ts5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("11;1;1;95;428;5451;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;16856;5427;5555;5555;57588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 6}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ts6()
gg.setRanges(262207)
gg.searchNumber('4554', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('4554',4)
gg.toast('防检测')
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("防举报", gg.TYPE_BYTE)
gg.toast("开启成功")
gg.clearResults()
end

function ahsjvsjsbbbs()
SN = gg.multiChoice({
  "初始化",--1
  "初始化",--2
  "启动",--3
  "美化",
  "--芜湖--",
}, nil,os.date("作者:小羽神—使用于男刀"))   
  if SN==nil then else
  if SN[1] == true then c1() end
  if SN[2] == true then c2() end
  if SN[3] == true then c3() end
  if SN[4] == true then c4() end
  if SN[5] == true then Exit() end
end XGCK = -1 end



function c1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;3;0.80000001192;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("初始化@1")
	 gg.clearResults()
end

function c2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;2.75;0.80000001192;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("初始化2")
	 gg.clearResults()
end

function c3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.58732407e-43;1.0;0;2.5;0.80000001192;65,536D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("启动成功🦑")
	 gg.clearResults()
end

function c4()
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
end

function buffgngng()
menu1 = gg.multiChoice({
"初始-必须开-",
"酒全+无敌",
"疾跑无敌",
"跳高暴走",
"疾跑改bff[自]",
"疾跑随机buff",
"疾跑bos无敌",
"跳高提升攻速[无限时长]",
"生命护盾改buff",
"追捕暴走",
"跳高时间",
"无敌加长",
"酒桶伤害范围buff[自调]",
"酒桶禁攻",
"酒桶随机buff",
"追捕倒地不起",
"️返回主页️",
}, nil, os.date("道具BFF功能-不算全"))
if menu1 == nil then else
if menu1[1] == true then bf1() end
if menu1[2] == true then bf2() end
if menu1[3] == true then bf3() end
if menu1[4] == true then bf4() end
if menu1[5] == true then bf5() end
if menu1[6] == true then bf6() end
if menu1[7] == true then bf7() end
if menu1[8] == true then bf8() end
if menu1[9] == true then bf9() end
if menu1[10] == true then bf10() end
if menu1[11] == true then bf11() end
if menu1[12] == true then bf12() end
if menu1[13] == true then bf13() end
if menu1[14] == true then bf14() end
if menu1[15] == true then bf15() end
if menu1[16] == true then bf16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function bf16()
function ti(search, write)  
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("OPEN FAILED")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("OPEN FAILED")
		end
	end
end

ti({{101, 4, 32}, {102, 4, 4}, {3, -4, 4}}, {{117, 0, 4, false}})
ti({{90.0, 16, 32}, {60.0, -4, 16}, {12.0, 4, 16}}, {{9999, -4, 16, false}, {9999, 0, 16, false}, {9999, 4, 16, false}})
end

function bf1()
qc=gg.alert("Buff初始化\n温馨提示：打完一局关掉第二局再开，否则会有BUG！","开启","关闭")
if qc==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("Buff初始化开启成功")
gg.clearResults()
end
if qc==2 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
gg.toast("Buff初始化关闭成功")
gg.clearResults()
end
end


function bf2()
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶全屏+无敌"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 99.0,["offset"] =-4, ["type"] = 16},
{["value"] = 107,["offset"] =136, ["type"] = 4},
}
xqmnb(qmnb)
end

function bf3()--疾跑改无敌
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改无敌"},
{["value"] = 106147, ["type"] = 4},
{["lv"] = 6750208, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 16, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 19660800, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end

function bf4()--跳高改暴走
qmnb = {
{["memory"] = 32},
{["name"] = "跳高改暴走"},
{["value"] = 408, ["type"] = 4},
{["lv"] = 26112, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = -256, ["offset"] = 12, ["type"] = 4},
{["lv"] = 255, ["offset"] = 16, ["type"] = 4},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 28416, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end


function bf5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end

function bf6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7,012,352", gg.TYPE_DWORD)
	 gg.toast("疾跑随机buff")
	 gg.getResults(999999)
  while true do
      gg.editAll("19,660,800", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,208,960", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,684,672", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,274,496", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,143,424", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,553,600", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,077,888", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("13,500,416", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,012,352", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,750,208", gg.TYPE_DWORD)
    gg.sleep(205)
  end
end


function bf7()
gg.setRanges(32)
gg.searchNumber("106147;103W", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("103", 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", 2)
gg.toast("开启成功")
end


function bf8()
gg.setRanges(32)
gg.searchNumber("408;26112::5", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26112", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("130304", 4)
	 gg.toast("开启成功")
end



function bf9()
NH=gg.prompt({"输入boss代码(可多次修改↓)"},{[1]=""}) nh({{57983845202497689, 32, 32}, {13500416, 4, 4}, {65535, 16, 4}}, {{NH[1], 6, 2, false}})
gg.toast("buff修改成功\n     成功修改114514条树枝")
end

function bf10()
bby({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}}) 
gg.toast("追捕无限暴走开启成功\n     成功修改114514条树枝\n     可以让对面封号")
end
function bf11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1017D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限时间开启成功")
	 gg.clearResults()
end

function bf12()
xtnb({{false,300,0,4,nil,nil},{65536,76,4},{-256,136,4},{255,140,4}},{{999,48,16,false}},4,32,"输入功能名称")
end

function bf13()
local LL=gg.prompt({"↓酒桶范围↓","↓酒桶buff↓","↓酒桶伤害↓"},{[1]="999" },{[2]="300"},{[3]="200"})
fastsearch
({{1088421888,4,32},{1017370378,8,4},{1106247680,24,4}},
{
{LL[1],20,16}--范围
,{LL[2],160,4}--buff
,{LL[3],156,16}--伤害
})
end


function bf14()
function classSearch(className, offset) gg.clearResults() gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) gg.searchNumber("Q 00 '" .. className .. "' 00", gg.TYPE_BYTE) if (gg.getResultsCount() == 0) then print('没有发现类\n请确认是否初始化') end gg.searchPointer(0) gg.setRanges(32) local object = {} for k, v in pairs(gg.getResults(gg.getResultsCount())) do if (a(gotoPointer(gotoPointer(v.address - 8))):match(string.char(46, 100, 108, 108))) then v.address = v.address - 8 object[1] = v gg.loadResults(object) break end end gg.searchPointer(0) gg.searchPointer(0) local item = gg.getResults(gg.getResultsCount()) for k, v in pairs(item) do v.address = gotoPointer(v.address) + offset end return item end 
function editerObject(valObject, editerVal) for k, v in pairs(valObject) do v.value = editerVal[1] v.flags = editerVal[2] v.freeze = editerVal[3] end gg.setValues(valObject) gg.toast('小闪说开启成功\n共修改: ' .. gg.getResultsCount() .. '个结果') gg.clearResults() end

field = classSearch("BarrelObject", 276)
editerObject(field, {1500, 2, false})

field = classSearch("BarrelObject", 416)
editerObject(field, {10509, 2, false})end



function bf15()
     gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2F;30F;0.1F;0.2F;200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
     gg.editAll("300", gg.TYPE_FLOAT)
     while true do
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("102", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("103", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("107", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("108", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("202", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("206", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("300", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("301", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("552", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("509", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("510", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("522", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("204", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("542", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("573", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("10132", gg.TYPE_DWORD)
     gg.sleep(370)
	 end
end

function bsbsbsbs()
menu1 = gg.multiChoice({
'吼吼号实🕊',
'阻挡箱实🕊',
'跳高实体🕊',
'疾跑实体🕊',
'皮卡实体🕊',
'滑板实体🕊',
"️返回脚本️",
}, nil, os.date("新版本实体变身"))
if menu1 == nil then else
if menu1[1] == true then ngf1() end
if menu1[2] == true then ngf2() end
if menu1[3] == true then ngf3() end
if menu1[4] == true then ngf4() end
if menu1[5] == true then ngf5() end
if menu1[6] == true then ngf6() end
if menu1[7] == true then Main() end
end
GLWW=-1
end

function ngf11()
QQ=gg.prompt({"输入变身代码↓70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})end
function ngf2()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function ngf3()
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function ngf4()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function ngf5()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) QQ=gg.prompt({"输入变身代码70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{101,28,4}},{{QQ[1],8,4,false}})end
function ngf6()
QQ=gg.prompt({"输入变身代码↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) end

function a35sbsjdbsjsb()
local menu = gg.multiChoice({
"减逃生血",--1
"全图高亮",--2
"人物反伤",--3
"武器间隔",--4
"人物加速",--5
"人物高跳",--6
"极速回血",--7
"攻击吸血",--8
"无视护盾",--9
"无视夹子",--10
"角色技能",--11
"移动开物",--12
"击倒数量",--13
"营救次数",--14
"伤害数量",--15
"道具无冷",--16
"武器秒杀",--17
"三倍开锁",--18
"完美开锁",--19
"踩夹暴走",--20
"皮卡效果",--21
"跳高效果",--22
"渲染透视",--23
"快速回血",--24
"人物明透",--25
"反弹伤害",--26
"黎明盾位",--27
"命石抱摔",--28
"水忍滑铲",--29
"无视指盘",--30
"逃生减血",--31
"皮卡效果",--32
"一键控分",--33
"攻击吸血",--34
"明亮透视",--35
"酒桶一套",--36
"影忍技能",--37
"劲凯技能",--38
"梦魇免费",--39
"返回主页",
}, nil, "逃生功能")
if menu then
for i in pairs(menu) do
_ENV[({"r1","r2","r3","r4","r5","r6","r7","r8","r9","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28","r29","r30","r31","r32","r33","r34","r35","r36","r37","r38","r39","Main",})[i]]()
  end
 end 
end


function r1()--登录防闪
qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg={
{["value"] = 1, ["offset"] = -20, ["type"] = 16},
{["value"] = 1, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end

function r2()--全图高亮
qmnb = {
{["memory"] = 32},
{["name"] = "全图高亮"},
{["value"] = 8.0, ["type"]=16},
{["lv"] = 4,["offset"]=-4, ["type"]=4},
{["lv"] = 1,["offset"]=8, ["type"]=4},
{["lv"] = 8,["offset"]=12, ["type"]=4},
}
qmxg = {
{["value"] = 1, ["offset"] = 46, ["type"] = 4, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r3()--人物反伤
qmnb = {
{["memory"] = 32},
{["name"] = "人物反伤"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 176, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r4()--武器间隔
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r5()--人物加速
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r6()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r7()
qmnb = {
{["memory"] = 32},
{["name"] = "极速回血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 144, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r8()
qmnb = {
{["memory"] = 32},
{["name"] = "攻击吸血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 148, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r9()
qmnb = {
{["memory"] = 32},
{["name"] = "无视护盾"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 156, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r10()
qmnb = {
{["memory"] = 32},
{["name"] = "无视夹子"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r11()
qmnb = {
{["memory"] = 32},
{["name"] = "角色技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r12()
qmnb = {
{["memory"] = 32},
{["name"] = "移动开物"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = -1.5,["offset"] =4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =44, ["type"] = 16},
{["lv"] = 1.0,["offset"] =48, ["type"] = 16},
{["lv"] = -1.0,["offset"] =52, ["type"] = 16},
{["lv"] = 0.5,["offset"] =92, ["type"] = 16},
{["lv"] = 1.0,["offset"] =96, ["type"] = 16},
{["lv"] = -1.0,["offset"] =100, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =144, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r13()
qmnb = {
{["memory"] = 32},
{["name"] = "击倒次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =68, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r14()
qmnb = {
{["memory"] = 32},
{["name"] = "营救次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r15()
qmnb = {
{["memory"] = 32},
{["name"] = "造成伤害"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =48, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r16()
qmnb = {
{["memory"] = 32},
{["name"] = "道具无冷"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =12, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
{["lv"] = 1.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =24, ["type"] = 16},
}
xqmnb(qmnb)
end

function r17()
qmnb = {
{["memory"] = 32},
{["name"] = "武器秒杀"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 136, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r18()
qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3.0,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function r19()
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function r20()
qmnb = {
{["memory"] = 32},
{["name"] = "踩夹暴走"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
{["lv"] = 101,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 0.0,["offset"] =12, ["type"] = 16},
{["value"] = 111,["offset"] =16, ["type"] = 4},
}
xqmnb(qmnb)
end

function r21()
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡效果"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r22()
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "跳高效果"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r23()
qmnb = {
{["memory"] = 16384},
{["name"] = "渲染透视"},
{["value"] = -498368352, ["type"]=4},
{["lv"] = 0.0,["offset"]=-8, ["type"]=16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r24()--极速回血
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "极速回血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 144, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r25()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function r26()--人物反伤
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "人物反伤"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 176, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r27()--黎明盾卫
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "黎明盾卫第一步"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 60,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "黎明盾卫第二步"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 15.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function r28()--命石抱摔
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "命石抱摔"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = -12, ["type"] = 16},
}
qmxg = {
{["value"] = 1, ["offset"] = -156, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0, ["offset"] = -260, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = -256, ["type"] = 4, ["freeze"] = true},
{["value"] = 3.0, ["offset"] = -100, ["type"] = 16, ["freeze"] = true},
{["value"] = 80.0, ["offset"] = -96, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end  

function r29()--水忍滑铲
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "水忍滑铲"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 70,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4},
}
xqmnb(qmnb)
end

function r30()--无视锁盘
qmnb = {
{["memory"] = 32},
{["name"] = "无视锁盘"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function r31()
qmnb = {
{["memory"] = 32},
{["name"] = "逃生减血"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg={
{["value"] = 1.0, ["offset"] = -20, ["type"] = 16},
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end

function r32()
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡效果"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r33()
qmnb = {
{["memory"] = 32},
{["name"] = "一键控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end

function r34()--攻击吸血
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "攻击吸血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 0.20, ["offset"] = 148, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function r35()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function r36()--酒桶一套
gg.alert("酒桶一套配合减血直接秒杀！")
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶一套"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 99.0,["offset"] =-4, ["type"] = 16},
{["value"] = 1.0,["offset"] =132, ["type"] = 16},
{["value"] = 0,["offset"] =136, ["type"] = 4},
}
xqmnb(qmnb)
end

function r37()--影忍技能
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
qmnb = {
{["memory"] = 32},
{["name"] = "影忍技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
{["lv"] = 1036831949,["offset"] =-36, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4},
{["value"] = 1.5,["offset"] =84, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end  

function MTYUAN()
UI = "M"
local menu = gg.multiChoice({
"火箭筒换卡",
"皮卡换卡",
"阻挡箱换卡",
"拳套换卡",
"疾跑换卡",
"跳高换卡",
"返回主页"
},nil,os.date'换卡功能')
if menu then
for i in pairs(menu) do
_ENV[({"s1","s2","s3","s4","s5","s6","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------

function s1()
NH=gg.prompt({"输入要修改的武器:\n火箭筒1级200\n火箭筒2级201\n火箭筒3级202\n迫击炮1级210\n迫击炮2级211\n迫击炮3级212\n冲锋枪1级230\n冲锋枪2级231\n冲锋枪3级\n能量剑1级240\n能量剑2级241\n能量剑3级242\n蹦蹦枪1级250\n蹦蹦枪2级251\n蹦蹦枪3级252\n能量腕炮1级280\n能量腕炮2级281\n能量腕炮3级282\n霰弹枪1级290\n霰弹枪2级291\n霰弹枪3级292\n唤风标1级300\n唤风标2级301\n唤风标3级302"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "火箭筒换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 64048, ["offset"] = 32, ["type"] = 4},
{["lv"] = 25600, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function s2()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 46129, ["offset"] = 32, ["type"] = 4},
{["lv"] = 28416, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function s3()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "阻挡箱换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 77056, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function s4()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "拳套换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 259072, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function s5()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 20528, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51200, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function s6()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "跳高换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25653, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51456, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)  
end

function VLFK12346S()
menu1 = gg.multiChoice({
'霸天虎连发',
'冲锋枪连发',
'自动手枪连发',
'能量剑连发',
'晚炮连发',
'火箭筒连发',
'蹦蹦枪连发',
'乱斗火箭筒连发',
'电球枪连发',
'盾卫连发',
'红蜘蛛炮连发',
'换风标连发',
'回旋镖连发',
'迫击炮连发',
'热破炮连发',
'散弹枪连发',
'生物手枪连发',
'圣女连发',
'威整天炮连发',
'像素键连发',
'水枪连发',
'返回上一页'},
nil,'连发功能~有效')
if menu1 == nil then else
if menu1[1] == true then a66661() end
if menu1[2] == true then a66662() end
if menu1[3] == true then a66663() end
if menu1[4] == true then a66664() end
if menu1[5] == true then a66665() end
if menu1[6] == true then a66666() end
if menu1[7] == true then a66667() end
if menu1[8] == true then a66668() end
if menu1[9] == true then a66669() end
if menu1[10] == true then a666610() end
if menu1[11] == true then a666611() end
if menu1[12] == true then a666612() end
if menu1[13] == true then a666613() end
if menu1[14] == true then a666614() end
if menu1[15] == true then a666615() end
if menu1[16] == true then a666616() end
if menu1[17] == true then a666617() end
if menu1[18] == true then a666618() end
if menu1[19] == true then a666619() end
if menu1[20] == true then a666620() end
if menu1[21] == true then a666621() end
if menu1[22] == true then HOME() end
end
GLWW=-1
end
function a66661()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function a66662()
NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a66663()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a66664()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function a66665()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a66666()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a66667() 
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function a66668()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a66669()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function a666610()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function a666611()
NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a666612()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a666613()
NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a666614()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a666615()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a666616()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function a666617()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function a666618()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a666619()
NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function a666620()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function a666621()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

function JA1JAJA()
SW="角色一区"

menu1 = gg.multiChoice({
"全角色技能免费[大厅]",--1
"全角色技能无冷[大厅]",--2
"玖儿免费无冷[局内]",--3
"玖儿加血减血[局内]",--4
"玖儿长度时间[局内]",--5
"奥博免费无冷[局内]",--6
"奥博范围伤害[局内]",--7
"奥博电击时间[局内]",--8
"团子免费无冷[局内]",--9
"团子技能变身[局内]",--10
"影忍免费无冷[局内]",--11
"影忍被动BUff[局内]",--12
"影忍技能落地[局内]",--13
"命石免费无冷[局内]",--14
"命石抱摔距离[局内]",--15
"命石抱摔冲刺[局内]",--16
"命石锁定抱摔[局内]",--17
"盾位普攻连发[局内]",--18
"劲凯超级技能[局内]",--19
"新角色一套",
"小狮子一套",
"命使者一套",
"忍者技能",
"水忍冲刺距离加强",
"盾卫加强",
"缈技能加强",
"艾克加强",
"奥博改变形金刚1",
"奥博改变形金刚2",
"奥博改变形金刚3",
"奥博改变形金刚4",
"奥博改变形金刚5",
"奥博改变形金刚6",
"奥博改迪迦",
"奥博改泽塔",
"奥博改赛罗",
"团子改擎天柱",
"团子改大黄蜂",
"团子改热破",
"团子改威震天",
"团子改声波",
"团子改红蜘蛛",
"团子改迪迦",
"团子改赛罗",
"艾克全屏",
"抱摔定人",
"圣女范围",
"小骇客技能数量+免费",
"小骇客技能无冷",
"超进化黎明吨位范围拉人",
"魔术师木偶无限释放",
"星辰普攻 瞬移 无间隔",
"超进化艾可",
"缈技能范围",
"缈免费无冷",
"命使者cd免费锁抱摔",
"狐狸技能杀队友",
"狐狸技能无冷",
"狐狸技能护盾99999",
"机械之心一套",
"水忍一套",
"水忍技能加护盾9999",
"小骇客远程开物加强",
"梦魇技能泡泡伤害",
"团技能免费",
"小梦魇被动无限无敌时间",
"小梦魇主技能免费",
"失忆者购买2道具必出免费",
"艾克回血加强",
"返回主页",--20
}, nil, os.date("都是精华"))
if menu1 == nil then gg.toast("取消首页") else
if menu1[1] == true then S1() end
if menu1[2] == true then S2() end
if menu1[3] == true then S3() end
if menu1[4] == true then S4() end
if menu1[5] == true then S5() end
if menu1[6] == true then S6() end
if menu1[7] == true then S7() end
if menu1[8] == true then S8() end
if menu1[9] == true then S9() end
if menu1[10] == true then S10() end
if menu1[11] == true then S11() end
if menu1[12] == true then S12() end
if menu1[13] == true then S13() end
if menu1[14] == true then S14() end
if menu1[15] == true then S15() end
if menu1[16] == true then S16() end
if menu1[17] == true then S17() end
if menu1[18] == true then S18() end
if menu1[19] == true then S19() end
if menu1[20] == true then ppb2() end
if menu1[21] == true then ppb3() end
if menu1[22] == true then ppb4() end
if menu1[23] == true then ppb5() end
if menu1[24] == true then ppb6() end
if menu1[25] == true then ppb7()end
if menu1[26] == true then ppb8() end
if menu1[27] == true then ppb9() end
if menu1[28] == true then ppb10() end
if menu1[29] == true then ppb11() end
if menu1[30] == true then ppb12() end
if menu1[31] == true then ppb13() end
if menu1[32] == true then ppb14() end
if menu1[33] == true then ppb15() end
if menu1[34] == true then ppb16() end
if menu1[35] == true then ppb17() end
if menu1[36] == true then ppb18() end
if menu1[37] == true then ppb19() end
if menu1[38] == true then ppb20() end
if menu1[39] == true then ppb21() end
if menu1[40] == true then ppb22() end
if menu1[41] == true then ppb23() end
if menu1[42] == true then ppb24() end
if menu1[43] == true then ppb25() end
if menu1[44] == true then ppb26() end
if menu1[45] == true then ppb27() end
if menu1[46] == true then ppb28() end
if menu1[47] == true then ppb29() end
if menu1[48] == true then ppb30() end
if menu1[49] == true then ppb31() end
if menu1[50] == true then ppb32() end
if menu1[51] == true then ppb33() end
if menu1[52] == true then ppb34() end
if menu1[53] == true then ppb35() end
if menu1[54] == true then ppb36() end
if menu1[55] == true then ppb37() end
if menu1[56] == true then ppb38() end
if menu1[57] == true then ppb39() end
if menu1[58] == true then ppb40() end
if menu1[59] == true then ppb41() end
if menu1[60] == true then ppb42() end
if menu1[61] == true then ppb43() end
if menu1[62] == true then ppb44() end
if menu1[63] == true then ppb45() end
if menu1[64] == true then ppb46() end
if menu1[65] == true then ppb47() end
if menu1[66] == true then ppb48() end
if menu1[67] == true then ppb49() end
if menu1[68] == true then ppb50() end
if menu1[69] == true then ppb51() end
if menu1[70] == true then ppb52() end
if menu1[71] == true then HOME() end
end
end

function S1()--角色技能免费
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1fea584},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fea588},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1fe9644},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fe9648},})
end

function S2()--角色技能无冷
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1fea4fc},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fea4fc+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1febb48},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1febb4C},})
nc_offset(getso("libil2cpp.so"),{{-476050943,4,0x1feb894},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb898},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1feb008},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb00C},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1feb354},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb358},})
end

function S3()
fastsearch({{1060306944,4,32},{1056964608,4,4},{50,120,4}},{{0,120,4,true},{0,116,4,false}})
end

function S4()
QQ=gg.prompt({"输入加血或者扣血数字(可进行多次修改)↓"},{[1]=""})
if QQ == nil then
Main()
end

if QQ[1] == nil then
gg.toast("请输入值")
Main()
end

fastsearch({{-1035468800,4,32},{1065353216,4,4},{1065353216,148,4}},{{-QQ[1],96,16,true}})
gg.toast("成功修改"..QQ[1].."血量")
end

function S5()
fastsearch({{10, 16, 32}, {6, 4, 16}, {5, 8, 16}, {10, 12, 16}}, {{9999, 0, 16},{999,4,16},{0,8,16},{99,12,16,false}})
end

function S6()
fastsearch({{-934560717,4,32},{1090519040,-36,4}},{{0,-32,4,true},{0,-36,4,false}})
end

function S7()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
end

function S8()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end

function S9()
fastsearch({{-934560717,4,32},{1092616192,-36,4}},{{0,-32,4},{0,-36,4,false}})
end	
				
function S10()
QQ=gg.prompt({"迪迦--500001\n赛罗--500002\n泽塔--500003\n飞天虎--90006\n千斤顶--90005输入代码(可进行多次修改)↓"},{[1]=""})
if QQ == nil then
Main()
end

if QQ[1] == nil then
gg.toast("请输入值")
Main()
end

fastsearch({{1.29999995232,16,32},{1069547520,-4,4},{1045220557,-20,4}},{{QQ[1]+50000,-8,4,false}})
end

function S11()
fastsearch({{-934560717,4,32},{80,-32,4}},{{0,-36,4},{0,-32,4,true}})
end

function S12()
fastsearch({{1077936128,4,32},{533,16,4}},{{108,4,4},{111,12,4,false}})
end

function S13()
fastsearch({{8,16,32},{1,4,16},{7,8,16}},{{0,8,16,false}})
end
function S14()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end

function S15()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{10,-100,16},{99,-96,16,false}})
end

function S16()
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{20, 20, 16, false}})
end

function S17()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{1.40129846e-45,-268,16,true}})
end

function S18()
local LL=gg.prompt({"连发数量[多次修改]"},{[1]="30" })
fastsearch
({{4.09628731e12,16,32},{1090519040,372,4},{1109393408,392,4},{3,396,4},},{{LL[1],400,4,false}})
end

function S19()
local LL=gg.prompt({"↓伤害↓","↓吸人范围↓","↓冲刺距离↓","↓吸人时间↓","↓当前主动技能金币↓"},{[1]="200" },{[2]="999"},{[3]="999"},{[4]="999"},{[5]="100"})
fastsearch
({{-934560717,4,32},{LL[5],-0x20,4},{8,-0x24,16}},
{
{0,-0x20,4}--金币
,{0,-0x24,16}--冷却时间
,{LL[1],0x94,16}--伤害
,{LL[2],0x4C,16}--范围
,{LL[3],0x64,16}--攻击距离
,{LL[4],0x70,16}--吸人时间
})
end


function ppb2()
local a=gg.prompt({"你要改的技能间隔"}, {[1] = 0}, {[1] = "text"})
local b=gg.prompt({"你要改的技能花费金币"}, {[1] = 0}, {[1] = "text"})
local c=gg.prompt({"你要改的伤害"}, {[1] = 999}, {[1] = "text"})
local d=gg.prompt({"你要改的怒气值"}, {[1] = 999}, {[1] = "text"})
local qmnb=
{
{['memory']=32},
{['name']='新角色技能'},
{['value']=100.0, ['type']=16},
{['lv']=3.5,['offset']=-44, ['type']=16},
{['lv']=0.30000001192092896,['offset']=-28, ['type']=16},
}
local qmxg=
{
{['value']=a[1],['offset']=-164,['type']=16},
{['value']=b[1],['offset']=-160,['type']=4},
{['value']=c[1],['offset']=20,['type']=16},
{['value']=d[1],['offset']=28,['type']=16},
}
xqmnb(qmnb,qmxg)
end


function ppb3()--狮子
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子范围+伤害＋免费"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-24, ["type"] = 16},
{["value"] = 1,["offset"] =-0x1C, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 0.30000001192092896,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-20, ["type"] = 16},
{["value"] = 1.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end


function ppb4()
qmnb = {
{["memory"] = 32},
{["name"] = "抱摔高度+距离+伤害"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.0,["offset"] =-100, ["type"] = 16},
{["value"] = 80.0,["offset"] =-96, ["type"] = 16},
{["value"] = 1.0,["offset"] =-84, ["type"] = 16},
}
xqmnb(qmnb)
end




function ppb5()--水忍者
LMss("WaterEscape",0x20,4,9999999)
LMss("WaterEscape",0x24,16,0)
LMss("WaterEscape",0x28,4,0)
end


function ppb6()
LMss("WaterEscapeObject",0x24,16,8)
LMss("WaterEscapeObject",0x28,16,8)
LMss("WaterEscapeObject",0x2c,16,8)
end


function ppb7()--盾卫
LMss("Charge",0x24,4,0)
LMss("Charge",0x28,4,0)
LMss("Block",0x24,4,0)
LMss("Block",0x28,4,0)
end




  function ppb8()
qmnb = {
{["memory"] = 32},
{["name"] = "渺"},
{["value"] = 80, ["type"] = 4},
{["lv"] = 2, ["offset"] = -8, ["type"] = 4},
{["lv"] = 0.10000000149011612, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -4, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
  end

function ppb9()--艾可
LMss("Leap",0x20,4,99999999)
LMss("Leap",0x28,4,0)
end




function ppb10()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚1"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90001, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb11()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚2"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90002, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb12()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚3"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90003, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb13()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚4"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90004, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb14()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚5"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90005, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb15()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚6"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90006, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end


function ppb16()
qmnb = {
{["memory"] = 32},
{["name"] = "迪迦"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 50003, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb17()
qmnb = {
{["memory"] = 32},
{["name"] = "泽塔"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 50001, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ppb18()
qmnb = {
{["memory"] = 32},
{["name"] = "赛罗"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 50002, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end


function ppb19()
qmnb = {
      {["memory"] = 32},
      {["name"] = "擎天柱"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90001, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end

function ppb20()
qmnb = {
      {["memory"] = 32},
      {["name"] = "大黄蜂"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90002, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end

function ppb21() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "热破"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90003, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end

function ppb22() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "威震天"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90004, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end

function ppb23() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "声波"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90005, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end

function ppb24() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "红蜘蛛"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90006, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)  
end    


function ppb25() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "迪迦"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 50003, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)  
end    


function ppb26() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "赛罗"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 50002, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)  
end    


function ppb27() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "泽塔"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 50001, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)  
end    



function ppb28()
gg.setRanges(32)
gg.searchNumber("2.5;50", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", 16)
gg.toast("艾可全屏")
end

function ppb29()
qmnb = {
{["memory"] = 32},
{["name"] = "抱摔定人"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-88, ["type"] = 16},
}
xqmnb(qmnb)
end

function ppb30()
qmnb = {
{["memory"] = 32},
{["name"] = "圣女范围1"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 4.0,["offset"] =-0x28, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "圣女范围2"},
{["value"] = 0.6000000238418579, ["type"] = 16},
{["lv"] = 8.0,["offset"] =4, ["type"] = 16},
{["lv"] = 6.0,["offset"] =8, ["type"] = 16},
{["lv"] = 4.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end


function ppb31()
qmnb = {
{["memory"] = 32},
{["name"] = "小骇客技能数量+免费"},
{["value"] = 8.407790785948902E-44, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 9999, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
end


function ppb32()
readWrite({{false,60.0,0,16,nil,nil},{55.0,4,16},{50.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能无冷却")
end--骇客无冷


function ppb33()
u=gg.prompt({"输入你的当前60主技能的冷却"},{15.0},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "超进化黎明吨位范围拉人"},
{["value"] = 0.800000011920929, ["type"] = 16},
{["lv"] = u[1], ["offset"] = -124, ["type"] = 16},
{["lv"] = 60, ["offset"] = -120, ["type"] = 4},
{["lv"] = 1.25, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -124, ["type"] = 16, ["freeze"] = false},
{["value"] = 0, ["offset"] = -120, ["type"] = 4, ["freeze"] = false},
{["value"] = 99, ["offset"] = -8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end



function ppb34()
qmnb = {
{["memory"] = 32},
{["name"] = "超进化魔术师"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 100, ["offset"] = 64, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function ppb35()
qmnb = {
{["memory"] = 32},
{["name"] = "星辰普攻 瞬移，无间隔，"},
{["value"] = 0.30000001192092896, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = -4, ["type"] = 16},
{["lv"] = 7.5, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6000000238418579, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.4, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
{["value"] = 100, ["offset"] = 0, ["type"] = 16, ["freeze"] = false},
{["value"] = 1, ["offset"] = 4, ["type"] = 16, ["freeze"] = false},
{["value"] = 0, ["offset"] = 8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function ppb36()
qmnb = {
{["memory"] = 32},
{["name"] = "超进化艾可"},--免费cd落地时间
{["value"] = 50.0, ["type"] = 16},
{["lv"] = 1, ["offset"] = -140, ["type"] = 4},
{["lv"] = 80, ["offset"] = -132, ["type"] = 4},
{["lv"] = 0.800000011920929, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 520, ["offset"] = -140, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = -132, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function ppb37()
qmnb = {
{["memory"] = 32},
{["name"] = "影范围"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 99, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end



function ppb38()
fastsearch({{80, 4, 32}, {1, -8, 4}, {0.10000000149011612, -4, 16}}, {{520, -8, 4, false}, {0, -4, 16, false}, {0, 0, 4, false}})
end--影免费无冷


function ppb39()
u=gg.prompt({"输入你的当前主技能的冷却"},{},{"number"})
f=gg.prompt({"输入你的当前主技能的金币"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "命实者cd免费锁抱摔"},
{["value"] =  u[1], ["type"] = 16},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] =  f[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function ppb40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;6;7;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99999", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--狐狸杀队友天赋界面开



function ppb41()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("35;30;25;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("这里是改善的值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--狐狸冷却天赋开


function ppb42()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;6;7;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("这里是改善的值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--狐狸加护盾天赋界面开


function ppb43()--机械之心范围+伤害＋免费
qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = 1,["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 0.30000001192092896,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-20, ["type"] = 16},
{["value"] = 1.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end


function ppb44()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] = 0.5 } , 
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  60},
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -4 , ["冻结"] =  false  , ["修改"] = 666  } , --技能
  {["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] = 0  } , ---冷却
   {["类型"] =  4 ,["偏移"] =  4 , ["冻结"] =  false  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end--水忍一套


function ppb45()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;38;43;48::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--水忍护盾


function ppb46()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.3;1.6;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end---小孩客远距离开物

function ppb47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;10;15;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--小梦魇泡泡伤害


function ppb48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80;75;65;60::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end---团子技能免费


function ppb49()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;4;5;7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--小梦魇无敌时间

function ppb50()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;135;120;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("小羽神牛逼")
	 gg.clearResults()
end--小梦魇主技能免费

function shwkv1546vsbdheh()
SW="光之力区"

    menu1 = gg.multiChoice({
      "赛罗锁子弹",
      "赛罗无间隔",
      "泽塔锁子弹",
      "泽塔无间隔",
      "迪迦无间隔+锁子弹",
      "迪迦光线无限时间",
      "返回主页"
    }, nil, os.date("\n当前时间:%Y年%m月%d日%H时%M分%S秒"))
    if menu1 == nil then
    else
      if menu1[1] == true then
        m1()
      end
      if menu1[2] == true then
        m2()
      end
      if menu1[3] == true then
        m3()
      end
      if menu1[4] == true then
        m4()
      end
      if menu1[5] == true then
        m5()
      end
      if menu1[6] == true then
        m6()
      end
      if menu1[7] == true then
        HOME()
      end
    end
    GLWW = -1
  end



function m1()
    editData({
      {
        memory = gg.REGION_ANONYMOUS
      },
      {name = "赛罗锁"},
      {value = -1097229926, type = 4},
      {
        lv = 5,
        offset = 64,
        type = 4
      }
    }, {
      {
        value = 5,
        offset = 64,
        type = 4,
        freeze = true
      }
    })
    gg.clearResults()
  end
  
  function m2()
    editData({
      {
        memory = gg.REGION_ANONYMOUS
      },
      {
        name = "赛罗间隔"
      },
      {value = -0.30000001192, type = 16},
      {
        lv = 0.75,
        offset = 32,
        type = 16
      }
    }, {
      {
        value = 0,
        offset = 32,
        type = 16,
        freeze = true
      }
    })
    gg.clearResults()
  end
  
function m3()
    editData({
      {
        memory = gg.REGION_ANONYMOUS
      },
      {
        name = "泽塔间隔"
      },
      {value = -0.30000001192, type = 16},
      {
        lv = 0.75,
        offset = 32,
        type = 16
      }
    }, {
      {
        value = 0,
        offset = 32,
        type = 16,
        freeze = true
      }
    })
    gg.clearResults()
  end


function m4()
    editData({
      {
        memory = gg.REGION_ANONYMOUS
      },
      {name = "泽塔锁"},
      {value = -1097229926, type = 4},
      {
        lv = 3,
        offset = 64,
        type = 4
      }
    }, {
      {
        value = 3,
        offset = 64,
        type = 4,
        freeze = true
      }
    })
    gg.clearResults()
  end
  
  function m5()
gg.setRanges(32)
gg.clearResults()
gg.searchNumber("12;1.5;3;1.5",16)
gg.searchNumber(12,16)
q=gg.getResults(500)
for k=1,#q do
gg.addListItems({{address=q[k].address+0x58,flags=4,value=100,freeze=true}})
end

end
  
  function m6()
qmnb = {
{["memory"] = 32},
{["name"] = "激光无限"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.5,["offset"] =4, ["type"] = 16},
{["lv"] = 3.0,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =28, ["type"] = 4},
{["value"] = 999,["offset"] =60, ["type"] = 16},
}
xqmnb(qmnb)
end              

function c30sgjsgshsvs()
SW="变形金刚"

SN = gg.choice({
"威震天范围",
"威震天射程",
"威震天全屏范围",
"擎天柱范围",
"红蜘蛛范围",
"返回页面",
}, nil, "作者：小羽神\n变形金刚mm")
if SN== nil then 
gg.toast("取消首页")
end
if SN==1 then
    BX1()
end
if SN==2 then
	 BX2()
end
if SN==3 then
	 BX3() 
end
if SN==4 then
     BX4()
end
if SN==5 then
     BX5()
end
if SN==6 then
	 HOME()
end
FX1=0
end
  function BX1()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{1114636288, 32, 32}, {0.800000011920929, -76, 16}, {1065353216, -32, 4}, {1071225242, -24, 4}, {1056964608, -20, 4}, {1062836634, -12, 4}, {2.5, 12, 16}, {90200, 16, 4}, {1070386381, -36, 4}}, {{5, -36, 16, false}})
end

function BX2()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{4333543705419175690, 32, 32}, {7.5, -16, 16}, {0.05999999865889549, -12, 16}, {0.009999999776482582, 4, 16}, {1008981770, 8, 4}, {1028443341, 16, 4}}, {{66, -16, 16, false}})
end

function BX3()
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("威震天")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("威震天")
		else
		gg.toast("威震天")
		end
	end
end

fastsearch({{0.5,16,32},{0.75,4,16},{10000000,-4,4}},{{0,-164,4},{0,0,4},{0,4,4,false}})
end

function BX4()
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("目前没有值修改")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("开启成功")
		else
		gg.toast("目前没有值修改")
		end
	end
end
fastsearch({{0.20000000298,16,32},{4,4,16},{3,8,16},{60,12,16},{120,16,16},{6,32,16},{2.5,40,16}},{{10,24,16},{0,20,4,false}})
end

function BX5()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--夏天

xtnb({{false,0.36000001430511475,0,16,nil,nil},{0.36000001430511475,4,16},{0.4000000059604645,8,16},{0.699999988079071,48,16}},{{99,52,16,false}},16,32,"红蜘蛛范围")
end

function PTBSPTBS()
SN =gg.multiChoice({
"奥摩",
"团子",
},nil,os.date'')
if SN== nil then 
gg.toast("取消首页")
end
if SN==1 then
Jhwjsbshp1()
end
if SN==2 then
Jhsjshshp2()
end
FX1=0
end

function Jhwjsbshp1()
SN =gg.multiChoice({
"变形金刚1",
"变形金刚2",
"变形金刚3",
"变形金刚4",
"变形金刚5",
"变形金刚6",
 },nil,os.date'奥摩')
  if SN == nil then
  else
  if SN[1] == true then
   ar1()
  end
  if SN[2] == true then
   ar2()
  end
  if SN[3] == true then
   ar3()
   end
  if SN[4] == true then
   ar4()
   end   
  if SN[5] == true then
   ar5()
   end
  if SN[6] == true then
   HOME()
   end
end
end
  XGCK = -1

function ar1()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚1"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90001, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ar2()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚2"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90002, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ar3()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚3"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90003, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ar4()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚4"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90004, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ar5()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚5"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90005, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function ar6()
qmnb = {
{["memory"] = 32},
{["name"] = "变形金刚6"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90006, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end

function Jhsjshshp2()
SN =gg.multiChoice({
"擎天柱",
"大黄蜂",
"热破",
"威震天",
"声波",
"红蜘蛛",
 },nil,os.date'团子')
  if SN == nil then
  else
  if SN[1] == true then
   are1()
  end
  if SN[2] == true then
   are2()
  end
  if SN[3] == true then
   are3()
   end
  if SN[4] == true then
   are4()
   end   
  if SN[5] == true then
   are5()
   end
  if SN[6] == true then
   are6()
   end
  end
end
  XGCK = -1

function are1()
qmnb = {
      {["memory"] = 32},
      {["name"] = "擎天柱"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90001, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end

function are2()
qmnb = {
      {["memory"] = 32},
      {["name"] = "大黄蜂"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90002, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end

function are3() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "热破"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90003, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end

function are4() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "威震天"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90004, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end

function are5() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "声波"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90005, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end

function are6() 
qmnb = {
      {["memory"] = 32},
      {["name"] = "红蜘蛛"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90006, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)  
end

function JP33()
qmnb = {
{["memory"] = 32},
{["name"] = "劲铠牵制范围"},
{["value"] = 0.95, ["type"] = 16},
{["lv"] = 0.25,["offset"] =36, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =36, ["type"] = 16},
}
xqmnb(qmnb)
end

function JS2jsjsjsjsjs()
SW="角色二区"

SN = gg.choice({
     "改变形金刚[大厅]",
     "盾位范围拉人[局内]",
     "魔术师无线木偶[局内]",
     "圣女 普功 位移 无间隔[局内] ",
     "艾可免费CD落地时间[局内]",
     "影之忍者范围[局内]",
     "影之忍者CD免费[局内]",
     "命石者免费锁暴摔[局内]",
     "命食者高度距离伤害[局内]",
     "小狮子范围伤害免费[局内]",
     "小狐狸杀队友[小狐狸天赋页面]",
     "小狐狸冷却[小狐狸天赋页面]",
     "小狐狸加护盾[小狐狸天赋页面]",
     "机械之心范围 伤害 免费[局内]",
     "水影忍者护盾值增加1000[角色天赋页面]",
     "水忍者无限技能[角色天赋页面]",
     "水忍者一套 技能 冷却 金币[局内]",
     "小骇客远距离开物[天赋页面]",
     "小梦魇泡泡伤害[天赋页面]",
     "小狮子全屏秒杀[局内]",
     "灵膳子技能免费[天赋界面]",
     "小梦魇梦魇之力持续时间[天赋页面]",
     "小梦魇主技能免费[天赋页面开]",
     "失忆者两卡必出免费[天赋界面]",
     "艾可生命和恢复时间[天赋界面]",
     "小骇客无冷却[局内]",
     "奥博技能免费[局内]",
     "小狐狸冷却免费[局内]",
     "小骇客数量免费[局内]",
     "圣女范围[局内]",
     "艾克全屏[局内]",
     "暴摔定人[局内]",
     "劲凯功能[局内]",
     "星辰技能[局内]",
     "返回页面",
}, 0,os.date("\n："..os.date"%c"))
if SN== nil then 
gg.toast("取消首页")
end
if SN==1 then
gg.toast("你打开了")
	 JP1()
end
if SN==2 then
gg.toast("你打开了")
	 JP2()
end
if SN==3 then
gg.toast("你打开了")
	 JP3()
end     
if SN==4 then
gg.toast("你打开了")
	 JP4()
end     
if SN==5 then
gg.toast("你打开了")
	 JP5()
end     
if SN==6 then
gg.toast("你打开了")
	 JP6()
end     
if SN==7 then
gg.toast("你打开了")
	 JP7()
end     
if SN==8 then
gg.toast("你打开了")
	 JP8()
end     
if SN==9 then
gg.toast("你打开了")
	 JP9()
end     
if SN==10 then
gg.toast("你打开了")
	 JP10()
end     
if SN==11 then
gg.toast("你打开了")
	 JP11()
end     
if SN==12 then
gg.toast("你打开了")
	 JP12()
end     
if SN==13 then
gg.toast("你打开了")
	 JP13()
end 
if SN==14 then
gg.toast("你打开了")
     JP14()  
end       
if SN==15 then
gg.toast("你打开了")
     JP15()               
end 
if SN==16 then
gg.toast("你打开了")
     JP16()  
end
if SN==17 then
gg.toast("你打开了")
     JP17()      
end
if SN==18 then
gg.toast("你打开了")
     JP18()
end
if SN==19 then
gg.toast("你打开了")
     JP19()
end     
if SN==20 then
gg.toast("你打开了")
     JP20()     
end    
if SN==21 then
gg.toast("你打开了")
     JP21()     
end     
if SN==22 then
gg.toast("你打开了")
     JP22()     
end 
if SN==23 then
gg.toast("你打开了")
     JP23()    
end
if SN==24 then
gg.toast("你打开了")  
     JP24()
end    
if SN==25 then
gg.toast("你打开了") 
     JP25()
end 
if SN==26 then
gg.toast("你打开了")
     JP26() 
end  
if SN==27 then
gg.toast("你打开了")
     JP27()
end 
if SN==28 then
gg.toast("你打开了")
     JP28()     
end
if SN==29 then
gg.toast("你打开了")
     JP29()     
end  
if SN==30 then
gg.toast("你打开了")
     JP30()     
end          
if SN==31 then
gg.toast("你打开了")
	 JP31()
end  
if SN==32 then   
gg.toast("你打开了")
     JP32()    
end     
if SN==33 then
gg.toast("你打开了")
     JP33()
end
if SN==34 then
gg.toast("你打开了")
     JP34()
end
if SN==35 then
     print("返回主页")
	 HOME()
end
FX1=0
end
function JP1()
qmnb = {
{["memory"] = 16},
{["name"] = "防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function JP2()
u=gg.prompt({"输入你的当前60主技能的冷却"},{15.0},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "超进化黎明吨位范围拉人"},
{["value"] = 0.800000011920929, ["type"] = 16},
{["lv"] = u[1], ["offset"] = -124, ["type"] = 16},
{["lv"] = 60, ["offset"] = -120, ["type"] = 4},
{["lv"] = 1.25, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -124, ["type"] = 16, ["freeze"] = false},
{["value"] = 0, ["offset"] = -120, ["type"] = 4, ["freeze"] = false},
{["value"] = 99, ["offset"] = -8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function JP3()
qmnb = {
{["memory"] = 32},
{["name"] = "超进化魔术师"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 100, ["offset"] = 64, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function JP4()
qmnb = {
{["memory"] = 32},
{["name"] = "星辰普攻 瞬移，无间隔，"},
{["value"] = 0.30000001192092896, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = -4, ["type"] = 16},
{["lv"] = 7.5, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6000000238418579, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.4, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
{["value"] = 100, ["offset"] = 0, ["type"] = 16, ["freeze"] = false},
{["value"] = 1, ["offset"] = 4, ["type"] = 16, ["freeze"] = false},
{["value"] = 0, ["offset"] = 8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function JP5()
qmnb = {
{["memory"] = 32},
{["name"] = "超进化艾可"},--免费cd落地时间
{["value"] = 50.0, ["type"] = 16},
{["lv"] = 1, ["offset"] = -140, ["type"] = 4},
{["lv"] = 80, ["offset"] = -132, ["type"] = 4},
{["lv"] = 0.800000011920929, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 520, ["offset"] = -140, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = -132, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function JP6()
qmnb = {
{["memory"] = 32},
{["name"] = "影范围"},
{["value"] = 0.20000000298023224, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 99, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function JP7()
fastsearch({{80, 4, 32}, {1, -8, 4}, {0.10000000149011612, -4, 16}}, {{520, -8, 4, false}, {0, -4, 16, false}, {0, 0, 4, false}})
end

function JP8()
u=gg.prompt({"输入你的当前主技能的冷却"},{},{"number"})
f=gg.prompt({"输入你的当前主技能的金币"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "命实者cd免费锁抱摔"},
{["value"] =  u[1], ["type"] = 16},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] =  f[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function JP9()
qmnb = {
{["memory"] = 32},
{["name"] = "抱摔高度+距离+伤害"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.0,["offset"] =-100, ["type"] = 16},
{["value"] = 80.0,["offset"] =-96, ["type"] = 16},
{["value"] = 1.0,["offset"] =-84, ["type"] = 16},
}
xqmnb(qmnb)
end

function JP10()--狮子
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子范围+伤害＋免费"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-24, ["type"] = 16},
{["value"] = 1,["offset"] =-0x1C, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)
end

function JP11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;6;7;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99999", gg.TYPE_FLOAT)
	 gg.toast("成功进化")
	 gg.clearResults()
end


function JP12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("35;30;25;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("这里是改善的值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function JP13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;6;7;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("这里是改善的值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function JP14()--机械之心范围+伤害＋免费
qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = 1,["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end

function JP15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;38;43;48::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function JP16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;52;44;36::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function JP17()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] = 0.5 } , 
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  60},
}
 local tb2={ 
 {["类型"] =  4 ,["偏移"] =  -4 , ["冻结"] =  false  , ["修改"] = 666  } , --技能
  {["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] = 0  } , ---冷却
   {["类型"] =  4 ,["偏移"] =  4 , ["冻结"] =  false  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end

function JP18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.3;1.6;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("开启成功，修改了4条数据")
	 gg.clearResults()
end

function JP19()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5;10;15;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("be")
	 gg.clearResults()
end

function JP20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Bbox")
	 gg.clearResults()
end

function JP21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80;75;65;60::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("666")
	 gg.clearResults()
end

function JP22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;4;5;7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("cg")
	 gg.clearResults()
end

function JP23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;135;120;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("cvbb")
	 gg.clearResults()
end

function JP24()--失忆者购买2道具必出免费[大厅开](天赋两级以上)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.05;0.075;0.125::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.05;0.075;0.125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("购物达人开启成功")
	 gg.clearResults()
end

function JP25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;20;16;8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("修改成功,已修改16条数据")
	 gg.clearResults()
end


function JP26()
readWrite({{false,60.0,0,16,nil,nil},{55.0,4,16},{50.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能无冷却")
end



function JP27()
readWrite({{false,140.0,0,16,nil,nil},{135.0,4,16},{125.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能免费")
end

function JP28()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] =10.0 } , 
{["类型"]=  4  ,["偏移"]=  -80  ,["副特征码"]= 50},
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  -84 , ["冻结"] =  false  , ["修改"] = 0  } , --冷却
  {["类型"] =  16 ,["偏移"] =  -80 , ["冻结"] =  true  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end

function JP29()
qmnb = {
{["memory"] = 32},
{["name"] = "琪琪技能"},
{["value"] = 8.407790785948902E-44, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 9999, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
end

function JP30()
qmnb = {
{["memory"] = 32},
{["name"] = "圣女范围1"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 4.0,["offset"] =-0x28, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "圣女范围2"},
{["value"] = 0.6000000238418579, ["type"] = 16},
{["lv"] = 8.0,["offset"] =4, ["type"] = 16},
{["lv"] = 6.0,["offset"] =8, ["type"] = 16},
{["lv"] = 4.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function JP31()
gg.setRanges(32)
gg.searchNumber("2.5;50", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", 16)
gg.toast("艾可全屏")
end

function JP32()
qmnb = {
{["memory"] = 32},
{["name"] = "抱摔定人"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-88, ["type"] = 16},
}
xqmnb(qmnb)
end

function opopopop123123()
io.open('/sdcard/Download/人物移速','w'):write(0)
io.open('/sdcard/Download/人物血量','w'):write(0)
io.open('/sdcard/Download/开锁速度','w'):write(0)
io.open('/sdcard/Download/人物视角','w'):write(0)
io.open('/sdcard/Download/全局加速','w'):write(0)
io.open('/sdcard/Download/金币数量','w'):write(0)
SW="全自调功能"

menu1 = gg.multiChoice({
"局内视角[自调]",--1
"全局加速[自调]",--2
"开锁[自调]",--3
"移速[自调]",--4
"高跳[自调]",--5
"疾跑跳高时间[自调]",--6
"视野范围[自调]",--7
"医疗箱范围[自调]",--8
"手榴弹范围[自调]",--9
"手榴弹伤害[自调]",--10
"血量[自调]",--11
"开箱速度[自调]",--12
"火箭筒连发[自调]",--13
"皮卡时间[自调]",--14
"治疗球血量[自调]",--15
"治疗球时间[自调]",--16
"逃生回血速度[自调]",--17
"火箭筒弹夹数量[自调]",--18
"火箭筒伤害[自调]",--19
"部分武器连发[自调]",--20
"蹦蹦枪连发[自调]",--21
"能量剑连发[自调]",--22
"蝴蝶改光[自调]",--23
"医疗箱改道具[自调]",--24
"能量剑功能",--25
"传送门距离[自调]",--26
"拆箱夹[自调]",--27
"皮卡改道具[自调]",--28
"部分连发[自调]",--29
"火箭筒子弹[自调]",--30
"导弹伤害[自调]",--31
"导弹范围[自调]",--32
"自定义金币[自调]",--33
"唤风标范围[自调]",--34
"虚体钻石[自调]",--35
"巡逻犬伤害[自调]",--36
"肾上腺素时间[自调]",--37
"斧头伤害[自调]",--38
"导弹移速[自调]",--39
"改等级[自调]",--40
"腕炮攻击范围[自调]",--41
"腕炮伤害范围[自调]",--42
"巡逻犬伤害[自调]",--43
"道具卡距离[自调]",--44
"队友回血范围[自调]",--45
"毒液范围[自调]",--46
"滑板变身[自调]",--47
"快捷调整[自调]",--48
"一键修改[自调]",--49
"能量剑伤害[自调]",--50
"蹦蹦枪射程[自调]",--51
"肾上改血条[自调]",--52
"阻挡箱范围[自调]",--53
"酒桶范围[自调]",--54
"酒桶伤害[自调]",--55
}, nil, os.date("全自调功能"))
if menu1 == nil then gg.toast("取消首页") else
if menu1[1] == true then op1() end
if menu1[2] == true then op2() end
if menu1[3] == true then op3() end
if menu1[4] == true then op4() end
if menu1[5] == true then op5() end
if menu1[6] == true then op6() end
if menu1[7] == true then op7() end
if menu1[8] == true then op8() end
if menu1[9] == true then op9() end
if menu1[10] == true then op10() end
if menu1[11] == true then op11() end
if menu1[12] == true then op12() end
if menu1[13] == true then op13() end
if menu1[14] == true then op14() end
if menu1[15] == true then op15() end
if menu1[16] == true then op16() end
if menu1[17] == true then op17() end
if menu1[18] == true then op18() end
if menu1[19] == true then op19() end
if menu1[20] == true then op20() end
if menu1[21] == true then op21() end
if menu1[22] == true then op22() end
if menu1[23] == true then op23() end
if menu1[24] == true then op24() end
if menu1[25] == true then op25() end
if menu1[26] == true then op26() end
if menu1[27] == true then op27() end
if menu1[28] == true then op28() end
if menu1[29] == true then op29() end 
if menu1[30] == true then op30() end
if menu1[31] == true then op31() end
if menu1[32] == true then op32() end
if menu1[33] == true then op33() end
if menu1[34] == true then op34() end
if menu1[35] == true then op35() end
if menu1[36] == true then op36() end
if menu1[37] == true then op37() end
if menu1[38] == true then op38() end
if menu1[39] == true then op39() end
if menu1[40] == true then op40() end
if menu1[41] == true then op41() end
if menu1[42] == true then op42() end
if menu1[43] == true then op43() end
if menu1[44] == true then op44() end
if menu1[45] == true then op45() end
if menu1[46] == true then op46() end
if menu1[47] == true then op47() end
if menu1[48] == true then op48() end
if menu1[49] == true then op49() end
if menu1[50] == true then op50() end
if menu1[51] == true then op51() end
if menu1[52] == true then op52() end
if menu1[53] == true then op53() end
if menu1[54] == true then op54() end
if menu1[55] == true then op55() end
end 
GLWW=-1
end

function op1()
hh=gg.prompt({i='请输入要修改的视角大小！\n初始值是10'}, {i='20'})
qmnb = {
{["memory"] = 32},
{["name"] = "视角自调"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = hh["i"],["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function op2()
if gg.prompt({"全局加速"}, {
[1] = 1.2
}, {
[1] = "text"
}) == nil then
os.exit(print("亲～你点击了取消"))
end
qmnb = {{memory = 4}, {name = "全局加速"},
{value = 0.02500000037, type = 16},{lv = 1,
offset = -8,
type = 16 } }qmxg = { {value = gg.prompt({"全局加速"}, {[1] = 1.2}, {[1] = "text" })[1],offset = -8,type = 16 }}
xqmnb(qmnb)
end

function op3()
local fy=gg.prompt({"开锁"}, {[1] = 3}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function op4()
local fy=gg.prompt({"移速"}, {[1] = 3.8}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function op5()
local fy=gg.prompt({"高跳"}, {[1] = 6.8}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function op6()
local es=gg.prompt({"请输入修改值\n建议修改10左右"}, {[1] = 10}, {[1] = "text"})
 if es==nil then 
ES=gg.alert("你不要我了？","是的","手滑") end
if ES==1 then os.exit(print("嘤嘤嘤"))end
if ES==2 then 
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑跳高时间"},
{["value"] = 4800, ["type"] = 4},
{["lv"] = 1.8216880036222622e-44,["offset"] =-0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =-0x24, ["type"] = 16},
}
xqmnb(qmnb)
gg.alert("您的疾跑跳高基础时间成功更改为10s")
os.exit(print("嗨害嗨"))
end
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑跳高时间"},
{["value"] = 4800, ["type"] = 4},
{["lv"] = 1.8216880036222622e-44,["offset"] =-0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = es[1],["offset"] =-0x24, ["type"] = 16},
}
xqmnb(qmnb)
gg.alert("您的疾跑跳高基础时间更改为"..es[1].."s\n             有bag")
end 

function op7()
local fy=gg.prompt({"视野范围"}, {[1] = 15}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 10.0,["offset"] =-0x14, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

 function op8()
local fy=gg.prompt({"医疗箱范围"}, {[1] = 1.5}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end 

function op9()
local fy=gg.prompt({"手榴弹范围自调"}, {[1] = 2.3}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end 

function op10()
local fy=gg.prompt({"手榴弹伤害自调"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end 

function op11()
local fy=gg.prompt({"自身血量自调"}, {[1] = 1200}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "自身血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-20, ["type"] = 16},
{["value"] = fy[1],["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end 

function op12()
local fy=gg.prompt({"开补给箱夹子速度自调"}, {[1] = 1}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开补给箱夹子速度"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 5.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end 

function op13()
local fy=gg.prompt({"部分武器连发自调"}, {[1] = 100}, {[1] = "text"})
if fy==nil then os.exit(print("你点取消了")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[开启]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

function op14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的皮卡时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("皮卡时间")
gg.clearResults()
end

function op15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的治疗球血量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("治疗球血量")
gg.clearResults()
end

function op16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("168;6;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的治疗球存在时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("治疗球时间")
gg.clearResults()
end

function op17()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1.5;10::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的逃生回血速度"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("逃生回血速度")
gg.clearResults()
end

function op18()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4D;3F;0.8F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的火箭筒子弹数量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("火箭筒子弹")
gg.clearResults()
end

function op19()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的火箭筒伤害"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("火箭筒伤害")
gg.clearResults()
end

function op20()--部分武器连发[自调]
local fy=gg.prompt({"部分武器连发[自调]"}, {[1] = 100}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

function op21()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-4,787,506,546,675,327,959;0;200::", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4", gg.TYPE_QWORD)
gg.toast("初始化蹦蹦枪")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,113,587,712;1;1,066,192,077;1,077,936,128::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你要的连发数量"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("蹦蹦枪连发")
gg.clearResults()
end

function op22()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("1,115,947,008;5;1;1,066,192,077;1,075,838,976::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  tv= gg.prompt({y='自调能量剑连发'}, {i='0'})
	 gg.editAll(tv["y"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function op23()
a = gg.prompt({
      "迪迦50001\n赛罗50002\n泽塔50003\n奥博汽车1033\n兔子1014\nboss盾300"
    })
    qmnb = {
      {memory = 32},
      {
        name = "蝴蝶技能"
      },
      {value = 30, type = 16},
      {
        lv = 1035,
        offset = 8,
        type = 4
      }
    }
    qmxg = {
      {
        value = a[1],
        offset = 4,
        type = 4
      }
    }
    xqmnb(qmnb)
  end

function op24()
local fy=gg.prompt({"医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱"},
{["value"] = 1007, ["type"] = 4},
{["lv"] = 37,["offset"] =0x4, ["type"] = 4},
{["lv"] = 3,["offset"] =-0x10, ["type"] = 4},
{["lv"] = 8,["offset"] =-0x18, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =-0x20, ["type"] = 4},
}
xqmnb(qmnb)
end

function op25()

--能量剑
b=gg.prompt({"一键开启","无间隔","锁子弹","无后座"},{},{"checkbox","checkbox","checkbox","checkbox"})
if b==nil then
return F()
end
if b[1] == true
then
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1061997773, ["type"] = 4},
{["lv"] = 1077936128,["offset"] =-4, ["type"] = 4},
{["lv"] = 256,["offset"] =-84, ["type"] = 4},
}
qmxg ={
{["value"] = 0,["offset"] =-20, ["type"] = 4,["freeze"] = true},
{["value"] = 0,["offset"] =-16, ["type"] = 4,["freeze"] = true},
{["value"] = -1,["offset"] =20, ["type"] = 4,["freeze"] = true},
{["value"] = 0,["offset"] =24, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
if b[2] == true
then
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1061997773, ["type"] = 4},
{["lv"] = 1077936128,["offset"] =-4, ["type"] = 4},
{["lv"] = 256,["offset"] =-84, ["type"] = 4},
}
qmxg ={
{["value"] = 0,["offset"] =-16, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
if b[3] == true 
then
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1061997773, ["type"] = 4},
{["lv"] = 1077936128,["offset"] =-4, ["type"] = 4},
{["lv"] = 256,["offset"] =-84, ["type"] = 4},
}
qmxg ={
{["value"] = -1,["offset"] =20, ["type"] = 4,["freeze"] = true},
{["value"] = 0,["offset"] =24, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
if b[4] == true 
then
qmnb ={
{["memory"] = 32},
{["name"] = ""},
{["value"] = 1061997773, ["type"] = 4},
{["lv"] = 1077936128,["offset"] =-4, ["type"] = 4},
{["lv"] = 256,["offset"] =-84, ["type"] = 4},
}
qmxg ={
{["value"] = 0,["offset"] =-20, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
end

function op26()
    gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要的距离"
}, {i = ""})
	 gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("传送门长度开启成功")
	 gg.clearResults()
end

function op27()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;0.2;1;1D;10D;1D;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
    gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(104)
  fw = gg.prompt({
    i = "修改拆箱子和夹子的范围"
  }, {i = "5.00"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("范围拆箱夹开启成功")
end

function op28()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
    i = "医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子\n70500015 苍龙\n70500014 霸王龙\n70500013 迅猛龙\n70500012 剑龙\n70500011 三角龙\n70500010 翼龙"
  }, {i = "70500012"})
	 gg.editAll(fw.i, gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function op29()
qc=gg.alert("大部分武器连发","开启","关闭")
if qc==1 then 
local LL=gg.prompt({"连发数量"},{[1]="30" })
fastsearch
({{1066192077,4,32},{1,-4,4}},
{
{LL[1],-4,4,false}})
fastsearch
({{1067030938,4,32},{1,-4,4}},
{
{LL[1],-4,4,false}})
else
local LL=gg.prompt({"连发数量"},{[1]="30" })
fastsearch
({{1066192077,4,32},{LL[1],-4,4}},
{
{1,-4,4,false}})
fastsearch
({{1067030938,4,32},{LL[1],-4,4}},
{
{1,-4,4,false}})
end
end

function op31()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20;45;99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.prompt({ -- table(952ed3a)
	['i'] = '请输入你想要改的战术导弹伤害  导弹全部伤害变一样',
}, { -- table(172ddeb)
	['i'] = '',
}) --[[ { -- table(cc92ed0)
	['i'] = '',
} ]]
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("导弹伤害")
end


function op32()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.prompt({ -- table(91efd5)
	['i'] = '请输入你想要改的导弹  迫击炮范围',
}, { -- table(8f433ea)
	['i'] = '',
}) --[[ { -- table(e507c61)
	['i'] = '',
} ]]
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("导弹范围")
end

function op30()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4D;3F;0.8F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.prompt({ -- table(ec81e3b)
	['i'] = '请输入你想要改的火箭筒子弹数量',
}, { -- table(10d0958)
	['i'] = '',
}) --[[ { -- table(8eb03af)
	['i'] = '',
} ]]
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("火箭筒子弹")
end

function op33()
local m=gg.prompt({"请输入搜索:","请输入修改:",}, {"",""}, {"text","text"})
gg.setRanges(32)
gg.searchNumber(m[1], gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100) 
if gg.getResultCount() == 0 then
gg.toast("失败")
else
gg.getResults(100)
gg.editAll(m[2], gg.TYPE_FLOAT)
gg.toast("开启成功")
end
end

function op34()
local fy=gg.prompt({"唤风镖[自调]"}, {[1] = 10}, {[1] = "text"})
if fy==nil then end
qmnb = {
{["memory"] = 32},
{["name"] = "唤风镖[自调]"},
{["value"] = 1.25, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function op35()
mx= gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})
  if mx == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg["TYPE_DWORD"], false, gg["SIGN_EQUaL"], 0, -1)
    gg.searchNumber( mx[1] , gg["TYPE_DWORD"], false, gg["SIGN_EQUaL"], 0, -1)
    if gg.getResultCount() >= 300 then gg.alert("修改不了了.你账号有风险")os.exit()end
    gg.getResults(100)
    gg.editAll("999999999",gg["TYPE_DWORD"], false, gg["SIGN_EQUaL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
end

function op36()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10D;12D;18F;200F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的伤害"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end
function op37()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("时间开启成功")
	 gg.clearResults()
end

function op38()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.1;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的斧头伤害"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
  end
  
function op39()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;6;20;120;4;120:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 fw = gg.prompt({
i = "请输入你想要改的导弹移速"
}, {i = ""})
	 gg.editAll("fw.i", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function op40()
a=gg.prompt({"自调"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1af6528},})
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0x1af6524},})
end

function op41()
local xt=gg.prompt({"腕炮攻击范围"}, {[1] = 1.1}, {[1] = "text"})
readWrite({{false,0.20000000298023224,12,16,nil,nil},{0.009999999776482582,40,16},{0.009999999776482582,44,16},{0.10000000149011612,56,16}},{{xt[1],0,16,false}},16,32,"腕炮")end

function op42()
gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("5F;1F;0F;1D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1F", gg.TYPE_FLOAT, false,   gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
fw = gg.prompt({
i = "请输入你想要改的碗炮伤害范围"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("成功")
end

function op43()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10D;12D;18F;200F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的巡逻犬伤害"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function op44()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('6;6:5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('6;6',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的投掷范围"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功")
end

function op45()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改回血范围"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function op46()
local fy=gg.prompt({"毒液范围[自调]"}, {[1] = 5}, {[1] = "text"})
if fy==nil then os.exit(print("你点击取消了")) end
qmnb = {
{["memory"] = 32},
{["name"] = "毒液范围"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end

function op47()
function xxs(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
end
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
xxs({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) 
end



function op48()
local LL=gg.prompt({"↓人物移速↓","↓人物血量↓","↓开锁速度↓","↓人物视角↓","↓全局加速↓","↓金币数量↓"},{[1]="3" },{[2]="400"},{[3]="3"},{[4]="20"},{[5]="2"},{[6]="1000"})
io.open('/sdcard/Download/人物移速','w'):write(LL[1])
io.open('/sdcard/Download/人物血量','w'):write(LL[2])
io.open('/sdcard/Download/开锁速度','w'):write(LL[3])
io.open('/sdcard/Download/人物视角','w'):write(LL[4])
io.open('/sdcard/Download/全局加速','w'):write(LL[5])
io.open('/sdcard/Download/金币数量','w'):write(LL[6])
if LL==nil then
gg.toast("已为您返回主页")
Home()
end
end

function op49()
SN = gg.multiChoice({
	 "人物移速",--1
	 "人物血量",--2
	 "开锁速度",--3
	 "人物视角",--4
	 "全局加速",--5
	 "金币数量",--6
	 "返回主页",--7
}, nil, os.date("都是精华"))
if SN == nil then
  else
if SN[1]==true then
	 XGG1()
end
if SN[2]==true then
	 XGG2()
end
if SN[3]==true then
	 XGG3()
end
if SN[4]==true then
	 XGG4()
end
if SN[5]==true then
	 XGG5()
end
if SN[6]==true then
	 XGG6()
end
if SN[7]==true then
	 Home()
end
end
end

function XGG1()--1
XG = io.open('/sdcard/Download/人物移速','r'):read("*a")
if XG == "0" then
gg.toast("人物移速\n配置时为0不可修改！")
else
fastsearch({{1048039129,4,32},{1084017869,-12,4}},{{XG,-28,16,false}})
end
end


function XGG2()--2
XG = io.open('/sdcard/Download/人物血量','r'):read("*a")
if XG == "0" then
gg.toast("人物血量\n配置时为0不可修改！")
else
fastsearch({{1128792064,4,32},{1050253722,-16,4}},{{XG,-24,16,false},{XG,-20,16,false}})
end
end

function XGG3()--3
XG = io.open('/sdcard/Download/开锁速度','r'):read("*a")
 if XG == "0" then
gg.toast("开锁速度\n配置时为0不可修改！")
else
fastsearch({{1075838976,4,32},{1069547520,-8,4},{1073741824,-4,4}},{{XG,-12,16,false}})
end
end

function XGG4()--4
XG = io.open('/sdcard/Download/人物视角','r'):read("*a")
if XG == "0" then
gg.toast("人物视角\n配置时为0不可修改！")
else
fastsearch({{1109393408,4,32},{1086324736,4,4}},{{XG,28,16,false}})
end
end

function XGG5()--5
XG = io.open('/sdcard/Download/全局加速','r'):read("*a")
if XG == "0" then
gg.toast("全局加速\n配置时为0不可修改！")
else
fastsearch({{1020054733,4,32},{1031127695,-4,4}},{{XG,-8,16,false}})
end
end

function XGG6()--6
XG = io.open('/sdcard/Download/金币数量','r'):read("*a")
if XG == "0" then
gg.toast("金币数量\n配置时为0不可修改！")
else
fastsearch({{1104150528,4,32},{2,64,4}},{{XG,52,4,false}})
end
end

function op50()
   gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("66F;240D;2.2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("66", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  xh = gg.prompt({
i = "能量剑伤害"
}, {i = "99999999999"})
  gg.editAll(xh.i, gg.TYPE_FLOAT)
  gg.toast("能量剑伤害开启成功")
  gg.clearResults()
end


function op51()
xh=gg.prompt({"输入射程"},{[1]=""})
xtnb({{false,-20.0,4,16,nil,nil},{0.800000011920929,12,16},{-0.4000000059604645,16,16},{2.5,20,16},{1.5,24,16}},{{xh[1],0,16,false}},16,32,"蹦蹦枪射程")
end

function op52()
local xt=gg.prompt({"请输入修改后的血量(填负数为减血)"}, {[1] = 110})

local qmnb=
{
{['memory']=32},
{['name']='300'},
{['value']=1086324736, ['type']=4},
{['lv']=1053609165,['offset']=-156, ['type']=4},
{['lv']=1101004800,['offset']=-148, ['type']=4},
{['lv']=10,['offset']=-76, ['type']=4},
{['lv']=2147483647,['offset']=-20, ['type']=4},
{['lv']=1086324736,['offset']=-4, ['type']=4},
}
local qmxg=
{
{['value']=xt[1],['offset']=-80,['type']=4},
}
xqmnb(qmnb,qmxg)
end


function op53()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(200)
	 xh = gg.prompt({
i = "请输入你想要改的阻挡箱范围"
}, {i = ""})
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function op54()
local xh=gg.prompt({"酒桶范围"}, {[1] = 10}, {[1] = "text"})
if xh==nil then end
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "酒桶范围"},
{["value"] = 1088421888, ["type"] = D},
{["lv"] = 1106247680,["offset"] =24, ["type"] = D},

{["lv"] = 1008981770,["offset"] =-4, ["type"] = D},
},
{
{["value"] = xh[1],["offset"] =20, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end

function op55()
local xh=gg.prompt({"酒桶伤害"}, {[1] = 10}, {[1] = "text"})
if xh==nil then end
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "酒桶伤害"},
{["value"] = 1088421888, ["type"] = D},
{["lv"] = 1106247680,["offset"] =24, ["type"] = D},

{["lv"] = 1008981770,["offset"] =-4, ["type"] = D},
},
{
{["value"] = xh[1],["offset"] =0x9C, ["type"] = F,["freeze"] = false},
}
)
gg.clearResults()
end        

function c12325jsksbsjsbs()
SN = gg.multiChoice({
	 "防封［文本］",
	 "防追封",
	 "防检测",
	 "防封",
	 "防封",
	 "防封",
	 "防封",
	 "返回主页",
}, nil, "文本防封")
if SN[1]==true then
	 HS232()
end
if SN[2]==true then
	 HS408()
end
if SN[3]==true then
	 HS321()
end
if SN[4]==true then
	 HS295()
end
if SN[5]==true then
	 HS296()
end
if SN[6]==true then
	 HS297()
end
if SN[7]==true then
	 HS298()
end
if SN[8]==true then
	 HOME()
end
FX1=0
end


function HS232()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("防封")
	 gg.clearResults()
end

function HS408()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65,536;131,072;196,608;262,144;393,216;458,752;524,288;1,048,576;4,194,304;8,388,608::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65,536;131,072;196,608;262,144;393,216;458,752;524,288;1,048,576;4,194,304;8,388,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防追封")
	 gg.clearResults()
end

function HS321()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()
end

function HS295()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
end

function HS296()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
end

function HS297()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
end

function HS298()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
end

function HS227()
	 HOME()
end

function Cbbbbsdghj17()
menu1 = gg.multiChoice({
"技能免费",
"技能无限",
"技能无冷却",
"命石者",
"星辰圣女",
"艾可",
"金库艾可",
"水之忍者",
"小狐狸",
"小狮子",
"奥博",
"影之忍者",
"团子",
"作者QQ2957285936",
"返回主页"},
nil,'角色功能3')
if menu1 == nil then else
if menu1[1] == true then nmdb1() end
if menu1[2] == true then nmdb2() end
if menu1[3] == true then nmdb3() end
if menu1[4] == true then nmdb4() end
if menu1[5] == true then nmdb5() end
if menu1[6] == true then nmdb6() end
if menu1[7] == true then nmdb7() end
if menu1[8] == true then nmdb8() end
if menu1[9] == true then ndmb9() end
if menu1[10] == true then nmdb10() end
if menu1[11] == true then nmdb11() end
if menu1[12] == true then nmdb12() end
if menu1[13] == true then Main() end
if menu1[14] == true then nmdb14() end
if menu1[15] == true then Main() end
end
GLWW=-1
end

function nmdb1()
qc=gg.alert("技能免费","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1FE9644},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FE9648},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1FEA584},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEA588},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1FE9644},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1FE9648},})
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0x1FEA584},})
nc_offset(getso("libil2cpp.so"),{{-494030820,4,0x1FEA588},})
end
end

function nmdb2()
qc=gg.alert("技能无限","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476050943,4,0x1FEB894},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEB898},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1FEBB48},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEBB4C},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1FEB894},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0x1FEB898},})
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1FEBB48},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0x1FEBB4C},})
end
end

function nmdb3()
qc=gg.alert("技能无冷","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1FEB008},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEB00C},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1FEB354},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEB358},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1FEB008},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1FEB00C},})
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1FEB354},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1FEB358},})
end
end

function nmdb4()
NH=gg.prompt({"强力抱摔","抱摔冲刺距离","返回"},{},{"checkbox","checkbox","checkbox"})
if NH[1] == true then
nh=gg.prompt({"输入抱摔伤害(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "强力抱摔"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-256, ["type"] = 16, ["freeze"] = true},
{["value"] = 1,["offset"] =-268, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0,["offset"] =-100, ["type"] = 16},
{["value"] = 99.0,["offset"] =-96, ["type"] = 16},
{["value"] = nh[1],["offset"] =-84, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({"输入抱摔冲刺距离(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "暴摔冲刺距离"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 0,["offset"] =8, ["type"] = 4},
{["lv"] = 0,["offset"] =32, ["type"] = 4},
{["lv"] = 2.0,["offset"] =56, ["type"] = 16},
{["lv"] = 1077936128, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1],["offset"] =16, ["type"] = 16},
{["value"] = nh[1],["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[3] == true then HOME()
end
end

function nmdb5()
qc=gg.alert("星辰圣女","技能强化","普攻强化")
if qc==1 then
NH=gg.prompt({"输入技能范围，初始值为8"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1058642330, ["type"] = 4},
{["lv"] = 1090519040,["offset"] =4, ["type"] = 4},
{["lv"] = 1086324736,["offset"] =8, ["type"] = 4},
{["lv"] = 1082130432,["offset"] =12, ["type"] = 32},
}
qmxg = {
{["value"] = 0,["offset"] =-56, ["type"] = 16},
{["value"] = 0,["offset"] =0, ["type"] = 16},
{["value"] = NH[1],["offset"] =4, ["type"] = 16},
{["value"] = 520,["offset"] =8, ["type"] = 16},
{["value"] = 1314,["offset"] =44, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
if qc==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "普攻强化"},
{["value"] = 1089470464, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -32, ["type"] = 16},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0.6000000238418579, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 20, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 24, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end
end

function nmdb6()
NH=gg.prompt({"技能强化","技能buff","技能释放范围","返回"},{},{"checkbox","checkbox","checkbox","checkbox"})
if NH[1] == true then
nh=gg.prompt({"输入技能范围,初始值为2.5(可进行多次修改)↓","输入技能伤害,初始值为50(可进行多次修改)↓","输入技能数量(可进行多次修改↓)",},{[1]="",[2]="",[3]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 80, ["offset"] = -128, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -8, ["type"] = 16},
{["value"] = nh[2], ["offset"] = 4, ["type"] = 16},
{["value"] = nh[3], ["offset"] = -136, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
{["value"] = 0.001, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({"输入要修改的buff代码(可进行多次修改)\n100暴怒 101夹子 102跳高 103疾跑 105手雷 107无敌 108针 109学妹 110学妹 111持续暴走 112变羊术 113雷达 114天降正义 200酒桶 201毒液 202加速 203狗 204魔法墙正面 205魔法墙负面 206护盾 300boss盾 301boss吸血 302boss眩晕 400机器人 401小学妹 402幽灵 403缴械 404天降正义 405减速 501水 502引力场 505超级加速 506加速 508减速 509boss攻速永久 510boss吸血永久 511boss盾 512解控 520梦魇泡泡 521梦魇 522梦魇无敌 528缴械 529缈 530缈 531缈 532缈 533缈加圣女 534圣女 535圣女 537盾卫 538盾卫 539盾卫 540盾卫 542狮子吸血 543泷 544泷 545泷 547时光机 548狮子视野 549狮子冷却 550毒 551命石 552命石 553命石 554命石 557减血 558眩晕 559无敌 560永久加速 561超级加速 564团子 566团子 567机器人 568恐龙 570奥博 571眩晕 572护盾 573疾跑 575狮子视野 577指绘师 578指绘师 580互拉圈减速 581互拉圈加速 70110全体护盾 70109竞速掉血 70108-70103恐龙护盾 70102竞速减速 70101竞速夹子 10509红方旗子 10508蓝方旗子 10203减血 10600电能球buff 11201针 10201毒 10103狂暴"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能buff"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 80, ["offset"] = -128, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({"输入要改的技能释放范围,初始值为6(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能释放范围"},
{["value"] = 1086324736, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 256, ["offset"] = 44, ["type"] = 4},
{["lv"] = 1052266988, ["offset"] = 144, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = 152, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[4] == true then HOME()
end
end

function nmdb7()
NH=gg.prompt({"医疗包改金库艾可","技能强化","技能buff","技能释放范围","返回"},{},{"checkbox","checkbox","checkbox","checkbox","checkbox"})
if NH[1] == true then
qc=gg.alert("改金库艾可","开启","恢复")
if qc==1 then
qmnb = {
      {["memory"] = 32},
      {["name"] = "医疗包改艾可技能"},
      {["value"] = 875573550, ["type"] = 4},
      {["lv"] = 200, ["offset"] = 4, ["type"] = 32},
      {["lv"] = 401, ["offset"] = 12, ["type"] = 4},
      {["lv"] = 3, ["offset"] = 24, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 10003, ["offset"] = 12, ["type"] = 4,},
    }
    xqmnb(qmnb)
end    
if qc==2 then
qmnb = {
      {["memory"] = 32},
      {["name"] = "医疗包改艾可技能"},
      {["value"] = 875573550, ["type"] = 4},
      {["lv"] = 200, ["offset"] = 4, ["type"] = 32},
      {["lv"] = 3, ["offset"] = 24, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 401, ["offset"] = 12, ["type"] = 4,},
    }
    xqmnb(qmnb)
end
end
if NH[2] == true then
nh=gg.prompt({"输入技能范围,初始值为2(可进行多次修改)↓","输入技能伤害,初始值为50(可进行多次修改)↓",},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -8, ["type"] = 16},
{["value"] = nh[2], ["offset"] = 4, ["type"] = 16},
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
{["value"] = 0.001, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({"输入要修改的buff代码(可进行多次修改)\n100暴怒 101夹子 102跳高 103疾跑 105手雷 107无敌 108针 109学妹 110学妹 111持续暴走 112变羊术 113雷达 114天降正义 200酒桶 201毒液 202加速 203狗 204魔法墙正面 205魔法墙负面 206护盾 300boss盾 301boss吸血 302boss眩晕 400机器人 401小学妹 402幽灵 403缴械 404天降正义 405减速 501水 502引力场 505超级加速 506加速 508减速 509boss攻速永久 510boss吸血永久 511boss盾 512解控 520梦魇泡泡 521梦魇 522梦魇无敌 528缴械 529缈 530缈 531缈 532缈 533缈加圣女 534圣女 535圣女 537盾卫 538盾卫 539盾卫 540盾卫 542狮子吸血 543泷 544泷 545泷 547时光机 548狮子视野 549狮子冷却 550毒 551命石 552命石 553命石 554命石 557减血 558眩晕 559无敌 560永久加速 561超级加速 564团子 566团子 567机器人 568恐龙 570奥博 571眩晕 572护盾 573疾跑 575狮子视野 577指绘师 578指绘师 580互拉圈减速 581互拉圈加速 70110全体护盾 70109竞速掉血 70108-70103恐龙护盾 70102竞速减速 70101竞速夹子 10509红方旗子 10508蓝方旗子 10203减血 10600电能球buff 11201针 10201毒 10103狂暴"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能buff"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[4] == true then
nh=gg.prompt({"输入要改的技能释放范围,初始值为6(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能释放范围"},
{["value"] = 1086324736, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 256, ["offset"] = 44, ["type"] = 4},
{["lv"] = 1052266988, ["offset"] = 144, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = 152, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[5] == true then HOME()
end
end

function nmdb8()
NH=gg.prompt({"输入技能数量(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "水之忍者"},
{["value"] = 60, ["type"] = 32},
{["lv"] = 3, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1, ["offset"] = 136, ["type"] = 32},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
{["value"] = 0.1, ["offset"] = 100, ["type"] = 16},
}
xqmnb(qmnb)
end

function nmdb9()
NH=gg.prompt({"输入链条持续时间(可进行多次修改)↓","输入技能加血或扣血(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 50, ["type"] = 4},
{["lv"] = 1084227584, ["offset"] = 76, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 88, ["type"] = 4},
{["lv"] = 15, ["offset"] = 184, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
{["value"] = NH[1], ["offset"] = 68, ["type"] = 16},
{["value"] = 520, ["offset"] = 72, ["type"] = 16},
{["value"] = 520, ["offset"] = 80, ["type"] = 16},
{["value"] = -NH[2], ["offset"] = 188, ["type"] = 16},

}
xqmnb(qmnb)
end

function nmdb10()
NH=gg.prompt({"输入技能范围(可进行多次修改)↓","输入技能伤害(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子"},
{["value"] = 1072483533, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 9, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -136, ["type"] = 4},
{["lv"] = 8, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -132, ["type"] = 16},
{["value"] = 0, ["offset"] = -128, ["type"] = 4},
{["value"] = NH[1], ["offset"] = -24, ["type"] = 16},
{["value"] = NH[2], ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
{["value"] = 0, ["offset"] = -8, ["type"] = 16},
{["value"] = 0, ["offset"] = -12, ["type"] = 16},
}
xqmnb(qmnb)
end

function nmdb11()
NH=gg.prompt({"技能强化","技能buff","技能变身物体","返回"},{},{"checkbox","checkbox","checkbox","checkbox"})
if NH[1] == true then
nh=gg.prompt({"输入技能范围(可进行多次修改)↓","输入技能电击持续时间(可进行多次修改)↓","输入技能电击速度(可进行多次修改)↓"},{[1]="",[2]="",[3]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -136, ["type"] = 32},
}
qmxg = {
{["value"] = 0, ["offset"] = -140, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -144, ["type"] = 16},
{["value"] = 0, ["offset"] = -36, ["type"] = 16},
{["value"] = nh[2], ["offset"] = -24, ["type"] = 16},
{["value"] = nh[1], ["offset"] = -20, ["type"] = 16},
{["value"] = nh[3], ["offset"] = -16, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({"100暴怒 101夹子 102跳高 103疾跑 105手雷 107无敌 108针 109学妹 110学妹 111持续暴走 112变羊术 113雷达 114天降正义 200酒桶 201毒液 202加速 203狗 204魔法墙正面 205魔法墙负面 206护盾 300boss盾 301boss吸血 302boss眩晕 400机器人 401小学妹 402幽灵 403缴械 404天降正义 405减速 501水 502引力场 505超级加速 506加速 508减速 509boss攻速永久 510boss吸血永久 511boss盾 512解控 520梦魇泡泡 521梦魇 522梦魇无敌 528缴械 529缈 530缈 531缈 532缈 533缈加圣女 534圣女 535圣女 537盾卫 538盾卫 539盾卫 540盾卫 542狮子吸血 543泷 544泷 545泷 547时光机 548狮子视野 549狮子冷却 550毒 551命石 552命石 553命石 554命石 557减血 558眩晕 559无敌 560永久加速 561超级加速 564团子 566团子 567机器人 568恐龙 570奥博 571眩晕 572护盾 573疾跑 575狮子视野 577指绘师 578指绘师 580互拉圈减速 581互拉圈加速 70110全体护盾 70109竞速掉血 70108-70103恐龙护盾 70102竞速减速 70101竞速夹子 10509红方旗子 10508蓝方旗子 10203减血 10600电能球buff 11201针 10201毒 10103狂暴\n输入自身buff(可进行多次修改)↓","输入敌方buff(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能buff"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = 28, ["type"] = 4},
{["value"] = nh[2], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({"输入技能变身物体(可进行多次修改)\n1000长椅子 1001床 1002小箱子 1003仙人掌 1004小椅子 1005马桶 1006电脑 1007小柜子 1008花盆 1009矮桌子 1010路障 1011皮卡 1012魔术师的羊 1013自走球 1014兔子 1015扑克牌 1016鼓 1017绿色垃圾桶 1018蓝色垃圾桶 1019鸭子 1020球 1021滑板 1022战术导弹 1023小幽灵 1024小飞机 1025跳跳杆 1032哄哄号 1033原本的车 50001迪迦 50002赛罗 50003泽塔 70010翼龙 70011三角龙 70012剑龙 70013迅猛龙 70014霸王龙 70015苍龙 90001擎天柱 90002大黄蜂 90003热破 90004威震天 90005声波 90006红蜘蛛 90007擎天柱车形态 90008大黄蜂车形态 90009热破车形态 90010威震天车形态 90011声波车形态 90012红蜘蛛车形态"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能变身物体"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[4] == true then HOME()
end
end
function nmdb12()
NH=gg.prompt({"输入技能数量(可进行多次修改)↓","输入技能范围(可进行多次修改)↓","输入影子持续时间(可进行多次修改)↓"},{[1]="",[2]="",[3]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "影子忍者"},
      {["value"] = 1075838976, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 14, ["offset"] = -20, ["type"] = 16},
      {["lv"] = 13, ["offset"] = -28, ["type"] = 16},
      {["lv"] = 0, ["offset"] = -32, ["type"] = 4},
      {["lv"] = 2, ["offset"] = -88, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = -136, ["type"] = 4, ["freeze"] = true},
      {["value"] = 0, ["offset"] = -132, ["type"] = 16,},
      {["value"] = 0, ["offset"] = -128, ["type"] = 4},
      {["value"] = NH[2], ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = -8, ["type"] = 16},
      {["value"] = NH[3], ["offset"] = -4, ["type"] = 16},
      {["value"] = 520, ["offset"] = -28, ["type"] = 16},
    }
    xqmnb(qmnb)
end    

function nmdb13()
qc=gg.alert("团子","免费无冷","技能变身")
if qc==1 then
qmnb = {
      {["memory"] = 32},
      {["name"] = "免费无冷"},
      {["value"] = -934560717, ["type"] = 4},
      {["lv"] = 1092616192,["offset"] =-36, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0,["offset"] =-32, ["type"] = 4},
      {["value"] = 0,["offset"] =-36, ["type"] = 4},
    }
    xqmnb(qmnb)
end    
if qc==2 then
NH=gg.prompt({"输入要改的变身物体代码(可进行多次修改)\n1000长椅子 1001床 1002小箱子 1003仙人掌 1004小椅子 1005马桶 1006电脑 1007小柜子 1008花盆 1009矮桌子 1010路障 1011皮卡 1012魔术师的羊 1013自走球 1014兔子 1015扑克牌 1016鼓 1017绿色垃圾桶 1018蓝色垃圾桶 1019鸭子 1020球 1021滑板 1022战术导弹 1023小幽灵 1024小飞机 1025跳跳杆 1032哄哄号 1033原本的车 50001迪迦 50002赛罗 50003泽塔 70010翼龙 70011三角龙 70012剑龙 70013迅猛龙 70014霸王龙 70015苍龙 90001擎天柱 90002大黄蜂 90003热破 90004威震天 90005声波 90006红蜘蛛 90007擎天柱车形态 90008大黄蜂车形态 90009热破车形态 90010威震天车形态 90011声波车形态 90012红蜘蛛车形态"},{[1]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "变身"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end
end
function Kshjsgjsvshwj()
gg.alert([[                                                      
       
进程检测:
打开游戏进入登录账号界面（登录完显示开始游戏）然后ce内存浏览器访问OpenProcess 断点  点开始游戏  然后就发现断下来了  点第一个返回地址 把什么一个mov nop就行了  或者下面的jne改了也可以  

xt透视
看到追捕搜索1，看不到搜0

追捕透视
带雷达，开雷达1，不开雷达0

草丛透视   
进入草丛搜索1   退出草丛搜索0   4字节

人物爬墙
落下搜索1   其他搜索0      4字节

人物速度    
初始为0   使用疾跑搜0.2   单浮点

无限疾跑之类的无限道具时间
准备好道具碎片，打开道具卡，双浮点或单浮点搜索间隔然后升级过滤出来

大乱斗道具无限时间
开道具1，不开道具0

开物不断
开着1，没开2 注：没办法过滤到目标，最后会出现十几个地址星需要你一个一个nop，
只要你勤快在这个过程中还可以发现人物遁地，开物进度不显示+道具栏消失这两个功能

金币不减1（四字节）：
搜索当前金币的数值，然后用掉一个道具，再搜现在的金币，改一下金币数值，再用一个道具，看看游戏里金币数值是否有变化，然后右键，找出什么访问了这个地址，找到mov eax,[eax+00000088]这个地址改成add eax,[eax+00000088]或者sub eax,[eax+00000088]

金币反增（四字节）：
在上面的金币不减1的访问中，找到mov [edi+00000088],eax这个地址改成add [edi+00000088],eax

金币不减2（四字节）：
在上面金币反增的地址，把mov [edi+00000088],eax这个地址改成sub [edi+00000088],eax

金币不减3（四字节）:
在上面金币不减2的地址上面找到sub esi,ebx改mov esi,ebx

金币反增2（四字节）：
在上面金币不减3的地址，把sub esi,ebx改add esi,ebx

道具无冷1（四字节）：
在上面金币反增的地址断电（F5键），然后用掉一个道具，点切换断电，点运行，点返回地址里的第一个地址，找到上面的test ecx,ecx，改成
sub ecx,ecx，不仅道具无冷却，而且还金币不减

金币不减4（四字节）：
在道具无冷1的地址上面找到test al,al，改成sub al,al

道具无冷2（四字节）：
道具冷却搜1 没冷却时搜0，右键找出什么改了这个地址，找到mov [esi+0C],eax这个地址，把下面的jna 5943C3E5改成jle 5943C3E5

移动开物（四字节）：
开物搜1 没开搜0
右键找出什么访问了地址，开个物，找到mov [ebx+20],al这个地址，把上面的je 58257E77改成jne 58257E77

完美开锁
全部数值，炸锁一次搜未知，再完美开锁一次，记住完美开锁的位置，如果下一次开锁的位置在这个上面就搜增加的数值，如果在下面就搜索减少的数值，找出是什么访问了这个地址

无限金币
多少搜索多少，过滤后找到地址nop掉
改编汇命令可以反增，如mov改add

无限子弹
4子弹搜索0,3子弹1,2子弹2,子弹3,0子弹4
找到nop掉或者mov改add

秒赢思路提供：

 1.      草丛里搜索1       外面搜索0        按找透视的方法搜到地址
 2.      找地址改写，然后结束游戏，会有一条汇编码
 3.      重开游戏，断点触发那条汇编码，跟过去，往上一点就是秒赢
 4.      可以找一下访问，是有一个0一直访问的，汇编赋值1就可以
 5.      记录字节数组，和更改后的字节数组，

滑轮视角
单浮点，视角拉到最下搜数值1，视角拉到最上搜0，向下拉一点用增加的数值，同样可以搜减少的数值，反复过滤得到一个地址；
右键是什么访问了此地址，会有很多地址，从中找到这样的地址即可：（一般情况是第三个，如果不是自己再找）
5836B69F - F3 0F11 14 24   - movss [esp],xmm2
5836B6A4 - E8 275F3A01 - call GameAssembly.dll+1C015D0
5836B6A9 - F3 0F10 46 3C  - movss xmm0,[esi+3C] <<
5836B6AE - 83 C4 10 - add esp,10
5836B6B1 - F3 0F10 4E 2C  - movss xmm1,[esi+2C]
然后进行反汇编，将被选中的第二条进行nop


穿墙
空地搜4294967295，然后贴墙上搜减少的数值，然后再到空地搜4294967295，反复过滤，直到整出来最后结果几~几百
然后再自己去看里面数字为双位数的（一般是在列表最下面）例如几十四、几十几这样的，然后到空地上，点开查看是什么改写了这个地址；
往墙上走，可以看到一个地址mov [eax+edx*8+08],ecx，直接把这个mov [eax+edx*8+08],ecx删了就可以实现穿墙了

自动走路
走路1，不走0

追捕拖人加速
拖1人1,2人2，没人0，找到改0

巨人跳高
单浮点，正常0，用跳高0.3，找到随便改

超快速度
单浮点，正常0，用疾跑0.2，剩下不用说

血量不减
单浮点，怎么变怎么搜索，不用多说，找到nop

人物复活
找到血地址改100即可

修改炫光
穿什么炫光搜索什么  如当前炫光是闪烁节奏  4字节搜索970001   之后不使用炫光   搜索 0    有3个结果    其中一个是可以修改的

倒地复活2
满血时找到血地址，选中这个地址和下面的4个地址一共5个地址，不是满血会变，死亡也会变
你把死时这个地址的特征写下，再把满血时特征写下，剩下懂得都懂
注：这个开启速度可能有点慢（亲测）

全图迫击炮
拿迫击炮找到子弹地址，找附近movss然后nop，注：可能会崩溃（笑哭）

局内火箭筒无冷却（双浮点那个是局外的）
找到子弹，每次开枪，换蛋都会有个内存变化，nop改变的就可以

人物穿墙
挨着墙1，不挨着0，找到nop

小偷秒赢
找到血量地址或金币地址旁边movss

人物阵营
小偷搜索1  追捕搜索0  4字节

生命上限
找到血量地址，一个一个nop试试，找到后改fstp

超强子弹
子弹地址旁边xor

全部失控（卡房）
物品坐标访问  最多的哪一个就是  nop即可

人物跳跃高度    
初始为0   使用跳高搜0.3  单浮点

子弹搜索
满子弹搜索0   3发子弹搜索1   2发子弹搜索2  3发子弹搜索1  0发子弹搜索4     4字节

金币搜索
100金币搜索金币   多少金币搜索多少   4字节

人物血量
小偷初始100 追捕初始 200   减少血搜减少   Float  单浮点

血量上限 
血量+偏移4

普通追捕秒赢
找到血量访问最多的地址  nop

本人猜测的功能，没测试：（大概率猜错）
道具无冷却
道具正在冷却1，不在冷却0（不行反着试试，应该是4字节）
然后找旁边movss，nop掉

人物飞天
在地面0，不在地面1（不行就反过来，应该猜错）

无视禁闭室
在禁闭室计时1，不在就搜0，老样子不行就反过来试试

禁闭室门不关
追捕开门1，不开0，不行反过来
或者
禁闭室被破坏1，没被破坏0，不行反过来

buff无限时间
有buff1，没buff 0，不行反过来，如果找到就nop，没效果再试试旁边movss，前面说的疑似无视buff
具体只是猜想本人不清楚

无视夹子
踩到夹子1，没踩0，不行反过来，还是不行试试旁边movss

钱箱子透视和夹子透视
看到1，没看到0不行反过来，这个大概率对，不过没测试
本人想象力有限，具体亲自测试，猜测功能应该不是每个都对的毕竟没亲自测试

新道具突破数量限制
放一个搜索1  放两个搜索2  最后过滤出地址（直接改有效果） 看改写  下条件断点  返回  找到call nop即可

赛季宝箱秒完成
数值搜4字节 进度多少就搜索多少 改了可以完成的就是  看改写 改add加1000即可触发一次任务就秒完成  无需触发就完成的不提供思路 

稳定免费购物
现在都知道hook改push值的购物不消耗都不稳定 所以发一个稳定购物
需要那个部分道具无CD的功能
这个功能购买道具不用金币 所以我们找到他的地址  访问武器cd地址  看见有好多地址  看下面几个就行  nop一个用一下道具
最后找到nop后可以不消耗金币的地址nop就行   通过这个地址还可以找到道具价格（没加密） 全部改0则为稳定免费购物


修改时间
数值搜单浮点
我目前知道的找修改时间的方法有三种 只要有访问时间这些相关的都可以找到 比如游戏结算 需要访问当前时间
1.通过赛季宝箱秒完成这个功能找  秒完成里有一个任务是八分钟内逃出生天 必访问时间  赛季宝箱那个代码断点 就在call里面 
2.通过游戏结算找 小偷秒赢获取状态关键代码断点 返回第二层call  时间就在call里面
3.找血 因为游戏结算一样要访问血 跟游戏结算的代码是同一个  就不说思路了
4.找赛季宝箱的修改时间比较好  赛季宝箱的时间可以直接修改  其他的需要获取当前时间进行加减


购物不消耗
减金币地址断点 返回第二层 call nop或者改push赋值为0即可

1R购物
减金币地址断点 返回第二层 改push赋值为1即可

稳定小偷秒赢：
这个不多说 找金币 找血 找按钮都可以找到秒赢    注意这样的代码就行   mov [eax+09],xx  cmp xx,[eax+09]  mov al,[eax+09]
人物显示状态则是[eax+0B]  

人物坐标
X：向左边走搜索增加  右边搜索减少
Y：向上边走搜索增加  下边搜索减少

自动走路
正在走路搜索1
没走路搜索0

远程投掷道具
单浮点搜索6.00  自己遍历qaq

开物不断
开着搜索1  没开搜索0
最后只剩下几个数值  一个个访问nop 赋值的  锁定是没用的 

钥匙进度：
进入游戏 搜索未知的初始值 4字节   去开钥匙  增加 不变循环找  最后找到还有几十个 自己一个个锁定过滤 范围：最大不超过220000

一键开锁
找到钥匙进度  访问  可以看见一个1秒就访问几百次的地址  进去内存浏览器  往下面看  找到一个jne判断  改je即可（断点跟这个地址还可以观到小偷被救出禁闭室的加buff暴走效果和高概率触发天赋）

追捕拖人加速
拖一个人搜索1  2感染搜索2  循环搜索 最后找到其中一个地址 改0即可  4字节

大乱斗毒圈 
满毒圈搜索100  单浮点  缩毒圈搜索减少

解锁模式:
找到段位就行 段位怎么找？ 找到解锁模式就行...   找阵营  他获取段位之前是不是要先判断阵营  然后才获取对应的阵营段位？ 那大厅点开始游戏的时候   
他要判断解锁的模式  肯定要访问段位  段位又要访问阵营  所以找到阵营先  然后访问点开始游戏  看见出现的地址断点跟看看 

锁血原理:
找到一个真的改血call  把赋值的血量改为nan（百度百科:NaN（Not a Number，非数）是计算机科学中数值数据类型的一类值，表示未定义或不可表示的值。常在浮点数运算中使用） 逃跑血量刚好是单浮点类型  改完之后你的血量数值本来就是错误的 根本无法表示  所以血一直是满的  追捕打你的伤害是-21.47亿

稳定免费购物（现在不稳定了）
现在都知道hook改push值的购物不消耗都不稳定 所以发一个稳定购物
需要那个部分道具无CD的功能
这个功能购买道具不用金币 所以我们找到他的地址  访问武器cd地址  看见有好多地址  看下面几个就行  nop一个用一下道具
最后找到nop后可以不消耗金币的地址nop就行   通过这个地址还可以找到道具价格（没加密） 全部改0则为稳定免费购物

相同道具突破数量限制
放一个搜索1  放两个搜索2  最后过滤出地址（直接改有效果） 看改写  下条件断点  返回  找到call nop即可

代码大全：4字节搜索就可以

角色：
雇佣兵：100
失意者：200
女鬼：300
小学妹：400
机器人500
魔术师600
发明家：700
艾克：800
小眠：900
久儿：1000
忍者：1100
女忍者：1200
剩女：1300
黎明盾卫：1400
机甲：10000

炫光
0,不使用炫光
970001,闪烁节奏
970011,星星舞台
970021,鲨鱼出没
970031,冰雪奇缘
970041,星辰璀璨
970051,时光齿轮
970061,金鼠迎春
970071,奇妙戏法
970081,电音狂潮
970091,浪漫花嫁
970101,赤焰之怒
970111,月夜荷塘
970121,跃金矩阵
970131,跃动之星
970141,聚能剑阵
970151,潮流舞台
970161,众星之耀
970171,幻梦之境
970181,弹力喵爪
970191,洲际捣弹
970201,炫音之域
970211,夜歌樱花
970221,仙侠幻想
970231,牛年大吉
970241,忍道·御水
970251,数码地带
970261,甜蜜浪潮
970271,精准定位
970281,帕妃圣代
970291,斥力操控

阵容
追捕：0
逃生：1
魔猿：2

道具卡
100疾跑
101皮卡
102侦察眼
103手榴弹
104医疗箱
105跳高
106护盾
107阻挡箱
108雷达
109巡逻犬
110肾上腺素
111酒桶
112飞爪
113传送门
114自走球
115毒液
116滑板
117魔法墙
118引力场
119治疗球
120蹦床
121捣蛋
122追踪雷
123震荡波
124飞机
125时光机
200火箭筒1级
201火箭筒2级
202火箭筒3级
203火箭筒弹匣
210迫击炮1级
211迫击炮2级
212迫击炮3级
213迫击炮弹匣
220冲锋枪1级
221冲锋枪2级
222冲锋枪3级
223冲锋枪弹夹
240刀1级
241刀2级
242刀3级
250蹦蹦枪
251蹦蹦枪2级
252蹦蹦枪3级


天赋

失意者
来抓我呀--100
机关大师--101
购物达人--102

雇佣兵
会心一击--103
浑身是劲--104
再来一发--105

小学妹
兔兔变身(主动)--121
哎呀好疼--106
来赛跑吗--108

女特
隐形(女特工)(主动)--119
瞬移大师--109
自制陷阱--110
天降正义--111

魔术师
替身木偶(魔术师)(主动)--120
道具戏法--112
移形换位--113
变羊术--114

机器人
迷你雷达--115
声波探测--116
自我强化--117
喷射飞行(主动)--118

战斗少女
天降之物(主动)--122
充能--123
自我修复--124


道具卡皮肤

疾跑:


初始:500001


速度:600051


疾风:600056


繁星:600061


梦想:600066





手榴弹:


初始:500004


新款:600071


大棵菠萝:600041


小猪储钱罐:600046


氪金石:600226
粽子:600336


2019新春爆竹:600221


圣诞雪球:600196


瓦斯:600521





火箭筒:

初始:500010


青鸟M2:600076
丛林迷彩:600081


雷神:600016


龙头鲨:600286


焰:600011


梦想鲤鱼王:600441





跳高:


初始:500006


活泼:600101


花式跑酷:600106


恶搞之舞:600111


完美空翻:600116





医疗箱:


初始:500005


网红同款:600086

D
MM彩豆蛋糕:600091


爱心便当:600096


圣光之箱:600271


外卖盒:600366
月饼礼盒:600411


新春礼盒:600486


春日野餐篮:600516





皮卡:


初始:500002


热销款:600121


购物车:600001


小黄鸭:600006

D
MM-R超跑:600231


星猪骑士:600266


幻影跑车:600416


皇家马车:600466





侦查眼:


初始:500003


小绿:600206


精灵球:600211


土拨鼠:600246


天使之眼:600251

冲锋枪:


初始:500030


马克Z1:600346


古斯塔夫45:600351


激光:600376


DNA-RayGun:600436





生命上限:


初始:500007





酒桶:


初始:500400


白橡木:600126


陈年老坛酒:600131


女巫的魔药:600136


幻想伏特加:600311


超能水:600371


烟花桶:600391


冰镇鸡尾酒:600451





自走球:


初始:500700


环保款:600301


光能双环:600306


魔力紫球:600316


闪闪飞轮:600321


风火轮:600476





阻挡箱:


初始:500008


DMM快递箱:600141


老式游戏机:600026


熊猫表情包:600021


真龙之印:600281


2019元旦快乐:600201


周年蛋糕:600386


快乐豆娃:600401


未来音响:600406


大冰块:600456

传送门:


初始:500600


深海之光:600291


爱心水池:600296


彩虹的约定:600326


真龙现世:600331


电音舞台：600536


电音舞台[甜心]：650031





飞爪:

初始:500500


科技款:600151


马桶抽:600156


超凡蜘蛛网:600161


神龙金爪:600276


食人花:600341


猫爪冰棒:600446


磁场矿控:600461


量子飞爪：600531


量子飞爪[彩金]：650021





巡逻犬:


初始:500200


阿棕:600146


短腿柯基:600031


幼年哈士奇:600036


黄金猎犬:600216


彩虹贵宾犬:600471





肾上腺素:


初始:500300


冷静药水:600166

奶瓶:600171


校长的热狗:600176


DNA超进化:600181


乖巧的大蒜:600421


香蕉萌萌:600481





迫击炮:


初始:500020


秋冬款:600186


网球发射器:600191


磁暴:600236


黄金虎纹鲨:600241





雷达:


初始:500009





毒液:


初始:500800


二甲苯蓝:600356


女巫的毒药:600361


蜘蛛粘液:600381


蜜罐:600396

史莱姆:600426


Virus终结者:600431


黑芝麻糊:600491


闪耀的灯球：600541


闪耀的灯球[耀金]：650041





滑板:


初始:500900


青青双翘:600496


镭射子弹:600501


电音派对：600526


电音派对[橙金]：650011





魔法墙:


初始:501000


能源之门:600506


迷你喷泉:600511


闪耀全场：600546


服装

新手发型	1001
新手手套	1002
新手马甲	1003
新手长裤	1004
新手鞋子	1005
追逐头盔	1011
追逐手套	1012
追逐胸甲	1013
追逐腿甲	1014
追逐靴子	1015
征服面罩	1021
征服手套	1022
征服胸甲	1023
征服腿甲	1024
征服皮鞋	1025
史诗追逐头盔	1031
史诗追逐手套	1032
史诗追逐胸甲	1033
史诗追逐腿甲	1034
史诗追逐靴子	1035
传说追逐头盔	1041
传说追逐手套	1042
传说追捕胸甲	1043
传说追逐腿甲	1044
传说追逐靴子	1045
潮流墨镜	1051
透明手套	1052
军大衣	        1053
沙滩短裤	1054
人字拖鞋	1055
牛仔帽	        1061
牛皮手套	1062
牛仔马甲	1063
牛仔简裤	1064
马刺靴	        1065
飘逸卷发	1071
纳米手套	1072
超人披风	1073
纳米长裤	1074
超人战靴	1075
圆顶帽	        1081
教父手套	1082
教父礼服	1083
教父长裤	1084
英伦皮鞋	1085
英俊马尾	1086
锦缎护手	1087
云纹锦衫	1088
锦缎下摆	1089
云纹锦履	1090
冲浪大背头	1091
防水电子表	1092
冲浪滑板	1093
冲浪沙滩裤	1094
沙滩拖鞋	1095
玩咖面具	1099
电子手套	1100
派对玩咖外套	1101
派对玩咖短裤	1102
荧光跑鞋	1103
英伦短发	1106
绅士白手套	1107
罗曼蒂克西服	1108
罗曼蒂克西裤	1109
绅士短靴	1110
威音护目镜	1115
威音手套	1116
威音上衣	1117
威音长裤	1118
威音浪步	1119
船长帽	        1132
船长手套	1133
船长上衣	1134
船长长裤	1135
船长鞋子	1136

失意者：									
新手帽子	2001
新手手套	2002
新手夹克	2003
新手长裤	2004
新手鞋子	2005
夜行面罩	2011
夜行护腕	2012
夜行胸甲	2013
夜行长裤	2014
夜行靴子	2015
幻影兜帽	2021
幻影手套	2022
幻影皮甲	2023
幻影皮裤	2024
幻影皮鞋	2025
史诗夜行面罩	2031
史诗夜行护腕	2032
史诗夜行胸甲	2033
史诗夜行长裤	2034
史诗夜行靴子	2035
传说夜行面罩	2041
传说夜行护腕	2042
传说夜行胸甲	2043
传说夜行长裤	2044
传说夜行靴子	2045
鸭舌帽	        2051
透明手套	2052
时尚卫衣	2053
嘻哈长裤	2054
帆布鞋	        2055
袋鼠头套	2061
拳击手套	2062
玫瑰西装	2063
西装短裤	2064
正装皮鞋	2065
假面面罩	2071
猩红手套	2072
假面礼服	2073
假面皮裤	2074
假面短靴	2075
未来头盔	2076
未来手套	2077
未来机甲	2078
未来腿甲	2079
未来战靴	2080
侠客簪发	2081
銮金手套	2082
狮面短褂	2083
金纹缎裤	2084
金边红履	2085
英伦风挑染	2086
运动绷带	2087
校服小西装	2088
英伦风校裤	2089
运动帆布鞋	2090
菠萝头	        2091
运动手套	2092
纪念T恤	        2093
休闲七分裤	2094
休闲板鞋	2095
派对橘子头	2096
派对泳装手套	2097
沙滩花环衬衣	2098
派对沙滩裤	2099
沙滩人字拖	2100
兔耳头饰	2101
梦境手带	2102
兔先生礼服	2103
兔先生西裤	2104
兔先生皮鞋	2105
摇滚脏辫	2106
DMM手环	        2107
0803球衣	2108
篮球短裤	2109
高帮篮球鞋	2110
贵族银发	2111
冰雪手套	2112
王子披风	2113
王子西裤	2114
冰雪皮鞋	2115

女特工：
经典马尾	3001
经典裸手	3002
经典西装	3003
经典裙装	3004
经典高跟	3005
时尚警帽	3006
女警手套	3007
紧身警服	3008
紧身警裤	3009
执勤高跟	3010
时尚卷发	3011
五彩手环	3012
繁星泳衣	3013
薄纱泳裤	3014
罗马高跟	3015
星航头盔	3016
星航手套	3017
星航战甲	3018
星航腿甲	3019
星航战靴	3020
航海头盔	3021
航海手套	3022
航海战甲	3023
航海腿甲	3024
航海战靴	3025
半月髻		3026
红莲手纱	3027
莲花羽裳	3028
双蝶缎裙	3029
绣花绫鞋	3030
潜水泳镜	3031
潜水手套	3032
潜水紧身衣	3033
潜水紧身裤	3034
坡跟沙滩鞋	3035
电音定制耳机	3038
电音手套	3039
电音摇滚外套	3040
电音摇滚短裤	3041
电音摇滚靴	3042
蝴蝶头纱	3044
纯白手套	3045
纯白抹胸	3046
美神裙摆	3047
纯白高跟鞋	3048
和风头饰	3051
女忍者手套	3052
忍者和服上衣	3053
忍者和服下摆	3054
忍者鞋		3055
红桃皇冠	3056
舞会手套	3057
SS6女警衣	3058
SS6女警腿	3059
舞会长靴	3060
回音长辫	3063
回音手套	3064
回音夹克	3065
回音热裤	3066
回音舞光	3067
糖果马尾辫	3073
糖果手套	3074
SS9女特工上衣	3075
SS9女特工下装	3076
糖果高跟	3077

变身物品

长椅100
床101
箱子102
仙人掌
103
凳子104
马桶105
电脑106
抽屉107
花108
109桌子
110路障
115牌
116鼓
117绿色垃圾桶
118蓝色垃圾桶
119鸭子
120球

buff
100 暴走
101 定身
102 跳高
103 健步如飞
105 眩晕
106 叠伤
107 无敌
108 肾上腺素
109 健步如飞
110 健步如飞
111 暴走
112 变羊术
113 暴走
114 无敌
200 醉酒
201 毒液
202 健步如飞
203 减速
204 毒液
205 减速
206 肾上腺素
300 无敌
301 吸血
302 眩晕
400 跳高
401 变羊术
402 肾上腺素
403 眩晕
404 缴械
405 眩晕
501 毒液
502 眩晕
503 甜心锁链
504 肾上腺素
505 无敌
506 健步如飞
507 眩晕
508 减速
509 攻速
510 吸血
511 无敌
520 眩晕
521 植梦
522 梦魇
524 抢红包玩法_小红包图标
525 抢红包玩法_大红包图标
526 抢红包玩法_福袋图标
527 肾上腺素
528 缴械
530 肾上腺素
531 影割
532 影噬
533 变羊术
534 健步如飞
535 变羊术
537 减速
538 眩晕
539 坚毅盾墙
540 减速
541 洞察加速
542 觉醒
543 健步如飞
544 冰冻
545 缴械
546 植梦
547 时光回溯
548 显形
549 猛扑标记
550 毒液
551 暴走
552 均衡形态
553 强力形态
554 敏捷形态
555 抱摔减速
557 能量腕炮燃烧
558 眩晕
559 无敌
560 肾上腺素
564 健步如飞
566 减速
567 探测
568 眩晕
569 健步如飞
10103 暴走
10201 毒液
11201 肾上腺素
11103 健步如飞
10600 叠加伤害
10203 减速
10402 肾上腺素
10601 健步如飞
50200 醉酒
80103 健步如飞
80001 冷却
80002 攻速
80003 伤害反弹
80004 恢复加成
80006 护盾
80007 暴击加成
80008 伤害减少
80009 暴走
80010 探测
80011 自动恢复
80012 闪电状态
80013 梦魇
80014 经验加成
91001血量上限
91011 健步如飞
91021 跳高
91031 冷却
91041 隐身
91051 护盾
91061 吸血
91071 攻速
91081 暴走
91091 恢复
91101 无敌
91111 霸体
91121 恢复加成
91131 伤害反弹
91141 韧性
91151 经验加成
91161 伤害减少
91171 暴击加成
92001 血量上限

涂鸦

950001 我爱DMM


950011 WowWow


950021 点赞


950031 唇印


950041 GG


950051 比心(左)


950061 比心(右)


950071 劳动节快乐


950081 一见粽情


950091 石头


950101 剪刀


950111 布


950121 呃，有毒！


950131 哒哒哒


950141 陷阱夹子


950151 艾可记忆


950161 小心心


950171 1周年蛋糕


950181 FIGHTING！


950191 狂欢礼花


950201 对不起！我先走


950211 企鹅大玩咖


950221 三好学妹


950231 金币箱子


950241 滑稽失忆者


950251 死神来了


950261 进阶新星


950271 进阶新星


950281 圣诞快乐


950291 雪花点点


950301 MerryEcho


950311 冰阔落


950321 小心井盖


950331 伪装宝盒


950341 雪像素人


950351 我太冷了


950361 我在这里

950371 暗中观察
950381 圣诞花环


950391 2020新年快乐


950401 到此一游


950411 我酸了


950421 吃西瓜看戏


950431 帽子戏法


950441 鸽子一连


950451 鸽子二连


950461 大王


950471 学妹送福


950481 鼠年快乐


950491 红包拿来


950501 膨胀元宵


950511 JOKER


950521 nino早上好


950531 翻车现场


900381 炫酷滑板


900371 魔法光墙


950581 武汉加油


950541 肥仔呆滞


950551 胖妞呆滞


950561 墙角害怕


950571 炫酷滑板


950591 我是主唱


950601 摇滚的电视


950611 就你皮


950621 快来救我


950631 摇滚的瓦斯


950641 熊猫DJ


950651 winTime


950661 DMM战队


950671 DMM奖杯

头像框




900001 经典浅蓝


900002 周卡专属


900003 月卡尊享


900011 猪年贺春


900021 球球天使


900031 异次元使者


900041 2018年度玩家


900051 创意达人


900061 清凉一夏


900071 绝世毒师


900081 至尊枪神


900091  2019周年庆


900101 战斗少女


900111 追风小虎牙


900121 蔷薇宠儿·壹


900131 蔷薇宠儿·贰


900141 蔷薇宠儿·叁


900151 蔷薇宠儿·肆


900161 蔷薇宠儿·伍


900191 金狮传说·壹


900201 金狮传说·贰


900211 金狮传说·叁


900221 金狮传说·肆


900231 金狮传说·伍


900261 4399巅峰冠军


900271 4399荣耀亚军


900281 4399荣耀季军


900291 4399赛事纪念


900301 冰雪派对


900311 圣诞麋鹿


900321 大发明家


900331 奇幻狂欢


900341 新年气象


900351 甜蜜回忆
900361 甜蜜定格


900385 炫酷滑板


900375 魔法光墙

家族职位

族长1
副族长2
技术肝帝3
氪金大佬4
颜值担当5
普通族员6

段位

青铜1
白银2
黄金3
钻石4
超凡5
王者6

称号

开锁高手1
救世主2
就喜欢皮6
狂暴战士7
速战速决8
输出爆表10
极速逃生11
开门英雄12
最高伤害13
救世主14
速战速决15

礼物

粉玫瑰--1
666--2
浪漫环游--3
星月兔兔--4
DMM火箭--5
丘比特之恋--6

按钮

移动1
变身/下车2
跳跃3
武器攻击4
捐钱求助5
放置夹子/放人6
角色主动技能7
传送8
倒车9
道具卡1--10
道具卡2--11
道具卡3--12
道具卡4--13
查看表情14
快捷表情1--15
快捷表情2--16
快捷表情3--17
快捷表情4--18
快捷表情5--19
快捷表情6--20
取消释放21
切换聊天频道22
发送语音23
发送文字24

抽卡（每个段位的不一样）

普通抽卡：
30031青铜普通抽卡


30032白银普通抽卡


30033黄金普通抽卡


30034钻石普通抽卡


30035大师普通抽卡


30036王者普通抽卡


高级抽卡：

30037青铜高级抽卡


30038白银高级抽卡


30039黄金高级抽卡


30040钻石高级抽卡


30041大师高级抽卡


30042王者高级抽卡


超级抽卡：

30043青铜超级抽卡


30044白银超级抽卡


30045黄金超级抽卡


30046钻石超级抽卡


30047大师超级抽卡


30048王者超级抽卡

           
]])
end

function u1()
pl = gg.alert("请选择开关","锁定道具[开]","锁定道具[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'锁定道具')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1E07618},},'锁定道具')
end
end

function u2()
pl = gg.alert("请选择开关","渲染透视[开]","渲染透视[关]")
if pl==1 then
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
end
if pl==2 then
fastsearch
({{-369098723,4,16384},{1,68,16}},
{
{0,68,16,false}})
end
end

function ldgnldjdhsjs()
menu1 = gg.multiChoice({
"锁定道具[全局]",--1
"渲染透视[全局]",--2
"返回主页",},
nil,os.date("适应8.14.1版本 大乱斗功能\n当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then u1() end
if menu1[2] == true then u2() end
if menu1[3] == true then Main() end
end

function mswqzhwqzh()
menu1 = gg.multiChoice({
"追捕破盾[稳定]",
"杀猪队友[危]",
"锁子弹[未修复]",
"武器无后[修复]",
"A内存无间[修复]",
"解锁模式[大厅]",
"变身攻击[修复]",
"子弹穿墙[稳定]",
"武器射程[稳定]",
"人物踏空[稳定]",
"锁血[稳定]",
"解锁角色[大厅]",
"倒地道具[大厅]",
"视角自调[稳定]",
"刷米[稳定]",
"关闭刷米[稳定]",
"返回主页",--17
 }, nil,os.date"武器综合'")
if menu1 == nil then else
if menu1[1] == true then e10() end
if menu1[2] == true then e11() end
if menu1[3] == true then e12() end
if menu1[4] == true then e13() end
if menu1[5] == true then e14() end
if menu1[6] == true then e15() end
if menu1[7] == true then e16() end
if menu1[8] == true then e17() end
if menu1[9] == true then e18() end
if menu1[10] == true then e19() end
if menu1[11] == true then e20() end
if menu1[12] == true then e21() end
if menu1[13] == true then e22() end
if menu1[14] == true then e23() end
if menu1[15] == true then e24() end
if menu1[16] == true then e25() end
if menu1[17] == true then Main() end
end
end
function e10()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
qc=gg.alert("破盾","开","关")
if qc==1 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-486539264,1516,4,false},{-516948194,1520,4,false}},4,16384,"破盾[开]")
end
if qc==2 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-382908368,1516,4,false},{-494030840,1520,4,false}},4,16384,"破盾[关]")
end
end
function e11()
qc=gg.alert("杀猪队友","开启","关闭")
if qc==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("杀队友✓")
	 gg.clearResults()
end
if qc==2 then  
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
	 gg.toast("杀队友X")
	 gg.clearResults()
end
end
function e12()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},})
  end
    function e13()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
  end
function e14()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libil2cpp.so", "Cd"}
local tt = {0x2116C0, 0x5C, 0x1B0, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libil2cpp.so", "Cd"}
local tt = {0x21542C, 0x5C, 0x168, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function e15()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xF82AAC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF82AB0},})
end
function e16()
fastsearch({{0.00100000005,16,16384},{-382907280,184,4}},{{-516948194,184,4,false}})
end
function e17()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEFA238},})
end
function e18()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEF9170},})
end
function e19()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("人物踏空开启成功")
  gg.clearResults()
end
function e20()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-1.30939232e25;-1.3068399e21;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
  gg.toast("锁血修改成功")
  gg.clearResults()
  end
  function e21()
a =gg.alert("解锁角色","基址","指针")
if a ==1 then
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x106F4D8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x106F4DC},})
end
end
function e22()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1CBBFC8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBBFCC},})
end
function e23()
tg=gg.prompt({i='请输入要修改的视角大小'}, {i='23'})
qmnb = {
{["memory"] = 32},
{["name"] = "视角自调"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = tg["i"],["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end
function e24()
sq=gg.alert("选择模式","8v2","4v1")
if sq==1 then--8v2刷钱
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end
if sq==2 then--4v1刷钱
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
end
function e25()
gg.clearList()
gg.toast("停止刷米")
end

function nmksjsjvsjsbss()
UI = 'nmk'
local menu = gg.multiChoice({
"修改钻石",
"修改等级",
"修改文字",
"修改角色",
"刷新武器",
"卡刷武器",
"美化武器",
"一建美化",
"实战美化",
"返回主页",
}, nil, "实战功能区\n尽量少开")
if menu then
for i in pairs(menu) do
_ENV[({"xxk1",'xxk2','xxk3','xxk4','xxk5','xxk6','xxk7','xxk8','xxk9','Main'})[i]]()
  end
 end 
end

function xxk1()
mx= gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})
  if mx == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber( mx[1] , gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    if gg.getResultCount() >= 300 then gg.alert("中看不中用，拿来装逼的")os.exit()end
    gg.getResults(100)
    gg.editAll("999999999",gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
end

function xxk2()
local xt=gg.prompt({"道具等级"}, {[1] = 13}, {[1] = "text"})
xtnb({{false,502000,0,4,nil,nil},{501900,4,4}},{{xt[1],56,4,false},{xt[1],60,4,false},{xt[1],64,4,false},{xt[1],68,4,false},{xt[1],72,4,false},{xt[1],76,4,false},{xt[1],80,4,false},{xt[1],84,4,false},{xt[1],88,4,false},{xt[1],92,4,false},{xt[1],96,4,false},{xt[1],100,4,false}},4,32,"修改等级")
end

function xxk3()
local a=gg.prompt({"修改前的文字","修改后的的文字"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
end

function xxk4()
a=gg.prompt({"BOSS10000 阿治2100 指绘师2000 机械之心1900 灵膳子1800 小骇客1700 命石者1600 小狮子1500 黎明盾卫1400 星辰圣女1300 影之忍者1200 水之忍者1100 小梦魇1000 小狐狸900艾可800 发明家700 魔术师600 机器人500 小学妹400 女特工300 失忆者200 雇佣兵100 自行修改"},{[1]="" })
fastsearch({
{100,4,32},
{2,-4,4},
{0,-8,4},
{0,-12,4}
},
{{a[1],4,4,true}})
end

function xxk5()
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})
gg.toast("刷新成功")
end

function xxk6()----凭空刷武器-带的就刷你带的的武器
gg.alert('卡槽备武器，否则修改失败')
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})gg.clearList()
end

function xxk7()----配合刷武器美化
b=gg.prompt({'火箭筒','迫击炮',},{},{'checkbox','checkbox'})
if b==nil then
return Main()
end
if b[1] == true
then
fastsearch({{500010,4,32},},{{600016,0,4,false}})
fastsearch({{500011,4,32},},{{600016,0,4,false}})
fastsearch({{500012,4,32},},{{600016,0,4,false}})
end
if b[2] == true 
then
fastsearch({{500020,4,32},},{{600881,0,4,false}})
fastsearch({{500021,4,32},},{{600881,0,4,false}})
fastsearch({{500022,4,32},},{{600881,0,4,false}})
end end

function xxk8()
fastsearch
({
{500001,4,32},
},
{{601211,0,4,false}})
fastsearch
({
{500002,4,32},
},
{{600231,0,4,false}})
fastsearch
({
{500003,4,32},
},
{{600251,0,4,false}})
fastsearch
({
{500004,4,32},
},
{{600266,0,4,false}})
fastsearch
({
{500005,4,32},
},
{{602006,0,4,false}})
fastsearch
({
{500007,4,32},
},
{{601981,0,4,false}})
fastsearch
({
{500008,4,32},
},
{{602026,0,4,false}})
fastsearch
({
{500200,4,32},
},
{{600216,0,4,false}})
fastsearch
({
{500300,4,32},
},
{{600181,0,4,false}})
fastsearch
({
{500400,4,32},
},
{{601986,0,4,false}})
fastsearch
({
{500500,4,32},
},
{{600161,0,4,false}})
fastsearch
({
{500600,4,32},
},
{{600331,0,4,false}})
fastsearch
({
{500700,4,32},
},
{{650081,0,4,false}})
fastsearch
({
{500800,4,32},
},
{{601061,0,4,false}})
fastsearch
({
{500900,4,32},
},
{{650131,0,4,false}})
fastsearch
({
{501000,4,32},
},
{{650141,0,4,false}})
fastsearch
({
{501100,4,32},
},
{{600751,0,4,false}})
fastsearch
({
{501200,4,32},
},
{{602051,0,4,false}})
fastsearch
({
{501300,4,32},
},
{{600701,0,4,false}})
fastsearch
({
{501400,4,32},
},
{{602056,0,4,false}})
fastsearch
({
{501500,4,32},
},
{{602061,0,4,false}})
fastsearch
({
{501600,4,32},
},
{{601331,0,4,false}})
fastsearch
({
{501700,4,32},
},
{{650776,0,4,false}})
fastsearch
({
{501800,4,32},
},
{{601931,0,4,false}})
fastsearch
({
{501900,4,32},
},
{{601566,0,4,false}})
fastsearch
({
{502000,4,32},
},
{{601571,0,4,false}})
fastsearch
({
{502100,4,32},
},
{{650666,0,4,false}})
fastsearch
({
{502200,4,32},
},
{{650691,0,4,false}})
fastsearch
({
{500010,4,32},
},
{{650756,0,4,false}})
fastsearch
({
{500020,4,32},
},
{{600881,0,4,false}})
fastsearch
({
{500030,4,32},
},
{{600646,0,4,false}})
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
fastsearch
({
{500050,4,32},
},
{{650511,0,4,false}})
fastsearch
({
{500060,4,32},
},
{{650636,0,4,false}})
fastsearch
({
{500070,4,32},
},
{{650741,0,4,false}})
fastsearch
({
{502300,4,32},
},
{{650751,0,4,false}})
fastsearch
({
{500090,4,32},
},
{{650781,0,4,false}})
end

function xxk9()
fastsearch
({
{500010,4,32},
},
{{600016,0,4,false}})
fastsearch
({
{500020,4,32},
},
{{600236,0,4,false}})
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
fastsearch
({
{500060,4,32},
},
{{601796,0,4,false}})
fastsearch
({
{500005,4,32},
},
{{602006,0,4,false}})
fastsearch
({
{500600,4,32},
},
{{600331,0,4,false}})
fastsearch
({
{500700,4,32},
},
{{600566,0,4,false}})
fastsearch
({
{500002,4,32},
},
{{600231,0,4,false}})
fastsearch
({
{500500,4,32},
},
{{600161,0,4,false}})
fastsearch
({
{500001,4,32},
},
{{601211,0,4,false}})
fastsearch
({
{500070,4,32},
},
{{601941,0,4,false}})
end

function a1shishsjwb3()
menu1 = gg.multiChoice({
"4v1刷钱",
"8v2刷钱",
"️停止刷钱",
"️返回主页",
}, nil, os.date("返回主页点取消"))
if menu1 == nil then else
if menu1[1] == true then na1() end
if menu1[2] == true then na2() end
if menu1[3] == true then na3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function na1()
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
function na2()
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function na3()
gg.clearList()
gg.toast("停止成功")
end







function Exit()
print("🤓小羽神辅助\n已结束\n祝您游戏愉快🤓")
os.exit()
end
-------------------------------------------------------------------------------------------------------------
function HOME()
lw=1
Main()
end
-------------------------------------------------------------------------------------------------------------
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