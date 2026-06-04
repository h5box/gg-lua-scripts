


file=io.open('/storage/emulated/0/Tencent/1.txt','a+') --不同的脚本路径自己改
    file:write('1') 
    yxnb = file:seek('end')  
    gg.alert("全网启动"..yxnb.."次","")





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


bqt={"🔰","🔶","💎","💰","💮","❄️","🎀","🎃","👑","🎆","💞","🍀","🐴","☁","💥"}
local APP=gg.getTargetInfo()
function Main()
gg.toast("十二星内置")
  UI = 'Main'
local sjbq=bqt[math.random(1,#bqt)]
bygy = gg.choice({
	 sjbq.."游戏设置[防闪]"..sjbq,--2
	 sjbq.."直装功能[最新]"..sjbq,--3
	 sjbq.."稳定功能[稳定]"..sjbq,--4
  sjbq.."角色功能[好玩]"..sjbq,--5
	 sjbq.."娱乐功能[超多]"..sjbq,--6
	 sjbq.."乱斗功能[稳定]"..sjbq,--7
	 sjbq.."武器功能[稳定]"..sjbq,--8
	 sjbq.."变身功能[好玩]"..sjbq,--9
	 sjbq.."解封设备[推荐]"..sjbq,--10
	 sjbq.."功能思路[中用]"..sjbq,--11
	 sjbq.."变身技能[好玩]"..sjbq,--12
	 sjbq.."角色服装[好玩]"..sjbq,--13
	 sjbq.."其他功能[好玩]"..sjbq,--14
	 sjbq.."退出脚本"..sjbq,--15
}, Jt,os.date"\n当前时间:%Y年/️%m月/%d日%H:%M:%S\n")
if bygy then
    Jt=bygy
    _ENV[
    ({
    "xiop",
    "A",
    "B",
    "C",
    "D",
    "F",
    "G",
    "H",
    "J",
    "K",
    "L",
    "Z",
    "X",
    "Exit"
    })[bygy]]()
 end
end
-------------------------------------------------------------------------------------------------------------


function xiop()
UI = 'xiop'
local menu = gg.multiChoice({
"游戏注入防闪",
"大厅注入防封",
"局内注入防封",
"注入清理追封",
"返回主页",
}, nil, "游戏设置\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"xiop1",
"xiop2",
"xiop3",
"xiop4",
'Main'
})[i]]()
  end
 end 
end

function xiop4()
gg.alert("温馨提示：准备下线开")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
os.remove("/storage/emulated/0/android/data/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("杀封号检测")
gg.sleep(500)
gg.toast("杀除任何检测")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/android/data/com.bairimeng.dmmdzz.qihoo")
gg.toast("杀封号检测文件")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
flags = gg.TYPE_DWORD,
freeze = true,
value = 0
}
})
end
gg.toast("杀检测开启成功")
end

