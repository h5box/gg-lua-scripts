--脚本部分源码来自网络
--源码仅供参考
--这可能是最终版了
QCFZLB = gg.searchNumber
QCFZNB = gg.editAll
QCFZNP = gg.clearResults
TYJQ = "2.0;2,048.0;300.0;0.05000000075"
TYJS = "0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88"
XGJQ = "80"
XGJS = "2"
QCFZNP()
jiaqun =gg.alert("欢迎使用倾城辅最终版\n更新日志:已修复和谐功能\n\n\n           脚本均为免费 防止上当受骗\n                   反馈群:597968865\n\n","进入辅助","退出辅助")
if jiaqun == 1 then
end
if jiaqun == 2 then
  print("倾城辅助")
  os.exit()
end
QCFZNP()
gg.toast("欢迎使用倾城辅助")
function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end--[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function SearchWrite(Search, Write, Type)  QCFZNP()  gg.setVisible(false)  QCFZLB(Search[1][1], Type)  local count = gg.getResultCount()  local result = gg.getResults(count)  QCFZNP()  local data = {}   local base = Search[1][2]    if (count > 0) then    for i, v in ipairs(result) do      v.isUseful = true     end        for k=2, #Search do      local tmp = {}      local offset = Search[k][2] - base       local num = Search[k][1]             for i, v in ipairs(result) do        tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + offset         tmp[#tmp].flags = v.flags       end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do        if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end      end    end     for i, v in ipairs(result) do      if (v.isUseful) then         data[#data+1] = v.address      end    end        if (#data > 0) then      gg.toast("搜索到"..#data.."条数据")      local t = {}      local base = Search[1][2]      for i=1, #data do        for k, w in ipairs(Write) do          offset = w[2] - base          t[#t+1] = {}          t[#t].address = data[i] + offset          t[#t].flags = Type          t[#t].value = w[1]                   if (w[3] == true) then            local item = {}            item[#item+1] = t[#t]            item[#item].freeze = true            gg.addListItems(item)          end                 end      end      gg.setValues(t)    else      gg.toast("not found", false)      return false    end  else    gg.toast("Not Found")    return false  end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) QCFZNP() gg.setRanges(Neicun) gg.setVisible(false) QCFZLB(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {}  local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end  tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end  for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then  Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."")   gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end  local L0_0 L0_0 = 0 function SearchWrite(Search,Write,Type) QCFZNP() gg.setVisible(false) QCFZLB(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) QCFZNP() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end  function split(szFullString, szSeparator)  local nFindStartIndex = 1  local nSplitIndex = 1  local nSplitArray = {}  while true do  local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex)  if not nFindLastIndex then  nSplitArray[nSplitIndex] =  string.sub(szFullString, nFindStartIndex, string.len (szFullString))  break end  nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1)  nFindStartIndex = nFindLastIndex + string.len (szSeparator)  nSplitIndex = nSplitIndex + 1 end return  nSplitArray end  function xgxc(szpy, qmxg)  for x = 1, #(qmxg) do  xgpy = szpy + qmxg[x]["offset"]  xglx = qmxg[x]["type"]  xgsz = qmxg[x]["value"]  xgdj = qmxg[x]["freeze"]  if xgdj == nil or xgdj == "" then  gg.setValues({[1]  = {address = xgpy, flags = xglx, value = xgsz}})  else  gg.addListItems({[1]  = {address = xgpy, flags = xglx,  freeze = xgdj, value = xgsz}}) end  xgsl = xgsl + 1 xgjg = true end end  function xqmnb(qmnb)  QCFZNP()  gg.setRanges(qmnb[1]["memory"])  QCFZLB(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "开启失败")  else  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "开启失败")  else      sl = gg.getResults(999999)  sz = gg.getResultCount()      xgsl = 0 if sz > 999999 then  sz = 999999 end for i = 1, sz do  pdsz = true for v = 4, #(qmnb) do if  pdsz == true then  pysz = {} pysz[1]  = {} pysz[1].address  = sl[i].address + qmnb[v]["offset"] pysz[1].flags  = qmnb[v]["type"]  szpy = gg.getValues(pysz)  pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd  = split(pdpd, ";") tzszpd  = szpd[1] pyszpd = szpd[2]  if tzszpd == pyszpd then  pdjg = true pdsz = true else  pdjg = false pdsz = false end end end if  pdjg == true then szpy  = sl[i].address xgxc(szpy, qmxg) end end  if xgjg == true then  gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")  else  gg.toast(qmnb[2]["name"] .. "开启失败")  end  end  end  end function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]QCFZNP()gg.setRanges(_om)QCFZLB(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) QCFZNP() gg.setVisible(false) QCFZLB(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) QCFZNP() gg.setRanges(qmnb[1]["memory"]) QCFZLB(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(Search, Write, Type) QCFZNP()  gg.setVisible(false)  QCFZLB(Search[1][1], Type)  local count = gg.getResultCount()  local result = gg.getResults(count)  QCFZNP()  local data = {}   local base = Search[1][2]    if (count > 0) then    for i, v in ipairs(result) do      v.isUseful = true     end        for k=2, #Search do      local tmp = {}      local offset = Search[k][2] - base       local num = Search[k][1]             for i, v in ipairs(result) do        tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + offset         tmp[#tmp].flags = v.flags       end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do        if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("✨开启成功✨"..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("", false) return false end else gg.toast("") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then QCFZNP() gg.setRanges(memory) QCFZLB(array[1].lv .. "~" .. array[1].hv, datatype[1]) elseQCFZNP() gg.setRanges(memory) QCFZLB(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) QCFZNP() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) QCFZNP() gg.setRanges(qmnb[1]["memory"]) QCFZLB(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) QCFZNP() gg.setRanges(Neicun) gg.setVisible(false) QCFZLB(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {}  local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end  tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end  for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."搜索到"..#data.."条数据") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then  Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."已修改"..#t.."条数据")   gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("搜索失败") return false end end  bz=0  sj = (os.date("%Y年%m月%d日%H时%M分%S秒"))   if gg.getTargetPackage()=="com.tencent.iglite" and "com.tencent.iglitece" and "com.tencent.tmgp.pubgmhd" then QW="8" else QW="16384" end if QW=="8" then FF="国服/轻体/轻量版" else FF="国际/台服/日韩服/越南服/国体服" end function SearchWrite(Search, Write, Type) QCFZNP() gg.setVisible(false) QCFZLB(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条ΔΘ") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) QCFZNP() gg.setRanges(qmnb[1]["memory"]) QCFZLB(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(Search, Write, Type) QCFZNP() gg.setVisible(false) QCFZLB(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) QCFZNP() gg.setRanges(Neicun) gg.setVisible(false) QCFZLB(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) QCFZNP() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) QCFZNP() gg.setRanges(qmnb[1]["memory"]) QCFZLB(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
  menu = gg.choice({
    "透色功能",
    "自瞄功能",
    "大厅功能",
    "落地功能",
    "加速功能",
    "范围功能",
    "美化功能",
    "车辆功能",
    "退出脚本"},
  2020,"倾城辅助轻体最终版")
  if menu == 1 then A() end
  if menu == 2 then H() end
  if menu == 3 then B() end
  if menu == 4 then C() end
  if menu == 5 then D() end
  if menu == 6 then E() end
  if menu == 7 then F() end
  if menu == 8 then G() end
  if menu == 9 then Exit() end
  QXFZ=-1
end


--[[透视功能]]
function A()
  menu1 = gg.multiChoice({
    "骁龙4系列透视（红）",
    "联发科p23透视",
    "麒麟659透视（绿）",
    "联发科p10~p40人物透视",
    "骁龙（流畅）透视＋纯白",
    "骁龙通用上色红",
    "联发科p22透视",
    "联发科透视【处理器未知】",
    "返回上一页"},
  nil,"大厅开启")
  if menu1 == nil then else
    if menu1[1] == true then u1() end
    if menu1[2] == true then u2() end
    if menu1[3] == true then u3() end
    if menu1[4] == true then u4() end
    if menu1[5] == true then u5() end
    if menu1[6] == true then u6() end
    if menu1[7] == true then u7() end
    if menu1[8] == true then u8() end
    if menu1[9] == true then HOME() end
  end
  QXJJ=-1
end





--[[大厅功能]]
function B()
  menu1 = gg.multiChoice({
    "全枪无后",
    "全枪聚点",
    "全枪防抖",
    "全图除草",
    "恢复除草",
    "暴力全除",
    "恢复全除",
    "全局有伤大范围",
    "天空黑色",
    "返回上一页"},
  nil,"全局有效\n开启全局范围后无需开启其他范围")
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
    if menu1[10] == true then HOME() end
  end
  QXJJ=-1
end


--[[落地功能]]
function C()
  menu1 = gg.multiChoice({
    "腾云驾雾开[拉]（不防摔）",--1
    "人物高跳[拉]",--2
    "人物踏空[拉]",--3
    "子弹瞬击",--4
    "蛇皮跳跃",--5
    "隔墙自喵",--6
    "视角变大",--7
    "动作减速（仅动作减慢人物速度不变）",--8
    "s12k聚点",--9
    "喷子聚点【除s12k】",--10
    "下蹲飞天【无伤】",--11
    "下蹲浮空【无伤】",--12
    "头盔天线",--13
    "持枪天线",--14
    "脖子天线",--15
    "心脏天线",--16
    "地下天线",--17
    "击中特效",--18
    "激光无后[持枪开换枪重开]",--19
    "m416单枪无后",--20
    "人物爬墙",--21
    "反向跳跃",--22
    "98k无间隔",--23
    "m24无间隔",--24
    "AWM无间隔",--25
    "枪械瞬击[自选]",--26
    "蹲下向左路飞【玖月】",--27
    "蹲下向右后路飞【二改玖月】",--28
    "爬下向前上路飞【玖月】",--29
    "准心拉长【持枪开启】",--30
    "音效加强",--31
    "模拟器上帝视角",--32
    "返回上一页"},
  nil,"全部可用")
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
    if menu1[10] == true then f10() end
    if menu1[11] == true then f11() end
    if menu1[12] == true then f12() end
    if menu1[13] == true then f13() end
    if menu1[14] == true then f14() end
    if menu1[15] == true then f15() end
    if menu1[16] == true then f16() end
    if menu1[17] == true then f17() end
    if menu1[18] == true then f18() end
    if menu1[19] == true then f19() end
    if menu1[20] == true then f20() end
    if menu1[21] == true then f21() end
    if menu1[22] == true then f22() end
    if menu1[23] == true then f23() end
    if menu1[24] == true then f24() end
    if menu1[25] == true then f25() end
    if menu1[26] == true then f26() end
    if menu1[27] == true then f27() end
    if menu1[28] == true then f28() end
    if menu1[29] == true then f29() end
    if menu1[30] == true then f30() end
    if menu1[31] == true then f31() end
    if menu1[32] == true then f32() end
    if menu1[33] == true then HOME() end
  end
  QXJJ=-1
end


--[[加速功能]]
function D()
  menu1 = gg.multiChoice({
    "🚁秒下飞机[出生岛]",--1
    "✈️开伞秒下[出生岛]",--2
    "🏃‍人物超级瞬移（体验）",--3
    "🚶‍关闭超级加速（体验）",--4
    "🏃人物瞬移加速（体验）",--5
    "🚶‍关闭瞬移加速（体验）",--6
    "🏃冲锋枪全局加速（体验）",--7
    "🚶‍关闭冲锋枪全局（体验）",--8
    "🏃全局有伤加速（体验）",--9
    "🚶‍关闭有伤加速（体验）",--10
    "🏃人物仓库加速",--11
    "🚶‍关闭仓库加速",--12
    "🏃人物跳跃不拉回加速",--13
    "返回上一页"},
  nil,"加速拉回就关了")
  if menu1 == nil then else
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
    if menu1[14] == true then HOME() end
  end
  QXJJ=-1
end


--[[范围功能]]
function E()
  menu1 = gg.multiChoice({
    "☃️CD范围伤害[80米]",
    "☃️WKX范围伤害",
    "⛄变态范围伤害",
    "☃️周边物质检测",
    "⛄关闭物质检测",
    "返回上一页"},
  nil,"范围区（游戏开启）范围已更新")
  if menu1 == nil then else
    if menu1[1] == true then v5() end
    if menu1[2] == true then v1() end
    if menu1[3] == true then v2() end
    if menu1[4] == true then v3()end
    if menu1[5] == true then v4()end
    if menu1[6] == true then HOME() end
  end
  QXJJ=-1
end













--[[车辆功能]]
function G()
  menu1 = gg.multiChoice({
    "🚙吉普超级加速",
    "🚙轿车超级加速",
    "🚙蹦蹦超级加速",
    "🚙摩托超级加速",
    "🚙蹦蹦运气穿墙",
    "🚙全车零秒刹车",
    "🚙吉普大跳飞天",
    "🚙吉普大跳关闭",
    "🚙蹦蹦大跳飞天",
    "🚙蹦蹦大跳关闭",
    "🚙装甲大跳飞天",
    "🚙装甲大跳关闭",
    "🚙轿车大跳飞天",
    "🚙轿车大跳关闭",
    "返回上一页"},
  nil,"驾驶开启\n车辆大跳来自众生")
  if menu1 == nil then else
    if menu1[1] == true then g99() end
    if menu1[2] == true then g100() end
    if menu1[3] == true then g101()end
    if menu1[4] == true then g102() end
    if menu1[5] == true then g103() end
    if menu1[6] == true then g104() end
    if menu1[7] == true then qc13()end
    if menu1[8] == true then qc14()end
    if menu1[9] == true then qc15()end
    if menu1[10] == true then qc16()end
    if menu1[11] == true then qc17()end
    if menu1[12] == true then qc18()end
    if menu1[13] == true then qc19()end
    if menu1[14] == true then qc20()end
    if menu1[15] == true then HOME() end
  end
  QXJJ=-1
end






--[[自瞄功能]]
function H()
  menu1 = gg.multiChoice({
    "持枪QC自瞄",
    "持枪QC自瞄",
    "持枪圈圈自瞄",
    "关闭持枪圈圈",
    "开火圈圈自喵",
    "关闭开火圈圈",
    "返回上一页"},
  nil,"QC辅助\nQC自瞄狙击枪射手步枪等不会自瞄，仅步枪冲锋霰弹枪枪等会自瞄")
  if menu1 == nil then else
    if menu1[1] == true then k1() end
    if menu1[2] == true then k2() end
    if menu1[3] == true then k5() end
    if menu1[4] == true then k6() end
    if menu1[5] == true then k7() end
    if menu1[6] == true then k8() end
    if menu1[7] == true then HOME() end
  end
  QXJJ=-1
end














--[[车辆功能]]
function g99()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("0.647058857;0.30000001192;0.94117647409::9", 16, false, 536870912, 0, -1)
  QCFZLB("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  QCFZNB("110", 16)
  QCFZNP()
  gg.toast("吉普超级加速")
end
function g100()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  QCFZNB("-0.288", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("轿车超级加速")
end
function g101()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  QCFZNB("35", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("蹦蹦超级加速")
end
function g102()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  QCFZNB("30", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("摩托车超级加速")
end
function g103()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZNP()
  QCFZLB("982622900;1956496814;1112014847;1103626239", gg.TYPE_DWORD, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  QCFZLB("1956496814", gg.TYPE_DWORD, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("1091567616", gg.TYPE_DWORD)
  QCFZNP()
  gg.toast("蹦蹦穿墙")
end

function g104()
  QCFZNP()
  gg.setRanges(16)
  QCFZLB("20;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB("999999", gg.TYPE_FLOAT)
  gg.toast("秒刹车开启成功")
  QCFZNP()
end


function qc13()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.00055555557;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.00055555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("0.00455555557",gg.TYPE_FLOAT)
  gg.toast("开启成功")
  QCFZNP()
end



function qc14()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("0.00055555557",gg.TYPE_FLOAT)
  gg.toast("关闭成功")
  QCFZNP()
end



function qc15()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.00111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("0.04111111114",gg.TYPE_FLOAT)
  gg.toast("开启成功")
  QCFZNP()
end



function qc16()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("0.00111111114",gg.TYPE_FLOAT)
  gg.toast("关闭成功")
  QCFZNP()
end



function qc17()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.00016666666;;49.9999961853", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.00016666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("0.00416666666",gg.TYPE_FLOAT)
  gg.toast("开启成功")
  QCFZNP()
end



function qc18()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("0.00016666666",gg.TYPE_FLOAT)
  gg.toast("关闭成功")
  QCFZNP()
end

function qc19()
  QCFZNP()
  QCFZLB("0.00100000005;49.9999961853;24.99999809265::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.00100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.06100000005",gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("轿车飞天")
end



function qc20()
  QCFZNP()
  QCFZLB("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00100000005",gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("飞天关闭")
end





---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------





function u1()
  QCFZNP()
  gg.setRanges(1048576)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("480")---人物/车辆马赛克
  gg.getResults(100)
  QCFZNB("120", gg.TYPE_FLOAT)
  QCFZNP()
  gg.setRanges(1048576)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("800")---车辆透视
  gg.getResults(100)
  QCFZNB("120", gg.TYPE_FLOAT)
  QCFZNP()
  gg.setRanges(1048576)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("880")---人物透视
  gg.getResults(100)
  QCFZNB("120", gg.TYPE_FLOAT)
  gg.toast("骁龙4系列处理器人物透视已成功")
  QCFZNP()
  gg.setRanges(1048576)
  QCFZLB("8196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("8196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("B0")---单值上色
  gg.getResults(100)
  QCFZNB("3", gg.TYPE_DWORD)
  gg.toast("骁龙4系列处理器人物红色已成功")
end

function u2()
  qmnb = {
    {["memory"] = gg.REGION_C_ALLOC},
    {["name"] = "p23透视开启"},
    {["value"] = 360, ["type"] = gg.TYPE_DWORD},
    {["lv"] = 52, ["offset"] = -4, ["type"] = gg.TYPE_DWORD},
  }
  qmxg = {
    {["value"] = 1, ["offset"] = 0, ["type"] = gg.TYPE_DWORD},
  }
  xqmnb(qmnb)
  QCFZNP()
  gg.setRanges(gg.REGION_C_ALLOC)
  QCFZLB("2;2;56;16;-8", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  QCFZNB("24",gg.TYPE_DWORD)
  gg.toast("p23上色开启成功")
end

function u3()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "麒麟透视开启"},
    {["value"] = 0.5, ["type"] = 16},
    {["lv"] = 0.5, ["offset"] = 0, ["type"] = 16},
    {["lv"] =0.5, ["offset"] = 16, ["type"] = 16},
    {["lv"] =0.00782680511, ["offset"] = 52, ["type"] = 16},
    {["lv"] = 0.00782680511, ["offset"] = 56, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
    {["value"] = 1, ["offset"] = 16, ["type"] = 16, ["freeze"] = true},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "人物绿色开启"},
    {["value"] = 40, ["type"] = 4},
    {["lv"] = 6, ["offset"] = 4, ["type"] = 4},
    {["lv"] = 6, ["offset"] = 36, ["type"] = 4},
    {["lv"] = 40, ["offset"] = 0, ["type"] = 4},
    {["lv"] = 30, ["offset"] = 60, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 28, ["offset"] = -20, ["type"] = 4},
  }
  xqmnb(qmnb)
end

function u4()
  QCFZNP()
  gg.setRanges(16384 | 8 | 4)
  QCFZLB("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0", gg.TYPE_FLOAT)
  QCFZNP()
  gg.setRanges(4)
  QCFZLB("1065353216;925410615;-1082131351;1077533056;0;1077936128;1087775063::133", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1077936128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("318")
  jg=gg.getResults(10)
  sl=gg.getResultCount()
  if sl>10 then sl=10
  end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1125515264}})
  end
  gg.toast("联发科P22～35处理器人物透视已成功")
  QCFZNP()
  gg.setRanges(4)
  QCFZLB("122;54;1;55;1;1;56;1;2;57;1;34;8::512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("CC")
  QCFZLB("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("32", gg.TYPE_DWORD)
  gg.toast("联发科P22～35处理器人物染色已成功")
end

function u5()
  QCFZNP()
  gg.setRanges(1048576)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("480")
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  QCFZNB("180", gg.TYPE_FLOAT)
  gg.toast("马赛克开启成功")
  QCFZNP()
  gg.setRanges(1048576)
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchAddress("880")
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  QCFZNB("180", gg.TYPE_FLOAT)
  gg.toast("透明＋白色开启成功")
end

function u6()
  QCFZNP()
  gg.setRanges(gg.REGION_VIDEO)
  QCFZLB("538,968,080A;538,968,081A;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("6", gg.TYPE_DWORD)
  gg.toast("通用微红色开启成功")
end
function u7()
  ---冻结写法---
  QCFZNP()
  gg.setRanges(4) ---↓搜索数据
  QCFZLB("1.30534994602F;0.56855899096F;0.00060000003F;12,000.0F;0.00003F;3.0F:517", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)---改善数据---
  gg.searchAddress("18")---蒙版改善---
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address ---↓修改数据
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
  end
  gg.toast("联发科p22人物透视已成功")
  ---↓普通写法[非冻结]
  QCFZNP()---内存范围---
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-294,802,802", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)---搜索数据---
  gg.getResults(100)---修改前多少条数据---
  QCFZNB("0", gg.TYPE_DWORD)---修改值---

  for i=1,3 do---代表搜索修改三次---
    QCFZNP()---↓多选内存范围---
    gg.setRanges(16384 | 8 | 4)
    QCFZLB("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    QCFZNB("0", gg.TYPE_FLOAT)
    QCFZNP()
  end
  gg.toast("联发科p22人物透视防闪已成功")
end

function u8()
  QCFZNP()---↓多选内存范围---
  gg.setRanges(16384 | 8 | 4)
  QCFZLB("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0", gg.TYPE_FLOAT)
  QCFZNP()
  u55()
end

function u55()
  QCFZNP()
  gg.setRanges(gg.REGION_C_ALLOC)
  QCFZLB("0;-1;2;1;2;1;0;-127;0.24022650719;2;0::521", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("人物透视开启失败")
   else
    QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    QCFZNB("120", gg.TYPE_FLOAT)
    gg.toast("联发科透视已开启")
    QCFZNP()
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  QCFZLB("2;-1;50;1;-1;-0.33299461007;0.99999558926;-0.12123910338;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("全图除树开启失败")
   else
    QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    QCFZNB("-2", gg.TYPE_FLOAT)
    gg.toast("全图除树成功")
    QCFZNP()
  end
end





---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------




















--[[大厅功能]]
function b1()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-6,196,952,597,921,662,448", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(15)
  QCFZNB("-6,196,952,601,930,498,048",gg.TYPE_QWORD)
  gg.toast("全枪无后座已成功")
  QCFZNP()
end
function b2()
  Name = "聚点"
  gg.setRanges(QW)
  local dataType = 16--地址C9E6E7A8和C9E6E7A0
  local search = {{-6.171871492066637E27, 0},{-3.868563083935415E25, -8},}
  local modify = {{0, -8},{0, 4},}
  SearchWrite(search,modify,dataType,Name)
end
function b3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("7.0062189E22;3.9928675E24;3.9413961E12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("7.0062189e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(111)
  QCFZNB("0", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("开镜防抖已开启")
end
function b4()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("4,590,068,740,425,724,723", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  QCFZNB("4,590,068,742,429,853,100",gg.TYPE_QWORD)
  gg.toast("全图除草已成功")
  QCFZNP()
end
function b5()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("4,590,068,742,429,853,100", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  QCFZNB("4,590,068,740,425,724,723",gg.TYPE_QWORD)
  gg.toast("全图除草已恢复")
  QCFZNP()
end
function b6()
QCFZNP()
gg.setRanges(gg.REGION_CODE_APP)
QCFZLB("0.5;0.5;0.5", 16,false,gg.SIGN_EQUAL,0, -1)
QCFZLB("0.5", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
QCFZNB("-2",16)
gg.toast("QC--原创全除")
end 
function b7()   
QCFZNP()
gg.setRanges(gg.REGION_CODE_APP)
QCFZLB("-2;-2;-2", 16,false,gg.SIGN_EQUAL,0, -1)
QCFZLB("-2", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
QCFZNB("0.5",16)
gg.toast("QC--原创全除")
end
function b8()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("0.10000000149F;64.50088500977F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("50",gg.TYPE_FLOAT)
  gg.toast("XA范围完成")
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  QCFZNB("222", gg.TYPE_FLOAT)
  QCFZLB("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  QCFZNB("2002.6", gg.TYPE_FLOAT)
  gg.toast("头部大范围开启成功"..sj)
  QCFZNP()
end
function b9()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},--天空黑
{["value"] = -1908364243426537469, ["type"] = 32},
{["lv"] = 0, ["offset"] = 96, ["type"] = 4},
}
qmxg = {
{["value"] = -1222130260, ["offset"] = 96, ["type"] = 4},
}
xqmnb(qmnb)
end








---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------












--[[落地功能]]
function f1()
  jiaqun =gg.alert("欢迎使用倾城辅助最终版\n腾云驾雾 最好不要开","开启","关闭")
  if jiaqun == 1 then
    QCFZNP()
    gg.setRanges(gg.REGION_ANONYMOUS)
    QCFZLB("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    QCFZLB("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    QCFZNB("6", gg.TYPE_FLOAT)
    gg.toast("腾云驾雾开启成功")
    QCFZNP()
  end
  if jiaqun == 2 then
    QCFZNP()
    gg.setRanges(gg.REGION_ANONYMOUS)
    QCFZLB("6;4,000.0F;0.30000001192F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    QCFZLB("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    QCFZNB("-980", gg.TYPE_FLOAT)
  end
end





function f2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  QCFZNB("1000", gg.TYPE_FLOAT)
  gg.toast("人物高跳已开启成功")
  QCFZNP()
end





function f3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  QCFZNB("999", gg.TYPE_FLOAT)
  gg.toast("人物踏空已开启")
  QCFZNP()
end





function f4()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("36000~99999;3D;0.1;1D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("36000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("10000000", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("全枪瞬击已成功")
end





function f5()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("2.0;2,048.0;300.0;0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("50", gg.TYPE_FLOAT)
  gg.toast("跳起来在空中左右动就可看出效果")
  QCFZNP()
end





function f6()
  QCFZNP()    
  gg.setRanges(gg.REGION_C_BSS)   
  QCFZLB("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)    
  QCFZLB("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)    
  if gg.getResultCount() == 2 then
  QCFZNP()
  gg.setRanges(gg.REGION_C_BSS)
  QCFZLB("869,711,765D;-10;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("-10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  QCFZNB("2", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("你已经开启过隔墙了哦！\n以帮你关闭了哦！\n修改2条数据")
  else
  gg.getResults(2)   
  QCFZNB("-10", gg.TYPE_FLOAT)    
  gg.toast("开启隔墙成功！\n修改2条数据")
end
end





function f7()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZNP()
  QCFZLB("220;178;15 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  QCFZNB("1200", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("bt视角已开启")
end





function f8()
QCFZNP()
gg.setRanges(gg.REGION_CODE_APP)
QCFZLB("0.0001;0::16", 16,false,gg.SIGN_EQUAL,0, -1)
QCFZLB("0", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(200)
QCFZNB("2.6",16)
QCFZNP()
gg.toast("动作减速成功")
end



function f9()
  gg.alert("不要装配件哦！（s12k）")
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1.79999995232;1.79999995232;4;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0", gg.TYPE_FLOAT)
  gg.toast("S12K聚点开启成功")
end




function f10()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("4.2038954e-45;12.0;18.0;3.5;1.1509145e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("12.0;18.0;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  QCFZNB("0", gg.TYPE_FLOAT)
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1.39999997616;1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  QCFZNB("0", gg.TYPE_FLOAT)
  gg.toast("S1897聚点和s686聚点")
  QCFZNP()
end

function f11()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1500", gg.TYPE_FLOAT)
  gg.toast("蹲下飞天已开启")
  QCFZNP()
end

function f12()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("35.02524185181;-0.20633073151;9.49029350281;8.11522674561", gg.TYPE_FLOAT)
  QCFZLB("35.02524185181", gg.TYPE_FLOAT)
  gg.getResults(200)
  QCFZNB("200", gg.TYPE_FLOAT)
  gg.toast("人物浮空开启成功")
  QCFZNP()
end


function f13()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  QCFZNB("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("头盔天线开启成功")
end

function f14()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("18.38613319397F;0.53447723389F;3.42665576935F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("18.38613319397", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  QCFZNB("8888", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("已开启25％")
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("7.13142681122;0.53447723389;22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("9621", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("已开启50％")
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZNP()
  QCFZLB("0.53446006775F;-1.68741035461F:501", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("-1.68741035461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1995)
  QCFZNB("9999", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("已开启75％")
  QCFZLB("18.38612365723F;0.54026412964F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("18.38612365723F;0.54026412964F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1995)
  QCFZNB("9999", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("已开启100％")
  gg.toast("人物天线开启成功")
end

function f15()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  QCFZNB("16123", gg.TYPE_FLOAT)
  gg.toast("脖子天线开启成功")
  QCFZNP()
end

function f16()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.9378669858F;1.0F;0.61365610361F::55", 16, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("9999", 16)
  gg.toast("心脏天线开启成功")
  QCFZNP()
end

function f17()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  QCFZNB("-999", gg.TYPE_FLOAT)
  gg.toast("人物地线开启成功")
  QCFZNP()
end

function f18()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("9999", gg.TYPE_FLOAT)
  gg.toast("击中特效")
  QCFZNP()
end

function f19()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1,084,227,584D;1D;0.64999997616F;1.2520827e-32F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.2520827e-32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("1.4012985e-43", gg.TYPE_FLOAT)
  gg.toast("正在开启防抖")
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  QCFZNB("0", gg.TYPE_FLOAT)
  gg.toast("激光无后开启成功")
  QCFZNP()
end

function f20()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("0.80000001192;0.33000001311;0.55000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.55000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB("0", gg.TYPE_FLOAT)
  gg.toast("m4无后开启成功")
  QCFZNP()
end


function f21()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1;35;443~1000;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  QCFZNB("5000", gg.TYPE_FLOAT)
  gg.toast("人物爬墙已开启成功")
  QCFZNP()
end


function f22()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("2.0;2,048.0;300.0;0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-9999", gg.TYPE_FLOAT)
  gg.toast("反向跳跃成功")
  QCFZNP()
end



function f23()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("76000;1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00001", gg.TYPE_FLOAT)
  gg.toast("98k连发开启成功")
  QCFZNP()
end


function f24()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("79000;1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00001", gg.TYPE_FLOAT)
  gg.toast("M24连发开启成功")
  QCFZNP()
end

function f25()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("91,000.0F;2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.00001", gg.TYPE_FLOAT)
  gg.toast("AWM连发开启成功")
  QCFZNP()
end

function f26()
  menu1 = gg.multiChoice({
    "M416",
    "AKM",
    "SCAR",
    "M16A4",
    "98K",
    "M24",
    "AWM",
    "弓弩",
    "VSS",
    "QBZ",
    "UMP9",
    "SKS",
    "mini14",
    "冲锋枪",
    "返回主页",
    "返回上一页"},
  nil,"瞬击=子弹瞬间击中无飞行时间")
  if menu1 == nil then else
    if menu1[1] == true then XXJ1() end
    if menu1[2] == true then XXJ2() end
    if menu1[3] == true then XXJ3() end
    if menu1[4] == true then XXJ4() end
    if menu1[5] == true then XXJ5() end
    if menu1[6] == true then XXJ6() end
    if menu1[7] == true then XXJ7() end
    if menu1[8] == true then XXJ8() end
    if menu1[9] == true then XXJ9() end
    if menu1[10] == true then XXJ10() end
    if menu1[11] == true then XXJ11() end
    if menu1[12] == true then XXJ12() end
    if menu1[13] == true then XXJ13() end
    if menu1[14] == true then XXJ14() end
    if menu1[15] == true then Main() end
    if menu1[16] == true then C() end
  end
  QXJJ=-1
end
function XXJ1()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("88000;4.2038953929745e-44;1.4012984643248e-44::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", gg.TYPE_FLOAT)
  gg.toast("m416瞬击开启成功")
  QCFZNP()
end
function XXJ2()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("71500;4.2038953929745e-44;0.10000000149012::", 16, false, 536870912, 0, -1)
  QCFZLB("71500", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", 16)
  gg.toast("ak瞬击开启成功")
  QCFZNP()
end
function XXJ3()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("87000;4.2038953929745e-44;1.4012984643248e-44::", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  QCFZNB("700000", 16)
  gg.toast("sc瞬击开启成功")
  QCFZNP()
end
function XXJ4()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("25000;40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("500000", gg.TYPE_FLOAT)
  gg.toast("M16瞬击开启成功")
  QCFZNP()
end
function XXJ5()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("76000;7.0064923216241e-45;1.8999999761581;1.4012984643248e-45;4.2038953929745e-45::", 16, false, 536870912, 0, -1)
  QCFZLB("76000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", 16)
  gg.toast("98k瞬击开启成功")
  QCFZNP()
end
function XXJ6()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("79000;7.0064923216241e-45;2.8025969286496e-45::", 16, false, 536870912, 0, -1)
  QCFZLB("79000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", 16)
  gg.toast("m24瞬击开启成功")
  QCFZNP()
end
function XXJ7()
  QCFZNP()
  gg.setRanges(gg.REGION_BAD)
  QCFZLB("91000;2.2;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("700000", gg.TYPE_FLOAT)
  gg.toast("awm瞬击开启成功")
  QCFZNP()
end
function XXJ8()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("16000;0.075000002980232;0.10000000149012::", 16, false, 536870912, 0, -1)
  QCFZLB("16000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("600000", 16)
  gg.toast("弓弩瞬击开启成功")
  QCFZNP()
end
function XXJ9()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("33000;0.085600003600121::", 16, false, 536870912, 0, -1)
  QCFZLB("33000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("600000", 16)
  gg.toast("vss瞬击开启成功")
  QCFZNP()
end
function XXJ10()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("87000;4.2038953929745e-44;1.4012984643248e-44::", 16, false, 536870912, 0, -1)
  QCFZLB("87000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", 16)
  gg.toast("qbz瞬击开启成功")
  QCFZNP()
end
function XXJ11()
  QCFZNP()
  gg.setRanges(gg.REGION_BAD)
  QCFZLB("40000;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("600000", gg.TYPE_FLOAT)
  gg.toast("ump9瞬击开启成功")
  QCFZNP()
end
function XXJ12()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("80000;1.4012984643248e-44;1.4012984643248e-44::", 16, false, 536870912, 0, -1)
  QCFZLB("80000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", 16)
  gg.toast("sks瞬击开启成功")
  QCFZNP()
end
function XXJ13()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("99000;2.8025969286496e-44;1.4012984643248e-44::", 16, false, 536870912, 0, -1)
  QCFZLB("99000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  QCFZNB("700000", 16)
  gg.toast("mini瞬击开启成功")
  QCFZNP()
end
function XXJ14()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(800)
  QCFZNB("500000", gg.TYPE_FLOAT)
  gg.toast("冲锋枪瞬击开启成功")
  QCFZNP()
end

function f27()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("2,810,246,175,001,347,936", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  QCFZNB("2,810,246,172,909,699,072", 32)
  gg.toast("下蹲向左路飞开启成功")
  QCFZNP()
end

function f28()
  QCFZNP()
  gg.setRanges(32)
  QCFZLB("2,810,246,175,001,347,936", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  QCFZNB("2,810,246,175,059,347,936", 32)
  gg.toast("下蹲向右后路飞开启成功")
  QCFZNP()
end



function f29()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "趴下路飞"},
    {["value"] = 2810246175001366052, ["type"] = 32},
    {["lv"] = -4585985877963386208, ["offset"] = -4, ["type"] = 32},
    {["lv"] = 4725145529921568769, ["offset"] = -12, ["type"] = 32},
    {["lv"] = 1657324668220623667, ["offset"] = -16, ["type"] = 32},
    {["lv"] = 4523948511320578354, ["offset"] = -20, ["type"] = 32},
  }
  qmxg = {
    {["value"] = 4542111809958182912, ["offset"] = -8, ["type"] = 32},
    {["value"] = -5022076533339455488, ["offset"] = 64, ["type"] = 32},
  }
  xqmnb(qmnb)
end


function f30()
qmnb = {
{["memory"] = 32},
{["name"] = "准心拉长"},
{["value"] = 16, ["type"] = 16},
{["lv"] = 4, ["offset"] = -4, ["type"] = 16},
{["lv"] = 8, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end


function f31()
QCFZNP()
gg.setRanges(gg.REGION_CODE_APP)
QCFZLB("0.05", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
QCFZNB("-0.002",16)
gg.toast("音效增强成功")
end


function f32()
  jiaqun =gg.alert("欢迎使用倾城辅助最终版\n模拟器上帝视角 最好不要开","开启","关闭")
  if jiaqun == 1 then
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("88;60;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("60;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  QCFZNB("-100", gg.TYPE_FLOAT)
  gg.toast("模拟器同款上帝视角已开启")
  QCFZNP()
  end
  if jiaqun == 2 then
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("88;-100;-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("-100;-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("60;50", gg.TYPE_FLOAT)
  gg.toast("模拟器同款上帝视角已关闭")
  QCFZNP()
  end
end



  
  
  

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------







--[[范围伤害功能]]
function v5()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("0.10000000149F;64.50088500977F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  QCFZNB("80",gg.TYPE_FLOAT)
  gg.toast("XA小范围完成")
  QCFZNP()
end

function v1()
-----WKX范围------
gg.setRanges(32)--子弹范围
local dataType = 16
local Name ="子弹范围"
local tb1 = {{1119194409, 0}, {-1028559596, 4}, {1090519040, 8}, {1098907648, 12}, }
local tb2 = {{1259902591, 12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)--身体范围
local dataType = 4
local Name ="头部范围"
local tb1 = {{952173300, 0}, {1103626240, 20}, {1106509824, 24}, }
local tb2 = {{295, 20}, {295, 24}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 4
local Name ="身体范围"
local tb1 = {{-1028565751, 0}, {1098907648, 4}, {1104150528, 8}, }
local tb2 = {{-1009319936, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 4
local Name ="身体范围2"
local tb1 = {{-1028556113, 0}, {1099956224, 4}, {1105199104, 8}, }
local tb2 = {{-1006338048, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 4
local Name ="全身范围"
local tb1 = {{1116405760, 0}, {1107558400, -4}, {1108082688, -8}, }
local tb2 = {{1132920832, 0}, {1124204544, -4}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local search = {{9.201618194580078, 0},{9.203507215715945E-5, 8},{23.0, 24},}
local modify = {{240, 28},{240, 32},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
end





function v2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  QCFZNB("30000", gg.TYPE_FLOAT)
  QCFZLB("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  QCFZNB("666666.6", gg.TYPE_FLOAT)
  gg.toast("头部大范围开启成功"..sj)
  QCFZNP()
end





function v3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT)
  QCFZLB("200", gg.TYPE_FLOAT)
  gg.getResults(200)
  QCFZNB("1000", gg.TYPE_FLOAT)
  gg.toast("物资探测开启成功")
  QCFZNP()
end




function v4()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("80.0F;60.0F;5.0F;1000.0F;20,000.0F", gg.TYPE_FLOAT)
  QCFZLB("1000", gg.TYPE_FLOAT)
  gg.getResults(200)
  QCFZNB("200", gg.TYPE_FLOAT)
  gg.toast("全地图物资探测关闭成功")
  QCFZNP()
end







---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------








--[[美化功能]]
function c1()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("101004001",gg.TYPE_DWORD)
  gg.toast("M416改粉红兔")
  QCFZNP()
end


function c2()
  QCFZNP()
  QCFZLB("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101004015",gg.TYPE_DWORD)
  gg.toast("M416改赤橙")
  QCFZNP()
end



function c3()
  QCFZNP()
  QCFZLB("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101004014",gg.TYPE_DWORD)
  gg.toast("M416改科技")
  QCFZNP()
end




function c4()
  QCFZNP()
  QCFZLB("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1,101,004,010",gg.TYPE_DWORD)
  gg.toast("M416改军用复古版")
  QCFZNP()
end



function c5()
  QCFZNP()
  QCFZLB("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101003001",gg.TYPE_DWORD)
  gg.toast("SCAR-L改狂怒")
  QCFZNP()
end



function c6()
  QCFZNP()
  QCFZLB("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101003018",gg.TYPE_DWORD)
  gg.toast("SCAR-L改赤橙")
  QCFZNP()
end


function c7()
  QCFZNP()
  QCFZLB("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101003015",gg.TYPE_DWORD)
  gg.toast("SCAR-L改科技")
  QCFZNP()
end



function c8()
  QCFZNP()
  QCFZLB("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101003014",gg.TYPE_DWORD)
  gg.toast("SCAR-L改蓝色小奶牛")
  QCFZNP()
end



function c9()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001007",gg.TYPE_DWORD)
  gg.toast("AKM改黄金")
  QCFZNP()
end



function c10()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001006",gg.TYPE_DWORD)
  gg.toast("AKM改赤诚")
  QCFZNP()
end


function c11()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001005",gg.TYPE_DWORD)
  gg.toast("AKM改蓝海") QCFZNP()
end



function c12()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001004",gg.TYPE_DWORD)
  gg.toast("AKM改浅蓝色") QCFZNP()
end


function c13()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001003",gg.TYPE_DWORD)
  gg.toast("AKM改红色") QCFZNP()
end



function c14()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001002",gg.TYPE_DWORD)
  gg.toast("AKM改浅金色") QCFZNP()
end

function c15()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001001",gg.TYPE_DWORD)
  gg.toast("AKM改龙") QCFZNP()
end




function c16()
  QCFZNP()
  QCFZLB("10100200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101002019",gg.TYPE_DWORD)
  gg.toast("M16A4改少女心") QCFZNP()
end

function c17()
  QCFZNP()
  QCFZLB("10100200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("101,002,002",gg.TYPE_DWORD)
  gg.toast("M16A4改少女心") QCFZNP()
end



function c18()
  QCFZNP()
  QCFZLB("10100200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101002002",gg.TYPE_DWORD)
  gg.toast("M16A4改红白") QCFZNP()
end


function c19()
  QCFZNP()
  QCFZLB("10100500",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101005002",gg.TYPE_DWORD)
  gg.toast("GROZA改蓝海") QCFZNP()
end



function c20()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101006003",gg.TYPE_DWORD)
  gg.toast("AUG改血魔") QCFZNP()
end




function c21()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101006001",gg.TYPE_DWORD)
  gg.toast("AUG改蓝色骷髅💀") QCFZNP()
end




function c22()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101007001",gg.TYPE_DWORD)
  gg.toast("QBZ改蓝海") QCFZNP()
end




function c23()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101007002",gg.TYPE_DWORD)
  gg.toast("QBZ改紫色涂鸦") QCFZNP()
end



function c24()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101007003",gg.TYPE_DWORD)
  gg.toast("QBZ改红色涂鸦") QCFZNP()
end


function c25()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1,101,007,010",gg.TYPE_DWORD)
  gg.toast("QBZ改金色") QCFZNP()
end



function c26()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101008016",gg.TYPE_DWORD)
  gg.toast("M762改珊瑚金") QCFZNP()
end



function c27()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101008015",gg.TYPE_DWORD)
  gg.toast("M762改浅珊瑚金") QCFZNP()
end


function c28()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101008014",gg.TYPE_DWORD)
  gg.toast("M762改惨叫鸡") QCFZNP()
end



function c29()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100900",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101009001",gg.TYPE_DWORD)
  gg.toast("MK47改少女心") QCFZNP()
end


function c30()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001001",gg.TYPE_DWORD)
  gg.toast("AKM改龙") QCFZNP()
end


function c31()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001003",gg.TYPE_DWORD)
  gg.toast("98K改金龙") QCFZNP()
end


function c32()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001005",gg.TYPE_DWORD)
  gg.toast("98K改沙漠灰") QCFZNP()
end

function c33()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001007",gg.TYPE_DWORD)
  gg.toast("98K改血魔") QCFZNP()
end

function c34()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001009",gg.TYPE_DWORD)
  gg.toast("98K改赤橙") QCFZNP()
end

function c35()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001010",gg.TYPE_DWORD)
  gg.toast("98K改少女心") QCFZNP()
end

function c36()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001011",gg.TYPE_DWORD)
  gg.toast("98K改蓝海") QCFZNP()
end

function c37()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001013",gg.TYPE_DWORD)
  gg.toast("98K改黄金") QCFZNP()
end


function c38()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103001006",gg.TYPE_DWORD)
  gg.toast("98K改白狼") QCFZNP()
end


function c39()
  QCFZNP()
  QCFZLB("10300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1,103,001,014",gg.TYPE_DWORD)
  gg.toast("98K改迷彩") QCFZNP()
end



function c40()
  QCFZNP()
  QCFZLB("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103003002",gg.TYPE_DWORD)
  gg.toast("AWM改霓虹") QCFZNP()
end


function c41()
  QCFZNP()
  QCFZLB("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103003001",gg.TYPE_DWORD)
  gg.toast("AWM改迷彩") QCFZNP()
end




function c42()
  QCFZNP()
  QCFZLB("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103003004",gg.TYPE_DWORD)
  gg.toast("AWM改冰雪") QCFZNP()
end


function c43()
  QCFZNP()
  QCFZLB("10300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103003006",gg.TYPE_DWORD)
  gg.toast("AWM改灰皮") QCFZNP()
end




function c44()
  QCFZNP()
  QCFZLB("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103004004",gg.TYPE_DWORD)
  gg.toast("SKS改蓝海") QCFZNP()
end

function c45()
  QCFZNP()
  QCFZLB("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103004003",gg.TYPE_DWORD)
  gg.toast("SKS改沙漠灰") QCFZNP()
end




function c46()
  QCFZNP()
  QCFZLB("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103004002",gg.TYPE_DWORD)
  gg.toast("SKS改迷彩") QCFZNP()
end

function c47()
  QCFZNP()
  QCFZLB("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103004017",gg.TYPE_DWORD)
  gg.toast("SKS改可爱甜心") QCFZNP()
end




function c48()
  QCFZNP()
  QCFZLB("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103004018",gg.TYPE_DWORD)
  gg.toast("SKS改幻影") QCFZNP()
end


function c49()
  QCFZNP()
  QCFZLB("10300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103004016",gg.TYPE_DWORD)
  gg.toast("SKS改黄金") QCFZNP()
end



function c50()
  QCFZNP()
  QCFZLB("10300600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1103006002",gg.TYPE_DWORD)
  gg.toast("MINI14改摇滚") QCFZNP()
end




function c51()
  QCFZNP()
  QCFZLB("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102001004",gg.TYPE_DWORD)
  gg.toast("UZI改街头小子") QCFZNP()
end




function c52()
  QCFZNP()
  QCFZLB("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102001001",gg.TYPE_DWORD)
  gg.toast("UZI改沙漠灰") QCFZNP()
end




function c53()
  QCFZNP()
  QCFZLB("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102001019",gg.TYPE_DWORD)
  gg.toast("UZI改科技") QCFZNP()
end



function c54()
  QCFZNP()
  QCFZLB("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102001021",gg.TYPE_DWORD)
  gg.toast("UZI改新科技") QCFZNP()
end

function c55()
  QCFZNP()
  QCFZLB("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102001023",gg.TYPE_DWORD)
  gg.toast("UZI改赤热者") QCFZNP()
end


function c56()
  QCFZNP()
  QCFZLB("10200100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102001004",gg.TYPE_DWORD)
  gg.toast("UZI改街头小子") QCFZNP()
end

function c57()
  QCFZNP()
  QCFZLB("10200200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102002003",gg.TYPE_DWORD)
  gg.toast("UMP9改绿茵") QCFZNP()
end


function c58()
  QCFZNP()
  QCFZLB("10200300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102003001",gg.TYPE_DWORD)
  gg.toast("Vector改紫兔") QCFZNP()
end

function c59()
  QCFZNP()
  QCFZLB("10200300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1102003002",gg.TYPE_DWORD)
  gg.toast("Vector改蓝海") QCFZNP()
end

function c60()
  QCFZNP()
  QCFZLB("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101001001",gg.TYPE_DWORD)
  gg.toast("AKM改龙") QCFZNP()
end


function c61()
  QCFZNP()
  QCFZLB("10400200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1104002004",gg.TYPE_DWORD)
  gg.toast("S1897改黄金") QCFZNP()
end


function c62()
  QCFZNP()
  QCFZLB("10400300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1104003003",gg.TYPE_DWORD)
  gg.toast("S12K改凋零者") QCFZNP()
end
function c63()
  QCFZNP()
  QCFZLB("10400300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1104003002",gg.TYPE_DWORD)
  gg.toast("S12K改迷彩") QCFZNP()
end

function c64()
  QCFZNP()
  QCFZLB("10500100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1105001001",gg.TYPE_DWORD)
  gg.toast("M249改凋零者") QCFZNP()
end

function c65()
  QCFZNP()
  QCFZLB("10500100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1105001002",gg.TYPE_DWORD)
  gg.toast("M249改赤热红") QCFZNP()
end

function c66()
  QCFZNP()
  QCFZLB("10600100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1106001001",gg.TYPE_DWORD)
  gg.toast("P92改沙漠灰") QCFZNP()
end

function c67()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004001",gg.TYPE_DWORD)
  gg.toast("平底锅改烈焰") QCFZNP()
end

function c68()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004002",gg.TYPE_DWORD)
  gg.toast("平底锅改蛋") QCFZNP()
end
function c69()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004003",gg.TYPE_DWORD)
  gg.toast("平底锅改子弹孔") QCFZNP()
end

function c70()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004004",gg.TYPE_DWORD)
  gg.toast("平底锅改禁止") QCFZNP()
end


function c71()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004005",gg.TYPE_DWORD)
  gg.toast("平底锅改红血") QCFZNP()
end


function c72()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004006",gg.TYPE_DWORD)
  gg.toast("平底锅改粉尘") QCFZNP()
end

function c73()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004007",gg.TYPE_DWORD)
  gg.toast("平底锅改胸章") QCFZNP()
end

function c74()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004008",gg.TYPE_DWORD)
  gg.toast("平底锅改白银") QCFZNP()
end



function c75()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004009",gg.TYPE_DWORD)
  gg.toast("平底锅改靶子") QCFZNP()
end


function c76()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004010",gg.TYPE_DWORD)
  gg.toast("平底锅改熊猫") QCFZNP()
end


function c77()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004015",gg.TYPE_DWORD)
  gg.toast("平底锅改美国") QCFZNP()
end

function c78()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004011",gg.TYPE_DWORD)
  gg.toast("平底锅改骷髅头") QCFZNP()
end
function c79()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004012",gg.TYPE_DWORD)
  gg.toast("平底锅改鸡🐔") QCFZNP()
end



function c80()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004017",gg.TYPE_DWORD)
  gg.toast("平底锅改涂鸦") QCFZNP()
end


function c81()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004018",gg.TYPE_DWORD)
  gg.toast("平底锅改三级头") QCFZNP()
end


function c82()
  QCFZNP()
  QCFZLB("10800400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108004016",gg.TYPE_DWORD)
  gg.toast("平底锅改证") QCFZNP()
end


function c83()
  QCFZNP()
  QCFZLB("10800200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1108002003",gg.TYPE_DWORD)
  gg.toast("撬棍改国王拐杖") QCFZNP()
end


function c84()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("10100700",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("1101007012",gg.TYPE_DWORD)
  gg.toast("QBZ改青天") QCFZNP()
end









---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------













function e1()
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
          gg.toast("跳伞加速开启成功")
        end
      end
    end
  end
end






function e2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("600;555;300;2000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("600", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-10000", gg.TYPE_FLOAT)
  gg.toast("开伞加速成功")
  QCFZNP()
end




function e3()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1328550408728725571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1328550408578138112", gg.TYPE_QWORD)
  gg.toast("超级加速开启成功")
  QCFZNP()
end




function e4()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1328550408578138112", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1328550408728725571", gg.TYPE_QWORD)
  gg.toast("关闭成功")
  QCFZNP()
end


function e5()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("3",gg.TYPE_FLOAT)
  gg.toast("瞬移已开启")
  QCFZNP()
end

function e6()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;3F;1,065,353,216D::218", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1",gg.TYPE_FLOAT)
  gg.toast("瞬移已关闭")
  QCFZNP()
end



function e7()
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "开启中"
    },
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1.8,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
  QCFZNP()
  gg.toast("不拉回开启中")
  qmnb = {
    {["memory"] = 32},
    {["name"] = "开启成功"},
    {["value"] = 479.5, ["type"] = 16},
    {["lv"] = 1, ["offset"] = -16, ["type"] = 16},
    {["lv"] = 1, ["offset"] = -12, ["type"] = 16},
    {["lv"] = 1, ["offset"] = -8, ["type"] = 16},
    {["lv"] = 479.5, ["offset"] = 4, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 60, ["offset"] = -8, ["type"] = 16},

  }
  xqmnb(qmnb)
  QCFZNP()
  gg.toast("爆改冲锋加速不拉回开启")
end
function e8()
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
  QCFZNP()
  gg.toast("不拉回关闭中")
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "关闭成功"
    },
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  QCFZNP()
  gg.toast("爆改冲锋不拉回已关闭")
end

function e9()
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1228926273201366462", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("-1228926276669014016",gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1296621004581303606", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("-1296621008567926784",gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1328550408728725571", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("-1328550408578809201",gg.TYPE_QWORD)
  QCFZNP()
  gg.toast("全局加速成功")
end


function e10()
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1228926276669014016", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("-1228926273201366462",gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1296621008567926784", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("-1296621004581303606",gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-1328550408578809201", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("-1328550408728725571",gg.TYPE_QWORD)
  QCFZNP()
  gg.toast("全局加速已关闭")
end
function e11()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1228926273126264269", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB("-1296744153870237696", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1585267064848315881", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1585267068834414592", gg.TYPE_QWORD)
  gg.toast("开启成功")
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1328550408728725571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1328550408590000000", gg.TYPE_QWORD)
  gg.toast("仓库加速开启成功")
  QCFZNP()
end
function e12()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1228926273126264269", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  QCFZNB("-1296744153870237696", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1585267064848315881", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1585267068834414592", gg.TYPE_QWORD)
  gg.toast("开启成功")
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1328550408590000000", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("-1328550408728725571", gg.TYPE_QWORD)
  gg.toast("仓库加速关闭成功")
  QCFZNP()
end




function e13()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB(""..TYJQ, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB(""..XGJQ, gg.TYPE_FLOAT)
  gg.toast("加强跳跃（空中拐弯）")
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("防拉回开启成功")
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_C_DATA)
  QCFZLB("-6.15264497e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("防拉回开启成功")
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB(""..TYJS, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB(""..XGJS, gg.TYPE_FLOAT)
  gg.toast("跳跃加速开启成功")
  --这个不止跳跃加速了（蹲 爬 跳 开镜走路 在水里走）
  --所以尽量不要一直蹲着或者趴着
end





































---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

--[[美化功能]]
function F()
  menu1 = gg.multiChoice({
    "🌼枪械美化",
    "🌼衣服美化",
    "🌼车辆美化",
    "🌼倍镜美化",
    "🌼头盔美化",
    "🌼背包美化",
    "🌼降落伞美化",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then TYZT() end
    if menu1[2] == true then FG() end
    if menu1[3] == true then FX() end
    if menu1[4] == true then BJ() end
    if menu1[5] == true then FR() end
    if menu1[6] == true then TYZT() end
    if menu1[7] == true then JLS() end
    if menu1[8] == true then HOME() end
  end
  QXJJ=-1
end


function JLS()
  menu1 = gg.multiChoice({
    "降落伞--s1",
    "降落伞--s2",
    "降落伞--s3",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then jls1() end
    if menu1[2] == true then jls2() end
    if menu1[3] == true then jls3() end
    if menu1[4] == true then Main() end
    if menu1[5] == true then F() end
  end
  QXJJ=-1
end
function jls1()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("703001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("703001;703001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("703013",gg.TYPE_DWORD)
  gg.toast("s1降落伞成功")
  QCFZNP()
end
function jls2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("703001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("703001;703001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("703014",gg.TYPE_DWORD)
  gg.toast("s2降落伞成功")
  QCFZNP()
end
function jls3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("703001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("703001;703001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("703015",gg.TYPE_DWORD)
  gg.toast("s3降落伞成功")
  QCFZNP()
end





function FX()
  menu1 = gg.multiChoice({
    "吉普美化-老爷车",
    "吉普美化-火焰战车",
    "吉普美化-军用迷彩",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then jpmh1() end
    if menu1[2] == true then jpmh2() end
    if menu1[3] == true then jpmh3() end
    if menu1[4] == true then Main() end
    if menu1[5] == true then F() end
  end
  QXJJ=-1
end


function FR()
  menu1 = gg.multiChoice({
    "御灵师[开启一套]",--1
    "一级头",--2
    "二级头",--3
    "三级头",--4
    "地狱骑士[开启一套]",--5
    "一级头",--6
    "二级头",--7
    "三级头",--8
    "咆哮南瓜[开启一套]",--9
    "一级头",--10
    "二级头",--11
    "三级头",--12
    "冰雪[开启一套]",--13
    "一级头",--14
    "二级头",--15
    "三级头",--16
    "返回上一页"},--17
  nil,"大厅开启（已测试）\n美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then zs1() end
    if menu1[2] == true then zs2() end
    if menu1[3] == true then zs3() end
    if menu1[4] == true then zs4() end
    if menu1[5] == true then zs5() end
    if menu1[6] == true then zs6() end
    if menu1[7] == true then zs7() end
    if menu1[8] == true then zs8() end
    if menu1[9] == true then zs9() end
    if menu1[10] == true then zs10() end
    if menu1[11] == true then zs11() end
    if menu1[12] == true then zs12() end
    if menu1[13] == true then zs13() end
    if menu1[14] == true then zs14() end
    if menu1[15] == true then zs15() end
    if menu1[16] == true then zs16() end
    if menu1[17] == true then HOME() end
  end
  QXJJ=-1
end
function zs2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502001;502001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502001069",gg.TYPE_DWORD)
  gg.toast("一级头开启成功")
  QCFZNP()
end
function zs3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502002;502002::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502002069",gg.TYPE_DWORD)
  gg.toast("二级头开启成功")
  QCFZNP()
end
function zs4()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502003;502003::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502003069", gg.TYPE_DWORD)
  gg.toast("三级头开启成功")
  QCFZNP()
end
function zs6()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502001;502001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502001014",gg.TYPE_DWORD)
  gg.toast("一级头开启成功")
  QCFZNP()
end
function zs7()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502002;502002::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502002014",gg.TYPE_DWORD)
  gg.toast("二级头开启成功")
  QCFZNP()
end
function zs8()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502003;502003::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502003014",gg.TYPE_DWORD)
  gg.toast("三级头开启成功")
  QCFZNP()
end
function zs10()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502001;502001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502001018",gg.TYPE_DWORD)
  gg.toast("一级头开启成功")
  QCFZNP()
end
function zs11()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502002;502002::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502002018",gg.TYPE_DWORD)
  gg.toast("二级头开启成功")
  QCFZNP()
end
function zs12()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502003;502003::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502003018",gg.TYPE_DWORD)
  gg.toast("三级头开启成功")
  QCFZNP()
end
function zs14()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502001", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502001;502001::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502001055",gg.TYPE_DWORD)
  gg.toast("一级头开启成功")
  QCFZNP()
end
function zs15()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502002", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502002;502002::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502002055",gg.TYPE_DWORD)
  gg.toast("二级头开启成功")
  QCFZNP()
end
function zs16()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("502003", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("502003;502003::16", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  QCFZNB("1502003055",gg.TYPE_DWORD)
  gg.toast("三级头开启成功")
  QCFZNP()
end
function zs1()
  zs2() zs3() zs4()
end
function zs5()
  zs6() zs7() zs8()
end
function zs9()
  zs10() zs11() zs12()
end
function zs13()
  zs14() zs15() zs16()
end

function FT()
  gg.alert("敬请期待((≡ຶ̑ꀬ≡ຶ̑))")
end






function QXYT()
  menu1 = gg.multiChoice({
    "---M416---",--1
    "---M16A4---",--2
    "---AKM---",--3
    "---CSAR-L---",--4
    "---狗砸AUG---",--5
    "---QBZ---",--6
    "---M762---",--7
    "---MK47---",--8
    "-------狙击枪---------",--9
    "---98k---",--10
    "---AWM---",--11
    "-------射手步枪---------",--12
    "---MINI14---",--13
    "---SKS---",--14
    "-------冲锋枪---------",--15
    "---UZI---",--16
    "---UMP45---",--17
    "---Vector---",--18
    "-------其他枪---------",--19
    "---喷子m249---",--20
    "---近战武器---",--21
    "返回主页",--22
    "返回上一页"},
  nil,"大厅开启,QC辅助\n美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then qx1() end
    if menu1[2] == true then qx2() end
    if menu1[3] == true then qx3() end
    if menu1[4] == true then qx4() end
    if menu1[5] == true then qx5() end
    if menu1[6] == true then qx6() end
    if menu1[7] == true then qx7() end
    if menu1[8] == true then qx8() end
    if menu1[9] == true then qx9() end
    if menu1[10] == true then qx10() end
    if menu1[11] == true then qx11() end
    if menu1[12] == true then qx12() end
    if menu1[13] == true then qx13() end
    if menu1[14] == true then qx14() end
    if menu1[15] == true then qx15() end
    if menu1[16] == true then qx16() end
    if menu1[17] == true then qx17() end
    if menu1[18] == true then qx18() end
    if menu1[19] == true then qx19() end
    if menu1[20] == true then qx20() end
    if menu1[21] == true then qx21() end
    if menu1[22] == true then Main() end
    if menu1[23] == true then F() end
  end
  QXJJ=-1
end

function qx1()
  menu1 = gg.multiChoice({
    "m416--黄金",
    "m416--冰雪",
    "m416--霓虹",
    "m416--红黄",
    "m416--粉兔",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nm416美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then m4161() end
    if menu1[2] == true then m4162() end
    if menu1[3] == true then m4163() end
    if menu1[4] == true then m4164() end
    if menu1[5] == true then m4165() end
    if menu1[6] == true then Main() end
    if menu1[7] == true then QXYT() end
  end
  QXJJ=-1
end


function qx2()
  menu1 = gg.multiChoice({
    "m16a4--粉色",
    "m16a4--海蓝",
    "m16a4--红白",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nm16a4美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then m16a41() end
    if menu1[2] == true then m16a42() end
    if menu1[3] == true then m16a43() end
    if menu1[4] == true then Main() end
    if menu1[5] == true then QXYT() end
  end
  QXJJ=-1
end


function qx3()
  menu1 = gg.multiChoice({
    "AKM--黄金",
    "AKM--咖啡黄",
    "AKM--赤诚",
    "AKM--海蓝",
    "AKM--红魔",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nAKM美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then AKM1() end
    if menu1[2] == true then AKM2() end
    if menu1[3] == true then AKM3() end
    if menu1[4] == true then AKM4() end
    if menu1[5] == true then AKM5() end
    if menu1[6] == true then Main() end
    if menu1[7] == true then QXYT() end
  end
  QXJJ=-1
end

function qx4()
  menu1 = gg.multiChoice({
    "死噶--赤诚",
    "死噶--蓝牛",
    "死噶--科技紫",
    "死噶--黄白",
    "死噶--骷髅头",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n死噶美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then siga1() end
    if menu1[2] == true then siga2() end
    if menu1[3] == true then siga3() end
    if menu1[4] == true then siga4() end
    if menu1[5] == true then siga5() end
    if menu1[6] == true then Main() end
    if menu1[7] == true then QXYT() end
  end
  QXJJ=-1
end

function qx5()
  menu1 = gg.multiChoice({
    "狗砸--海蓝",
    "AUG--红色",
    "AUG--骷髅头",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nAUG狗砸美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then gzaug1() end
    if menu1[2] == true then gzaug2() end
    if menu1[3] == true then gzaug3() end
    if menu1[4] == true then Main() end
    if menu1[5] == true then QXYT() end
  end
  QXJJ=-1
end


function qx6()
  menu1 = gg.multiChoice({
    "QBZ--紫色",
    "QBZ--红色",
    "QBZ--金色",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nQBZ美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then QBZ1() end
    if menu1[2] == true then QBZ2() end
    if menu1[3] == true then QBZ3() end
    if menu1[4] == true then Main() end
    if menu1[5] == true then QXYT() end
  end
  QXJJ=-1
end

function qx7()
  menu1 = gg.multiChoice({
    "m762--黄鸡",
    "m762--珊瑚金",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nm762美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then m7621() end
    if menu1[2] == true then m7622() end
    if menu1[3] == true then Main() end
    if menu1[4] == true then QXYT() end
  end
  QXJJ=-1
end

function qx8()
  menu1 = gg.multiChoice({
    "mk47--粉色",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nmk47美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then mk47() end
    if menu1[2] == true then Main() end
    if menu1[3] == true then QXYT() end
  end
  QXJJ=-1
end

function qx10()
  menu1 = gg.multiChoice({
    "98K--金龙",
    "98K--沙漠灰",
    "98K--血魔",
    "98K--赤橙",
    "98K--少女心",
    "98K--蓝海",
    "98K--黄金",
    "98K--白狼",
    "98K--迷彩",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n98k美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then m980() end
    if menu1[2] == true then m981() end
    if menu1[3] == true then m982() end
    if menu1[4] == true then m983() end
    if menu1[5] == true then m984() end
    if menu1[6] == true then m985() end
    if menu1[7] == true then m986() end
    if menu1[8] == true then m987() end
    if menu1[9] == true then m988() end
    if menu1[10] == true then Main() end
    if menu1[11] == true then QXYT() end
  end
  QXJJ=-1
end

function qx11()
  menu1 = gg.multiChoice({
    "AWM--迷彩",
    "AWM--冰雪",
    "AWM--霓虹",
    "AWM--灰皮",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nawm美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then AWM1() end
    if menu1[2] == true then AWM2() end
    if menu1[3] == true then AWM3() end
    if menu1[4] == true then AWM4() end
    if menu1[5] == true then Main() end
    if menu1[6] == true then QXYT() end
  end
  QXJJ=-1
end

function qx13()
  menu1 = gg.multiChoice({
    "mini--摇滚",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nmini14美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then mini1() end
    if menu1[2] == true then Main() end
    if menu1[3] == true then QXYT() end
  end
  QXJJ=-1
end

function qx14()
  menu1 = gg.multiChoice({
    "SKS--蓝海",
    "SKS--沙漠灰",
    "SKS--迷彩",
    "SKS--可爱甜心",
    "SKS--幻影",
    "SKS--黄金",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nsks美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then sks1() end
    if menu1[2] == true then sks2() end
    if menu1[3] == true then sks3() end
    if menu1[4] == true then sks4() end
    if menu1[5] == true then sks5() end
    if menu1[6] == true then sks6() end
    if menu1[7] == true then Main() end
    if menu1[8] == true then QXYT() end
  end
  QXJJ=-1
end

function qx16()
  menu1 = gg.multiChoice({
    "UZI--街头小子",
    "UZI--沙漠灰",
    "UZI--科技",
    "UZI--新科技",
    "UZI--赤热者",
    "UZI--街头小子",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nUZI美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then uzi1() end
    if menu1[2] == true then uzi2() end
    if menu1[3] == true then uzi3() end
    if menu1[4] == true then uzi4() end
    if menu1[5] == true then uzi5() end
    if menu1[6] == true then uzi6() end
    if menu1[7] == true then Main() end
    if menu1[8] == true then QXYT() end
  end
  QXJJ=-1
end


function qx17()
  menu1 = gg.multiChoice({
    "UMP45--绿茵",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nUMP美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then ump1() end
    if menu1[2] == true then Main() end
    if menu1[3] == true then QXYT() end
  end
  QXJJ=-1
end


function qx18()
  menu1 = gg.multiChoice({
    "Vector--紫兔",
    "Vector--蓝海",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\nVector美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then vkd1() end
    if menu1[2] == true then vkd2() end
    if menu1[3] == true then Main() end
    if menu1[4] == true then QXYT() end
  end
  QXJJ=-1
end


function qx20()
  menu1 = gg.multiChoice({
    "S1897--黄金",
    "S12K--凋零者",
    "S12K--迷彩",
    "M249--凋零者",
    "M249--赤热红",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n喷子美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then qzjq1() end
    if menu1[2] == true then qzjq2() end
    if menu1[3] == true then qzjq3() end
    if menu1[4] == true then qzjq4() end
    if menu1[5] == true then qzjq5() end
    if menu1[6] == true then Main() end
    if menu1[7] == true then QXYT() end
  end
  QXJJ=-1
end


function qx21()
  menu1 = gg.multiChoice({
    "平底锅--冰雪",
    "平底锅--小鸡",
    "平底锅--靶子",
    "平底锅--激光靶",
    "撬棍--国王拐杖",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n近战武器美化没效果的请下载资源包")
  if menu1 == nil then else
    if menu1[1] == true then jzwq1() end
    if menu1[2] == true then jzwq2() end
    if menu1[3] == true then jzwq3() end
    if menu1[4] == true then jzwq4() end
    if menu1[5] == true then jzwq5() end
    if menu1[6] == true then Main() end
    if menu1[7] == true then QXYT() end
  end
  QXJJ=-1
end


















function FG()
  menu1 = gg.multiChoice({
    "和平精英小白衣",--1
    "酷炫灯条套装",--2
    "小黄鸡套装",--3
    "制服裙子套装",--4
    "白色盔甲套装",--5
    "国服粉兔套装【需下载资源包】",--6
    "咖啡裙子套装【需下载资源包】",--7
    "粉色裙子套装",--8
    "兔女郎套装【需下载资源包】",--9
    "花仙子套装",--10
    "白色裙子套装",--11
    "水晶套装",--12
    "红色连衣帽套装",--13
    "运动套装",--14
    "身法套装（小白衣+s1裤子）",--15
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助,暂时无法恢复\n游戏资源问题可能美化没效果\n若无效果请下载资源包【大厅设置最下面】")
  if menu1 == nil then else
    if menu1[1] == true then XXS1() end
    if menu1[2] == true then XXS2() end
    if menu1[3] == true then XXS3() end
    if menu1[4] == true then XXS4() end
    if menu1[5] == true then XXS5() end
    if menu1[6] == true then XXS6() end
    if menu1[7] == true then XXS7() end
    if menu1[8] == true then XXS8() end
    if menu1[9] == true then XXS9() end
    if menu1[10] == true then XXS10() end
    if menu1[11] == true then XXS11() end
    if menu1[12] == true then XXS12() end
    if menu1[13] == true then XXS13() end
    if menu1[14] == true then XXS14() end
    if menu1[15] == true then XXS15() end
    if menu1[16] == true then Main() end
    if menu1[17] == true then F() end
  end
  QXJJ=-1
end

function XXS1()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("403005",gg.TYPE_DWORD)
  gg.toast("和平精英小白衣")
  QCFZNP()
end
function XXS2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405073",gg.TYPE_DWORD)
  gg.toast("酷炫灯条套装")
  QCFZNP()
end
function XXS3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405170",gg.TYPE_DWORD)
  gg.toast("可爱小鸡套装")
  QCFZNP()
end
function XXS4()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405057",gg.TYPE_DWORD)
  gg.toast("制服裙子套装")
  QCFZNP()
end
function XXS5()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405058",gg.TYPE_DWORD)
  gg.toast("白色盔甲套装")
  QCFZNP()
end
function XXS6()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405127",gg.TYPE_DWORD)
  gg.toast("国服粉兔套装")
  QCFZNP()
end
function XXS7()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405005",gg.TYPE_DWORD)
  gg.toast("咖啡群子套装")
  QCFZNP()
end
function XXS8()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405206",gg.TYPE_DWORD)
  gg.toast("粉色裙子套装")
  QCFZNP()
end
function XXS9()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405123",gg.TYPE_DWORD)
  gg.toast("兔女郎套装")
  QCFZNP()
end
function XXS10()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405132",gg.TYPE_DWORD)
  gg.toast("国服春夏套装")
  QCFZNP()
end
function XXS11()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405034",gg.TYPE_DWORD)
  gg.toast("白色裙子套装")
  QCFZNP()
end
function XXS12()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405222",gg.TYPE_DWORD)
  gg.toast("水晶套装")
  QCFZNP()
end
function XXS13()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405155",gg.TYPE_DWORD)
  gg.toast("红色连衣帽套装")
  QCFZNP()
end
function XXS14()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1405182",gg.TYPE_DWORD)
  gg.toast("运动套装")
  QCFZNP()
end
function XXS15()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("404031",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("404031;404031::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(20)
  QCFZNB("404049",gg.TYPE_DWORD)
  gg.toast("裤子美化成功（1/2）")
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("403007",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  QCFZLB("403007;403007::16",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("403005",gg.TYPE_DWORD)
  gg.toast("和平精英小白衣(2/2)")
  QCFZNP()
end







function jpmh1()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1908001",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1908013",gg.TYPE_DWORD)
  gg.toast("吉普美化1成功")
  QCFZNP()
end

function jpmh2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1908001",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1908009",gg.TYPE_DWORD)
  gg.toast("吉普美化2成功")
  QCFZNP()
end

function jpmh3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("1908001",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("1908016",gg.TYPE_DWORD)
  gg.toast("吉普美化3成功")
  QCFZNP()
end

function BJ()
  menu1 = gg.multiChoice({
    "四倍改八倍",
    "红点改四倍",
    "红点改八倍",
    "全息改四倍",
    "二倍改八倍",
    "返回主页",
    "返回上一页"},
  nil,"大厅开启,QC辅助\n提示:四倍改八倍后其他倍镜就无法改四倍哦！可以选择不改四倍，或者都改八倍")
  if menu1 == nil then else
    if menu1[1] == true then bjxg1() end
    if menu1[2] == true then bjxg2() end
    if menu1[3] == true then bjxg3() end
    if menu1[4] == true then bjxg4() end
    if menu1[5] == true then bjxg5() end
    if menu1[6] == true then Main() end
    if menu1[7] == true then F() end
  end
  QXJJ=-1
end
function bjxg1()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("20300400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("20300500",gg.TYPE_DWORD)
  gg.toast("四倍改八倍成功")
  QCFZNP()
end
function bjxg2()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("20300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("20300400",gg.TYPE_DWORD)
  gg.toast("红点改四倍成功")
  QCFZNP()
end
function bjxg3()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("20300100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("20300500",gg.TYPE_DWORD)
  gg.toast("红点改八倍成功")
  QCFZNP()
end
function bjxg4()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("20300200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("20300400",gg.TYPE_DWORD)
  gg.toast("全息改四倍成功")
  QCFZNP()
end
function bjxg5()
  QCFZNP()
  gg.setRanges(gg.REGION_ANONYMOUS)
  QCFZLB("20300300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  QCFZNB("20300500",gg.TYPE_DWORD)
  gg.toast("二倍改八倍成功")
  QCFZNP()
end






---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------



--[[自瞄功能]]
function k1()
    QCFZNP()
    gg.setRanges(gg.REGION_CODE_APP)
    QCFZLB("-1905726136855492093", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    QCFZNB("-1905726136855492092", gg.TYPE_QWORD)
    gg.toast("加大范围开启成功")
    QCFZNP()
    gg.setRanges(gg.REGION_CODE_APP)
    QCFZLB("-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    QCFZLB("-476,053,504",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    QCFZNB("-476,053,503",gg.TYPE_DWORD)
    gg.toast("持枪自瞄开启成功")
    QCFZNP()
    QCFZNP()
    gg.setRanges(gg.REGION_CODE_APP)
    QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    QCFZNB("9999", gg.TYPE_FLOAT)
    gg.toast("QC--自瞄锁身开启完成")
    QCFZNP()
end




function k2()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1905726136855492092", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("-1905726136855492093", gg.TYPE_QWORD)
  QCFZNP()
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("9999;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.0001", gg.TYPE_FLOAT)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-528,482,303;-308,344,315;-309,323,264;-476,053,503;-290,186,560;-286,131,696;-1,023,410,175:25",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("-476,053,503",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  QCFZNB("-476,053,504",gg.TYPE_DWORD)
  gg.toast("持枪自瞄关闭成功成功")
  QCFZNP()
end


function k5()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("-476,053,504",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  QCFZNB("-476,053,503",gg.TYPE_DWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1905726136855492093", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("-1905726136855492092", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1901891198734303227", 32, false, 536870912, 0, -1)
  gg.getResults(1)
  QCFZNB("-1901891198902075392", 32)
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("9999", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("持枪圈圈开启成功~")
end





function k6()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  QCFZLB("-476,053,504",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  QCFZNB("-476,053,503",gg.TYPE_DWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1905726136855492092", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("-1905726136855492093", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1901891198902075392", 32, false, 536870912, 0, -1)
  gg.getResults(1)
  QCFZNB("-1901891198734303227", 32)
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("9999;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.0001", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("持枪圈圈关闭成功~")
end





function k7()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1905726136855492093", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("-1905726136855492092", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1901891198734303227", 32, false, 536870912, 0, -1)
  gg.getResults(1)
  QCFZNB("-1901891198902075392", 32)
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("9999", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("开火圈圈开启成功~")
end




function k8()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1905726136855492092", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  QCFZNB("-1905726136855492093", gg.TYPE_QWORD)
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("-1901891198902075392", 32, false, 536870912, 0, -1)
  gg.getResults(1)
  QCFZNB("-1901891198734303227", 32)
  QCFZNP()
  QCFZNP()
  gg.setRanges(gg.REGION_CODE_APP)
  QCFZLB("9999;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  QCFZLB("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  QCFZNB("0.0001", gg.TYPE_FLOAT)
  QCFZNP()
  gg.toast("开火圈圈关闭成功~")
end



function k9()
  gg.alert("无法获取功能 等待更新新功能")
end

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------

---------------------------------------分界线---------------------------------------------





function TYZT()
gg.alert("此功能正在维护中~敬请期待~")
Main()
end

function Exit()
  print("❤💚倾城辅助💚❤")
  os.exit()
end
function HOME()
  lw=1
  Main()
end

bb ={} if bb == gx1 then else gxjb={} if gxjb==1 then goto exit else if gxjb==2 then gg.fullName = gg.getFile() gg.path = gg.fullName:gsub("[^/]+$","") gg.name = gg.fullName:match ("[^/]+$") gg.randomName = "" gg.outPath = gg.path file = gg.outPath .. "[NQ]" .. gg.name .. gg.randomName .. "" os.remove(gg.getFile(),"w") gg.outFile = io.open(file, "w") gg.outFile:write(gg.makeRequest(gx2).content) gg.outFile:close() goto exit else goto exit end end end while(true) do end ::exit::

while(true)do
  if gg.isVisible(true) then
    QXFZ=1
    gg.setVisible(false)
  end
  QCFZNP()
  if QXFZ==1 then
    Main()
  end
end

--[[倾城辅助]]
---------------------------------------国际分界线---------------------------------------------

---------------------------------------国际分界线---------------------------------------------

---------------------------------------国际分界线---------------------------------------------

---------------------------------------国际分界线---------------------------------------------

---------------------------------------国际分界线---------------------------------------------

---------------------------------------国际分界线---------------------------------------------

---------------------------------------国际分界线---------------------------------------------



