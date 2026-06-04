QQ=gg.alert([[
byminidian.弑神
作者微信：a1504281234
更新日志:
2022年4月3日辅助正式开启
 ]],'开启','','复制QQ')
if QQ == 3 then gg.copyText("619854058") gg.toast("√复制完成√") end
   

function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end


local time=os.clock()


local gn={
  "添加坐标",
  "删除坐标",
}

local zb={}
local getsl=gg.getResultCount
function bgtss(text,flag,Ran) gg.clearResults() gg.setRanges(Ran) gg.searchNumber(text,flag) end 
function bgtgs(num,flag) if gg.getResultCount()>0 then gg.refineNumber(num,flag) end end 

function readValue(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
return gg.getValues(t)[1].value
end

function QC(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败，请尝试重启游戏")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功\n          共注入 1 条数据")else gg.toast(qmnbn.."开启失败，请尝试重启游戏")end end end


function Address(adds,offset,chang,value,flags,freeze,save,name)local add=gg.getRangesList(adds)[1]["start"]+offset local data={{["address"]=add,["value"]=value,["flags"]=flags,["freeze"]=freeze}}if chang==true then gg.setValues(data)end if freeze or save ==true then gg.addListItems(data)end if name~="false" then gg.toast("🛡["..name.."]已注入🛡")end end

local time=os.clock()




function mnh()
dI=gg.prompt({"输入你的迷你号"},{[1] = ""},{[1] = "number"}) 
 zh = dI[1]  
 io.open("/sdcard/辅助配置文件.txt", "w") io.open("/sdcard/辅助配置文件.txt", "w"):write("🍼" .. zh .. "🍼"):close()
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory'])gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)          else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end

Q = io.open("/sdcard/进程.txt") if Q == nil then
io.open("/sdcard/音效配置文件.txt", "w") io.open("/sdcard/进程.txt", "w"):write("🍀关🍀"):close() end
q = io.open("/sdcard/进程.txt", "rb") if q == nil then user = "" pass = "" else
q = io.open("/sdcard/进程.txt"):read("*a") SBSBQ = q:match("🍀(.-)🍀") if q == "" then SBSBQ = "" end end
if SBSBQ=="开" then

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('id'..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败')gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启失败&spd=5&source=wise") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') gg.playMusic("https://fanyi.baidu.com/gettts?lan=zh&text="..qmnb[2]['name'].."开启成功&spd=5&source=wise")else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end
else
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '开启失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n'..qmnb[2]['name']..'开启成功,共注入' .. xgsl .. '条数据') else gg.toast(''..qmnb[2]['name'] .. '开启失败') end end end end end
function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)           else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


a = io.open("/sdcard/辅助配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/辅助配置文件.txt"):read("*a") zh = a:match("🍼(.-)🍼") if a == "" then zh = "" end end

Q = io.open("/sdcard/辅助配置文件.txt") if Q == nil then mnh() end

    
function mnhpz()
a = io.open("/sdcard/辅助配置文件.txt", "rb") if a == nil then user = "" pass = "" else
a = io.open("/sdcard/辅助配置文件.txt"):read("*a") zh = a:match("🍼(.-)🍼") if a == "" then zh = "" end end
dI=gg.prompt({"输入你的迷你号"},{[1] = zh},{[1] = "number"})
 zh = dI[1]  io.open("/sdcard/辅助配置文件.txt", "w") io.open("/sdcard/辅助配置文件.txt", "w"):write("🍼" .. zh .. "🍼"):close()
end

if zh==nil
then
mnhpz()
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

bqt={"🍬","🧸","🧊","🍁","🏅","💫","🎄","💯","♓️","⭐","🍥","🎡","❄","🌀","🌴","🔰","🧊","🌿️",}
function Main()  local sjbq=bqt[math.random(1,#bqt)] SY = gg.choice({
[1] =sjbq.."🍀房主功能🍀"..sjbq,
[2] =sjbq.."🍀联机功能🍀"..sjbq,
[3] =sjbq.."🍀炸图辅助🍀"..sjbq,
[4] =sjbq.."🍀通用功能🍀"..sjbq,
[5] =sjbq.."🍀切换辅助🍀"..sjbq,
[6] =sjbq.."🍀逆神功能🍀"..sjbq,
[7] =sjbq.."🍀修改功能🍀"..sjbq,
[8] =sjbq.."🍀获取功能🍀"..sjbq,
[9] =sjbq.."🍀退出辅助🍀"..sjbq
},2018,os.date("️辅助作者: 弑神当前迷你号:"..zh.."\n📀现在时间%Y年-%m月-%d日 %H时:%M分:%S秒🌸作者迷你号:966654216"))
 if SY == nil then
    gg.toast("弑神：我也想要个女朋友")
  end
if SY==1 then Main1() end
if SY==2 then Main2() end
if SY==3 then Main3() end
if SY==4 then Main4() end
if SY==5 then Main5() end
if SY==6 then Main6() end 
if SY==7 then Main7() end
if SY==8 then Main8() end
if SY==9 then Exit() end 
FX1=0 end
function Main1()  
SN = gg.multiChoice({
"⚠️开电脑大房间⚠️",
"第一格改坐骑",
"自定义人物大小",
"修改宠物",
"修改房间名",
"吸星大法",
"第一格无限物品",
"第一格任意附魔",
"天眼",
"乐谱取物(自房)",
"刷星星",
"自定义修改血量",
"开大房间(第一个用不了就用这个)",
"定位瞬移(指针)",
"改坐标(基址)",
"牛掉炸弹",
"生物掉100万星星",
"秒 挖 方 块",
"火箭筒修改发射数量",
"全员飞天",
"自定义修改高度",
"转创造背包",
"可挖基岩",
"修改房间分数",
"天空下雨",
"无限耐久",
"禁用钩子和塞子",
"任意枪改子弹",
"返 回 主 页",
 }, nil, "我爱你.弑神")
if SN == nil then else
if SN[1]==true then     vip1() end
if SN[2]==true then     vip2() end
if SN[3]==true then     vip3() end
if SN[4]==true then     vip4() end
if SN[5]==true then     vip5() end
if SN[6]==true then     vip6() end
if SN[7]==true then     vip7() end
if SN[8]==true then     vip8() end
if SN[9]==true then     vip9() end
if SN[10]==true then     vip10() end
if SN[11]==true then     vip11() end
if SN[12]==true then     vip12() end
if SN[13]==true then     vip13() end
if SN[14]==true then     vip14() end
if SN[15]==true then     vip15() end
if SN[16]==true then     vip16() end
if SN[17]==true then     vip17() end
if SN[18]==true then     vip18() end
if SN[19]==true then     vip19() end
if SN[20]==true then     vip20() end
if SN[21]==true then     vip21() end
if SN[22]==true then     vip22() end
if SN[23]==true then     vip23() end
if SN[24]==true then     vip24() end
if SN[25]==true then     vip25() end
if SN[26]==true then     vip26() end
if SN[27]==true then     vip27() end
if SN[28]==true then     vip28() end
if SN[29]==true then     Main() end
end
FX=0 end









function vip1()
lhc = gg.prompt({"『请输入你要开启的房间人数』7-10人房 8-20人房 9-30人房 10-40人房 "}
,{[1]=8},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "房间人数"},
{["value"] = 13963100160, ["type"] = 32},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1076101120, ["offset"] = -48, ["type"] = 4},

{["lv"] = 3, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1077805056, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = -68, ["type"] = 64},

}
xqmnb(qmnb)
end



function vip2()
o2= gg.choice({
"化石龙",
"机灵飞鼠",
"瑞祥麒麟",
"陆行鸟",
"️大白象",
"️超能海豹",
"舞狮猫猫",
"星河天马",
"桃香扇缘",
"深渊咆哮",
"皎月仙宫",
"冰雪传说",   
"缤纷幻想",
"福运哞哞",
"浮游山海",
"镜花水月",
"️鹿王本身", 
"️精灵南瓜车", 
"️竹 蜻 蜓",   
"️曦光绘梦",  
"️裂空机甲",
"️星河机甲",
"️环海洛洛",
"️尼龙洛洛",
"️虚空龙祖",
"️繁花夜明",
"️星月魔毯",
"️千机隼",
"️无限电音",
"️云梦花舞",
"️醉花阴",
"️帝皇战龙",
"️虎虎生威",
"️旺财",
"️帝皇侠",
"自定义召唤",    
"返 回 主 页",},2018,os.date("弑神又犯错了吗"))
if o2==1 then o=3432 o4() end
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
if o2==24 then o=4528 o4() end
if o2==25 then o=4533 o4() end
if o2==26 then o=4537 o4() end
if o2==27 then o=4541 o4() end
if o2==28 then o=4545 o4() end
if o2==29 then o=4548 o4() end
if o2==30 then o=4551 o4() end
if o2==31 then o=4554 o4() end
if o2==32 then o=4562 o4() end
if o2==33 then o=4566 o4() end
if o2==34 then o=4556 o4() end
if o2==35 then o=4570 o4() end
if o2==36 then zdy() end
if o2==37 then az() end
XGCK=-1 end