function xiop2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,712,962", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,037,110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,968,111,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,217,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,159", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,157", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,156", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,151,534", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,430,572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,788,832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,422,437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,235,247", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,236,515", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,708,897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,627,244", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,040,662", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,684,512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,236,793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,136,032", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,234,368", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,234,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,158,138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,984,168,047", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,627,257", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,350,894", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,368,932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,727,714", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,365,092", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,514,504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("注入成功\n\n开始奔放")
gg.clearResults()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x36f4f7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x36f4f7c},})
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,700,929,651;1,065,353,216;1,048,576,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,700,929,651", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
if gg.getRangesList("libunity.so")[1] then
local t = {}
t[1] = gg.getRangesList("libunity.so")[1]["start"] + 0xA7D3A0; -- 数值地址:0xBE9C83A0
t[2] = gg.getRangesList("libunity.so")[1]["start"] + 0xE277A0; -- 数值地址:0xBED727A0
gg.addListItems({
[1] = { 
address = t[1],
flags = 4,
value = 0,
freeze = true,
},
[2] = { 
address = t[2],
flags = 4,
value = 0,
freeze = true,
},
})
end
if gg.getRangesList("libbrms.so")[1] then
local t = {}
t[1] = gg.getRangesList("libbrms.so")[1]["start"] + 0x137F68; -- 数值地址:0x8D187F68
t[2] = gg.getRangesList("libbrms.so")[1]["start"] + 0x137F74; -- 数值地址:0x8D187F74
gg.addListItems({
[1] = { 
address = t[1],
flags = 4,
value = 0,
freeze = true,
},
[2] = { 
address = t[2],
flags = 4,
value = 0,
freeze = true,
},
})
end
if gg.getRangesList("libbootstrap.so")[1] then
local t = {}
t[1] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x8AC34; -- 数值地址:0xBF3D4C34
t[2] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x8AC40; -- 数值地址:0xBF3D4C40
gg.addListItems({
[1] = { 
address = t[1],
flags = 4,
value = 0,
freeze = true,
},
[2] = { 
address = t[2],
flags = 4,
value = 0,
freeze = true,
},
})
end
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9acc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9ae4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9af4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b08},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b20},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b30},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b48},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b64},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b80},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8dc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe89c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe888},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe858},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe83c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe828},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe808},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe73c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe74c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe778},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe908},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c39ef0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d09a84},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1ce88},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d39284},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d3d860},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d42684},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4daf700},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e025a4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e02684},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e14578},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e289f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28bdc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28d40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e44f1c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x3928},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x5270},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x1a8d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x24af4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042b3c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042c84},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x47d1278},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x47ebf7c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4827b5c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c2799c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x3472788},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x1ae2dfc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x485e100},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x497e004},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x497fa78},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e45bac},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6fc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe70c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe728},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe738},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe748},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe76c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7bc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe878},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe968},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe978},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea68},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea6c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x3704fd4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c32d80},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x259a80c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4288},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4308},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4358},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4398},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6bc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6dc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40f8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4108},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4118},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4128},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de412c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4138},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de413c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4148},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de414c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de415c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4168},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4178},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3ff8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4008},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4018},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4028},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4038},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4048},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4058},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4068},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4078},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4088},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4098},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40a8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40b8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e2d2e8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e123c0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e463cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46230},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46430},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0d1e0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0e830},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0e894},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0ef28},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e10130},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e10174},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e11698},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1175c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e118c0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e11a98},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e121f0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46ce0},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e464c8},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e4647c},})
end

function xiop3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";0", gg.TYPE_WORD)
gg.toast("10%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("30%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("50%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("70%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("90%")
gg.clearResults()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end


function xiop1()
     gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("防闪注入成功")
	 gg.clearResults()
qmnb = {
{["memory"] = 16},
{["name"] = "防闪"},
{["value"] = 2, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
{["lv"] = 1,["offset"] =12, ["type"] = 4},
{["lv"] = 1,["offset"] =16, ["type"] = 4},
{["lv"] = 2,["offset"] =24, ["type"] = 4},
{["lv"] = 2,["offset"] =32, ["type"] = 4},
{["lv"] = 2,["offset"] =40, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 16384},
{["name"] = "去除ace检测"},
{["value"] = 0.00048828148, ["type"]=16},
{["lv"] = 184549345,["offset"]=-608, ["type"]=4},
}
qmxg = {
{["value"] = -476053504, ["offset"] = 37613628, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37613632, ["type"] = 4, ["freeze"] = true},
{["value"] = -476053504, ["offset"] = 37610268, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37610272, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)


end

function A()
UI = 'A'
local menu = gg.multiChoice({
    "角色全皮",--1
    "锁金币",--2
    "反弹伤害",--3
    "解锁模式",--4
    "道具皮肤",--5
    "杀队友",--6
    "免费购物",--7
    "解锁道具",--8
    "无限变身时间",--9
    "裁判模式",--10
    "解锁风格",--11
    "全角色",--12
    "直接开门",--13
    "返回主页",--14
}, nil, "直装功能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"A1",
"A2",
"A3",
"A4",
"A5",
"A6",
"A7",
"A8",
"A9",
"A10",
"A11",
"A12",
"A13",
'Main'
})[i]]()
  end
 end 
end

function A1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end

function A2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x3143a6c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3143a70},})
end

function A3()
nc_offset(getso("libil2cpp.so"),{{-482082700,4,0x1b148d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b148d8},})
end

function A4()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end

function A5()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b5141c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51420},})
end

function A6()
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

function A7()
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

function A8()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},})
end

function A9()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x3c706ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3c706b0},})
end

function A10()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b13d7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13d80},})
end

function A11()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b51c68},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51c68},})
end

function A12()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea5158},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea515c},})
end

function A13()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end

function B()
UI = 'B'
local menu = gg.multiChoice({
"3.6倍移速",
"3倍开锁",
"0概率触发开锁",
"移动开物",
"视野明透",
"逃生秒赢",
"一键开启[除秒赢]",
"返回主页",
}, nil, "稳定功能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"B1",
"B2",
"B3",
"B4",
"B5",
"B6",
"B7",
'Main'
})[i]]()
  end
 end 
