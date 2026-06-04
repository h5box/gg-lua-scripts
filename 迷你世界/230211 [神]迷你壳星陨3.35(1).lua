---©2022-2023©星陨辅助-星陨
---版权©属于星陨 请勿二改和盗卖
---本脚本原创无二改
--贩卖死
-------[[★辅助配置★]]
 function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end function getso(So_name) return gg.getRangesList(So_name)[1].start end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2]   if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false  end end end  for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then   gg.toast("\n注入"..#data.."条数据")  local t = {} local base = Search[1][2] for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base t[#t+1] = {}  t[#t].address = data[i] + offset   t[#t].flags = Type   t[#t].value = w[1] if (w[3] == true) then local item = {}  item[#item+1] = t[#t] item[#item].freeze = true  gg.addListItems(item) end  end   end gg.setValues(t) else gg.toast("\n开启失败", false) return false end else gg.toast("\n开启失败")return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n注入" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end lde={} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function so(a,b,c) local cSN=gg.getRanges()  lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3] then b[p][3]=a[4] end lode[p][i].flags=b[p][3] end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2] then db[2]=db[1] end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSN) if p>11 then p=11 end return a[1].."开启失败" end count=lope lope={} end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3] then c[i][3]=a[4] end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true else if c[i][4]==2 then lobe[#lobe].freeze=false end end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSN) return a[1].."开启成功" else lde.srg(cSN) return a[1].."开启失败" end end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {}local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then   gg.toast("搜索到"..#data.."条数据") local t = {}   local base = Search[1][2]   for i=1, #data do   for k, w in ipairs(Write) do   offset = w[2] - base   t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = Type t[#t].value = w[1]   if (w[3] == true) then local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast("not found", false)return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,已注入" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit)local ti = gg.getTargetInfo()local S_list = getRanges()local _Q = tonumber(0x167ba0fe)local t = {} local _t local _S = nil if ti_bit then _t = 32 else	_t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '') if N_So[1] == _N and N_So[2] == S_list[i].state then	_S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then	S[_].value = S[_].value & 0xFFFFFFFF	end	t[#t + 1] = {}	t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end	_S = t[#t].address print(string.char(231,190,164,58).._Q)end return _S	end	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))return _A end recover=gg.getResults(100000) function AppSearch(SSNR,XGNR,BCNR,notWrite)  gg.clearResults()  gg.setRanges(SSNR["M"])  gg.searchNumber(SSNR[1]["mv"],SSNR[1]["lx"],false,gg.SIGN_EQUAL,(SSNR[1]["addr"] or nil),(SSNR[1]["toAddr"] or nil))  jg=gg.getResults(100000)  local base=(SSNR[1]["offs"] or 0)  local data={}  if #jg==0 then gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or ""))gg.loadResults(recover)return nil  end  for i=1,#jg do jg[i].Useful=true  end for k=2,#SSNR do  if not SSNR[k] then break  end  local content={}  local offset=SSNR[k]["offs"]-base  local value=SSNR[k]["sv"]  local type=SSNR[k]["lx"] local to=(SSNR[k]["to"] or value)  local num={}  if to<value then to,value=value,to  end  for i=1,#jg do if jg[i].Useful==true then  table.insert(content,{}) content[#content].address=jg[i].address+offset content[#content].flags=type num[#num+1]=i end end if #content==0 then gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or "")) gg.loadResults(recover) return nil end content=gg.getValues(content)for i,v in pairs(content) do if tonumber(v.value)<tonumber(value) or tonumber(v.value)>tonumber(to) then jg[num[i]].Useful=false end end end for j=1,#jg do  if jg[j].Useful==true then data[#data+1]=jg[j].address  end end  if #data==0 then gg.toast("功能名:"..(SSNR.name or "无").."\n".."修改失败\n"..(SSNR["error"] or ""))gg.loadResults(recover)return nil  end  if notWrite==true then gg.loadResults(recover)return data  end  if XGNR then  local write={}  for i=1,#data do for j=1,#XGNR do  write[#write+1]={} write[#write].address=data[i]+(XGNR[j][2]-base) write[#write].flags=XGNR[j][3]  write[#write].value=XGNR[j][1]  write[#write].freeze=XGNR[j][4]  write[#write].name=XGNR[j][5] or nil  if write[#write].freeze==true then gg.addListItems({[1]=write[#write]}) else gg.setValues({[1]=write[#write]})end if XGNR[j][6]==true then gg.addListItems({[1]=write[#write]})end end end end if BCNR then local bc={}for j=1,#data do for i=1,#BCNR do bc[#bc+1]={}bc[#bc].address=data[j]+(BCNR[i][1]-base)bc[#bc].flags=BCNR[i][2]bc[#bc].name=BCNR[i][3]end end gg.addListItems(bc)end gg.toast("功能名:"..(SSNR.name or "无").."\n".."[修改成功]")gg.loadResults(recover)end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local cSN=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSN)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSN) return a[1].."开启成功" else lde.srg(cSN) return a[1].."开启失败!!!" end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function readPointer(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end function fastsearch(search, write)gg.setVisible(false)gg.clearResults()gg.setRanges(search[1][3])gg.searchNumber(search[1][1], search[1][2])if gg.getResultsCount() == 0 then return false else local result = gg.getResults(gg.getResultsCount())gg.clearResults()for i = 2, #search do local mtp = {}for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }end mtp = gg.getValues(mtp)local hook = {}for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w]end end result = hook end if #result > 0 then local tb = {{}, {}}for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}if vv[4] then table.insert(tb[2], p)else table.insert(tb[1], p)end end end gg.addListItems(tb[2])gg.setValues(tb[1])gg.toast("修改成功注入了" .. (#tb[1] + #tb[2]) .. "条数据")else end end end 
-------[[★原创防御专区★]]
--[[防出源码]]--if gg.PACKAGE == "com.hckeam.mjgql" then os.exit() ILOVEYOU() else end X=os.time() for i=1,100 do gg.searchNumber("🛡禁止开源🛡") end Y=os.time() if Y-X>5 then os.exit() ILOVEYOU() end abc ={} abc.last = gg.getFile() abc.data = loadfile(abc.last) abc.cpp = abc.data if abc.cpp ~= nil then abc.data = nil ppb = abc.last:match("[^/]+$") ppi = "lohhhggg" pu = gg.getResults(5000) os.rename("" .. abc.last .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "") prt = loadfile("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "") if prt ~= nil then os.rename("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppb .. "") while true do os.exit() ILOVEYOU() end end end EAG,Tool=gg.searchNumber,nil InTo,to=string.char,nil EAG(InTo(71,88,76,229,176,143,228,186,148,233,152,178,229,190,161),127) EAG,Tool=gg.searchNumber,nil EAG(InTo(71,88,76,229,176,143,228,186,148)) InTo,to=string.char,nil EAG,Tool=gg.searchNumber,nil
--[[拦截检测]]--time=os.time() gg.searchNumber(2,4) if gg.getResultCount()<8000 then while true do os.exit() end end t1=gg.getResults(10000) time=os.time() for i=1,10 do gg.loadResults(t1); if gg.isVisible()==false then print("请勿离开修改器页面") while true do os.exit() end end end gg.clearResults(); if os.time()-time>=3.2 then print("请勿离开修改器页面") while true do os.exit() end end file=io.open("/storage/emulated/0/TFX.lua","w")if file==nil then gg.alert("请勿离开修改器页面")shcf()else os.remove("/storage/emulated/0/TFX.lua")file=io.open("/storage/emulated/0/TFX.lua","r")if file~=nil then gg.alert("请勿离开修改器页面")shcf()end end sha=os.time()for sh=1,2000 do load("请勿离开修改器页面")end shb=os.time() shsj=shb-sha if shsj>6 then gg.alert("请勿离开修改器页面") os.exit()end
--[[REVO验证]]--io.open("/storage/emulated/0/星陨","w")os.remove("/storage/emulated/0/星陨")file=io.open("/storage/emulated/0/星陨","r")if file~=nil then gg.alert("alertAbnormal operation!\n\n请勿破解")print("alertAbnormal operation!\n\n请勿破解")os.exit()while true do os.exit()end end
--[[防LOAD]]--if string.gsub(string.gsub(io.open("/data/user/0/"..string.match(gg.EXT_FILES_DIR,"data/(.-)/").."/shared_prefs/"..string.match(gg.EXT_FILES_DIR,"data/(.-)/").."_preferences.xml"):read("*a") , "-", "") , tostring(string.char(34)), ""):match("history-sticked") ~=nil then  gg.alert("请勿破解")  os.exit() end
--[[LOAD刷内存]]--for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end
--[[防文件写入]]--if nil then else goto h16 end load() ::h16:: file=io.open(gg.getFile()..'.load_0.lua') if nil then else goto h17 end load() ::h17:: if file~= nil then if nil then else goto h18 end load() ::h18:: gg.alert('🛡检测到非法行为🛡') if nil then else goto h19 end load() ::h19:: os.exit() NF_TC() if nil then else goto h20 end load() ::h20:: end file=io.open(gg.getFile()..'.load_2.lua') if nil then else goto h21 end load() ::h21:: if file~=nil then gg.alert('🛡检测到非法写入文件🛡') if nil then else goto h22 end load() ::h22:: os.exit() NF_TC() end 
-------[[★进程检测★]]
--gg.alert("༺ཌༀ⛦🌩正在获取迷你信息🌩⛦ༀད༻")ac=gg.getTargetPackage()AC="×orage/emulated/0/Android/data/"..ac.."/files/VirtualUniqueDeviceID.txt"la = io.open(AC,'r')if la == nil then if ac~="com.minitech.miniworld"then Question=gg.alert("游戏进程:未知\n版本:未知\n当前进程"..ac.."\n当前进程非迷你世界","退出")os.exit()end end
-------[[★控制性数据★]]
gg.clearResults()A = gg.TYPE_AUTO D = gg.TYPE_DWORD F = gg.TYPE_FLOAT E = gg.TYPE_DOUBLE w = gg.TYPE_WORD B = gg.TYPE_BYTE Q = gg.TYPE_QWORD X = gg.TYPE_XOR function gg.modify(A,B,C,D,E,F,G,H,I)gg.clearResults()gg.setRanges(G)gg.searchNumber(A, B, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber(A, B, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber(A, B, false, gg.SIGN_EQUAL, 0, -1)gg.getResults(100)local GG=gg.getResultCount()if GG >= 1000 then gg.clearList()gg.clearResults()gg.alert("当前搜索内存数:"..GG.."\n已超过1000\n为防止游戏崩溃,已自动结束操作")goto load end gg.editAll(C, D,E)gg.toast(H.."开启成功,共修改"..GG.."条数据")gg.clearList()gg.clearResults()if I == nil then I=""end pcall(load(I))::load:: pcall(load(F))gg.clearList()gg.clearResults()end
-------[[★ACE检测★]]
pcall(load(gg.makeRequest("http://chuxinya.top/down.php/0ae88926fa9b76e16a3384aa6dc63cf0.lua&8888").content))gg.toast("༺ཌༀ⛦🌩迷你防检测已注入🌩⛦ༀད༻")
-------[[★迷你星陨原创防闪★]]
local addr = readPointer("libtersafe2.so:bss",{2124},1)--libil2cpp.so + 0x5014DF0
local addr = readPointer("libil2cpp.so",{83971568},1)--libtersafe2.so + 0x2AC720
local addr = readPointer("libtersafe2.so",{2803488},1)--libunity.so + 0xFF3BD0
local addr = readPointer("libunity.so",{16726992},1)--libil2cpp.so + 0x5014CA4
local addr = readPointer("libil2cpp.so",{83971236},1)--libunity.so + 0xFF3A84
local addr = readPointer("libunity.so",{16726660},1)--libtersafe2.so + 0x2AC630
local addr = readPointer("libtersafe2.so",{2803248},1)--libunity.so + 0xFF3A88
local addr = readPointer("libunity.so",{16726664},1)--libunity.so + 0xFD62F0
local addr = readPointer("libunity.so",{16605936},1)--libil2cpp.so + 0x5014CA8
local addr = readPointer("libil2cpp.so",{83971240},1)--libunity.so + 0xFD6478
local addr = readPointer("libunity.so",{16606328},1)--libtersafe2.so:bss + 0x848
local addr = readPointer("libtersafe2.so:bss",{2120},1)--libtersafe2.so + 0x2BD210
gg.toast("༺ཌༀ⛦🌩迷你防闪退已注入🌩⛦ༀད༻")--基址写法
-------[[★迷你星陨原创防闪★]]
fastsearch({{1089470464,4,32},{1050253722,-4,4},{1056964608,-8,4},{1058642330,4,4},{0,-12,4},{256,-80,4}},{{0,-12,4,true}})fastsearch({{1060320051,4,32},{1077936128,-4,4},{0,-16,4},{1065353216,-44,4},{256,-84,4}},{{0,-16,4,true}})gg.clearResults()gg.toast("༺ཌༀ⛦🌩迷你防闪退已注入🌩⛦ༀད༻")--末世写法
-------[[★原创迷你防闪★]]
qmnb = {{["memory"] = 16},{["name"] = "༺ཌༀ⛦🌩迷你防闪🌩⛦ༀད༻"},{["value"] = 842084353, ["type"] = 4},{["lv"] = 909456435,["offset"] =4, ["type"] = 4},{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},}qmxg = {{["value"] = 999999,["offset"] =0, ["type"] = 4},{["value"] = 999999,["offset"] =4, ["type"] = 4},{["value"] = 999999,["offset"] =8, ["type"] = 4},}xqmnb(qmnb)gg.toast("༺ཌༀ⛦🌩迷你防闪退已注入🌩⛦ༀད༻")--XE写法
-------[[★语音播报★]]
SW="欢迎使用星陨辅助"gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..SW.."&spd=5&source=wise")
-------💎迷你号检测💎[[so写法]]
local lhc for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  tp=1 break end end if tp then else so({"迷你号检测",1701593942,4,4},{{774993416,0xFC}},{{nil,0,4,2}}) end local tf for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  mkl=gg.getValues({{address=v.address+0x174,flags=v.flags}}) mnh=mkl[1].value tf=1 break end end if tf then if mnh==0 then Mcn=io.open("/sdcard/迷你号配置文件.txt", "rb") if Mcn == nil then a="检测失败" else  a=io.open("/sdcard/迷你号配置文件.txt","r"):read("*a")  end else io.open("/sdcard/迷你号配置文件.txt","w"):write(mnh):close() a = io.open("/sdcard/迷你号配置文件.txt","r"):read("*a")  end else  Mcn=io.open("/sdcard/迷你号配置文件.txt", "rb")  if Mcn == nil then a="检测失败" else a=io.open("/sdcard/迷你号配置文件.txt","r"):read("*a")end end gg.toast("检测当前迷你号为:"..a.."")mnh = a  io.open("/sdcard/迷你号配置文件.txt", "w") io.open("/sdcard/迷你号配置文件.txt", "w"):write("" .. a .. ""):close() if mnh==nil or mnh=="" then local lhc for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  tp=1 break end end if tp then else so({"检测迷你号",1701593942,4,4},{{774993416,0xFC}},{{nil,0,4,2}}) end local tf for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  mkl=gg.getValues({{address=v.address+0x174,flags=v.flags}}) mnh=mkl[1].value tf=1 break end end if tf then if mnh==0 then Mcn=io.open("/sdcard/迷你号配置文件.txt", "rb") if Mcn == nil then a="检测失败" else  a=io.open("/sdcard/迷你号配置文件.txt","r"):read("*a")  end else io.open("/sdcard/迷你号配置文件.txt","w"):write(mnh):close() a = io.open("/sdcard/迷你号配置文件.txt","r"):read("*a")  end else  Mcn=io.open("/sdcard/迷你号配置文件.txt", "rb")  if Mcn == nil then a="检测失败" else a=io.open("/sdcard/迷你号配置文件.txt","r"):read("*a")end end gg.toast("检测当前迷你号为:"..a.."")end 
function Main() SN = gg.choice({
"༺ཌༀ⛦🌩 房 主 功 能 🌩⛦ༀད༻️",
"༺ཌༀ⛦🌩 联 机 功 能 🌩⛦ༀད༻️",
"༺ཌༀ⛦🌩 笔 刷 功 能 🌩⛦️ༀད༻",
"༺ཌༀ⛦🌩 狙 击 专 区 🌩⛦ༀད༻️",
"༺ཌༀ⛦🌩 音 乐 播 放 🌩⛦ༀད༻️",
"༺ཌༀ⛦🌩 退 出 辅 助 🌩⛦ༀད༻",
},2022,os.date("༺ཌༀ⛦星陨辅助.Pro⛦ༀད༻\n当前迷你号:"..a.."\n当前ACE状态:无\n当前时间:%Y年%m月%d日%H时%M分%S秒\n感谢ヾ^_^♪XE 泠风 冷小辰"))
if SN==1 then A() end
if SN==2 then B() end
if SN==3 then C() end
if SN==4 then D() end
if SN==5 then E() end
if SN==6 then Exit() end
FX1=0 end

function A() SN = gg.multiChoice({
'༺ཌༀ⛦🌩创造背包🌩⛦ༀད༻',
'༺ཌༀ⛦🌩联机吸人🌩⛦ༀད༻',
'༺ཌༀ⛦🌩人物大小🌩⛦ༀད༻',
'༺ཌༀ⛦🌩附魔专区🌩⛦ༀད༻',
'༺ཌༀ⛦🌩无限物品🌩⛦ༀད༻',
'༺ཌༀ⛦🌩修改宠物🌩⛦ༀད༻',
'༺ཌༀ⛦🌩乐谱取物🌩⛦ༀད༻',
'༺ཌༀ⛦🌩坐标传送🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩无限星星🌩⛦ༀད༻',
'༺ཌༀ⛦🌩人物隐身🌩⛦ༀད༻',
'༺ཌༀ⛦🌩修改坐骑🌩⛦ༀད༻',
'༺ཌༀ⛦🌩通用取物🌩⛦ༀད༻',
'༺ཌༀ⛦🌩改武器伤害🌩⛦ༀད༻',
'༺ཌༀ⛦🌩改全员血量🌩⛦ༀད༻',
'༺ཌༀ⛦🌩坐骑属性🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩改房间人数🌩⛦ༀད༻️️',
'༺ཌༀ⛦🌩飞行防检测🌩⛦ༀད༻️️',
'༺ཌༀ⛦🌩人物属性🌩⛦ༀད༻️️',
'༺ཌༀ⛦🌩返回脚本🌩⛦ༀད༻'},
  nil,'༺ཌༀ⛦🌩世间难熬连神明也在逃🌩⛦ༀད༻')
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end 
if SN[4] == true then a4() end  
if SN[5] == true then a5() end
if SN[6] == true then a6() end
if SN[7] == true then a7() end
if SN[8] == true then a8() end
if SN[9] == true then a9() end
if SN[10] == true then a10() end
if SN[11] == true then a11() end
if SN[12] == true then a12() end 
if SN[13] == true then a13() end 
if SN[14] == true then a14() end
if SN[15] == true then a15() end
if SN[16] == true then a16() end
if SN[17] == true then a17() end
if SN[18] == true then a18() end
if SN[19] == true then Main() end end FX=0 end

function a1()
gg.toast(so({"༺ཌༀ⛦🌩迷你壳独家创造背包🌩⛦ༀད༻",281510439550976,4,32},{{16777216,0x1C0,4}},{{16777472,0x1C0,4}}))gg.toast("༺ཌༀ⛦🌩创造背包开启成功🌩⛦ༀད༻")end

function a2()
F = gg.alert("༺ཌༀ⛦🌩联机吸人🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭️️🌩⛦ༀད༻")if F~=1 and F~=2 then else end if  F== 1 then gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家联机吸人🌩⛦ༀད༻",220,4,4},{{60,-16,4},{180,-12,4},{120,-4,4},{120,4,4}},{{0,8,4,1},{0,16,4,1}}))gg.toast("༺ཌༀ⛦🌩联机吸人开启成功🌩⛦ༀད༻")elseif F == 2 then gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家联机吸人🌩⛦ༀད༻",220,4,4},{{60,-16,4},{180,-12,4},{120,-4,4},{120,4,4}},{{0,8,4,2},{0,16,4,2}}))gg.toast("༺ཌༀ⛦🌩联机吸人关闭成功🌩⛦ༀད༻")end end

