
---------功能首页(这里可以写你的主功能代码)-------

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function setvalue(a,b,c)
     gg.setValues({[1] = {address = a, flags = b, freeze = true, value =c}})

  end
function Main()
SN = gg.multiChoice({
"删除游戏检测🤖";
"杀猪子弹💀️",
"全身范围💀",
"枪械瞬击💀️",
"全屏自瞄💀️",
"全图除草💀️",
"全局除雾💀️",
"全局午后💀️",
"退出脚本"},
nil,'三侬V4\n作者：三侬\n破解需谨慎！大意失马！\n️请配合此脚本功能使用，稳定奔放✔️')
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end
if SN[4] == true then a4() end
if SN[5] == true then a5() end
if SN[6] == true then a6() end
if SN[7] == true then a7() end
if SN[8] == true then a8() end
if SN[9] == true then Exit() end end XGCK = -1 end
function a1()
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




function a2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1325C10
setvalue(so+py,4,0)
gg.toast("杀猪子弹开启成功")
end


function a3()
so=gg.getRangesList('libUE4.so')[1].start
py=0x39053D8
setvalue(so+py,16,45)
gg.toast("范围开启成功")
end


function a4()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3568EA4
setvalue(so+py,4,0)
gg.toast("瞬击开启成功")
end

function a5()
so=gg.getRangesList('libUE4.so')[1].start
py=15862756
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=15861356
setvalue(so+py,4,2046820353)
so=gg.getRangesList('libUE4.so')[1].start
py=15856068
setvalue(so+py,4,2046820353)
gg.toast("全屏自瞄开启成功")
end

function a6()
so=gg.getRangesList('libUE4.so')[1].start
py=0x228D948
setvalue(so+py,4,0)
gg.toast("除草开启成功")
end
function a7()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A43A18
setvalue(so+py,4,0)
gg.toast("除雾开启成功")
end
function a8()
so=gg.getRangesList('libUE4.so')[1].start
py=19037220
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=54973744
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=27548232
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=27281792
setvalue(so+py,4,1091043328)
gg.toast("全局午后聚点开启成功")
end



function Exit()
os.exit()
end
 
cs = "三侬打造"
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


