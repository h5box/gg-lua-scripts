-------xxs别二改谢谢


gg.alert(os.date"欢迎使用此脚本\n北京时间:%Y年-%m月-%d日 %H时 %M分\n欢迎使用小杰国际服防\n\n交流群814246430(⭕🐶勿进)\n防种类更多拉闸就换\n本版本为付费版本因为各种原因免费\n\n本脚本为小杰一人\n收集\n优化\n制作\n\n\n小，就不发了\n交流群814246430","进入脚本")

------------配置

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function setvalue(a,b,c)
     gg.setValues({[1] = {address = a, flags = b, freeze = true, value =c}})

  end


------------配置

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


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
------------配置

-----------配置
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
-----------配置

-----------基址配置
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function setvalue(a,b,c)
     gg.setValues({[1] = {address = a, flags = b, freeze = true, value =c}})

  end
----------基址配置
function HOME()
SN = gg.choice({
   "空白独家旁路防(旁路开没有)",
   "小杰自创天线",
   "小杰独家裸午后据点",
   "小杰独家范围",
   "不知道是谁的倍镜防抖",
   "小杰上帝视角",
   "小杰测试子弹跟踪",
   "小杰测试基址写法除草",
   "小杰测试基址写法除雾",
   "小杰自抓的cd自瞄",
   "备用防10",
   "小杰全网独创防追",
   "备用全防",
   "备用2",
   "备用3",
   "备用4(老值不推荐)",
   "备用5",
   "稳定全防！(不防举报)",
   "独家抗10抗举报",
   "小杰独家半火防",
   "小杰独家开伞飞天",
   "小杰全网独发测试锁血",
   "小杰自抓天空黑色",
   "小杰98k,AWM,M24连射",
   "小杰自抓加速不拉回",
   "恢复加速不拉回",
   "小杰内透",
   "测试子弹跟踪2",
   "枪皮肤美化",
   "稳定半火防封区",
   "删除检测😂",
   "老外防封",
   "小杰林烨3.0半成品破解",
   "娱乐功能区",
      "退出脚本",
	 }, nil, os.date"欢迎使用此脚本\n北京时间:%Y年-%m月-%d日 %H时 %M分\n欢迎使用小杰国际服防!!!\n\n欢迎使用付费版本\n(温馨提示变态娱乐\n想上战神就演着打\n高空够分永远都稳定🌝💦)")
if SN == nil then else
if SN==1 then  F1() end
if SN==2 then  F2() end
if SN==3 then  F3() end
if SN==4 then  F4() end
if SN==5 then  F5() end
if SN==6 then  F6() end
if SN==7 then  F7() end
if SN==8 then  F8() end
if SN==9 then  F9() end
if SN==10 then F10() end
if SN==11 then  F11() end
if SN==12 then  F12() end
if SN==13 then F13() end
if SN==14 then  F14() end
if SN==15 then  F15() end
if SN==16 then  F16() end
if SN==17 then  F17() end
if SN==18 then F18() end
if SN==19 then  F19() end
if SN==20 then F20() end
if SN==21 then F21() end
if SN==22 then F22() end
if SN==23 then F23() end
if SN==24 then F24() end
if SN==25 then F25() end
if SN==26 then F26() end
if SN ==27 then F27() end
if SN ==28 then F28() end
if SN ==29 then F29() end
if SN==30 then F30() end
if SN==31 then F31()  end
if SN==32 then F32() end
if SN==33 then F33() end
if SN==34 then F34() end
if SN==35 then Exit() end
end
  PUBGMH = -1
end