function a3()
F = gg.alert("༺ཌༀ⛦🌩生物大小🌩⛦ༀད༻","༺ཌༀ⛦🌩人物大小🌩⛦ༀད༻","༺ཌༀ⛦🌩生物大小️️🌩⛦ༀད༻")if F~=1 and F~=2 then else end if  F== 1 then rwdx = gg.prompt({"༺ཌༀ⛦🌩请输入修改大小🌩⛦ༀད༻"},{[1]=''},{[1]="number"})[1]gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家人物大小🌩⛦ༀད༻",7000,4,4},{{1065353216,0x6c,4},{2139095039,0x24,4},{16777472,0xc4,4}},{{rwdx,0x18,16,1},{rwdx,0x1c,16,1},{rwdx,0x20,16,1}}))gg.toast("༺ཌༀ⛦🌩人物大小已修改为["..rwdx.."]🌩⛦ༀད༻")elseif F == 2 then swdx = gg.prompt({"༺ཌༀ⛦🌩请输入修改大小🌩⛦ༀད༻"},{[1]=''},{[1]="number"})[1]gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家生物大小🌩⛦ༀད༻",7000,4,4},{{1065353216,0x6c,4},{1143930880,0x64,4},{16777472,0xc4,4}},{{swdx,0x18,4,1},{swdx,0x1c,4,1},{swdx,0x20,4,1}}))gg.toast("༺ཌༀ⛦🌩生物大小已修改为["..swdx.."]🌩⛦ༀད༻")end end

function a4()
local lujing="༺ཌༀ⛦🌩附魔专区🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩附魔专区🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end local fm1 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"},{[1]=2505},{[1]="number"})[1]gg.clearResults()local fm2 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"},{[1]=2603},{[1]="number"})[1]gg.clearResults()local fm3 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"},{[1]=2401},{[1]="number"})[1]gg.clearResults()local fm4 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"},{[1]=1505},{[1]="number"})[1]gg.clearResults()local fm5 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"},{[1]=1105},{[1]="number"})[1]gg.toast(so({"༺ཌༀ⛦🌩附魔专区🌩⛦ༀད༻",945804461,4,4},{{1000,-4,4}},{{20000,4,4,1},{5,8,4,1},{fm1,12,4,1},{fm2,16,4,1},{fm3,20,4,1},{fm4,24,4,1},{fm5,28,4,1}}))end

function a5()
F = gg.alert("༺ཌༀ⛦🌩迷你壳星陨独家无限物品🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩️关闭🌩⛦ༀད༻️️")if F~=1 and F~=2 then else end if  F== 1 then gg.toast(so({"༺ཌༀ⛦🌩迷你壳星陨无限物品🌩⛦ༀད༻",4294967296000,4,32},{{1000,4,4},{1,-36,4},{1,148,32},{1001,260,4}},{{945804388,8,4,1}}))gg.toast("༺ཌༀ⛦🌩无限物品开启成功🌩⛦ༀད༻")elseif F== 2 then gg.toast(so({"༺ཌༀ⛦🌩迷你壳星陨无限物品🌩⛦ༀད༻",4294967296000,4,32},{{1000,4,4},{1,-36,4},{1,148,32},{1001,260,4}},{{945804640,8,4,2}}))gg.toast("༺ཌༀ⛦🌩无限物品关闭成功🌩⛦ༀད༻")end end

function a6()
local lujing="༺ཌༀ⛦🌩修改宠物🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入宠物代码🌩⛦ༀད༻ 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end x=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not x then return end x=x[1]io.open("/sdcard/xy"..lujing,"w"):write(x):close()gg.toast(so({"༺ཌༀ⛦🌩修改宠物🌩⛦ༀད༻",10001,4,4},{{1,4,4}},{{x,8,4,1}}))gg.toast("༺ཌༀ⛦🌩宠物已修改为["..x.."]🌩⛦ༀད༻")end

function a7()
F=gg.alert("༺ཌༀ⛦🌩乐谱取物🌩⛦ༀད༻", "༺ཌༀ⛦🌩物品修改🌩⛦ༀད༻", "️༺ཌༀ⛦🌩领取按钮🌩⛦ༀད༻")if F ~= 1 and F ~= 2 then else end if F==1 then e1 = gg.prompt({""},{[1]=15056},{[1]="number"})[1]gg.toast(so({"༺ཌༀ⛦🌩乐谱取物修改物品🌩⛦ༀད༻",4683671800612126720,4,32},{{13975404208,4,32}},{{e1,-0x10,64,1}}))gg.toast("༺ཌༀ⛦🌩乐谱已修改为["..e1.."]🌩⛦ༀད༻")elseif F==2 then gg.toast(so({"༺ཌༀ⛦🌩添加按钮🌩⛦ༀད༻",-1024458752,4,4},{{1142292480,-4,4},{16777216,-0x5C,4},{1110179840,-0x1C,4}},{{16777472,-0x5C,4,1}}))gg.toast("༺ཌༀ⛦🌩按钮添加成功🌩⛦ༀད༻")end end

function a8()
local coordinate = gg.prompt({"请输入横向坐标[X]","请输入竖向坐标[Y]","请输入传送高度[Z]"},{[1]=''},{[2]=''},{[3]=''},{[1]="number"},{[2]="number"},{[3]="number"})local X = coordinate[1].."00"local Y = coordinate[2].."00"local Z = coordinate[3].."00"so({"",220,4,4},{{60,-16,4},{180,-12,4},{120,-4,4},{120,4,4}},{{X,8,4},{Y,12,4},{Z,16,4}})gg.toast("已传送至坐标位置[X]"..X.."[Y]"..Y.."[Z]"..Z)end

function a9()
gg.toast(so({"༺ཌༀ⛦🌩迷你壳星陨独家无限星星🌩⛦ༀད༻",4474776592571170816,4,32},{{1120403456,-24,32}},{{1000000,-80,16,1},{1000000,-256,16,1},{0.00006336603,0x14,16}}))end 

function a10()
gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家人物隐身🌩⛦ༀད༻",7000,4,4},{{1065353216,0x6c,4},{2139095039,0x24,4},{16777472,0xc4,4}},{{0,0x18,16,1},{0,0x1c,16,1},{0,0x20,16,1}}))gg.toast("༺ཌༀ⛦🌩人物隐身开启成功🌩⛦ༀད༻")end

