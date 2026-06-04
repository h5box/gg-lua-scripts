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
function gg.edits(addr, Table, name)
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
function xsalgorithm(rang, type, features, modify)
  gg.clearResults()
  gg.setRanges(rang)
  gg.searchNumber(features[1][1], 4)
  if gg.getResultsCount() == 0 then
gg.toast("没有主特征码！")
  else
local result = gg.getResults(gg.getResultsCount())
gg.clearResults()
for a = 2, #features do
local storage = {}
for b, c in ipairs(result) do
  storage[#storage + 1] = { address = c.address + features[a][2], flags = 4 }
end
storage = gg.getValues(storage)
local hook = {}
for d, e in ipairs(storage) do
  if e.value == features[a][1] then
hook[#hook + 1] = result[d]
  end
end
result = hook
end
if #result > 0 then
local tt = {}
for a, b in ipairs(result) do
  for c, d in ipairs(modify) do
gg.setValues({ [c] = { address = b.address + d[2], flags = type, value = d[1] } })
  end
end
end
  end
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--判断当前模式
ms=gg.FILES_DIR ms=ms:match("(.-)/"..gg.PACKAGE.."/files") ms=ms..'/' if ms=='/data/user/0/' then gg.toast("当前Root模式") else gg.toast("当前框架模式") end

bqt={"🌠","🌀","⛈️","🌩️","🌪️","🌨️","🌦️","⚡","🍁","🌫️","🌊","☁️","❄️","🌧️","⛅","🌌","🎆","💎","🔰","♻️","💠","🐳","🧊"}

function Main()
local sjbq= bqt[math.random(1,#bqt)]
menu = gg.choice({
sjbq.."稳定功能区[区域一]"..sjbq,--1
sjbq.."半稳功能区[区域二]"..sjbq,--2
sjbq.."直装功能区[区域三]"..sjbq,--3
sjbq.."特殊功能区[区域四]"..sjbq,--4
sjbq.."稳定防封区[区域五]"..sjbq,--5
sjbq.."游戏防闪区[区域六]"..sjbq,--6
sjbq.."——[关闭辅助]——"..sjbq},
nil,os.date("-北星自用- 支持渠道[360] 支持版本[8.14.1]\n当前时间%Y年%m月%d日%H时%M分"))
if menu == 1 then XY1() end
if menu == 2 then XY2() end
if menu == 3 then XY3() end
if menu == 4 then XY4() end
if menu == 5 then XY5() end
if menu == 6 then XY6() end
if menu == 7 then Exit() end
end

function w1()
pl=gg.alert("请选择移动速度","微移速度","中等速度","超快速度")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.7,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==3 then
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 4.0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function w2()
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 10.0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "开物范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2000,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
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
qmnb = {
{["memory"] = 32},
{["name"] = "屏蔽点锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w3()
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
gg.clearResults()
end

function w4()
pl=gg.alert("请选择扩大范围","扩大视角[小]","扩大视角[中]","扩大视角[大]")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "扩大视角"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 14,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "扩大视角"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 17,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==3 then
qmnb = {
{["memory"] = 32},
{["name"] = "扩大视角"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 21,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function w5()
pl=gg.alert("请选择写法开启","无视夹子[普通]","无视夹子[指针]","无视夹子[仿XS]")
if pl==1 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.55078125;1.0;0.69921875;0.5;2.5;0.5;1.0;1.41531145e-43;25.0;0.25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0", gg.TYPE_FLOAT)
gg.toast("无视夹子")
gg.clearResults()
end
if pl==2 then
fastsearch({
 {25.0, 16, 32},
 {1.0, -4, 16},
 {0.5, -8, 16},
 {2.5, -12, 16}
}, {
 {0.0, -4, 16, false},
},"无视夹子")
end
if pl==3 then
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
gg.clearResults()
end
end

function w6()
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =155, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end

function w7()
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 233,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w8()
qmnb = {
{["memory"] = 32},
{["name"] = "二倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w9()

gg.clearResults()
end

function w10()

gg.clearResults()
end

function w11()
qmnb = {
{["memory"] = 32},
{["name"] = "高速点锁"},
{["value"] = 230.0, ["type"] = 16},
{["lv"] = 59.0,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = -999999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w12()
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
gg.clearResults()
end

function w13()
qmnb = {
{["memory"] = 32},
{["name"] = "锁针不动"},
{["value"] = 230.0, ["type"] = 16},
{["lv"] = 59.0,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w14()
qmnb = {
{["memory"] = 32},
{["name"] = "显示夹子范围"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-12, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w15()
qmnb = {
{["memory"] = 32},
{["name"] = "开门秒逃"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w16()
qmnb = {
{["memory"] = 32},
{["name"] = "范围操作"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.2999999523162842,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function w17()
pl=gg.alert("请选择开启写法","开门加速[普通]","开门加速[仿xs]")
if pl==1 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.58732407e-43;8.0;0.20000000298;1.29999995232;1.0;4.0;0.05000000075::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("开门加速")
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "开门加速"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = 5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function w18()
pl=gg.alert("请选择开启写法","开物范围[微]","开物范围[大]")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "开物范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "开物范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2000,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function XY1()
menu1 = gg.multiChoice({
"[自选]微调移速[局内]",--1
"人物高挑[局内]",--2
"视觉透视[局内]",--3
"[自选]扩大视角[局内]",--4
"无视夹子[局内]",--5
"医疗箱微范围[局内|大厅]",--6
"手榴弹微范围[局内|大厅]",--7
"2倍开锁[局内]",--8
"3倍开锁[局内]",--9
"屏蔽点锁[局内]",--10
"慢速点锁[局内]",--11
"完美开锁[局内]",--12
"锁针不动[局内]",--13
"显示夹子[局内]",--14
"开门秒逃[局内]",--15
"操作范围[局内]",--16
"开门加速[局内]",--17
"开物范围[局内]",--18
"返回区域菜单"},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1 == nil then else
if menu1[1] == true then w1() end
if menu1[2] == true then w2() end
if menu1[3] == true then w3() end
if menu1[4] == true then w4() end
if menu1[5] == true then w5() end
if menu1[6] == true then w6() end
if menu1[7] == true then w7() end
if menu1[8] == true then w8() end
if menu1[9] == true then w9() end
if menu1[10] == true then w10() end
if menu1[11] == true then w11() end
if menu1[12] == true then w12() end
if menu1[13] == true then w13() end
if menu1[14] == true then w14() end
if menu1[15] == true then w15() end
if menu1[16] == true then w16() end
if menu1[17] == true then w17() end
if menu1[18] == true then w18() end
if menu1[19] == true then Main() end
end
end

function x1()
pl=gg.alert("请选择医疗箱范围[先丢几个]","医疗箱大范围","医疗箱全屏范围","医疗箱全图范围")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =3.5, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =7, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==3 then
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =999999999, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function x2()
pl=gg.alert("请选择手榴弹范围[先丢几个]","手榴弹大范围","手榴弹全屏范围","手榴弹全图范围")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] ="手榴弹范围"},
{["value"] =4612811918334230528, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = 72, ["type"] = 64},
 }
qmxg = {
{["value"] =5, ["offset"] = 72, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] ="手榴弹范围"},
{["value"] =4612811918334230528, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = 72, ["type"] = 64},
 }
qmxg = {
{["value"] =8, ["offset"] = 72, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==3 then
qmnb = {
{["memory"] = 32},
{["name"] ="手榴弹范围"},
{["value"] =4612811918334230528, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = 72, ["type"] = 64},
 }
qmxg = {
{["value"] =999999999, ["offset"] = 72, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function x3()
pl=gg.alert("请选择写法","倒地复活[仿XS]","倒地复活[指针]")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "倒地复活"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = -16, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
fastsearch({
{200.0, 16, 32},
{100.0, -20, 16},
{0.30000001192092896, -16, 16},
}, {
{100, -24, 16, false},
},"倒地复活")
end
end

function x4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("全图秒回血开启成功")
gg.clearResults()
end


function m1()
qmnb = {
{["memory"] = 32},
{["name"] = "超级高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function m2()
qmnb = {
{["memory"] = 32},
{["name"] = "超级移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function m3()
qmnb = {
{["memory"] = 32},
{["name"] = "最高血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 100200,["offset"] =-20, ["type"] = 16},
{["value"] = 100200,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function x5()
menu1 = gg.multiChoice({
"超级移速",--1
"超级高跳",--2
"最高血量",--3
"返回区域菜单",
},nil,os.date("最高血量需要在满血时开 否则无效\n当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then m1() end
if menu1[2] == true then m2() end
if menu1[3] == true then m3() end
if menu1[4] == true then Main() end
end

function x6()
pl=gg.alert("请选择救人范围","全屏救人","大范围救人")
if pl==1 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.75;0.2;1.3;1.3;1D;100D::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('8',gg.TYPE_FLOAT)
gg.toast("全屏救人已开启")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.75;0.2;1.3;1.3;1D;100D::',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('10',gg.TYPE_FLOAT)
gg.toast("大范围救人已开启")
gg.clearResults()
end
end

function x7()
qmnb = {
{["memory"] = 32},
{["name"] = "逃生减血"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 1,["offset"] =-20, ["type"] = 16},
{["value"] = 1,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function x8()
qmnb = {
{["memory"] = 32},
{["name"] = "流畅穿墙"},
{["value"] = -10.0, ["type"] = 16},
{["lv"] = 49.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function x9()
pl=gg.alert("该功能结算时可能造成闪退 是否执行","继续开启","停止执行")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "人物锁血"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
{["value"] = -1,["offset"] =4, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
Main()
end
end

function x10()
qmnb = {
{["memory"] = 32},
{["name"] = "一秒开门"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = 1,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function x11()
qmnb = {
{["memory"] = 32},
{["name"] = "瞬间开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 999999999,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function x12()
qmnb = {
{["memory"] = 32},
{["name"] = "一秒开补夹子给箱"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 5.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 1,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function c1()
qmnb = {
{["memory"] = 32},
{["name"] = "道具无冷却"},
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
gg.clearResults()
end

function c2()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物爬墙"},
{["value"] = -321.125, ["type"] = 16},
{["lv"] = 0.949999988079071, ["offset"] = 140, ["type"] = 16},
}
qmxg = {
{["value"] = -1, ["offset"] = 140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function c3()
qmnb = {
{["memory"] = 32},
{["name"] = "全图高透"},
{["value"] = 8.0, ["type"]=16},
{["lv"] = 4,["offset"]=-4, ["type"]=4},
{["lv"] = 1,["offset"]=8, ["type"]=4},
{["lv"] = 8,["offset"]=12, ["type"]=4},
}
qmxg = {
{["value"] = 1, ["offset"] = 46, ["type"] = 4, ['freeze'] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function x13()
menu1 = gg.multiChoice({
"道具冷却[局内]",--1
"人物爬墙[局内]",--2
"全图亮透[局内]",--3
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then Main() end
end

function x14()
pl=gg.alert("请选择操作范围","全屏范围","超大范围")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "范围操作"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.2999999523162842,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 7,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "范围操作"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.2999999523162842,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function x15()
pl=gg.alert("请选择刷钱的模式","4v1刷钱","8v2刷钱","停止刷钱")
if pl==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
if pl==2 then
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end
if pl==3 then
gg.clearList()
gg.toast("已停止")
end
end

function o1()
pl=gg.prompt({"输入你想修改的伤害↓","输入你想改的范围↓"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({
{4481982349412139008,32,32},
{1080033280,-4,4},
{1075838976,-12,4},
{1043542835,4,4},
},{
{pl[1],0,16,false},
{pl[2],-12,16,false},
{0,4,16,false},
{0,8,16,false},
},"苍龙范围+伤害")
end

function o2()
fastsearch({
{215832592384,32,32},
{50,4,4},
{1,8,4},
{1075838976,12,4}
},{
{0.0,0,16,false},
},"苍龙冷却")
end

function x16()
menu1 = gg.multiChoice({
"苍龙范围+伤害[局内]",--1
"苍龙无冷却[局内]",--2
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then o1() end
if menu1[2] == true then o2() end
if menu1[3] == true then Main() end
end

function x17()
pl=gg.alert("请选择","跳高改无敌","跳高改狂暴")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "跳高改无敌"},
{["value"] = -1410747465, ["type"] = 4},
{["lv"] = 408, ["offset"] = 4, ["type"] = 4},
{["lv"] = -256, ["offset"] = 16, ["type"] = 4},
{["lv"] = 255, ["offset"] = 20, ["type"] = 4},
{["lv"] = 256, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 27392, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
xsalgorithm(32,4,{{26112},{408,-4},{26112,0},{-256,8},{255,12},{256,16}},{{28416,0}})
end
end

function x18()
pl=gg.alert("请选择","疾跑改无敌","疾跑改boss无敌")
if pl==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改无敌"},
{["value"] = -377313563, ["type"] = 4},
{["lv"] = 106147, ["offset"] = 4, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 16, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 20, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 107, ["offset"] = 10, ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==2 then
xsalgorithm(32,4,{{6750208},{106147,-4},{6750208,0},{-65536,8},{65535,12},{-65536,16}},{{19660800,0}})
end
end

function s1()
pl=gg.alert("[锁子弹]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935057e20;-3.68935022e20;-7.16042653e24;0.83300000429;-1.30928164e25;-1.30683765e21;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("锁定子弹开启成功")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935057e20;-3.68935022e20;-7.16042653e24;0.83300000429;-5.90295867e21;-2.02910209e20;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT)
gg.toast("锁定子弹关闭成功")
gg.clearResults()
end
end

function s2()
pl=gg.alert("[无后座]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.02910649e20;-1.54742201e26;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("无后开启成功")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.02910649e20;-1.54742201e26;1;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00100000005", gg.TYPE_FLOAT)
gg.toast("无后开启成功")
gg.clearResults()
end
end

function s3()
pl=gg.alert("[火箭筒射程]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("火箭筒射程开启成功")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("7;999999;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.64999997616", gg.TYPE_FLOAT)
gg.toast("火箭筒射程关闭成功")
gg.clearResults()
end
end

function s4()
pl=gg.alert("[地图透视]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.30000001192;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("地图透视开启成功")
end
if pl==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("0.30000001192", gg.TYPE_FLOAT)
gg.toast("地图透视关闭成功")
end
end

function s5()
pl=gg.alert("[伤害队友]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("伤害队友开启成功")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
gg.toast("伤害队友关闭成功")
gg.clearResults()
end
end

function s6()
pl=gg.alert("[免费购物]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-1.30928164e25;-1.30683765e21;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("免费购物开启成功")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-5.90295867e21;-2.02910209e20;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT)
gg.toast("免费购物关闭成功")
gg.clearResults()
end
end

function s7()
pl=gg.alert("[角色无敌]请选择","开启","关闭")
if pl==1 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-1.30939232e25;-1.3068399e21;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("角色无敌开启成功")
gg.clearResults()
end
if pl==2 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT)
gg.toast("角色无敌关闭成功")
gg.clearResults()
end
end

function x19()
menu1 = gg.multiChoice({
"️普通写法全武器锁子弹[全局]",--1
"普通写法全武器无后座[全局]",--2
"️普通写法火箭筒子弹射程[全局]",--3
"普通写法地图透视[全局]",--4
"普通写法伤害队友[全局]",--5
"普通写法免费购物[全局]",--6
"普通写法角色无敌[全局]",--7
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then s1() end
if menu1[2] == true then s2() end
if menu1[3] == true then s3() end
if menu1[4] == true then s4() end
if menu1[5] == true then s5() end
if menu1[6] == true then s6() end
if menu1[7] == true then s7() end
if menu1[8] == true then Main() end
end

function a1()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{140*65536,52,4,false}})end--能量剑

function a2()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{150*65536,52,4,false}})end--蹦蹦枪

function a3()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{200*65536,52,4,false}})end--唤风镖

function a4()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{180*65536,52,4,false}})end--能量碗炮

function a5()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{110*65536,52,4,false}})end--迫击炮

function a6()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{130*65536,52,4,false}})end--冲锋枪

function a7()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{190*65536,52,4,false}})end--散弹枪

function a8()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{210*65536,52,4,false}})end--霸天斧

function a9()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{11130*65536,52,4,false}})end--滋水枪

function a10()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{10140*65536,52,4,false}})end--像素剑

function a11()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{12130*65536,52,4,false}})end--自动手枪

function a12()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{10150*65536,52,4,false}})end--回旋镖

function a13()
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{10100*65536,52,4,false}})end--加血枪

function a14()
pl=gg.prompt({"输入你想修改的数值↓"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{51200,4,32},{8448,8,4},{65536,48,4},{65536,56,4},},{{pl[1]*65536,52,4,false}})end--自定义

function x20()
menu1 = gg.multiChoice({
"能量剑",--1
"蹦蹦枪",--2
"唤风镖",--3
"能量碗炮",--4
"迫击炮",--5
"冲锋枪",--6
"散弹枪",--7
"霸天斧",--8
"滋水枪",--9
"像素剑",--10
"自动手枪",--11
"回旋镖",--12
"加血枪",--13
"自定义",--14
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then Main() end
end

function v1()
qmnb = {
{["memory"] = 32},
{["name"] = "擎天柱"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90001, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function v2()
qmnb = {
{["memory"] = 32},
{["name"] = "大黄蜂"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90002, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function v3()
qmnb = {
{["memory"] = 32},
{["name"] = "热破"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90003, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function v4()
qmnb = {
{["memory"] = 32},
{["name"] = "威震天"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90004, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function v5()
qmnb = {
{["memory"] = 32},
{["name"] = "声波"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90005, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function v6()
qmnb = {
{["memory"] = 32},
{["name"] = "红蜘蛛"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 90006, ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end

function x21()
menu1 =gg.multiChoice({
"擎天柱",
"大黄蜂",
"热破",
"威震天",
"声波",
"红蜘蛛",
"返回区域菜单",
},nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then v1() end
if menu1[2] == true then v2() end
if menu1[3] == true then v3() end
if menu1[4] == true then v4() end
if menu1[5] == true then v5() end
if menu1[6] == true then v6() end
if menu1[7] == true then Main() end
end

function z1()
local pl=gg.prompt({"开锁速度[自调]"}, {[1] = 3}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁自调"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z2()
local pl=gg.prompt({"开门速度[自调]"}, {[1] = 5}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开门自调"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z3()
local pl=gg.prompt({"移速速度[自调]"}, {[1] = 3.5}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速自调"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z4()
local pl=gg.prompt({"跳跃高度[自调]"}, {[1] = 6.8}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "跳跃自调"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z5()
local pl=gg.prompt({"自身血量[自调] 最高[1200]超出无效！"}, {[1] = 1200}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "血量自调"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =-20, ["type"] = 16},
{["value"] = pl[1],["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z6()
local pl=gg.prompt({"视角[自调] 初始值为12"}, {[1] = 14}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "视角自调"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z7()
local pl=gg.prompt({"操作范围[自调]"}, {[1] = 7}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "范围操作"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.2999999523162842,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function z8()
local pl=gg.prompt({"开物范围[自调]"}, {[1] = 7}, {[1] = "text"})
if pl==nil then os.exit(print("你未选择！")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开物范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = pl[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function x22()
menu1 = gg.multiChoice({
"️开锁速度[自定义]",--1
"开门速度[自定义]",--2
"️移动速度[自定义]",--3
"跳跃高度[自定义]",--4
"自身血量[自定义]",--5
"人物视角[自定义]",--6
"操作范围[自定义]",--7
"开物范围[自定义]",--8
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then z1() end
if menu1[2] == true then z2() end
if menu1[3] == true then z3() end
if menu1[4] == true then z4() end
if menu1[5] == true then z5() end
if menu1[6] == true then z6() end
if menu1[7] == true then z7() end
if menu1[8] == true then z8() end
if menu1[9] == true then Main() end
end

function x23()
fastsearch({
{200,16,32},
{1,24,16},
{100,-20,16},
},{
{0,24,16},},"[指针]道具无CD")
end

function x24()
qmnb = {
{["memory"] = 32},
{["name"] = "全员倒地"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function b1()
fastsearch({{6.25,16,32},{-1.5,-8,16},{1.5,4,16},{2.25,8,16},{0.5,12,16},{1.5,-12,16},{584,-24,4},{583,-48,4}},
{{999,0,16},
{522,-48,4},
{300,-24,4},
{10,-4,16,false}},"霸天斧旋风斩强化")
end

function b2()
pl=gg.prompt({"输入你想修改的射程↓"},{[1]="10"})
if pl==nil then os.exit(print("你未选择！")) end
readWrite({{false,-20.0,4,16,nil,nil},{0.800000011920929,12,16},{-0.4000000059604645,16,16},{2.5,20,16},{1.5,24,16}},{{pl[1],0,16,false}},16,32,"蹦蹦枪射程")end

function b3()
pl=gg.prompt({"输入你想修改的炮弹范围↓","输入你想修改的炮弹速度↓"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1000.0,16,32},{2.0,8,16},{1.0,-12,16},{2.5,12,16},{0.20000000298023224,16,16},{20.0,-4,16},{0.8500000238418579,-8,16}},{{pl[1],8,16,true},{pl[2],-12,16,true}})
end

function b4()
pl=gg.prompt({"输入你想修改的范围↓"},{[1]="8"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({
{5.0,16,32},
{2.5,208,16},
},{
{pl[1],4,16},
},"碗炮范围")
end

function b5()
pl=gg.prompt({"输入你想修改的范围[1]↓","输入你想改的范围[2]↓"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({
{1.25,16,32},
{2.5,4,16}},
{{pl[1],4,16, false}})
fastsearch({
{0.75,16,32},
{1.5,4,16}},
{{pl[2],4,16, false}})
end

function x25()
menu1 = gg.multiChoice({
"霸天斧旋风斩加强[局内]",--1
"蹦蹦枪子弹射程[局内]",--2
"迫击炮范围+速度[局内]",--3
"️能量碗炮范围[局内]",--4
"唤风镖范围[局内]",--5
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then Main() end
end

function q1()
pl=gg.alert("火箭筒连发[请选择模式]","4v1 8v2","大乱斗新地图")
if pl==1 then
v1=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]="100"})
if v1==nil then os.exit(print("你未选择！")) end
fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{v1[1], 8, 4, false}, {0, 24, 16, false}})end
if pl==2 then
v2=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]="100"})
if v2==nil then os.exit(print("你未选择！")) end
fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{v2[1], 8, 4, false}, {0, 24, 16, false}})
fastsearch({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{v2[1], 8, 4, false}, {0, 24, 16, false}})
end
end

function q2()
pl=gg.alert("冲锋枪","4v1 8v2","大乱斗新地图")
if pl==1 then
v1=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]="100"})
if v1==nil then os.exit(print("你未选择！")) end
fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{v1[1], 8, 4, false}})end
if pl==2 then
v2=gg.prompt({"输入冲锋枪(可多次修改↓)"},{[1]="100"})
if v2==nil then os.exit(print("你未选择！")) end
fastsearch({{1094713344, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{v2[1], 8, 4, false}})
end
end

function q3()
pl=gg.alert("能量剑连发[请选择模式]","4v1 8v2","金库防守","大乱斗新地图")
if pl==1 then
v1=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]="100"})
if v1==nil then os.exit(print("你未选择！")) end
fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{v1[1], 8, 4, false}})end
if pl==2 then
v2=gg.prompt({"输入能量剑(可多次修改↓)"},{[1]="100"})
if v2==nil then os.exit(print("你未选择！")) end
fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{v2[1], 8, 4, false}})end
if pl==3 then
v3=gg.prompt({"输入能量剑(可多次修改↓)"},{[1]="100"})
if v3==nil then os.exit(print("你未选择！")) end
fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{v3[1], 8, 4, false}})
end
end

function q4()
pl=gg.prompt({"输入迫击炮连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{pl[1], 8, 4, false}, {0, 24, 16, false}})end

function q5()
pl=gg.alert("霰弹枪","4v1 8v2","金库防守","大乱斗新地图")
if pl==1 then
v1=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]="100"})
if v1==nil then os.exit(print("你未选择！")) end
fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{v1[1], 8, 4, false}, {0, 24, 16, false}})end
if pl==2 then
v2=gg.prompt({"输入霰弹枪连发(可多次修改↓)"},{[1]="100"})
if v2==nil then os.exit(print("你未选择！")) end
fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{v2[1], 8, 4, false}, {0, 24, 16, false}})end
if pl==3 then
v3=gg.prompt({"输入霰弹枪连发(可多次修改↓)"},{[1]="100"})
if v3==nil then os.exit(print("你未选择！")) end
fastsearch({{1099956224, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{v3[1], 8, 4, false}, {0, 24, 16, false}})
fastsearch({{1101529088, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{v3[1], 8, 4, false}, {0, 24, 16, false}})
fastsearch({{1103101952, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{v3[1], 8, 4, false}, {0, 24, 16, false}})
end
end

function q6()
pl=gg.alert("蹦蹦枪","4v1 8v2","金库防守","大乱斗新地图")
if pl==1 then
v1=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]="100"})
if v1==nil then os.exit(print("你未选择！")) end
fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{v1[1], 8, 4, false}, {0, 24, 16, false}})end
if pl==2 then
v2=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]="100"})
if v2==nil then os.exit(print("你未选择！")) end
fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{v2[1], 8, 4, false}, {0, 24, 16, false}})end
if pl==3 then
v3=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]="100"})
if v3==nil then os.exit(print("你未选择！")) end
fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{v3[1], 8, 4, false}, {0, 24, 16, false}})
end
end

function q7()
pl=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{pl[1], 8, 4, false}, {0, 24, 16, false}})end

function q8()
pl=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{pl[1], 8, 4, false}, {0, 24, 16, false}})end

function q9()
pl=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{pl[1], 8, 4, false}})end

function q10()
pl=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{pl[1], 8, 4, false}})end

function q11()
pl=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {pl[1], 8, 4, false}})end


function q12()
pl=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{pl[1], 8, 4, false}})end

function q13()
pl=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{pl[1], 8, 4, false}})end

function q14()
pl=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{pl[1], 8, 4, false}})end

function q15()
pl=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]="100"})
if pl==nil then os.exit(print("你未选择！")) end
fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{pl[1], 8, 4, false}, {0, 16, 16, false}})end

function x26()
menu1 = gg.multiChoice({
"️[不限]火箭筒连发[全局]",--1
"[不限]冲锋枪连发[全局]",--2
"️[不限]能量剑连发[全局]",--3
"[一级]迫击炮连发[全局]",--4
"[不限]散弹枪连发[全局]",--5
"[不限]蹦蹦枪连发[全局]",--6
"[一级]能量腕炮连发[全局]",--7
"[不限]唤风镖连发[全局]",--8
"[不限]霸天斧连发[全局]",--9
"[不限]回旋镖连发[全局]",--10
"[不限]生物手枪连发[全局]",--11
"[不限]像素剑连发[全局]",--12
"[不限]滋水枪连发[全局]",--13
"[不限]自动手枪连发[全局]",--14
"[不限]电球枪连发[全局]",--15
'返回区域菜单'},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then q1() end
if menu1[2] == true then q2() end
if menu1[3] == true then q3() end
if menu1[4] == true then q4() end
if menu1[5] == true then q5() end
if menu1[6] == true then q6() end
if menu1[7] == true then q7() end
if menu1[8] == true then q8() end
if menu1[9] == true then q9() end
if menu1[10] == true then q10() end
if menu1[11] == true then q11() end
if menu1[12] == true then q12() end
if menu1[13] == true then q13() end
if menu1[14] == true then q14() end
if menu1[15] == true then q15() end
if menu1[16] == true then Main() end
end

function XY2()
menu1 = gg.multiChoice({
"医疗箱自选范围[局内]",--1
"手榴弹自选范围[局内]",--2
"[自选写法]倒地复活[倒地开]",--3
"全图秒回血[局内]",--4
"人物属性[局内]",--5
"[自选]救人范围[局内]",--6
"逃生减血[局内]",--7
"流畅穿墙[局内]",--8
"人物锁血[局内]",--9
"一秒开门[局内]",--10
"瞬间开锁[局内]",--11
"一秒开补给箱夹子[局内]",--12
"仿XS变态功能[局内]",--13
"自选范围操作[局内]",--14
"自选模式刷钱[局内]",--15
"苍龙功能[局内]",--16
"跳高改buff[大厅|局内]",--17
"疾跑改buff[大厅|局内]",--18
"普通写法功能[大厅|局内]",--19
"火箭筒改武器[大厅|局内]",--20
"奥博改变形金刚[大厅|局内]",--21
"自调功能[自定义]",--22
"(指针)道具无CD[局内]",--23
"全员倒地[局内]",--24
"武器功能[局内]",--25
"武器连发[大厅|局内]",--26
"返回区域菜单"},
nil,os.date("当前时间%Y年%m月%d日%H时%M分\n部分功能不确定是否稳定"))
if menu1 == nil then else
if menu1[1] == true then x1() end
if menu1[2] == true then x2() end
if menu1[3] == true then x3() end
if menu1[4] == true then x4() end
if menu1[5] == true then x5() end
if menu1[6] == true then x6() end
if menu1[7] == true then x7() end
if menu1[8] == true then x8() end
if menu1[9] == true then x9() end
if menu1[10] == true then x10() end
if menu1[11] == true then x11() end
if menu1[12] == true then x12() end
if menu1[13] == true then x13() end
if menu1[14] == true then x14() end
if menu1[15] == true then x15() end
if menu1[16] == true then x16() end
if menu1[17] == true then x17() end
if menu1[18] == true then x18() end
if menu1[19] == true then x19() end
if menu1[20] == true then x20() end
if menu1[21] == true then x21() end
if menu1[22] == true then x22() end
if menu1[23] == true then x23() end
if menu1[24] == true then x24() end
if menu1[25] == true then x25() end
if menu1[26] == true then x26() end
if menu1[27] == true then Main() end
end
end

function y1()
pl = gg.alert("请选择开关","全武器无间隔[大厅]","全武器无间隔[手持]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},},'全武器无间隔')
end
if pl==2 then
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
end

function y2()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},},'全武器锁子弹')
end

function y3()
pl = gg.alert("请选择开关","武器无后[开]","武器无后[关]")
if pl==1 then
fastsearch
({
{0.00100000005,16,16384},
{-382907280,40,4},
},
{
{1.6875,0,16,false}})
end
if pl==2 then
fastsearch
({
{1.6875,16,16384},
},
{
{0.00100000005,0,16,false}})
end
end

function y4()
pl = gg.alert("请选择开关","武器秒杀[开]","武器秒杀[关]")
if pl==1 then
fastsearch
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
end
if pl==2 then
fastsearch
({
{0.00048828148,16,16384},
{-476052718,1464,4},
{-516948194,1468,4},
{167772164,1420,4}
},
{{-494030840,1468,4},
{-382908368,1464,4,false}})
end
end

function y5()
pl = gg.alert("请选择开关","变身攻击[开]","变身攻击[关]")
if pl==1 then
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end
if pl==2 then
fastsearch
({{0.00100000005,16,16384},
{-516948194,184,4}
},
{
{-382907280,184,4,false}})
end
end

function y6()
pl = gg.alert("请选择开关","人物爬墙[开]","人物爬墙[关]")
if pl==1 then
fastsearch({{-321.125,16,16384},
{0.949999988079071,140,16}},
{{-1,140,16,false}})
end
if pl==2 then
fastsearch({{-321.125,16,16384},
{-1,140,16}},
{{0.949999988079071,140,16,false}})
end
end

function y7()
pl = gg.alert("请选择开关","子弹速度[开]","子弹速度[关]")
if pl==1 then
fastsearch
({
{-352321541,4,16384},
{0,4,16},
},
{
{10.5,4,16,false}})
end
if pl==2 then
fastsearch
({{10.5,16,16384}},
{
{0,0,16,false}})
end
end

function y8()
pl = gg.alert("请选择开关","无视护盾[开]","无视护盾[关]")
if pl==1 then
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
if pl==2 then
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

function y9()
pl = gg.alert("请选择开关","全技能不收费[开]","全技能不收费[关]")
if pl==1 then
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
if pl==2 then
fastsearch
({
{0.00048828154,16,16384},
{-476053504,-576,4},
{-516948194,-572,4},
{167772163,-648,4}
},
{{-382906384,3328,4},
{-494030820,3332,4},
{-382908368,-576,4},
{-494030840,-572,4,false}})
end
end

function y10()
pl = gg.alert("请选择开关","全技能无冷却[开]","全技能无冷却[关]")
if pl==1 then
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
{-382908368,308,4}
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
if pl==2 then
fastsearch
({
{-0.0004882816,16,16384},
{-476053503,-536,4},
{-516948194,-532,4},
{-476053504,308,4},
},
{{-382908368,308,4},
{-494030840,312,4},
{-382908368,1652,4},
{-494030840,1656,4},
{-382907280,2344,4},
{-494030832,2348,4},
{-382908368,-536,4},
{-494030840,-532,4,false}})
end
end

function y11()
pl = gg.alert("请选择开关","直接开门[开]","直接开门[关]")
if pl==1 then
fastsearch
({
{0.00048828166,16,16384},
{-382908368,-988,4},
{0,-352,4}
},
{{-476053503,-988,4},
{-516948194,-984,4,false}})
end
if pl==2 then
fastsearch
({
{0.00048828166,16,16384},
{-476053503,-988,4},
{0,-352,4}
},
{{-494030840,-984,4},
{-382908368,-988,4,false}})
end
end

function y12()
pl = gg.alert("请选择开关","伤害队友[开]","伤害队友[关]")
if pl==1 then
fastsearch
({{104,4,16384},{104,4,4},
{-382908368,-1564,4}},{
{-516948194,-1564,4,false}})
end
if pl==2 then
fastsearch
({{104,4,16384},{104,4,4},
{-516948194,-1564,4}},{
{-382908368,-1564,4,false}})
end
end

function y13()
pl = gg.alert("请选择开关","地图高光[开]","地图高光[关]")
if pl==1 then
fastsearch
({
{-308471283,4,16384},
{-382908368,-724,4},
},
{
{-516948194,-724,4,false}})
end
if pl==2 then
fastsearch
({
{-308471283,4,16384},
{-516948194,-724,4},
},
{
{-382908368,-724,4,false}})
end
end

function y14()
pl = gg.alert("请选择开关","全图踩夹[开]","全图踩夹[关]")
if pl==1 then
fastsearch
({
{128.31251525879,16,16384},
{-382907280,-400,4},
{167772163,-452,4}
},
{
{-516948194,-400,4,false}})
end
if pl==2 then
fastsearch
({{128.31251525879,16,16384},
{-516948194,-400,4},
{167772163,-452,4}
},
{
{-382907280,-400,4,false}})
end
end

function y15()
pl = gg.alert("请选择开关","解锁角色[开]","解锁角色[关]")
if pl==1 then
fastsearch
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
end
if pl==2 then
fastsearch
({{-0.00048828166,16,16384},
{-516948194,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-382906384,-380,4,false}})
end
end

function y16()
pl = gg.alert("请选择开关","移动开物[开]","移动开物[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物')
end
end

function y17()
pl = gg.alert("请选择开关","道具无冷[开]","道具无冷[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},},'道具无冷')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1f312d0},},'道具无冷')
end
end

function y18()
pl = gg.alert("请选择开关"," 伤害暴击[开]","伤害暴击[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},},'伤害暴击')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1b1895c},},'伤害暴击')
end
end

function y19()
pl = gg.alert("请选择开关","武器穿透[开]","武器穿透[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},},'武器穿透')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xF45760},},'武器穿透')
end
end

function y20()
pl = gg.alert("请选择开关","角色全皮[开]","角色全皮[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D0},},'角色全皮')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA31D0},},'角色全皮')
end
end

function y21()
pl = gg.alert("请选择开关","道具全皮[开]","道具全皮[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B5141C},},'道具全皮')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0x1B5141C},},'道具全皮')
end
end

function y22()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},},'解锁模式')
end

function y23()
pl = gg.alert("请选择开关","锁定变身[开]","锁定变身[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1886fa8},},'锁定变身')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1886fa8},},'锁定变身')
end
end

function y24()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f2eac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f2eac8},})
end

function y25()
pl = gg.alert("请选择开关","倒地不清buff[开]","倒地不清buff[关]")
if pl==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12248},},'倒地不清buff')
end
if pl==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1b12248},},'倒地不清buff')
end
end

