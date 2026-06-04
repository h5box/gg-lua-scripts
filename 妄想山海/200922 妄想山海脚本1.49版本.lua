function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end 
local kqgn=" [开启]"
local gbgn=" [关闭]"
local gn1=kqgn
local gn2=kqgn
local gn3=kqgn
local gn4=kqgn
local gn5=kqgn
local gn6=kqgn
local gn7=kqgn
local gn8=kqgn
local gn9=kqgn
local gn10=kqgn
function Main()
Interface = gg.choice({
"100倍加速"..gn1,
"150倍加速"..gn2,
"200倍加速"..gn3,
"零秒换弹. "..gn4,
"范围攻击. "..gn5,
"除草除树. "..gn6,
"人物遁地. "..gn7,
"合成无cd. "..gn8,
"攻击瞬击. "..gn9,
"瞬间移动. "..gn10,
"退出",}, nil)
if Interface ==1 then a1()end
if Interface ==2 then a2()end
if Interface ==3 then a3()end
if Interface ==4 then a4()end
if Interface ==5 then a5()end
if Interface ==6 then a6()end
if Interface ==7 then a7()end
if Interface ==8 then a8()end
if Interface ==9 then a9()end
if Interface ==10 then a10()end
if Interface ==11 then Exit() end XGCK = -1 end
function a1()
if(gn1==" [开启]")then
gn1=gbgn
gg.setRanges(16384)
Name="开启100倍加速"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{100, -4}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn1==" [关闭]")then
gg.setRanges(16384)
Name="关闭100倍加速"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{1000, -4}, }
SearchWrite(tb1, tb2, dataType)
gn1=kqgn
end
end
function a2()
if(gn2==" [开启]")then
gn2=gbgn
gg.setRanges(16384)
Name="开启150倍加速"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{50, -4}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn2==" [关闭]")then
gg.setRanges(16384)
Name="关闭150倍加速"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{1000, -4}, }
SearchWrite(tb1, tb2, dataType)
gn2=kqgn
end
end
function a3()
if(gn3==" [开启]")then
gn3=gbgn
gg.setRanges(16384)
Name="开启200倍加速"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{10, -4}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn3==" [关闭]")then
gg.setRanges(16384)
Name="关闭200倍加速"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{1000, -4}, }
SearchWrite(tb1, tb2, dataType)
gn3=kqgn
end
end
function a4()
if(gn4==" [开启]")then
gn4=gbgn
gg.setRanges(16384)
Name="开启零秒换弹"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{1.0e-10, 8}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn4==" [关闭]")then
gg.setRanges(16384)
Name="关闭零秒换弹"
local dataType = 16
local tb1 = {{0.06599999964, 0}, {1000000000, 4}, }
local tb2 = {{0.00100000005, 8}, }
SearchWrite(tb1, tb2, dataType)
gn4=kqgn
end
end
function a5()
if(gn5==" [开启]")then
gn5=gbgn
gg.setRanges(16384)
Name="开启范围攻击"
local dataType = 16
local tb1 = {{0.10000000149, 0}, {100, 4}, }
local tb2 = {{1.9, 20}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn5==" [关闭]")then
gg.setRanges(16384)
Name="关闭范围攻击"
local dataType = 16
local tb1 = {{0.10000000149, 0}, {100, 4}, }
local tb2 = {{0.10000000149, 20}, }
SearchWrite(tb1, tb2, dataType)
gn5=kqgn
end
end
function a6()
if(gn6==" [开启]")then
gn6=gbgn
--[[gg.setRanges(-2080896)--O内存除草除树
Name="开启除草除树"
local dataType = 32
local tb1 = {{4647055610571908963, 0}, }
local tb2 = {{4843621403523533214, -8}, }
SearchWrite(tb1, tb2, dataType)]]
gg.setRanges(16384)
Name="开启除草除树"
local dataType = 32
local tb1 = {{4632251134716936192, 0}, }
local tb2 = {{4632251133589454848, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name="开启物体高亮"
local dataType = 32
local tb1 = {{7153181093834575053, 0}, }
local tb2 = {{7153181095982058701, 0}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn6==" [关闭]")then
gg.setRanges(16384)
Name="关闭除草除树"
local dataType = 32
local tb1 = {{4632251133589454848, 0}, }
local tb2 = {{4632251134716936192, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name="关闭物体高亮"
local dataType = 32
local tb1 = {{7153181095982058701, 0}, }
local tb2 = {{7153181093834575053, 0}, }
SearchWrite(tb1, tb2, dataType)
gn6=kqgn
end
end
function a7()
if(gn7==" [开启]")then
gn7=gbgn
gg.setRanges(16384)
Name="开启人物遁地"
local dataType = 16
local tb1 = {{1.6543545e-24, 0}, {100000000, 4}, }
local tb2 = {{-3.4E+38, 4}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn7==" [关闭]")then
gg.setRanges(16384)
Name="关闭人物遁地"
local dataType = 16
local tb1 = {{1.6543545e-24, 0}, {-3.4E+38, 4}, }
local tb2 = {{100000000, 4}, }
SearchWrite(tb1, tb2, dataType)
gn7=kqgn
end
end
function a8()
if(gn8==" [开启]")then
gn8=gbgn
gg.setRanges(4)
Name="开启合成无冷却"
local dataType = 4
local tb1 = {{30001, 0}, {2000, 4}, }
local tb2 = {{-8402530, 4}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn8==" [关闭]")then
gg.setRanges(4)
Name="关闭合成无冷却"
local dataType = 4
local tb1 = {{30001, 0}, {-8402530, 4}, }
local tb2 = {{2000, 4}, }
SearchWrite(tb1, tb2, dataType)
gn8=kqgn
end
end
function a9()
if(gn9==" [开启]")then
gn9=gbgn
gg.setRanges(16384)
Name="开启攻击瞬击"
local dataType = 16
local tb1 = {{57.29578399658, 0}, }
local tb2 = {{-9999999, -4}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn9==" [关闭]")then
gg.setRanges(16384)
Name="关闭攻击瞬击"
local dataType = 16
local tb1 = {{57.29578399658, 0}, }
local tb2 = {{9999999, -4}, }
SearchWrite(tb1, tb2, dataType)
gn9=kqgn
end
end
function a10()
if(gn10==" [开启]")then
gn10=gbgn
gg.setRanges(16384)
Name="开启瞬间移动"
local dataType = 16
local tb1 = {{57.29578399658, 0}, }
local tb2 = {{0, 228}, }
SearchWrite(tb1, tb2, dataType)
elseif(gn10==" [关闭]")then
gg.setRanges(16384)
Name="关闭瞬间移动"
local dataType = 16
local tb1 = {{57.29578399658, 0}, }
local tb2 = {{10000, 228}, }
SearchWrite(tb1, tb2, dataType)
gn10=kqgn
end
end
function Exit()
os.exit()
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