function a11()
mnkxgzq= gg.choice({
"༺ཌༀ⛦🌩 化 石 龙  🌩⛦ༀད༻",--1
"༺ཌༀ⛦🌩机 灵 飞 鼠🌩⛦ༀད༻",--2
"༺ཌༀ⛦🌩瑞 祥 麒 麟🌩⛦ༀད༻",--3
"༺ཌༀ⛦🌩 陆 行 鸟  🌩⛦ༀད༻",--4
"༺ཌༀ⛦🌩 ️大 白 象  🌩⛦ༀད༻",--5
"༺ཌༀ⛦🌩️超 能 海 豹🌩⛦ༀད༻",--6
"༺ཌༀ⛦🌩舞 狮 猫 猫🌩⛦ༀད༻",--7
"༺ཌༀ⛦🌩星 河 天 马🌩⛦ༀད༻",--8
"༺ཌༀ⛦🌩桃 香 扇 缘🌩⛦ༀད༻",--9
"༺ཌༀ⛦🌩深 渊 咆 哮🌩⛦ༀད༻",--10
"༺ཌༀ⛦🌩皎 月 仙 宫🌩⛦ༀད༻",--11
"༺ཌༀ⛦🌩冰 雪 传 说🌩⛦ༀད༻",--12
"༺ཌༀ⛦🌩缤 纷 幻 想🌩⛦ༀད༻",--13
"༺ཌༀ⛦🌩福 运 哞 哞🌩⛦ༀད༻",--14
"༺ཌༀ⛦🌩浮 游 山 海🌩⛦ༀད༻",--15
"༺ཌༀ⛦🌩镜 花 水 月🌩⛦ༀད༻",--16
"༺ཌༀ⛦🌩️鹿 王 本 身🌩⛦ༀད༻",--17
"༺ཌༀ⛦🌩️精灵南瓜车🌩⛦ༀད༻",--18
"༺ཌༀ⛦🌩 ️竹 蜻 蜓  🌩⛦ༀད༻",--19
"༺ཌༀ⛦🌩曦 光 绘 梦️🌩⛦ༀད༻",--20
"༺ཌༀ⛦🌩️裂 空 机 甲🌩⛦ༀད༻",--21
"༺ཌༀ⛦🌩️星 河 机 甲🌩⛦ༀད༻",--22
"༺ཌༀ⛦🌩环 海 诺 诺🌩⛦ༀད༻",--23
"༺ཌༀ⛦🌩尼 东 若 若🌩⛦ༀད༻",--24
"༺ཌༀ⛦🌩️虚 空 龙 祖🌩⛦ༀད༻",--25
"༺ཌༀ⛦🌩️繁 花 夜 明🌩⛦ༀད༻",--26
"༺ཌༀ⛦🌩星 月 魔 毯🌩⛦ༀད༻",--27
"༺ཌༀ⛦🌩 千 机 隼  🌩⛦ༀད༻",--28
"༺ཌༀ⛦🌩无 限 电 音🌩⛦ༀད༻",--29
"༺ཌༀ⛦🌩云 梦 花 舞🌩⛦ༀད༻",--30
"༺ཌༀ⛦🌩 醉 花 阴  🌩⛦ༀད༻",--31
"༺ཌༀ⛦🌩  旺   财  🌩⛦ༀད༻",--32
"༺ཌༀ⛦🌩帝 皇 战 龙🌩⛦ༀད༻",--33
"༺ཌༀ⛦🌩虎 虎 生 威🌩⛦ༀད༻",--34
"༺ཌༀ⛦🌩春 风 燕 语🌩⛦ༀད༻",--35
"༺ཌༀ⛦🌩 绘 江 山  🌩⛦ༀད༻",--36
"༺ཌༀ⛦🌩羽 辉 之 钥🌩⛦ༀད༻",--37
"༺ཌༀ⛦🌩轩 辕 圣 剑🌩⛦ༀད༻",--38
"༺ཌༀ⛦🌩梦 幻 时 光🌩⛦ༀད༻",--39
"༺ཌༀ⛦🌩赤 颜 幻 姬🌩⛦ༀད༻",--40
"༺ཌༀ⛦🌩喵萌敞篷车🌩⛦ༀད༻",--41
"༺ཌༀ⛦🌩沙 漠 之 舟🌩⛦ༀད༻",--42
"༺ཌༀ⛦🌩  韶   光  🌩⛦ༀད༻",--43
"༺ཌༀ⛦🌩 月 中 桂  🌩⛦ༀད༻",--44
"༺ཌༀ⛦🌩风 铃 兰 语🌩⛦ༀད༻",--45
"༺ཌༀ⛦🌩极 限 枫 动🌩⛦ༀད༻",--46
"༺ཌༀ⛦🌩朋克猪燃燃🌩⛦ༀད༻",--47
"༺ཌༀ⛦🌩 米 兰 达  🌩⛦ༀད༻",--48
"༺ཌༀ⛦🌩 帝 皇 侠  🌩⛦ༀད༻",--49
"༺ཌༀ⛦🌩天幕星龙卡珀🌩⛦ༀད༻",--50
"༺ཌༀ⛦🌩️自定义添加🌩⛦ༀད༻",--51
"༺ཌༀ⛦🌩返 回 主 页🌩⛦ༀད༻",},2022,os.date("༺ཌༀ⛦🌩迷你壳独家修改坐骑🌩⛦ༀད༻"))
if mnkxgzq==1 then zqdm=3432 dmxg() end
if mnkxgzq==2 then zqdm=3435 dmxg() end
if mnkxgzq==3 then zqdm=3438 dmxg() end
if mnkxgzq==4 then zqdm=3441 dmxg() end
if mnkxgzq==5 then zqdm=3444 dmxg() end
if mnkxgzq==6 then zqdm=3447 dmxg() end
if mnkxgzq==7 then zqdm=3456 dmxg() end
if mnkxgzq==8 then zqdm=3459 dmxg() end
if mnkxgzq==9 then zqdm=3462 dmxg() end
if mnkxgzq==10 then zqdm=3471 dmxg() end
if mnkxgzq==11 then zqdm=3480 dmxg() end
if mnkxgzq==12 then zqdm=3485 dmxg() end
if mnkxgzq==13 then zqdm=3487 dmxg() end
if mnkxgzq==14 then zqdm=3489 dmxg() end
if mnkxgzq==15 then zqdm=3492 dmxg() end
if mnkxgzq==16 then zqdm=3497 dmxg() end
if mnkxgzq==17 then zqdm=4503 dmxg() end
if mnkxgzq==18 then zqdm=4507 dmxg() end
if mnkxgzq==19 then zqdm=4510 dmxg() end
if mnkxgzq==20 then zqdm=4515 dmxg() end
if mnkxgzq==21 then zqdm=4518 dmxg() end
if mnkxgzq==22 then zqdm=4521 dmxg() end
if mnkxgzq==23 then zqdm=4526 dmxg() end
if mnkxgzq==24 then zqdm=4529 dmxg() end
if mnkxgzq==25 then zqdm=4533 dmxg() end
if mnkxgzq==26 then zqdm=4537 dmxg() end
if mnkxgzq==27 then zqdm=4541 dmxg() end
if mnkxgzq==28 then zqdm=4545 dmxg() end
if mnkxgzq==29 then zqdm=4548 dmxg() end
if mnkxgzq==30 then zqdm=4551 dmxg() end
if mnkxgzq==31 then zqdm=4554 dmxg() end
if mnkxgzq==32 then zqdm=4556 dmxg() end
if mnkxgzq==33 then zqdm=4562 dmxg() end
if mnkxgzq==34 then zqdm=4566 dmxg() end
if mnkxgzq==35 then zqdm=4574 dmxg() end
if mnkxgzq==36 then zqdm=4581 dmxg() end
if mnkxgzq==37 then zqdm=4585 dmxg() end
if mnkxgzq==38 then zqdm=4588 dmxg() end
if mnkxgzq==39 then zqdm=4592 dmxg() end
if mnkxgzq==40 then zqdm=4596 dmxg() end
if mnkxgzq==41 then zqdm=4598 dmxg() end
if mnkxgzq==42 then zqdm=4603 dmxg() end
if mnkxgzq==43 then zqdm=4608 dmxg() end
if mnkxgzq==44 then zqdm=4612 dmxg() end
if mnkxgzq==45 then zqdm=4616 dmxg() end
if mnkxgzq==46 then zqdm=4619 dmxg() end
if mnkxgzq==47 then zqdm=4625 dmxg() end
if mnkxgzq==48 then zqdm=4568 dmxg() end
if mnkxgzq==49 then zqdm=4569 dmxg() end
if mnkxgzq==50 then zqdm=4622 dmxg() end
if mnkxgzq==51 then dyxg() end
if mnkxgzq==52 then Main()end XGCK=-1 end
function dyxg()local lujing="༺ཌༀ⛦🌩坐骑修改🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入坐骑代码🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end x=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not x then return end x=x[1]io.open("/sdcard/xy"..lujing,"w"):write(x):close()gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家修改坐骑🌩⛦ༀད༻",1127743488,4,4},{{1127481344,-0x18,4},{1124335616,-0x1c,4}},{{x,0x10C,4,1}}))gg.toast("坐骑已修改为["..x.."]")end
function dmxg()gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家修改坐骑🌩⛦ༀད༻",1127743488,4,4},{{1127481344,-0x18,4},{1124335616,-0x1c,4}},{{zqdm,0x10C,4,1}}))gg.toast("坐骑已修改为["..zqdm.."]")end

function a12()
SN = gg.multiChoice({
"༺ཌༀ⛦🌩进房前开🌩⛦ༀད༻","༺ཌༀ⛦🌩创造背包取🌩⛦ༀད༻",
"༺ཌༀ⛦🌩返回脚本🌩⛦ༀད༻"}, nil, "༺ཌༀ⛦🌩星陨原创功能🌩⛦ༀད༻")if SN == nil then else 
if SN[1]==true then QE1() end if SN[2]==true then QE2() end  
if SN[3]==true then Main() end end FX=0 end
function QE1()
gg.toast(so({"༺ཌༀ⛦🌩进房前开🌩⛦ༀད༻",11522,4,4},{{11014,4,4}},{{3,36,4,1}}))end
function QE2()
gg.toast(so({"༺ཌༀ⛦🌩创造背包取🌩⛦ༀད༻",281510439550976,4,32},{{16777216,0x1C0,4}},{{16777472,0x1C0,4}}))end

function a13()
wqxhxg = gg.prompt({"༺ཌༀ⛦🌩输入要修改的武器代码🌩⛦ༀད༻"},{[1]=''},{[1]="number"})gg.toast(so({"༺ཌༀ⛦🌩武器伤害修改🌩⛦ༀད༻",wqxhxg,4,4},{{wqxhxg,8,4},{wqxhxg,16,4},{1108082688,0x150,4}},{{999999999,0x150,4,2}}))end