function zdy()
aba6 = gg.prompt({"请输入坐骑代码"}
,{[1]=4526},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x88, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = aba6, ["offset"] = 0x128, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function o4()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x88, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = o, ["offset"] = 0x128, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end


function vip3()  
svip= gg.choice({
    "𒅒自定义大小(自己)𒅒",
    "𒅒自定义大小(玩家)𒅒",
"𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("哦."))
if svip==1 then o0=3504 wwwww1() end
if svip==2 then o0=3514 wwwww2() end
XGCK=-1 end
function wwwww1()
mn2=gg.prompt({"『自定义大小』"},{''},{"number"})
if not mn2 then return end
qmnb = {
{["memory"] = 4},
{["name"] = "自定义大小"},
{["value"] =a, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = mn2[1], ["offset"] = 248,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
function wwwww2()
mn2=gg.prompt({"『玩家迷你号』"},{''},{"number"})
if not mn2 then return end
mn1=gg.prompt({"『自定义大小』"},{''},{"number"})
if not mn1 then return end
qmnb = {
{["memory"] = 4},
{["name"] = "自定义大小"},
{["value"] =mn2[1], ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -72, ["type"] = 4},
}
qmxg = {
{["value"] = mn1[1], ["offset"] = 248,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end



function vip4()
svip = gg.prompt({"请输入宠物代码 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"}
,{[1]=3512},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "宠物"},
{["value"] = 10001, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = svip, ["offset"] = 8, ["type"] = 4},
}
gg.toast("宠物修改成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
end




function vip5()
lhc = gg.prompt({"输入要修改的地图作者迷你号"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = lhc, ["offset"] = 160, ["type"] = 4},
{["lv"] = lhc, ["offset"] = 200, ["type"] = 4},
}
mnmz = ":wwwwwwwwwwwwwwwww"
mnmcc = gg.prompt({"输入你要修改的自定义地图名字，不能把:这个删了"}
,{[1]=":"},{[1]="text"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = a, ["type"] = 4},
{["lv"] = lhc, ["offset"] = 160, ["type"] = 4},
{["lv"] = lhc, ["offset"] = 200, ["type"] = 4},
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
gg.searchNumber(":wwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("自定义地图名修改成功.")
if gg.getResultCount() == 0 then
gg.toast("自定义地图名修改失败.")
gg.toast("地图名字修改成功\n共耗时:"..os.clock()-time.."秒")
else
end
end

function vip6()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.toast("正在注入...请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = true},

}
gg.toast("吸人开启成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
gg.clearResults()
elseif F == 2 then gg.toast("正在注入...请稍等")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "吸人关闭"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 16, ["type"] = 4, ["freeze"] = false},

}
gg.toast("吸人关闭成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
gg.clearResults() end end


function vip7()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "第一格无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=945804388,["offset"]=0,["type"]=4,["freeze"] = true},
}
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "第一格无限物品"},
{["value"] =945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"]=94580388,["offset"]=0,["type"]=4,["freeze"] = true},
}
gg.toast("关闭成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
end
end

function vip8()
fm1 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = fm1, ["offset"] = 12, ["type"] = 4},
{["value"] = fm2, ["offset"] = 16, ["type"] = 4},
{["value"] = fm3, ["offset"] = 20, ["type"] = 4},
{["value"] = fm4, ["offset"] = 24, ["type"] = 4},
{["value"] = fm5, ["offset"] = 28, ["type"] = 4},
}
gg.toast("注入成功\n共耗时:"..os.clock()-time.."秒")
xqmnb(qmnb)
end








function vip9()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("🌸全图透视开启成功🌸")
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
	 end



function vip10()  
lhc = gg.prompt({"请输入物品代码"}
,{[1]=15056},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "取物第一步"},
{["value"] = 4683671800612126720, ["type"] =32 },
{["lv"] = 13975404208, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = lhc, ["offset"] = -0x10, ["type"] = 64, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "取物第二步"},
{["value"] = -1024458752, ["type"] = 4},
{["lv"] = 1142292480, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -0x5C, ["type"] = 4},
{["lv"] = 1110179840, ["offset"] = -0x1C, ["type"] = 4},

}
qmxg = {
{["value"] = 16777472, ["offset"] = -0x5C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("取物开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end




function vip11()  
qmnb = {
{["memory"] = 4},
{["name"] = "刷100万星星"},
{["value"] = 1028443341, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =4, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =8, ["type"] = 4},
{["lv"] = 1097859072,["offset"] =12, ["type"] = 4},
}
qmxg = {
{["value"] = 99999,["offset"] =32, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.toast("修改成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end




function vip12()  
luasvip = gg.prompt({"输入你想改的血量"}
,{[1]="1000"},{[1]="number"})[1]
    qmnb = {
      {["memory"] = 4},
      {["name"] = "自定义修改血量"},
      {["value"] = 4474776592571170816, ["type"] = 32},
      {["lv"] = 1120403456, ["offset"] = -24, ["type"] = 32},
    }
    qmxg = {
      {["value"] = luasvip, ["offset"] = -80, ["type"] = 16, ["freeze"] = true},
      {["value"] = luasvip, ["offset"] = -256, ["type"] = 16, ["freeze"] = true},
    }
    xqmnb(qmnb)
    gg.toast("修改成功\n共耗时:"..os.clock()-time.."秒")
    gg.clearResults()
  end

function andluasvip1()
gg.alert("教程:点6")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("现在点5，点击辅助悬浮窗")
  while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("现在点1，点击辅助悬浮窗")
      while true do
        if gg.isVisible(true) then
          gg.setVisible(false)
          gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
          jg=gg.getResults(100)
          sl=gg.getResultCount()
          if sl>100 then sl=100 end
          for i = 1, sl do
            dzy=jg[i].address
            gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = e1}})
          end
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
           break
          end
        end
        break
      end
    end
  end
       

function vip13()
menu1= gg.choice({
    "𒅒10人𒅒",
    "𒅒20人𒅒",
    "𒅒30人𒅒",
    "𒅒️40人𒅒",    
    "𒅒返 回 主 页𒅒",},2022,os.date("你看起来好像很好吃你是吃可爱多长大的吧."))
if menu1==1 then e1=7 andluasvip1() end
if menu1==2 then e1=8 andluasvip1() end
if menu1==3 then e1=9 andluasvip1() end
if menu1==4 then e1=10 andluasvip1() end
XGCK=-1 end





function vip14()  
local Sy={}
  local Cd={"🍑添加坐标🍑","🍉删除坐标🍉️","🍇返回主页🍇"}
  for i,v in ipairs(zb) do
    Cd[#Cd+1]=v[1]
  end
  local GT=gg.choice(Cd,nil,"共有"..#zb.."个坐标")
  if GT==nil then XGCK=-1 else
    if GT==1 then tjzb() end
    if GT==2 then sczb() end
    if GT==3 then Main() end
    if GT>3 then
      sczb(zb[(GT-3)])
    end
  end
 end

function sczb(dd)
  local item={}
  for i,v in ipairs(zb) do
    table.insert(item,v[1])
  end
  local GT=gg.multiChoice(item,nil,"🅰共有"..#zb.."个坐标🅱")
  if GT then
    for i,v in pairs(GT) do
      zb[i]=nil
    end
    local New={}
    for i,v in pairs(zb) do
      table.insert(New,v)
    end
    zb=New
    gg.toast("删除成功\n共耗时:"..os.clock()-time.."秒")
  end
end

function sczb(xyz)
  bgtss("-1F;60D;180D;220D;120D;2F",4,4)
  if getsl()>0 then
    bgtgs("-1",16)
    local value=gg.getResults(1)
    local item={}
    item[1]={}
    item[2]={}
    item[3]={}
    item[1].address=value[1].address+0x1C
    item[1].value=xyz[2]
    item[1].flags=4
    item[2].address=value[1].address+0x20
    item[2].value=xyz[3]
    item[2].flags=4
    item[3].address=value[1].address+0x24
    item[3].value=xyz[4]
    item[3].flags=4
    gg.setValues(item)
    gg.toast("传送成功\n共耗时:"..os.clock()-time.."秒")
  end
end

function tjzb()
  local GT=gg.prompt({"请输入名称"},nil,{"text"})
  if GT then
    bgtss("-1F;60D;180D;220D;120D;2F",4,4)
    if getsl()>0 then
    local value=gg.getResults(1)
    X=readValue(value[1].address+0x1C,4)
    Y=readValue(value[1].address+0x20,4)
    Z=readValue(value[1].address+0x24,4)
    zb[#zb+1]={GT[1],X,Y,Z}
    else
    gg.toast("添加失败\n共耗时:"..os.clock()-time.."秒")
    end
  end
end





function vip15()  
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
gg.toast("改坐标开启成功\n共耗时:"..os.clock()-time.."秒")
end
end


function vip16()  
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12516", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15055}})
	 end
	 gg.toast("牛掉炸弹")
	 gg.clearResults()
end

function vip17()  
SN = gg.multiChoice({
	 "【野人掉落999星星】",
	 "【熔岩巨人掉落999星星】",
	 "【猪掉落999星星】",
	 "【牛掉落999星星】",
	 "【鸡掉落999星星】",
	 "【狼掉落999星星】",
	 "【返回主界面】",
}, nil, "阿鹤爱你们，原创白九.")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS38()
end
if SN[3]==true then
	 HS3()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS21()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;12526;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;11310;21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3402;12522;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3407;11307;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end




function vip18()  
F = gg.alert("请选择｛开 关｝","开","️关️️")
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.3, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end



function vip19()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
 mm1 = gg.prompt({"『输入火箭筒发射数量』"}
,{[1]=1},{[1]="number"})[1]

	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;1;1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(mm1, gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
mm2 = mm1
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 
	  elseif  F== 2 then	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;"..mm2..";1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber(mm2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 end	 
end

function vip20()
gg.setRanges(4) local dataType = 4 local tb1 = {{1001, 0},{1000, -0x100},{1002, 0x100},{1004, 0x300},{1005, 0x400},{1003, 0x200},} local tb2 = {{  -28 }, } SearchWrite(tb1, tb2, dataType) sln=gg.getResultCount() if sln<1 then gg.toast("开启失败") return else 	local nmb=gg.getResults(1)	 sl=gg.getValues(nmb) wjnb=sl[1].value ilht=12822 Xilst() end
function ss(a)gg.setRanges(4)gg.clearResults()gg.searchNumber(a.address,32) local a=gg.getResults(1)gg.clearResults()return a[1].value end local tt for i,v in ipairs(gg.getListItems())do if v.value==12822 then tt=ss(v)break end end if tt then
qmnb = {
{["memory"] = 4},
{["name"] = "全员飞天"},
{["value"] = 4062199224110948164, ["type"] = 32},
{["lv"] = -1, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 120, ["type"] = 4},
}
qmxg = {
{["value"] = 2000, ["offset"] = 8, ["type"] = 4},
{["value"] = tt, ["offset"] = 120, ["type"] = 32},
{["value"] = wjnb, ["offset"] = 124, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function vip21()
as = gg.prompt({"输入高度"}
,{[1]="100"},{[1]="number"})
if not as then return end
nba = as[1].."00"
qmnb = {
{["memory"] = 4},
{["name"] = "修改高度"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = nba, ["offset"] = 12, ["type"] = 4},}
xqmnb(qmnb)
end


function vip22()
F = gg.alert("请选择｛开 关｝","开","️关️️")
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] =a , ["type"] = 4},
{["lv"] = a, ["offset"] = 20, ["type"] = 4},
{["lv"] = 5, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =4, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] =a , ["type"] = 4},
{["lv"] = a, ["offset"] = 20, ["type"] = 4},
{["lv"] = 4, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =5, ["offset"] = 16,["type"] = 4},
}
xqmnb(qmnb)
end
end


function vip23()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =28965208, ["type"] = 4},
{["lv"] =38522944 , ["offset"] = -176, ["type"] = 4},
}
qmxg = {
{["value"]=0.0,["offset"]=-156,["type"]=16},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =28965208, ["type"] = 4},
{["lv"] =38522944 , ["offset"] = -176, ["type"] = 4},
}
qmxg = {
{["value"]=100.0,["offset"]=-156,["type"]=16},
}
xqmnb(qmnb)
end
end


function vip24()
m3= gg.choice({
    "🧊红队🧊",
    "🧊蓝队🧊",
    "🧊绿队️🧊",
    "🧊黄队🧊",
    "🧊橙队🧊",    
    "🧊紫队🧊",    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("️"))
if m3==1 then  mvi1() end
if m3==2 then  mvi2() end
if m3==3 then  mvi3() end
if m3==4 then  mvi4() end
if m3==5 then  mvi5() end
if m3==6 then  mvi6() end
if m3==7 then  az() end
XGCK=-1 end





function mvi1()
mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function mvi2()
mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("修改成功")
	 gg.clearResults()
end



function mvi3()
mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end


function mvi4()
mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end



function mvi5()
mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end


function mvi6()
mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -40},{-1, -984} }
local tb2 = {{mn2, -40  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("修改成功")
	 gg.clearResults()
end


function vip25()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空下雨"},
{["value"] = 1008981770, ["type"] = 4},
{["lv"] = -1138501878, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "天空下雨"},
{["value"] = 1008981770, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -0.00999999978, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end
end

function vip26()
qmnb = {
{["memory"] = 4},
{["name"] = "无限耐久"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function vip27()
gg.toast("请选择开关")
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12006, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12008, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults() 
 end
end

function vip28()
o6= gg.choice({
    "𒅒狙击枪改子弹𒅒",
    "𒅒冲锋枪改子弹𒅒",
    "𒅒重机枪改子弹𒅒",
"𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("爱你(ɔˆ ³(ˆ⌣ˆc)𒅒"))
if o6==1 then o0=3504 ip1() end
if o6==2 then o0=3514 ip2() end
if o6==3 then o0=3878 ip3() end
XGCK=-1 end
function ip1()
lhc = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪子弹"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
function ip2()
lhc = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "冲锋枪子弹"},
{["value"] = 1154613248, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end
function ip3()
lhc = gg.prompt({"『输入子弹代码』12299擎天柱炮弹-12300星星弹-15509燃烧激光-15510冰冻激光-15511爆炸激光-15512岩石海啸-15513冰球-15518特效炸弹-15519岩浆弹-15520混乱球_15521_15051燃烧箭-15052燃烧雪球-15053泡泡球-15056熔岩弹-15057混乱弹-15058炸弹-15059冰锥[不可放置方块]-15060熔岩球-15062冰锥-15064冰炸弹-15065火炸弹-15066冰雪弹-15067紫球-15068紫箭"}
,{[1]=12299},{[1]="number"})[1]
 qmnb = {
{["memory"] = 4},
{["name"] = "重机枪子弹"},
{["value"] = 1157840896, ["type"] = 4},
{["lv"] = 1149861888, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1123024896, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lhc, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
end

function Main2()
A = gg.choice({
	 "人物飞行",--1
	 "空格连跳",--2
	 "定点瞬移",--3
	 "坐标传送",--4
	 "人物穿墙",--5
	 "箱子界面",--6
	 "联机踢人",--7
	 "踢走房主",--8
	 "联机改名",--9
	 "强制打字",--10
	 "去黑实名️",--11
	 "秒吃食物",--12
	 "获取房号️",--13
	 "改掉视角",--14
	 "全局防封️",--15
	 "可二段跳",--16
	 "无限物品",--17
	 "人物透视",--18
	 "联机改皮",--19
	 "伤害转移",--20
	 "屏幕旋转",--21
	 "秒拿东西",--22
	 "滑铲距离",--23
	 "物品使用",--24
	 "伪房服主",--25
	 "天空之眼",--26
	 "人物特效",--27	 
	 "持物代码",--28	 	 
	 "返回主页",
 }, nil, "联机功能")
if A == 1 then b1() end
if A == 2 then b2() end
if A == 3 then b3() end
if A == 4 then b4() end
if A == 5 then b5() end
if A == 6 then b6() end
if A == 7 then b7() end
if A == 8 then b8() end
if A == 9 then b9() end
if A == 10 then b10() end
if A == 11 then b11() end
if A == 12 then b12() end
if A == 13 then b13() end
if A == 14 then b14() end
if A == 15 then b15() end
if A == 16 then b16() end
if A == 17 then b17() end
if A == 18 then b18() end
if A == 19 then b19() end
if A == 20 then b20() end
if A == 21 then b21() end
if A == 22 then b22() end
if A == 23 then b23() end
if A == 24 then b24() end
if A == 25 then b25() end
if A == 26 then b26() end
if A == 27 then b27() end
if A == 28 then b28() end
if A == 29 then Main() end

GLWW=-1
end

function rwfx()
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.alert("先改成创造模式")
	 gg.sleep(3000)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.alert("改成玩法模式")
	 gg.sleep(3000)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	end
	end
	 

function b1()
SH = gg.choice({
   "𒅒🔰第一步:自己房间抓数据🔰𒅒",--1
   "𒅒🔰第二步:别人房间使用🔰𒅒",--2
   "𒅒🔰关闭飞行🔰𒅒",--3
},2018,os.date(""))
if SH==1 then rwfx()end
if SH==2 then rwfx1()end
if SH==3 then xzjm2() end
XGCK=-1
end

function rwfx1()
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	end
 end
 
function b2()
	 qmnb = {
{["memory"] = 4},
{["name"] = "连跳飞天"},
{["value"] = 515396075740, ["type"] = 32},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 0x12C, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 0x70, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end
function b3()
  local Sy={}
  local Cd={"🍑添加坐标🍑","🍉删除坐标🍉️","🍇返回主页🍇"}
  for i,v in ipairs(zb) do
    Cd[#Cd+1]=v[1]
  end
  local GT=gg.choice(Cd,nil,"共有"..#zb.."个坐标")
  if GT==nil then XGCK=-1 else
    if GT==1 then tjzb() end
    if GT==2 then sczb() end
    if GT==3 then Main() end
    if GT>3 then
      sczb(zb[(GT-3)])
    end
  end
 end

function sczb(dd)
  local item={}
  for i,v in ipairs(zb) do
    table.insert(item,v[1])
  end
  local GT=gg.multiChoice(item,nil,"🅰共有"..#zb.."个坐标🅱")
  if GT then
    for i,v in pairs(GT) do
      zb[i]=nil
    end
    local New={}
    for i,v in pairs(zb) do
      table.insert(New,v)
    end
    zb=New
    gg.toast("删除成功\n共耗时:"..os.clock()-time.."秒")
  end
end

function sczb(xyz)
  bgtss("-1F;60D;180D;220D;120D;2F",4,4)
  if getsl()>0 then
    bgtgs("-1",16)
    local value=gg.getResults(1)
    local item={}
    item[1]={}
    item[2]={}
    item[3]={}
    item[1].address=value[1].address+0x1C
    item[1].value=xyz[2]
    item[1].flags=4
    item[2].address=value[1].address+0x20
    item[2].value=xyz[3]
    item[2].flags=4
    item[3].address=value[1].address+0x24
    item[3].value=xyz[4]
    item[3].flags=4
    gg.setValues(item)
    gg.toast("传送成功\n共耗时:"..os.clock()-time.."秒")
  end
end

function tjzb()
  local GT=gg.prompt({"请输入名称"},nil,{"text"})
  if GT then
    bgtss("-1F;60D;180D;220D;120D;2F",4,4)
    if getsl()>0 then
    local value=gg.getResults(1)
    X=readValue(value[1].address+0x1C,4)
    Y=readValue(value[1].address+0x20,4)
    Z=readValue(value[1].address+0x24,4)
    zb[#zb+1]={GT[1],X,Y,Z}
    else
    gg.toast("添加失败\n共耗时:"..os.clock()-time.."秒")
    end
  end
end

function b4()
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
gg.toast("改坐标开启成功\n共耗时:"..os.clock()-time.."秒")
end
end

function b5()
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{-9999, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
 elseif  F== 2 then
gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0}, {120, -4}, {60, -16}, {120, 4},}
local tb2 = {{180, -12,true}, }
SearchWrite(tb1, tb2,  dataType)
end end

function xzjm()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.alert("打开箱子")
	 gg.sleep(3000)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.alert("关闭箱子")
	 gg.sleep(3000)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	end
	end
	 

function b6()
SH = gg.choice({
   "𒅒🔰开启前准备🔰𒅒",--1
   "𒅒🔰第二次使用🔰𒅒",--2
   "𒅒🔰关闭箱子面🔰𒅒",
},2018,os.date("𒅒冷殇原创，思路是林给的𒅒"))
if SH==1 then xzjm()end
if SH==2 then xzjm1()end
if SH==3 then xzjm2() end
XGCK=-1
end



function xzjm1()
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	end
 end

function xzjm2()
 gg.clearList() end

function b7()
qmnb = {
{["memory"] = 4},
{["name"] = "坐骑"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x1C, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x80, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 3417, ["offset"] = 0x120, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x3C, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
s = gg.prompt({"『输入要踢的人迷你号』"}
,{[1]=s},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "踢人"},
{["value"] =zh , ["type"] = 32},
{["lv"] = t, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =s, ["offset"] = 0,["type"] = 32},
}
xqmnb(qmnb)

  gg.toast("请在5秒内召唤第一个坐骑那个人就无了")
    gg.sleep(5000)
qmnb = {
{["memory"] = 4},
{["name"] = "恢复"},
{["value"] =s , ["type"] = 32},
{["lv"] = t, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =zh, ["offset"] = 0,["type"] = 32},
}
xqmnb(qmnb)
end

function b8()
gg.alert("输入房主号，按第一格坐骑，房主就无了")
a = gg.prompt({"『输入房主迷你号』"}
,{[1]=0},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "先打开一次坐骑面板"},
{["value"] = 4842495500454461440, ["type"] =32 },
{["lv"] = 1127481344, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = 0x14, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x50, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 3441, ["offset"] = 0xD4, ["type"] = 4, ["freeze"] = true},
{["value"] = 16777472, ["offset"] = -0x34, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "踢房主第一步"},
{["value"] = 11522, ["type"] = 4},
{["lv"] = 11014, ["offset"] = 4, ["type"] = 4},}
qmxg = {
{["value"] = 3, ["offset"] = 36, ["type"] = 4},
}
xqmnb(qmnb)

gg.sleep(3000)
qmnb = {
{["memory"] = 4},
{["name"] = "踢房主弟二步"},
{["value"] =a , ["type"] = 4},
{["lv"] = zh, ["offset"] = -16, ["type"] = 32},
}
qmxg = {
{["value"] = a, ["offset"] = -16,["type"] = 32},
}
xqmnb(qmnb)
gg.toast("踢房主注入病毒成功\n共耗时:"..os.clock()-time.."秒")
end

function b9()
e = io.open("/sdcard/名字配置文件.txt", "rb") if e ==nil then mznb 
="" else
e = io.open("/sdcard/名字配置文件.txt"):read("*a") mznb = e:match("🍀(.-)🍀") if e == "" then mznb = "" end end
mnm = ":W"
mnmz = ":w"
mnmcq = gg.prompt({"请输入名字"}
,{[1]=mznb},{[1]="text"})
if not mnmcq then return end
mnmc = ":"..mnmcq[1]
io.open("/sdcard/名字配置文件.txt", "w") io.open("/sdcard/名字配置文件.txt", "w"):write("🍀" .. mnmcq[1].. "🍀"):close()
qmnb = {
{["memory"] = 4},
{["name"] = "临时改名"},
{["value"] = zh, ["type"] = 32},
{["lv"] = 0, ["offset"] = 4, ["type"] = 32},
{["lv"] = 0, ["offset"] = 8, ["type"] = 32},
{["lv"] = 0, ["offset"] = 12, ["type"] = 32},
{["lv"] = 0, ["offset"] = 16, ["type"] = 32},
{["lv"] = 0, ["offset"] = 20, ["type"] = 32},
{["lv"] = 0, ["offset"] = 24, ["type"] = 32},
{["lv"] = 0, ["offset"] = 28, ["type"] = 32},
{["lv"] = 0, ["offset"] = 32, ["type"] = 32},
{["lv"] = 0, ["offset"] = 36, ["type"] = 32},
{["lv"] = 0, ["offset"] = 40, ["type"] = 32},
{["lv"] = 0, ["offset"] = 44, ["type"] = 32},
{["lv"] = 0, ["offset"] = 48, ["type"] = 32},
{["lv"] = 0, ["offset"] = 52, ["type"] = 32},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 0, ["offset"] = 60, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x5C, ["type"] = 4},
{["lv"] = 0, ["offset"] = 0x60, ["type"] = 4},
}
qmxg = {
{["value"] = mnm, ["offset"] = 65, ["type"] = 1},
{["value"] = mnm, ["offset"] = 66, ["type"] = 1},
{["value"] = mnmz, ["offset"] = 67, ["type"] = 1},
{["value"] = mnm, ["offset"] = 68, ["type"] = 1},
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
{["value"] = mnm, ["offset"] = 96, ["type"] = 1},
}
xqmnb(qmnb)
gg.clearResults()
gg.searchNumber(":WWwWwwwwwwwwwwwwwwwwwwwwwwwwwwwW", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmc, gg.TYPE_BYTE)
if gg.getResultCount() == 0 then
else
end
end

function b10()
    gg.clearResults()
    gg.setRanges(262207)
    gg.searchNumber("300.0;999.0:17", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("300", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
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
          flags = gg.TYPE_DOUBLE,
          freeze = true,
          value = 0
        }
      })
    end
    gg.toast("免手机号打字")
    gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁言"},
{["value"] =29310, ["type"] = 4},
{["lv"] = 29310, ["offset"] = 0, ["type"] = 4},
}
qmxg = {
{["value"] =29246, ["offset"] = 0,["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(4)
local dataType = 4
local tb1 = {{1130889216,0},{155648,-108} }
local tb2 = {{16777472, -76,true  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("单机聊天")
	 gg.clearResults()
end

function b11()
F = gg.alert("🔰请选择｛身份证 黑名单｝🔰","🍁取消身份证🍁","🍁️取消黑名单🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "取消实名认证"},
{["value"] =458686464, ["type"] = 4},
{["lv"] = 6999, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 4,freeze = true},
}
xqmnb(qmnb)
gg.clearResults()
 elseif  F== 2 then
  qmnb = {
{["memory"] = 4},
{["name"] = "取消黑名单"},
{["value"] =4295032832 , ["type"] = 32},
{["lv"] = 16777472, ["offset"] = 32, ["type"] = 32},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32,["type"] = 32,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function b12()
c = gg.prompt({"请进入要秒吃的食物代码   香溢水果拼盘-12557  水果拼盘-12501  牛排-12517  饺子-12567  年糕-12568  小麦面包-12502  方西瓜-12508   烤鸡全家桶-12543  香溢西瓜汁-12556   香溢野萝卜-12555  香溢烤鸡-12558  香溢牛肉堡-12559   牛肉堡-12544   香溢麦包-12550  长条麦包-12540  疾跑烤鸡-12499   泡泡糖12576   熟猪肉-12523  烤鱼-12521  烤鸡腿-12519  美味蛋糕-830  香溢南瓜派-12552 香溢饼干-12553  浓缩奶糖-12549  萝卜-236  野果12500  瓶装糖浆-11326    牛奶-12509   瓶蜂蜜-12511"}
,{[1]=12557},{[1]="number"})
if not c then return end
qmnb = {
{["memory"] = 4},
{["name"] = "秒吃食物"},
{["value"] = c[1], ["type"] = 4},
{["lv"] = -9999, ["offset"] = 4, ["type"] = 4},
{["lv"] = c[1], ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 30, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
end

function b13()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
wjnba=sl[1].value
gg.alert("房主迷你号为"..wjnba,"确认")
gg.copyText(wjnba)
end

function b14()
y=gg.prompt({"『0是主视角，2是正视角，1是背视角』","开启冻结"},{[1] = y[1],[2] = y[2]},{[1] = "number",[2] = "checkbox"}) 
if y[2] ==true then
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 65793, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -264, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -0xE4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -0xE0, ["type"] = 4},
{["lv"] = 1084227584, ["offset"] = -384, ["type"] = 4},
}
qmxg = {
{["value"] = y[1], ["offset"] = -0x140, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "强制改视角"},
{["value"] = 1117126656, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x20, ["type"] = 4},
{["lv"] = 1600, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2560, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = y[1], ["offset"] = -0x3C, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
else
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 65793, ["type"] = 4},
{["lv"] = 1092616192, ["offset"] = -264, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -0xE4, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -0xE0, ["type"] = 4},
{["lv"] = 1084227584, ["offset"] = -384, ["type"] = 4},
}
qmxg = {
{["value"] = y[1], ["offset"] = -0x140, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "强制改视角"},
{["value"] = 1117126656, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 0x20, ["type"] = 4},
{["lv"] = 1600, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2560, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = y[1], ["offset"] = -0x3C, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function b15()
LQ = gg.prompt({"输入"}
,{[1]=4000},{[1]="number"})[1]
qmnb={
{["memory"]=16384},
{["name"]=""},
{["value"]=-369098232,["type"]=4},
{["lv"]=-289981501,["offset"]=-4,["type"]=4},
}
qmxg={
{["value"]=LQ,["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
gg.clearResults()
end

function b16()
LQ= gg.prompt({"[使用卡卡输入代码 42-小淘气(跳两次)"}
,{[1]=42},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]="人物技能"},
{["value"]=133143986433,["type"]=32},
{["lv"]=-9999,["offset"]=-16,["type"]=4}

}
qmxg={
{["value"]=LQ,["offset"]=-44,["type"]=4}
}
xqmnb(qmnb)
end

function b17()
gg.toast("请选择复刻物品开关")
F = gg.alert("🔰请选择复刻第一格物品｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("🔰功 能 指 南🔰\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)   
qmnb = {
{["memory"] = 4},
{["name"] = "第一格物品复刻开启"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,564, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main()
end
end
end
end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "物品复刻恢复"},
{["value"] = 945804388, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,388, ["offset"] = 0, ["type"] = 4, ["freeze"] = false}
}
xqmnb(qmnb)
gg.clearResults()
end
end

function b18()
gg.clearResults() 	 
gg.setRanges(262207) 	 
gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 
gg.searchNumber("1,189,765,120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 	 
jg=gg.getResults(100) 	 
sl=gg.getResultCount() 	 
if sl>100 then sl=100 end 	 
for i = 1, sl do 	 	 
dzy=jg[i].address 	 	 
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1,092,616,192}}) 	 end 	 gg.toast("人物透视已开启") 	 gg.clearResults() end

function b19()
gg.clearResults()
gg.setRanges(4)
pf1 = gg.prompt({"输入你正使用的皮肤代码，然后随机一个皮肤"}
,{[1]=""},{[1]="number"})
if not pf1 then return end
gg.searchNumber("pf1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.sleep(5000)
pf2 = gg.prompt({"输入你切换完的皮肤代码"}
,{[1]=""},{[1]="number"})
if not pf2 then return end
gg.searchNumber("pf2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
pf = gg.prompt({"输入你要改的皮肤代码"}
,{[1]=""},{[1]="number"})
	 jg=gg.getResults(100)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do end
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = pf}})
	 gg.toast("开启成功")
	 gg.clearResults()
end
	 
	 
function b20()
pljnb=gg.prompt({"『输入别人迷你号，开启后按队友，可以配合超远攻击使用』"},{[1] = zkl},{[1] = "number"}) 
qmnb = {
{["memory"] = 4},
{["name"] = "伤害转移"},
{["value"] =1117126656 , ["type"] = 4},
{["lv"] = 256, ["offset"] = -0x24, ["type"] = 4},
{["lv"] = 65793, ["offset"] = -0x6C, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -0x64, ["type"] = 16},
}
qmxg = {
{["value"] =pljnb[1], ["offset"] = -180,["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function b21()
gg.alert("☣️屏幕的最高境界☣️")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3.02258117e-38F;1.51900754e-42F;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 555}})
	 end
	 gg.toast("☣️恭喜你旋转成功☣️")
	 gg.clearResults()
end

function b22()
gg.toast("请选择开关")
F=gg.alert("请选择｛开 关｝", "开", "️关️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=16384},
{["name"]="箱子拿东西"},
{["value"]=973078777,["type"]=4},
{["lv"]=1112014848,["offset"]=268,["type"]=4}
}
qmxg={
{["value"]=10,["offset"]=264,["type"]=16}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384},
{["name"]="箱子拿东西"},
{["value"]=973078777,["type"]=4},
{["lv"]=1112014848,["offset"]=268,["type"]=4}
}
qmxg={
{["value"]=1000,["offset"]=264,["type"]=16}
}
xqmnb(qmnb)
end
end

function b23()
mn2=gg.prompt({"『输入自己迷你号』"},{'1410130440'},{"number"})[1]
mn1=gg.prompt({"『自定义距离』"},{'9999'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "足球模式"},
{["value"] = mn2, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},}
qmxg = {
{["value"] = 1, ["offset"] = 304, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()

qmnb = {
{["memory"] = 4},
{["name"] = "滑铲距离"},
{["value"] = -998965248, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = mn1, ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function b24()
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
{["name"] = "禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 2, ["offset"] = 316, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用钩爪"},
{["value"] = 12006, ["type"] = 4},
{["lv"] = 12006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12006, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "解除禁用塞子"},
{["value"] = 12008, ["type"] = 4},
{["lv"] = 12008, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 180, ["type"] = 4},
{["lv"] = 0, ["offset"] = 176, ["type"] = 4},
}
qmxg = {
{["value"] = 12008, ["offset"] = 176, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
 
 end
end

function b25()
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
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "云服服主"},
{["value"] =y, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] =32767, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = lq, ["offset"] = 0, ["type"] = 4},
}

xqmnb(qmnb)
gg.clearResults()
end
end

function b26()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1004;5;-1;1005;5;6;1006::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999}})
	 end
	 gg.toast("天眼开启成功")
	 gg.clearResults()
end

function b27()
maqw = gg.choice({
    '  𒅒🍥紫色月亮🍥𒅒',--1
    '  𒅒🍥金色特效🍥𒅒',--2
    '  𒅒🍥绿色特效🍥𒅒',--3
    '  𒅒🍥彩虹拖尾🍥𒅒  ',--4
    '  𒅒🍥️蓝色特效🍥𒅒',--5
    '  𒅒🍥花小楼特效🍥𒅒',--6
    '  𒅒🍥冰公主特效🍥𒅒',--7
    '  𒅒🍥初暮特效🍥𒅒',--8
    '  𒅒🍥️恢 复 特 效🍥𒅒',--9
    '  𒅒🎡返 回 主 页🎡𒅒',
    },2018,os.date('🍡其实地上本无路，走的人多了，也便成了路🍡'))
if maqw==1 then Q1=12 QQ1() end
if maqw==2 then Q1=11 QQ1() end
if maqw==3 then Q1=14 QQ1() end
if maqw==4 then Q1=15 QQ1() end
if maqw==5 then Q1=16 QQ1() end
if maqw==6 then Q1=17 QQ1() end
if maqw==7 then Q1=18 QQ1() end
if maqw==8 then Q1=19 QQ1() end
if maqw==9 then Q1=-1 QQ1() end
if maqw==10 then az() end
XGCK=-1 end

function QQ1() 
 
qmnb = {
{["memory"] = 4},
{["name"] = "特效"},
{["value"] = 1117126656, ["type"] = 4},
{["lv"] = 257, ["offset"] = 0x1C4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -0x10, ["type"] = 4},
{["lv"] = 20, ["offset"] = 0x8, ["type"] = 4},
{["lv"] = 1106247680, ["offset"] = -0x294, ["type"] = 4},
}
qmxg = {
{["value"] = Q1, ["offset"] = 0x74, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function b28()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{1117126656, 0},{256, -0x24},{65793, -0x6C},}
local tb2 = {{  -0x74 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
nnb=sl[1].value
gg.alert("代码为"..nnb)
end
function Main3()  
SN = gg.multiChoice({
"🌋🌠🌌️创造模式（已修复)🌋🌠🌌️",
"🌋🌠🌌️修改编辑器🌋🌠🌌️",
"🌋🌠🌌️家园道具🌋🌠🌌️",
"🌋🌠🌌️开发者添加编辑器🌋🌠🌌️",
"🌋🌠🌌️第八个添加编辑器🌋🌠🌌️",
"🌋🌠🌌️创造炸图🌋🌠🌌️",
"🌋🌠🌌️编辑放置距离🌋🌠🌌️",
"🌋🌠🌌️仙人掌修改(乐迪制作)🌋🌠🌌️",
"🌋🌠🌌️创造修改2(乐迪制作)🌋🌠🌌️",
"🌋🌠🌌️玩法改创造(乐迪制作)🌋🌠🌌️",
"ʕ ᵔᴥᵔ ʔ返 回 主 页ʕ ᵔᴥᵔ ʔ",
 }, nil, "🔶欢迎使用：为什么说抱歉....明明是我不对🔷")
if SN == nil then else
if SN[1]==true then     asms1() end
if SN[2]==true then     asms2() end
if SN[3]==true then     asms3() end
if SN[4]==true then     asms4() end
if SN[5]==true then     asms5() end
if SN[6]==true then     asms6() end
if SN[7]==true then     asms7() end
if SN[8]==true then     asms8() end
if SN[9]==true then     asms9() end
if SN[10]==true then     asms10() end
if SN[11]==true then     Main() end
end
FX=0 end

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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end




function asms1()
i12= gg.choice({
    "玩法创造",
    "玩法生存",
    "创造",
    "创造生存",
    "极限生存",
     "生存",
     "通用玩法创造",
     "通用玩法生存",
"返回主页",},i2,os.date("该功能修复完成"))
if i12==1 then i8=4 i11() end
if i12==2 then i8=5 i11() end
if i12==3 then i8=1 i11() end
if i12==4 then i8=3 i11() end
if i12==5 then i8=2 i11() end
if i12==6 then i8=0 i11() end
if i12==7 then     tycz1() end
if i12==8 then     tycz2() end
XGCK=-1 end

function i11()
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x5E400, 0xB0}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = i8}})
end

function tycz1()
F = gg.alert("🔰请选择🔰","🍁开启🍁","🍁️关闭🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("开启成功")
    gg.toast("您未选择开关")
  else 
  end
if  F== 1 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "请重新试试，可能错误"},
{["value"] = a, ["type"] = 4},
{["lv"] = 5, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "开启成功出现错误请重新试"},
{["value"] = a, ["type"] = 4},
{["lv"] = 4, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end


function tycz2()
F = gg.alert("🔰请选择🔰","🍁开启🍁","🍁️关闭🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("开启成功")
    gg.toast("未选择开关")
  else 
  end
if  F== 1 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "开启失败请重新试试"},
{["value"] = a, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
 elseif  F== 2 then
a = gg.prompt({"请输入房主迷你号:"},
{[1]=1249733234},
{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "开启失败请重新试试"},
{["value"] = a, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end





function asms2()
as = gg.prompt({"→输入要更改物品的代码←12005能量剑-12006喷射钩爪-12008喷射筛子-12550香溢面包-12558香溢烤鸡-11001木斧头"}
,{[1]="12005"},{[1]="number"})[1]
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=as,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=10500,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end


function i1()
qmnb = {
{["memory"] = 4},
{["name"] = "道具"},
{["value"] = 42949672960230, ["type"] = 32},
{["lv"] = 6582127, ["offset"] = 140, ["type"] = 32},
}
qmxg = {
{["value"] = i, ["offset"] = -92, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end
function asms3()  
i2= gg.choice({
    "𒅒🔰炸药桶🔰𒅒",
    "𒅒🔰刷怪方块🔰𒅒",
    "𒅒🔰宠物窝🔰𒅒",
    "𒅒🔰天气控制器🔰𒅒",
    "𒅒🔰️重力装置🔰𒅒",    
    "𒅒🔰️空心树🔰𒅒",
    "𒅒🔰自定义方块🔰𒅒",
    "𒅒🔰中式沙发🔰𒅒",
    "𒅒🔰中式桌子🔰𒅒",
    "𒅒🔰中式餐桌🔰𒅒",
    "𒅒🔰中式洗手台🔰𒅒",   
    "𒅒🔰中式椅子🔰𒅒",
    "𒅒🔰中式马桶🔰𒅒",
    "𒅒🔰中式浴缸🔰𒅒",
    "𒅒🔰中式屏风🔰𒅒",
    "𒅒🔰️中式立体灯🔰𒅒",    
    "𒅒🔰中式吊灯️🔰𒅒", 
    "𒅒🔰中式门️🔰𒅒",
    "𒅒🔰中式窗🔰𒅒",
    "𒅒🔰️中式楼梯🔰𒅒",    
    "𒅒🔰中式墙砖🔰𒅒", 
   "𒅒🔰中式地砖🔰𒅒", 
    "𒅒🔰中式半砖🔰𒅒", 
    "𒅒🔰中式围栏🔰𒅒", 
    "𒅒🌟现代床🌟𒅒", 
    "𒅒🌟现代沙发🌟𒅒", 
    "𒅒🌟现代书桌🌟𒅒", 
    "𒅒🌟现代餐桌🌟𒅒",
    "𒅒🌟现代茶几🌟𒅒",
    "𒅒🌟现代洗手台🌟𒅒",
    "𒅒🌟现代椅子🌟𒅒",
    "𒅒🌟现代马桶🌟𒅒",
    "𒅒🌟现代浴缸🌟𒅒",
    "𒅒🌟现代衣柜🌟𒅒",
    "𒅒🌟现代橱柜🌟𒅒",
    "𒅒🌟现代半格橱柜🌟𒅒",
    "𒅒🌟现代组合柜🌟𒅒",
    "𒅒🌟现代屏风🌟𒅒",
    "𒅒🌟现代立体灯🌟𒅒",
    "𒅒🌟现代吊灯🌟𒅒",
    "𒅒🌟现代壁灯🌟𒅒",
    "𒅒🌟现代门🌟𒅒",
    "𒅒🌟现代窗🌟𒅒",
    "𒅒🌟现代楼梯🌟𒅒",
    "𒅒🌟现代墙砖🌟𒅒",
    "𒅒🌟现代砖🌟𒅒",
    "𒅒🌟现代半砖🌟𒅒",
   "𒅒🌟现代围栏🌟𒅒", 
    "𒅒❄️童话床❄️𒅒",
    "𒅒❄童话沙发️❄️𒅒",
    "𒅒❄童话书桌❄𒅒",
    "𒅒❄童话桌子️❄𒅒",
    "𒅒❄童话茶几️❄𒅒",
    "𒅒❄️童话洗手池❄𒅒",
    "𒅒❄️童话椅子❄𒅒",
    "𒅒❄️童话马桶❄𒅒",
    "𒅒❄童话浴缸️❄𒅒",
    "𒅒❄童话衣柜️❄𒅒",
    "𒅒❄童话橱柜️❄𒅒",
    "𒅒❄童话半格橱柜️❄𒅒",
    "𒅒❄童话箱子️❄𒅒",
    "𒅒❄童话屏风️❄𒅒",
    "𒅒❄童话台灯️❄𒅒",
    "𒅒❄️童话吊灯❄𒅒",
    "𒅒❄️童话壁灯❄𒅒",
    "𒅒❄️童话门❄𒅒",
    "𒅒❄童话窗️❄𒅒",
    "𒅒❄️童话楼梯❄𒅒",
    "𒅒❄童话墙砖️❄𒅒",
    "𒅒❄️童话地砖❄𒅒",
    "𒅒❄️童话半砖❄𒅒",
    "𒅒❄️童话围栏❄𒅒",
    "𒅒🎋科幻床️🎋𒅒",
    "𒅒🎋️科幻沙发🎋𒅒",
    "𒅒🎋科幻书桌🎋𒅒",
    "𒅒🎋科幻桌子🎋𒅒", 
    "𒅒🎋科幻茶几🎋𒅒",
    "𒅒🎋科幻洗手台🎋𒅒",
    "𒅒🎋科幻椅子🎋𒅒",
    "𒅒🎋科幻马桶🎋𒅒",
    "𒅒🎋科幻浴缸🎋𒅒",
    "𒅒🎋科幻衣柜🎋𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},i2,os.date("对不起，到底怎么了，错了吗？"))
if i2==1 then i=835 i1() end
if i2==2 then i=1080 i1() end
if i2==3 then i=1405 i1() end
if i2==4 then i=1403 i1() end
if i2==5 then i=1402 i1() end
if i2==6 then i=1475 i1() end
if i2==7 then i=gg.prompt({"虚空方块4095，卡图1049"},{[1]=4095},{[1]="number"})[1] i1() end
if i2==8 then i=1575 i1() end
if i2==9 then i=1576 i1() end
if i2==10 then i=1577 i1() end
if i2==11 then i=1579 i1() end
if i2==12 then i=1580 i1() end
if i2==13 then i=1581 i1() end
if i2==14 then i=1582 i1() end
if i2==15 then i=1587 i1() end
if i2==16 then i=1588 i1() end
if i2==17 then i=1589 i1() end
if i2==18 then i=1591 i1() end
if i2==19 then i=1592 i1() end
if i2==20 then i=1593 i1() end
if i2==21 then i=1594 i1() end
if i2==22 then i=1595 i1() end
if i2==23 then i=1596 i1() end
if i2==24 then i=1597 i1() end
if i2==25 then i=1598 i1() end
if i2==26 then i=1599 i1() end
if i2==27 then i=1600 i1() end
if i2==28 then i=1601 i1() end
if i2==29 then i=1602 i1() end
if i2==30 then i=1603 i1() end
if i2==31 then i=1604 i1() end
if i2==32 then i=1605 i1() end
if i2==33 then i=1606 i1() end
if i2==34 then i=1607 i1() end
if i2==35 then i=1608 i1() end
if i2==36 then i=1609 i1() end
if i2==37 then i=1610 i1() end
if i2==38 then i=1611 i1() end
if i2==39 then i=1612 i1() end
if i2==40 then i=1613 i1() end
if i2==41 then i=1614 i1() end
if i2==42 then i=1615 i1() end
if i2==43 then i=1616 i1() end
if i2==44 then i=1617 i1() end
if i2==45 then i=1618 i1() end
if i2==46 then i=1619 i1() end
if i2==47 then i=1620 i1() end
if i2==48 then i=1621 i1() end
if i2==49 then i=1622 i1() end
if i2==50 then i=1623 i1() end
if i2==51 then i=1624 i1() end
if i2==52 then i=1625 i1() end
if i2==53 then i=1626 i1() end
if i2==54 then i=1627 i1() end
if i2==55 then i=1628 i1() end
if i2==56 then i=1629 i1() end
if i2==57 then i=1630 i1() end
if i2==58 then i=1631 i1() end
if i2==59 then i=1632 i1() end
if i2==60 then i=1633 i1() end
if i2==61 then i=1634 i1() end
if i2==62 then i=1635 i1() end
if i2==63 then i=1636 i1() end
if i2==64 then i=1637 i1() end
if i2==65 then i=1638 i1() end
if i2==66 then i=1639 i1() end
if i2==67 then i=1640 i1() end
if i2==68 then i=1641 i1() end
if i2==69 then i=1642 i1() end
if i2==70 then i=1643 i1() end
if i2==71 then i=1644 i1() end
if i2==72 then i=1645 i1() end
if i2==73 then i=1646 i1() end
if i2==74 then i=1647 i1() end
if i2==75 then i=1648 i1() end
if i2==76 then i=1649 i1() end
if i2==77 then i=1650 i1() end
if i2==78 then i=1651 i1() end
if i2==79 then i=1652 i1() end
if i2==80 then i=1653 i1() end
if i2==81 then i=1654 i1() end
if i2==82 then i=1655 i1() end
XGCK=-1 end






function asms4()  
qmnb = {
{["memory"] = 4},
{["name"] = "开发者"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("再次点击悬浮窗自动恢复")
gg.clearResults()          
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在恢复中")
qmnb = {
{["memory"] = 4},
{["name"] = "开发者关闭"},
{["value"] = 157614080, ["type"] = 4},
{["lv"] = 2, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = 16777216, ["offset"] = 32, ["type"] = 4},
}
xqmnb(qmnb)
   while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
 Main()
end
end
end
end
end



function asms5()  
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




function asms6()  
SN = gg.multiChoice({
"🌋🌠🌌️剑改黑龙炸图🌋🌠🌌️",
"🌋🌠🌌️长枪改破坏🌋🌠🌌️",
"🌋🌠🌌️猪蛋改龙蛋🌋🌠🌌️",
"🌋🌠🌌️西瓜改岩浆🌋🌠🌌️",
"🌋🌠🌌️南瓜改卡图🌋🌠🌌️",
"(✧∇✧)返 回 主 页(✧∇✧)",
 }, nil, "💞十年老兵，申请出战💞")
if SN == nil then else
if SN[1]==true then     go1() end
if SN[2]==true then     go2() end
if SN[3]==true then     go3() end
if SN[4]==true then     go4() end
if SN[5]==true then     go5() end
if SN[6]==true then     Main() end
end
FX=0 end


function go1()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12005,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=15056,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end




function go2()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=12004,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=11555,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end


function go3()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=13402,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=13504,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end



function go4()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=239,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=6,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end




function go5()  
qmnb={
{["memory"]=4},
{["name"]=""},
{["value"]=230,["type"]=4},
{["lv"]=200,["offset"]=-320,["type"]=4},
}
qmxg={
{["value"]=1049,["offset"]=0,["type"]=4}
}
xqmnb(qmnb)
end



function asms7()  
y = gg.prompt({"『输入距离』"}
,{[1]=1000},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] =17548, ["type"] = 4},
{["lv"] = 104, ["offset"] = -296, ["type"] = 4},
{["lv"] =1, ["offset"] = -256, ["type"] = 4},
}
qmxg = {
{["value"] = y, ["offset"] = -288, ["type"] = 4,["freeze"] = true},
}

xqmnb(qmnb)
gg.clearResults()
end



function asms8()
  a = gg.prompt({"→输入要更改物品的代码【[特殊]0-空气】【[方块]1-地心基石】【[方块]2-功能方块【[方块]3-静态水【[方块]4-水【[方块]5-静态岩【[方块]6-岩浆】【[方块]7-传送光效】【[方块]8-地门框】【[方块]9-地心传送门块】【[方块]10-水晶】【[方块]11-静态蜂蜜】【[方块]12-蜂蜜【[特殊]20-萌眼星空气】【[图腾]21-神秘图腾-大地】【[图腾]22-神秘图腾-天空】【[方块]100-草块】【[方块]101-土块】【[方块]102-耕地】【[方块]103-土坑】【[方块]104-岩石】【[方块]105-青石】【[方块]106-细沙块】【[方块]107-碎石堆】【[方块]108-沙砖】【[方块]109-砂土】【[方块]112-黑晶石】【[方块]113-脆冰】【[方块]114-灰砂土】【[方块]115-积雪】【[方块]116-萌眼星石块】【[方块]117-萌眼星草块】【[方块]118-萌眼星云团】【[方块]119-旱土】【[方块]122-雪堆】【[方块]123-冰块】【[方块]124-硫磺岩】【[方块]125-灼沙】【[方块]126-魔古岩】【[方块]127-泡沫块】【[方块]128-红沙】【[方块]129-厚实的雪】【[方块]130-厚实的雪堆】【[方块]131-坚固的冰】【[方块]132-硫磺晶砂】【[方块]133-空的蜂巢】【[方块]134-满的蜂巢】【[方块]135-神秘图腾-大地】【[方块]136-神秘图腾-天空】【[方块]137-萌眼星土坑】【[方块]138-污染方块】【[方块]139-BOSS战使用石像人脸】【[方块]200-果木】【[方块]201-落叶松木】【[方块]202-白杨木】【[方块]203-红杉木】【[方块]204-楠木】【[方块]205-胡桃木】【[方块]206-果木板】【[方块]207-落叶松木板】【[方块]208-白杨木板】【[方块]209-红杉木板】【[方块]210-楠木板】【[方块]211-胡桃木板】【[植物]212-果木树苗】【[植物]213-落叶松树苗】【[植物]214-白杨木树苗】【[植物]215-红杉树苗】【[植物]216-楠木树苗】【[植物]217-胡桃树苗】【[植物]218-果木树叶】【[植物]219-落叶松树叶】【[植物]220-白杨树叶】【[植物]221-红杉树叶】【[植物]222-楠木树叶】【[植物]223-胡桃树叶】【[植物]224-小草】【[植物]225-枯草】【[植物]226-小蘑菇】【[植物]227-小红菇】【[植物]228-黑皮甘蔗】【[植物]229-麦子】【[食物]230-方南瓜【[植物]231-方南瓜苗】【[植物]232-树藤】【[方块]233-红土】【[植物]234-水稻】【[食物]236-野萝卜】【[食物]237-球球果】【[植物]238-荆棘草】【[食物]239-方西瓜】15004狙击强 12964卷轴 "}, {
    [1] = 1249733234
  }, {
    [1] = "number"
  })[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("a", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("a", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end




function asms9()
    qmnb = {
      {memory = 16384},
      {name = "乐迪操你妈"},
      {value = 939814400, type = 4},
      {
        lv = 1187006320,
        offset = 8,
        type = 4
      },
      {
        lv = 939879936,
        offset = 12,
        type = 4
      }
    }
    qmxg = {
      {
        value = 0,
        offset = 4,
        type = 16
      },
      {
        value = 0,
        offset = -60,
        type = 16
      },
      {
        value = 0,
        offset = -80,
        type = 16
      },
      {
        value = 0,
        offset = 16,
        type = 16
      }
    }
    xqmnb(qmnb)
    end


function asms10()

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
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
        if (#data > 0) then
           gg.toast("检测到"..#data.."条外来数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          -- gg.toast("已修改"..#t.."条数据")
          -- gg.addListItems(t)
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end


function QQ1() 
gg.setRanges(4)
local dataType = 4
local tb1 = {{1117126656, 0},{257, 24},{-1, 76},}
local tb2 = {{Q1, 72,true}, }
SearchWrite(tb1, tb2,  dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end


function QQ3()
    gg.setRanges(4)
local dataType = 32
local tb1 = {{lq,0},{16777473,-56} }
local tb2 = {{Q3, -68  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end
function Main4()     
A = gg.choice({
	 "附魔物品",--1
	 "修改分数",--2
	 "无限星星",--3
	 "子弹穿墙",--4
	 "秒拆方块",--5
	 "剑无冷却",--6
	 "房间人数",--7
	 "创造背包",--8
	 "无敌秒杀",--9
	 "人物大小",--10
	 "一格坐骑",--11
	 "修改️宠物",--12
	 "改地图名",--13
	 "获取勋章",--14
	 "解锁物品",--15
	 "掉落设置",--16
	 "火箭连射",--17
	 "枪改子弹",--18
	 "喷漆改物",--19	 
	 "坐骑属性",--20
	 "修改血量",--21
	 "一摔就死",--22	
	 "返回主页",
 }, nil, "房主功能")
if A == 1 then a1() end
if A == 2 then a2() end
if A == 3 then a3() end
if A == 4 then a4() end
if A == 5 then a5() end
if A == 6 then a6() end
if A == 7 then a7() end
if A == 8 then a8() end
if A == 9 then a9() end
if A == 10 then a10() end
if A == 11 then a11() end
if A == 12 then a12() end
if A == 13 then a13() end
if A == 14 then a14() end
if A == 15 then a15() end
if A == 16 then a16() end
if A == 17 then a17() end
if A == 18 then a18() end
if A == 19 then a19() end
if A == 20 then a20() end
if A == 21 then a21() end
if A == 22 then a22() end
if A == 23 then Main() end

GLWW=-1
end



  
function a1()
menu1 = gg.multiChoice({
'武器附魔第一格',--1
'工具附魔第一格',--2
'弓箭附魔第一格',--3
'装备附魔第一格',--4
'自定附魔第一格',--5
'查看全附魔代码',--6
'第一格无限耐久',--7
'返回上一个主页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then ww1() end
if menu1[2] == true then ww2() end
if menu1[3] == true then ww3() end
if menu1[4] == true then ww4() end
if menu1[5] == true then ww5() end
if menu1[6] == true then ww6() end
if menu1[7] == true then ww7() end
if menu1[8] == true then Main() end
end
FX=0
end

function ww1()
qmnb = {
{["memory"] = 4},
{["name"] = "武器附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 505, ["offset"] = 12, ["type"] = 4},
{["value"] = 605, ["offset"] = 16, ["type"] = 4},
{["value"] = 1005, ["offset"] = 20, ["type"] = 4},
{["value"] = 1105, ["offset"] = 24, ["type"] = 4},
{["value"] = 705, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function ww2()
qmnb = {
{["memory"] = 4},
{["name"] = "工具附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 2505, ["offset"] = 12, ["type"] = 4},
{["value"] = 2603, ["offset"] = 16, ["type"] = 4},
{["value"] = 2401, ["offset"] = 20, ["type"] = 4},
{["value"] = 1505, ["offset"] = 24, ["type"] = 4},
{["value"] = 1105, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end

function ww3()
qmnb = {
{["memory"] = 4},
{["name"] = "弓箭附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 505, ["offset"] = 12, ["type"] = 4},
{["value"] = 1005, ["offset"] = 16, ["type"] = 4},
{["value"] = 905, ["offset"] = 20, ["type"] = 4},
{["value"] = 1305, ["offset"] = 24, ["type"] = 4},
{["value"] = 1405, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function ww4()
qmnb = {
{["memory"] = 4},
{["name"] = "装备附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = 2205, ["offset"] = 12, ["type"] = 4},
{["value"] = 1805, ["offset"] = 16, ["type"] = 4},
{["value"] = 1705, ["offset"] = 20, ["type"] = 4},
{["value"] = 1605, ["offset"] = 24, ["type"] = 4},
{["value"] = 2305, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end



function ww5()
fm1 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2505},{[1]="number"})[1]
gg.clearResults()
fm2 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2603},{[1]="number"})[1]
gg.clearResults()
fm3 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=2401},{[1]="number"})[1]
gg.clearResults()
fm4 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1505},{[1]="number"})[1]
gg.clearResults()
fm5 = gg.prompt({"耐久5-1505.击飞5-505.锋利5-605.人类猎手5-705.动物猎手5-805.魔物猎手5-905.野人猎手5-2905.点燃5-1005.击退5-1105.幸运狩猎3-1203.强力射击5-1305.无限射击5-1405.爆炸射击-2701近战抗性5-1605.远程抗性5-1705.爆炸抗性5-1805.燃烧抗性5-1905.毒素抗性5-2005.混乱抗性5-2105.反击5-2205.击退抗性5-2305.龙之缓落-2801.护腿速降5-3005.鞋子爬墙5-3105.精准采集-2401.速度5-2505.挖掘幸运3-2603"}
,{[1]=1105},{[1]="number"})[1]
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "附魔"},
{["value"] = 945804461, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 20000, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 8, ["type"] = 4},
{["value"] = fm1, ["offset"] = 12, ["type"] = 4},
{["value"] = fm2, ["offset"] = 16, ["type"] = 4},
{["value"] = fm3, ["offset"] = 20, ["type"] = 4},
{["value"] = fm4, ["offset"] = 24, ["type"] = 4},
{["value"] = fm5, ["offset"] = 28, ["type"] = 4},
}
xqmnb(qmnb)
end


function ww6()
gg.alert[[
501击飞1
502击飞2
503击飞3
504击飞4
505击飞5

601锐利1
602锐利2
603锐利3
604锐利4
605锐利5

701人类猎手1
702人类猎手2
703人类猎手3
704人类猎手4
705人类猎手5

801动物猎手1
802动物猎手2
803动物猎手3
804动物猎手4
805动物猎手5

901魔物猎手1
902魔物猎手2
903魔物猎手3
904魔物猎手4
905魔物猎手5

1001点燃1
1002点燃2
1003点燃3
1004点燃4
1005点燃5

1101击退1
1102击退2
1103击退3
1104击退4
1105击退5

1201狩猎幸运1
1202狩猎幸运2
1203狩猎幸运3

1301强力射击1
1302强力射击2
1303强力射击3
1304强力射击4
1305强力射击5

1401无限射击1
1402无限射击2
1403无限射击3
1404无限射击4
1405无限射击5

1501耐久1
1502耐久2
1503耐久3
1504耐久4
1505耐久5

1601近战抗性1
1602近战抗性2
1603近战抗性3
1604近战抗性4
1605近战抗性5

1701远程抗性1
1702远程抗性2
1703远程抗性3
1704远程抗性4
1705远程抗性5

1801爆炸抗性1
1802爆炸抗性2
1803爆炸抗性3
1804爆炸抗性4
1805爆炸抗性5

1901燃烧抗性1
1902燃烧抗性2
1903燃烧抗性3
1904燃烧抗性4
1905燃烧抗性5

2001毒素抗性1
2002毒素抗性2
2003毒素抗性3
2004毒素抗性4
2002毒素抗性5

2101混乱抗性1
2102混乱抗性2
2103混乱抗性3
2104混乱抗性4
2105混乱抗性5

2201反击1
2202反击2
2203反击3
2204反击4
2205反击5

2301击退抗性1
2302击退抗性2
2303击退抗性3
2304击退抗性4
2305击退抗性5

2401精准采集1

3201速度1
2502速度2
2503速度3
2504速度4
2505速度5

2601幸运挖掘1
2602幸运挖掘2
2603幸运挖掘3

2701爆炸射击1

2801龙之缓落1

2901野人猎手1
2902野人猎手2
2903野人猎手3
2904野人猎手4
2905野人猎手5

3001速降(护腿)1
3002速降(护腿)2
3003速降(护腿)3
3004速降(护腿)4
3005速降(护腿)5

3101爬墙(鞋子)1
3102爬墙(鞋子)2
3103爬墙(鞋子)3
3104爬墙(鞋子)4
3105爬墙(鞋子)5

]]
end  
 
function a2()
sq= gg.choice({
    "🧊红队🧊",--1
    "🧊蓝队🧊",--2
    "🧊绿队️🧊",--3
    "🧊黄队🧊",--4
    "🧊橙队🧊",--5 
    "🧊紫队🧊",--6    
    "𒅒🎡返回主页🎡𒅒",},2018,os.date("玛卡巴卡️"))
if sq==1 then  mvi1() end
if sq==2 then  mvi2() end
if sq==3 then  mvi3() end
if sq==4 then  mvi4() end
if sq==5 then  mvi5() end
if sq==6 then  mvi6() end
if sq==7 then  Main() end
XGCK=-1 end





function mvi1()
mn1=gg.prompt({"『当前红队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的红队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -120},{-1, -984} }
local tb2 = {{mn2, -120  }, }
SearchWrite(tb1, tb2, dataType)
	 gg.toast("吔屎啦你")
	 gg.clearResults()
end

function mvi2()
mn1=gg.prompt({"『当前蓝队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的蓝队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -104},{-1, -984} }
local tb2 = {{mn2, -104  }, }
SearchWrite(tb1, tb2, dataType)
 gg.toast("吔屎啦你")
	 gg.clearResults()
end



function mvi3()
mn1=gg.prompt({"『当前绿队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的绿队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -88},{-1, -984} }
local tb2 = {{mn2, -88  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end


function mvi4()
mn1=gg.prompt({"『当前黄队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的黄队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -72},{-1, -984} }
local tb2 = {{mn2, -72  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end



function mvi5()
mn1=gg.prompt({"『当前橙队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的橙队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -56},{-1, -984} }
local tb2 = {{mn2, -56  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end


function mvi6()
mn1=gg.prompt({"『当前紫队分数』"},{'0'},{"number"})[1]
gg.clearResults()
mn2=gg.prompt({"『请输入修改后的紫队分数』"},{'520'},{"number"})[1]
    gg.setRanges(4)
local dataType = 4
local tb1 = {{600, 0}, {mn1, -40},{-1, -984} }
local tb2 = {{mn2, -40  }, }
SearchWrite(tb1, tb2, dataType)
gg.toast("吔屎啦你")
	 gg.clearResults()
end

function a3()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 1028443341, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =4, ["type"] = 4},
{["lv"] = 1065353216,["offset"] =8, ["type"] = 4},
{["lv"] = 1097859072,["offset"] =12, ["type"] = 4},
}
qmxg = {
{["value"] = 99999,["offset"] =32, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function a4()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1~1000;450;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("子弹穿紫荧石块开启成功")
	 gg.clearResults()
end

function a5()
F = gg.alert("请选择｛开 关｝","开","️关️️")

if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "秒挖方块"},
{["value"] = 1133903872, ["type"] = 4},
{["lv"] = 50.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = -70.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.3, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end


function a6()
gg.clearResults()
gg.searchNumber('12005;5F', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_FLOAT, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('能量剑无限技能开启成功！')
end

function lhplg520()
gg.clearResults()
	 gg.setRanges(4)
	 gg.alert("🔰请在2秒内点击6🔰...🔰不会用就滚🔰")
  gg.sleep(5000)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
	 gg.alert("🛡️请在2秒内点击1🔰...🔰不会用就滚🔰")
  gg.sleep(5000)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 gg.alert("🔰请在2秒内点击6🔰...🔰不会用就滚🔰")
  gg.sleep(5000)
	  gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = lhp}})
	 gg.toast("开启成功")
	 gg.clearResults()
	 end
	 end
	 

function a7()
SH = gg.choice({
   "𒅒🔰开10人房间🔰𒅒",--1
   "𒅒🔰开20人房间🔰𒅒",--2
   "𒅒🔰开30人房间🔰𒅒",--3
   "𒅒🔰️开40人房间🔰𒅒",--4
   "𒅒🔰️返 回 主 页🔰𒅒",--5
},2018,os.date("𒅒开启成功后直接开房间就行了𒅒"))
if SH==1 then lhp=7  lhplg520()end
if SH==2 then lhp=8  lhplg520()end
if SH==3 then lhp=9  lhplg520()end
if SH==4 then lhp=10  lhplg520()end
XGCK=-1
end

function czbb()
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.alert("打开背包")
	 gg.sleep(3000)
	 gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.alert("关闭背包")
	 gg.sleep(3000)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	end
	end
	 

function a8()
SH = gg.choice({
   "𒅒🔰第一步:自己房间抓数据🔰𒅒",--1
   "𒅒🔰第二步:别人房间使用🔰𒅒",--2
   "𒅒🔰关闭创造背包🔰𒅒",--3
},2018,os.date("𒅒冷殇原创𒅒"))
if SH==1 then czbb()end
if SH==2 then czbb1()end
if SH==3 then xzjm2() end
XGCK=-1
end

function czbb1()
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	end
 end
 
function a9()
qmnb = {
{["memory"] = 4},
{["name"] = "无敌"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1120403456, ["offset"] = -24, ["type"] = 32},
    }
qmxg = {
{["value"] = 1000000, ["offset"] = -80, ["type"] = 16, ["freeze"] = true},
      {["value"] = 1000000, ["offset"] = -256, ["type"] = 16, ["freeze"] = true},
{["value"] = 0.00006336603, ["offset"] = 0x14, ["type"] = 16},
}
xqmnb(qmnb)
end

function a10()
mn2=gg.prompt({"输入别人迷你号:"},{'3'},{"number"})[1]
mn1=gg.prompt({"输入别人的大小:"},{'3'},{"number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "自定义人物大小"},
{["value"] =mn2, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = -56, ["type"] = 4},
}
qmxg = {
{["value"] = mn1, ["offset"] = 148,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
function a11()
  o2 = gg.choice({
    "R>�化石龙>�R",
    "R>�机灵飞鼠>�R",
    "R>�瑞祥麒麟>�R",
    "R>�陆行鸟>�R",
    "R>�大白象>�R",
    "R>�超能海豹>�R",
    "R>�舞狮猫猫>�R",
    "R>�星河天马>�R",
    "R>�桃香扇缘>�R",
    "R>�深渊咆哮>�R",
    "R>�皎月仙宫>�R",
    "R>�冰雪传说>�R",
    "R>�缤纷幻想>�R",
    "R>�福运哞哞>�R",
    "R>�浮游山海>�R",
    "R>�镜花水月>�R",
    "R>�鹿王本身>�R",
    "R>�精灵南瓜车>�R",
    "R>�竹 蜻 蜓>�R",
    "R>�曦光绘梦>�R",
    "R>�裂空机甲>�R",
    "R>�星河机甲>�R",
    "R>�环海洛洛>�R",
    "R>�尼龙洛洛>�R",
    "R>�虚空龙祖>�R",
    "R>�繁花夜明>�R",
    "R>�星月魔毯>�R",
    "R>�千机隼>�R",
    "R>�无限电音>�R",
    "R>�云梦花舞>�R",
    "R>�醉花阴>�R",
    "R>�帝皇战龙>�R",
    "R>�虎虎生威>�R",
    "R>�旺财>�R",
    "R>�帝皇侠>�R",
    "R>�自定义召唤>�R",
    "R<�返 回 主 页<�R"
  }, 2018, os.date("R跪得太久，都不知道自己站起来了&R"))
  if o2 == 1 then
    o = 3432
    o4()
  end
  if o2 == 2 then
    o = 3435
    o4()
  end
  if o2 == 3 then
    o = 3438
    o4()
  end
  if o2 == 4 then
    o = 3441
    o4()
  end
  if o2 == 5 then
    o = 3444
    o4()
  end
  if o2 == 6 then
    o = 3447
    o4()
  end
  if o2 == 7 then
    o = 3456
    o4()
  end
  if o2 == 8 then
    o = 3459
    o4()
  end
  if o2 == 9 then
    o = 3462
    o4()
  end
  if o2 == 10 then
    o = 3471
    o4()
  end
  if o2 == 11 then
    o = 3480
    o4()
  end
  if o2 == 12 then
    o = 3485
    o4()
  end
  if o2 == 13 then
    o = 3487
    o4()
  end
  if o2 == 14 then
    o = 3489
    o4()
  end
  if o2 == 15 then
    o = 3492
    o4()
  end
  if o2 == 16 then
    o = 3497
    o4()
  end
  if o2 == 17 then
    o = 4503
    o4()
  end
  if o2 == 18 then
    o = 4507
    o4()
  end
  if o2 == 19 then
    o = 4510
    o4()
  end
  if o2 == 20 then
    o = 4515
    o4()
  end
  if o2 == 21 then
    o = 4518
    o4()
  end
  if o2 == 22 then
    o = 4521
    o4()
  end
  if o2 == 23 then
    o = 4526
    o4()
  end
  if o2 == 24 then
    o = 4528
    o4()
  end
  if o2 == 25 then
    o = 4533
    o4()
  end
  if o2 == 26 then
    o = 4537
    o4()
  end
  if o2 == 27 then
    o = 4541
    o4()
  end
  if o2 == 28 then
    o = 4545
    o4()
  end
  if o2 == 29 then
    o = 4548
    o4()
  end
  if o2 == 30 then
    o = 4551
    o4()
  end
  if o2 == 31 then
    o = 4554
    o4()
  end
  if o2 == 32 then
    o = 4562
    o4()
  end
  if o2 == 33 then
    o = 4566
    o4()
  end
  if o2 == 34 then
    o = 4556
    o4()
  end
  if o2 == 35 then
    o = 4570
    o4()
  end
  if o2 == 36 then
    zdy()
  end
  if o2 == 37 then
    Main()
  end
  XGCK = -1
end

function zdy()
  aba6 = gg.prompt({"请输入坐骑代码"}, {
    [1] = 4526
  }, {
    [1] = "number"
  })[1]
  qmnb = {
    {memory = 4},
    {name = "坐骑"},
    {value = 4842495500454461440, type = 32},
    {
      lv = 1127481344,
      offset = 4,
      type = 4
    },
    {
      lv = 1106247680,
      offset = 28,
      type = 4
    },
    {
      lv = 1065353216,
      offset = 136,
      type = 4
    },
    {
      lv = 1065353216,
      offset = -8,
      type = 4
    }
  }
  qmxg = {
    {
      value = aba6,
      offset = 296,
      type = 4,
      freeze = true
    },
    {
      value = 16777472,
      offset = -60,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function o4()
  qmnb = {
    {memory = 4},
    {name = "坐骑"},
    {value = 4842495500454461440, type = 32},
    {
      lv = 1127481344,
      offset = 4,
      type = 4
    },
    {
      lv = 1106247680,
      offset = 28,
      type = 4
    },
    {
      lv = 1065353216,
      offset = 136,
      type = 4
    },
    {
      lv = 1065353216,
      offset = -8,
      type = 4
    }
  }
  qmxg = {
    {
      value = o,
      offset = 296,
      type = 4,
      freeze = true
    },
    {
      value = 16777472,
      offset = -60,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function a12()
b = gg.prompt({"请输入宠物代码 远古叮叮-3511 房主闪退-3512-请输入宠物代码10001-小泡沫.10002-泡泡团子.10003-四泡团.10004-小孩子.10005-的叶团子.10006-豪华团.10007-小石子.10008-岩石团.10009-巨岩团.10010-小火量.10011-暖暖团.10012-报火团.10013-小HT.10014-跳跳蛙.10015-忍忍娃.10016-小免机.10017-免叫.10018-玉免机.10019-迷你注.10020-旺旺.10021-旺旺警长.10022-小龙蛋10023-黑龙重10024-黑龙糕10025-小菲鹏.10026-球糟鹏10027-全羽鹅网.10028-小灵球.10029-幽酬球.10030-重灵王球.10031-小黑猫.10032-焦炭猫.10033-黑飘远.10034-小球节.10035-球球豹.10036-球豹王子.10037-小擦报.10038-奏乐猴.10039-梵音猴.10040-小孔雀.10041-雏孔雀.10042-丰羽孔雀 虚空幻境-猛3516 虚空幻境-速3515 远古叮叮-3511 房主闪退-3513  爆爆蛋-3109  恢复-10001"}
,{[1]=3512},{[1]="number"})[1]
  
qmnb = {
{["memory"] = 4},
{["name"] = "宠物"},
{["value"] = 10001, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = b, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end

function a13()
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
gg.searchNumber(":wwwwwwwwwwwwwwwww", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

revert = gg.getResults(200, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(mnmcc, gg.TYPE_BYTE)
gg.toast("自定义地图名开启成功")
if gg.getResultCount() == 0 then
gg.toast("自定义地图名开启失败")
else
end
end

function a14()
F = gg.alert("🔰请选择｛皮肤 强大 家园｝🔰","🍁华丽变身🍁","🍁️强大如我🍁","🍓家园植物🍓️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
vip= gg.prompt({"输入你拥有的一个皮肤号：1胖达     2齐天小圣     3兔美美     4迷斯拉     5琉璃奖     6乔治     7墨家小飞     8安妮     9德古拉     10叮叮当     11荒野猎人     12羽姬     13慕容啸天     14乔一     15篮球队长     16啦啦队长     17露西     18黑帽子船长     19甜心玛丽     20锦衣卫     21花小楼     22莉莉丝     23月无双     24叶小龙     25二狼神     26鱼小乐     27迷俊俊     28幻音     29幻0式     30柳仙儿     31帕普奇     32米娜     33雪人     34嘟嘟啵啵     35啵啵     36嘟嘟     37梦歌     38斩浪     39天使     40暗灵     50乔克     51小艾     52秦天柱     53威震天     54慕斯     55金悠悠     56喜团团     57林千树     58大黄蜂     59花幽幽     60星灵     61雪球球     62爱丽丝     63龟太郎     64红蜘蛛     65热破     66惊破天     67劳尔     68铃音     69清弦     70紫悦     71宇宙公主     72柔柔女孩     73月亮公主     74钢索     75飞镖     76嚎叫     77达奇     78塔琳娜     79森林隐者     80兔子拉比     81碧琪     82卡洛尔     83余小环     84章小丸     85熊小吉     86星光熠熠     87云宝     88音韵公主 89初慕     90冲云霄     96大无畏     91利爪     102圣婴     103牛魔王     104灵瑶     105小红帽     106迷小酷     107狼少年     108天仙子雅     109天仙子颂     110红玫瑰少女     111橘子     112绣球花少年查李斯     113泡泡     114朝露繁花     115冰公主     116红桃     117白光莹     118灰姑娘克里斯丁     119灵公主     120小龙人麒休     121妙妙     122白天鹅     123时稀      124洁莉      125快客小窝"}
,{[1]=34},{[1]="number"})[1]
qmnb = {
{["memory"] = 4},
{["name"] = "皮肤勋章"},
{["value"] = 808465457, ["type"] = 4},
{["lv"] = 2, ["offset"] = 216, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = vip, ["offset"] = -84, ["type"] = 4},

}
xqmnb(qmnb)
 elseif  F== 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "原创"},
{["value"] =1080360960, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = 500, ["offset"] = -20,["type"] = 64},
}
xqmnb(qmnb)
elseif  F== 3 then
pcall(load(gg.makeRequest("https://cdn.410wl.cn/api/1641112124-825.lua").content))
end
end

function a15()
SY1 = gg.choice({
	 "解锁荧光弹弓", --1
     "解锁圆球炸弹", --2
     "解锁冰锥", --3
     "解锁熔岩球", --4
     "解锁脉冲弓", --5
     "解锁黑龙熔岩球", --6
     "解锁混乱熔岩球", --7
     "解锁反光镜", --8
     "解锁火箭背包", --9
     "解锁公主床", --10
     "解锁坚冰", --11
     "解锁钢板", --12
     "解锁金铁门", --13
     "解锁白杨木门", --14
     "解锁弩",--15
     "备用解锁",--16
   	 "🍡返 回 主 页🍡",--17
 }, nil, "我这一次终究还是来的太迟，不该出现再插上一点说辞")
if SY1 == 1 then l1() end
if SY1 == 2 then l2() end
if SY1 == 3 then l3() end
if SY1 == 4 then l4() end
if SY1 == 5 then l5() end
if SY1 == 6 then l6() end
if SY1 == 7 then l7() end
if SY1 == 8 then l8() end
if SY1 == 9 then l9() end
if SY1 == 10 then l10() end
if SY1 == 11 then l11() end
if SY1 == 12 then l12() end
if SY1 == 13 then l13() end
if SY1 == 14 then l14() end
if SY1 == 15 then l15() end
if SY1 == 16 then l16() end
if SY1 == 17 then Main() end

GLWW=-1
end


function l1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12589;136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【荧光弹弓】出来测试一下！")
	 gg.clearResults()
end

function l2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15506;137", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("137", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【圆球爆弹】出来测试一下！")
	 gg.clearResults()
end

function l3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15507;138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【冰锥】出来测试一下！")
	 gg.clearResults()
end

function l4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15508;139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("139", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【熔岩球】出来测试一下！")
	 gg.clearResults()
end

function l5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12291;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【脉冲弓】出来测试一下！")
	 gg.clearResults()
end

function l6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15519;141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【黑龙熔岩球】出来测试一下！")
	 gg.clearResults()
end

function l7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15520;142", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("142", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【混乱熔岩球】出来测试一下！")
	 gg.clearResults()
end

function l8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1060;143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("143", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("修改成功！拿【反射镜】出来测试一下！")
	 gg.clearResults()
end

function l9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("火箭背包解锁成功")
	 gg.clearResults()
end

function l10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("公主床解锁成功")
	 gg.clearResults()
end

function l11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function l15()
 gg.clearResults()
gg.searchNumber('12283;61', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('61', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('弩解锁成功！')
end

function l16()
qmnb = {
{["memory"] = 4},
{["name"] = "图鉴解锁"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 200, ["offset"] = -360, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a16()
SN = gg.multiChoice({
	 "【野人掉落999星星】",--1
	 "【熔岩巨人掉落999星星】",--2
	 "【猪掉落999星星】",--3
	 "【牛掉落999星星】",--4
	 "【鸡掉落999星星】",--5
	 "【狼掉落999星星】",--5
	 "【返回主界面】",--6
}, nil, "不要啊～")
if SN[1]==true then
	 aaa1()
end
if SN[2]==true then
	 aaa2()
end
if SN[3]==true then
	 aaa3()
end
if SN[4]==true then
	 aaa4()
end
if SN[5]==true then
	 aaa5()
end
if SN[6]==true then
	 aaa6()
end
FX1=0
end

function aaa1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3101;12526;13::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function aaa2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3130;11310;21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function aaa3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3402;12522;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function aaa4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function aaa5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3400;12518;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function aaa6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3407;11307;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 99999999}})
	 end
	 gg.toast("开启成功\n共耗时:"..os.clock()-time.."秒")
	 gg.clearResults()
end

function a17()
F = gg.alert("请选择｛开 关｝","开","️关️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 mm1 = gg.prompt({"『输入火箭筒发射数量』"}
,{[1]=1},{[1]="number"})[1]

	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;1;1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(mm1, gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
mm2 = mm1
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 
	  elseif  F== 2 then	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;12,285;"..mm2..";1F;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 sl=gg.getResultCount()
	 if sl>0 then
	 gg.searchNumber(mm2, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("火箭筒发射数量开启成功,共注入1条数据")
	 gg.clearResults()
	 else
	 gg.toast("火箭筒发射数量开启失败")
	 end
	 end	 
end

function a18()
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
end end

function a19()
AsD= gg.choice({
    "𒅒🧊二 胡🧊𒅒",
    "𒅒🧊古 筝🧊𒅒",
    "𒅒🧊唢 呐🧊𒅒",
    "𒅒🧊琵 琶🧊𒅒",
    "𒅒🧊笛 子🧊𒅒",    
    "𒅒🧊️鼓🧊𒅒",
    "𒅒🧊篮 球 衣🧊𒅒",
    "𒅒🧊足 球 衣🧊𒅒",
    "𒅒🧊能 量 剑🧊𒅒",
    "𒅒🧊地形编辑器🧊𒅒",
    "𒅒🧊自定义🧊𒅒",
    "𒅒🎡返 回 主 页🎡𒅒",},2018,os.date("𒅒修改完后，从背包拿喷漆罐𒅒"))
if AsD==1 then QWER=11900 ZZZZqq() end
if AsD==2 then QWER=11905 ZZZZqq() end
if AsD==3 then QWER=11906 ZZZZqq() end
if AsD==4 then QWER=11907 ZZZZqq() end
if AsD==5 then QWER=11908 ZZZZqq() end
if AsD==6 then QWER=11909 ZZZZqq() end
if AsD==7 then QWER=12820 ZZZZqq() end
if AsD==8 then QWER=12821 ZZZZqq() end
if AsD==9 then QWER=12005 ZZZZqq() end
if AsD==10 then QWER=10500 ZZZZqq() end
if AsD==11 then gp1() end
if AsD==12 then az() end
XGCK=-1 end

function ZZZZqq()
qmnb = {
{["memory"] = 4},
{["name"] = "喷漆罐道具"},
{["value"]=12240,["type"]=4},
{["lv"]=200,["offset"]=0x228,["type"]=4},
{["lv"]=2,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=QWER,["offset"]=-0x400,["type"]=4}
}
xqmnb(qmnb)
gg.clearResults() 
end

function a20()
hj = gg.prompt({"🐉输入坐骑代码🐉"}
,{[1]=3451},{[1]="number"})[1]
yu = gg.prompt({"🐉请输入要修改的血量🐉"}
,{[1]=9999},{[1]="number"})[1]
w = gg.prompt({"🐉请输入要修改的速度🐉"}
,{[1]=300},{[1]="number"})[1]
s = gg.prompt({"🐉请输入要修改的跳跃能力🐉"}
,{[1]=70},{[1]="number"})[1]
j = gg.prompt({"🐉请输入要修改的坐骑buff属性代码🐉"}
,{[1]=3510},{[1]="number"})[1]
local t = {"libAppPlayJNI.so:bss", "Cb"}
local tt = {0x345F89, 0xB0, 0x164}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = hj}})
gg.setValues({{address = ttt, flags = 4, value = yu}})
gg.setValues({{address = ttt, flags = 4, value = w}})
gg.setValues({{address = ttt, flags = 4, value = s}})
gg.setValues({{address = ttt, flags = 4, value = j}})
gg.toast("开启成功")
	 gg.clearResults()
end

function a21()
as = gg.prompt({"输入血量"}
,{[1]="1000"},{[1]="number"})
if not as then return end
    qmnb = {
{["memory"] = 4},
{["name"] = "修改血量"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = as[1], ["offset"] = -368, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function a22() 
    qmnb = {
{["memory"] = 4},
{["name"] = "全员摔死"},
{["value"] = 4474776592571170816, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -368, ["type"] = 16},}
xqmnb(qmnb)
gg.clearResults()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{220, 0},{120, -4},{60, -16},{180, -12},{120, 4},}
local tb2 = {{  12 }, }
SearchWrite(tb1, tb2, dataType)
gg.getResults(100)
gg.editAll("10000", gg.TYPE_DWORD)	 
end

function Main5()  
SN = gg.multiChoice({
"❄🧊玖辞.凉情️️辅助🧊❄️️",
"❄🧊️️涼凊.陻仕辅助🧊❄",
"❄🧊乐迪迷你辅助🧊❄",
"❄🧊子默辅助🧊❄",
"❄🧊弑神.苏洽辅助🧊❄",
"❄🧊神威最新版辅助🧊❄",
"❄🧊帆圣·继承辅助🧊❄",
"❄🧊自定义切换辅助🧊❄",
"❄❌返 回 主 页❌❄",
 }, nil, "🔶想要长生不老，堪比登天🔷")
if SN == nil then else
if SN[1]==true then     xzxz1() end
if SN[2]==true then     xzxz2() end
if SN[3]==true then     xzxz4() end
if SN[4]==true then     xzxz5() end
if SN[5]==true then     xzxz7() end
if SN[6]==true then     xzxz8() end
if SN[7]==true then     xzxz6() end
if SN[8]==true then     xzxz3() end
if SN[9]==true then     Main() end
end
FX=0 end


function xzxz1()
gg.toast("正在连接❤️玖辞.凉情辅助❤️.")
    print(os.date("%S秒\n已切换❤️玖辞.凉情辅助❤️"))
pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/54ccf1f9d21e8738174fd7a1e3dd3c5b.lua").content))
end


function xzxz2()
gg.toast("正在连接❤️涼凊.陻仕辅助❤️")
    print(os.date("%S秒\n已切换❤️涼凊.陻仕辅助❤️"))
     pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/04edd4dfa6085eb1e2c1cff9407e7dbd.lua").content))
end


function xzxz3()
jl=gg.prompt({"请输入网络辅助链接："},{[1] = ""},{[1] = "text"})
    gg.toast("正在连接自定义辅助链接...")
    print(os.date("%S秒\n已切自定义网络辅助"))
    pcall(load(gg.makeRequest(jl[1]).content))
    os.exit()
  end

function xzxz4()
gg.toast("正在连接❤️乐迪迷你辅助❤️")
    print(os.date("%S秒\n已切换❤️乐迪迷你辅助❤️"))
     pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/a1425cb99f8f815f6cabbd5571d5156e.lua").content))
end

function xzxz5()
gg.toast("正在连接❤️子默辅助❤️")
    print(os.date("%S秒\n已切换❤️子默辅助❤️"))
     pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/c3dbf62f84f4687204025ccd99389c5c.lua").content))
end

function xzxz6()
gg.toast("正在连接❤️帆圣·继承辅助❤️")
    print(os.date("%S秒\n已切换❤️帆圣·继承辅助❤️"))
     pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/eec539e6c75cb2f93b700aeea4584211.lua").content))
end

function xzxz7()
gg.toast("正在连接❤️弑神.苏洽辅助❤️")
    print(os.date("%S秒\n已切换❤️弑神.苏洽辅助❤️"))
     pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/969f7c401d8f64acb16fc1f5076e8263.lua").content))
end

function xzxz8()
gg.toast("正在连接❤️神威最新版辅助❤️")
    print(os.date("%S秒\n已切换❤️神威最新版辅助❤️"))
     pcall(load(gg.makeRequest("https://pan.tigerroot.cn/down.php/29320ce4fe2fc4fa85884d4d068951b2.lua").content))
end

function Main6()
SN = gg.choice({
   "𒅒🍃联机吸人🍃𒅒",--1
   "𒅒🍃观战模式🍃𒅒",--2
   "𒅒🍃狙击连发🍃𒅒",--3
   "𒅒🍃变态功能🍃𒅒",--4
   "𒅒🍃人物上色🍃𒅒",--5
   "𒅒🍃上帝视角🍃𒅒",--6
   "𒅒🍃一秒换弹🍃𒅒",--8
   "𒅒🍃三角透视🍃𒅒",--9
   "𒅒🍃狙击准星🍃𒅒",--10  
   "𒅒🍃人物附身🍃𒅒",--11
   "𒅒🍃返回主页️🍃𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN== nil then else
if SN==1 then bbbb1() end
if SN==2 then bbbb2() end
if SN==3 then bbbb3() end
if SN==4 then bbbb4() end
if SN==5 then bbbb5() end
if SN==6 then bbbb6() end
if SN==7 then bbbb8() end
if SN==8 then bbbb9() end
if SN==9 then bbbb10() end
if SN==10 then gc() end
if SN==11 then Main() end
end
XGCK=-7
end

function bbbb1()
gg.clearResults()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
t=sl[1].value
QWER = gg.prompt({"『输入要吸的人迷你号』"}
,{[1]=s},{[1]="number"})
if not QWER then return end
qmnb = {
{["memory"] = 4},
{["name"] = "吸人"},
{["value"] =BY , ["type"] = 32},
{["lv"] = t, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =QWER[1], ["offset"] = 0,["type"] = 32},
}
xqmnb(qmnb)

  gg.toast("联机西人可用一分钟自动关闭,关闭后可以再次开启")
    gg.sleep(35000)
qmnb = {
{["memory"] = 4},
{["name"] = "恢复"},
{["value"] =QWER[1] , ["type"] = 32},
{["lv"] = t, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] =BY, ["offset"] = 0,["type"] = 32},
}
xqmnb(qmnb)
end

function bbbb2()
gg.toast("请选择观战模式开关")
F=gg.alert("请选择观战模式｛开 关｝", "开", "关")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777216,["offset"]=-64,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4},
{["lv"]=65536,["offset"]=-88,["type"]=4}
}
qmxg={
{["value"]=16777472,["offset"]=-64,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=4},
{["name"]="观战模式"},
{["value"]=1121452032,["type"]=4},
{["lv"]=1118568448,["offset"]=-4,["type"]=4},
{["lv"]=16777472,["offset"]=-64,["type"]=4},
{["lv"]=1065353216,["offset"]=-12,["type"]=4},
{["lv"]=65536,["offset"]=-88,["type"]=4}
}
qmxg={
{["value"]=16777216,["offset"]=-64,["type"]=4,["freeze"]=true}
}
xqmnb(qmnb)
end
end


function bbbb3()
F = gg.alert("🔰请选择🔰","🍁谁是狙神连发🍁","🍁️怒海狙击连发🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择默认取消")
    gg.toast("你未选择")
  else 
  end
if  F== 1 then
 qmnb = {
{["memory"] = 4},
{["name"] = "狙击枪连发"},
{["value"] = 1155186688, ["type"] = 4},
{["lv"] = 1152319488, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1137836032, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 15003, ["offset"] = 24, ["type"] = 4},
{["value"] = 1, ["offset"] = 20, ["type"] = 4},
{["value"] = 0, ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -44, ["type"] = 16},
}
xqmnb(qmnb)
 elseif F == 2 then
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
end

function bbbb4()
gg.toast(so({("全枪防抖连发"),15003,4,2,2},{{("15000~15009"),-136}},{{1,-4},{0,-66},{0,-56,16},{0,-40},{1,-28},{0,-52,16},{32000,-0x3e}}))

qmnb = {
{["memory"] = 4},
{["name"] = "1秒钟换子弹"},
{["value"] =15003 , ["type"] = 4},
{["lv"] = 15004, ["offset"] = -136, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -24,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function bbbb5()
gg.toast("请选择开关")
F = gg.alert("🔰请选择｛开 关｝🔰","🍁开🍁","🍁️关🍁️️")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =774, ["type"] = 4},
{["lv"] =768 , ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"]=0,["offset"]=-4,["type"]=4},
}
xqmnb(qmnb)
 elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] =774, ["type"] = 4},
{["lv"] =768 , ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"]=1,["offset"]=-4,["type"]=4},
}
xqmnb(qmnb)
end
end

function bbbb6()
LQ = gg.prompt({"500恢复"}
,{[1]=4000},{[1]="number"})
if not LQ then return end
qmnb={
{["memory"]=16384},
{["name"]="上帝视角"},
{["value"]=1150156800,["type"]=4},
{["lv"]=-1007026176,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=LQ[1],["offset"]=4,["type"]=16}
}
xqmnb(qmnb)
gg.clearResults()
end


function bbbb8()
qmnb = {
{["memory"] = 4},
{["name"] = "1秒钟换子弹"},
{["value"] =15003 , ["type"] = 4},
{["lv"] = 15004, ["offset"] = -136, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -24,["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function bbbb9()
gg.toast("请选择开关")
F=gg.alert("🔰请选择｛开 关｝🔰", "🍁️️开🍁️️", "️🍁️️关🍁️️️️")
if F ~= 1 and F ~= 2 then
gg.toast("你未选择开关默认取消")
gg.toast("📌你未选择｛开 关｝")
else
end
if F==1 then
qmnb={
{["memory"]=16384.},
{["name"]="三角透视"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=1,["offset"]=16,["type"]=4}
}
xqmnb(qmnb)
elseif F==2 then
qmnb={
{["memory"]=16384.},
{["name"]="三角透视"},
{["value"]=196608,["type"]=4},
{["lv"]=65538,["offset"]=8,["type"]=4},
}
qmxg={
{["value"]=65536,["offset"]=16,["type"]=4}
}
xqmnb(qmnb)
end
end


function bbbb10()
qmnb = {
{["memory"] = 4},
{["name"] = "准心"},
{["value"] = 15003, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"]= 1,["offset"]= -28,["type"]= 4},}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "准心"},
{["value"] = 15003, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"]= 1,["offset"]= -28,["type"]= 4},}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "准心"},
{["value"] = 15003, ["type"] = 4},
{["lv"] = 3, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"]= 1,["offset"]= -28,["type"]= 4},}
xqmnb(qmnb)
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "准心"},
{["value"] = 15003, ["type"] = 4},
{["lv"] = 2, ["offset"] = -4, ["type"] = 4},}
qmxg = {
{["value"]= 1,["offset"]= -28,["type"]= 4},}
xqmnb(qmnb)
gg.clearResults()
end

function gc()
pcall(load(gg.makeRequest("https://image.api.losfer.cn/down.php/841173853b7d83b01084d886f9e9819e.lua").content))
end
function Main7()
jl=gg.prompt({"请输入网络脚本链接："},{[1] = ""},{[1] = "text"})
    gg.toast("正在连接自定义脚本链接...")
    print(os.date("%M分%S秒_已切自定义网络脚本"))
    pcall(load(gg.makeRequest(jl[1]).content))
    os.exit()
  end


function Main8()  
SN = gg.choice({
   "𒅒♥刷新当前迷你号♥️𒅒",
   "𒅒♥️获取房主迷你号🌐♥️𒅒",
   "𒅒♥️获取全房迷你号🗣️♥️𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN==1 then sp() end
if SN==2 then fohd() end
if SN==3 then xmlip() end
if SN==4 then Main() end
XGCK=-7
end


function fohd()
gg.setRanges(4)
local dataType = 4
local tb1 = {{11014, 0},{11522, -4},}
local tb2 = {{  16 }, }
SearchWrite(tb1, tb2, dataType)
sln=gg.getResultCount()
if sln<1 then return end	
local nmb=gg.getResults(1)
	 sl=gg.getValues(nmb)
wjnba=sl[1].value
if wjnba=="0" then gg.alert[[请在房间内开启此功能]] return end
gg.alert("房主迷你号为"..wjnba,"复制")
gg.copyText(wjnba)
end

function xmlip()
gg.alert("获取失败，请检查代码")
end


 function Exit()
print("弑神很强啊我很好啊!")
gg.toast("退出辅助成功\n耗时:0.01秒\n欢迎再次使用")
os.exit() end 
while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end