end

function B1()
qmnb = {
{["memory"] = 32},
{["name"] = "3.6倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function B2()
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function B3()
fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")
end

function B4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()
end

function B5()
qmnb = {
{["memory"] = 32},
{["name"] = "视野明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function B6()
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

function B7()
qmnb = {
{["memory"] = 32},
{["name"] = "3.6倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)

fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()

qmnb = {
{["memory"] = 32},
{["name"] = "视野明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function C()
UI = 'C'
local menu = gg.multiChoice({
"命石抱摔距离",--1
"命石冲刺距离",--2
"锁定抱摔免费",--3
"狐狸队友[天赋]",--4
"狐狸冷却[天赋]",--5
"狐狸免费无冷",--6
"水忍护盾[天赋]",--7
"水忍冷却[天赋]",--8
"水忍数量免费",--9
"骇客开锁[天赋]",--10
"骇客技能无冷",--11
"骇客技能数量",--12
"盾位范围拉人",--13
"魔术木偶无限",--14
"团子免费[天赋]",--15
"圣女普攻修改",--16
"圣女技能修改",--17
"狮子全屏免费",--18
"奥博全屏免费",--19
"奥博技能免费",--20
"影忍全屏范围",--21
"影忍免费数量",--22
"梦魇伤害[天赋]",--23
"梦魇时间[天赋]",--24
"梦魇免费[天赋]",--25
"劲凯伤害范围",--26
"全角色技免费",--27
"全角色技无冷",--28
"返回主页",--29
}, nil, "角色功能\n[天赋是角色天赋页面再开]\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"C1",
"C2",
"C3",
"C4",
"C5",
"C6",
"C7",
"C8",
"C9",
"C10",
"C11",
"C12",
"C13",
"C14",
"C15",
"C16",
"C17",
"C18",
"C19",
"C20",
"C21",
"C22",
"C23",
"C24",
"C25",
"C26",
"C27",
"C28",
'Main'
})[i]]()
  end
 end 
end

function C1()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{10,-100,16},{99,-96,16,false}})
end
function C2()
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{20, 20, 16, false}})
end
function C3()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{1.40129846e-45,-268,16,true}})
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end
function C4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("5;6;7;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "负数为杀队友，正数为加护盾"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("35;30;25;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的冷却时间"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
function C6()
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
function C7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("33;38;43;48::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的护盾"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("60;52;44;36::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的冷却CD"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C9()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] = 0.5 } , 
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  60},
}
local tb2={ 
{["类型"] =  4 ,["偏移"] =  -4 , ["冻结"] =  false  , ["修改"] = 114514  } , --技能
{["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] = 0  } , ---冷却
{["类型"] =  4 ,["偏移"] =  4 , ["冻结"] =  false  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end
function C10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1;1.3;1.6;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的距离"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C11()
readWrite({{false,60.0,0,16,nil,nil},{55.0,4,16},{50.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能无冷却")
end
function C12()
qmnb = {
{["memory"] = 32},
{["name"] = "琪琪技能"},
{["value"] = 8.407790785948902E-44, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 114514, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
end
function C13()
u=gg.prompt({"输入你的当前60主技能的冷却"},{15.0},{"number"})
f=gg.prompt({"请输入你想改的范围"},{10},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "盾位范围拉人"},
{["value"] = 0.800000011920929, ["type"] = 16},
{["lv"] = u[1], ["offset"] = -124, ["type"] = 16},
{["lv"] = 60, ["offset"] = -120, ["type"] = 4},
{["lv"] = 1.25, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -124, ["type"] = 16, ["freeze"] = false},
{["value"] = 0, ["offset"] = -120, ["type"] = 4, ["freeze"] = false},
{["value"] = f[1], ["offset"] = -8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end
function C14()
u=gg.prompt({"输入你的想要的冷却"},{0},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "魔术师"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 100, ["offset"] = 64, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function C15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("80;75;65;60::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你要改的钱数"
}, {i = "0"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C16()
qf=  gg.prompt({"无间隔","无后座","锁子弹"},nil,{"checkbox","checkbox","checkbox"})
if qf ~= nil then
if qf[1] then
search(1089470464, 4, 32)
py1(1050253722, 4, -4)
py1(65536, 4, 152)
xg1(0, 4, -12, true)
gg.toast("无间隔")
end
if qf[2] then
search(1089470464, 4, 32)
py1(1050253722, 4, -4)
py1(65536, 4, 152)
xg1(0, 16, -8, false)
gg.toast("无后座")
end
if qf[3] then
search(1089470464, 4, 32)
py1(1050253722, 4, -4)
py1(65536, 4, 152)
xg1(0, 4, 24, true)
xg1(0, 4, 28, true)
gg.toast("锁子弹")
end
end
end
function C17()
qf=  gg.prompt({"免费无冷","自动攻击无间隔","攻击范围","持续时间"},nil,{"checkbox","checkbox","checkbox","checkbox"})
if qf ~= nil then
if qf[1] then
search(1109393408, 4, 32)
py1(100, 4, 4)
py1(5, 16, 88)
xg1(0, 16, 0, false)
xg1(0, 4, 4, false)
xg1(1, 4, 100, false)
gg.toast("圣光倾泄免费无冷")
end
if qf[2] then
search(1082130432, 4, 32)
py1(1084227584, 4, 20)
py1(1065353216, 4, 72)
xg1(0, 16, -12, false)
gg.toast("无间隔")
end
if qf[3] then
hj=gg.prompt({[1]="输入你要改的攻击范围"}, {[1]=""}, {[1]="number"})
if hj==nil then else
search(1082130432, 4, 32)
py1(1084227584, 4, 20)
py1(1065353216, 4, 72)
xg1(hj[1], 16, -8, false)
gg.toast("已修改为"..hj[1].."范围")
end
end
if qf[4] then
hj=gg.prompt({[1]="输入你要改的持续时间"}, {[1]=""}, {[1]="number"})
if hj==nil then else
search(1082130432, 4, 32)
py1(1084227584, 4, 20)
py1(1065353216, 4, 72)
xg1(hj[1], 16, -4, false)
gg.toast("已修改为"..hj[1].."持续时间")
end
end
end
end
function C18()
u=gg.prompt({"输入你的想要的伤害"},{},{"number"})
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
{["value"] = u[1],["offset"] =-0x1C, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)
end
function C19()
u=gg.prompt({"输入你的想要的伤害"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = u[1],["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end
function C20()
readWrite({{false,140.0,0,16,nil,nil},{135.0,4,16},{125.0,8,16}},{{0,0,16,false},{0,4,16,false},{0,8,16,false},{0,12,16,false}},16,32,"技能免费")
end
function C21()
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{99,84,16,false}})
end
function C22()
qmnb = {
{["memory"] = 32},
{["name"] = "影之忍者技能变多+免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
{["lv"] = 1036831949,["offset"] =-36, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4},
{["value"] = 9999,["offset"] =-40, ["type"] = 4,},
}
xqmnb(qmnb)
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{0,88,4},{9999,92,16,false}})
end
function C23()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;10;15;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的泡泡伤害"
}, {i = "100"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C24()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("3;4;5;7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的火梦魇之力时间"
}, {i = "50"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C25()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("150;135;120;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "请输入你想要改的技能钱数"
}, {i = "0"})
gg.editAll(fw.i, gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.clearResults()
end
function C26()
local LL=gg.prompt({"↓伤害↓","↓吸人范围↓","↓冲刺距离↓","↓吸人时间↓"},{[1]="" },{[2]=""},{[3]=""},{[4]=""})
fastsearch
({{-934560717,4,32},{80,-0x20,4},{8,-0x24,16}},
{
{0,-0x20,4}--金币
,{0,-0x24,16}--冷却时间
,{LL[1],0x94,16}--伤害
,{LL[2],0x4C,16}--范围
,{LL[3],0x64,16}--攻击距离
,{LL[4],0x70,16}--吸人时间
})
end
function C27()
fastsearch--全角色技能免费
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
function C28()
fastsearch--全角色技能无冷
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

function D()
UI = 'D'
local menu = gg.multiChoice({
"人物踏空",--1
"视角自调",--2
"全星耀动作",--3
"不死捐钱",--4
"吸人",--5
"全图踩夹",--6
"追捕开锁",--7
"开锁刷钱",--8
"手雷全屏秒杀[追]",--9
"疾跑改无敌",--10
"观战控制别人",--11
"修改段位",
"满级道具",
"返回主页",--12
}, nil, "娱乐功能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"D1",
"D2",
"D3",
"D4",
"D5",
"D6",
"D7",
"D8",
"D9",
"D10",
"D11",
"D12",
"D13",
'Main'
})[i]]()
  end
 end 
end

function D1()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("人物踏空开启成功")
  gg.clearResults()
end

function D2()
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

function D3()
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
{964511,16,4},
{964501,20,4,false}})
end

function D4()
qmnb = {
      {["memory"] = 32},
      {["name"] = "不死捐钱"},
      {["value"] = 37, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 16, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 32, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 40, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 1, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)
end

function D5()
qc=gg.alert("吸人","4v1","8v2","基址吸人")
if qc==1 then
n=gg.alert("41吸人","开启","关闭")
if n==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "41吸人"},
{["value"] = 80, ["type"] = 4},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 30,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end
if n==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "41吸人"},
{["value"] = 80, ["type"] = 4},
{["lv"] = 0,["offset"] =8, ["type"] = 16},
{["lv"] = 30,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 1.0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end
end
if qc==2 then
h=gg.alert("82吸人","开启","关闭")
if h==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "82吸人"},
{["value"] = 39, ["type"] = 4},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 88,["offset"] =-4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end
if h==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "82吸人"},
{["value"] = 39, ["type"] = 4},
{["lv"] = 0,["offset"] =4, ["type"] = 16},
{["lv"] = 88,["offset"] =-4, ["type"] = 4},
}
qmxg = {
{["value"] = 1.0,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end
end
if qc==3 then
nh=gg.alert("基址吸人","开启","关闭")
if nh==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x14D19D8},})
end
if nh==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x14D19D8},})
end
end
end

function D6()
fastsearch
({
{128.31251525879,16,16384},
{-382907280,-400,4},
{167772163,-452,4}
},
{
{-516948194,-400,4,false}})
end

function D7()
qmnb = {
{["memory"] = 16384},
{["name"] = "追捕开锁"},
{["value"] = 75900672, ["type"] = 4},
{["lv"] = 75900652, ["offset"] = 4, ["type"] = 4},
{["lv"] = -382908368, ["offset"] = 8, ["type"] = 4},
{["lv"] = -494030840, ["offset"] = 12, ["type"] = 4},
{["lv"] = -442544040, ["offset"] = 16, ["type"] = 4},
{["lv"] = -509591552, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = -516948194, ["offset"] = 12, ["type"] = 4, ["freeze"] = false},
{["value"] = -476053503, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end

function D8()
yw=gg.alert("开锁金币","4v1","8v2")
if yw==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
if yw ==2 then
fastsearch({
{4489188110532608000,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{184319,92,4,true}})
end
end

function D9()
qmnb = {
{["memory"] = 32},
{["name"] = "手雷全屏秒杀[追]"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
end

function D10()
fastsearch({{106147,4,32},{32,0x2c, 16}},{{300,0x6,2},},"疾跑改无敌")
end

function D11()
yw=gg.alert("观战控人","开启","关闭")
if yw==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd52374},})
end
if yw==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xd52374},})
end
end

function D12()
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-36,4,false}},4,32,"开启成功")
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-44,4,false}},4,32,"开启成功")
end