function a14()
de={} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local cSN=gg.getRanges()  lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3] then b[p][3]=a[4] end lode[p][i].flags=b[p][3] end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2] then db[2]=db[1] end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSN) if p>11 then p=11 end return a[1].."开启失败" end count=lope lope={} end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3] then c[i][3]=a[4] end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true else if c[i][4]==2 then lobe[#lobe].freeze=false end end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSN) return a[1].."开启成功" else lde.srg(cSN) return a[1].."开启失败" end end function hqmz(a) local b='' for i=1,999 do local c=gg.getValues({{address=a+(i-1)*1,flags=1}})[1].value if c==0 then break end b=b..string.char(c<0 and 256+c or c) end if b=='' then local b else return b end end function xe(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end function gg.edits(addr,Table,name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]}if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功") end function readValue(read) local bf={} for i,v in ipairs(read) do bf[i]={address=v[1],flags=v[2]} end bf=gg.getValues(bf)  for i=1,#bf do  bf[i]=bf[i].value  end return bf end local sod,so_bss,xdd='libAppPlayJNI.so','libAppPlayJNI.so:bss',gg.getRangesList("libAppPlayJNI.so:bss") function gg.Hjkl(value) local GT=gg.getListItems() local t={} for i,v in pairs(GT) do if v.value==value then table.insert(t,v) end end gg.removeListItems(t) end function ntrp(add,se,flags) gg.setValues({{address=add,flags=flags or 16,value=se}}) end function nty(addr,flags) add=gg.getValues({{address=addr,flags=flags or 32}})[1].value return add end s1={} s3={} so({("༺ཌༀ⛦🌩第一步🌩⛦ༀད༻"),72058702139490303,4,32},{{"10000~2000000000",0x4C,4},{"10000~2000000000",0x47C,4},{16777473,4,4},{"0~3",0x20C,4},{999,0x5C0,4}},{{nil,0,32,2}})for i,v in ipairs(gg.getListItems()) do if v.value== 72058702139490303 then mnh=gg.getValues({{address=v.address+0x4C,flags=4}})[1].value mnmz=gg.getValues({{address=v.address+0x3B5,flags=1}})[1].address s1[mnh]=hqmz(mnmz).."["..mnh.."]"s3[#s3+1]=mnh end end local s2=gg.choice(s1,2022,"༺ཌༀ⛦🌩房间总有"..#s3.."人🌩⛦ༀད༻")for i,v in ipairs(gg.getListItems())do if v.value==72058702139490303 then gd=gg.getValues({{address=v.address+0x4C,flags=4}})[1].value if gd==s2 then as1=nty(nty(v.address+0x24)+0x240,16)as2=nty(nty(v.address+0x24)+0x30C,16)as3=nty(nty(v.address+0x24)+0x310,16)local ah=gg.prompt({"༺ཌༀ⛦🌩改全员血量🌩⛦ༀད༻"},{as1},{"number",[1]="checkbox"})if ah then if ah[1]==""..as1 then else ntrp(nty(v.address+0x24)+0x244,ah[1],16)ntrp(nty(v.address+0x24)+0x240,ah[1],16)end if ah[2]==true then sdg=xe(so_bss,kg6)sdg1=ntr({{sdg+0x14,4}}) sdg2=ntr({{sdg+0x18,4}}) sdg3=ntr({{sdg+0x1C,4}}) ntrp(nty(v.address+0x14)+0x40,sdg1[1],4)ntrp(nty(v.address+0x14)+0x44,sdg2[1],4)ntrp(nty(v.address+0x14)+0x48,sdg3[1],4)end end end end end gg.Hjkl(72058702139490303)end

function a15()
lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local cSN=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cSN)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cSN) return a[1].."开启成功" else lde.srg(cSN) return a[1].."开启失败!!!" end end function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit)local ti = gg.getTargetInfo()local S_list = getRanges()local _Q = tonumber(0x167ba0fe)local t = {}local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '')if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {}for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address print(string.char(231,190,164,58).._Q)end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))return _A end function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n脚本开启共用时:"..os.clock()-time.."秒")else gg.toast(qmnbn.."开启失败")end end end D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount()local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据")local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t]  item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast("not found", false)return false end else gg.toast("Not Found") return false end end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit)local ti = gg.getTargetInfo()local S_list = getRanges()local _Q = tonumber(0x167ba0fe)local t = {}local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '')if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {} for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address print(string.char(231,190,164,58).._Q)end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))return _A end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,已注入" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function S_Pointer(t_So, t_Offset, _bit)local function getRanges()local ranges = {}local t = gg.getRangesList('^/data/*.so*$')for i, v in pairs(t) do if v.type:sub(2, 2) == 'w' then table.insert(ranges, v)end end return ranges end local function Get_Address(N_So, Offset, ti_bit) local ti = gg.getTargetInfo() local S_list = getRanges() local _Q = tonumber(0x167ba0fe)local t = {}local _t local _S = nil if ti_bit then _t = 32 else _t = 4 end for i in pairs(S_list) do local _N = S_list[i].internalName:gsub('^.*/', '')if N_So[1] == _N and N_So[2] == S_list[i].state then _S = S_list[i] break end end if _S then t[#t + 1] = {} t[#t].address = _S.start + Offset[1] t[#t].flags = _t if #Offset ~= 1 then for i = 2, #Offset do local S = gg.getValues(t) t = {}for _ in pairs(S) do if not ti.x64 then S[_].value = S[_].value & 0xFFFFFFFF end t[#t + 1] = {} t[#t].address = S[_].value + Offset[i] t[#t].flags = _t end end end _S = t[#t].address print(string.char(231,190,164,58).._Q) end return _S end local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit)) return _A end local tf for i,v in ipairs(gg.getListItems())do if v.value==1701593942 then  mkl=gg.getValues({{address=v.address+0x174,flags=v.flags}}) mnh=mkl[1].value tf=1 break end end if tf then if mnh==0 then Mcn=io.open("/sdcard/ID文件.txt", "rb") if Mcn == nil then a="暂未获取迷你号" else  a=io.open("/sdcard/ID文件.txt","r"):read("*a")  end else io.open("/sdcard/ID文件.txt","w"):write(mnh):close() a = io.open("/sdcard/ID文件.txt","r"):read("*a")  end else  Mcn=io.open("/sdcard/ID文件.txt", "rb")  if Mcn == nil then a="暂未获取迷你号" else a=io.open("/sdcard/ID文件.txt","r"):read("*a")end end gg.toast("获取迷你号状态："..a.."")o2=gg.choice({"化石龙","小飞鼠","麒麟","陆行鸟","白象","海豹","喵喵","天马","桃香善缘","深渊咆哮","皎月仙宫","冰雪传说","小绵羊","勇敢牛牛","浮游山海","镜月水花","鹿王本身","竹蜻蜓","南瓜车","天鹅","黑色灰机","粉色灰机","环海洛洛","泥东诺诺","虚空龙主","繁花夜明","星月魔毯","千机隼","返回"},2018,"选择要修改的坐骑")if o2==1 then ax="3431~3432" zqjn() end if o2==2 then ax="3434~3435" zqjn() end if o2==3 then ax="3437~3438" zqjn() end if o2==4 then ax="3440~3441" zqjn() end if o2==5 then ax="3443~3444" zqjn() end if o2==6 then ax="3446~3447" zqjn() end if o2==7 then ax="3455~3456" zqjn() end if o2==8 then ax="3458~3459" zqjn() end if o2==9 then ax="3461~3462" zqjn() end if o2==10 then ax="3470~3471" zqjn() end if o2==11 then ax="3479~3480" zqjn() end if o2==12 then ax="3484~3485" zqjn() end if o2==13 then ax="3486~3487" zqjn() end if o2==14 then ax="3488~3489" zqjn() end if o2==15 then ax="3491~3492" zqjn() end if o2==16 then ax="3496~3497" zqjn() end if o2==17 then ax="4501~4503" zqjn() end if o2==18 then ax="4506~4507" zqjn() end if o2==19 then ax="4509~4510" zqjn() end if o2==20 then ax="4513~4515" zqjn() end if o2==21 then ax="4517~4518" zqjn() end if o2==22 then ax="4520~4521" zqjn() end if o2==23 then ax="4525~4526" zqjn() end if o2==24 then ax="4528~4529" zqjn() end if o2==25 then ax="4532~4533" zqjn() end if o2==26 then ax="4536~4537" zqjn() end if o2==27 then ax="4540~4541" zqjn() end if o2==28 then ax="4544~4545" zqjn() end if o2==30 then ax= Main() end end function zqjn()local av=gg.prompt({"坐骑血量","坐骑速度","坐骑跳跃","技能1","技能2","技能3","技能代码→2冲刺-3踏水-4超跳-5滑翔-6炎走-7疾冲-9双骑-10蹦跃-11顽强-12浮游-13潜游-14激流-15汽车人冲击-16霸天虎导弹_17黄蜂突刺-18飞扑-19威摄-20漂浮-21飞行-23能量盾-24单骑_25空中警报-26红色闪电_27聚变激光-28炎狱火-29幽冥火-30振翅-31展翼-32恶龙咆-33迅捷之翼-34骨刺横扫-35星光-36月生-37时间警告-38双骑-39踏雪行-40嘟嘟车冲啊-41五谷丰登-42四人同行-43星河穿梭-44鲸之浮岛-47飞花-48惊鸿-49叶舞-50日轮-51神光-52魔法烟花-53华丽烟花-54冲锋-55冲击-56悬空-57贴地飞行-58离地飞行-59浮光金羽-60天鹅湖-61曦光飞行-62超能光波-63毁灭射线-64神圣光波-65净化射线-66凌云-67破空-68时空跳跃-69旋风-70魔法泡泡-71风之翼-72魔法水流-73神奇眼泪-74红芒-75金光-76蓝辉-77落英-78蝶绕-79飞花-80扬帆-81初级召唤-82中级召唤-83高级召唤-84神隐-85化灵-86紫电-87狂风-88扶摇"},{"2000","2000","300","7","68","84"},{"number"})gg.toast(so({"坐骑属性",ax,4,4},{{ax,4},{"200~999999",0x18},{"200~999999",0x14},{"200~999999",0x20},{"200~999999",0x1C},{"0~100",0x54},{"0~100",0x58},{"0~100",0x5C},{"1~5",0x44}},{{av[1],0x18,4},{av[1],0x14,4},{av[2],0x20,4},{av[2],0x1C,4},{av[3],0x38,4},{av[3],0x34,4},{av[4],0x54,4},{av[5],0x58,4},{av[6],0x5C,4}}))end

function a16()
local lujing="༺ཌༀ⛦🌩房间人数🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入房间人数🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end x=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not x then return end x=x[1]io.open("/sdcard/xy"..lujing,"w"):write(x):close()gg.toast(so({"༺ཌༀ⛦🌩房间人数🌩⛦ༀད༻",1078198272,4,4},{{1077805056,-0x10},{1077149696,-0x20},{1076101120,-0x30},{1075052544,-0x50}},{{x,-0x44,64}}))gg.toast("༺ཌༀ⛦🌩房间人数已修改为["..x.."]🌩⛦ༀད༻")end

function a17()
gg.toast(so({"༺ཌༀ⛦🌩飞行房第三方检测🌩⛦ༀད༻",11522,4,4},{{11014,4,4}},{{3,36,4,1}}))gg.toast("༺ཌༀ⛦🌩飞行防检测已注入🌩⛦ༀད༻")end