function F1()
local info = gg.getTargetInfo()  local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false function name(n) if lib ~= n then lib = n gg.toast("\nPatch library "..lib..":\n") local ranges = gg.getRangesList(lib) if #ranges == 0 then gg.alert("Error: "..lib.." 请勿转发\nDo not forward") else memFrom = ranges[1].start memTo = ranges[#ranges]["end"] end end end function hex2tbl(hex) local ret = {} hex:gsub("%S%S", function (ch) ret[#ret + 1] = ch return "" end) return ret end function original(orig) local tbl = hex2tbl(orig) gg.clearResults() local len = #tbl if len == 0 then return end local used = len if len > lim then used = lim end local s = '' for i = 1, used do if i ~= 1 then s = s..";" end local v = tbl[i] if v == "??" or v == "**" then v = "0~~0" end   s = s..v.."h" end s = s.."::"..used gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo) if len > used then for i = used + 1, len do local v = tbl[i] if v == "??" or v == "**" then v = 256 else v = ("0x"..v) + 0 if v > 127 then v = v - 256 end end tbl[i] = v end end local found = gg.getResultCount(); results = {} local count = 0 local checked = 0 while true do if checked >= found then break end local all = gg.getResults(100000) local total = #all local start = checked if checked + used > total then break end while start < total do local good = true local offset = all[1 + start].address - 1 if used < len then local get = {} for i = lim + 1, len do get[i - lim] = {address = offset + i, flags = gg.TYPE_BYTE, value = 0} end get = gg.getValues(get) for i = lim + 1, len do local ch = tbl[i] if ch ~= 256 and get[i - lim].value ~= ch then good = false break end end end if good then count = count + 1 results[count] = offset checked = checked + used else local del = {} for i = 1, used do del[i] = all[i + start] end gg.removeResults(del) end start = start + used end end gg.clearResults() end function replaced(repl) num = num + 1 local msg = "\n请支持空白\nPlease support blank"..num..":" if #results == 0 then gg.alert(msg.." ") return end gg.toast(msg) local tbl = hex2tbl(repl) if src ~= nil then local source = hex2tbl(src) for i, v in ipairs(tbl) do if v ~= "??" and v ~= "**" and v == source[i] then tbl[i] = "**" end end src = nil end local cnt = #tbl local set = {} local s = 0 for _, addr in ipairs(results) do gg.toast("\tOffset: "..string.format("%x", addr + 1).."\n")   for i, v in ipairs(tbl) do if v ~= "??" and v ~= "**" then s = s + 1 set[s] = { ["address"] = addr + i,  ["value"] = v.."h", ["flags"] = gg.TYPE_BYTE,} end end end if s ~= 0 then gg.setValues(set) end ok = true end gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
name('libtersafe.so') original('7F 45 4C 46 01 01 01 00') replaced('00 00 00 00 29 98 00 28')
if ok then
end
gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("4608", gg.TYPE_DWORD)
  gg.refineNumber("4608", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2.5620291e-20", gg.TYPE_FLOAT)
  gg.getResults(9977776)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2.5620291e-20", gg.TYPE_FLOAT)
  gg.getResults(64445666)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_SYS)
  gg.searchNumber("2.5620291e-20", gg.TYPE_FLOAT)
  gg.getResults(65433247)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1232364871;1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1232364871;1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("251043084;251043088;389453356;389453360", gg.TYPE_XOR, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_XOR then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearList()
  gg.searchNumber("100/101/102/105/109/110/111/114/115/116/121", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_BYTE then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.searchNumber("18429;18793;19004;19359;19753;19998;20183;20368;20555;20731", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_WORD then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.searchNumber("1,18805126473;1,39494328946;1,57320220023;1,69638351351;1,73161292076", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_DOUBLE then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("135682;144387", gg.TYPE_DWORD)
  gg.refineNumber("135682", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("134658;131586", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("4096;135682", gg.TYPE_DWORD)
  gg.refineNumber("4096", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("157567", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135938", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135170", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135426", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135212", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("134914;262403", gg.TYPE_DWORD)
  gg.refineNumber("134914", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("133378;262403", gg.TYPE_DWORD)
  gg.refineNumber("133378", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("131330;133634", gg.TYPE_DWORD)
  gg.refineNumber("131330", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("131842;132098", gg.TYPE_DWORD)
  gg.refineNumber("131842", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133634", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131331", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("132098", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2.5620291e-20", gg.TYPE_FLOAT)
  gg.getResults(9977776)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2.5620291e-20", gg.TYPE_FLOAT)
  gg.getResults(64445666)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_SYS)
  gg.searchNumber("2.5620291e-20", gg.TYPE_FLOAT)
  gg.getResults(65433247)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1232364871;1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1232364871;1231974243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("251043084;251043088;389453356;389453360", gg.TYPE_XOR, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_XOR then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.clearList()
  gg.searchNumber("100/101/102/105/109/110/111/114/115/116/121", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_BYTE then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.searchNumber("18429;18793;19004;19359;19753;19998;20183;20368;20555;20731", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_WORD then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.searchNumber("1,18805126473;1,39494328946;1,57320220023;1,69638351351;1,73161292076", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, i in ipairs((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if i.flags == gg.TYPE_DOUBLE then
      i.value = "0"
      i.freeze = true
    end
  end
  gg.addListItems((gg.getResults(15000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("135682;144387", gg.TYPE_DWORD)
  gg.refineNumber("135682", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("134658;131586", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("4096;135682", gg.TYPE_DWORD)
  gg.refineNumber("4096", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("157567", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135938", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135170", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135426", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("135212", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("134914;262403", gg.TYPE_DWORD)
  gg.refineNumber("134914", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("133378;262403", gg.TYPE_DWORD)
  gg.refineNumber("133378", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("131330;133634", gg.TYPE_DWORD)
  gg.refineNumber("131330", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setVisible(false)
  gg.searchNumber("131842;132098", gg.TYPE_DWORD)
  gg.refineNumber("131842", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.setVisible(false)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133634", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131331", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("132098", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  gg.clearResults()
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/cache')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir')
  os.remove('/data/data/com.tencent.ig/app_appcache')
  os.remove('/data/data/com.tencent.ig/app_bugly')
  os.remove('/data/data/com.tencent.ig/app_crashrecord')
  os.remove('/data/data/com.tencent.ig/cache')
  os.remove('/data/data/com.tencent.ig/code_cache')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/cache')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora')
  os.remove('/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir')
  os.remove('/data/data/com.pubg.krmobile/app_appcache')
  os.remove('/data/data/com.pubg.krmobile/app_bugly')
  os.remove('/data/data/com.pubg.krmobile/app_crashrecord')
  os.remove('/data/data/com.pubg.krmobile/cache')
  os.remove('/data/data/com.pubg.krmobile/code_cache')
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")--略略略原作者小杰1
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/crashinfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Movies")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files")
  os.remove("/storage/emulated/0/Android/data/com.ludashi.superboost")
  os.remove("/storage/emulated/0/Android/data/io.va.exposed/files")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/al")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Unity")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig.com.vng.pubgmobile.com.pubg.krmobile.com.rekoo.pubgmobile.com.tencent.iglite/files/Pictures")
  os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_appcache")
  os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_bugly")
  os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/app_crashrecord")
  os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/cache")
  os.remove("/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/code_cache")
  os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_appcache")
  os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly")
  os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord")
  os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache")
  os.remove("/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/code_cache")
  os.remove('/data/data/com.tencent.ig/app_bugly/jni_log_1577506835319.txt')
  os.remove('/data/data/com.tencent.ig/app_bugly/sys_log_1577506835319.txt')
  os.remove('/data/data/com.tencent.ig/app_bugly/tomb_1577359201742.txt')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_bugly/jni_log_1577508070218.txt')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_bugly/sys_log_1577508070218.txt')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/app_crashrecord/1004')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/tmp6581746537038722605.tmp')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/volley/-1876432238937930483')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/cache/volley/402123874-1414136575')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/code_cache/com.android.opengl.shaders_cache')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/code_cache/com.android.opengl.shaders_cachecache')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/iMSDK/2_unknown-device-id_9999_20191228101110.log')--略略略原作者小杰
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/__tsecache.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustAttribution')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoActivityState')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoPackageQueue')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AppEventsLogger.persistedevents')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/gcTestConfig.txt')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tpnlcache.data')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/iMSDK/2_unknown-device-id_9999_20191228101110.gz')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AdjustIoActivityState')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/AppEventsLogger.persistedevents')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/hawk_data')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/hawk_data_init')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/mycpuinfo')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/TAPM_CM_AUDIT')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tersafe.update')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_app_915c.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_cs_stat2.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss.i.m.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/comm.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/config2.xml.b99a2eec')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/config3.xml')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/gp4.ano.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/mn_cache.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/mrpcs.data')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_base.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_cef.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_cfg2.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_emu_c2.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_lcp.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_r_record.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss_shp_tmp.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tss.ano.dat')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/files/tss_tmp/tssmua.zip')
  os.remove('/data/user/0/com.tencent.ighk/sandboxdata/com.tencent.ig/data/no_backup/com.google.android.gms.appid-no-backup')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/GCloud_2019122620.log')
  os.remove('/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/GCloud_2019122810.log')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/jni_log_1578198267363.txt')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/sys_log_1578198267363.txt')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_crashrecord/1004')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/000003.log')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/CURRENT')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOCK')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOG')--略略略原作者小杰
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/MANIFEST-000001')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index-dir/the-real-index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index-dir/the-real-index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/GPUCache/index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/000003.log')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/CURRENT')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOCK')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/LOG')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Local Storage/leveldb/MANIFEST-000001')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/000003.log')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/CURRENT')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/LOCK')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/LOG')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Session Storage/MANIFEST-000001')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Cookies')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Cookies-journal')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Web Data')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/Default/Web Data-journal')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/pref_store')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/variations_seed')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/variations_stamp')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_webview/webview_data.lock')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/arm/1510898742191.odex')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/arm/1510898742191.vdex')--略略略原作者小杰
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/oat/1510898742191.jar.cur.prof')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-934765161456825916')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-12641718651726807727')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-14816519161082035398')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/587138223-1144374039')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/738700132-1860930799')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/1519755986-631348890')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/414639347624179972')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/13692830731615832150')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/15197559861070317552')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-934765161456825916')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-12641718651726807727')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/-14816519161082035398')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/587138223-1144374039')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/738700132-1860930799')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/1519755986-631348890')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/414639347624179972')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/13692830731615832150')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/volley/15197559861070317552')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Crashpad/settings.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/index-dir/the-real-index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/6aaed60636ee0201_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/16351c91809a9cf8_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/Code Cache/js/index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/index-dir/the-real-index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/1cc791b735648e18_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/3e04d0f8697c78a2_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/9c96b53a2bb0e874_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/79f7c877fb1f712a_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/81e743f2cb5a2b64_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/88f0cbb8b8e69c23_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/7556c1835650e1d4_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/382231779e7438b6_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/a4924b32c9d742ea_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/d495fa4a78df46ba_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/dfe6b2497a7513ba_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/ebe8cb2e971c8360_0')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/Default/HTTP Cache/index')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/WebView/font_unique_name_table.pb')--略略略原作者小杰
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp3597813810324477687.tmp')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp3610993446905838121.tmp')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/cache/tmp7808321707509744993.tmp')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/code_cache/com.android.opengl.shaders_cache')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105100549.log')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105100451.gz')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105095426.gz')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/iMSDK/2_unknown-device-id_9999_20200105095150.gz')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/mn_cache.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_cef.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_emu_c2.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss_r_record.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_tmp/tss.ano.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/__tsecache.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustAttribution')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustIoActivityState')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/AdjustIoPackageQueue')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/apm_cc')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/cache.crc.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/gcTestConfig.txt')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/hawk_data_init')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/mycpuinfo')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tersafe.update')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tpnlcache.data')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_app_915c.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss_cs_stat2.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/files/tss.i.m.dat')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/no_backup/com.google.android.gms.appid-no-backup')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/jni_log_1578198950239.txt')
  os.remove('/data/user/0/com.tencent.ig.ml/com.tencent.ig/data/data/0/com.tencent.ig/app_bugly/sys_log_1578198950239.txt')
  end

