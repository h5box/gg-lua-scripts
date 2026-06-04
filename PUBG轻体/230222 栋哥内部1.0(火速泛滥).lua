function WHNB(Range,Type,Search,Write) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("🔍搜索到"..#data.."数据🔰开始进行偏移") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("🚬"..Name.."成功🛠共修改"..#t.."数据") else gg.toast("by️️"..Name.."蓝恶魔️") return false end else gg.toast("by.晚鹤️"..Name.."成功️") return false end end

state={} state.a="[开启]" state.b="[开启]" state.c="[开启]" state.d="[开启]" state.e="[开启]"  local SXG_1 = gg.alert local SXG_2 = gg.toast local SXG_3 = gg.searchNumber local SXG_4 = gg.editAll local SXG_5 = gg.setRanges local SXG_6 = gg.getResults local SXG_7 = gg.clearResults local SXG_8 = gg.searchAddress local SXG_9 = gg.getResultCount local SXG_10 = gg.REGION_BAD local SXG_11 = gg.REGION_ANONYMOUS local SXG_12 = gg.REGION_AXEYMEM local SXG_13 = gg.REGION_C_ALLOC local SXG_14 = gg.REGION_C_BSS local SXG_15 = gg.REGION_C_code local WKX_16 = gg.REGION_C_HEAP local WKX_17 = gg.REGION_CODE_APP local WKX_18 = gg.REGION_CODE_SYS local WKX_19 = gg.REGION_JAVA local WKX_20 = gg.REGION_JAVA_HEAP local WKX_21 = gg.REGION_OTHER local WKX_22 = gg.REGION_PPSSPP local WKX_23 = gg.REGION_STACK local WKX_24 = gg.TYPE_FLOAT local WKX_25 = gg.SIGN_EQUAL local WKX_26 = gg.TYPE_DWORD local WKX_27 = gg.TYPE_BYTE local WKX_28 = gg.TYPE_WORD local WKX_29 = gg.REGION_VIDEO local WKX_30 = gg.multiChoice local WKX_31 = print
local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then SXG_7() SXG_5(memory) SXG_3(array[1].lv .. "~" .. array[1].hv, datatype[1]) else SXG_7() SXG_5(memory) SXG_3(array[1].lv, datatype[1]) end if SXG_9() == 0 then return false else local tab = {} local data = SXG_6(SXG_9()) SXG_7() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else WKX_31("type参数错误") SXG_2("type参数错误") os.exit() end else WKX_31("memory or array参数错误") SXG_2("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) SXG_7() gg.setVisible(false) SXG_3(Search[1][1],Type) local count=SXG_9() local result=SXG_6(count) SXG_7() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then SXG_2(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) SXG_2(Name.."开启成功,共修改"..#t.."条数据") else SXG_2(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else SXG_2(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) SXG_7() gg.setVisible(false) SXG_3(Search[1][1], Type) local count = SXG_9() local result = SXG_6(count) SXG_7() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then SXG_2("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else SXG_2("Not Found", false) return false end else SXG_2("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) SXG_7() SXG_5(qmnb[1]["memory"]) SXG_3(qmnb[3]["value"], qmnb[3]["type"]) if SXG_9() == 0 then SXG_2(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if SXG_9() == 0 then SXG_2(qmnb[2]["name"] .. "开启失败") else sl = SXG_6(999999) sz = SXG_9() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then SXG_2(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else SXG_2(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end SXG_5(16420) local results = gg.getFile() local results = SXG_6(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) SXG_7() gg.setVisible(false) SXG_3(Search[1][1],Type) local count=SXG_9() local result=SXG_6(count) SXG_7() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function WHGG(Search, Write,Neicun,Mingcg,Shuzhiliang) SXG_7() SXG_5(Neicun) gg.setVisible(false) SXG_3(Search[1][1], Search[1][3]) local count = SXG_9() local result = SXG_6(count) SXG_7() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then SXG_2(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) SXG_2(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else SXG_2(Mingcg.."开启失败", false) return false end else SXG_2("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) SXG_7() SXG_5(nc) flags=xl SXG_3(sssz,xl, false, 56870912, 0, -1) ssjgsl=SXG_9() if ssjgsl>0 then SXG_2("共到"..ssjgsl.."条数值") SXG_3(gssz,xl, false, 56870912, 0, -1) ssjgs=SXG_9() if ssjgs>0 then else SXG_2("开启失败 原因:改善结果无数值") end SXG_6(ssjgs) SXG_4(xgsz, xl) SXG_2("开启成功 已修改"..ssjgs.."条数值") else SXG_2("开启失败 原因:结果无数值") end end  


state={} state.a="[开启]" state.b="[开启]" state.c="[开启]" state.d="[开启]" state.e="[开启]" 
local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function WHGG(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast("共到"..ssjgsl.."条数值") gg.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast("开启失败 原因:改善结果无数值") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("开启成功 已修改"..ssjgs.."条数值") else gg.toast("开启失败 原因:结果无数值") end end function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end function jz(sxg,zs,zsnb) flags=zs value=zsnb so=gg.getRangesList(''..name..'')[1].start js(so+sxg,zs,zsnb) end local ZS_1 = gg.alert local ZS_2 = gg.toast local ZS_3 = gg.searchNumber local ZS_4 = gg.editAll local ZS_5 = gg.setRanges local ZS_6 = gg.getResults local ZS_7 = gg.clearResults local ZS_8 = gg.searchAddress local ZS_9 = gg.getResultCount local ZS_10 = gg.REGION_BAD local ZS_11 = gg.REGION_ANONYMOUS local ZS_12 = gg.REGION_AZSMEM local ZS_13 = gg.REGION_C_ALLOC local ZS_14 = gg.REGION_C_BSS local ZS_15 = gg.REGION_C_code local ZS_16 = gg.REGION_C_HEAP local ZS_17 = gg.REGION_CODE_APP local ZS_18 = gg.REGION_CODE_SYS local ZS_19 = gg.REGION_JAVA local ZS_20 = gg.REGION_JAVA_HEAP local ZS_21 = gg.REGION_OTHER local ZS_22 = gg.REGION_PPSSPP local ZS_23 = gg.REGION_STACK local ZS_24 = gg.TYPE_FLOAT local ZS_25 = gg.SIGN_EQUAL local ZS_26 = gg.TYPE_DWORD local ZS_27 = gg.TYPE_BYTE local ZS_28 = gg.TYPE_WORD local ZS_29 = gg.REGION_VIDEO local ZS_30 = gg.multiChoice local ZS_31 = print PT = (os.date("%Y年%m月%d日%H时%M分%S秒")) 
  
 
function Lc(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then  local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n✔"..Name.."\n✔修改"..#t.."数据") else gg.toast("\n✘"..Name.."\n✘搜索不到") return false end else gg.toast("\n✘"..Name.."\n✘搜索不到") return false end end
local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type一钟是你爹") gg.toast("type一钟是你爹") os.exit() end else print("memory or array一钟是你爹") gg.toast("memory or array一钟是你爹") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."一钟是你爹"..#data.."一钟是你爹") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."一钟是你爹"..#t.."一钟是你爹") else gg.toast(Name.."一钟是你爹or一钟是你爹\n一钟是你爹") return false end else gg.toast(Name.."GIVELOVETOYOU") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("η"..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "GIVELOVETOYOU") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "RAVI") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg..""..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."", false) return false end else gg.toast("") return false end end function PS() end function setvalue(address,flags,value) PS('(,,)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast(""..ssjgsl.."") gg.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast(":") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("🛡˳⚆ɞ⚆˳开启成功🛡\n🔰已修改"..ssjgs.."条数值🔰") else gg.toast("💠开启成功💠\n代码嫖娼") end end function js(address,flags,value) local FaTor={} FaTor[1]={} FaTor[1].address=address FaTor[1].flags=flags FaTor[1].value=value gg.setValues(FaTor) end function FaTor(sxg,zs,zsnb) flags=zs value=zsnb so=gg.getRangesList(''..name..'')[1].start js(so+sxg,zs,zsnb) end
function JoSeph(t) local py = gg.getRangesList(t["MIAONEIYUANCHUNG"])[1].start + t["ShenZiHeovo"] gg.setValues({ { address = py, flags = t["GIVELOVETOYOU"], value = t["MYBABY"] }})end 
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Fxs(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "🏟🏟🏟\n开启成功\n🗾修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("MYBABY",false) return false end else gg.toast("MYBABY") return false end end
function collective(memory,Type,Search,Write) gg.clearResults() gg.setRanges(memory) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n找到"..#data.."数据\n 开启成功") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n"..Name.."开启成功"..#t.."data") else gg.toast("\n"..Name.."\n开启成功") return false end else gg.toast("\n"..Name.."\n开启成功") return false end end
function TTTT_UE(code)res=""for i in ipairs(code)do res=res..string.char(code[i])end return res end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(TTTT_UE({240,159,149,185,58,228,191,174,230,148,185})..#data..TTTT_UE({230,157,161,230,149,176,230,141,174,46,229,188,128,229,144,175,230,136,144,229,138,159})) local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast(TTTT_UE({240,159,149,185,58,230,144,156,231,180,162,48,230,157,161,230,149,176,230,141,174,46,228,191,174,230,148,185,229,164,177,232,180,165}), false) return false end else gg.toast(TTTT_UE({240,159,149,185,58,230,144,156,231,180,162,48,230,157,161,230,149,176,230,141,174,46,228,191,174,230,148,185,229,164,177,232,180,165})) return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n🇲🇧")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "🇲🇧") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功,\n🛠️共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "🇲🇧") end end end end
function XiaoMoBai(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n️检测到"..#data.."🇲🇧") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n💖"..Name.."修改"..#t.."数据") else gg.toast("\n🎄"..Name.."\n🎄") return false end else gg.toast("\n🎄"..Name.."\n🎄") return false end end
function MoBai(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启成功", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  
function MoBai(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(""..Name..tg) tg_,th_=nil,nil else gg.toast("数据",false) return false end else gg.toast("数据") return false end end
function Fxs(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n📥修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("❌搜索不到",false) return false end else gg.toast("🚬未搜索到数据") return false end end
--配置
function TTTT_UE(code)res=""for i in ipairs(code)do res=res..string.char(code[i])end return res end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(TTTT_UE({240,159,149,185,58,228,191,174,230,148,185})..#data..TTTT_UE({230,157,161,230,149,176,230,141,174,46,229,188,128,229,144,175,230,136,144,229,138,159})) local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast(TTTT_UE({240,159,149,185,58,230,144,156,231,180,162,48,230,157,161,230,149,176,230,141,174,46,228,191,174,230,148,185,229,164,177,232,180,165}), false) return false end else gg.toast(TTTT_UE({240,159,149,185,58,230,144,156,231,180,162,48,230,157,161,230,149,176,230,141,174,46,228,191,174,230,148,185,229,164,177,232,180,165})) return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n🐮")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "🐮🐮") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功,\n🛠️共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "🐮🐮") end end end end
function HuLi(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n️检测到"..#data.."龙哥是你爹") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("🌹"..Name.."By 龙哥:修改"..#t.."数据") else gg.toast("\n🐮"..Name.."\n🐮") return false end else gg.toast("\n🐮"..Name.."\n🐮") return false end end

--[[配置]]function QiuFeng(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."By 龙哥:修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启成功", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  

--[[配置]]function QiuFeng(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "By 龙哥:修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(""..Name..tg) tg_,th_=nil,nil else gg.toast("By 龙哥:修改999数据",false) return false end else gg.toast("By 龙哥:修改999数据") return false end end
--[[配置]]function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) 
so=gg.getRangesList('libUE4.so')[1].start
end

  function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function TUSHU()
end
function setvalue(address,flags,value) TUSHU('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function HaoGe(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n TUSHU") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n🚬"..Name.."成功\n🛠共修改"..#t.."数据") else gg.toast("\n❌"..Name.."失败") return false end else gg.toast("\n❌"..Name.."失败") return false end end
  
  
 










gg.alert("栋哥制作")

function Main()
menu = gg.choice({
'基本功能',
'人物加速',
'定点飞天',
'自定义功能',
'路飞功能',
'退出脚本'},
2023,'栋哥轻体内部脚本泛滥死m   当时间:%Y年%m月%d日%H时%M分')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'午后',
'圈圈自瞄(基址)',
'喵落地',
'白色圈圈',
'沙漠地图',
'm16伤害',
'全图除草',
'命中特效',
'超大范围',
'开枪加速',
'新版防闪',
'开火自瞄',
'音量增强',
'返回上一页'},
nil,'栋哥牛逼')
if menu1 == nil then else
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
if menu1[13] == true then a12() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end















function a1()
Name = "全枪无后"
local Nc = 16392
local Lx = 16
local Sz1 = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8}}
local Sz2 = {{0, -8}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "倍镜防抖"
local Nc = 16392
local Lx = 4
local Sz1 = {{-308340221, 0},{514853441, 8},{-300938736, 12}}
local Sz2 = {{0, 12}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "准心聚点"
local Nc = 16392
local Lx = 4
local Sz1 = {{-308311547, 0},{-300938736, 16}}
local Sz2 = {{1120403456, 16}}
Lc(Nc, Lx, Sz1, Sz2)
end




function a2()
Name = "百米锁身"
local Nc = 16392
local Lx = 4
local Sz1 = {{1320176194, 0},{953267991, -84},{1135869952, -96}}
local Sz2 = {{1259902591, -84}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "持枪自瞄"
local Nc = 16392
local Lx = 4
local Sz1 = {{-352321640, 0},{-309327309, 4},{-476053504, 8}}
local Sz2 = {{-476053503, 8}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "开火自瞄"
local Nc = 16392
local Lx = 4
local Sz1 = {{-285787648, 0},{-286131696, 8},{-290108736, 12}}
local Sz2 = {{0, 8}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "开镜自瞄"
local Nc = 16392
local Lx = 4
local Sz1 = {{-301258224, 0},{167772309, -8}}
local Sz2 = {{0, 0}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "磁性自瞄"
local Nc = 16392
local Lx = 16
local Sz1 = {{64.50088500977, 0}}
local Sz2 = {{0, 0}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "自瞄范围"
local Nc = 16392
local Lx = 4
local Sz1 = {{-309478912, 0},{-289924415, -4}}
local Sz2 = {{0, 0},{0, -4}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "头部自瞄"
local Nc = 16392
local Lx = 4
local Sz1 = {{1324382787, 0},{-305325242, -4}}
local Sz2 = {{0, 0}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "增强自瞄"
local Nc = 16392
local Lx = 16
local Sz1 = {{2015175168.0, 0}}
local Sz2 = {{0, 0}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "趴下照锁"
local Nc = 16392
local Lx = 16
local Sz1 = {{2.06214214e-19, 0}}
local Sz2 = {{0, 0}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "持枪圈圈"
local Nc = 16392
local Lx = 4
local Sz1 = {{-308925904, 0},{-308471291, 4},{2046820354, 44}}
local Sz2 = {{2046820353, 44}}
Lc(Nc, Lx, Sz1, Sz2)
Name = "圈圈自瞄"
local Nc = 16392
local Lx = 16
local Sz1 = {{5.533321713993693E-21, 0},{2.6253290925755273E-27, 52}}
local Sz2 = {{0, 52}}
Lc(Nc, Lx, Sz1, Sz2)
end


function a3()
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
          setvalues[1].value=-200000
          setvalues[2]={}
          setvalues[2].address=results[i].address-4
          setvalues[2].flags=16
          setvalues[2].value=-200000
          setvalues[3]={}
          setvalues[3].address=results[i].address-8
          setvalues[3].flags=16
          setvalues[3].value=-200000
          setvalues[4]={}
          setvalues[4].address=results[i].address-12
          setvalues[4].flags=16
          setvalues[4].value=-200000
          gg.setValues(setvalues)
          gg.toast("💨秒落地\n🚬修改了8条数据")
        end
      end
    end
  end
end



function a4()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-9.90656152e27;-443,481,612;-481,296,384:9',gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-9.90656152e27',gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('-9.9066194e27',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-5.0483061E26',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('-5.0483061E26',gg.TYPE_FLOAT)
gg.toast("白色圈圈\n🚬修改了8条数据")
end



function a5()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-1,297,025,624,956,731,056;-1,245,234,022,980,777,456::',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-1,245,234,022,980,777,456',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('-1,245,234,026,973,757,440',gg.TYPE_QWORD)
gg.toast("沙漠地图")
end


function a6()

gg.clearResults() gg.setRanges(16384) gg.searchNumber("-1.427811e28", 16, false, 536870912, 0, -1) gg.getResults(100) gg.editAll("0", 16)
qmnb = {{["memory"] = 32},{["name"] = "ʜᴇᴀᴅsʜᴏᴛ"},{["value"] = 4740038608910024704, ["type"] = 32}, {["lv"] = 4752423507886342144, ["offset"] = 4, ["type"] = 32}, {["lv"] = 1106509824, ["offset"] = 8, ["type"] = 32}, }qmxg = {{["value"] = 150, ["offset"] = 0, ["type"] = 16}, {["value"] = 150, ["offset"] = 4, ["type"] = 16}, {["value"] = 150, ["offset"] = 8, ["type"] = 16}, } xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = 1119156320, ["type"] = 4},{["lv"] = 1105199104, ["offset"] = 12, ["type"] = 4},}qmxg = {{["value"] = 180, ["offset"] = 12, ["type"] = 16},}xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = 1091779028, ["type"] = 4},{["lv"] = 1103626240, ["offset"] = 28, ["type"] = 4},{["lv"] = 1106509824, ["offset"] = 32, ["type"] = 4},}qmxg = {{["value"] = 180, ["offset"] = 28, ["type"] = 16},{["value"] = 180, ["offset"] = 32, ["type"] = 16},}xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},}qmxg = {{["value"] = 260, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},{["value"] = 260, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},}xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = 9.20161819458, ["type"] = gg.TYPE_FLOAT},{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},{["lv"] = 0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},}qmxg = {{["value"] = 220, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT,},{["value"] = 220, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT,},{["value"] = 220, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},{["value"] = 220, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},}xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = -88.66608428955, ["type"] = gg.TYPE_FLOAT},{["lv"] = 16, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},{["lv"] = 26, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},}qmxg = {{["value"] = -530, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},}xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = 27.13222122192, ["type"] = 16},{["lv"] = 15, ["offset"] = 4, ["type"] = 16},{["lv"] = 5, ["offset"] = -4, ["type"] = 16},{["lv"] = 39, ["offset"] = 20, ["type"] = 16},{["lv"] = 27, ["offset"] = 116, ["type"] = 16},{["lv"] = 38, ["offset"] = 132, ["type"] = 16},}qmxg = {{["value"] = -640, ["offset"] = 4, ["type"] = 4},{["value"] = -640, ["offset"] = 116, ["type"] = 4},}xqmnb(qmnb)
qmnb = {{["memory"] = 32},{["name"] = "牛逼傷害"},{["value"] = 3266401545, ["type"] = 4},{["lv"] = 1104150528, ["offset"] = 8, ["type"] = 4},{["lv"] = 1104150528, ["offset"] = 392, ["type"] = 4},}qmxg = {{["value"] = 280, ["offset"] = 8, ["type"] = 16},{["value"] = 280, ["offset"] = 392, ["type"] = 16},}xqmnb(qmnb)
gg.clearResults() gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(56) gg.editAll("-1339", gg.TYPE_FLOAT) gg.clearResults()
end



function a7()
Name = "除你🐎逼"
local Nc = 32
local Lx = 4
local Sz1 = {{7632240, 0},{1633907556, -76}}
local Sz2 = {{1936942449, 0}}
HuLi(Nc, Lx, Sz1, Sz2)
end



function a8()
Name = "命中特效"
local Nc = 32
local Lx = 16
local Sz1 = {{10.0, 0},{46.0, 4}}
local Sz2 = {{99999, 0}}
HaoGe(Nc, Lx, Sz1, Sz2)
end




function a9()
Fxs({{false,0.9986295104,0,16,nil,nil}},{{99,0,16,false}},16,16384,"🕹️xa微范围🕹️")
Fxs({{false,23.0,0,16,nil,nil},{25.0,4,16},{30.5,8,16}},{{260,4,16,false},{260,8,16,false}},16,32,"🎮站立范围🕹️")
Fxs({{false,26.0,0,16,nil,nil},{16.0,-4,16}},{{-200,0,16,false},{-200,-4,16,false}},16,32,"🕹️子弹修伤🕹️")
end



function a10()
SXG_7()
SXG_5(PPX)
local dataType = 16
local tb1 = {{1.6615354e35, 0}, {-2.7395928e28, -12}, {-1.1376615e28, 4},  {-5.8190623e26, 8},}
local tb2 = {{0, -12}, }
SearchWrite(tb1, tb2, dataType)
end 



function a11()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("842084353", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("842084353", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("♨️开启成功♨️")
	 gg.clearResults()
end


function a12()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("333", gg.TYPE_FLOAT)
  gg.toast("开火自瞄")
gg.toast("开启成功")
gg.toast("开启成功")
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.05", 16,false,gg.SIGN_EQUAL,0, -1)
function a13()
gg.getResults(1000)
gg.editAll("-0.002",16)
gg.toast("音效增强成功")
end
function B()
menu1 = gg.multiChoice({
'空速3.0【开】',
'空速3.0【关】',
'空城浮空',
'加速专用范围',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
nil,'栋哥牛逼')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end

function b1()
function AnmolDk(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n found"..#data.."data\n Start offset") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n"..Name.."KILLERDK\n KILLERDK"..#t.."data") else gg.toast("\n"..Name.."KILLERDK") return false end else gg.toast("\n"..Name.."KILLERDK") return false end end
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804431360, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408577467023, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 32
local Lx = 32
local Sz1 = {{4525216907414147695, 0}}
local Sz2 = {{4525216907475015434, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408576460390, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
gg.toast("x3 ")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;0::16", 16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
gg.editAll("5.6",16)
gg.clearResults()
gg.toast("slowmostion ")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,895,342,427,272,904,704", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4,895,342,427,383,806,976", gg.TYPE_QWORD)
gg.clearResults()
Name = "特效❤️"
local Nc = 32
local Lx = 16
local Sz1 = {{10.0, 0},{46.0, 4}}
local Sz2 = {{99999, 0}}
HaoGe(Nc, Lx, Sz1, Sz2)
gg.toast("牛逼玩意")
end



function b2()
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744153870237696, 0}}
local Sz2 = {{-1296744149883614555, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313804169216, 0}}
local Sz2 = {{-1505254313802431360, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408581493555, 0}}
local Sz2 = {{-1328550408728725571, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744153870237696, 0}}
local Sz2 = {{-1296744149883614555, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313804431360, 0}}
local Sz2 = {{-1505254313802431360, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408577467023, 0}}
local Sz2 = {{-1328550408728725571, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744153870237696, 0}}
local Sz2 = {{-1296744149883614555, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "空速3.0"
local Nc = 32
local Lx = 32
local Sz1 = {{4525216907475015434, 0}}
local Sz2 = {{4525216907414147695, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
Name = "666"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408576460390, 0}}
local Sz2 = {{-1328550408728725571, 0}}
AnmolDk(Nc, Lx, Sz1, Sz2)
gg.toast("666")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,895,342,427,383,806,976", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4,895,342,427,272,904,704", gg.TYPE_QWORD)
gg.clearResults()
end


function b3()
Name = "浮空"
local Nc = 32
local Lx = 16
local Sz1 = {{1400.0, 0},{88.0, 20},{60.0, 24},{50.0, 28},{2.0, 32}}
local Sz2 = {{-48, 24}}
HaoGe(Nc, Lx, Sz1, Sz2)
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("-0.5", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25.0;30.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
end




function b5()

gg.toast("开启成功")
end



function b6()

gg.toast("开启成功")
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



function b11()

gg.toast("开启成功")
end



function b12()

gg.toast("开启成功")
end

function C()
menu = gg.multiChoice({
'开启飞天加速',
'定点开启',
'天上提速开启',
'牛马视角',
'关闭飞天加速',
'返回上一页'},
nil,"by.栋哥  ️开启飞天加速前，先把帧率调到低")
if menu == nil then else
if menu[1] == true then c1() end
if menu[2] == true then c2() end
if menu[3] == true then c3() end
if menu[4] == true then c4() end
if menu[5] == true then c5() end
if menu[6] == true then HOME() end
end
GLWW=-1
end

function c1()
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
WHNB(Nc, Lx, Sz1, Sz2)Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
WHNB(Nc, Lx, Sz1, Sz2)
Name = "by.栋哥"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
  Name = "by.栋哥"
  local Nc = 16392
  local Lx = 32
  local Sz1 = {{-1296744149883614555, 0}}
  local Sz2 = {{-1296744153870237696, 0}}
  WHNB(Nc, Lx, Sz1, Sz2)
  Name = "by.栋哥"
  local Nc = 16392
  local Lx = 32
  local Sz1 = {{-1505254313802431360, 0}}
  local Sz2 = {{-1505254313804431360, 0}}
  WHNB(Nc, Lx, Sz1, Sz2)
  Name = "by.栋哥"
  local Nc = 16392
  local Lx = 32
  local Sz1 = {{-1328550408728725571, 0}}
  local Sz2 = {{-1328550408577467023, 0}}
  WHNB(Nc, Lx, Sz1, Sz2)
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
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("4,525,216,907,473,673,257", gg.TYPE_QWORD) 
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-1,328,550,408,728,725,571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1,328,550,408,576,460,390", gg.TYPE_QWORD) 
gg.clearResults() 
gg.searchNumber("-1505254313802431360", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1505254313804899999", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384) 
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1296744149264269342", gg.TYPE_QWORD)
gg.toast("加速开启")
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  gg.getResults(1401)  gg.editAll("4,525,216,907,473,673,257", gg.TYPE_QWORD)  gg.clearResults()  gg.setRanges(16384) 
gg.searchNumber("-1,328,550,408,728,725,571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(1401) gg.editAll("-1,328,550,408,576,460,390", gg.TYPE_QWORD)  gg.clearResults() gg.setRanges(16384) 
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  gg.getResults(1401)  gg.editAll("-1296744149264269342", gg.TYPE_QWORD) gg.clearResults() gg.toast("加速开启")

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;0::16", 16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
gg.editAll("5.6",16)
gg.clearResults()
gg.toast("减速💞")

   gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber('-1228926273201366461', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(699)
  gg.editAll('-1228926273126264269', gg.TYPE_QWORD)
  gg.toast('防掉帧开启成功')
end





function c2()
qmnb = {{["memory"] = 32},
{["name"] = "定点成功晚鹤提示:快点起飞😏"},
{["value"] = 1138589696, ["type"] = 32},
{["lv"] = 4890205508990664704, ["offset"] = -4, ["type"] = 32}, 
{["lv"] = 4759178907289124864, ["offset"] = -8, ["type"] = 32}, 
}qmxg = {{["value"] = 0, ["offset"] = -8, ["type"] = 16},}xqmnb(qmnb)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('6.1630904e-33;-6.1526231e27;-9.9839328e27;-2.8246552e28:13', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('6.1630904e-33;-6.1526231e27', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0',16)
gg.toast('防开枪坠落开启成功')
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-3.8369228e21;1.140804e-33;-4.4272672e22::9', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.8369228e21;1.140804e-33;-4.4272672e22', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('0',16)
gg.toast('防掉帧坠落开启成功')
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,287,719,427,143,988,736", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1110)
gg.editAll("-1,296,744,153,870,237,696", 32)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,149,883,614,555",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(190)
gg.editAll("-1,296,744,153,870,237,696",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-6.15264497e27", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(50)
gg.editAll("0",16)
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-6.15262313e27", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(50) 
gg.editAll("0", 16) 
gg.toast("祝你早日成为一只大鸟")
end


function c3()
function WHDN(Range,Type,Search,Write) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("🔍搜索到"..#data.."数据🔰开始进行偏移") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("🚬"..Name.."成功🛠共修改"..#t.."数据") else gg.toast("❌"..Name.."失败") return false end else gg.toast("❌"..Name.."失败") return false end end
function WHDN(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "by.栋哥提示修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(""..Name..tg) tg_,th_=nil,nil else gg.toast("搜索不到",false) return false end else gg.toast("搜索不到") return false end end
WHDN({{false,-6.0595931e26,0,16,nil,nil}},{{0,20,16,false}},16,16384,"by.栋哥")
WHDN({{false,-309327247,0,4,nil,nil},{-308340220,4,4}},{{0.05,-4,16,false}},4,16384,"提速")
end

function c4()
	gg.setRanges(16384)
  gg.setVisible(false)
  gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("360.0;0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-1.4235595e-27;180", gg.TYPE_FLOAT)
gg.toast("牛马视角💝")
end

function c5()
function WHXXS(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n📥修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("❌搜索不到",false) return false end else gg.toast("❌搜索不到") return false end end
WHXXS({{false,268464131,0,4,nil,nil},{290914307,4,4}},{{-6.15262313e27,24,16,false}},4,16384,"关闭")
WHXXS({{false,-637534134,0,4,nil,nil},{-309061114,-12,4}},{{-5.10801854e27,-16,16,false}},4,16384,"关闭")
WHXXS({{false,-998965248,0,4,nil,nil},{1101004800,232,4}},{{0.0005,236,16,false}},4,32,"关闭")
WHXXS({{false,-309327247,0,4,nil,nil},{-308340220,4,4}},{{9.99999997e-7,-4,16,false}},4,16384,"防拉关闭")
WHXXS({{false,1198153728,0,4,nil,nil},{1,20,4},{1,24,4}},{{1.0,100,16,false}},4,32,"关闭")
WHXXS({{false,-1088801054,0,4,nil,nil}},{{10.90734863281,-8,16,false}},4,16384,"关闭")
WHXXS({{false,-1359975840,0,4,nil,nil}},{{-1228926276669014016,-12,32,false}},4,16384,"防开枪拉回关闭")
WHXXS({{false,1139785728,0,4,nil,nil},{1065353216,-12,4},{1065353216,-8,4},{1065353216,-4,4}},{{1.0,-12,16,false},{1.0,-8,16,false},{1.0,-4,16,false}},4,32,"关闭")
end
function D()
menu1 = gg.multiChoice({
'自选视角',
'自选帧数',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
nil,'栋哥牛逼')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end

function d1()
Lc1 = gg.prompt({"自选广角: 150 ~ 300"}
,{[1]=205},{[1]="number"})[1]
so=gg.getRangesList('libUE4.so')[1].start
py=0x26B1E20
setvalue(so+py,16,Lc1)
gg.toast("\n🕹️自选广角🕹️\n📥修改1数据📥")
end


function d2()
gg.alert("请先将帧率设置为低后开启，需要关闭请切换帧率即可")gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("1.73e-322E;268,435,456.0E;4.4e-322E:97", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("268,435,456.0", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1) 
gg.editAll("0", gg.TYPE_DOUBLE) 
gg.toast("帧率已经最高") 
function XZ(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\nBy空城修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("搜索不到",false) return false end else gg.toast("搜索不到") return false end end
ZDY=gg.prompt({'请输入帧数150'},{[1]='150'},{[1]='number'})
if ZDY == nil or ZDY[1] == '' or ZDY[1] == '0' then gg.toast("帧率取消")
else
XZ({{false,150994944,0,4,nil,nil},{58,-4,4},{58,-8,4},{89,40,4},{1084227584,68,4}},{{ZDY[1],16,16,true},{ZDY[1],20,16,true}},4,32,""..ZDY[1].."帧")
end end



function d3()

gg.toast("开启成功")
end



function d4()

gg.toast("开启成功")
end



function d5()

gg.toast("开启成功")
end



function d6()

gg.toast("开启成功")
end



function d7()

gg.toast("开启成功")
end



function d8()

gg.toast("开启成功")
end



function d9()

gg.toast("开启成功")
end



function d10()

gg.toast("开启成功")
end



function d11()

gg.toast("开启成功")
end



function d12()

gg.toast("开启成功")
end

function E()
menu1 = gg.multiChoice({
'站立路飞',
'虚体路飞',
'返回上一页'},
nil,'栋哥牛逼')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function e1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
 sfsss1 = gg.getResults(1401)
gg.editAll("4848124999984742400", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-4767057191653227520", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
sfsss2 = gg.getResults(1401)
gg.editAll("-4767057191527907328", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("\n🕹️站立路飞🕹️\n📥修改"..gg.getResultCount().."数据📥")
end
function e2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("110;120;10086;886.", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("\n🕹️虚体路飞🕹️\n📥修改"..gg.getResultCount().."数据📥")
  end

function Exit()
print("欢迎下次食用")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = 'kjjjjjjjjjjjjjj'
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