function D13()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d630},})
end

function F()
UI = 'F'
local menu = gg.multiChoice({
"武器间隔",
"超级透视",
"锁道具",
"道具无CD",
"锁子弹",
"返回主页",
}, nil, "乱斗功能\n大厅开\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"F1",
"F2",
"F3",
"F4",
"F5",
'Main'
})[i]]()
  end
 end 
end

function F1()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end

function F2()
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

function F3()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e0761c},})
end

function F4()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
end

function F5()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end


-----------------------------------------------------------------------------------------------

function G()
UI = 'G'
local menu = gg.multiChoice({
"破追捕盾",
"火箭筒武器连发",--1
"迫击炮武器连发",--2
"冲锋枪武器连发",--3
"能量剑武器连发",--4
"蹦蹦枪武器连发",--5
"能量炮武器连发",--6
"霰弹枪武器连发",--7
"唤风镖武器连发",--8
"霸天斧武器连发",--9
"黎明盾武器连发",--10
"星辰女武器连发",--11
"威震天武器连发",--12
"热破枪武器连发",--13
"红蜘蛛武器连发",--14
"自动枪武器连发",--15
"电球枪武器连发",--16
"生物枪武器连发",--17
"像素剑武器连发",--18
"滋水枪武器连发",--19
"返回主页",
}, nil, "武器功能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"G1",
"G2",
"G3",
"G4",
"G5",
"G6",
"G7",
"G8",
"G9",
"G10",
"G11",
"G12",
"G13",
"G14",
"G15",
"G16",
"G17",
"G18",
"G19",
"G20",
'Main'
})[i]]()
  end
 end 