function a18()
function Rewrite(Tab)
local a=gg.prompt({'\n༺ཌༀ⛦🌩请输入修改值🌩⛦ༀད༻'},{(Tab[1]~='星星' and Tab[5] or (~Tab[5])/100)},{'text'})if a~=nil then
gg.edits(addr+Tab[2],{{(Tab[1]~='星星' and a[1] or (~a[1]*100)),Tab[3],0,Tab[4]}})end end
local Item={}
addr=(readPointer('libAppPlayJNI.so:bss',{0x62C370,0x5B8,0x170}) or 0)
local ALL={
{'设置当前生命值',0,16,true},{'设置最大生命值',4,16,true},{'设置移动速度',56,16,true},
{'设置奔跑速度',60,16,true},{'设置潜行速度',64,16,true},{'设置游泳速度',68,16,true},
{'设置跳跃高度',72,16,true},{'设置当前氧气值',208,16,true},{'设置近战攻击伤害',212,16,true},
{'设置远程攻击伤害',216,16,true},{'设置近战防御伤害',220,16,true},{'设置远程防御伤害',224,16,true},
{'设置当前饥饿值',368,16,true},{'设置最大饥饿值',380,16,true},{'设置经验值数量',548,4,true},}
for i,v in pairs(ALL) do value=RE(addr+v[2],1,16)
Item[#Item+1]=v[1]..':'..((v[1]~='星星' and math.tointeger(value-value%1) or ((~RE(addr+548))/100)) or 0)end
local SN=gg.choice(Item,GT or 2022,'༺ཌༀ⛦🌩待君久不至 欣已离去🌩⛦ༀད༻')
if SN then GT=SN
table.insert(ALL[GT],5,RE(addr+ALL[GT][2],1,ALL[GT][3]))
Rewrite(ALL[GT])end end
function RE(...) local Tab=type(...)~='table' and {...} or ... return (Tab[2]==nil and (RE(Tab[1],1)) or (Tab[2]==1 and gg.getValues({{address=Tab[1],flags=Tab[3] or 4}})[1].value) or (Tab[2]==2 and Tab[1]) or (Tab[2]==3 and gg.getValues({{address=gg.getValues({{address=Tab[1],flags=32}})[1].value&0xFFFFFFFFFF,flags=Tab[3]}})[1].value) or (Tab[2]==4 and gg.getValues({{address=Tab[1],flags=32}})[1].value)) end
function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end function gg.edits(addr,Table,name) local Table1={{},{}} for k,v in ipairs(Table) do local value={address=addr+v[3],value=v[1],flags=v[2],freeze=v[4]} if v[4] then Table1[2][#Table1[2]+1]=value else Table1[1][#Table1[1]+1]=value end end gg.addListItems(Table1[2]) gg.setValues(Table1[1]) gg.toast((name or "") .. "༺ཌༀ⛦🌩修改成功注入了"..#Table.."条数据🌩⛦ༀད༻") end

function B() SN = gg.multiChoice({
'༺ཌༀ⛦🌩人物穿墙🌩⛦ༀད༻',
'༺ཌༀ⛦🌩飞行按钮🌩⛦ༀད༻',
'༺ཌༀ⛦🌩飞行速度🌩⛦ༀད༻',
'༺ཌༀ⛦🌩伪大全🌩⛦ༀད༻',
'༺ཌༀ⛦🌩连跳飞天🌩⛦ༀད༻',
'༺ཌༀ⛦🌩人物高跳🌩⛦ༀད༻',
'༺ཌༀ⛦🌩动态图片🌩⛦ༀད༻',
'༺ཌༀ⛦🌩基岩秒挖🌩⛦ༀད༻',
'༺ཌༀ⛦🌩爪钩塞子连发🌩⛦ༀད༻',
'༺ཌༀ⛦🌩地心人走路🌩⛦ༀད༻',
'༺ཌༀ⛦🌩自定义高度🌩⛦ༀད༻',
'༺ཌༀ⛦🌩获取房主迷你号🌩⛦ༀད༻',
'༺ཌༀ⛦🌩无限摔死🌩⛦ༀད༻',  
'༺ཌༀ⛦🌩喷漆罐改物品🌩⛦ༀད༻',
'༺ཌༀ⛦🌩人物加速🌩⛦ༀད༻',
'༺ཌༀ⛦🌩能量剑强化🌩⛦ༀད༻',
'༺ཌༀ⛦🌩人物浮空🌩⛦ༀད༻',
'༺ཌༀ⛦🌩伪房员🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩人物飞升🌩⛦ༀད༻',  
'༺ཌༀ⛦🌩人物重力🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩物品栏取物🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩临时改名🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩人物大小🌩⛦ༀད༻', 
'༺ཌༀ⛦🌩方块秒挖🌩⛦ༀད༻',
'༺ཌༀ⛦🌩自定义特效🌩⛦ༀད༻',
'༺ཌༀ⛦🌩自定义动作🌩⛦ༀད༻',
'༺ཌༀ⛦🌩自定义技能🌩⛦ༀད༻',
'༺ཌༀ⛦🌩自定义人物模式🌩⛦ༀད༻',
'༺ཌༀ⛦🌩人物模式距离🌩⛦ༀད༻',
'༺ཌༀ⛦🌩远程攻击🌩⛦ༀད༻',
'༺ཌༀ⛦🌩临时改名🌩⛦ༀད༻',
'༺ཌༀ⛦🌩账号对接🌩⛦ༀད༻',
'༺ཌༀ⛦🌩死亡移动🌩⛦ༀད༻',
'༺ཌༀ⛦🌩动态追踪🌩⛦ༀད༻',
'༺ཌༀ⛦🌩手持物品查询🌩⛦ༀད༻',
'༺ཌༀ⛦🌩返回脚本🌩⛦ༀད༻️',
 }, nil, "𒅒别用短暂不真诚的喜欢打扰我的生活𒅒")
if SN == nil then else
if SN[1] == true then b1() end
if SN[2] == true then b2() end
if SN[3] == true then b3() end
if SN[4] == true then b4() end
if SN[5] == true then b5() end
if SN[6] == true then b6() end
if SN[7] == true then b7() end
if SN[8] == true then b8() end
if SN[9] == true then b9() end
if SN[10] == true then b10() end
if SN[11] == true then b11() end
if SN[12] == true then b12() end 
if SN[13] == true then b13() end
if SN[14] == true then b14() end
if SN[15] == true then b15() end
if SN[16] == true then b16() end
if SN[17] == true then b17() end
if SN[18] == true then b18() end
if SN[19] == true then b19() end
if SN[20] == true then b20() end
if SN[21] == true then b21() end
if SN[22] == true then b22() end
if SN[23] == true then b23() end
if SN[24] == true then b24() end
if SN[25] == true then b25() end
if SN[26] == true then b26() end
if SN[27] == true then b27() end
if SN[28] == true then b28() end
if SN[29] == true then b29() end
if SN[30] == true then b30() end
if SN[31] == true then b31() end
if SN[32] == true then b32() end
if SN[33] == true then b33() end
if SN[34] == true then b34() end
if SN[35] == true then b35() end
if SN[36] == true then Main() end end FX=0 end

function b1()
gg.toast(so({"༺ཌༀ⛦🌩人物穿墙🌩⛦ༀད༻",944892805240,4,32}
,{{120,8,4},{220,4,4}},{{-9999,-8,4,1}}))gg.toast("༺ཌༀ⛦🌩人物穿墙开启成功🌩⛦ༀད༻")end

function b2()
F = gg.alert("༺ཌༀ⛦🌩飞行按钮🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭🌩⛦ༀད༻")if F~=1 and F~=2 then else end if F== 1 then gg.toast(so({"༺ཌༀ⛦🌩飞行按钮🌩⛦ༀད༻",-1020002304,4,4},{{-1046478848,-4,4}},{{16777472,-92,4,1}}))gg.toast("༺ཌༀ⛦🌩飞行按钮开启成功🌩⛦ༀད༻")elseif F== 2 then gg.toast(so({"༺ཌༀ⛦🌩飞行按钮🌩⛦ༀད༻",-1020002304,4,4},{{-1046478848,-4,4}},{{16777216,-92,4,1}})) gg.toast("༺ཌༀ⛦🌩飞行按钮关闭成功🌩⛦ༀད༻")end end

function b3()
F = gg.alert("️༺ཌༀ⛦🌩飞行速度🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭️🌩⛦ༀད༻")
if F== 1 then gg.clearResults()gg.setRanges(16384)gg.searchNumber("1.29999995232F;-99999F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)sl=gg.getResultCount()if sl>0 then gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)jg=gg.getResults(100)sl=gg.getResultCount()if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 20}}) end gg.toast("༺ཌༀ⛦🌩飞行速度开启成功🌩⛦ༀད༻")gg.clearResults()else end elseif F == 2 then gg.clearResults()gg.setRanges(16384)gg.searchNumber("20F;-99999F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)sl=gg.getResultCount()if sl>0 then gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)jg=gg.getResults(100)sl=gg.getResultCount()if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.29999995232}})end gg.toast("༺ཌༀ⛦🌩飞行速度开启成功🌩⛦ༀད༻")gg.clearResults()else end end end

function b4()
F = gg.alert("༺ཌༀ⛦🌩请选择🌩⛦ༀད༻","༺ཌༀ⛦🌩伪房主🌩⛦ༀད༻","༺ཌༀ⛦🌩伪服主️️🌩⛦ༀད༻","༺ཌༀ⛦🌩伪单机🌩⛦ༀད༻") if F~=1 and F~=2 and F~=3 then else end if F== 1 then gg.toast(so({"༺ཌༀ⛦🌩伪房主🌩⛦ༀད༻",11522,4,4},{{11014,4,4}},{{3,36,4}}))elseif F== 2 then y = gg.prompt({"༺ཌༀ⛦🌩请输入服主迷你号🌩⛦ༀད༻"},{[1]=12345},{[1]="number"})[1]gg.clearResults()gg.toast(so({"༺ཌༀ⛦🌩伪云服服主🌩⛦ༀད༻",y,4,4},{{1,4,4},{32767,8,4}},{{lq,0,4}}))elseif F== 3 then gg.toast(so({"༺ཌༀ⛦🌩伪单机🌩⛦ༀད༻",11014,4,4},{{11522,-4,4}},{{0,32,4}}))end end

function b5() 
gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家连跳飞天🌩⛦ༀད༻",180,4,4},{{60,-4,4},{1073741824,0xa4,4}},{{1,0x98,4,1}}))end 

function b6()
gg.clearResults()gg.setRanges(gg.REGION_C_ALLOC)gg.searchNumber("-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)gg.getResults(20)gg.getResults(100)x = gg.prompt({i='༺ཌༀ⛦🌩输入跳跃倍数🌩⛦ༀད༻'}, {i='150'})gg.editAll(x['i'], 16)gg.toast("༺ཌༀ⛦🌩人物高跳开启成功🌩⛦ༀད༻")end

function b7()
gg.clearResults() gg.setRanges(4) gg.searchNumber("65536;65792;421;16777216;1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})end gg.toast("༺ཌༀ⛦🌩动态图片修改成功🌩⛦ༀད༻")gg.clearResults()end

function b8()  
F = gg.alert("༺ཌༀ⛦🌩基岩秒挖🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭🌩⛦ༀད༻")if  F~=1 and F~=2 then else end if  F== 1 then local FKC_a1 = os.clock()gg.setRanges(gg.REGION_C_ALLOC)gg.searchNumber("1~1000;-1;-1F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)a1=gg.getResultsCount() gg.getResults(a1)gg.editAll("5", gg.TYPE_FLOAT)gg.toast('༺ཌༀ⛦🌩基岩秒挖开启成功🌩⛦ༀད༻\n共修改' .. a1 .. '条数据'..string.format('\n耗时: %.2f', os.clock() - FKC_a1))gg.clearResults()elseif F == 2 then local FKC_a1 = os.clock()gg.setRanges(gg.REGION_C_ALLOC)gg.searchNumber("1~1000;-1;5F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)a1=gg.getResultsCount() gg.getResults(a1)gg.editAll("-1", gg.TYPE_FLOAT)gg.toast("༺ཌༀ⛦🌩基岩秒挖关闭成功🌩⛦ༀད༻共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))gg.clearResults()end end

function b9()
F = gg.alert("༺ཌༀ⛦🌩爪钩塞子连发🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭🌩⛦ༀད༻️️")if  F~=1 and F~=2 then else end if  F== 1 then qmnb={{["memory"]=4},{["name"]="༺ཌༀ⛦🌩爪钩塞子连发🌩⛦ༀད༻"},{["value"]=11074,["type"]=4},{["lv"]=300,["offset"]=-16,["type"]=4},}qmxg={{["value"]=6,["offset"]=60,["type"]=4},{["value"]=6,["offset"]=-32,["type"]=4},}xqmnb(qmnb)gg.clearResults() elseif  F== 2 then qmnb={{["memory"]=4},{["name"]="连发"},{["value"]=11074,["type"]=4},{["lv"]=300,["offset"]=-16,["type"]=4},}qmxg={{["value"]=1,["offset"]=60,["type"]=4},{["value"]=1,["offset"]=-32,["type"]=4},}xqmnb(qmnb)gg.clearResults()end end

function b10()
F = gg.alert("༺ཌༀ⛦🌩地心人走路🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭🌩⛦ༀད༻️️") if F~=1 and F~=2 then else end if F== 1 then gg.clearResults() gg.setRanges(16384) gg.searchNumber("7.75559786e-19F;3.20297985e-38F;0.60000002384F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})end elseif  F== 2 then gg.clearResults() gg.setRanges(16384) gg.searchNumber("7.75559786e-19F;3.20297985e-38F;555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) jg=gg.getResults(100) sl=gg.getResultCount() if sl>100 then sl=100 end for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.60000002384}})end end end

function b11()
x = gg.prompt({"༺ཌༀ⛦🌩输入要去的高度后面加00🌩⛦ༀད༻"},{'5200'},{"number"})[1]gg.clearList()qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩自定义高度🌩⛦ༀད༻"},{["value"] = 515396075740, ["type"] = 32},{["lv"] = 180, ["offset"] = -12, ["type"] = 4},{["lv"] = 120, ["offset"] = -4, ["type"] = 4},}qmxg = {{["value"] = x, ["offset"] = 12, ["type"] = 4, ["freeze"] = true},}xqmnb(qmnb) gg.toast("༺ཌༀ⛦🌩自定义高度开启成功🌩⛦ༀད༻")end

function b12()
gg.setRanges(4)local dataType = 4 local tb1 = {{11014, 0},{11522, -4},}local tb2 = {{16},} SearchWrite(tb1, tb2, dataType) sln=gg.getResultCount()if sln<1 then return end local nmh=gg.getResults(1)sl=gg.getValues(nmh)fzmnh=sl[1].value gg.alert("༺ཌༀ⛦🌩房主迷你号:"..fzmnh.."🌩⛦ༀད༻")gg.copyText(fzmnh)end

function b13()
F = gg.alert("༺ཌༀ⛦🌩无限摔死🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭️️🌩⛦ༀད༻") if F~=1 and F~=2 then else end if F== 1 then qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩无限摔死🌩⛦ༀད༻"},{["value"] = 515396075740, ["type"] = 32},{["lv"] = 60, ["offset"] = -0x10, ["type"] = 4},{["lv"] = 180, ["offset"] = -0xC, ["type"] = 4},{["lv"] = 120, ["offset"] = -0x4, ["type"] = 4},}qmxg = {{["value"] = 1500, ["offset"] = 0xC, ["type"] = 4, ["freeze"] = true},}xqmnb(qmnb)gg.clearResults()elseif F== 2 then qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩无限摔死🌩⛦ༀད༻"},{["value"] = 515396075740, ["type"] = 32},{["lv"] = 60, ["offset"] = -0x10, ["type"] = 4},{["lv"] = 180, ["offset"] = -0xC, ["type"] = 4},{["lv"] = 120, ["offset"] = -0x4, ["type"] = 4},}qmxg = {{["value"] = 1500, ["offset"] = 0xC, ["type"] = 4, ["freeze"] = false},}xqmnb(qmnb)gg.clearResults()end end

function b14()
x = gg.prompt({"༺ཌༀ⛦🌩请输入修改代码🌩⛦ༀད༻"},{[1]=3434},{[1]="number"})[1]qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩喷漆罐道具🌩⛦ༀད༻"},{["value"]=12240,["type"]=4},{["lv"]=200,["offset"]=0x228,["type"]=4},{["lv"]=2,["offset"]=8,["type"]=4},}qmxg={{["value"]=x,["offset"]=-0x400,["type"]=4}}xqmnb(qmnb)gg.clearResults() gg.toast("༺ཌༀ⛦🌩喷漆罐已修改为["..x.."]🌩⛦ༀད༻")end

function b14()
local lujing="༺ཌༀ⛦🌩喷漆罐改物品🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入物品代码🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end x=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not x then return end x=x[1]io.open("/sdcard/xy"..lujing,"w"):write(x):close()gg.toast(so({"喷漆罐改物品",12240,4,4},{{200,0x228,4},{2,8,4}},{{x,-0x400,4,1}}))gg.toast("༺ཌༀ⛦🌩喷漆罐已修改为["..x.."]🌩⛦ༀད༻")end