function XY3()
menu1 = gg.multiChoice({
"全武器无间隔[自选]",--1
"全武器锁子弹[大厅]",--2
"全武器无后座[全局]",--3
"武器秒杀[全局]",--4
"变身攻击[全局]",--5
"人物爬墙[全局]",--6
"子弹速度[全局]",--7
"无视护盾[全局]",--8
"全技能不收费[全局]",--9
"全技能无冷却[全局]",--10
"直接开门[全局]",--11
"伤害队友[全局]",--12
"地图高光[全局]",--13
"全图踩夹[全局]",--14
"解锁角色[全局]",--15
"移动开物[全局]",--16
"道具冷却[大厅]",--17
"伤害暴击[大厅]",--18
"武器穿透[大厅]",--19
"角色全皮[大厅]",--20
"道具全皮[大厅]",--21
"解锁模式[大厅]",--22
"锁定变身[大厅]",--23
"倒地丢道具[大厅]",--24
"倒地不清buff[大厅]",--25
"返回区域菜单"},
nil,os.date("当前时间%Y年%m月%d日%H时%M分\n适应版本[8.14.1] 标注全局的大厅局内都可以开和关不闪退"))
if menu1 == nil then else
if menu1[1] == true then y1() end
if menu1[2] == true then y2() end
if menu1[3] == true then y3() end
if menu1[4] == true then y4() end
if menu1[5] == true then y5() end
if menu1[6] == true then y6() end
if menu1[7] == true then y7() end
if menu1[8] == true then y8() end
if menu1[9] == true then y9() end
if menu1[10] == true then y10() end
if menu1[11] == true then y11() end
if menu1[12] == true then y12() end
if menu1[13] == true then y13() end
if menu1[14] == true then y14() end
if menu1[15] == true then y15() end
if menu1[16] == true then y16() end
if menu1[17] == true then y17() end
if menu1[18] == true then y18() end
if menu1[19] == true then y19() end
if menu1[20] == true then y20() end
if menu1[21] == true then y21() end
if menu1[22] == true then y22() end
if menu1[23] == true then y23() end
if menu1[24] == true then y24() end
if menu1[25] == true then y25() end
if menu1[26] == true then Main() end
end
end

