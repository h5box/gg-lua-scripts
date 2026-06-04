function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
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
----------------------------------------------仿XS配置代码,不准动,不然鸡掰给你砍断♂----------------------------------------------

--配置↓↓↓勿修改
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)

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
    
           gg.addListItems(t)
        else
            gg.toast("无数据", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

gg.alert("不要太嚣张，不然会十年")
function Main()
  SN = gg.choice({
    "麒麟透视＋防闪",
    "麒麟上色",
    "午后防抖",
    "全屏自瞄",
    "天线",
    "牛逼范围",
    "瞬击",
    "聚点",
    "腾讯防封",
    "防禁网1(推荐)",
    "防禁网2",
    "退出脚本"
  }, 2018, "香蕉君牛逼")
  if SN == 1 then
    a()
  end
  if SN == 2 then
    b()
  end
  if SN == 3 then
    c()
  end
  if SN == 4 then
    d()
  end
  if SN == 5 then
    e()
  end
  if SN == 6 then
    f()
  end
  if SN == 7 then
    g()
  end
  if SN == 8 then
    h()
  end
  if SN == 9 then
    i()
  end
  if SN == 10 then
    j()
  end
  if SN == 11 then
    h()
  end
  if SN == 12 then
    Exit()
  end
  XGCK = -1
end



function a()
  qmnb = {
{["memory"] = 4},
{["name"] = "980透视"},
{["value"] = 360, ["type"] = 16},
{["lv"] = 360, ["offset"] = 4, ["type"] = 16},
{["lv"] = 776, ["offset"] = 8, ["type"] = 16},
{["lv"] = 776, ["offset"] = 16, ["type"] = 16},
{["lv"] = 0.30000001192, ["offset"] = 264, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 12, ["type"] = 16, ["freeze"] = true},
{["value"] = 2, ["offset"] = -4, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防闪"},
{["value"] = -1.4442482e28, ["type"] = 16},
{["lv"] = -1.3093284e28, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end



function b()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16;32;40::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("28",gg.TYPE_DWORD)
  gg.toast("绿色第一步成功")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("28;32;40::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("45",gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end



function c()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1A0490C
setvalue(so+py,4,-300938737)
gg.toast("午后")
so=gg.getRangesList('libUE4.so')[1].start
py=0x3426134
setvalue(so+py,4,0)
gg.toast("防抖")
end



function d()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("暴力全屏自瞄开启成功")
end



function e()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "天线开启"},
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


function f()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;0.00009203507;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("38", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;0.00009203507;23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("30", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40;33;69.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.toast("超大范围打击开启成功")
end



function g()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3568EDC
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3568EA4
setvalue(so+py,4,0)
gg.toast("瞬击")
end



function h()
qmnb = {
{["memory"] = 32},
{["name"] = "聚点"},
{["value"] = 1079446077, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 1066139648, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 1099956224, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 1080033280, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("防封开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("范围开启成功")
end



function j()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;2131",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() >= 1 then
gg.searchNumber("10240",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address+0,flags = 4,freeze = true,value = 0}})
end
gg.toast("防十分钟1开启成功")
else
gg.toast("防十分钟1开启失败")
end end



function h()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-2,008,248,368;1,645,178,424",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() >= 1 then
gg.searchNumber("-2,008,248,368;1,645,178,424",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address+0,flags = 4,freeze = true,value = 0}})
end
gg.toast("防十分钟2开启成功")
else
gg.toast("防十分钟2开启失败")
end end


function HOME()
lw=1
Main()
end


function Exit()
  print("做个好演员")
  os.exit()
end
cs = "♂"



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









