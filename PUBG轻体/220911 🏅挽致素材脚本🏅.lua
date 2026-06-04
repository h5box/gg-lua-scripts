function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end--[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function SearchWrite(Search, Write, Type)  gg.clearResults()  gg.setVisible(false)  gg.searchNumber(Search[1][1], Type)  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then    for i, v in ipairs(result) do      v.isUseful = true     end        for k=2, #Search do      local tmp = {}      local offset = Search[k][2] - base       local num = Search[k][1]             for i, v in ipairs(result) do        tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + offset         tmp[#tmp].flags = v.flags       end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do        if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end      end    end     for i, v in ipairs(result) do      if (v.isUseful) then         data[#data+1] = v.address      end    end        if (#data > 0) then      gg.toast("搜索到"..#data.."条数据")      local t = {}      local base = Search[1][2]      for i=1, #data do        for k, w in ipairs(Write) do          offset = w[2] - base          t[#t+1] = {}          t[#t].address = data[i] + offset          t[#t].flags = Type          t[#t].value = w[1]                   if (w[3] == true) then            local item = {}            item[#item+1] = t[#t]            item[#item].freeze = true            gg.addListItems(item)          end                 end      end      gg.setValues(t)    else      gg.toast("not found", false)      return false    end  else    gg.toast("Not Found")    return false  end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {}  local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end  tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end  for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then  Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."")   gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end  local L0_0 L0_0 = 0 function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end  function split(szFullString, szSeparator)  local nFindStartIndex = 1  local nSplitIndex = 1  local nSplitArray = {}  while true do  local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex)  if not nFindLastIndex then  nSplitArray[nSplitIndex] =  string.sub(szFullString, nFindStartIndex, string.len (szFullString))  break end  nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1)  nFindStartIndex = nFindLastIndex + string.len (szSeparator)  nSplitIndex = nSplitIndex + 1 end return  nSplitArray end  function xgxc(szpy, qmxg)  for x = 1, #(qmxg) do  xgpy = szpy + qmxg[x]["offset"]  xglx = qmxg[x]["type"]  xgsz = qmxg[x]["value"]  xgdj = qmxg[x]["freeze"]  if xgdj == nil or xgdj == "" then  gg.setValues({[1]  = {address = xgpy, flags = xglx, value = xgsz}})  else  gg.addListItems({[1]  = {address = xgpy, flags = xglx,  freeze = xgdj, value = xgsz}}) end  xgsl = xgsl + 1 xgjg = true end end  function xqmnb(qmnb)  gg.clearResults()  gg.setRanges(qmnb[1]["memory"])  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "开启失败")  else  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "开启失败")  else      sl = gg.getResults(999999)  sz = gg.getResultCount()      xgsl = 0 if sz > 999999 then  sz = 999999 end for i = 1, sz do  pdsz = true for v = 4, #(qmnb) do if  pdsz == true then  pysz = {} pysz[1]  = {} pysz[1].address  = sl[i].address + qmnb[v]["offset"] pysz[1].flags  = qmnb[v]["type"]  szpy = gg.getValues(pysz)  pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd  = split(pdpd, ";") tzszpd  = szpd[1] pyszpd = szpd[2]  if tzszpd == pyszpd then  pdjg = true pdsz = true else  pdjg = false pdsz = false end end end if  pdjg == true then szpy  = sl[i].address xgxc(szpy, qmxg) end end  if xgjg == true then  gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")  else  gg.toast(qmnb[2]["name"] .. "开启失败")  end  end  end  end function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults()  gg.setVisible(false)  gg.searchNumber(Search[1][1], Type)  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then    for i, v in ipairs(result) do      v.isUseful = true     end        for k=2, #Search do      local tmp = {}      local offset = Search[k][2] - base       local num = Search[k][1]             for i, v in ipairs(result) do        tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + offset         tmp[#tmp].flags = v.flags       end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do        if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("✨开启成功✨"..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("", false) return false end else gg.toast("") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) elsegg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {}  local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end  tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end  for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."搜索到"..#data.."条数据") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then  Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."已修改"..#t.."条数据")   gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("搜索失败") return false end end  bz=0  sj = (os.date("%Y年%m月%d日%H时%M分%S秒"))   if gg.getTargetPackage()=="com.tencent.iglite" and "com.tencent.iglitece" and "com.tencent.tmgp.pubgmhd" then QW="8" else QW="16384" end if QW=="8" then FF="国服/轻体/轻量版" else FF="国际/台服/日韩服/越南服/国体服" end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条ΔΘ") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function HaoGe1(Range,Type,Search,Write) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("🔍搜索到"..#data.."数据🔰开始进行偏移") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("🚬"..Name.."成功🛠共修改"..#t.."数据") else gg.toast("❌"..Name.."失败") return false end else gg.toast("❌"..Name.."失败") return false end end
function HaoGe(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(""..Name..tg) tg_,th_=nil,nil else gg.toast("搜索不到",false) return false end else gg.toast("搜索不到") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function jiuyan(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."修改中,共修改1条数据")else gg.toast(qmnbn.."开启失败")end end end ms={} function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end function ms.ss(num,ty,nc,mb,qs,zd) gg.clearResults() gg.setRanges(nc) gg.searchNumber(num,ty,false,gg.SIGN_EQUAL,qs or 1,zd or -1) if mb~=nil and mb~=false and mb then gg.refineAddress(mb) end Result=gg.getResults(gg.getResultCount()) end function ms.py(num,py,ty) if(Result and #Result~=0)then t={} for i,v in ipairs(Result) do t[i]={} t[i].address=v.address+py t[i].flags=ty end t=gg.getValues(t) for i,v in ipairs(t) do if v.value~=num then Result[i]=nil end end local MS={} for i,v in pairs(Result) do MS[#MS+1]=v end Result=MS end end function ms.bc() data={} if Result==nil or #Result==0 then gg.toast("开启失败") else for i,v in pairs(Result) do data[#data+1]=v.address end gg.toast("共搜索了"..(#data).."条数据") gg.loadResults(Result) end Result=nil end function ms.edit(nn,off,ty,dj) if(Result)then ms.bc() end if #data>0 then for i,v in ipairs(data) do setvalue(v+off,nn,ty,dj or false) end end end
function maoge(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "  "..tg_.."  " or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast(" 开启失败 ",false) return false end else gg.toast(" 开启失败") return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function HaoGe(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n📥修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("❌搜索不到❌",false) return false end else gg.toast("❌搜索不到❌") return false end end--[[配置3]]function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end local time=os.clock() local PACKAGE=(gg.getTargetInfo(gg.getTargetPackage()).packageName); local PID=gg.getTargetInfo().activities[1].label if PACKAGE == "com.tencent.iglitece" then so=gg.getRangesList('libUE4.so')[1].start else  end--[[配置4]]QCFZLB = gg.searchNumber QCFZNB = gg.editAll QCFZNP = gg.clearResults TYJQ = "2.0;2,048.0;300.0;0.05000000075"TYJS = "0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88"XGJQ = "80"XGJS = "2"QCFZNP()--[[配置5]]local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast("共到"..ssjgsl.."条数值") gg.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast("开启失败 原因:改善结果无数值") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("开启成功 已修改"..ssjgs.."条数值") else gg.toast("开启失败 原因:结果无数值") end end function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end function jz(sxg,zs,zsnb) flags=zs value=zsnb so=gg.getRangesList(''..name..'')[1].start js(so+sxg,zs,zsnb) end local ZS_1 = gg.alert local ZS_2 = gg.toast local ZS_3 = gg.searchNumber local ZS_4 = gg.editAll local ZS_5 = gg.setRanges local ZS_6 = gg.getResults local ZS_7 = gg.clearResults local ZS_8 = gg.searchAddress local ZS_9 = gg.getResultCount local ZS_10 = gg.REGION_BAD local ZS_11 = gg.REGION_ANONYMOUS local ZS_12 = gg.REGION_AZSMEM local ZS_13 = gg.REGION_C_ALLOC local ZS_14 = gg.REGION_C_BSS local ZS_15 = gg.REGION_C_code local ZS_16 = gg.REGION_C_HEAP local ZS_17 = gg.REGION_CODE_APP local ZS_18 = gg.REGION_CODE_SYS local ZS_19 = gg.REGION_JAVA local ZS_20 = gg.REGION_JAVA_HEAP local ZS_21 = gg.REGION_OTHER local ZS_22 = gg.REGION_PPSSPP local ZS_23 = gg.REGION_STACK local ZS_24 = gg.TYPE_FLOAT local ZS_25 = gg.SIGN_EQUAL local ZS_26 = gg.TYPE_DWORD local ZS_27 = gg.TYPE_BYTE local ZS_28 = gg.TYPE_WORD local ZS_29 = gg.REGION_VIDEO local ZS_30 = gg.multiChoice local ZS_31 = print function baseAdd(t) local py = gg.getRangesList(t["星辰"])[1].start + t["星辰"] gg.setValues({ { address = py, flags = t["星辰"], value = t["星辰"] }})end PT = (os.date("%Y年%m月%d日%H时%M分%S秒"))  --[[赋值]]soplan=gg --[[配置6]]function HaoGe(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n🔍搜索到"..#data.."数据\n🔗开始进行偏移") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n🚬"..Name.."成功\n🛠共修改"..#t.."数据") else gg.toast("\n❌"..Name.."失败") return false end else gg.toast("\n❌"..Name.."失败") return false end end--[[配置7]]function STARS(UU,Type,Search,Write) gg.clearResults() gg.setRanges(UU) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n🔍搜索到"..#data.."数据\n🔗开始进行偏移") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n"..Name.."成功\n☯共修改"..#t.."数据️") else gg.toast("\n❌"..Name.."开启失败❌") return false end else gg.toast("\n❌"..Name.."失败") return false end end--[[配置8]]local time=os.clock()--[[配置9]]function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("⚠️:搜索0条数据.修改失败") return false end end--[[配置10]]local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) soplan.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then soplan.clearResults() soplan.setRanges(memory) soplan.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else soplan.clearResults() soplan.setRanges(memory) soplan.searchNumber(array[1].lv, datatype[1]) end if soplan.getResultCount() == 0 then return false else local tab = {} local data = soplan.getResults(soplan.getResultCount()) soplan.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = soplan.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") soplan.toast("type参数错误") os.exit() end else print("memory or array参数错误") soplan.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, soplan.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze soplan.setValues(t) return soplan.addListItems(t) else return soplan.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) soplan.clearResults() soplan.setVisible(false) soplan.searchNumber(Search[1][1],Type) local count=soplan.getResultCount() local result=soplan.getResults(count) soplan.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=soplan.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then soplan.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true soplan.addListItems(item) end end end soplan.setValues(t) soplan.sleep(500) soplan.toast(Name.."开启成功,共修改"..#t.."条数据") else soplan.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else soplan.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) soplan.clearResults() soplan.setVisible(false) soplan.searchNumber(Search[1][1], Type) local count = soplan.getResultCount() local result = soplan.getResults(count) soplan.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = soplan.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then soplan.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true soplan.addListItems(item) end end end soplan.setValues(t) else soplan.toast("Not Found", false) return false end else soplan.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] soplan.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) soplan.clearResults() soplan.setRanges(qmnb[1]["memory"]) soplan.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if soplan.getResultCount() == 0 then soplan.toast(qmnb[2]["name"] .. "开启失败") else soplan.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) soplan.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) soplan.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if soplan.getResultCount() == 0 then soplan.toast(qmnb[2]["name"] .. "开启失败") else sl = soplan.getResults(999999) sz = soplan.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = soplan.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then soplan.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else soplan.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = soplan.getFile(5000)")() end end end soplan.setRanges(16420) local results = soplan.getFile() local results = soplan.getResults(5000) soplan.setValues(results) local results = soplan.getFile() function SearchWrite(Search,Write,Type) soplan.clearResults() soplan.setVisible(false) soplan.searchNumber(Search[1][1],Type) local count=soplan.getResultCount() local result=soplan.getResults(count) soplan.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=soplan.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true soplan.addListItems(item) end end end soplan.setValues(t) soplan.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) soplan.clearResults() soplan.setRanges(Neicun) soplan.setVisible(false) soplan.searchNumber(Search[1][1], Search[1][3]) local count = soplan.getResultCount() local result = soplan.getResults(count) soplan.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = soplan.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then soplan.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true soplan.addListItems(item) end end end soplan.setValues(t) soplan.toast(Mingcg.."开启成功"..#t.."") soplan.addListItems(t) else soplan.toast(Mingcg.."开启失败", false) return false end else soplan.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value soplan.setValues(tt) end function configure(xgsz,sssz,gssz,xl) soplan.clearResults() soplan.setRanges(nc) flags=xl soplan.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=soplan.getResultCount() if ssjgsl>0 then soplan.toast("共到"..ssjgsl.."条数值") soplan.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=soplan.getResultCount() if ssjgs>0 then else soplan.toast("开启失败 原因:改善结果无数值") end soplan.getResults(ssjgs) soplan.editAll(xgsz, xl) soplan.toast("开启成功 已修改"..ssjgs.."条数值") else soplan.toast("开启失败 原因:结果无数值") end end function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value soplan.setValues(jz) end function jz(py,xl,xgsz) flags=xl value=xgsz so=soplan.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end PT = (os.date("%Y年%m月%d日%H时%M分%S秒")) --[[配置11]]function shengqiu(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n📥修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("❌搜索不到❌",false) return false end else gg.toast("❌搜索不到❌") return false end end

gg.sleep(100)
gg.toast("     脚本加载中开启％\n■□□□□□□□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中10％\n■■□□□□□□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中15％\n■■■□□□□□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中20％\n■■■■□□□□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中25％\n■■■■■□□□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中30％\n■■■■■□□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中35％\n■■■■■■□□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中40％\n■■■■■■■□□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中45％\n■■■■■■■■□□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中50％\n■■■■■■■■■□□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中55％\n■■■■■■■■■■□□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中60％\n■■■■■■■■■■■□□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中65％\n■■■■■■■■■■■■□□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中70％\n■■■■■■■■■■■■■□□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中75％\n■■■■■■■■■■■■■■□□□□□")
gg.sleep(100)
gg.toast("     脚本加载中80％\n■■■■■■■■■■■■■■■□□□□")
gg.sleep(100)
gg.toast("     脚本加载中85％\n■■■■■■■■■■■■■■■■□□□")
gg.sleep(100)
gg.toast("     脚本加载中90％\n■■■■■■■■■■■■■■■■■□□")
gg.sleep(100)
gg.toast("     脚本加载中95％\n■■■■■■■■■■■■■■■■■■□")
gg.sleep(100)
gg.toast("     脚本加载中100％\n■■■■■■■■■■■■■■■■■■■")

STARS=gg.alert([[
倒卖死你妈
🤔3.4更新内容
1.人物变大
2.巨人模式
3.载具穿墙
4.枪械射速
5.黑天
⭐️星宇⭐

️️多多反馈，做最好脚本

更新时间：2022年.1月.23日.15点  ]],'🐴确认收到','','🐎复制Q号')
if STARS == 3 then gg.copyText("2097144524") gg.toast("复制成功‼️") end
--╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾
function Main()
  SN = gg.choice({
    "👑头盔👑",
    "🎒背包🎒",
    "🔫枪械🔫",
    "🚓载具🚕",
    "💎血雾💎",
    "👔衣服👔",
    "💰科技💰",
    "🎥基础🎥",
    "🇨🇳秋名山车神🇨🇳",
    "🤧口罩🤧",
    "🎇主题🎇",
    "✨喷雾✨",
    "💃动作美化💃",
    "🌆头像框美化🌆",
    "👼黑科技(巨人)👼",
    "🎊拜拜🎊"
  }, nil, "没关注星宇没🐴")
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
    k()
  end
  if SN == 12 then
    l()
  end
  if SN == 13 then
    m()
  end
  if SN == 14 then
    n()
  end
  if SN == 15 then
    o()
  end
  if SN == 16 then
    p()
  end
  XGCK = -1
end

function a()
  menu1 = gg.multiChoice({
    "👑金帽子👑",
    "🎓黑帽子🎓",
    "🎵蓝牙耳机🎵",
    "🎀红帽子🎀",
    "🐯狮王头盔🐯",
    "🌺红色头盔🌺",
    "🐮金羽头盔🐮",
    "⭐白色头盔⭐",
    "🍡绿头发🍡",
    "💓蓝色头发💓",
    "⃣恐龙头盔⃣",
    "🍃昆虫头盔🍃",
    "📺电视机📺",
    "🐶小狗头盔🐶",
    "🎩黑军帽头盔🎩",
    "🌻金属头盔🌻",
    "🏰隐形头盔🚇",
    "🏫蓝白头盔🏫",
    "🎺白色头盔🎺",
    "🎵蜘蛛侠头盔🎾",
    "💕仓鼠头盔🎍",
    "🏀全三级头(一二级都是三级头)",
    "〽法老头盔〽",
    "😱蓝色军帽头盔😱",
    "上一页"
  }, nil, "星宇🐧2097144524")
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
      a4()
    end
    if menu1[5] == true then
      a5()
    end
    if menu1[6] == true then
      a6()
    end
    if menu1[7] == true then
      a7()
    end
    if menu1[8] == true then
      a8()
    end
    if menu1[9] == true then
      a9()
    end
    if menu1[10] == true then
      a10()
    end
    if menu1[11] == true then
      a11()
    end
    if menu1[12] == true then
      a12()
    end
    if menu1[13] == true then
      a13()
    end
    if menu1[14] == true then
      a14()
    end
    if menu1[15] == true then
      a15()
    end
    if menu1[16] == true then
      a16()
    end
    if menu1[17] == true then
      a17()
    end
    if menu1[18] == true then
      a18()
    end
    if menu1[19] == true then
      a19()
    end
    if menu1[20] == true then
      a20()
    end
    if menu1[21] == true then
      a21()
    end
    if menu1[22] == true then
      a22()
    end
    if menu1[23] == true then
      a23()
    end
    if menu1[24] == true then
      a24()
    end
    if menu1[25] == true then
      HOME()
    end
  end
  GLWW = -1
end

function a1()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402075, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402075, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402075, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb) 
end

function a2()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400489, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400489, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400489, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)  
end

function a3()
  qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1402103,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1402103,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1402103,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function a4()
  qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1402338,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1402338,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1402338,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function a5()
  qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502002109,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502002109,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502003109,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)  
end

function a6()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb) 
end

function a7()
  qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502001088,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502002088,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502003088,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb) 
end

function a8()
qmnb = {
{["memory"] = 32},
{["name"] = "qq一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001029, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "qq二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002029, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "qq三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003029, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a9()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402607, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402607, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402607, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a10()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402563, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402563, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402563, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a11()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001039, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002039, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003039, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a12()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001038, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a13()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402132, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402132, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402132, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a14()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001099, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002099, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003099, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end 

function a15()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402108, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402108, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402108, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end 

function a16()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002081, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003111, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a17()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a18()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002062, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a19()
qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502001029,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502002029,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502003029,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  end
  
function a20()
 qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001028, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002028, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003028, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a21()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003065, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function a22()
qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 502003,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 502003,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 502003,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function a23()
qmnb = {
    {memory = 32},
    {name = "一级头"},
    {value = 502001, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502001,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502002093,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "二级头"},
    {value = 502002, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502002,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502002093,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "三级头"},
    {value = 502003, type = 4},
    {
      lv = 502000,
      offset = -44,
      type = 4
    },
    {
      lv = 502003,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1502003093,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function a24()
qmnb = {
{["memory"] = 32},
{["name"] = "一级头"},
{["value"] = 502001, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402346, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402346, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1402346, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b()
  menu1 = gg.multiChoice({
    "🎒银羽背包🎒",
    "💼小乌龟背包💼",
    "👜小丑背包👜",
    "👿恶魔背包👿",
    "💋粉粉背包💋",
    "👄紫色dj背包👄",
    "👽昆虫背包👽",
    "🐮金牛背包🐮",
    "🐗银羽背包(三级包不同)🐗",
    "🔞银羽背包(三级包不同)🅾",
    "🈺银羽背包(三级包不同)🈳",
    "😄银羽背包(一二级包不同)😄",
    "💞和平诡异娃娃🎄",
    "🎉雪人背包🎄",
    "©黑色背包©",
    "❌橙色背包❌",
    "🕛全三级包🕛",
    "🕐黑🐱背包🕐",
    "🕑黄色🐱背包🕑",
    "返回上一页"
  }, nil, "西瓜搜超秀星宇 背包有点少")
  if menu1 == nil then
  else
    if menu1[1] == true then
      b1()
    end
    if menu1[2] == true then
      b2()
    end
    if menu1[3] == true then
      b3()
    end
    if menu1[4] == true then
      b4()
    end
    if menu1[5] == true then
      b5()
    end
    if menu1[6] == true then
      b6()
    end
    if menu1[7] == true then
      b7()
    end
    if menu1[8] == true then
      b8()
    end
    if menu1[9] == true then
      b9()
    end
    if menu1[10] == true then
      b10()
    end
    if menu1[11] == true then
      b11()
    end
    if menu1[12] == true then
      b12()
    end
    if menu1[13] == true then
      b13()
    end
    if menu1[14] == true then
      b14()
    end
    if menu1[15] == true then
      b15()
    end
    if menu1[16] == true then
      b16()
    end
    if menu1[17] == true then
      b17()
    end
    if menu1[18] == true then
      b18()
    end
    if menu1[19] == true then
      b19()
    end
    if menu1[20] == true then
      HOME()
    end
  end
  GLWW = -1
end

function b1()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)  
end

function b2()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002055, ["offset"] = 0, ["type"] = 4},


}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003055, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b3()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001133, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002133, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003133, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb) 
end

function b4()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb) 
end

function b5()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003013, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb) 
end

function b6()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001044, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002044, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003044, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b7()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001088, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002066, ["offset"] = 0, ["type"] = 4},


}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b8()
qmnb = {
{["memory"] = 32},
{["name"] = "三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003039, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001155, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002155, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003155, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b9()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002009, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003154, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b10()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003093, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b11()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003052, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b12()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001028, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002028, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003009, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b13()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001178, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002178, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003178, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b14()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001217, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002217, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003217, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b15()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003017, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003017, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003017, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b16()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002056, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002056, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002056, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b17()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001089, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002089, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003089, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b18()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002088, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002088, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003088, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function b19()
qmnb = {
{["memory"] = 32},
{["name"] = "一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001134, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002134, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003134, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c()
  menu1 = gg.multiChoice({
    "❤一键美化全部枪械❤",
"🎃M416萌龙咆哮",
"🎃M416火箭少女",
"🎃M416改火箭筒",
"🎃AKM袭影",
"🎃AKM改98K",
"🎃AKM改火箭筒",
"🎃鸡巴死噶",
"🎃星宿死噶",
"🎃粉色M762",
"🎃手枪改火箭筒",
"🎃另类ak",
"🎃ak新皮肤",
"🎃黄金M416",
"🎃赤诚M416",
"🎃枫叶M416",
"🎃彩色M416",
"🎃黑色M416",
"🎃蓝色M416",
"🎃寒冰M416",
"🎃赤橙ak",
"🎃M762新皮肤",
"🎃寒冰ak",
"🎃小丑M762",
"🎃万圣节死嘎",
"🎃蓝色ak",
"🎃黄金ak",
    "上一页"
  }, nil, "快手搜星宇Zzzz  先开单独的美化枪械再开全部美化枪械 枪美可以多开几次")
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
      HOME()
    end
  end
  GLWW = -1
end


function c1()
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1101002056", gg.TYPE_DWORD)
  gg.toast("M16A4")
  gg.clearResults()
    qmnb = {
{["memory"] = 32},
{["name"] = "机瞄"},
{["value"] = 20300600, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 203006, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010020563, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004036",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040362, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040363, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040361, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

  gg.clearResults()
  gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1101002056", gg.TYPE_DWORD)
  gg.toast("M16A4")
  gg.clearResults()
    qmnb = {
{["memory"] = 32},
{["name"] = "机瞄"},
{["value"] = 20300600, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 203006, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010020563, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  gg.clearResults()
  gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1101001129", gg.TYPE_DWORD)
  gg.toast("AKM")
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1101003016", gg.TYPE_DWORD)
  gg.toast("SCAR-L")
  gg.clearResults()
  gg.clearResults()
gg.searchNumber("10100500",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("1101005025",gg.TYPE_DWORD)
gg.toast("GROZA")
  gg.clearResults()
  gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1101006001", gg.TYPE_DWORD)
  gg.toast("AUG")
  gg.clearResults()
  gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1101007017", gg.TYPE_DWORD)
  gg.toast("QBZ")
  gg.clearResults()
  gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1101008029", gg.TYPE_DWORD)
  gg.toast("M762")
  gg.clearResults()
  gg.searchNumber("10100900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1101009001<", gg.TYPE_DWORD)
  gg.toast("MK47")
  gg.clearResults()
  gg.searchNumber("10200100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1102001058", gg.TYPE_DWORD)
  gg.toast("UZI")
gg.clearResults()
gg.searchNumber("10200200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("1102002030",gg.TYPE_DWORD)
gg.toast("UMP45")
  gg.clearResults()
  gg.searchNumber("10200300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1102003020",gg.TYPE_DWORD)
  gg.toast("Vector")
  gg.clearResults()
  gg.searchNumber("10200400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1102004022", gg.TYPE_DWORD)
  gg.toast("汤姆逊")
    gg.clearResults()
  gg.searchNumber("10200500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1102005010", gg.TYPE_DWORD)
  gg.toast("野牛冲锋枪")
  gg.clearResults()
  gg.searchNumber("10300100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("1103001100", gg.TYPE_DWORD)
  gg.toast("98k")
gg.clearResults()
gg.searchNumber("10300200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("1103002029",gg.TYPE_DWORD)
gg.toast("M24")
gg.clearResults()
gg.searchNumber("10300300", gg.TYPE_DWORD)
gg.getResults(99)
gg.editAll("1103003029",gg.TYPE_DWORD)
gg.toast("AWM")
  gg.clearResults()
  gg.searchNumber("10300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1103004017", gg.TYPE_DWORD)
  gg.toast("SKS")
  gg.clearResults()
  gg.searchNumber("10300500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1103005014", gg.TYPE_DWORD)
  gg.toast("VSS")
  gg.clearResults()
  gg.searchNumber("10300600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1103006029", gg.TYPE_DWORD)
  gg.toast("mini14")
  gg.clearResults()
  gg.searchNumber("10400100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1104001002", gg.TYPE_DWORD)
  gg.toast("S686")
  gg.clearResults()
  gg.searchNumber("10400200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1104002003", gg.TYPE_DWORD)
  gg.toast("S1897")
  gg.clearResults()
  gg.searchNumber("10400300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1104003003", gg.TYPE_DWORD)
  gg.toast("S12k")
  gg.clearResults()
  gg.searchNumber("10500100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1105001020", gg.TYPE_DWORD)
  gg.toast("M249")
  gg.clearResults()
  gg.searchNumber("10500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1105002028", gg.TYPE_DWORD)
  gg.toast("OP-28")
    gg.clearResults()
  gg.searchNumber("10800100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1108004092", gg.TYPE_DWORD)
  gg.toast("砍刀")
    gg.clearResults()
  gg.searchNumber("10800200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("1108004092", gg.TYPE_DWORD)
  gg.toast("撬棍")
    gg.clearResults()
  gg.searchNumber("10800300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1108004092", gg.TYPE_DWORD)
  gg.toast("镰刀")
  gg.clearResults()
  gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1108004092", gg.TYPE_DWORD)
  gg.toast("平底锅")
  gg.clearResults()
  gg.searchNumber("1908001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1908011", gg.TYPE_DWORD)
  gg.toast("吉普")
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("1903001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1903036", gg.TYPE_DWORD)
  gg.toast("轿车")
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("1907001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1907013", gg.TYPE_DWORD)
  gg.toast("蹦蹦")
  gg.clearResults()
end

function c2()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004080",gg.TYPE_DWORD)
gg.toast("M416萌龙咆哮")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040862, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040863, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040861, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c3()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004001",gg.TYPE_DWORD)
gg.toast("M416火箭少女")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 100400103, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 100400102, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 100400101, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c4()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("M416改火箭筒")
end


function c5()
gg.clearResults()
gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101001079",gg.TYPE_DWORD)
gg.toast("AK袭影")
end

function c6()
gg.clearResults()
gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1103001042",gg.TYPE_DWORD)
gg.toast("AK改98K")
end

function c7()
gg.clearResults()
gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("AK改火箭筒")
end

function c8()
shengqiu({{false,10100300,0,4,nil,nil}},{{1101003098,0,4,false}},4,32,"🚬SCAR")
end

function c9()
gg.clearResults()
gg.searchNumber("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101003082",gg.TYPE_DWORD)
gg.toast("星宿死噶")
end

function c10()
shengqiu({{false,10100800,0,4,nil,nil}},{{1101008050,0,4,false}},4,32,"🚬M762")
end

function c11()
gg.clearResults()
gg.searchNumber("10600100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10600200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10600300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10600400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10600500",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10600600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10600700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
gg.clearResults()
gg.searchNumber("10601000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("10709900",gg.TYPE_DWORD)
gg.toast("火箭筒")
end

function c12()
shengqiu({{false,10100100,0,4,nil,nil}},{{1101001115,0,4,false}},4,32,"🚬AKM")
end

function c13()
shengqiu({{false,10100100,0,4,nil,nil}},{{1101001025,0,4,false}},4,32,"🚬AKM")
end

function c14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20300800 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20300800 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1010040342", gg.TYPE_DWORD)
gg.toast("M416黄金机瞄已开启")

gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("1101004034", gg.TYPE_DWORD)
gg.toast("M416黄金已开启")
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040343, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c15()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004015",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040152, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040153, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040151, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c16()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004036",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040362, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040363, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040361, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c17()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004035",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040352, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040353, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040351, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c18()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004079",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040792, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040793, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040791, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c19()
shengqiu({{false,10100400,0,4,nil,nil}},{{1101004051,0,4,false}},4,32,"🚬M416")
shengqiu({{false,20300800,0,4,nil,nil},{1,-4,4},{203008,12,4}},{{1010040512,0,4,false}},4,32,"🚬M416机瞄")
shengqiu({{false,20500500,0,4,nil,nil},{1,-4,4},{205005,12,4}},{{1010040513,0,4,false}},4,32,"🚬M416枪托")
shengqiu({{false,29100400,0,4,nil,nil},{1,-4,4},{291004,12,4}},{{1010040511,0,4,false}},4,32,"🚬M416扩容")
end

function c20()
gg.clearResults()
gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1101004046",gg.TYPE_DWORD)
gg.toast("M416")
qmnb = {
{["memory"] = 32},
{["name"] = "m416机瞄"},
{["value"] = 20300800, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040462, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "枪托"},
{["value"] = 20500500, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 205005, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040463, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "扩容"},
{["value"] = 29100400, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 291004, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1010040461, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function c21()
shengqiu({{false,10100100,0,4,nil,nil}},{{1101001006,0,4,false}},4,32,"🚬AKM")
end

function c22()
shengqiu({{false,10100800,0,4,nil,nil}},{{1101008039,0,4,false}},4,32,"🚬M762")
end

function c23()
shengqiu({{false,10100100,0,4,nil,nil}},{{1101001089,0,4,false}},4,32,"🚬AKM")
end

function c24()
shengqiu({{false,10100800,0,4,nil,nil}},{{1101008020,0,4,false}},4,32,"🚬M762")
end

function c25()
shengqiu({{false,10100300,0,4,nil,nil}},{{1101003070,0,4,false}},4,32,"🚬SCAR")
end

function c26()
shengqiu({{false,10100100,0,4,nil,nil}},{{1101001052,0,4,false}},4,32,"🚬AKM")
end

function c27()
shengqiu({{false,10100100,0,4,nil,nil}},{{1101001117,0,4,false}},4,32,"🚬AKM")
end

function d()
  menu1 = gg.multiChoice({
    "🚓载具美化(小跑车)🚓",
    "🚕载具美化+1🚕",
    "🚗载具美化+1🚗",
    "⛵s1降落伞⛵",
    "🎁s2降落伞🎁",
    "🎈s3降落伞🎈",
    "返回上一页"
  }, nil, "跑车就是个空跑车坐上去黑屏")
  if menu1 == nil then
  else
    if menu1[1] == true then
      d1()
    end
    if menu1[2] == true then
      d2()
    end
    if menu1[3] == true then
      d3()
    end
    if menu1[4] == true then
      d4()
    end
    if menu1[5] == true then
      d5()
    end
    if menu1[6] == true then
      d6()
    end
    if menu1[7] == true then
      HOME()
    end
  end
  GLWW = -1
end
  
function d1()  
qmnb = {
{["memory"] = 32},
{["name"] = "吉普"},
{["value"] = 1908001, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1915011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车"},
{["value"] = 1903001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1903001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1915011, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "蹦蹦"},
{["value"] = 1907001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1907001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1907018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "游艇"},
{["value"] = 1911001, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end  
  
function d2()
qmnb = {
{["memory"] = 32},
{["name"] = "吉普"},
{["value"] = 1908001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1908001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1908041, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "蹦蹦"},
{["value"] = 1907001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1907001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1907023, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车"},
{["value"] = 1903001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1903001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1903040, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "游艇"},
    {value = 1911001, type = 4},
    {
      lv = 100,
      offset = -4,
      type = 4
    },
    {
      lv = 9,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1911004,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {
      name = "三轮摩托"
    },
    {value = 1902001, type = 4},
    {
      lv = 100,
      offset = -4,
      type = 4
    },
    {
      lv = 9,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1902013,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {
      name = "二轮摩托"
    },
    {value = 1901001, type = 4},
    {
      lv = 100,
      offset = -4,
      type = 4
    },
    {
      lv = 9,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1901040,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb) 
end  
  
function d3()
qmnb = {
{["memory"] = 32},
{["name"] = "吉普"},
{["value"] = 1908001, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1908039, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "轿车"},
{["value"] = 1903001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1903001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1903037, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "蹦蹦"},
{["value"] = 1907001, ["type"] = 4},
{["lv"] = 84, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1907001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1907018, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "游艇"},
{["value"] = 1911001, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end  
  
function d4()
qmnb = {
  {["memory"] = 32},
  {["name"] = "降落伞"},
  {["value"] = 703001, ["type"] = 4},
  {["lv"] = 88, ["offset"] = -12, ["type"] = 4},
  {["lv"] = 703001, ["offset"] = 12, ["type"] = 4},
  }
  qmxg = {
  {["value"] = 703013, ["offset"] = 0, ["type"] = 4},

  }
  xqmnb(qmnb)  
end 
 
function d5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("703001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("703001;703001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("703014",gg.TYPE_DWORD)
gg.toast("s2降落伞成功")
gg.clearResults()
end

function d6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("703001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("703001;703001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("703015",gg.TYPE_DWORD)
gg.toast("s3降落伞成功")
gg.clearResults()
end

function e()
  menu1 = gg.multiChoice({
"🐤浅黄色血雾🐤",
"🌞深黄色血雾🌞",
"🐙深红色血雾🐙",
"🍧粉红色血雾🍧",
"🍛白红色血雾🍛",
"🍡白绿色血雾🍡",
"🍘深绿色血雾🍘",
"🍻仿轻量血雾👐🍻",
"🍳纯黑色血雾🍳",
"🎇纯蓝色血雾🎇",
"🎃深绿色增强版🎃",
    "返回上一页"
  }, nil, "仿轻量源自圣秋")
  if menu1 == nil then
  else
    if menu1[1] == true then
      e1()
    end
    if menu1[2] == true then
      e2()
    end
    if menu1[3] == true then
      e3()
    end
    if menu1[4] == true then
      e4()
    end
    if menu1[5] == true then
      e5()
    end
    if menu1[6] == true then
      e6()
    end
    if menu1[7] == true then
      e7()
    end
    if menu1[8] == true then
      e8()
    end
    if menu1[9] == true then
      e9()
    end
    if menu1[10] == true then
      e10()
    end
    if menu1[11] == true then
      e11()
    end
    if menu1[12] == true then
      HOME()
    end
  end
  GLWW = -1
end
  
  
function e1()
gg.setRanges(8|16384)
gg.searchNumber("-5.77534087e27F;-5.78017776e27F;-1.38573889e28F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-5.77534087e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.setRanges(8|16384)
gg.searchNumber("-5.77534087e27F;-5.78017776e27F;-1.38573889e28F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-5.78017776e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
end

function e2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-289,596,733;-308,983,296;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-289,596,733;-308,983,296;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
end

function e3()
gg.setRanges(8|16384)
gg.searchNumber("-5.77775931e27F;-5.78017776e27F;-1.38573889e28F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-5.77775931e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.setRanges(8|16384)
gg.searchNumber("-5.77775931e27F;-5.78017776e27F;-1.38573889e28F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-5.77775931e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-289,596,733;-308,983,296;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-289,596,733;-308,983,296;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
end

function e4()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-5.92766612e27F;-1.41765489e28F;-1.1250887e28F;-1.23939076e21F;-1.38573889e28F;-1.24646674e28F;-1.2464632e28F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.92766612e27F;-1.41765489e28F;-1.1250887e28F;-1.23939076e21F;-1.38573889e28F;-1.24646674e28F;-1.2464632e28F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
end

function e5()
 name='libUE4.so'--模块名
local sxg=0X29E6418--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
name='libUE4.so'--模块名
local sxg=0X29E641C--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
name='libUE4.so'--模块名
local sxg=0X29E6420--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
name='libUE4.so'--模块名
local sxg=0X29E6424--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
name='libUE4.so'--模块名
local sxg=0X29E642C--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
name='libUE4.so'--模块名
local sxg=0X29E6430--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
name='libUE4.so'--模块名
local sxg=0X29E6434--偏移量(0x请勿删除)
local zs=16--类型
local zsnb=0--修改数值
jz(sxg,zs,zsnb)--调用配置
gg.toast("血雾特效")
end


function e6()
qmnb = {
{["memory"] = 16384},
{["name"] = "白绿色血雾"},
{["value"] = -5.775340871753987E27, ["type"] = 16},
{["lv"] = -1.3857388945788034E28, ["offset"] = 12, ["type"] = 16},
{["lv"] = -8.164178881608305E27, ["offset"] = 20, ["type"] = 16},
{["lv"] = -8.166597323543344E27, ["offset"] = 24, ["type"] = 16},
{["lv"] = -1.4176548903941158E28, ["offset"] = 28, ["type"] = 16},
{["lv"] = -1.365444524618671E28, ["offset"] = 32, ["type"] = 16},
{["lv"] = -1.3944358408119802E28, ["offset"] = 52, ["type"] = 16},
{["lv"] = -1.402657008622008E28, ["offset"] = 56, ["type"] = 16},
{["lv"] = -1.4089427145290316E28, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
{["value"] = 0, ["offset"] = 20, ["type"] = 16},
{["value"] = 0, ["offset"] = 24, ["type"] = 16},
{["value"] = 0, ["offset"] = 28, ["type"] = 16},
{["value"] = 0, ["offset"] = 32, ["type"] = 16},
{["value"] = 0, ["offset"] = 52, ["type"] = 16},
{["value"] = 0, ["offset"] = 56, ["type"] = 16},
{["value"] = 0, ["offset"] = 60, ["type"] = 16},
}
xqmnb(qmnb)
end

function e7()
gg.setRanges(16384)
gg.searchNumber("-289,596,733;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193",
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-289,596,733;-298,640,831;-298,370,492;-294,581,562;-298,706,367:193", 
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("绿色血雾")
end


function e8()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
  py=0x29F0498
  setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
  py=0x29F049C
  setvalue(so+py,16,0)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x29F04A8
  setvalue(so+py,16,0)
  so=gg.getRangesList('libUE4.so')[1].start
  py=0x29F04A0
  setvalue(so+py,16,0)
  gg.toast("开启成功")
end

function e9()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-289,596,733;-308,979,199;-299,812,349;-298,497,529;-299,820,542:193", 
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-289,596,733;-308,979,199;-299,812,349;-298,497,529;-299,820,542:193", 
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
end

function e10()
gg.setRanges(16384)
gg.searchNumber('-5.92766612e27F;-1.1250887e28F;-1.23939076e21F;-1.38573889e28F;-1.24646674e28F;-1.2464632e28F', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast('蓝色血雾')
gg.clearResults()
end

function e11()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-298,370,492", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-298,370,492", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-294,581,562;-298,706,367:193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("超级绿色血雾")
end

function f()
  menu1 = gg.multiChoice({
    "👔身法裙套👔",
    "👘反派者👘",
    "🇨🇳木乃伊🇨🇳",
    "👙去🐻👙",
    "💰胖达💰",
    "👗白裙👗",
    "💤蜘蛛特工💤",
    "🔊小白衣🔊",
    "🐔感恩火鸡🐔",
    "🍁枪响身法套🍁",
    "🌜刺客风衣🌛",
    "🎷法老🎩",
    "🎁菠萝风衣🎁",
    "💓红色风衣💛",
    "💘s6身法服❤",
    "🎃s1身法套🎃",
    "🎃黑色涂鸦🎃",
    "🎃职业风衣🎃",
    "🎄S1身法裤🎄",
    "🎄小黄裤🎄",
    "🎃黄金职业风衣🎃",
    "😍星宇专属😍",
    "💜秋封同款💙",
    "💙特斯拉风衣💙",
    "返回上一页"
  }, nil, "去🐻+透视很好哟 身法套口罩自选 从菠萝风衣开始只美衣服 要美裤子单独选")
  if menu1 == nil then
  else
    if menu1[1] == true then
      f1()
    end
    if menu1[2] == true then
      f2()
    end
    if menu1[3] == true then
      f3()
    end
    if menu1[4] == true then
      f4()
    end
    if menu1[5] == true then
      f5()
    end
    if menu1[6] == true then
      f6()
    end
    if menu1[7] == true then
      f7()
    end
    if menu1[8] == true then
      f8()
    end
    if menu1[9] == true then
      f9()
    end
    if menu1[10] == true then
      f10()
    end
    if menu1[11] == true then
      f11()
    end
    if menu1[12] == true then
      f12()
    end
    if menu1[13] == true then
      f13()
    end
    if menu1[14] == true then
      f14()
    end
    if menu1[15] == true then
      f15()
    end
    if menu1[16] == true then
      f16()
    end
    if menu1[17] == true then
      f17()
    end
    if menu1[18] == true then
      f18()
    end
    if menu1[19] == true then
      f19()
    end
    if menu1[20] == true then
      f20()
    end
    if menu1[21] == true then
      f21()
    end
    if menu1[22] == true then
      f22()
     end
    if menu1[23] == true then
      f23()
     end
    if menu1[24] == true then
      f24()
     end
    if menu1[25] == true then
      HOME()
    end
  end
  GLWW = -1
end
  
function f1()  
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400098, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "头发"},
{["value"] = 405000, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405000, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "裤子"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404003, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
  {["memory"] = 32},
  {["name"] = "降落伞"},
  {["value"] = 703001, ["type"] = 4},
  {["lv"] = 88, ["offset"] = -12, ["type"] = 4},
  {["lv"] = 703001, ["offset"] = 12, ["type"] = 4},
  }
  qmxg = {
  {["value"] = 703013, ["offset"] = 0, ["type"] = 4},

  }
  xqmnb(qmnb)
  qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1400098, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("503,003;10;404:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("503003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("405004", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("鞋子")
end  
  
function f2()
qmnb = {
{["memory"] = 32},
{["name"] = "头部"},
{["value"] = 40601002, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1403079, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "季服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404156, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "s1裤子"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "鞋子"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "鞋子"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end  
  
function f3()
qmnb = {
{["memory"] = 32},
{["name"] = "木乃伊"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400687, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb) 
end  
  
function f4()
gg.toast("🔰开始搜索数据")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("403007",  gg.TYPE_DWORD,false,gg.SIGN_DWORD,0, -1)
gg.searchNumber("403007", gg.TYPE_DWORD,false,gg.SIGN_DWORD,0,-1)
gg.getResults(100)
gg.editAll("403000",gg.TYPE_DWORD)
gg.toast("去除胸罩开启成功")  
end  
  
function f5()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1405039, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "头部"},
{["value"] = 40601002, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1400168, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)  
end  
  
function f6() 
 qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1405034, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "头部"},
{["value"] = 40601002, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1402127, ["offset"] = 0, ["type"] = 4},

} 
xqmnb(qmnb)
end  

function f7()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404156, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "头部"},
{["value"] = 40601002, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1403079, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function f8()
qmnb = {
{["memory"] = 32},
{["name"] = "小白衣"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 403005, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "si裤子"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "鞋子"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1403119, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function f9()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400320, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "头部"},
{["value"] = 40601002, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1400319, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f10()
qmnb = {
{["memory"] = 32},
{["name"] = "头部"},
{["value"] = 40601002, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1403119, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "星宇专属身法套"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 403201, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "裤子"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f11()
  qmnb = {
    {memory = 32},
    {name = "刺客风衣"},
    {value = 403007, type = 4},
    {
      lv = 403000,
      offset = -44,
      type = 4
    },
    {
      lv = 403007,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1405355,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
    qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1405355, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 405004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("503,003;10;404:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("503003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("405004", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("鞋子")
end
  
function f12()
qmnb = {
{["memory"] = 32},
{["name"] = "法老"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1405632, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f13()
qmnb = {
{["memory"] = 32},
{["name"] = "菠萝风衣🍍"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404153, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1404153, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f14()
qmnb = {
{["memory"] = 32},
{["name"] = "红色风衣"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400781, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1400781, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f15()
qmnb = {
{["memory"] = 32},
{["name"] = "S6战斗服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404008, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1404008, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f16()
qmnb = {
{["memory"] = 32},
{["name"] = "S1赛季服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 403124, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 403124, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f17()
qmnb = {
{["memory"] = 32},
{["name"] = "黑色涂鸦"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404021, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1404021, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f18()
qmnb = {
{["memory"] = 32},
{["name"] = "[伪]职业风衣"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404156, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1404156, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f19()
qmnb = {
{["memory"] = 32},
{["name"] = "SI红裤"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f20()
qmnb = {
{["memory"] = 32},
{["name"] = "小黄裤"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 404001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f21()
qmnb = {
{["memory"] = 32},
{["name"] = "身法专属"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 403189, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 403189, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f22()
qmnb = {
{["memory"] = 32},
{["name"] = "小黄裤"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 404001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "黑色涂鸦"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1404021, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1404021, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "豹纹口罩"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 474031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
    qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 474031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function f23()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 403000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 403007, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400076, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "S1裤子"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 404000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 404031, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
  {["memory"] = 32},
  {["name"] = "降落伞"},
  {["value"] = 703001, ["type"] = 4},
  {["lv"] = 88, ["offset"] = -12, ["type"] = 4},
  {["lv"] = 703001, ["offset"] = 12, ["type"] = 4},
  }
  qmxg = {
  {["value"] = 703013, ["offset"] = 0, ["type"] = 4},

  }
  xqmnb(qmnb)
  qmnb = {
{["memory"] = 32},
{["name"] = "豹纹口罩"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 474031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 403007, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1400076, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 404031, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 404049, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
    qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 474031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function f24()
shengqiu({{false,403007,0,4,nil,nil},{100,-4,4},{4,4,4}},{{1405395,0,4,false}},4,32,"特斯拉风衣")
end

function g()
  menu1 = gg.multiChoice({
    "🐯自瞄+范围(正式服可用)🐯",
    "🍀自瞄🍀",
    "🐴高损伤＋增伤🐴",
    "🐤无后🐤",
    "🐷防抖🐷",
    "🐶聚点🐶",
    "🎵宇宙最强自瞄类似于圈圈自瞄(没有圈)🏊",
    "🤔圈圈自瞄😳",
    "[😈] vip高伤",   
    "[😈] 大范围",
    "[😈] 加速高伤",
    "[😈] 秒伤",
    "[😈]  超级高伤",
    "返回上一页"
  }, nil, "高损伤源自老外")
  if menu1 == nil then
  else
    if menu1[1] == true then
      g1()
    end
    if menu1[2] == true then
      g2()
    end
    if menu1[3] == true then
      g3()
    end
    if menu1[4] == true then
      g4()
    end
    if menu1[5] == true then
      g5()
    end
    if menu1[6] == true then
      g6()
    end
    if menu1[7] == true then
      g7()
    end
    if menu1[8] == true then
      g8()
    end
    if menu1[9] == true then
      g9()
    end
    if menu1[10] == true then
      g10()
    end
    if menu1[11] == true then
      g11()
    end
    if menu1[12] == true then
      g12()
    end
    if menu1[13] == true then
      g13()
    end
    if menu1[14] == true then
      HOME()
    end
  end
  GLWW = -1
end
  
function g1()  
ViRuS = gg
ViRuS.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("a内存不减伤范围")
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT) 
gg.searchNumber("200", gg.TYPE_FLOAT) 
gg.getResults(200) 
gg.editAll("300", gg.TYPE_FLOAT) 
gg.toast("微范围拾取")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("星宇自瞄")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
gg.searchNumber("1", gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll("20000000000000", gg.TYPE_FLOAT)
gg.toast("开火自瞄")
gg.clearResults()
gg.setRanges(16384)
SearchWrite({
   {-1.5474144E26, 0},
   {-9.2861054E22, -4},
   {-3.6951134E20, -20},
   {-1.5474142E26, 12},
   {-3.7095302E20, 16}
}, {
  {0, 0}
}, 16)
gg.toast('加伤')
end  
  
function g2()
gg.setRanges(gg.REGION_CODE_APP)
  SearchWrite({
    {
      '-1.5573156e26',
      ('8')
    }
  }, {
    {
      '0',
      ('0')
    }
  }, 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('2015175168', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('0.0001;1478828288::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll('1', gg.TYPE_FLOAT)
  gg.toast('自瞄已开启成功')
end  
  
function g3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;23;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("160", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("78;783", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("115;220", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("VIP以及高损伤已开启")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.setRanges(32)
gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
gg.searchNumber("45", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("999999", 16)
gg.toast("damage")
end  
  
function g4()
 gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无后开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("全枪无后开启成功")
end  
  
function g5()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("防抖")
end  
  
function g6() 
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("90", gg.TYPE_FLOAT)
gg.toast("聚点")
end  

function g7()
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-476,053,504",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("-476,053,503",gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1905726136855492093", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1905726136855492092", gg.TYPE_QWORD)  
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1901891198734303227", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-1901891198902075392", gg.TYPE_QWORD)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1901891198734303227", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-1901891198902075392", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("0",gg.TYPE_FLOAT)
  gg.toast("最强自瞄")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("修改数值",gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function g8()
 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2015175168.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2015175168.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1320176194;953267991", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("953267991", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500)
gg.editAll("1259902591", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2046820354D;-300873200D;-336336369D:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(5)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-476053504D;-290125120D;-286131696D;-1023410175D;-516948194D;-481230847D;329256960D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500)
gg.editAll("-476053503", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1937954991146794979", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(5)
gg.editAll("-1937954991314567168", gg.TYPE_QWORD)
gg.toast("🧿 MOVING ESP circle🧿")
end

function g9()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(300, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("341;412", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("25;30.5;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(300, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("99;180", gg.TYPE_FLOAT)
gg.toast("VIP高伤已开启")
end

function g10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.toast("10%")
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("20%")
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
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
  gg.toast("真伤追踪+范围")
gg.toast("牛逼")
end

function g11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;23;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("160", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
 gg.setRanges(32)
 gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(999)
gg.editAll("371;365", gg.TYPE_FLOAT)
gg.alert("加速高伤已开启")
end

function g12()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2000)
gg.editAll("180", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(2000)
gg.editAll("240", gg.TYPE_FLOAT)
gg.toast("秒伤开启")
gg.setVisible(false)
end

function g13()
so = Killerdk.getRangesList("libUE4.so")[1].start
  py = 41026660
  setvalue(so + py, 4, 0)
  Killerdk.toast("超级高伤开启成功")
end

function h()
  menu1 = gg.multiChoice({
    "🔥红点g八倍🔥",
    "☀狙击枪连发☁",
    "🙈修改帧率🙈",
    "🐺微加速🐺",
    "🐨关微加速🐨",
    "🙈透视🙈",
    "🐒除草🐒",
    "🌝16：9🌝",
    "🙈音效加强🙈",
    "🎶四倍变八倍🎱",
    "💀人物变大💀",
    "返回上一页"
  }, nil, "一部分来源星辰 微加速和透视一把开一次")
  if menu1 == nil then
  else
    if menu1[1] == true then
      h1()
    end
    if menu1[2] == true then
      h2()
    end
    if menu1[3] == true then
      h3()
    end
    if menu1[4] == true then
      h4()
    end
    if menu1[5] == true then
      h5()
    end
    if menu1[6] == true then
      h6()
    end
    if menu1[7] == true then
      h7()
    end 
    if menu1[8] == true then
      h8()
    end
    if menu1[9] == true then
      h9()
    end
    if menu1[10] == true then
      h10()
    end
    if menu1[11] == true then
      h11()
    end
    if menu1[12] == true then
      HOME()
    end
  end
  GLWW = -1
end
  
function h1()  
qmnb = {
{["memory"] = 32},
{["name"] = "八倍镜"},
{["value"] = 20300100, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
{["lv"] = 203001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 20300500, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end  
  
function h2()
gg.toast("🔰开始搜索数据")
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("76000;1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00001", gg.TYPE_FLOAT)
  gg.toast("98k连发开启成功")
  QCFZNP()
    QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("79000;1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00001", gg.TYPE_FLOAT)
  gg.toast("M24连发开启成功")
  QCFZNP()
    QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("91,000.0F;2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00001", gg.TYPE_FLOAT)
  gg.toast("AWM连发开启成功")
  QCFZNP()  
end  
  
function h3()
gg.alert("请先将帧率设置为低后开启，需要关闭请切换帧率即可")
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("1.73e-322E;268,435,456.0E;4.4e-322E:97", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("268,435,456.0", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1) 
gg.editAll("0", gg.TYPE_DOUBLE) 
gg.toast("帧率已经最高") 
end  
  
function h4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1.512431865379",gg.TYPE_FLOAT)
gg.toast("微死了啊")  
end  
  
function h5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1.29999995232F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.512431865379", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("关闭️")  
end  
  
function h6() 
gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber('-8.3358201e-40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('-8.3358201e-40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('5444', gg.TYPE_FLOAT)
    gg.toast('加载中...')
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber('537,149,445A;537,149,474A;537,151,744A;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.toast('开启成功')
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber('5.2806111e-40;6.50000333786;3.7615819e-37;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('9999', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber('1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('9999', gg.TYPE_FLOAT)
    gg.toast('放闪')
    qmnb = {
      {
        ['memory'] = 1048576
      },
      {
        ['name'] = '上色'
      },
      {
        ['value'] = 8200,
        ['type'] = 4
      },
      {
        ['lv'] = 536887305,
        ['offset'] = -4,
        ['type'] = 4
      },
      {
        ['lv'] = 1194380047,
        ['offset'] = 4,
        ['type'] = 4
      }
    }
    qmxg = {
      {
        ['value'] = 6,
        ['offset'] = 0,
        ['type'] = 4
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ['memory'] = 1048576
      },
      {
        ['name'] = '上色'
      },
      {
        ['value'] = 8200,
        ['type'] = 4
      },
      {
       ['lv'] = 536887305,
        ['offset'] = -4,
        ['type'] = 4
      },
      {
        ['lv'] = 1194380047,
        ['offset'] = 4,
        ['type'] = 4
      }
    }
    qmxg = {
      {
        ['value'] = 6,
        ['offset'] = 0,
        ['type'] = 4
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ['memory'] = 1048576
      },
      {
        ['name'] = '上色'
      },
      {
        ['value'] = 8200,
        ['type'] = 4
      },
      {
        ['lv'] = 1661042700,
        ['offset'] = -4,
        ['type'] = 4
      },
      {
        ['lv'] = 1194380045,
        ['offset'] = 4,
        ['type'] = 4
      }
    }
    qmxg = {
      {
        ['value'] = 6,
        ['offset'] = 0,
        ['type'] = 4
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ['memory'] = 1048576
      },
      {
        ['name'] = '上色'
      },
      {
        ['value'] = 8201,
        ['type'] = 4
      },
      {
        ['lv'] = 1194344452,
        ['offset'] = -4,
        ['type'] = 4
      },
      {
        ['lv'] = 1194346759,
        ['offset'] = 4,
        ['type'] = 4
      }
    }
    qmxg = {
      {
        ['value'] = 7,
        ['offset'] = 0,
        ['type'] = 4
      }
    }
    xqmnb(qmnb)
end  

function h7()
Name = "全图除草"
local Nc = 32
local Lx = 4
local Sz1 = {{7632240, 0},{1633907556, -76}}
local Sz2 = {{1936942449, 0}}
HaoGe(Nc, Lx, Sz1, Sz2)
Name = "远处除雾"
local Nc = 16392
local Lx = 4
local Sz1 = {{-486470524, 0},{-298841535, 4},{-409665536, 8}}
local Sz2 = {{0, 4}}
HaoGe(Nc, Lx, Sz1, Sz2)
gg.toast("NO RECOIL, GRASS")
end

function h8()
gg.clearResults()                                 gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("360.0;0.00100000005;-9.38575022e22", gg.TYPE_FLOAT)
gg.refineNumber("360.0", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("317", gg.TYPE_FLOAT)
gg.toast("平板成功")
end

function h9()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.05", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("-0.002",16)
gg.toast("音效增强成功")
end

function h10()
 gg.clearResults()
  gg.searchNumber("20300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20300400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("20300500", gg.TYPE_DWORD)
  gg.toast("四倍改八倍已开启") 
end
  
function h11()
gg.clearResults()
  gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false)
  gg.getResults(50)
  gg.editAll("1.28", gg.TYPE_FLOAT)
  gg.toast("Big Player ✔")
end

function i()
  menu1 = gg.multiChoice({
    "🚓吉普加速🚓",
    "🚕轿车加速🚕",
    "🚗吉普飞天🚗",
    "🚙轿车飞天🚙",
    "🚚摩托加速🚚",
    "🚲蹦蹦加速🚲",
    "🚒汽车锁油🚒",
    "🚑汽车秒刹🚑",
    "🚌车辆浮空🚌",
    "🚉全车加速🚉",
    "🚇全车JS关🚇",
    "🚄蹦蹦穿墙🚄",
    "🚅吉普大跳飞天🚅",
    "🚃蹦蹦大跳飞天🚃",
    "🚧轿车大跳飞天🚧",
    "🚥蟑螂大跳飞天🚥",
    "返回上一页"
  }, nil, "上车了再开")
  if menu1 == nil then
  else
    if menu1[1] == true then
      i1()
    end
    if menu1[2] == true then
      i2()
    end
    if menu1[3] == true then
      i3()
    end
    if menu1[4] == true then
      i4()
    end
    if menu1[5] == true then
      i5()
    end
    if menu1[6] == true then
      i6()
    end
    if menu1[7] == true then
      i7()
    end
    if menu1[8] == true then
      i8()
    end
    if menu1[9] == true then
      i9()
    end
    if menu1[10] == true then
      i10()
    end
    if menu1[11] == true then
      i11()
    end
    if menu1[12] == true then
      i12()
    end
    if menu1[13] == true then
      i13()
    end
    if menu1[14] == true then
      i14()
    end
    if menu1[15] == true then
      i15()
    end
    if menu1[16] == true then
      i16()
    end
    if menu1[17] == true then
      HOME()
    end
  end
  GLWW = -1
end
  
function i1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  gg.editAll("100.241295", 16)
  gg.clearResults()
  gg.toast("吉普加速")
end

function i2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车加速")
end

function i3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("吉普飞天")
end

function i4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.72727274895;0.34377467632;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;16;49;22050::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车飞天")
end

function i5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹦蹦加速")
end

function i6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("摩托车加速")
end

function i7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("-999", 16)
  gg.toast("汽车锁油")
end

function i8()
  gg.toast("")
  qmnb = {
    {
      memory = gg.REGION_C_BSS
    },
    {
      name = "全车秒刹车"
    },
    {
      value = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 100,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 9999,
      offset = 0,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end

function i9()
  Name = "车浮空"
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {-5.139455925665468E27, 0},
    {-7.583908064996921E27, 4},
    {-5.112866641183671E27, 8},
    {-1.2793503529145021E28, 12},
    {-7.600827713809233E27, 16},
    {-7.600830074992474E27, 20},
    {-7.593578290962217E27, 24}
  }
  local modify = {
    {0, 0}
  }
  SearchWrite(search, modify, dataType, Name)
end

function i10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj = "1"
  gg.toast("全车加速已开启")
end

function i11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  g10sj = "0"
  gg.toast("全车加速已关闭")
end

function i12()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end

function i13()
  gg.setRanges(32)
  local dataType = 16
  local tb1 = {
    {5.5555557E-4, 0},
    {49.9999961853, 8},
    {24.99999809265, 12}
  }
  local tb2 = {
    {0.00455555557, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("开启成功")
end

function i14()
  gg.setRanges(32)
  local dataType = 16
  local tb1 = {
    {0.00111111114, 0},
    {49.9999961853, 8},
    {24.99999809265, 12}
  }
  local tb2 = {
    {0.04111111114, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("开启成功")
end

function i15()
  gg.setRanges(32)
  local dataType = 16
  local tb1 = {
    {0.00100000005, 0},
    {49.9999961853, 8},
    {24.99999809265, 12}
  }
  local tb2 = {
    {0.06100000005, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("开启成功")
end

function i16()
  gg.setRanges(32)
  local dataType = 16
  local tb1 = {
    {1.6666666E-4, 0},
    {49.9999961853, 8},
    {24.99999809265, 12}
  }
  local tb2 = {
    {0.00416666666, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("开启成功")
end


function j()
  menu1 = gg.multiChoice({
    "😷豹纹口罩😷",
    "😘红色口罩😘",
    "😱蓝色口罩😱",
    "👿s6口罩👿",
    "😓棕色口罩😓",
    "🔥黑色口罩🔥",
    "👽牛逼口罩👽",
    "h",
    "h",
    "h",
    "h",
    "h",
    "h",
    "h",
    "h",
    "上一页"
  }, nil, "口罩自选")
  if menu1 == nil then
  else
    if menu1[1] == true then
      j1()
    end
    if menu1[2] == true then
      j2()
    end
    if menu1[3] == true then
      j3()
    end
    if menu1[4] == true then
      j4()
    end
    if menu1[5] == true then
      j5()
    end
    if menu1[6] == true then
      j6()
    end
    if menu1[7] == true then
      j7()
    end
    if menu1[8] == true then
      j8()
    end
    if menu1[9] == true then
      j9()
    end
    if menu1[10] == true then
      j10()
    end
    if menu1[11] == true then
      j11()
    end
    if menu1[12] == true then
      j12()
    end
    if menu1[13] == true then
      j13()
    end
    if menu1[14] == true then
      j14()
    end
    if menu1[15] == true then
      j15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function j1()
qmnb = {
{["memory"] = 32},
{["name"] = "豹纹口罩"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 474031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
    qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 474031, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function j2()
qmnb = {
{["memory"] = 32},
{["name"] = "红色口罩"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1403119, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1403119, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function j3()
qmnb = {
{["memory"] = 32},
{["name"] = "蓝色口罩"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1403130, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1403130, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function j4()
qmnb = {
{["memory"] = 32},
{["name"] = "S6口罩"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1400024, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
  qmnb = {
{["memory"] = 4},
{["name"] = "仓库显示"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 68, ["offset"] = -8, ["type"] = 4},
{["lv"] = 19, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1400024, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function j5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("503,003;10;404:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("503003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("1403119", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("口罩开启成功")
end

function j6()
qmnb = {
    {memory = 32},
    {name = "黑口罩"},
    {value = 405015, type = 4},
    {
      lv = 405000,
      offset = -44,
      type = 4
    },
    {
      lv = 405015,
      offset = 12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1403130,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function j7()
qmnb = {
{["memory"] = 32},
{["name"] = "鞋子"},
{["value"] = 405015, ["type"] = 4},
{["lv"] = 405000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 405015, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 1403079, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function j8()

end

function j9()

end

function j10()

end

function j11()

end

function j12()

end

function j13()

end

function j14()

end

function j15()

end

function k()
  menu1 = gg.multiChoice({
"经典万圣节主题🎃",
"冰雪奇缘主题❄️",
"春暖花开主题🌸",
"电音派对主题⚡",
"圣诞节主题🌲",
"精致万圣节主题🎃",
    "的",
    "爸",
    "爸",
    "c",
    "n",
    "m",
    "b",
    "s",
    "b",
    "上一页"
  }, nil, "来源鹤忘哥")
  if menu1 == nil then
  else
    if menu1[1] == true then
      k1()
    end
    if menu1[2] == true then
      k2()
    end
    if menu1[3] == true then
      k3()
    end
    if menu1[4] == true then
      k4()
    end
    if menu1[5] == true then
      k5()
    end
    if menu1[6] == true then
      k6()
    end
    if menu1[7] == true then
      k7()
    end
    if menu1[8] == true then
      k8()
    end
    if menu1[9] == true then
      k9()
    end
    if menu1[10] == true then
      k10()
    end
    if menu1[11] == true then
      k11()
    end
    if menu1[12] == true then
      k12()
    end
    if menu1[13] == true then
      k13()
    end
    if menu1[14] == true then
      k14()
    end
    if menu1[15] == true then
      k15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function k1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('202408001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('202408004',gg.TYPE_DWORD)
gg.toast('经典万圣节🎃')
gg.clearResults()
end

function k2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('202408001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("202408005",gg.TYPE_DWORD)
gg.toast('冰雪奇缘主题❄️')
gg.clearResults()
end

function k3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('202408001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('202408009',gg.TYPE_DWORD)
gg.toast('春暖花开主题🌸')
gg.clearResults()
end

function k4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('202408001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('202408007',gg.TYPE_DWORD)
gg.toast('电音派对主题⚡')
gg.clearResults()
end

function k5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('202408001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('202408022',gg.TYPE_DWORD)
gg.toast('圣诞节主题🎄')
gg.clearResults()
end

function k6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('202408001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('202408013',gg.TYPE_DWORD)
gg.toast('精致万圣节🎃')
gg.clearResults()
end

function k7()

end

function k8()

end

function k9()

end

function k10()

end

function k11()

end

function k12()

end

function k13()

end

function k14()

end

function k15()

end

function l()
  menu1 = gg.multiChoice({
"甲改蓝色喷雾✌",
"甲改紫色喷雾✌",
"甲改黄色喷雾✌",
"甲改绿色喷雾✌",
"甲改彩色喷雾✌",
    "爸",
    "爸",
    "的",
    "爸",
    "爸",
    "c",
    "n",
    "m",
    "b",
    "s",
    "b",
    "上一页"
  }, nil, "来自鹤忘哥")
  if menu1 == nil then
  else
    if menu1[1] == true then
      l1()
    end
    if menu1[2] == true then
      l2()
    end
    if menu1[3] == true then
      l3()
    end
    if menu1[4] == true then
      l4()
    end
    if menu1[5] == true then
      l5()
    end
    if menu1[6] == true then
      l6()
    end
    if menu1[7] == true then
      l7()
    end
    if menu1[8] == true then
      l8()
    end
    if menu1[9] == true then
      l9()
    end
    if menu1[10] == true then
      l10()
    end
    if menu1[11] == true then
      l11()
    end
    if menu1[12] == true then
      l12()
    end
    if menu1[13] == true then
      l13()
    end
    if menu1[14] == true then
      l14()
    end
    if menu1[15] == true then
      l15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function l1()
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级甲"},
{["value"] = 503003, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151004, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function l2()
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151003, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151003, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级甲"},
{["value"] = 503003, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151003, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function l3()
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级甲"},
{["value"] = 503003, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151002, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function l4()
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级甲"},
{["value"] = 503003, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151001, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function l5()
qmnb = {
{["memory"] = 32},
{["name"] = "一级甲"},
{["value"] = 503001, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503001, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151006, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "二级甲"},
{["value"] = 503002, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503002, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151006, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "三级甲"},
{["value"] = 503003, ["type"] = 4},
{["lv"] = 503000, ["offset"] = -44, ["type"] = 4},
{["lv"] = 503003, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4151006, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function l6()

end

function l7()

end

function l8()

end

function l9()

end

function l10()

end

function l11()

end

function l12()

end

function l13()

end

function l14()

end

function l15()

end

function m()
  menu1 = gg.multiChoice({
    "💃电摇💃",
    "🏄装逼动作🏄",
    "🏁投降动作🏁",
    "你",
    "爸",
    "爸",
    "的",
    "爸",
    "爸",
    "c",
    "n",
    "m",
    "b",
    "s",
    "b",
    "上一页"
  }, nil, "落地了再开不然不显示")
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
      m7()
    end
    if menu1[8] == true then
      m8()
    end
    if menu1[9] == true then
      m9()
    end
    if menu1[10] == true then
      m10()
    end
    if menu1[11] == true then
      m11()
    end
    if menu1[12] == true then
      m12()
    end
    if menu1[13] == true then
      m13()
    end
    if menu1[14] == true then
      m14()
    end
    if menu1[15] == true then
      m15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function m1()
gg.clearResults()
gg.searchNumber("2200301",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("2201201",gg.TYPE_DWORD)
gg.toast("舞蹈动作")
end

function m2()
qmnb = {
{["memory"] = 32},
{["name"] = "拍手动作改胜利动作"},
{["value"] = 2200301, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 22, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 2202601, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function m3()
qmnb = {
{["memory"] = 32},
{["name"] = "\n🚬投降"},
{["value"] = 2200301, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 22, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 2200901, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function m4()

end

function m5()

end

function m6()

end

function m7()

end

function m8()

end

function m9()

end

function m10()

end

function m11()

end

function m12()

end

function m13()

end

function m14()

end

function m15()

end

function n()
  menu1 = gg.multiChoice({
    "🌇s1头像框🌇",
    "",
    "",
    "你",
    "爸",
    "爸",
    "的",
    "爸",
    "爸",
    "c",
    "n",
    "m",
    "b",
    "s",
    "b",
    "上一页"
  }, nil, "大厅开")
  if menu1 == nil then
  else
    if menu1[1] == true then
      n1()
    end
    if menu1[2] == true then
      n2()
    end
    if menu1[3] == true then
      n3()
    end
    if menu1[4] == true then
      n4()
    end
    if menu1[5] == true then
      n5()
    end
    if menu1[6] == true then
      n6()
    end
    if menu1[7] == true then
      n7()
    end
    if menu1[8] == true then
      n8()
    end
    if menu1[9] == true then
      n9()
    end
    if menu1[10] == true then
      n10()
    end
    if menu1[11] == true then
      n11()
    end
    if menu1[12] == true then
      n12()
    end
    if menu1[13] == true then
      n13()
    end
    if menu1[14] == true then
      n14()
    end
    if menu1[15] == true then
      n15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function n1()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2001001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 2002901}})
	 end
	 gg.toast("s1头像框🆗")
	 gg.clearResults()
end

function n2()

end

function n3()

end

function n4()

end

function n5()

end

function n6()

end

function n7()

end

function n8()

end

function n9()

end

function n10()

end

function n11()

end

function n12()

end

function n13()

end

function n14()

end

function n15()

end

function o()
  menu1 = gg.multiChoice({
    "进击的巨人『娱乐』",
    "巨人模式(落地开启)",
    "上身变大(落地开启)",
    "人物大头(落地开启)",
    "吉普浮空(驾驶开启)",
    "吉普下水(驾驶开启)",
    "蹦蹦浮空(驾驶开启)",
    "蹦蹦穿墙(驾驶开启)",
    "轿车飞天(驾驶开启)",
    "开船遁地(驾驶开启)",
    "蹲下飞天(落地开启)",
    "下蹲遁地(驾驶开启)",
    "人物2倍加速",
    "开启全局加速",
    "关闭全局加速",
    "人物瞬移开启",
    "人物瞬移关闭",
    "超高跳不防摔",
    "上帝视角(落地开启)",
    "天空黑色(落地开启)",
    "步枪射速〖持枪开启〗",
    "子弹穿墙〖持枪开启〗",
    "强制站立(和巨人一起开会闪退)",
    "灵魂出窍(娱乐功能)",
      "上一页"
  }, nil, "大厅开")
  if menu1 == nil then
  else
    if menu1[1] == true then
      o1()
    end
    if menu1[2] == true then
      o2()
    end
    if menu1[3] == true then
      o3()
    end
    if menu1[4] == true then
      o4()
    end
    if menu1[5] == true then
      o5()
    end
    if menu1[6] == true then
      o6()
    end
    if menu1[7] == true then
      o7()
    end
    if menu1[8] == true then
      o8()
    end
    if menu1[9] == true then
      o9()
    end
    if menu1[10] == true then
      o10()
    end
    if menu1[11] == true then
      o11()
    end
    if menu1[12] == true then
      o12()
    end
    if menu1[13] == true then
      o13()
    end
    if menu1[14] == true then
      o14()
    end
    if menu1[15] == true then
      o15()
    end
    if menu1[16] == true then
      o16()
    end
    if menu1[17] == true then
      o17()
    end
    if menu1[18] == true then
      o18()
    end
    if menu1[19] == true then
      o19()
    end
    if menu1[20] == true then
      o20()
    end
    if menu1[21] == true then
      o21()
    end
    if menu1[22] == true then
      o22()
    end
    if menu1[23] == true then
      o23()
    end
    if menu1[24] == true then
      o24()
    end
    if menu1[25] == true then
      HOME()
    end
  end
  GLWW = -1
end

function o1()
  sr = gg.prompt({
    "输入身体变大值",
    "输入头盔大小"
  }, {"3.5", "1"})
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9990)
    gg.editAll(sr[1], gg.TYPE_FLOAT)
    gg.toast("实体巨人开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287;87.27782440186;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll(sr[2], gg.TYPE_FLOAT)
    gg.toast("头盔变大开启")
end

function o2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("巨人开启成功")
end

function o3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8.0782699585;1.0:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(700)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("人物上身变大开启成功")
end

function o4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13140678406;1;1;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.toast("人物大头开启成功")
end

function o5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("吉普浮空加速开启成功")
end

function o6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(45, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99996", gg.TYPE_FLOAT)
  gg.clearResults(1314520)
  gg.toast("吉普下水开启成功")
end

function o7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;50;40,000.0;40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(25)
  gg.editAll("980", gg.TYPE_FLOAT)
  gg.toast("蹦蹦浮空开启成功")
end

function o8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end

function o9()
  gg.clearResults()
  gg.searchNumber("0.001;49.9999961853;24.99999809265::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("轿车飞天开启成功")
end

function o10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.78125;200;200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开船上岸即可遁地")
end

function o11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-4000", gg.TYPE_FLOAT)
  gg.toast("下蹲飞天开启成功")
end

function o12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("2000", gg.TYPE_FLOAT)
  gg.toast("下蹲遁地已成功")
end

function o13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.123", gg.TYPE_FLOAT)
  gg.toast("人物2倍加速开启成功")
end

function o14()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20000;750;0.0001;0.0005\000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("全局加速已经开启 ")
end

function o15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20000;750;0.0001;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.0005", gg.TYPE_FLOAT)
  gg.toast("全局加速已关闭")
end

function o16()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("4.5",gg.TYPE_FLOAT)
  gg.toast("瞬移开启")
end

function o17()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;4.5F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("4.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("1",gg.TYPE_FLOAT)
  gg.toast("瞬移关闭")
end

function o18()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("2500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("超高跳不防摔开启成功.")
end

function o19()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("600", gg.TYPE_FLOAT)
  gg.toast("上帝模式开启成功")
end

function o20()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-90", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("黑夜模式开启成功")
end

function o21()
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

function o22()
  gg.setRanges(gg.REGION_C_BSS)
  gg.clearResults()
  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("子弹穿墙开启成功")
end

function o23()
  gg.toast("强制站立正在开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.30799e21F;-7.1614595e24F;0F;0.00001F;-1.3095104e25F;-3.3568104e27F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("强制站立开启完成")
end

function o24()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10000;20000::40", 4, false, 536870912, 0, -1)
  gg.searchNumber("10000", 4, false, 536870912, 0, -1)
  gg.getResults(500)
  gg.editAll("0", 4)
  gg.toast("灵魂出窍开启成功，解除隐身时把所有数值改为10000")
end

function Exit()
  print("关注哟")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = ""
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