function f1()
pl=gg.prompt({"你要改的文字[无效再改一次]","修改后的文字"},{},{"text","text"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
gg.setRanges(32)
gg.searchNumber(";"..pl[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..pl[2],2)
gg.clearResults()
end

function n1()
qmnb = {
{["memory"] = 32},
{["name"] = "范围操作"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.2999999523162842,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function f2()
menu1 = gg.multiChoice({
"全图操作范围[仅人机有效]",--1
"返回区域菜单",
},nil,os.date"训练场功能\n当前时间%Y年%m月%d日%H时%M分")
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then n1() end
if menu1[2] == true then Main() end
end

function f3()
menu1 = gg.multiChoice({
"4V1传送",--1
"8V2传送",--2
"乱斗传送",--3
"返回区域菜单",--4
},nil,os.date"内存秒传送\n当前时间%Y年%m月%d日%H时%M分")
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then Main() end
end

function g1()
menu1 = gg.multiChoice({
"出生点",--1
"禁闭室",--2
"逃生点",--3
"左上锁",--4
"左下锁",--5
"右上锁",--6
"右下锁",--7
"上门",--8
"下门",--9
"返回区域菜单",--10
},nil,os.date"4V1内存秒传送\n当前时间%Y年%m月%d日%H时%M分")
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then p1() end
if menu1[2] == true then p2() end
if menu1[3] == true then p3() end
if menu1[4] == true then p4() end
if menu1[5] == true then p5() end
if menu1[6] == true then p6() end
if menu1[7] == true then p7() end
if menu1[8] == true then p8() end
if menu1[9] == true then p9() end
if menu1[10] == true then Main() end
end

function p1()
fastsearch({{0.3749999702,16,32},{-10,-152,16}},{{3.31672906876,-212,16},{15.10242652893,-204,16}}) 
end

function p2()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{41.2279510498,-212,16},{15.20110321045,-204,16}}) 
end

function p3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.47306060791,-212,16},{15.10242652893,-204,16}}) 
end

