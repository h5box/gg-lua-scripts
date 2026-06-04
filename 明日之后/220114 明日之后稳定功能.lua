
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
SN = gg.multiChoice({
"退出脚本",
"自瞄",
"追踪",
}, nil, "")
if SN == nil then else
if SN[3] == true then zz() end
if SN[2] == true then zm() end
if SN[1] == true then Exit() end
end XGCK = -1 end
function zz()
qmnb = {
{["memory"] = 16384},
{["name"] = "子弹追踪"},
{["value"] = 1.13962626457, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -8.2433888e19, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
       --修改
{["value"] = 0.0012345, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end






function zmsd()
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "自瞄速度"},
{["value"] = 2.0353803e33, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.98828125, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
       --修改
{["value"] = -999999999, ["offset"] = -92, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end


function zm()
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "自瞄范围"},
{["value"] = 2.0353803e33, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 3.98828125, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
       --修改
{["value"] = 45, ["offset"] = -60, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
zmsd()
end









function Exit()
print("")
os.exit()
end
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








