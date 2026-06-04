
D=gg.TYPE_DWORD DOUBLE=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
Offset_Yx = function(Tab)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(Tab["内存"])
    
    gg.searchNumber(Tab["主特征码"][1], Tab["主特征码"][2], false, gg.SIGN_EQUAL, 0, -1, 0)
    
    local results = gg.getResults(gg.getResultsCount())
    if not results then
        return gg.toast("未搜到结果")
    end
    gg.clearResults()
    local Ton = tonumber
    for index, value in pairs(Tab["副特征码"]) do
    
        for i = 1, #results do
            results[i].address = results[i].address + value[3]
            results[i].flags = value[2]
        end
        local _ofResults, Final = gg.getValues(results), {}
        
        for i = 1, #_ofResults do
            local __npt, Min, Max, Length = string.find(value[1], "~")
            if __npt then
                Min = Ton(string.sub(value[1], 0, (__npt-1)))
                Max = Ton(string.sub(value[1], (__npt+1), -1))
                if _ofResults[i].value >= Min and _ofResults[i].value <= Max then
                    Length = #Final + 1
                    Final[Length] = {}
                    Final[Length].address = _ofResults[i].address - value[3]
                    Final[Length].flags = value[2]
                end
                
            elseif type(value[1]) == "table" then
                for ind, key in pairs(value[1]) do
                    if _ofResults[i].value == Ton(key) then
                        Length = #Final + 1
                        Final[Length] = {}
                        Final[Length].address = _ofResults[i].address - value[3]
                        Final[Length].flags = value[2]
                    end
                end
                
            elseif _ofResults[i].value == Ton(value[1]) then
                Length = #Final + 1
                Final[Length] = {}
                Final[Length].address = _ofResults[i].address - value[3]
                Final[Length].flags = value[2]
            end
        end
        if #Final == 0 then
            return gg.toast("未偏移到结果")
        end
        
        results = gg.getValues(Final)
    end
    for index, value in pairs(Tab["修改"]) do
    
        local EditAll = {}
        for i = 1, #results do
        
            EditAll[i] = {}
            EditAll[i].address = results[i].address + value[3]
            EditAll[i].flags = value[2]
            EditAll[i].value = value[1]
            if value[4] or Tab["是否全部冻结"] then
                EditAll[i].freeze = true
            end
        end
        
        if value[4] or Tab["是否全部冻结"] then
            gg.addListItems(EditAll)
        else
            gg.setValues(EditAll)
        end
    end
    return gg.toast(Tab["功能名字"] .. "已开启 共修改" .. (#results * #Tab["修改"]) .."条数据")
end
YxTab={}
function ledi(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 30 条数据\n      乐迪牛逼")else gg.toast(qmnbn.."开启失败，请尝试重启游戏\n    乐迪牛逼")end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功，修改16条数据") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启成功") end end end end
--指针配置不懂勿动，谢谢️
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索16条数据.修改成功", false) return false end else gg.toast("🕹:搜索93条数据.修改成功") return false end end
state={} state.a="[开启]" state.b="[开启]" state.c="[开启]" state.d="[开启]" state.e="[开启]" 
local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast("共到"..ssjgsl.."条数值") gg.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast("开启失败 原因:改善结果无数值") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("开启成功 已修改"..ssjgs.."条数值") else gg.toast("开启失败 原因:结果无数值") end end function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end function jz(sxg,zs,zsnb) flags=zs value=zsnb so=gg.getRangesList(''..name..'')[1].start js(so+sxg,zs,zsnb) end local ZS_1 = gg.alert local ZS_2 = gg.toast local ZS_3 = gg.searchNumber local ZS_4 = gg.editAll local ZS_5 = gg.setRanges local ZS_6 = gg.getResults local ZS_7 = gg.clearResults local ZS_8 = gg.searchAddress local ZS_9 = gg.getResultCount local ZS_10 = gg.REGION_BAD local ZS_11 = gg.REGION_ANONYMOUS local ZS_12 = gg.REGION_AZSMEM local ZS_13 = gg.REGION_C_ALLOC local ZS_14 = gg.REGION_C_BSS local ZS_15 = gg.REGION_C_code local ZS_16 = gg.REGION_C_HEAP local ZS_17 = gg.REGION_CODE_APP local ZS_18 = gg.REGION_CODE_SYS local ZS_19 = gg.REGION_JAVA local ZS_20 = gg.REGION_JAVA_HEAP local ZS_21 = gg.REGION_OTHER local ZS_22 = gg.REGION_PPSSPP local ZS_23 = gg.REGION_STACK local ZS_24 = F local ZS_25 = gg.SIGN_EQUAL local ZS_26 = D local ZS_27 = B local ZS_28 = W local ZS_29 = gg.REGION_VIDEO local ZS_30 = gg.multiChoice local ZS_31 = print PT = (os.date("%Y年%m月%d日%H时%M分%S秒"))  
                                                                              local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据 ") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.." , "..#t.."条数据 ") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. " , " .. xgsl .. "条数据 ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.." "..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.." "..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast("共到"..ssjgsl.."条数值") gg.searchNumber(gssz,xl, false, 56870912,0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast("开启失败 原因:改善结果无数值") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("  已修改"..ssjgs.."条数值") else gg.toast("开启失败 原因:结果无数值") end end     function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end  
function SearchWrite(tb1, tb2, dataType, Name)
  local lt1={}
  local lt2={}
  local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType }
  table.insert(lt1,1,mm1)
  for i=2 , #tb1 do
    local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}
    table.insert(lt1,i,mm2)
  end
  for i=1 , #tb2 do
    if tb2[i][2]~=nil then
      local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}
      table.insert(lt2,i,mm3)
     else
      local mm3={["修改"] = false,["偏移"] = tb2[i][1]}
      table.insert(lt2,i,mm3)
    end
  end
  LongTao(lt1, lt2 )