function p4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
end

function p5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}}) 
end

function p6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
end

function p7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
end

function p8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function p9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.5991897583,-212,16},{10.4521522522,-204,16}})
end


function g2()
menu1 = gg.multiChoice({
"出生点",--1
"禁闭室",--2
"逃生点",--3
"锁①",--4
"锁②",--5
"锁③",--6
"锁④",--7
"锁⑤",--8
"锁⑥",--9
"锁⑦",--10
"锁⑧",--11
"锁⑨",--12
"锁⑩",--13
"上门",--14
"中门",--15
"下门",--16
"返回区域菜单",--17
},nil,os.date"8V2内存秒传送\n锁由左到右从上到下的的顺序排列\n当前时间%Y年%m月%d日%H时%M分")
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then e13() end
if menu1[14] == true then e14() end
if menu1[15] == true then e15() end
if menu1[16] == true then e16() end
if menu1[17] == true then Main() end
end

function e1()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{4.79341316223,-212,16},{4.50854158401,-204,16}})
end

function e3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{43.43095779419,-212,16},{19.70534706116,-204,16}})
end

function e3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{86.59527587891,-212,16},{38.43141555786,-204,16}})
end

function e4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
end

function e5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
end

function e6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
end

function e7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
end

function e8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
end

function e9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
end

