function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(''..qmnb[2]['name'] .. '') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(''..qmnb[2]['name']..'' .. xgsl .. '') else gg.toast(''..qmnb[2]['name'] .. '') end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)   for i=2 , #tb1 do     local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}     table.insert(lt1,i,mm2)   end   for i=1 , #tb2 do     if tb2[i][2]~=nil then       local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}       table.insert(lt2,i,mm3)      else       local mm3={["修改"] = false,["偏移"] = tb2[i][1]}       table.insert(lt2,i,mm3)     end   end   LongTao(lt1, lt2 ) end  function LongTao(Search, Write)   gg.clearResults()   gg.setVisible(false)   lx=Search[1]["类型"]   gg.searchNumber(Search[1]["主特征码"], lx)   local count = gg.getResultCount()   local result = gg.getResults(count)   gg.clearResults()   local data = {}   if (count > 0) then     gg.toast("共搜索 "..count.." 条数据")     for i, v in ipairs(result) do       v.isUseful = true     end     for k=2, #Search do       local tmp = {}       local num = Search[k]["副特征码"]       if Search[k]["类型"]~= nil then            lx =Search[k]["类型"]          else            lx = Search[1]["类型"]         end       for i, v in ipairs(result) do         tmp[#tmp+1] = {}         tmp[#tmp].address = v.address + Search[k]["偏移"]         tmp[#tmp].flags = lx       end       tmp = gg.getValues(tmp)       for i, v in ipairs(tmp) do         if ( tostring(v.value) ~= tostring(num) ) then           result[i].isUseful = false         end       end     end     for i, v in ipairs(result) do       if (v.isUseful) then         data[#data+1] = v.address       end     end     if (#data > 0) then       local t = {}       for i=1, #data do         for k, w in ipairs(Write) do           if w["类型"] ~= nil then              lx = w["类型"]            else              lx = Search[1]["类型"]           end           t[#t+1] = {}           t[#t].address = data[i] + w["偏移"]           t[#t].flags = lx           if (w["修改"]~=nil) and (w["修改"]~=false) then             t[#t].value = w["修改"]             gg.setValues(t)             if (w["冻结"] == true) then               local item = {}               item[#item+1] = t[#t]               item[#item].freeze = w["冻结"]               gg.addListItems(item)             end           end         end       end       gg.loadResults(t)       gg.toast("共偏移η"..#t.." 条数据ΔΘ")      else       gg.toast("未定位到数据！")       return false     end    else     gg.toast("未定位到数据！")     return false   end end    local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then  data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and ""..tg_.."" or "" th=(th_) and ""..th_.."" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast(""..Name..""..#data..""..tg..th) tg_,th_=nil,nil else gg.toast(""..Name.."",false) return false end else gg.toast(Name.."") return false end end
gg.alert[[                   ✨<<倾城原创>>✨
         💫>>>此脚本开源交流无加密<<<💫
         💫>>>倒卖者死🐴<<<💫
         💫>>>2改不标明者死🐴<<<💫
                       ✨倾城nb✨]]
function Main0()
SN = gg.choice({
	 "✨无敌无限蓝✨",
	 "✨全武秒杀✨",
	 "✨武器攻速✨",
	 "✨近战攻速✨",
	 "✨单局加速✨",
	 "✨全局加速✨",
	 "🎁退出脚本🎁",
}, nil, "✨倾城制作脚本（2改倒卖者死🐴）✨")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
if SN==5 then
	 HS6()
end
if SN==6 then
	 HS7()
end
if SN==7 then
	 Exit()()
end
FX1=0
end

function HS2()
a = gg.prompt({"请输入现在的血"}
,{[1]=7},{[1]="number"})[1]
b = gg.prompt({"请输入现在的蓝"}
,{[1]=200},{[1]="number"})[1]
c = gg.prompt({"请输入现在的盾"}
,{[1]=6},{[1]="number"})[1]
gg.setRanges(32)
local dataType = 4
local tb1 = {{b, 0}, {a, -40}, {a, -36}, {c, -8}, {c, -4}, {b, 4}, }
local tb2 = {{99999, 0}, {99999, 4,true},{99999, -4}, {99999, -8,true}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,065,353,216D;2~30::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2~30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("全武秒杀开启成功")
end

function HS4()
a = gg.prompt({"请输入要修改的枪械数值原值为1"}
,{[1]=10},{[1]="number"})[1]
gg.setRanges(4)
local dataType = 16
local tb1 = {{0.112032637, 0}, {0.112032637, -4}, {1, 24}, {0.80000001192, 72}, {3.6013371e-43, 592}, }
local tb2 = {{a, 24,true}, }
SearchWrite(tb1, tb2, dataType)
end
	 
function HS5()
a = gg.prompt({"请输入要修改的刺剑数值原值为1"}
,{[1]=10},{[1]="number"})[1]
gg.setRanges(4)
local dataType = 16
local tb1 = {{-1.938272e38, 0}, {-1.938272e38, -4}, {1, 24}, {0.89999997616, 72}, {0.5, 588}, }
local tb2 = {{a, 24,true}, }
SearchWrite(tb1, tb2, dataType)
end

function HS6()
readWrite({{false,0.029999999329447746,0,16,nil,nil},{0.3333333432674408,-4,16}},{{2,-8,16,false}},16,4 | 32,"单局加速")
end

function HS7()
readWrite({{false,0.029999999329447746,0,16,nil,nil},{0.3333333432674408,-4,16}},{{2,-8,16,true}},16,4 | 32,"全局加速")
end


function Exit()
print("欢迎下次使用倾城专属元气脚本")
os.exit()
end

while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end