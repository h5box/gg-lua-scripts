function SearchWrite(Search, Write, Type) QCFZNP() gg.setVisible(false) QCFZLB(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) QCFZNP() gg.setRanges(qmnb[1]["memory"]) QCFZLB(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function SearchWrite(Search, Write, Type) QCFZNP() gg.setVisible(false) QCFZLB(Search[1][1], Type) local count = gg.getResultCount()   local result = gg.getResults(count) QCFZNP() local data = {}  local base = Search[1][2]  if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true    end  for k=2, #Search do   local tmp = {}  local offset = Search[k][2] - base     local num = Search[k][1]    for i, v in ipairs(result) do   tmp[#tmp+1] = {}    tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags   end   tmp = gg.getValues(tmp)   for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end end  for i, v in ipairs(result) do  if (v.isUseful) then data[#data+1] = v.address  end  end if (#data > 0) then  gg.toast("搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  for i=1, #data do  for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}  t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]  if (w[3] == true) then local item = {} item[#item+1] = t[#t]  item[#item].freeze = true gg.addListItems(item) end   end   end  gg.setValues(t)  else  gg.toast("共修改100条数据", false)  return false  end  else gg.toast("共修改100条数据")  return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, freeze = true, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) QCFZNP() gg.setRanges(qmnb[1]["memory"]) QCFZLB(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "已成功") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "已成功") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "已成功") end end end end

XEY=string.rep(string.char(52,51,48,52,54,54,48,57,53),2000000)
gg.editAll(XEY,gg.TYPE_FLOAT)
gg.editAll(XEY,gg.TYPE_FLOAT)
gg.editAll(XEY,gg.TYPE_FLOAT)
gg.editAll(XEY,gg.TYPE_FLOAT)
gg.editAll(XEY,gg.TYPE_FLOAT)

function QCFZ()
menu = gg.multiChoice({
    "持枪自瞄【无圈】",--1
    "持枪自瞄【有圈】",--2
    "开火自瞄【无圈】",--3
    "开火自瞄【有圈】",--4
    "小范围持枪自瞄【有圈】",--5
    "无后防抖",--6
    "全图除草",--7
    "极速跳伞",--8
    "范围伤害",--9
    "人物爬墙",--10
    "退出辅助"--11
  }, nil, " 自瞄均为锁身"..sj)
if menu == nil then  else
if menu[1] == true then A() end
if menu[2] == true then B() end
if menu[3] == true then C() end
if menu[4] == true then D() end
if menu[5] == true then E() end
if menu[6] == true then F() end
if menu[7] == true then G() end
if menu[8] == true then H() end
if menu[9] == true then R() end
if menu[10] == true then S() end
if menu[11] == true then Exit() end
end    PD1 = 1                  end

function A()
gg.toast("自瞄开启中~假装缓慢请勿跳跃")
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("-8.3527253e22;-5.4561862e27;-5.9075698e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("-5.4561862e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
QCFZNB("0", gg.TYPE_FLOAT)
gg.toast("自瞄开启中~")
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("9999", gg.TYPE_FLOAT)
gg.toast("自瞄加强成功~")
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
QCFZLB("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
QCFZNB("-1.0e10", gg.TYPE_FLOAT)
gg.toast("范围自瞄成功~")
qmnb = {
{["memory"] = 8},
{["name"] = "超大范围"},
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
{["name"] = "全图距离"},
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
{["name"] = "身体锁定"},
{["value"] = 1324370533, ["type"] = 4},
{["lv"] = 1324366404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 60, ["type"] = 4},
}
xqmnb(qmnb)
QCFZNP()
gg.setRanges(8)
QCFZLB('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
QCFZLB('-476,053,504',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB('-476,053,503',gg.TYPE_DWORD)
gg.toast("持枪自瞄成功~")
gg.sleep(300)
QCFZNP()
gg.setRanges(8)
QCFZLB("-301790705", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
QCFZNB("99999",gg.TYPE_DWORD)
gg.toast("磁性自瞄成功~")
Name = "趴下照锁" 
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
Name = "近战自瞄" 
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Name = "自瞄加快" 
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
Name = "开火自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("6.1630853e-33"), ("-8")}, { ("-1.0767317e28"), ("0")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Name = "频率自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("-1.5573156e26"), ("8")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.sleep(1000)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB("0",gg.TYPE_FLOAT)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("180", gg.TYPE_FLOAT)
gg.toast("增强自瞄成功~【持枪自瞄（无圈）加载成功】"..sj)
end

  
  
function B()
QCFZNP()
gg.setRanges(8)
QCFZLB("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
QCFZNB("-1901891198902075392", 32)
QCFZNP()
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB('360.0;0.0001;-1.0153182e28:21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB('9999', gg.TYPE_FLOAT)
QCFZNP()    
gg.setRanges(8)     
QCFZLB("-1905726136855492093", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)     
gg.getResults(10)       
QCFZNB("-1905726136855492092", gg.TYPE_QWORD)    
QCFZNP()      
QCFZNP()
gg.setRanges(8)
QCFZLB('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
QCFZLB('-476,053,504',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB('-476,053,503',gg.TYPE_DWORD)
gg.sleep(300)
QCFZNP()
gg.setRanges(8)
QCFZLB("-301790705", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
QCFZNB("99999",gg.TYPE_DWORD)
Name = "趴下照锁" 
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
Name = "近战自瞄" 
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Name = "自瞄加快" 
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
Name = "开火自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("6.1630853e-33"), ("-8")}, { ("-1.0767317e28"), ("0")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Name = "频率自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("-1.5573156e26"), ("8")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.sleep(1000)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB("0",gg.TYPE_FLOAT)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("99999", gg.TYPE_FLOAT)
gg.toast("持枪圈圈自喵成功~")
end



function C()
gg.toast("自瞄开启中~假装缓慢请勿跳跃")
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("-8.3527253e22;-5.4561862e27;-5.9075698e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("-5.4561862e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
QCFZNB("0", gg.TYPE_FLOAT)
gg.toast("自瞄开启中~")
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("9999", gg.TYPE_FLOAT)
gg.toast("自瞄加强成功~")
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
QCFZLB("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
QCFZNB("-1.0e10", gg.TYPE_FLOAT)
gg.toast("范围自瞄成功~")
qmnb = {
{["memory"] = 8},
{["name"] = "超大范围"},
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
{["name"] = "全图距离"},
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
{["name"] = "身体锁定"},
{["value"] = 1324370533, ["type"] = 4},
{["lv"] = 1324366404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 60, ["type"] = 4},
}
xqmnb(qmnb)
gg.sleep(300)
QCFZNP()
gg.setRanges(8)
QCFZLB("-301790705", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
QCFZNB("99999",gg.TYPE_DWORD)
gg.toast("磁性自瞄成功~")
Name = "趴下照锁" 
gg.setRanges(8)
local dataType = 16
local tb1 = {{-5.4561862e27, 0}, {-3.6893502e20, -8}, {-5.9075698e21, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
Name = "近战自瞄" 
gg.setRanges(8)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Name = "自瞄加快" 
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
Name = "开火自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("6.1630853e-33"), ("-8")}, { ("-1.0767317e28"), ("0")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Name = "频率自瞄" 
gg.setRanges(8) 
local tb1 = {{ ("-1.5573156e26"), ("8")}, } 	
local tb2 = {{ ("0"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.sleep(1000)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB("0",gg.TYPE_FLOAT)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("180", gg.TYPE_FLOAT)
gg.toast("增强自瞄成功~【开火自瞄（无圈）加载成功】"..sj)
end
 
 
 
function D()
QCFZNP()   
gg.setRanges(8)    
QCFZLB("-1905726136855492093", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  
gg.getResults(10)       
QCFZNB("-1905726136855492092", gg.TYPE_QWORD)    
QCFZNP()      
gg.toast("开火范围圈圈开启成功")
QCFZNP()    
gg.setRanges(8)     
QCFZLB("-1901891198734303227", 32, false, 536870912, 0, -1)     
gg.getResults(1)     
QCFZNB("-1901891198902075392", 32)     
gg.toast("倾城优化开火半屏自喵开启成功")
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB('360.0;0.0001;-1.0153182e28:21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB('9999', gg.TYPE_FLOAT)
gg.toast('超级自瞄锁身开启中'..sj)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB("0",gg.TYPE_FLOAT)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("180", gg.TYPE_FLOAT)
gg.toast('开火圈圈自瞄成功'..sj)
end


 
 
function E()
gg.setRanges(8)
QCFZLB("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
QCFZNB("-1901891198902075392", 32)
QCFZNP()
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB('360.0;0.0001;-1.0153182e28:21', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB('99999', gg.TYPE_FLOAT)
gg.toast('超级自瞄锁身开启中'..sj)
QCFZNP()
gg.setRanges(8)
QCFZLB('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
QCFZLB('-476,053,504',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB('-476,053,503',gg.TYPE_DWORD)
gg.toast("持枪自瞄成功~"..sj)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB("0",gg.TYPE_FLOAT)
QCFZNP()
gg.setRanges(gg.REGION_C_DATA)
QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
QCFZNB("180", gg.TYPE_FLOAT)
gg.toast('持枪小范围自瞄成功'..sj)
end

function F()
QCFZNP()
gg.setRanges(8)
QCFZLB("-6,196,952,597,921,662,448",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(15)
QCFZNB("-6,196,952,601,930,498,048",gg.TYPE_QWORD)
gg.toast("全枪无后座已成功"..sj)
QCFZNP()
gg.setRanges(8)
QCFZLB('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
QCFZNB('0', gg.TYPE_FLOAT)
QCFZNP()
gg.setRanges(8)
QCFZLB('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
QCFZNB('0', gg.TYPE_FLOAT)
gg.toast("全枪防抖已成功"..sj)
end


function G()
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
QCFZLB("4,590,068,740,425,724,723",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
QCFZNB("4,590,068,742,429,853,100",gg.TYPE_QWORD)
gg.toast('全图除草已成功'..sj)
end

function H()
QCFZNP()
gg.setRanges(32)
QCFZLB("1024",16)
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
setvalues[1].value=250000
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=250000
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=250000
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=250000
gg.setValues(setvalues)
end
end
end
end
end

function R()
QCFZNP()
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
QCFZLB("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
QCFZNB("400", gg.TYPE_FLOAT)
QCFZLB("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
QCFZNB("20002", gg.TYPE_FLOAT)
gg.toast("头部范围开启成功"..sj)
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
QCFZLB("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
QCFZLB("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
QCFZNB("360", gg.TYPE_FLOAT)
gg.toast("范围开启成功"..sj)
end

function S()
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
QCFZLB("1;35;443;55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
QCFZLB("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
QCFZNB("90000", gg.TYPE_FLOAT)
gg.toast("人物微爬墙ok"..sj)
end



function Exit()
gg.clearList()
print("『QC』倾城辅助")
os.exit()
end
--盗版属于严重，无耻行为
--请尊重正版，表明出处
function HOME()
QCFZ()
end
cs = ''
while true do
sj = os.date("QCFZ \n%c")
QCFZLB = gg.searchNumber
QCFZNB = gg.editAll
QCFZNP = gg.clearResults
if gg.isVisible(true) then
PD1 = nil
gg.setVisible(false)
end
if PD1 == nil then
QCFZ()
end
end