function b15()
qmnb = {{memory = 4},{name = "༺ཌༀ⛦🌩人物加速🌩⛦ༀད༻"},{value = 4812096202965778432,type = 32},{lv = 1065353216,offset = 0xD8,type = 4}}qmxg = {{value = gg.prompt({"༺ཌༀ⛦🌩独家人物加速🌩⛦ༀད༻"})[1],offset = 0x84,type = 16}}xqmnb(qmnb)gg.toast("༺ཌༀ⛦🌩已修改为该速度🌩⛦ༀད༻")end

function b16()
F = gg.alert("༺ཌༀ⛦🌩能量剑强化🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭️️🌩⛦ༀད༻")if F== 1 then qmnb = {{["memory"]=4},{["name"]="༺ཌༀ⛦🌩能量剑强化🌩⛦ༀད༻"},{["value"]=12005,["type"]=4},{["lv"]=12005,["offset"]=-4,["type"]=4},{["lv"]=12005,["offset"]=-12,["type"]=4},{["lv"]=101133,["offset"]=0x140,["type"]=4},{["lv"]=5.0,["offset"]=0x4C,["type"]=16},{["lv"]=1,["offset"]=0x138,["type"]=4},}qmxg = {{["value"]=0,["offset"]=0x4C,["type"]=16},{["value"]=0,["offset"]=0x138,["type"]=4},}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩能量剑强化已开启🌩⛦ༀད༻")elseif F == 2 then qmnb = {{["memory"]=4},{["name"]="༺ཌༀ⛦🌩能量剑强化🌩⛦ༀད༻"},{["value"]=12005,["type"]=4},{["lv"]=12005,["offset"]=-4,["type"]=4},{["lv"]=12005, ["offset"]=-12,["type"]=4},{["lv"]=101133,["offset"]=0x140,["type"]=4},{["lv"]= 0.0,["offset"]=0x4C,["type"]=16},{["lv"]=0,["offset"]=0x138,["type"]=4},}qmxg = {{["value"]=5.0,["offset"]=0x4C,["type"]=16},{["value"]=1,["offset"]=0x138,["type"]=4},}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩能量剑强化已关闭🌩⛦ༀད༻")end end

function b17()
qmnb = {{["memory"] = 16384},{["name"] = "༺ཌༀ⛦🌩人物浮空🌩⛦ༀད༻"},{["value"] = 4.0, ["type"] = 16},{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},}qmxg = {{["value"] = 0, ["offset"] = -4, ["type"] = 16},}xqmnb(qmnb)gg.toast("༺ཌༀ⛦🌩人物浮空开启成功🌩⛦ༀད༻")end

function b18()
qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩伪房员🌩⛦ༀད༻"},{["value"] = 11014, ["type"] = 4},{["lv"] = 11522, ["offset"] = -4, ["type"] = 4},}qmxg = {{["value"] = 2, ["offset"] = 32, ["type"] = 4},}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩伪房员开启成功🌩⛦ༀད༻")end

function b20()
local lujing="༺ཌༀ⛦🌩人物重力🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩重力倍数🌩⛦ༀད༻"if io.open("/sdcard/.ym.a"..lujing, "rb") == nil then io.open("/sdcard/.ym.a"..lujing,"w"):write(""):close() nr=io.open("/sdcard/.ym.a"..lujing,"r"):read("*a") else nr=io.open("/sdcard/.ym.a"..lujing,"r"):read("*a") end zhi=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not zhi then return end zhi=zhi[1]io.open("/sdcard/.ym.a"..lujing,"w"):write(zhi):close()gg.toast(so({"༺ཌༀ⛦🌩重力修改🌩⛦ༀད༻",4.0,16384,16},{{8.0,-4,16}},{{zhi,-4,16}}))gg.toast("༺ཌༀ⛦🌩重力已修改为:["..zhi.."]🌩⛦ༀད༻")end

function b21()
local lujing="༺ཌༀ⛦🌩添加物品🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩添加物品🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end x=gg.prompt({"༺ཌༀ⛦🌩物品代码🌩⛦ༀད༻","༺ཌༀ⛦🌩添加数量🌩⛦ༀད༻[1;200]"},{[1]="",[2]="64"},{[1]="number",[2]="number"})if x then so({"༺ཌༀ⛦🌩添加物品🌩⛦ༀད༻",x[1],4,4},{{"1~64",-0x1D4,4},{"200~500",-0x1D8,4}},{{nil,0,4,2}})for i,v in ipairs(gg.getListItems())do if v.value==x[1] then tt=v.address sj1=gg.getValues({{address=v.address+0x344,flags=4}})end end if sj1 then gg.toast(so({"༺ཌༀ⛦🌩添加物品🌩⛦ༀད༻",1007,4,4},{{1000,-0x700},{1001,-0x600},{1002,-0x500},{1003,-0x400},{1004,-0x300},{1005,-0x200},{1006,-0x100}},{{945804460~x[2],4,4},{2000,8,4},{tt,0x78,32},{sj1[1].value,0x7C,4}}))else gg.toast("༺ཌༀ⛦🌩物品添加失败🌩⛦ༀད༻") end end end

function b23()
local lujing="༺ཌༀ⛦🌩人物大小🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩人物大小🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end x=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not x then return end x=x[1]io.open("/sdcard/xy"..lujing,"w"):write(x):close()gg.toast(so({"༺ཌༀ⛦🌩人物大小🌩⛦ༀད༻",16777473,4,32},{{-1,-0x4,4}},{{x,0x148,16}}))gg.toast("༺ཌༀ⛦🌩人物大小已修改为["..x.."]🌩⛦ༀད༻")end

function b24()
local lujing="༺ཌༀ⛦🌩秒挖方块🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩秒挖方块🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end F = gg.alert("༺ཌༀ⛦🌩秒挖方块🌩⛦ༀད༻","开启","️关闭️️")if F== 1 then gg.toast(so({"༺ཌༀ⛦🌩秒挖方块🌩⛦ༀད༻",1133903872,16384,4},{{50.0,4,16},{-70.0,-8,16},{100.0,8,16}},{{0,-4,16}}))gg.toast("༺ཌༀ⛦🌩秒挖方块开启成功🌩⛦ༀད༻") elseif F == 2 then gg.toast(so({"༺ཌༀ⛦🌩秒挖方块🌩⛦ༀད༻",1133903872,16384,4},{{50.0,4,16},{-70.0,-8,16},{100.0,8,16}},{{0.3,-4,16}}))gg.toast("༺ཌༀ⛦🌩秒挖方块关闭成功🌩⛦ༀད༻")end end

function b25() 
local lujing="༺ཌༀ⛦🌩自定义特效🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入特效代码🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end zhi=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not zhi then return end zhi=zhi[1]io.open("/sdcard/xy"..lujing,"w"):write(zhi):close()gg.toast(so({"༺ཌༀ⛦🌩修改特效🌩⛦ༀད༻",1117126656,4,4},{{1065353216,-0x10},{20,0x8}},{{zhi,0x7C,4,1}}))gg.toast("༺ཌༀ⛦🌩特效已修改为["..zhi.."]🌩⛦ༀད༻")end

function b26() 
zqdm = gg.prompt({"༺ཌༀ⛦🌩请输入动作代码🌩⛦ༀད༻"},{[1]=3434},{[1]="number"})[1]qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩自定义动作🌩⛦ༀད༻"},{["value"] = mnh, ["type"] = 4},{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},}qmxg = {{["value"] = zqdm, ["offset"] = -76, ["type"] = 4},}xqmnb(qmnb) gg.toast("༺ཌༀ⛦🌩动作已修改为["..zqdm.."]🌩⛦ༀད༻")end

function b27() 
local lujing="༺ཌༀ⛦🌩自定义技能🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入技能代码🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end zhi=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not zhi then return end zhi=zhi[1]io.open("/sdcard/xy"..lujing,"w"):write(zhi):close()gg.toast(so({"༺ཌༀ⛦🌩自定义技能🌩⛦ༀད༻",1117126656,4,4},{{1065353216,-0x10},{20,0x8}},{{zhi,0x19C,4,1}})) gg.toast("༺ཌༀ⛦🌩技能已修改为["..zhi.."]🌩⛦ༀད༻")end

function b28()
x=gg.prompt({"༺ཌༀ⛦🌩人物模式🌩⛦ༀད༻\n[1]足球  [2]恢复  [3]篮球\n[1;3]"},{[1]="3"},{[1]="number"})gg.toast(so({"人物模式",a,4,4},{{a,-0x430,4}},{{x[1],-0x270,4}}))gg.toast("༺ཌༀ⛦🌩人物模式已注入🌩⛦ༀད༻")end

function b29()
local lujing="༺ཌༀ⛦🌩人物模式距离🌩⛦ༀད༻"local biaoti="༺ཌༀ⛦🌩请输入修改距离🌩⛦ༀད༻"if io.open("/sdcard/xy"..lujing, "rb") == nil then io.open("/sdcard/xy"..lujing,"w"):write(""):close() nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") else nr=io.open("/sdcard/xy"..lujing,"r"):read("*a") end zhi=gg.prompt({"༺ཌༀ⛦🌩"..biaoti.."🌩⛦ༀད༻"},{nr},{"text"}) if not zhi then return end zhi=zhi[1]io.open("/sdcard/xy"..lujing,"w"):write(zhi):close() gg.toast(so({"༺ཌༀ⛦🌩人物模式距离🌩⛦ༀད༻",-998965248,4,4},{{1053609165,-4,4}},{{zhi,-8,4,1}}))gg.toast("༺ཌༀ⛦🌩距离已修改为["..zhi.."]🌩⛦ༀད༻")end

function b30()
F = gg.alert("༺ཌༀ⛦🌩远程攻击🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭🌩⛦ༀད༻️️")if F== 1 then qmnb = {{["memory"]=16384},{["name"]="༺ཌༀ⛦🌩远程攻击🌩⛦ༀད༻"},{["value"]=4911738344744222720,["type"]=32},{["lv"]=1143603200,["offset"]=4,["type"]=4},}qmxg={{["value"]=-1,["offset"]=-4,["type"]=16}}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩远程攻击已开启🌩⛦ༀད༻")elseif F==2 then qmnb={{["memory"]=16384},{["name"]="༺ཌༀ⛦🌩远程攻击🌩⛦ༀད༻"},{["value"]=4911738344744222720,["type"]=32},{["lv"]=1143603200,["offset"]=4,["type"]=4},}qmxg={{["value"]=0.10000000149,["offset"]=-4,["type"]=16}}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩远程攻击已关闭🌩⛦ༀད༻")end end

function b31()
e = io.open("/sdcard/名字配置文件.txt", "rb") if e ==nil then mznb ="" else e = io.open("/sdcard/名字配置文件.txt"):read("*a") mznb = e:match("(.-)") if e == "" then mznb = "" end end mnm = ":W"mnmz = ":w"mnmcq = gg.prompt({"༺ཌༀ⛦🌩输入修改的名字🌩⛦ༀད༻"},{[1]=mznb},{[1]="text"})if not mnmcq then return end mnmc = ":"..mnmcq[1]io.open("/sdcard/名字配置文件.txt", "w") io.open("/sdcard/名字配置文件.txt", "w"):write("" .. mnmcq[1].. ""):close()qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩临时改名🌩⛦ༀད༻"},{["value"] = a, ["type"] = 32},{["lv"] = 0, ["offset"] = 4, ["type"] = 32},{["lv"] = 0, ["offset"] = 8, ["type"] = 32},{["lv"] = 0, ["offset"] = 12, ["type"] = 32},{["lv"] = 0, ["offset"] = 16, ["type"] = 32},{["lv"] = 0, ["offset"] = 20, ["type"] = 32},{["lv"] = 0, ["offset"] = 24, ["type"] = 32},{["lv"] = 0, ["offset"] = 28, ["type"] = 32},{["lv"] = 0, ["offset"] = 32, ["type"] = 32},{["lv"] = 0, ["offset"] = 36, ["type"] = 32},{["lv"] = 0, ["offset"] = 40, ["type"] = 32},{["lv"] = 0, ["offset"] = 44, ["type"] = 32},{["lv"] = 0, ["offset"] = 48, ["type"] = 32},{["lv"] = 0, ["offset"] = 52, ["type"] = 32},{["lv"] = 0, ["offset"] = 56, ["type"] = 4},{["lv"] = 0, ["offset"] = 60, ["type"] = 4},{["lv"] = 0, ["offset"] = 0x5C, ["type"] = 4},{["lv"] = 0, ["offset"] = 0x60, ["type"] = 4},}qmxg = {{["value"] = mnm, ["offset"] = 65, ["type"] = 1},{["value"] = mnm, ["offset"] = 66, ["type"] = 1},{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},{["value"] = mnm, ["offset"] = 68, ["type"] = 1},{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},{["value"] = mnm, ["offset"] = 96, ["type"] = 1},}xqmnb(qmnb)gg.clearResults()gg.searchNumber(":WWwWwwwwwwwwwwwwwwwwwwwwwwwwwwwW", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)gg.getResults(400)gg.editAll(mnmc, gg.TYPE_BYTE)if gg.getResultCount() == 0 then else end gg.clearResults()end

