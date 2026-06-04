--GG仿XS写法
--1.0
--暂时不支持冻结，副特征码数量理论不限制
----kad制
-----禁止二改
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
SN = gg.multiChoice({
'穿墙遁地----[蹲下开启]',
'关闭穿墙遁地卡墙-[xs]',
"💖💖解甲归田💖💖",
}, nil, "kad制💖(̿▀̿凡 ̿Ĺ̯̿̿间▀̿ ̿)💖表白我媳妇💋")
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then Exit() end
end XGCK = -1 end




function a1()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},   
{["value"] = 0.25, ["type"] = 16},
{["lv"] = 0.10000000149, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.40000000596, ["offset"] = -12, ["type"] = 16},
{["lv"] = 0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0, ["offset"] = -32, ["type"] = 16},
{["lv"] = 0, ["offset"] = -52, ["type"] = 16},
}
qmxg = {
{["value"] = -0.00456700008, ["offset"] =-12 , ["type"] = 16}, 
{["value"] = -99, ["offset"] =-4 , ["type"] = 16}, 
}
xqmnb(qmnb)
end

function a2()
qmnb = {
{["memory"] = 4},
{["name"] = "关闭穿墙"},   
{["value"] = 0.25, ["type"] = 16},
{["lv"] = -99, ["offset"] = -4, ["type"] = 16},
{["lv"] = -0.00456700008, ["offset"] = -12, ["type"] = 16},
{["lv"] = 0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0, ["offset"] = -32, ["type"] = 16},
{["lv"] = 0, ["offset"] = -52, ["type"] = 16},
}
qmxg = {{["value"] = 0.40000000596, ["offset"] =-12 , ["type"] = 16},
{["value"] = 0.10000000149, ["offset"] =-4 , ["type"] = 16},
{["value"] = 10, ["offset"] =-8 , ["type"] = 16},
 }
xqmnb(qmnb)
end


function Exit()
os.exit()
end
print("🔥kad🔥🔰>>>>禁止随地大小便<<<<")
print("🔥kad🔥")
print("🔥kad🔥加扣拿脚本")
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  cs = '🔥kad🔥'
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end