end


function G2()
qc=gg.alert("火箭筒连发","普通","乱斗")
if qc==1 then
B1 = io.open('/sdcard/Download/火箭筒普通连发','r'):read("*a") fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{A1, 8, 4, false}, {0, 24, 16, false}})end
if qc==2 then
B2 = io.open('/sdcard/Download/火箭筒乱斗连发连发','r'):read("*a") fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{B2, 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{B2, 8, 4, false}, {0, 24, 16, false}})end
end
function G3()
B3 = io.open('/sdcard/Download/迫击炮1级连发','r'):read("*a") fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{B3, 8, 4, false}, {0, 24, 16, false}})end
function G4()
B4 = io.open('/sdcard/Download/冲锋枪连发','r'):read("*a") fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{B4, 8, 4, false}})end
function G5()
qc=gg.alert("能量剑","普通","金库","大乱斗新地图") if qc==1 then B5 = io.open('/sdcard/Download/能量剑普通连发','r'):read("*a") fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B5, 8, 4, false}}) end if qc==2 then B6 = io.open('/sdcard/Download/能量剑金库连发','r'):read("*a") fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B6, 8, 4, false}}) end if qc==3 then B7 = io.open('/sdcard/Download/能量剑乱斗连发','r'):read("*a") fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B7, 8, 4, false}}) end
end
function G6()
qc=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then B8 = io.open('/sdcard/Download/蹦蹦枪普通连发','r'):read("*a") fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B8, 8, 4, false}, {0, 24, 16, false}}) end if qc==2 then B9 = io.open('/sdcard/Download/蹦蹦枪金库连发','r'):read("*a") fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B9, 8, 4, false}, {0, 24, 16, false}}) end if qc==3 then B10 = io.open('/sdcard/Download/蹦蹦枪乱斗连发','r'):read("*a") fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B10, 8, 4, false}, {0, 24, 16, false}}) end
end
function G7()
B11 = io.open('/sdcard/Download/能量炮1级连发','r'):read("*a") fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{B11, 8, 4, false}, {0, 24, 16, false}})end
function G8()
qc=gg.alert("霰弹枪","普通","金库") if qc==1 then B12 = io.open('/sdcard/Download/霰弹枪普通连发','r'):read("*a") fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{B12, 8, 4, false}, {0, 24, 16, false}}) end if qc==2 then B13 = io.open('/sdcard/Download/霰弹枪金库连发','r'):read("*a") fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{B13, 8, 4, false}, {0, 24, 16, false}}) end
end
function G9()
B14 = io.open('/sdcard/Download/换风镖连发','r'):read("*a") fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{B14, 8, 4, false}, {0, 24, 16, false}})end
function G10()
B15 = io.open('/sdcard/Download/霸天斧连发','r'):read("*a") fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{B15, 8, 4, false}})end
function G11()
B16 = io.open('/sdcard/Download/盾位连发','r'):read("*a") fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B16, 8, 4, false}})end
function G12()
B17 = io.open('/sdcard/Download/圣女连发','r'):read("*a") fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{B17, 8, 4, false}, {0, 24, 16, false}})end
function G13()
B18 = io.open('/sdcard/Download/威震天连发','r'):read("*a") fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B18, 8, 4, false}})end
function G14()
B19 = io.open('/sdcard/Download/热破连发','r'):read("*a") fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{B19, 8, 4, false}, {0, 24, 16, false}})end
function G15()
B20 = io.open('/sdcard/Download/红蜘蛛连发','r'):read("*a") fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{B20, 8, 4, false}})end
function G16()
B21 = io.open('/sdcard/Download/自动手枪连发','r'):read("*a") fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{B21, 8, 4, false}})end
function G17()
B22 = io.open('/sdcard/Download/电球枪连发','r'):read("*a") fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B22, 8, 4, false}, {0, 16, 16, false}})end
function G18()
B23 = io.open('/sdcard/Download/生物手枪连发','r'):read("*a") 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {B23, 8, 4, false}})end
function G19()
B24 = io.open('/sdcard/Download/像素剑连发','r'):read("*a") fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B24, 8, 4, false}})end
function G19()
B25 = io.open('/sdcard/Download/滋水枪连发','r'):read("*a") fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{B25, 8, 4, false}})end