function b32()
zhi = gg.prompt({"༺ཌༀ⛦🌩输入对接迷你号🌩⛦ༀད༻"},{[1]=""},{[1]="number"})if not zhi then return end qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩账号对接🌩⛦ༀད༻"},{["value"] = a, ["type"] = 32},{["lv"] = 0, ["offset"] = 4, ["type"] = 32},{["lv"] = 0, ["offset"] = 8, ["type"] = 32},{["lv"] = 0, ["offset"] = 12, ["type"] = 32},{["lv"] = 0, ["offset"] = 16, ["type"] = 32},{["lv"] = 0, ["offset"] = 20, ["type"] = 32},{["lv"] = 0, ["offset"] = 24, ["type"] = 32},{["lv"] = 0, ["offset"] = 28, ["type"] = 32},{["lv"] = 0, ["offset"] = 32, ["type"] = 32},{["lv"] = 0, ["offset"] = 36, ["type"] = 32},{["lv"] = 0, ["offset"] = 40, ["type"] = 32},{["lv"] = 0, ["offset"] = 44, ["type"] = 32},{["lv"] = 0, ["offset"] = 48, ["type"] = 32},{["lv"] = 0, ["offset"] = 52, ["type"] = 32},{["lv"] = 0, ["offset"] = 56, ["type"] = 4},{["lv"] = 0, ["offset"] = 60, ["type"] = 4},{["lv"] = 0, ["offset"] = 0x5C, ["type"] = 4},{["lv"] = 0, ["offset"] = 0x60, ["type"] = 4},}qmxg = {{["value"] = zhi[1], ["offset"] = 0, ["type"] = 32},}xqmnb(qmnb)end

function b33()
gg.clearResults()gg.setRanges(4)gg.searchNumber("4,812,096,205,058,211,840", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber("4,812,096,205,058,211,840", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)jg=gg.getResults(200)sl=gg.getResultCount()for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 100}})end gg.toast("༺ཌༀ⛦🌩死亡移动已注入🌩⛦ༀད༻")gg.clearResults()end

function b34()
gg.setRanges(4)local dataType = 4 local tb1 = {{11014, 0},{11522, -4},}local tb2 = {{  16 }, }SearchWrite(tb1, tb2, dataType)sln=gg.getResultCount()if sln<1 then return end local nmb=gg.getResults(1) sl=gg.getValues(nmb)t=sl[1].value s1={} s3={} so({("第一步"),72058702139490303,4,32},{{"10000~2000000000",0x4C,4},{"10000~2000000000",0x47C,4},{16777473,4,4},{"0~3",0x20C,4},{999,0x5C0,4}},{{nil,0,32,2}})for i,v in ipairs(gg.getListItems()) do if v.value== 72058702139490303 then mnh=gg.getValues({{address=v.address+0x4C,flags=4}})[1].value mnmz=gg.getValues({{address=v.address+0x3B5,flags=1}})[1].address s1[mnh]=hqmz(mnmz).."["..mnh.."]" s3[#s3+1]=mnh end end local s2=gg.choice(s1,2022,"检测到当前房间有"..#s3.."人")qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩动态伤害追踪🌩⛦ༀད༻"},{["value"] = a, ["type"] = 32},{["lv"] = a, ["offset"] = 0, ["type"] = 32},}qmxg = {{["value"] = s2, ["offset"] = 0, ["type"] = 32, ["freeze"] = true},}xqmnb(qmnb)end

function b35() 
gg.setRanges(4)local dataType = 4 local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}local tb2 = {{  -0x74 }, }SearchWrite(tb1, tb2, dataType)sln=gg.getResultCount()if sln<1 then return end local nmb=gg.getResults(1) sl=gg.getValues(nmb)dm=sl[1].value gg.alert("手持物品代码为:"..dm.."")end

function C() SN = gg.multiChoice({
"༺ཌༀ⛦🌩单机模式修改🌩⛦ༀད༻",
"༺ཌༀ⛦🌩联机模式修改🌩⛦ༀད༻",
"༺ཌༀ⛦🌩快捷栏改物品🌩⛦ༀད༻",
"༺ཌༀ⛦🌩改编辑器填充🌩⛦ༀད༻",
"༺ཌༀ⛦🌩改背包内物品🌩⛦ༀད༻",
"༺ཌༀ⛦🌩 返 回 主 页 🌩⛦ༀད༻",
 }, nil, "𒅒做好更充实的准备对待明天𒅒")
if SN == nil then else
if SN[1]==true then c1() end
if SN[2]==true then c2() end
if SN[3]==true then c3() end
if SN[4]==true then c4() end
if SN[5]==true then c5() end
if SN[6]==true then Main() end end FX=0 end

function c1()
ms1= gg.choice({
"༺ཌༀ⛦🌩编 辑 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩玩 法 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩创 造 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩模 拟 冒 险🌩⛦ༀད༻",
"༺ཌༀ⛦🌩冒 险 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩极 限 生 存🌩⛦ༀད༻",
"༺ཌༀ⛦🌩高 级 生 存🌩⛦ༀད༻",
"༺ཌༀ⛦🌩返 回 主 页🌩⛦ༀད༻"},2022,os.date("༺ཌༀ⛦单机模式修改⛦ༀད༻"))
if ms1==1 then x=4 xgms1() end
if ms1==2 then x=5 xgms1() end
if ms1==3 then x=1 xgms1() end
if ms1==4 then x=3 xgms1() end
if ms1==5 then x=0 xgms1() end
if ms1==6 then x=2 xgms1() end
if ms1==7 then x=6 xgms1() end
if ms1==8 then Main() end XGCK=-1 end
function xgms1()gg.toast(so({"修改模式",a,4,4},{{a,20,4}},{{x,16,4}}))end

function c2()
gg.setRanges(4)local dataType = 4 local tb1={{11014,0},{11522,-4},}local tb2={{16},}SearchWrite(tb1, tb2, dataType)sl=gg.getResultCount()if sl<1 then return end local nmb=gg.getResults(1)sl=gg.getValues(nmb)D=sl[1].value 
ms2= gg.choice({
"༺ཌༀ⛦🌩编 辑 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩玩 法 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩创 造 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩模 拟 冒 险🌩⛦ༀད༻",
"༺ཌༀ⛦🌩冒 险 模 式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩极 限 生 存🌩⛦ༀད༻",
"༺ཌༀ⛦🌩高 级 生 存🌩⛦ༀད༻",
"༺ཌༀ⛦🌩返 回 主 页🌩⛦ༀད༻"},2022,os.date("༺ཌༀ⛦联机模式修改⛦ༀད༻"))
if ms2==1 then x=4 xgms2() end
if ms2==2 then x=5 xgms2() end
if ms2==3 then x=1 xgms2() end
if ms2==4 then x=3 xgms2() end
if ms2==5 then x=0 xgms2() end
if ms2==6 then x=2 xgms2() end
if ms2==7 then x=6 xgms2() end
if ms2==8 then Main() end XGCK=-1 end
function xgms2()gg.toast(so({"修改模式",D,4,4},{{D,20,4}},{{x,16,4}}))end

function c3()
gg.setRanges(4)local dataType = 4 local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}local tb2 = {{  -0x74 }, }SearchWrite(tb1, tb2, dataType)sln=gg.getResultCount()if sln<1 then return end local nmb=gg.getResults(1) sl=gg.getValues(nmb)dm=sl[1].value SNa=gg.alert("༺ཌༀ⛦🌩手持物品代码"..dm.."🌩⛦ༀད༻","༺ཌༀ⛦🌩修改物品🌩⛦ༀད༻")if SNa==1 then Main3() end end function Main3() dmxg = gg.prompt({""},{[1]=11551},{[1]="number"})[1]gg.toast(so({"物品",dm,4,4},{{64,-0x1D4,4},{200,-0x1D8,4}},{{dmxg,0,4}}))gg.toast(so({"复制",1007,4,4},{{1000,-0x700},{1001,-0x600},{1002,-0x500},{1003,-0x400},{1004,-0x300},{1005,-0x200},{1006,-0x100}},{{945812387,-0x6FC,4}}))for i,v in ipairs(gg.getListItems())do if v.value==1125922447032320 then tuy=1 gg.setValues({{address=v.address+-0x40,flags=4,value=16777472}}) end end if not tuy then so({"界面",1125922447032320,4,32},{{16777216,-0x40,4},{72057594037927946,-0x64,32},{-773094113280,-0x3C,32}},{{16777472,-0x40,4},{nil,0,32,2}})end end

function c4()
xgtcwp = gg.prompt({"༺ཌༀ⛦🌩输入修改方块代码🌩⛦ༀད༻"},{[1]=2},{[1]="number"})gg.toast(so({"༺ཌༀ⛦🌩填充方块修改🌩⛦ༀད༻",42949672960230,4,32},{{230,0x10,4},{10000,4,4}},{{tcwp,-0x60,4}}))gg.toast("༺ཌༀ⛦🌩填充方块修改已注入🌩⛦ༀད༻")end

function c5()
xgbbwp=gg.prompt({"༺ཌༀ⛦🌩背包物品代码🌩⛦ༀད༻","༺ཌༀ⛦🌩修改物品代码🌩⛦ༀད༻"},{[1]="",[2]=""},{[1]="number",[2]="number"})gg.clearResults()gg.setRanges(262207)gg.searchNumber(xgbbwp[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber(xgbbwp[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)jg=gg.getResults(100)sl=gg.getResultCount()for i = 1, sl do dzy=jg[i].address gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = xgbbwp[2]}})end gg.toast("༺ཌༀ⛦🌩背包物品代码"..xgbbwp[1].."已被修改为"..xgbbwp[2].."🌩⛦ༀད༻")gg.clearResults()end

function D() SN = gg.multiChoice({
"༺ཌༀ⛦🌩全枪械无后坐🌩⛦ༀད༻",
"༺ཌༀ⛦🌩修改游戏分数🌩⛦ༀད༻",
"༺ཌༀ⛦🌩人物三角透视🌩⛦ༀད༻",
"༺ཌༀ⛦🌩人称超远攻击🌩⛦ༀད༻",
"༺ཌༀ⛦🌩修改枪械子弹🌩⛦ༀད༻",
"༺ཌༀ⛦🌩枪械子弹防抖🌩⛦ༀད༻",
"༺ཌༀ⛦🌩添加狙击准星🌩⛦ༀད༻",
"༺ཌༀ⛦🌩人物观战模式🌩⛦ༀད༻",
"༺ཌༀ⛦🌩环境暗黑笼罩🌩⛦ༀད༻",
"༺ཌༀ⛦🌩测试未知功能🌩⛦ༀད༻",
"༺ཌༀ⛦🌩 返 回 主 页 🌩⛦ༀད༻",
 }, nil, "𒅒星辰大海仿如梦境𒅒")
if SN == nil then else
if SN[1]==true then d1() end
if SN[2]==true then d2() end
if SN[3]==true then d3() end
if SN[4]==true then d4() end
if SN[5]==true then d5() end
if SN[6]==true then d6() end
if SN[7]==true then d7() end
if SN[8]==true then d8() end
if SN[9]==true then d9() end
if SN[10]==true then d10() end
if SN[11]==true then Main() end end FX=0 end