end
function LongTao(Search, Write)
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
function HaoGe(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n📥修改"..tg_.."数据" or "" th=(th_) and "" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name..tg) tg_,th_=nil,nil else gg.toast("❌搜索不到",false) return false end else gg.toast("❌搜索不到") return false end end
--新偏移
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()
SN = gg.multiChoice({
"改创造类（乐迪牛逼）",
"改物类（乐迪牛逼）",
"其他类（乐迪牛逼）",
"牛逼类",
"狙击类",
"退出脚本类（乐迪牛逼）",
 }, nil, "乐迪辅助，乐迪牛逼")
if SN == nil then else
if SN[1] == true then main1() end
if SN[2] == true then main2() end
if SN[3] == true then main3() end
if SN[4] == true then Exi() end
if SN[5] == true then juji1() end
if SN[6] == true then Exit() end

end
  XGCK = -1
end

function main1()
SNN = gg.multiChoice({
"改创造1",
"改创造2",
"返回",
 }, nil, "乐迪辅助，乐迪牛逼")
if SNN == nil then else
if SNN[1] == true then a1() end
if SNN[2] == true then a8() end
if SNN[3] == true then HOME() end
end
  XGCK = -1
end
function main2()
SNNN = gg.multiChoice({
  "能量剑改编辑器(普通写法)",
  "仙人掌改编辑器(普通写法)",
  "自定义改编辑器(xs写法)",
  "第八格改编辑器(xs写法)",
   "香溢面包改编辑器",
  "短剑改黑龙火球",
  "狙击枪改编辑器",
  "返回",
   }, nil, "乐迪辅助，乐迪牛逼，")
   if SNNN == nil then else
if SNNN[1] == true then a4() end
if SNNN[2] == true then a5() end
if SNNN[3] == true then a6() end
if SNNN[4] == true then a7() end
if SNNN[5] == true then a13() end
if SNNN[6] == true then a14() end
if SNNN[7] == true then a11() end
if SNNN[8] == true then HOME() end
end
  XGCK = -1
end
function main3()
SNNNN = gg.multiChoice({
"召唤坐骑(所有)",
"伪飞行",
"改地图名",
"解禁危险品",
"临时改名",
"强制改密码",
"远程攻击",
"透视(三种类型)",
"伪房主",
"蹦云服",
"能量剑无cd",
"一键解锁物品",
"返回",
 }, nil, "乐迪辅助，乐迪牛逼")
 if SN == nil then else
if SNNNN[1] == true then a2() end
if SNNNN[2] == true then a3() end
if SNNNN[3] == true then a9() end
if SNNNN[4] == true then a10() end
if SNNNN[5] == true then a12() end
if SNNNN[6] == true then a15() end
if SNNNN[7] == true then a16() end
if SNNNN[8] == true then a4547() end
if SNNNN[9] == true then juj1() end
if SNNNN[10] == true then ju12() end
if SNNNN[11] == true then ju13() end
if SNNNN[12] == true then ju14() end
if SNNNN[13] == true then HOME() end
end
  XGCK = -1
end
function a1()

  a = gg.prompt({"请输入房主迷你号:"}, {
    [1] = 1249733234
  }, {
    [1] = "number"
  })[1]
  qmnb = {
    {memory = 4},
    {name = "玩法生存改创造"},
    {
      value = a,
      type = 4
    },
    {
      lv = 5,
      offset = -4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 4,
      offset = -4,
      type = 4
    }
  }
  xqmnb(qmnb)
end


function a2()
o2= gg.choice({"𒅒🧊自定义输入🧊𒅒","𒅒🧊机灵飞鼠🧊𒅒","𒅒🧊瑞祥麒麟🧊𒅒","𒅒🧊陆行鸟🧊𒅒","𒅒🧊️大白象🧊𒅒","𒅒🧊️超能海豹🧊𒅒","𒅒🧊舞狮猫猫🧊𒅒","𒅒🧊星河天马🧊𒅒","𒅒🧊桃香扇缘🧊𒅒","𒅒🧊深渊咆哮🧊𒅒","𒅒🧊皎月仙宫🧊𒅒","𒅒🧊冰雪传说🧊𒅒","𒅒🧊缤纷幻想🧊𒅒","𒅒🧊福运哞哞🧊𒅒","𒅒🧊浮游山海🧊𒅒","𒅒🧊镜花水月🧊𒅒","𒅒🧊️鹿王本身🧊𒅒","𒅒🧊️精灵南瓜车🧊𒅒","𒅒🧊️竹 蜻 蜓🧊𒅒","𒅒🧊曦光绘梦️🧊𒅒","𒅒🧊️裂空机甲🧊𒅒","𒅒🧊️星河机甲🧊𒅒","𒅒🧊环海诺诺🧊𒅒","𒅒🧊尼东若若🧊𒅒","𒅒🧊️虚空龙祖🧊𒅒","𒅒🧊️繁花夜明🧊𒅒","𒅒🧊️星月魔毯🧊𒅒","𒅒🧊化石龙🧊𒅒","𒅒🧊千机隼🧊𒅒","𒅒🧊无线电音🧊𒅒",  
"𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒首次使用先打开召唤坐骑面板𒅒"))
if o2==1 then o=gg.prompt({"『请输入坐骑代码』4541星月魔毯"},{4541},{"number"})  o=o[1] o4() end
if o2==2 then o=3435 o4() end
if o2==3 then o=3438 o4() end
if o2==4 then o=3441 o4() end
if o2==5 then o=3444 o4() end
if o2==6 then o=3447 o4() end
if o2==7 then o=3456 o4() end
if o2==8 then o=3459 o4() end
if o2==9 then o=3462 o4() end
if o2==10 then o=3471 o4() end
if o2==11 then o=3480 o4() end
if o2==12 then o=3485 o4() end
if o2==13 then o=3487 o4() end
if o2==14 then o=3489 o4() end
if o2==15 then o=3492 o4() end
if o2==16 then o=3497 o4() end
if o2==17 then o=4503 o4() end
if o2==18 then o=4507 o4() end
if o2==19 then o=4510 o4() end
if o2==20 then o=4515 o4() end
if o2==21 then o=4518 o4() end
if o2==22 then o=4521 o4() end
if o2==23 then o=4526 o4() end
if o2==24 then o=4529 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
if o2==27 then o=4541 o4() end
if o2==28 then o=3432 o4() end
if o2==29 then o=4545 o4() end
if o2==30 then o=4548 o4() end
end
function o4()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = o, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end



function a3()
F = gg.alert("选择","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择")
  else 
  end
if  F== 1 then
qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777472,["offset"]=-76,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 qmnb={
{["memory"]=4},
{["name"]="伪飞行"},
{["value"]=-1020002304,["type"]=4},
{["lv"]=-1046478848,["offset"]=-4,["type"]=4}

}
qmxg={
{["value"]=16777216,["offset"]=-76,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
gg.clearResults()
end
end



function a4()
ledi(
{
{4},
{"能量剑改编辑器"}, 
{12005, D},
{12005, 0, D}, 
},
{
{10500, 0, D, true},
}
)
gg.clearResults()
Main0()
end


function a5()
ledi(
{
{4},
{"改编辑器"}, 
{242, D},
{242, 0, D}, 
},
{
{10500, 0, D, true},
}
)
gg.clearResults()
Main0()
end



function a6()
  a = gg.prompt({"→输入要更改物品的代码【[特殊]0-空气】【[方块]1-地心基石】【[方块]2-功能方块【[方块]3-静态水【[方块]4-水【[方块]5-静态岩【[方块]6-岩浆】【[方块]7-传送光效】【[方块]8-地门框】【[方块]9-地心传送门块】【[方块]10-水晶】【[方块]11-静态蜂蜜】【[方块]12-蜂蜜【[特殊]20-萌眼星空气】【[图腾]21-神秘图腾-大地】【[图腾]22-神秘图腾-天空】【[方块]100-草块】【[方块]101-土块】【[方块]102-耕地】【[方块]103-土坑】【[方块]104-岩石】【[方块]105-青石】【[方块]106-细沙块】【[方块]107-碎石堆】【[方块]108-沙砖】【[方块]109-砂土】【[方块]112-黑晶石】【[方块]113-脆冰】【[方块]114-灰砂土】【[方块]115-积雪】【[方块]116-萌眼星石块】【[方块]117-萌眼星草块】【[方块]118-萌眼星云团】【[方块]119-旱土】【[方块]122-雪堆】【[方块]123-冰块】【[方块]124-硫磺岩】【[方块]125-灼沙】【[方块]126-魔古岩】【[方块]127-泡沫块】【[方块]128-红沙】【[方块]129-厚实的雪】【[方块]130-厚实的雪堆】【[方块]131-坚固的冰】【[方块]132-硫磺晶砂】【[方块]133-空的蜂巢】【[方块]134-满的蜂巢】【[方块]135-神秘图腾-大地】【[方块]136-神秘图腾-天空】【[方块]137-萌眼星土坑】【[方块]138-污染方块】【[方块]139-BOSS战使用石像人脸】【[方块]200-果木】【[方块]201-落叶松木】【[方块]202-白杨木】【[方块]203-红杉木】【[方块]204-楠木】【[方块]205-胡桃木】【[方块]206-果木板】【[方块]207-落叶松木板】【[方块]208-白杨木板】【[方块]209-红杉木板】【[方块]210-楠木板】【[方块]211-胡桃木板】【[植物]212-果木树苗】【[植物]213-落叶松树苗】【[植物]214-白杨木树苗】【[植物]215-红杉树苗】【[植物]216-楠木树苗】【[植物]217-胡桃树苗】【[植物]218-果木树叶】【[植物]219-落叶松树叶】【[植物]220-白杨树叶】【[植物]221-红杉树叶】【[植物]222-楠木树叶】【[植物]223-胡桃树叶】【[植物]224-小草】【[植物]225-枯草】【[植物]226-小蘑菇】【[植物]227-小红菇】【[植物]228-黑皮甘蔗】【[植物]229-麦子】【[食物]230-方南瓜【[植物]231-方南瓜苗】【[植物]232-树藤】【[方块]233-红土】【[植物]234-水稻】【[食物]236-野萝卜】【[食物]237-球球果】【[植物]238-荆棘草】【[食物]239-方西瓜】15004狙击强 12964卷轴 "}, {
    [1] = 1249733234
  }, {
    [1] = "number"
  })[1]
ledi(
{
{4},
{"改编辑器"}, 
{a, D},
{a, 0, D}, 
},
{
{10500, 0, D, true},
}
)
gg.clearResults()
Main0()
end

function a7()
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,4)
local a=gg.getResults(1)gg.clearResults()return a[1].value end
gg.toast("⚠️保持第8格没有物品⚠️")
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"]=10500,["type"]=4},
{["lv"]=2,["offset"]=56,["type"]=4},
{["lv"]=3,["offset"]=60,["type"]=4},
{["lv"]=2,["offset"]=64,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4,["freeze"] = true}
} 
xqmnb(qmnb)
gg.clearResults()local tt
for i,v in ipairs(gg.getListItems())do
if v.value==10500 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "添加编辑器"},
{["value"] = 4062199224110941167, ["type"] = 32},
{["lv"] = -3349162836, ["offset"] = 4, ["type"] = 32},
{["lv"] = 1006, ["offset"] = -0xD0, ["type"] = 4},
{["lv"] = 1005, ["offset"] = -0x1A0, ["type"] = 4},
{["lv"] = 1004, ["offset"] = -0x270, ["type"] = 4},
{["lv"] = 1003, ["offset"] = -0x340, ["type"] = 4},
{["lv"] = 1002, ["offset"] = -0x410, ["type"] = 4},
{["lv"] = 1001, ["offset"] = -0x4E0, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -0x5B0, ["type"] = 4},
}
qmxg = {
{["value"] = tt, ["offset"] = 120, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function a8()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234--[[编辑框文字]]},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "改创造"},
{["value"] = a, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end
    function a9()
   aaa1 = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"输入你要修改的自定义地图名字，不能把:这个删了"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 160, ["type"] = 4},
{["lv"] = aaa1, ["offset"] = 200, ["type"] = 4},
}
qmxg = {
{["value"] = mnmz, ["offset"] = 8, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 12, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 16, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 20, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 24, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 28, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 32, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 36, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 40, ["type"] =4 },
{["value"] = mnmz, ["offset"] = 44, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 48, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 52, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 56, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 60, ["type"] = 4},
{["value"] = mnmz, ["offset"] = 64, 
["type"] = 4},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 4},
}
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwww", B, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, B)
gg.toast("自定义地图名开启成功")
if gg.getResultCount() == 0 then
gg.toast("自定义地图名开启失败")
else
end
end 
function a10()
qmnb = {
{["memory"] = 16384},
{["name"] = "解禁地形编辑器开启"},
{["value"] = 1762840583, ["type"] = 4},
{["lv"] = 265295819, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1096303249, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end
function a11()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪改编辑器"},
{["value"]=15004,["type"]=4},
{["lv"]=200,["offset"]=0x180,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end
function a12()
mnh = gg.prompt({"请输入你的迷你号"}
,{[1]=54188},{[1]="number"})[1]
--








mnmz = ":w"
mnmc = gg.prompt({"请输入名字记得前面加个:"}
,{[1]=":#b#B神#G也#R不#Y惧#K你龙"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "."},
{["value"] = mnh, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 0, ["offset"] = -36, ["type"] = 4},
{["lv"] = 0, ["offset"] = -40, ["type"] = 4},
{["lv"] = 0, ["offset"] = -44, ["type"] = 4},
{["lv"] = 0, ["offset"] = -48, ["type"] = 4},
{["lv"] = 0, ["offset"] = -52, ["type"] = 4},
{["lv"] = 0, ["offset"] = -56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 4},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
{["lv"] = 0, ["offset"] = 32, ["type"] = 4},
{["lv"] = 0, ["offset"] = 36, ["type"] = 4},
{["lv"] = 0, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 48, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = -64, ["type"] = 4},
}
qmxg = {










{["value"] = mnmz, ["offset"] = 65, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 68, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 69, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 70, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 71, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 72, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 73, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 74, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 75, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 76, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 77, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 78, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 79, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 80, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 81, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 82, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 83, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 84, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 85, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 86, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 87, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 88, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 89, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 90, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 91, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 92, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 93, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 94, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 95, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 96, ["type"] = 1},
{["value"] = 245838898, ["offset"] = 60, ["type"] = 4,["freeze"] = true},

}
xqmnb(qmnb)





gg.clearResults()
gg.searchNumber(":wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", B, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmc, B)
gg.toast("临时改名开启成功")
if gg.getResultCount() == 0 then
gg.toast("临时改名开启失败")
else
end
end
function a13()
ledi(
{
{4},
{"能量剑改编辑器"}, 
{12550, D},
{12550, 0, D}, 
},
{
{10500, 0, D, true},
}
)
gg.clearResults()
Main0()
end
function a14()
ledi(
{
{4},
{"能量剑改编辑器"}, 
{12003, D},
{12003, 0, D}, 
},
{
{15054, 0, D, true},
}
)
gg.clearResults()
Main0()
end

function a15()
F=gg.alert("请选择｛开 关｝", "开", "关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
if F==2 then
qmnb = {
{["memory"] = 4},
{["name"] = "强制修改密码关闭"},
{["value"] = 6005, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 24, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function Exi()
SN = gg.multiChoice({
"添加物品",
"改坐标",
"无敌（死的时候开）",
"返回",
 }, nil, "乐迪辅助，乐迪牛逼")
if SN == nil then else
if SN[1] == true then mai1() end
if SN[2] == true then mai3() end
if SN[3] == true then mai123() end
if SN[4] == true then HOME() end
end
  XGCK = -1
end
function mai1()
a = gg.prompt({"👻输入当前房间迷你号"}
,{[1]=0},{[1]="number"})[1]
g = gg.prompt({"👻输入需要的物品"}
,{[1]=10256},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x5119B8, 0x8, 0x3C4, 0x208}
local ttt = {0x5758, 0x55, 0x122, 0x780}
local tttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = a, freeze = true}})
gg.addListItems({{address = ttt, flags = 4, value = g, freeze = true}})
gg.toast("联机领取实体物品")
end
function mai2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('15004;100W;6W;3F;40;0;1400F;7000F;1;15003:137',D,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('100W;6W;3F',D,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('9999W;9999W;0F',D)
gg.toast('开启成功')
gg.clearResults()

qmnb = {
{["memory"] = 4},
{["name"] = "0间隔"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =32000, ["offset"] = 0x4E, ["type"] = 2},
}
xqmnb(qmnb)
end
function mai3()
mnsj={}
mnsj.qq=gg.prompt({"横向坐标","高度","竖向坐标"},mnsj.qqa)if mnsj.qq then 
mnsj.qqa=mnsj.qq
xc1=mnsj.qq[1].."00"
xc2=mnsj.qq[2].."00"
xc3=mnsj.qq[3].."00"

qmnb = {
{["memory"] = 4},
{["name"] = "改坐标"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = xc1, ["offset"] = 8, ["type"] = 4},
{["value"] = xc2, ["offset"] = 12, ["type"] = 4},
{["value"] = xc3, ["offset"] = 16, ["type"] = 4},
} xqmnb(qmnb)
end
end


function a16()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("400F;500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end
function a4547()
F = gg.alert("选择","透视1","️透视2（推荐）","透视3")
 if  F~=1 and F~=2 and F~=3 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择")
  else 
  end
if  F== 1 then
gg.clearResults()
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4.20389539e-45F;7.53758444e-42F;7.27273903e-43F;3.57331108e-43F;1.07619722e-41F;3.57331108e-43F;7.27273903e-43F;1.0F;1.44193612e-42F;3.22859166e-42F", F, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", F, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 gg.editAll("0", F)
	 gg.toast("ca独家人物透视开启成功")
 elseif  F== 2 then
gg.clearResults() 	 gg.setRanges(262207) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 jg=gg.getResults(100) 	 sl=gg.getResultCount() 	 if sl>100 then sl=100 end 	 for i = 1, sl do 	 	 dzy=jg[i].address 	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1,092,616,192}}) 	 end 	 gg.toast("人物透视已开启") 	 gg.clearResults() 
elseif  F== 3 then
qmnb = {
{["memory"] = 4},
{["name"] = "人物透视开启"},
{["value"] = 75.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 30000.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function mai4()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 65536100, ["type"] = 4},
{["lv"] = 15004, ["offset"] = -68, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 68, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 0, ["type"] = 4},
{["value"] =0, ["offset"] = 32, ["type"] = 4},
{["value"] =0, ["offset"] = 28, ["type"] = 4},
{["value"] =1, ["offset"] = 64, ["type"] = 4},
{["value"] =999999, ["offset"] = 0x6, ["type"] = 2},
}	
 xqmnb(qmnb)
end

function mai5()
qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪"},
{["value"] = 15004, ["type"] = 4},
{["lv"] = 15004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 15003, ["offset"] = 140, ["type"] = 4},
}
qmxg = {
{["value"] =0, ["offset"] = 72, ["type"] = 4},
{["value"] =0, ["offset"] = 104, ["type"] = 4},
{["value"] =1, ["offset"] = 136, ["type"] = 4},
{["value"] =999999, ["offset"] = 0x4E, ["type"] = 2},
}
xqmnb(qmnb)
end

function mai6()
F = gg.alert("🔰请选择🔰","🍁狙击🍁","🍁️冲锋🍁️️","🎾重机🎾")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 A4 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪强化"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A4, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
if   F==2   then
A5 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪强化"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A5, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
if    F==3  then
A6 = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪强化"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = A6, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function mai7()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "自动"},
{["value"] =15004, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"]=75.0,["offset"]=-12,["type"]=16,["freeze"] = true},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "自动"},
{["value"] =15004, ["type"] = 4},
{["lv"] =  -1082130432, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"]=0.0,["offset"]=-12,["type"]=16,["freeze"] = true},
}
xqmnb(qmnb)
end
end


function juji1()
SN = gg.multiChoice({
"怒海狙击一件开启",
"谁是狙神一件开启",
"所有枪改子弹",
"所有枪开镜",
"子弹穿墙",
"返回",
 }, nil, "乐迪辅助，乐迪牛逼")
 if SN == nil then else
if SN[1] == true then mai4() end
if SN[2] == true then mai5() end
if SN[3] == true then mai6() end
if SN[4] == true then mai7() end
if SN[5] == true then mai999() end
if SN[6] == true then HOME() end
end
XGCK = -1
end
function mai123()
gg.toast("开启成功后点击继续探险")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] =-192 , ["type"] = 4},
}
qmxg = {
{["value"] = 10000, ["offset"] = -256, ["type"] = 16,["freeze"] = true},
{["value"] = 10000, ["offset"] = -252, ["type"] = 16,["freeze"] = true},
{["value"] = 9999, ["offset"] = -80, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
function juj1()
F = gg.alert("🔰请选择｛房主 服主｝🔰","🍁伪房主🍁","🍁️伪服主🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "伪房主"},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
 y = gg.prompt({"『输入服主的迷你号』"}
,{[1]=12345},{[1]="number"})[1]
 m = gg.prompt({"『输入你的迷你号』"}
,{[1]=12345},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "云服服主"},
{["value"] =y, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] =32767, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = m, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
end
end
function ju12()
F = gg.alert("🔰必须先开启蹦服器才能开升级版🔰","🍁崩服器🍁","🍁️升级版🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
function bf(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
bf(
{
{4},
{"崩服器"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD}, 
},
{
{-10000, 28, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
 elseif  F== 2 then
     function jiuyan(qmnb,qmxg)
gg.setVisible(false)
gg.clearResults()
qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])
gg.searchNumber(qmnbv,qmnbt)
gg.refineNumber(qmnbv,qmnbt)
sz=gg.getResultCount()
if sz==0 then
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
else
sl=gg.getResults(999999)
for i=1,sz do
pdsz=true
for v=4,#qmnb do
if pdsz==true then
pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")
pyszpd=tostring(szpy[1].value):gsub(",","")
if tzszpd==pyszpd then 
pdjg=true pdsz=true
else
pdjg=false
pdsz=false
end
end
end
if pdjg==true then
szpy=sl[i].address
for x=1,#qmxg do
xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}
if xgdj==true then
xg[1].freeze=xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg=true
end 
end
if xgjg==true then
gg.toast(qmnbn.."开启成功,共注入 2 条冻结数据")
else 
gg.toast(qmnbn.."开启失败，请尝试重启游戏")
end
end
end
jiuyan(
{
{4},
{"崩服器升级"}, 
{773094113340, gg.TYPE_QWORD},
{220, 16, gg.TYPE_DWORD},  
},
{
{1000, 32, gg.TYPE_DWORD, true},
}
)
     gg.clearResults()
	 end
	 end
	 function ju13()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005D;5;0.6::400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
end
function ju14()

	gg.clearResults()
gg.searchNumber('12253;91', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('91', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
 gg.clearResults()
gg.searchNumber('12283;61', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('61', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
	 gg.clearResults()
gg.searchNumber('12284;62', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('62', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
	 gg.clearResults()
gg.searchNumber('12281;60', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('60', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
	gg.clearResults()
gg.searchNumber('884;31', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('31', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
	 gg.clearResults()
gg.searchNumber('963;39', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('39', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('解锁成功！')
end
function mai999()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹穿墙"},
{["value"] = 1099112024, ["type"] = 4},
{["lv"] = 1113299465, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
end
function Exit()
print("群734992816")
os.exit()
end
cs = "群734992816"
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
function HOME()
lw=1
Main()
end