function G1()
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

function H()
UI = 'H'
local menu = gg.multiChoice({
'吼吼号实体变身',
'阻挡箱实体变身',
'跳高实体变身',
'疾跑实体变身',
'皮卡实体变身',
'滑板实体变身',
'团子实体变身️',
'跳杠实体变身️',
"返回主页",
}, nil, "变身功能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"H1",
"H2",
"H3",
"H4",
"H5",
"H6",
"H7",
"H8",
'Main'
})[i]]()
  end
 end 
end

function H1()
LQ="已开启吼吼号实体变身"
QQ=gg.prompt({"输入变身代码↓70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})end
function H2()
LQ="已开启阻挡箱实体变身"
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function H3()
LQ="已开启跳高实体变身"
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n50003泽塔\n50002赛罗\n50001迪迦输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function H4()
LQ="已开启疾跑实体变身"
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function H5()
LQ="已开启皮卡实体变身"
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) QQ=gg.prompt({"输入变身代码70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{101,28,4}},{{QQ[1],8,4,false}})end
function H6()
LQ="已开启滑板实体变身"
QQ=gg.prompt({"输入变身代码↓70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) end
function H7()
LQ="已开启团子实体变身"
function bby(search, write)
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
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
bby({{1141,4,32},{1142,4,4},{1143,8,4},{3,-4,4},{3,28,4},{0,44,4},{0,12,4}},{{90006,32,4},{90006,36,4},{qQQ[1],40,4,false}})
end

function H8()
LQ="已开启跳跳杆实体变身"
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
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
xxs
({
{1077097267,4,32},
{1061158912,-4,4},
{1,4,4},
{20,12,4},
{21,8,4},
{1061997773,24,4},
{1053609165,-52,4},
{1056964608,-8,4},
{1077936128,-200,4},
{1,-92,4},
{0,-72,4},
{0,-68,4}
},
{
{QQ[1],28,4,false}})
end

function J()
UI = 'J'
local menu = gg.multiChoice({
"360解设备",
"4399解设备",
"九游解设备",
"百度解设备",
"小米解设备",
"oppo解设备",
"vivo解设备",
"应用宝解设备",
"好游快爆解设备",
"返回主页",
}, nil, "解封设备\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"J1",
"J2",
"J3",
"J4",
"J5",
"J6",
"J7",
"J8",
"J9",
'Main'
})[i]]()
  end
 end 
end

function J1()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J2()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J3()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J4()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.g.baidu/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J5()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.mi/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end


function J6()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.nearme.gamecenter/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J7()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.vivo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J8()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function J9()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(54188,999999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end

function K()
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

function L()
UI = 'L'
local menu = gg.multiChoice({
"苍龙无冷",--1
"霸龙无冷",--2
"剑龙无冷",--3
"角龙无冷",--4
"苍龙跳移",--5
"苍龙范伤",--6
"迪迦数量",--7
"迪迦时间",--8
"擎天范围",--9
"苍龙时间",--10
"霸龙一键",--11
"霸龙范伤",--12
"霸龙范围",--13
"返回主页",
}, nil, "变身技能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"L1",
"L2",
"L3",
"L4",
"L5",
"L6",
"L7",
"L8",
"L9",
"L10",
"L11",
"L12",
"L13",
'Main'
})[i]]()
  end
 end 
end

function L1()
qmnb = {
{["memory"] = 32},
{["name"] = "苍龙冷却"},--苍龙冷却
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
function L2()
xtnb({{false,1.3872854796815689E-43,4,16,nil,nil},{3.0,12,16},{3.0,20,16}},{{0.01,0,16,false}},16,32,"霸王龙攻击无冷却")
end
function L3()
gg.setRanges(32)
gg.searchNumber("7;20D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
function L4()
gg.setRanges(32)
gg.searchNumber("1.5;35D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
function L5()
qmnb = {
{["memory"] = 32},
{["name"] = "跳高移速"},--高跳移速
{["value"] = 4453159313486957773, ["type"] = 32},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 7,["offset"] =0, ["type"] = 16},
{["value"] = 3.3,["offset"] =-16, ["type"] = 16},
}
xqmnb(qmnb)
end
function L6()
qmnb = {
{["memory"] = 32},
{["name"] = "苍龙范围伤害"},--苍龙范围伤害
{["value"] = 4481982349412139008, ["type"] = 32},
{["lv"] = 1080033280, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1075838976, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1043542835, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 200, ["offset"] = 0, ["type"] = 16},
{["value"] = 20, ["offset"] = -12, ["type"] = 16},
{["value"] = 0, ["offset"] = 4, ["type"] = 16},
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end
function L7()
gg.setRanges(32)
gg.clearResults()
gg.searchNumber("12;1.5;3;1.5",16)
gg.searchNumber(12,16)
q=gg.getResults(500)
for k=1,#q do
gg.addListItems({{address=q[k].address+0x58,flags=4,value=100,freeze=true}})
end
end
function L8()
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
function L9()
local xt=gg.prompt({"擎天柱技能范围"}, {[1] = 20})
xtnb({{false,120.0,8,16,nil,nil},{60.0,4,16},{3.0,0,16}},{{xt[1],16,16,false}},16,32,"擎天柱技能范围")end
function L10()
yw=gg.prompt({"输入苍龙持续时间"},{[1]=""})
fastsearch({{256, 4, 32}, {0, -4, 4}, {1065353216, 4, 4}, {0, 8, 4}, {0, 36, 4}, {0.5, 40, 16}, {0, 48, 4}}, {{yw[1], 52, 16, true}})
end
function L11()
yw = gg.prompt({[1]="请输入想要改的霸王龙伤害"}, {[1]= "114514"})
qmnb = {
{["memory"] = 32},
{["name"] = "霸王龙无间隔+伤害"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1,["offset"] =-4, ["type"] = 4},
{["lv"] = 99,["offset"] =-8, ["type"] = 4},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 0,["offset"] =4, ["type"] = 4},
{["lv"] = 3.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-12, ["type"] = 16},
{["value"] = yw[1],["offset"] =-8, ["type"] = 4},
{["value"] = 99,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end
function L12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,077,936,128;99;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0;9999999;1,232,348,144", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
function L13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("426,248,996,127;1,077,936,128::", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,077,936,128", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,083,808,154", gg.TYPE_QWORD)
gg.toast("霸王龙范围")
gg.clearResults()
end

function Z()
UI = 'Z'
local menu = gg.multiChoice({
"失忆者变发明家",--1
"雇佣兵变失忆者",--2
"发明家变失忆者",--3
"失忆者变女特工",--4
"命石者变小狮子",--5
"战斗少女变他哥",--6
"魔术师变机器人",--7
"失忆者变小梦魇",--8
"返回主页",
}, nil, "角色服装\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"Z1",
"Z2",
"Z3",
"Z4",
"Z5",
"Z6",
"Z7",
"Z8",
'Main'
})[i]]()
  end
 end 
end

function Z1()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;2001;2002;2003;2004;2005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7001;7002;7003;7004;7005", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end
function Z2()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;1001;1002;1003;1004;1005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001;1002;1003;1004;1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2001;2002;2003;2004;2005", gg.TYPE_DWORD)
gg.toast(".")
gg.clearResults()
end
function Z3()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;7001;7002;7003;7004;7005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7001;7002;7003;7004;7005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2001;2002;2003;2004;2005", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end
function Z4()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;2001;2002;2003;2004;2005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3063;3064;3065;3066;3067", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end
function Z5()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("16001;16002;16003::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16001;16002;16003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("15001;15002;15003", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end
function Z6()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;8001;8002;8003;8004;8005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8001;8002;8003;8004;8005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7063;7064;7065;7066;7067", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end
function Z7()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;6001;6002;6003;6004;6005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6001;6002;6003;6004;6005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5001;5002;5003;5004;5005", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end
function Z8()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("5;2001;2002;2003;2004;2005::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10001;10002;10003;10004;10005", gg.TYPE_DWORD)
gg.toast("修改成功")
gg.clearResults()
end

function X()
UI = 'X'
local menu = gg.multiChoice({
"动作修改",
"变身道具",
"修改文字",
"全部星耀动作",
"迫击炮改皮肤",
"刀星耀皮肤",
"返回主页",
}, nil, "其他功能\n十二星内置\n祝你游戏愉快")
if menu then
for i in pairs(menu) do
_ENV[({
"X1",
"X2",
"X3",
"X4",
"X5",
"X6",
'Main'
})[i]]()
  end
 end 
end

function X1()
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
function X2()
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
function X3()
local a=gg.prompt({"文字","改完之后的文字"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
end
function X4()
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
function X5()
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
function X6()
	  qc=gg.alert("星耀皮肤","星耀皮肤","风格")
	 gg.setRanges(32)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(200)
	 gg.editAll("601076", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 if qc==2 then 
	 gg.setRanges(32)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("601076", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(200)
	 gg.editAll("650401", gg.TYPE_DWORD)
	 gg.toast("开启成功🌸")
	 gg.clearResults() end
end


function Exit()
os.exit()
end 
gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end
-----------------------------------------------------------------------------------------------