function d1()
gg.toast(so({("༺ཌༀ⛦🌩全枪无后做🌩⛦ༀད༻"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩全枪无后做🌩⛦ༀད༻"},{["value"] =15003 , ["type"] = 4},{["lv"] = 15004, ["offset"] = -136, ["type"] = 4},}qmxg = {{["value"] = 0, ["offset"] = -24,["type"] = 16},}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩全枪无后做已注入🌩⛦ༀད༻")end

function d2()
fsxg= gg.choice({
"༺ཌༀ⛦🌩红 队 分 数🌩⛦ༀད༻",
"༺ཌༀ⛦🌩蓝 队 分 数🌩⛦ༀད༻",
"༺ཌༀ⛦🌩绿 队️ 分 数🌩⛦ༀད༻",
"༺ཌༀ⛦🌩黄 队 分 数🌩⛦ༀད༻",
"༺ཌༀ⛦🌩橙 队 分 数🌩⛦ༀད༻",
"༺ཌༀ⛦🌩紫 队 分 数🌩⛦ༀད༻",    
"༺ཌༀ⛦🌩返 回 主 页🌩⛦ༀད༻",},2022,os.date("️༺ཌༀ⛦修改分数⛦ༀད༻"))
if fsxg==1 then x=-120 xgfs() end
if fsxg==2 then x=-104 xgfs() end
if fsxg==3 then x=-88 xgfs() end
if fsxg==4 then x=-72 xgfs() end
if fsxg==5 then x=-56 xgfs() end
if fsxg==6 then x=-40 xgfs() end
if fsxg==7 then Main() end XGCK=-1 end
function xgfs()mn1=gg.prompt({"༺ཌༀ⛦🌩游戏当前的分数🌩⛦ༀད༻"},{'0'},{"number"})[1]gg.clearResults()mn2=gg.prompt({"༺ཌༀ⛦🌩输入修改的分数🌩⛦ༀད༻"},{''},{"number"})[1]gg.setRanges(4)local dataType = 4 local tb1 = {{600, 0}, {mn1,x},{-1, -984} }local tb2 = {{mn2,x}, }SearchWrite(tb1, tb2, dataType) gg.toast("༺ཌༀ⛦🌩分数已修改为"..mn2.."🌩⛦ༀད༻")gg.clearResults()end

function d3()
F=gg.alert("༺ཌༀ⛦🌩人物三角透视🌩⛦ༀད༻","开启️","️关闭️️️")
if F ~= 1 and F ~= 2 then else end if F==1 then gg.toast(so({"༺ཌༀ⛦🌩三角透视🌩⛦ༀད༻",196608,16384,4},{{65538,8,4}},{{1,16,4}}))gg.toast("༺ཌༀ⛦🌩三角透视开启成功🌩⛦ༀད༻")elseif F==2 then gg.toast(so({"༺ཌༀ⛦🌩三角透视🌩⛦ༀད༻",196608,16384,4},{{65538,8,4}},{{65536,16,4}}))gg.toast("༺ཌༀ⛦🌩三角透视关闭成功🌩⛦ༀད༻")end end

function d4()
qmnb = {{["memory"] = 16384},{["name"] = "༺ཌༀ⛦🌩人称超远攻击🌩⛦ༀད༻"},{["value"] = 640, ["type"] = 16},{["lv"] = 1143275520, ["offset"] = 12, ["type"] = 4},{["lv"] = 350.0, ["offset"] = -8, ["type"] = 16},}qmxg = {{["value"] = -1, ["offset"] = 8, ["type"] = 16},}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩人称超远攻击已注入🌩⛦ༀད༻")end

function d5()
xgzd= gg.choice({
"️༺ཌༀ⛦🌩狙击枪改子弹🌩⛦ༀད༻",
"️༺ཌༀ⛦🌩冲锋枪改子弹🌩⛦ༀད༻️",
"️༺ཌༀ⛦🌩重机枪改子弹🌩⛦ༀད༻️",
"༺ཌༀ⛦🌩返 回 主 页🌩⛦ༀད༻",},2022,os.date("️༺ཌༀ⛦修改子弹⛦ༀད༻"))
if xgzd==1 then xgzd1() end
if xgzd==2 then xgzd2() end
if xgzd==3 then xgzd3() end
if xgzd==4 then Main() end XGCK=-1 end
function xgzd1()
zd1 = gg.prompt({"༺ཌༀ⛦🌩输入子弹代码🌩⛦ༀད༻12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"},{[1]=""},{[1]="number"})[1]qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩改狙击枪子弹🌩⛦ༀད༻"},{["value"] = 1155186688, ["type"] = 4},{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},}qmxg = {{["value"] = zd1, ["offset"] = 24, ["type"] = 4},{["value"] = 1, ["offset"] = 20, ["type"] = 4},{["value"] = 0, ["offset"] = -28, ["type"] = 16},{["value"] = 0, ["offset"] = -44, ["type"] = 16},}xqmnb(qmnb)gg.toast("༺ཌༀ⛦🌩子弹修改成功🌩⛦ༀད༻")end
function xgzd2()
zd2 = gg.prompt({"༺ཌༀ⛦🌩输入子弹代码🌩⛦ༀད༻12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"},{[1]=""},{[1]="number"})[1]qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩改冲锋枪子弹🌩⛦ༀད༻"},{["value"] = 1154613248, ["type"] = 4},{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},}qmxg = {{["value"] = zd2, ["offset"] = 24, ["type"] = 4},{["value"] = 1, ["offset"] = 20, ["type"] = 4},{["value"] = 0, ["offset"] = -28, ["type"] = 16},{["value"] = 0, ["offset"] = -44, ["type"] = 16},}xqmnb(qmnb)gg.toast("༺ཌༀ⛦🌩子弹修改成功🌩⛦ༀད༻")end
function xgzd3()
zd3 = gg.prompt({"༺ཌༀ⛦🌩输入子弹代码🌩⛦ༀད༻12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"},{[1]=12299},{[1]="number"})[1]qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩改重机枪子弹🌩⛦ༀད༻"},{["value"] = 1157840896, ["type"] = 4},{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},}qmxg = {{["value"] = zd3, ["offset"] = 24, ["type"] = 4},{["value"] = 1, ["offset"] = 20, ["type"] = 4},{["value"] = 0, ["offset"] = -28, ["type"] = 16},{["value"] = 0, ["offset"] = -44, ["type"] = 16},}xqmnb(qmnb)gg.toast("༺ཌༀ⛦🌩子弹修改成功🌩⛦ༀད༻")end

function d6()
gg.toast(so({("༺ཌༀ⛦🌩枪械子弹防抖🌩⛦ༀད༻"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))end

function d7()
F=gg.alert("༺ཌༀ⛦🌩添加狙击准星🌩⛦ༀད༻","开启️","️关闭️️️")if F ~= 1 and F ~= 2 then else end if F==1 then qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩添加狙击准星🌩⛦ༀད༻"},{["value"] = 15003, ["type"] = 4},{["lv"] = 40, ["offset"] = -32, ["type"] = 4}}qmxg = {{["value"]= 1,["offset"]= -28,["type"]= 4}}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩狙击准星已开启🌩⛦ༀད༻")elseif  F== 2 then qmnb = {{["memory"] = 4},{["name"] = "༺ཌༀ⛦🌩添加狙击准星🌩⛦ༀད༻"},{["value"] = 15003, ["type"] = 4},{["lv"] = 40, ["offset"] = -32, ["type"] = 4}}qmxg = {{["value"]= 0,["offset"]= -28,["type"]= 4}}xqmnb(qmnb)gg.clearResults()gg.toast("༺ཌༀ⛦🌩狙击准星已关闭🌩⛦ༀད༻")end end

function d8()
F=gg.alert("༺ཌༀ⛦🌩人物观战模式🌩⛦ༀད༻","开启️","️关闭️️️")if F ~= 1 and F ~= 2 then else end if F==1 then gg.toast(so({"༺ཌༀ⛦🌩人物观战模式🌩⛦ༀད༻",1121452032,4,4},{{1118568448,-4,4},{16777216,-64,4},{1065353216,-12,4},{65536,-88,4}},{{16777472,-64,4,1}}))gg.toast("༺ཌༀ⛦🌩人物观战模式已开启🌩⛦ༀད༻")elseif F==2 then gg.toast(so({"观战模式",1121452032,4,4},{{1118568448,-4,4},{16777472,-64,4},{1065353216,-12,4},{65536,-88,4}},{{16777216,-64,4,1}}))gg.toast("༺ཌༀ⛦🌩人物观战模式已关闭🌩⛦ༀད༻")end end

function d9()
F = gg.alert("༺ཌༀ⛦🌩星陨迷你壳独家环境暗黑笼罩🌩⛦ༀད༻","༺ཌༀ⛦🌩开启🌩⛦ༀད༻","༺ཌༀ⛦🌩关闭️️🌩⛦ༀད༻")if F~=1 and F~=2 then else end if  F== 1 then gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家环境暗黑笼罩🌩⛦ༀད༻",4095,16,4},{{-16777216,4,4},{15,-0x20,4}},{{-99,-0x38,4}}))elseif F == 2 then gg.toast(so({"༺ཌༀ⛦🌩星陨迷你壳独家环境暗黑笼罩🌩⛦ༀད༻",4095,16,4},{{-16777216,4,4},{15,-0x20,4}},{{1,-0x38,4}}))end end
 
function d10()
SN = gg.choice({
	 "⚠️修改999999迷你币⚠",
	 "💯全人物💯",
	 "💯踢房主💯",
	 "💎隐身模式💎",
	 "💎飞天模式💎",
	 "❤️无敌状态❤",
	 "❤️无限生命❤",
	 "👿无限弹药👿",
	 "👿精度瞄准👿",
	 "返回脚本️",
}, nil, "我们会再相见的")
if SN==1 then
	 HS31()
end
if SN==2 then
	 HS32()
end
if SN==3 then
	 HS33()
end
if SN==4 then
	 HS34()
end
if SN==5 then
	 HS35()
end
if SN==6 then
	 HS36()
end
if SN==7 then
	 HS37()
end
if SN==8 then
	 HS38()
end
if SN==9 then
	 HS39()
end
if SN==10 then
	 HS59()
end
FX1=0
end

function HS31()
	 gg.clearResults()
	 gg.searchNumber("1;0.01;0.2;0.3::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS32()
	 gg.clearResults()
	 gg.searchNumber("3;6.7;9.2;7.9::3.4.6.5；6.1.6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS33()
	 gg.clearResults()
	 gg.searchNumber("9;4.62.3.26;08.22;.6.0.3.；3.38::333", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS34()
	 gg.clearResults()
	 gg.searchNumber("77;30.051;0.62;0632.3::5.8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS35()
	 gg.clearResults()
	 gg.searchNumber("331;80.8;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS36()
	 gg.clearResults()
	 gg.searchNumber("9.6.5；541；6.9.3.538.85.6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS37()
	 gg.clearResults()
	 gg.searchNumber("5999.399.33.8.6.52.659；713583.2.6.4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS38()
	 gg.clearResults()
	 gg.searchNumber("3.9；7.9.999999999.6；123", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS39()
	 gg.clearResults()
	 gg.searchNumber("9.99.999.9999.99999；9.8.7.6.5.4.3.5.1.0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("代桃很优秀")
end

function HS59()
	 Main()
end

function E()  SN = gg.choice({
"༺ཌༀ⛦🌩音 乐 搜 索🌩⛦ༀད༻️",
"༺ཌༀ⛦🌩搜 索 列 表🌩⛦ༀད༻️",
"️️༺ཌༀ⛦🌩热 门 音 乐🌩⛦ༀད༻",
"️️༺ཌༀ⛦🌩暂 停 播 放🌩⛦ༀད༻",
"️️༺ཌༀ⛦🌩缓 存 清 理🌩⛦ༀད༻",
"༺ཌༀ⛦🌩返 回 主 页🌩⛦ༀད༻️️",
},2022,os.date("𒅒🌩当前时间%Y年%m月%d日%H时%M分%S秒🌩𒅒"))
if SN==1 then e1() end
if SN==2 then e2()end
if SN==3 then e3() end
if SN==4 then e4() end
if SN==5 then e5() end
if SN==6 then Main() end FX1=0 end

--[[༺ཌༀ⛦🌩音乐搜索🌩⛦ༀད༻]]local g = {}g.file = gg.getFile()g.sel = nil gqlb={"请先搜索音乐",}idb={"1010"}SN,gc=1,nil g.config = gg.getFile():gsub("%lua$", "").."cfg"function bei()g.data = loadfile(g.config)if g.data ~= nil then g.sel = g.data()g.data = nil end if g.sel == nil then g.sel = {"错位时空","50"}end end bei()--[[༺ཌༀ⛦🌩音乐歌词🌩⛦ༀད༻]]function start(name,sl)fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)return fw end--[[༺ཌༀ⛦🌩音乐播放🌩⛦ༀད༻]]function play(id,name)gg.toast("༺ཌༀ⛦🌩正在播放音乐🌩⛦ༀད༻"..name,true)gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")end--[[༺ཌༀ⛦🌩匹配正则表达式🌩⛦ༀད༻]]function Play(gqlb,idb)SN = gg.choice(gqlb,nil,ts)if SN == nil then XGCK =-1 else sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN])end XGCK=-1 end end function zjson(jsonr)local str = jsonr local pattern = "\"[%w]+\":" string.gsub(str, pattern, function(v)if string.find(str, v) then str = string.gsub(str, v, string.gsub(v, "\"", "")) end end)str = string.gsub(str, ":", "=")str = string.gsub(str, "%[", "{")str = string.gsub(str, "%]", "}")local data = "return " .. str local res = load(data)()return res end function json(con)res=zjson(con)zd=res.result.songCount pd=go3-zd if pd <= 0 then else go3=zd end ts="《"..go1.."》找到"..zd.."首歌曲 当前显示"..go3.."首"gqlb={}idb={}for i=1,go3 do gqlb[i]=res.result.songs[i].name idb[i]=res.result.songs[i].id end end 

function e1()
search = gg.prompt({"༺ཌༀ⛦🌩输入音乐名称🌩⛦ༀད༻","༺ཌༀ⛦🌩搜索展示数量🌩⛦ༀད༻",},g.sel,{"text",})if search == nil then Main6() end gg.saveVariable(search,g.config)bei()go1=search[1]go3=search[2]jg=start(go1,go3)if jg.code == 200 then fh=jg.content fh=json(fh)Play(gqlb,idb)else function inspect()gg.alert("༺ཌༀ⛦🌩网络访问异常🌩⛦ༀད༻"..jg.code)if not pcall(inspect) then os.exit() end end XGCK=-1 end end 

function e2()
SN = gg.choice(gqlb,nil,ts)if SN == nil then XGCK =-1 else sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])if sn == nil then end if sn == 1 then play(idb[SN],gqlb[SN])end XGCK=-1 end end

function e3() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen)gg.toast("༺ཌༀ⛦🌩正在播放热门音乐🌩⛦ༀད༻")end 

function e4()
for i=1,100 do gg.playMusic("stop")gg.toast("༺ཌༀ⛦🌩已停止播放🌩⛦ༀད༻")end end

function e5()
gg.sleep(500)gg.sleep(1300)gg.sleep(1000)gg.clearList()gg.toast("༺ཌༀ⛦🌩已清理缓存🌩⛦ༀད༻")end

function Exit()
print("[★已结束★]")gg.toast("🔰欢迎下次使用🔰")os.exit()end while true do if gg.isVisible(true) then FX1 = nil gg.setVisible(false) end  if FX1 == nil then Main()end end