function e10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
end

function e11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
end

function e12()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
end

function e13()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
end

function e14()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{65.45124053955,-212,16},{33.24272537231,-204,16}})
end

function e15()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function e16()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.53405761719,-212,16},{18.30999183655,-204,16}})
end

function g3()
menu1 = gg.multiChoice({
"BOSS房",--1
"教堂处",--2
"海盗船",--3
"C字楼",--4
"返回区域菜单",--5
 }, nil,os.date"乱斗内存秒传送\n当前时间%Y年%m月%d日%H时%M分")
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then r1() end
if menu1[2] == true then r2() end
if menu1[3] == true then r3() end
if menu1[4] == true then r4() end
if menu1[5] == true then Main() end
end

function r1()
fastsearch({{0.3749999702,16,32},{1111752704,-132,4}},{{66.4966506958,-212,16},{55.80109786987,-204,16},{3,-208,16,false}}) 
end

function r2()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{95.24781799316,-212,16},{19.73115158081,-204,16},{3,-208,16,false}}) 
end

function r3()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{69.37117767334,-212,16},{24.43232536316,-204,16},{3,-208,16,false}}) 
end

function r4()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{44.47694778442,-212,16},{81.638671875,-204,16},{3,-208,16,false}}) 
end

function f4()
qmnb = {
{["memory"] = 32},
{["name"] = "灵魂出窍"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = -1,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
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

function f5()
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

function i1()
fastsearch({{-1080170863,4,32},{116,28,4}},{{90001,8,4,false}}) 
end

function i2()
fastsearch({{-1080170863,4,32},{116,28,4}},{{90002,8,4,false}}) 
end

function i3()
fastsearch({{-1080170863,4,32},{116,28,4}},{{90004,8,4,false}}) 
end

function i4()
fastsearch({{-1080170863,4,32},{116,28,4}},{{90006,8,4,false}}) 
end

function i5()
fastsearch({{-1080170863,4,32},{116,28,4}},{{90003,8,4,false}}) 
end

function i6()
fastsearch({{-1080170863,4,32},{116,28,4}},{{90005,8,4,false}}) 
end

function i7()
fastsearch({{-1080170863,4,32},{116,28,4}},{{50001,8,4,false}}) 
end

function i8()
fastsearch({{-1080170863,4,32},{116,28,4}},{{50002,8,4,false}}) 
end

function i9()
fastsearch({{-1080170863,4,32},{116,28,4}},{{50003,8,4,false}}) 
end

function i10()
fastsearch({{-1080170863,4,32},{116,28,4}},{{70010,8,4,false}}) 
end

function i11()
fastsearch({{-1080170863,4,32},{116,28,4}},{{70012,8,4,false}}) 
end

function i12()
fastsearch({{-1080170863,4,32},{116,28,4}},{{70015,8,4,false}}) 
end

function i13()
fastsearch({{-1080170863,4,32},{116,28,4}},{{70011,8,4,false}}) 
end

function i14()
fastsearch({{-1080170863,4,32},{116,28,4}},{{70013,8,4,false}}) 
end

function i15()
fastsearch({{-1080170863,4,32},{116,28,4}},{{70014,8,4,false}}) 
end

function i16()
pl=gg.prompt({"请输入你要改的[变身道具|特殊道具]数值"},{},{"number"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
fastsearch({{-1080170863,4,32},{116,28,4}},{{pl[1],8,4,false}}) 
end

function f6()
menu1 = gg.multiChoice({
"滑板变身擎天柱[局内|大厅]",--1
"滑板变身大黄蜂[局内|大厅]",--2
"滑板变身威震天[局内|大厅]",--3
"滑板变身红蜘蛛[局内|大厅]",--4
"滑板变身热破[局内|大厅]",--5
"滑板变身声波[局内|大厅]",--6
"滑板变身迪迦[局内|大厅]",--7
"滑板变身赛罗[局内|大厅]",--8
"滑板变身泽塔[局内|大厅]",--9
"滑板变身翼龙[局内|大厅]",--10
"滑板变身剑龙[局内|大厅]",--11
"滑板变身苍龙[局内|大厅]",--12
"滑板变身三角龙[局内|大厅]",--13
"滑板变身迅猛龙[局内|大厅]",--14
"滑板变身霸王龙[局内|大厅]",--15
"滑板改自定义[局内|大厅]",--16
"返回主页",},
nil,os.date("可重复修改\n当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then i1() end
if menu1[2] == true then i2() end
if menu1[3] == true then i3() end
if menu1[4] == true then i4() end
if menu1[5] == true then i5() end
if menu1[6] == true then i6() end
if menu1[7] == true then i7() end
if menu1[8] == true then i8() end
if menu1[9] == true then i9() end
if menu1[10] == true then i10() end
if menu1[11] == true then i11() end
if menu1[12] == true then i12() end
if menu1[13] == true then i13() end
if menu1[14] == true then i14() end
if menu1[15] == true then i15() end
if menu1[16] == true then i16() end
if menu1[17] == true then Main() end
end

function k1()
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
{{960921,0,4},
{960521,4,4},
{960491,8,4},
{960311,12,4},
{961001,16,4},
{960451,20,4,false}})
end

function k2()
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

function k3()
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
{{961881,0,4},
{960831,4,4},
{962331,8,4},
{962441,12,4},
{961381,16,4},
{960691,20,4,false}})
end

function f7()
menu1 = gg.multiChoice({
"老版动作[六格]",--1
"星耀动作[六格]",--2
"枪神动作[六格]",--3
"返回主页",},
nil,os.date("局内不可重复修改\n当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then k1() end
if menu1[2] == true then k2() end
if menu1[3] == true then k3() end
if menu1[4] == true then Main() end
end

function j1()
pl=gg.prompt({"输入威震天炮手炮连发(可多次修改↓)"},{[1]="10"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{pl[1], 8, 4, false}})
end

function j2()
pl=gg.prompt({"输入威震天炮手炮范围(可多次修改↓)"},{[1]="10"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
fastsearch({{1114636288, 32, 32}, {0.800000011920929, -76, 16}, {1065353216, -32, 4}, {1071225242, -24, 4}, {1056964608, -20, 4}, {1062836634, -12, 4}, {2.5, 12, 16}, {90200, 16, 4}, {1070386381, -36, 4}}, {{pl[1], -36, 16, false}})
end

function j3()
pl=gg.prompt({"输入红蜘蛛激光枪连发(可多次修改↓)"},{[1]="20"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{pl[1], 8, 4, false}})
end

function j4()
pl=gg.prompt({"输入热破炮激光散弹枪连发(可多次修改↓)"},{[1]="20"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{pl[1], 8, 4, false}, {0, 24, 16, false}})
end

function j5()
pl=gg.prompt({"输入热擎天柱控爆范围(可多次修改↓)"},{[1]="10"})
if pl==nil then os.exit(print("你未选择或你点击了取消"))end
fastsearch({{0.20000000298,16,32},{4,4,16},{3,8,16},{60,12,16},{120,16,16},{6,32,16},{2.5,40,16}},{{pl[1],24,16},{0,20,4,false}})
end

function f8()
menu1 = gg.multiChoice({
"威震天手跑自调连发[大厅|局内]",--1
"威震天手炮自调范围[局内]",--2
"红蜘蛛激光枪自调连发[大厅|局内]",--3
"热破激光散弹枪自调连发[大厅|局内]",--4
"擎天柱控爆自调范围[大厅|局内]",--5
"返回主页",},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then Main() end
end

function l1()
fastsearch({
 {26222, 2, 32},
 {-28646, 2, 2}
}, {
 {26143, 0, 2, false},
 {-32768, 2, 2, false},
},"普通道具改星耀品质")
end

function l2()
fastsearch({
 {31232, 2, 32},
 {26377, 2, 2}
}, {
 {26143, 0, 2, false},
 {-32768, 2, 2, false},
},"稀有道具改星耀品质")
end

function l3()
fastsearch({
 {21490, 2, 32},
 {-29737, 2, 2}
}, {
 {26143, 0, 2, false},
 {-32768, 2, 2, false},
},"史诗道具改星耀品质")
end

function f9()
menu1 = gg.multiChoice({
"普通道具卡改星耀品质[大厅]",--1
"稀有道具卡改星耀品质[大厅]",--2
"史诗道具卡改星耀品质[大厅]",--3
"返回主页",},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1==nil then os.exit(print("你未选择或你点击了取消"))end
if menu1[1] == true then l1() end
if menu1[2] == true then l2() end
if menu1[3] == true then l3() end
if menu1[4] == true then Main() end
end

function XY4()
menu1 = gg.multiChoice({
"修改文字[全局]",--1
"训练场功能[局内]",--2
"地图传送[局内]",--3
"灵魂出窍[局内]",--4
"大乱斗功能[大厅]",--5
"滑板实体变身[局内|大厅]",--6
"动作功能[局内|大厅]",--7
"变形金刚功能[局内|大厅]",--8
"道具卡改品质[大厅]",--9
"返回区域菜单"},
nil,os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then f7() end
if menu1[8] == true then f8() end
if menu1[9] == true then f9() end
if menu1[10] == true then Main() end
end
end

function t1()
fastsearch({{4.6533968e33,16,16384}},{{0,0,16,false}})
fastsearch({{2359296,4,16384}},{{0,0,4,false}})
fastsearch({{21530208,4,16384}},{{0,0,4,false}})
fastsearch({{2097152,4,16384}},{{0,0,4,false}})
fastsearch({{2621440,4,16384}},{{0,0,4,false}})
fastsearch({{8650752,4,16384}},{{0,0,4,false}})
fastsearch({{4194304,4,16384}},{{0,0,4,false}})
fastsearch({{1835008,4,16384}},{{0,0,4,false}})
gg.toast("[指针防封开启成功]")
end

function t2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,712,962", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,712,962", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,037,110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,037,110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,968,111,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,968,111,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,217,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,217,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,159", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,967,661,159", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,157", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,967,661,157", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,661,156", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,967,661,156", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,151,534", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,151,534", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,430,572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,430,572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,788,832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,003,788,832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,422,437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,422,437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,235,247", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,235,247", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,236,515", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,236,515", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,708,897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,708,897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,627,244", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,627,244", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,040,662", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,040,662", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,684,512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,684,512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,236,793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,236,793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,136,032", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,003,136,032", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,234,368", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,234,368", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,234,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,234,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,158,138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,158,138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,984,168,047", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,984,168,047", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,627,257", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,627,257", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,967,350,894", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,967,350,894", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,368,932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,368,932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,727,714", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,003,727,714", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,365,092", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,365,092", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,969,514,504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,969,514,504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
end

function t3()
qmnb = {
{["memory"] = 16384},
{["name"] = "去除ACE检测"},
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
gg.clearResults()
end

function XY5()
menu1 = gg.multiChoice({
"指针防封[大厅]",--1
"超级防封[大厅]",--2
"去除ACE[登录]",--3
"—返回—",
}, nil, os.date("当前时间%Y年%m月%d日%H时%M分"))
if menu1 == nil then else
if menu1[1] == true then t1() end
if menu1[2] == true then t2() end
if menu1[3] == true then t3() end
if menu1[4] == true then Main() end
end
end

function XY6()
pl=gg.alert("请选择写法[登入页面开启]","防闪退[指针]","防闪退[仿XS]","防闪退[基址]")
if pl==1 then
fastsearch({
{778923875, 4, 8},
{28527, 24, 4},
}, {
{-1, 0, 4, false},
},"防闪")
end
if pl==2 then
qmnb = {
{["memory"] = 8},
{["name"] = "防闪"},
{["value"] = 778923875, ["type"] = 4},
{["lv"] = 28527,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = -1,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
if pl==3 then
local addr = readPointer("libtersafe2.so", {168}, 5)
gg.edits(addr, {{9999, 4, 0, false}},'登录防闪')
end
end

function Exit()
pl=gg.alert("请选择[您确定要退出脚本吗]","[坚持退出]","[返回脚本]")
if pl==1 then
os.exit(print("你退出了脚本"))
end
if pl==2 then
Main()
end
end

gg.showUiButton()
while (true) do
	if gg.isClickedUiButton() then
		Main()
	end
end