function F2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.toast("天线已开启")  	 
end

function F3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1550321e27;-5.7270139e27;-2.786982e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-2.786982e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast('无后已开启')
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-1.2573874e23;-1.2573918e23::70', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('0', 16)
gg.toast("大厅聚点开启成功")
end

function F4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('9.20161819458;23;25;30.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('25;30.5',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('265', gg.TYPE_FLOAT)
gg.toast('范围伤害开启成功')
end

function F5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-3.3568104e27;-6.0171272e27;-1.5474616e26::', 16)
gg.refineNumber('-1.5474616e26', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.toast("倍镜防抖开启成功")
gg.clearResults()
gg.searchNumber('-3.86857e25;-2.8092263e28::5', 16)
gg.refineNumber('-2.8092263e28', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.toast("枪口防抖开启成功")
end

function F6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500", gg.TYPE_FLOAT)
gg.toast("上帝视角开启成功")
end

function F7()
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
    gg.toast("测试追踪打击")
end

function F8()
so = gg["getRangesList"]("libUE4.so")[1].start
    py = 36231496
    setvalue(so + py, 16, 0)
    gg["toast"]("除草开启成功")
end
function F9()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A43A18
setvalue(so+py,4,0)
gg.toast("除雾开启成功")
end

function F10()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('6.1630853e-33;-1.0767317e28::', 16)
gg.refineNumber('-1.0767317e28', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.toast('Cd自瞄开启成功')
end

function F11()
gg.clearResults()
	 gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(10000)
	 sl=gg.getResultCount()
	 if sl>500 then sl=500 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("内存防封开启成功")
     end
 
function F12()         
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("\"67109633\"", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("\"67109633\"", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("小杰防封开启成功")
end

function F13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = -1
      }
    })
  end
  gg.toast("小杰备用不一定稳")
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.alert("有些可能和谐数值都在")
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.getResults(50000)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.getResults(50000)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.getResults(50000)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.getResults(50000)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1401", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1401", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1401", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(140701)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.searchNumber("11082001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("本源码来着老外")
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1769238629", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("防禁网开启成功")
  gg.setRanges(16384)
  gg.searchNumber("309249", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("309249", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
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
  gg.toast("防禁网第二步开启成功")
  gg.clearResults()
end

function F14()
  gg.setRanges(4)
  gg.searchNumber("67109633", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("0", 4)
  gg.setRanges(131072)
  gg.searchNumber("-88.66608428955;26:512", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("-460", 16)
  gg.searchNumber("-88.73961639404;28:512", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("-560", 16)
  gg.setRanges(32)
  gg.searchNumber("9.201618;30.5;25", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("250", 16)
  gg.setRanges(4)
  gg.searchNumber("4608", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4608", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("0", 4)
  gg.toast("过搜索检测开启成功")
  gg.toast("开始启动")
  gg.setRanges(4)
  gg.searchNumber("67109633", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(4)
  gg.searchNumber("67109377", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(4)
  gg.searchNumber("12547", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(4)
  gg.searchNumber("131586", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(4)
  gg.searchNumber("\"67109377\"", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("防封成功️")
  gg.toast("开启成功")
  gg.toast("注入防举报")
  gg.setRanges(4)
  gg.searchNumber("1.2F;1.8F:9::1", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5001;1.1;1F::10", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2F;1.8F:9::1", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5001;1.1;1F::10", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5001;1.1;1F::10", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5001", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.7", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;0.4::60", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("5", 64)
  gg.editAll("9", 64)
  gg.editAll("4.66", 64)
  gg.editAll("5.5", 64)
  gg.toast("开始完毕")
  gg.clearResults()
end

function F15()
  gg.alert("交流群938038898")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(10000)
  sl = gg.getResultCount()
  for _FORV_3_ = tonumber("1"), sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = tonumber("0")
      }
    })
  end
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
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
  gg.toast("内存全防已成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.alert("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
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
  gg.clearResults()
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.5584387e28", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.toast("防追封开启成功")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  gg.toast("防追封开启成功")
  gg.clearResults()
end

function F16()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = -1
      }
    })
  end
  gg.toast("开启成功")
  gg.clearResults()
end


function F17()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("133634",4,false,536870912,0,-1)
gg.searchNumber("133634",4,false,536870912,0,-1)
gg.getResults(9999)
gg.getResults(9999)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("133634",4,false,536870912,0,-1)
gg.searchNumber("133634",4,false,536870912,0,-1)
gg.getResults(9999)
gg.getResults(9999)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134658",4,false,536870912,0,-1)
gg.searchNumber("134658",4,false,536870912,0,-1)
gg.getResults(9999)
gg.getResults(9999)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("133635",4,false,536870912,0,-1)
gg.searchNumber("133635",4,false,536870912,0,-1)
gg.getResults(9999)
gg.getResults(9999)
gg.toast("开启成功")
end


function F18()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67,109,633;12,547:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("12,547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", 4)
do
  do
    for i, i in ipairs(t) do
      if i.flags == gg.TYPE_DWORD then
        i.value = "0"
        i.freeze = true
      end
    end
  end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633;224357~236449:222", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", 4)
do
  do
    for i, i in ipairs(t) do
      if i.flags == gg.TYPE_DWORD then
        i.value = "0"
        i.freeze = true
      end
    end
  end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", 4)
do
  do
    for i, i in ipairs(t) do
      if i.flags == gg.TYPE_DWORD then
        i.value = "0"
        i.freeze = true
      end
    end
  end
end
gg.addListItems(t)
t = nil
gg.toast('内防开启成功')
end

function F19()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67,109,377;67,109,633;100000~200000",4,false,536870912,0,-1)
gg.searchNumber("100000~200000",4,false,536870912,0,-1)
gg.getResults(99999)
gg.getResults(99999)
gg.toast("内存防封开启成功感谢你的使用")
end

function F20()
gg.alert("小杰测试国际服防建议半火\n点击确定开始\n大厅执行")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67,109,633;12,547:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("12,547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", 4)
do
  do
    for i, i in ipairs(t) do
      if i.flags == gg.TYPE_DWORD then
        i.value = "0"
        i.freeze = true
      end
    end
  end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633;224357~236449:222", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", 4)
do
  do
    for i, i in ipairs(t) do
      if i.flags == gg.TYPE_DWORD then
        i.value = "0"
        i.freeze = true
      end
    end
  end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", 4)
do
  do
    for i, i in ipairs(t) do
      if i.flags == gg.TYPE_DWORD then
        i.value = "0"
        i.freeze = true
      end
    end
  end
end
gg.addListItems(t)
t = nil
end

function F21()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("100.0;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("第一步")


 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1024;3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("第二步")
  gg.toast("芜湖起飞 ！ ！ !")
end

function F22()
gg.alert('提示:锁血可能不成功，多开几次！！')
gg.alert('提示:先喝饮料，能量条在锁血就在我测试10次开启成功过3次')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0F;0.6;0.1;0.125::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("锁血开启成功")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50F;5F;2F;0.5F;0.01F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("-0.4", gg.TYPE_FLOAT)
gg.toast("???开启成功")
end

function F23()
gg.clearResults()
  gg.setRanges(32)
gg.searchNumber('17,179,935,489',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("17,179,869,184",gg.TYPE_QWORD)
gg.toast("天空黑色已成功")
end

function F24()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91,000.0F;2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("AWM连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000;1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("k98连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000;1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("M24连射开启成功")
end

function F25()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("小杰独家全局加速不拉回开启")
end

function F26()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回已关闭")
end

function F27()
cs = ""
cs = ""
menu27 = gg.choice({
    "通用透视 ",
    "845透视 ",
    "835透视 ",
    "660透视 ",
    "625透视 ",
    "透视防闪 ",
    "完美透视 ",
    "经典透视 ",
	"高通骁龙完美透视",
"高通骁龙通用透视",
"蓝绿大厂完美透视",
"X9625处理器透视",
"660手机透视",
"835处理器透视",
"845流畅透视",
"vivo手机透视",
"华为960处理器透视",
"联发科透视",
"三级天线[落地]",
"全新防闪[出生岛]",
"845HDR透视",
"枪械倍镜修复",
"骁龙400系列透视",
"骁龙625透视",
    "高通骁龙透视",
    "透视修复防闪",
    "完美透视",
    "r11透视（全网首发最新10.18抓取）",
    "安卓7.0透视",
    "完美稳定透视",
    "625透视",
    "通用透视",
    "660透视",
    "安卓8.0透视",
    "710 845流畅透视",
    "835透视",
    "专用透视",
    "845流畅透视（稳定）",
    "653透视",
    "返回主页",
}, nil, "足够用心才足够特别\n如果还没有你的机型，就天线")
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then b4() end
if menu1 == 5 then b5() end
if menu1 == 6 then b6() end
if menu1 == 7 then b7() end
if menu1 == 8 then b8() end
if menu1 == 9 then xt1() end
if menu1 == 10 then xt2() end
if menu1 == 11 then xt3() end
if menu1 == 12 then xt4() end
if menu1 == 13 then xt5() end
if menu1 == 14 then xt6() end
if menu1 == 15 then xt7() end
if menu1 == 16 then xt8() end
if menu1 == 17 then xt9() end
if menu1 == 18 then xt10() end
if menu1 == 19 then xt11() end
if menu1 == 20 then xt12() end
if menu1 == 21 then xt13() end
if menu1 == 22 then xt14() end
if menu1 == 23 then xt15() end
if menu1 == 24 then xt16() end
if menu1 == 25 then hh1() end
if menu1 == 26 then hh2() end
if menu1 == 27 then hh3() end
if menu1 == 28 then hh4() end
if menu1 == 29 then hh5() end
if menu1 == 30 then hh6() end
if menu1 == 31 then hh7() end
if menu1 == 32 then hh8() end
if menu1 == 33 then hh9() end
if menu1 == 34 then hh10() end
if menu1 == 35 then hh11() end
if menu1 == 36 then hh12() end
if menu1 == 37 then hh13() end
if menu1 == 38 then hh14() end
if menu1 == 39 then hh15() end
if menu1 == 40 then xt17() end
menu1 = -1
end

function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.7615819e-37;1.3912552e-19;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("\n 开启成功")
end
function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("\n 845透视开启成功")
end
function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("4.7408155e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("2.25000190735;3.75055122375;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("3.25000596046;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("\n 835透视开启成功")
end
function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2.0;0.00999999978::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42;-5.5695588e-40;2.0::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("\n 660透视开启成功")
end
function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("\n 625透视开启成功")
end
function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("房屋防闪开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("\n 开启成功")
end
function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00999999978;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00999999978;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("\n 开启成功")
end
function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("\n 开启成功")
end

function xt1()
  
gg.clearResults()
  
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4140D;50331648D;-2147483648D;2::100",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.getResults(20)
  
gg.editAll('120', gg.TYPE_FLOAT)
gg.searchNumber("256D;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 
gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  
gg.toast("高通骁龙最新完美透视开启成功")

end
function xt2()

gg.clearResults()
gg.setRanges (gg.REGION_BAD)
gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;0.00100000078F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll('120', gg.TYPE_FLOAT)
gg.toast(" 高通骁龙通用透视开启成功")

end

function xt3()
gg.clearResults()

gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6896623e-29;3.7615819e-37;0;2::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.getResults(10)

gg.editAll("120", gg.TYPE_FLOAT)
  
gg.clearResults()
  
gg.searchNumber("-5.5695588e-40;3.7615819e-37;2::70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.getResults(40)
  
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  
gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00100000078::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 
gg.getResults(100)
 
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast(" 完美透视开启成功")
end



function xt4()
 
 gg.clearResults()
  
 gg.setRanges(gg.REGION_BAD)
 gg.searchNumber(' 1,671,233,540D;4140D;1,669,365,763D;-2,147,086,191D;1,669,496,837D;50,331,648D;-2,147,483,648D;2', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
 
gg.editAll('120',gg.TYPE_FLOAT)
 
gg.clearResults()
 
gg.searchNumber(' 1,669,529,608D;4140D;1,669,365,766D;277,889,029D;1,669,464,071D;50,331,648D;-2,147,483,648D;2', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.getResults(6)

gg.editAll('120',gg.TYPE_FLOAT)
 
gg.clearResults()

gg.searchNumber(' 463009D;1669595147D;200866D;1669595148D;194D;539246599D;50331648D;2', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)

gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
gg.getResults(6)
gg.editAll('120',gg.TYPE_FLOAT)

gg.toast(" 625透视开启成功")

end



 function xt5()

  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2.0;0.00100000078::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42;-5.5695588e-40;2.0::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("660透视开启成功")
end

 
 
function xt6() 
    gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("835透视50％")
   gg.clearResults() 
 gg.setRanges(gg.REGION_BAD) 
 gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(10) 
 gg.editAll("120", gg.TYPE_FLOAT) 
 gg.toast(" 已开启75%") 
 gg.clearResults() 
 gg.setRanges(gg.REGION_BAD) 
 gg.searchNumber("-127.0;2;3.7615819e-37;2.8866748e-43", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(3) 
 gg.editAll("120", gg.TYPE_FLOAT) 
 gg.toast(" 835透视开启完成") 
end


function xt7()
gg.clearResults() 
gg.setRanges(gg.REGION_BAD) 
gg.searchNumber("95D;2;9.2194229e-41::30", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(6) 
 gg.editAll("120", gg.TYPE_FLOAT) 
 gg.toast(" 已开启25%") 
 gg.clearResults() 
 gg.setRanges(gg.REGION_BAD) 
 gg.searchNumber("4202D;2.25;2;1.6623054e-19::200",gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(3) 
 gg.editAll("120", gg.TYPE_FLOAT) 
 gg.toast(" 已开启50%") 
 gg.clearResults() 
 gg.setRanges(gg.REGION_BAD) 
 gg.searchNumber("2;-1;0;1;-127;0.24022650719;0.69314718246;0.00999999978::30", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(10) 
 gg.editAll("120", gg.TYPE_FLOAT) 
 gg.toast(" 已开启75%") 
 gg.clearResults() 
 gg.setRanges(gg.REGION_BAD) 
 gg.searchNumber("-127.0;2;3.7615819e-37;2.8866748e-43", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(3) 
 gg.editAll("120", gg.TYPE_FLOAT) 
 gg.toast(" 845透视开启完成") 
  end
  
  
function xt8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00100000078;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00100000078;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  end
  
  
function xt9()
  gg.clearResults() 
  gg.setRanges(gg.REGION_BAD) 
  gg.searchNumber("2;-1;0;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20) 
    gg.editAll("20", gg.TYPE_FLOAT)
     gg.clearResults()
      gg.setRanges (gg.REGION_BAD)
       gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
        gg.getResults(2) 
        gg.editAll("100", gg.TYPE_FLOAT) 
        gg.clearResults() 
        gg.setRanges (gg.REGION_BAD) 
        gg.searchNumber("-1.0285578e-38;3.7615819e-37;2;-1;1;-127::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
        gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
         gg.getResults(20) 
         gg.editAll("120", gg.TYPE_FLOAT) 
         gg.toast('麒麟透视已开启')
  end
  
  
function xt10()
    gg.clearResults() 
    gg.searchNumber("10000;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
    gg.getResults(100)
     gg.editAll("0", gg.TYPE_FLOAT) 
    gg.clearResults() 
    gg.toast("防止失效手动冻结0")
end


function xt11()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.26217222214", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("三级头定位开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.34858703613", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("三级甲定位开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.10485887527", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("三级包定位开启成功")
end



    function xt12()
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19F;1.1202015e-19F; 3.7615819e-37F;255.0F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("防闪开启成功")
  end
  
  
function xt13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("845透视开启成功")
  end
  
  
function xt14()
 gg.toast(" 正在修复枪械透视") 
 gg.clearResults() 
 gg.setRanges(gg.REGION_BAD) 
 gg.searchNumber("1.3312335e-43;120;1.6623075e-19;9.2194229e-41", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(1) 
   gg.editAll("2", gg.TYPE_FLOAT) 
   gg.toast(" 正在修复马赛克") 
  gg.clearResults() 
  gg.setRanges(gg.REGION_BAD)
   gg.searchNumber("4.8146053e21;1.3912556e-19;1.5414283e-44;120;-1;1;-127", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(1) 
  gg.editAll("2", gg.TYPE_FLOAT) 
  gg.toast(" 修复枪械透视开启成功")
end



function xt15()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00100000078F::200", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(30)
  gg.editAll("120", 16)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", 16, false, 536870912, 0, -1)
  gg.searchNumber("2", 16, false, 536870912, 0, -1)
  gg.getResults(30)
  gg.editAll("120", 16)
  gg.toast("4系列透视已开启")
end
function xt16()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-5.5695588e-40;4.814603e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;1.3912552e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;1.3912525e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1202057e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("骁龙625透视已开启")
end
 
function hh1()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.7615819e-37;1.3912552e-19;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("通用透视开启成功")
end

function hh2()
  gg.clearResults()
gg.setRanges (gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('9999', gg.TYPE_FLOAT)
gg.toast("房屋防闪开启")
gg.clearResults()
gg.setRanges (gg.REGION_BAD)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('9999', gg.TYPE_FLOAT)
gg.toast("山部分防闪开启")
gg.toast("透视防闪开启")
end

function hh3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.7615819e-37;1.3912552e-19;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("完美人物透视已开启")
end
function hh4()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("第一步马赛克开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.8147322e-40;4.8699472e21;2.718519e-43;1.3912525e-19;3.7615819e-37;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("第二步半身开启成功")
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("第三步3/4开启成功")
  gg.toast("第四步开启失败")
  gg.alert("qq371074359抓取，二改请保留")
end

function hh5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("第一步开启成功")
  else
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("130", gg.TYPE_FLOAT)
    gg.searchAddress("504")
    gg.toast("50%")
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("第二步开启成功")
  else
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("130", gg.TYPE_FLOAT)
    gg.searchAddress("A00")
    gg.toast("人物透视开启成功")
  end
end
function hh6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("人物透视开启成功")
  gg.toast("完美")
  gg.toast(os.date("提示脚本开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
function hh7()
  gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-5.5695588e-40;4.814603e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;1.3912552e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;1.3912525e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.searchNumber("2 ", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1202057e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIEric_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.toast("625透视已开启")
end

function hh8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00999999978;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00999999978;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("最新完美透视开启成功")
end
function hh9()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("载入失败，确保网络正常")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("257;2131;0F~99999F;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0F~99999F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无视截入成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43;3.7615819e-37;2.0;0.00999999978::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42;-5.5695588e-40;2.0::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("专用660透视开启成功")
end
function hh10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("第一步开启成功")
  else
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("50%")
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("第二步开启成功")
  else
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("人物透视开启成功")
  end
end
function hh11()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("透视正在开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("75％")
  gg.toast("845透视开启成功")
end
function hh12()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("4.7408155e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("2.25000190735;3.75055122375;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("3.25000596046;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("835透视开启成功")
end
function hh13()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.7615819e-37;1.3912552e-19;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("通用透视开启成功")
  gg.toast("完美")
  gg.toast(os.date("提示脚本开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
function hh14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2.0;1.6623108e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("第一步开启成功，正在开启第二步！")
 gg.clearResults()
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2.0;1.6623054e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("第二步开启成功，正在开启第三步！")
  gg.clearResults()
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("高通骁龙845透视开启成功！")
gg.clearResults()
end

function hh15()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00999999978;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00999999978;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("完美透视已开启")
end

function F28()
 gg.clearResults()
  Fan_searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  Fan_searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("子弹追踪开启成功")
end

function F29()
cs = ""
ENDTS1 = gg.choice({
       "人物变身",
       "AK白银",
       "AK黑金",
       "AK白红",
       "SCAR狂怒",
       "SCAR赤橙",
       "SCAR黑金",
       "SCAR白红",
       "M416火箭101粉",
       "M416黑金",
       "M416赤红",
       "M416拼色",
       "M416黑黄",
       "M416狂怒",
       "M416中国红",
       "M16黑红",
       "M16蓝橙",
       "M16黑金",
       "M16玫瑰精灵",
       "M16白橙",
       "M16狂怒",
       "UMP9赤橙",
       "UMP9银鹰",
       "UMP9火箭101粉",
       "UZI狂怒",
       "98k拼色",
       "98k黑金",
       "98k黑红黄拼色",
       "98k红",
       "AWM樱花",
       "返回主页"
},nil,"小杰:全部可以在大厅一起开，每把枪只可以开一个皮肤")
if ENDTS1 == 1 then AK1() end
if ENDTS1 == 2 then AK2() end
if ENDTS1 == 3 then AK3() end
if ENDTS1 == 4 then AK4() end
if ENDTS1 == 5 then SC1() end
if ENDTS1 == 6 then SC2() end
if ENDTS1 == 7 then SC3() end
if ENDTS1 == 8 then SC4() end
if ENDTS1 == 9 then MS1() end
if ENDTS1 == 10 then MS2() end
if ENDTS1 == 11 then MS3() end
if ENDTS1 == 12 then MS4() end
if ENDTS1 == 13 then MS5() end
if ENDTS1 == 14 then MS6() end
if ENDTS1 == 15 then MS7() end
if ENDTS1 == 16 then MYL1() end
if ENDTS1 == 17 then MYL2() end
if ENDTS1 == 18 then MYL3() end
if ENDTS1 == 19 then MYL4() end
if ENDTS1 == 20 then MYL5() end
if ENDTS1 == 21 then MYL6() end
if ENDTS1 == 22 then UP1() end
if ENDTS1 == 23 then UP2() end
if ENDTS1 == 24 then UP3() end
if ENDTS1 == 25 then UZI1() end
if ENDTS1 == 26 then BK1() end
if ENDTS1 == 27 then BK2() end
if ENDTS1 == 28 then BK3() end
if ENDTS1 == 29 then BK4() end
if ENDTS1 == 30 then AWM1() end
if ENDTS1 == 31 then main() end
end



--------------步枪系列
---AK

function AK1()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("403251;404007;405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("403190", gg.TYPE_DWORD)
  gg.toast("衣服帽子开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("403251;404007;405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("403190", gg.TYPE_DWORD)
  gg.toast("裤子开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("403251;404007;405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("403190", gg.TYPE_DWORD)
  gg.toast("鞋子开启成功")
end

function AK2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001002", gg.TYPE_DWORD)
gg.toast("ak白银成功")
end

function AK3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001003", gg.TYPE_DWORD)
gg.toast("ak白银带黄成功")
end

function AK4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001004", gg.TYPE_DWORD)
gg.toast("ak白红成功")
end
---SCAR

function SC1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003001", gg.TYPE_DWORD)
gg.toast("SC白银(狂怒)成功")
end

function SC2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003002", gg.TYPE_DWORD)
gg.toast("SC黑金成功")
end

function SC3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003003", gg.TYPE_DWORD)
gg.toast("SC赤橙成功")
end

function SC4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003004", gg.TYPE_DWORD)
gg.toast("SC白红成功")
end

---M4
function MS1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004001", gg.TYPE_DWORD)
gg.toast("M416樱花成功")
end

function MS2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004002", gg.TYPE_DWORD)
gg.toast("M416黑金成功")
end

function MS3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004003", gg.TYPE_DWORD)
gg.toast("M4赤红成功")
end

function MS4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004004", gg.TYPE_DWORD)
gg.toast("M4拼色成功")
end

function MS5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004005", gg.TYPE_DWORD)
gg.toast("M4黑黄成功")
end

function MS6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004006", gg.TYPE_DWORD)
gg.toast("M4狂怒成功")
end

function MS7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("101004007", gg.TYPE_DWORD)
gg.toast("M4中国红成功")
end

----M16A4
function MYL1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002001", gg.TYPE_DWORD)
gg.toast("M16黑红成功")
end

function MYL2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002002", gg.TYPE_DWORD)
gg.toast("M16蓝橙成功")
end

function MYL3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002003", gg.TYPE_DWORD)
gg.toast("M16黑金成功")
end

function MYL4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002004", gg.TYPE_DWORD)
gg.toast("M16玫瑰精灵成功")
end

function MYL5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002005", gg.TYPE_DWORD)
gg.toast("M16白橙成功")
end

function MYL6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100500;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002006", gg.TYPE_DWORD)
gg.toast("M16狂怒成功")
end

---------冲锋枪系列

---ump9
function UP1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102002001", gg.TYPE_DWORD)
gg.toast("UP9赤橙成功")
end

function UP2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102002002", gg.TYPE_DWORD)
gg.toast("UP9黑鹰成功")
end

function UP3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102002003", gg.TYPE_DWORD)
gg.toast("UP9樱花成功")
end

function UZI1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200100;102001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("102001003", gg.TYPE_DWORD)
gg.toast("UZI狂怒成功")
end


-----------狙击枪系列

----98k

function BK1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103001001", gg.TYPE_DWORD)
gg.toast("98k拼色成功")
end

function BK2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103001002", gg.TYPE_DWORD)
gg.toast("98k黑金成功")
end

function BK3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103001003", gg.TYPE_DWORD)
gg.toast("98k黑红黄拼色成功")
end

function BK4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103001005", gg.TYPE_DWORD)
gg.toast("98k红成功")
end


-----AWM

function AWM1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300300;103003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103003001", gg.TYPE_DWORD)
gg.toast("AWM樱花成功")
end

     function F30()
      menu1 = gg.multiChoice({
        "大厅防封",
        "防禁网",
        "防举报",
        "返回上一页"
      }, nil, os.date("当前时间:%F %X️️\n新版本防"))
      if menu1 == nil then
      else
        if menu1[1] == true then
          a1()
        end
        if menu1[2] == true then
          a2()
        end
        if menu1[3] == true then
          a3()
        end
        if menu1[4] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function a1()
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("135682;144387", gg.TYPE_DWORD)
      gg.refineNumber("135682", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("134658;131586", gg.TYPE_DWORD)
      gg.refineNumber("134658", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("4096;135682", gg.TYPE_DWORD)
      gg.refineNumber("4096", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("157567", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("135938", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("135170", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("135426", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("135212", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("134914;262403", gg.TYPE_DWORD)
      gg.refineNumber("134914", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("133378;262403", gg.TYPE_DWORD)
      gg.refineNumber("133378", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("131330;133634", gg.TYPE_DWORD)
      gg.refineNumber("131330", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.setVisible(false)
      gg.searchNumber("131842;132098", gg.TYPE_DWORD)
      gg.refineNumber("131842", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.setVisible(false)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.setVisible(false)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("133634", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("131331", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("132098", gg.TYPE_DWORD)
      gg.getResults(50000)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
      gg.toast("开启成功")
    end
    
    function a3()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("67,109,377;67,109,633;100000~200000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("100000~200000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
      for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_5_.flags == gg.TYPE_DWORD then
          _FORV_5_.value = "-1"
          _FORV_5_.freeze = true
        end
      end
      gg.addListItems((gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)))
      gg.toast("抗举报开启成功")
    end
    
    function a2()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() >= 1 then
        gg.toast("正在开启")
        gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        n = gg.getResultCount()
        jz = gg.getResults(n)
        for _FORV_3_ = 1, n do
          gg.addListItems({
            [1] = {
              address = jz[_FORV_3_].address + 100,
              flags = 4,
              freeze = true,
              value = 4451
            }
          })
        end
        gg.toast("防禁网开启成功")
      else
        gg.toast("防禁网开启失败")
      end
    end

function F31()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("135682", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("134658", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("134914", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("133378", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("131330", gg.TYPE_DWORD)
--[[ found: 930 ]]
gg.getResults(50000)
--[[ count: 930 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1348759109;1953067887;1634692166;1920287604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.getResults(10)
--[[ count: 0 ]]
gg.alert("数据发生变化，你被迫下线！")
end

function F32()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("157567", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135938", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135170", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135426", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135212", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131842;132098", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098", gg.TYPE_DWORD)
gg.getResults(30101996)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
end

function F33()
  SN = gg.choice({
    "林烨大厅全防",
    "大厅备用防封",
    "诛仙缩水防封",
    "防止隔离追封",
    "退出",
    "交流群(已删)"
  }, nil, "更新了ca防(无泛滥值)   需隐藏23即可稳定   此更新把和谐值删除   更新了最新独家值")
  if SN == 1 then
    HS7()
  end
  if SN == 2 then
    HS8()
  end
  if SN == 3 then
    HS9()
  end
  if SN == 4 then
    HS10()
  end
  if SN == 5 then
    HS11()
  end
  if SN == 6 then
    Main1()
  end
  FX1 = 0
end

function L2_3689()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("13,246,200", gg.TYPE_DWORD)
  gg.searchNumber("13,246,200", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("13,271,472", gg.TYPE_DWORD)
  gg.searchNumber("13,271,472", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("13,245,724", gg.TYPE_DWORD)
  gg.searchNumber("13,245,724", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("13,244,296", gg.TYPE_DWORD)
  gg.searchNumber("13,244,296", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("45,219,840", gg.TYPE_DWORD)
  gg.searchNumber("45,219,840", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("14132", gg.TYPE_DWORD)
  gg.searchNumber("14132", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1703963", gg.TYPE_DWORD)
  gg.searchNumber("1703963", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("80,587,726", gg.TYPE_DWORD)
  gg.searchNumber("80,587,726", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("229,053,323", gg.TYPE_DWORD)
  gg.searchNumber("229,053,323", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("65536", gg.TYPE_DWORD)
  gg.searchNumber("65536", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("230,942,903", gg.TYPE_DWORD)
  gg.searchNumber("230,942,903", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("75,811,546", gg.TYPE_DWORD)
  gg.searchNumber("75,811,546", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("79,618,689", gg.TYPE_DWORD)
  gg.searchNumber("79,618,689", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("75,811,352", gg.TYPE_DWORD)
  gg.searchNumber("75,811,352", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("81,301,500", gg.TYPE_DWORD)
  gg.searchNumber("81,301,500", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("179201", gg.TYPE_DWORD)
  gg.searchNumber("179201", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.toast(os.date("林烨提醒您开启成功十年老兵耗时%S秒"))
end

function L2_3689()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("526,300;526,313", gg.TYPE_DWORD)
  gg.searchNumber("", gg.TYPE_DWORD)
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("112,063,940", gg.TYPE_DWORD)
  gg.searchNumber("112,063,940", gg.TYPE_DWORD)
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("112,059,780", gg.TYPE_DWORD)
  gg.searchNumber("112,059,780", gg.TYPE_DWORD)
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("44278", gg.TYPE_DWORD)
  gg.searchNumber("44278", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if sl > 9999 then
    sl = 9999
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
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("327,680", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("327,680", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast(os.date("林烨提醒您开启成功十年老兵耗时%S秒"))
end

function L2_3689()
  gg.setRanges(16384)
  gg.searchNumber("179201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("179201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.searchNumber("268,435,454", gg.TYPE_DWORD)
  gg.searchNumber("268,435,454", gg.TYPE_DWORD)
  jg = gg.getResults(9999)
  sl = gg.getResultCount()
  if 9999 < sl then
    sl = 9999
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
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.toast("正在开启")
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    for _FORV_3_ = 1, n do
      gg.addListItems({
        [1] = {
          address = jz[_FORV_3_].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
    end
  else
  end
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("1.1754945e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("9CC", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.sleep(5000)
  gg.getResults(100000)
  gg.editAll("1.1754945e-37", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber("1024;120;30356;3667", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30356", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("161281;1024;169472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("161281", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("18945;1024;19968", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18945;19968", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("50380832;1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50380832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("167788746;1024;8323072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8323072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.toast("诛仙独家防开启成功")
end

function L2_3689()
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  gg.toast(os.date("林烨提醒您防隔离追封开启成功十年老兵耗时%S秒"))
end

function F34()
SN = gg.choice({
  "1.新人物透视",
  "2.新完美透视",
  "3.新通用透视",
  "4.透视防闪",
  "5.新845透视",
  "6.新660透视",
  "7.新625透视",
  "8.新835透视",
  "9.人物百变色",
  "10.人物绿色",
  "11.全屏自瞄",
  "12.魔术子弹",
  "13.掉血特效",
  "14.全新无后",
  "15.超级防抖",
  "16.下蹲路飞",
  "17.超级天线",
  "18.全身范围",
  "19.三级套餐",
  "20.吉普全套",
  "21.返回主页",
      "5.56枪无后【稳】",
    "移动天线【稳】",
    "7.62枪无后【自测】",
    "除草①【推荐自用稳】",
    "除草②【机型稳】",
    "移动天线【自用稳】",
    "xa内存自瞄",
}, nil, "欢迎使用，娱乐功能区")
if menu1 == 1 then p1() end
if menu1 == 2 then p2() end
if menu1 == 3 then p3() end
if menu1 == 4 then p4() end
if menu1 == 5 then p5() end
if menu1 == 6 then p6() end
if menu1 == 7 then p7() end
if menu1 == 8 then p8() end
if menu1 == 9 then p9() end
if menu1 == 10 then p10() end
if menu1 == 11 then p11() end
if menu1 == 12 then p12() end
if menu1 == 13 then p13() end
if menu1 == 14 then p14() end
if menu1 == 15 then p15() end
if menu1 == 16 then p16() end
if menu1 == 17 then p17() end
if menu1 == 18 then p18() end
if menu1 == 19 then p19() end
if menu1 == 20 then p20() end
if menu1 == 21 then p21() end
if menu1 == 22 then p22() end
if menu1 == 23 then p23() end
if menu1 == 24 then p24() end
if menu1 == 25 then p25() end
if menu1 == 26 then p26() end
if menu1 == 27 then p27() end
if menu1 == 28 then p28() end
menu1=-1
end

function p1()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.7615819e-37;1.3912552e-19;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("新人物透视开启成功")
end
function p2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.7961574e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("新完美透视开启成功")
end
function p3()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("通用透视开启成功")
end
function p4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("透视防闪开启成功")
end
function p5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.7408166e21;1.9327361e10;4.8146041e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912556e-19;1.5414283e-44;1.1202057e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912525e-19;5.465064e-44;1.1202042e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("845高清透视已开启")
end
function p6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;-127.0;1.0;1.3912525e-19;2.718519e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;-127.0;3.7615819e-37;4.8514959e21;3.7330591e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;2.25;3.7615819e-37;4.7961574e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;3.7615819e-37;4.814603e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;-0.0;3.7615819e-37;4.814603e21;4.7408132e21;4.5918028e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("660透视开启成功")
end
function p7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7777152e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("-5.5695588e-40;4.814603e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("2.718519e-43;1.3912552e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("2.718519e-43;1.3912525e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("1.6815582e-44;1.1202057e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("625透视已开启")
end
function p8()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("4.7408155e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("200", gg.TYPE_FLOAT)
gg.toast("30%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("2.25000190735;3.75055122375;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("30%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("3.25000596046;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("200", gg.TYPE_FLOAT)
gg.toast("835透视开启成功")

end
function p9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-1.4693707e-39F;1;2;3.2737415e-40F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物蓝色开启成功")

end
function p10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("15", gg.TYPE_FLOAT)
gg.toast("人物白色开启成功")
end
function p11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8;16;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(54)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("15;28;200;26;200;200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("15;26;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(54)
gg.editAll("-200", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20.51941871643;2.04908943176;0.4616317749;16.0;26.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("98", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("20.51941871643;2.04908943176;0.4616317749;98;26.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("1600", gg.TYPE_FLOAT)
gg.toast("全屏自瞄开启成功")
end
function p12()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("魔术子弹开启成功")
gg.clearResults()
gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140", gg.TYPE_FLOAT)
gg.toast("大范围开启成功")
end
function p13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("444", gg.TYPE_FLOAT)
gg.toast("掉血特效开启成功")
end
function p14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("176293393;0.65F~0.9F;8F;9.5F;15F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
  gg.toast("全枪无后开启失败")
else
  gg.searchNumber("176293393", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("176293394", gg.TYPE_DWORD)
  gg.toast("全枪无后开启成功")
  end
  end
function p15()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("超级防抖已开启，如果没有效果再开一次。")
end

function p16()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,092,081,726;1,003,658,240;923,795,456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,092,081,726", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,135,081,726", gg.TYPE_DWORD)
gg.toast("下蹲路飞开启成功")
end
function p17()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(7)
gg.editAll("1.96875", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1.96875F;1.96875F;-100.91194152832;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("超级天线开启成功")
end
function p18()

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
gg.toast("全身范围开启成功")
end
function p19()

gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.1689529418945", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.4779739379883;2.8345839977264;3.1967880725861;3.8841888904572;3.1528658866882::208", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.4779739379883", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("003,005,0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.73620933294296", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.toast("三级套餐定位开启成功！")
end
function p20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.647058857", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.647058857", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-9999", gg.TYPE_FLOAT)
gg.toast("吉普加速开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("99998", gg.TYPE_FLOAT)
gg.toast("吉晋下水开启成功")
gg.clearResults()
gg.searchNumber("1;5;4;0.001 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.001", gg.TYPE_FLOAT)
gg.toast("锁油开启成功")
end

function p21()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.2520827e-32;1;0.51999998093;0.89999997616;0.64999997616;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("1.2520827e-32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("5.56步枪无后开启成功")
end

function p22()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.99626296759", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(400)
  gg.editAll("866", gg.TYPE_FLOAT)
  gg.toast("新版天线开启成功")
end

function p23()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.2520827e-32;1D;1;0.64999997616;1;0.64999997616::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1.2520827e-32",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1.2520827e-42",gg.TYPE_FLOAT)
gg.toast("7.62系列枪无后座")
end

function p24()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3856;201851904;16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("201,851,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("全图除草开启成功")
end



function p25()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('2;-1;1;10000;-127::32', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('稳定除草成功')
end

function p26()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38613319397F;0.53447723389F;3.42665576935F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.38613319397", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("人物天线开启成功")
end


function p27()
gg.setRanges(gg.REGION_CODE_APP)
  gg.clearResults()
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("2000",gg.TYPE_FLOAT)

gg.toast(os.date("xa自瞄开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end


function p28()
Main()
end

function s()
cs =  ""
menu1 = gg.choice({
  "防封",
  "防封.1",
  "防封.2",
  "防封.3",
  "防封x",
"返回首页",
})
if menu1 == 1 then s1() end
if menu1 == 2 then s2() end
if menu1 == 3 then s3() end
if menu1 == 4 then s4() end
if menu1 == 5 then s5() end
if menu1 == 6 then s6() end
menu1=-1 
end


function s1()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("257;2131;0F~99999F;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0F~99999F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("防封第一步开启成功")
  gg.toast(os.date("现在时间为:\n%Y年%m月%d日%H时%M分%S秒"))

end



function s2()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
  gg.searchNumber("909391408", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
  gg.toast("防封第二步开启成功")
  
end

function s3()

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("1.4349296e-41;1.4012985e-45;5.6051939e-45;2.986167e-42::",gg.TYPE_FLOAT)
  gg.searchNumber("2.986167e-42",gg.TYPE_FLOAT)
  gg.getResults(999)
  gg.toast("防封搜索完之后手动修改冻结0，然后开启第三步")
  gg.setVisible(true)
  os.exit()
end
function s4()
  gg.toast("开启第三步防封")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
  gg.clearResults()
  gg.toast("正在开启")
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  
  gg.clearResults()
  gg.toast("第三步防封开启成功！")

end

function s5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10,240;2,131",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() >= 1 then
  gg.searchNumber("2,131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      t = gg.getResults(1)
t[1].value = '-131452'
t[1].freeze = true
print('addListItems: ', gg.addListItems(t))
 gg.toast("超级防封开启成功 一次即可无需多开")
else
 gg.toast("未知错误，无法开启")
end
end

function s6()
Main()
end

function Exit()
print("小杰nb\n作者小杰")
gg.skipRestoreState()
  os.exit()
  gg.setVisible(true)
end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if PUBGMH == 1 then
    HOME()
 end
 end
