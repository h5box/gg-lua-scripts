function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
    SN = gg.choice({
  "人物透视",
"退出脚本"
}, nil, "透视配合防透视端口")
  if SN == 1 then a() end
  
    if SN == 2 then os.exit() end XGCK = -1 end



function a()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 1.4570701e-40, ["type"] = 16},
{["lv"] = 1.4143386e-25, ["offset"] = -64, ["type"] = 16},
{["lv"] = 1.9162616e-40, ["offset"] = -32, ["type"] = 16},
{["lv"] = 2, ["offset"] = 104, ["type"] = 16},
}
qmxg = {
{["value"] = 60, ["offset"] = 104, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 0.0000331, ["type"] = 16},
{["lv"] = 2, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.6623045e-19, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.6623046e-19, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.000021, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.6623047e-19, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0000135, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.6623049e-19, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.0000058, ["offset"] = 24, ["type"] = 16},
{["lv"] = 1.662305e-19, ["offset"] = 28, ["type"] = 16},
{["lv"] = 0.0000541, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 60, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "全黑"},
{["value"] = 0.0000331, ["type"] = 16},
{["lv"] = 2, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.6623055e-19, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.6623056e-19, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.000021, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.6623058e-19, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0000135, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.6623059e-19, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.0000058, ["offset"] = 24, ["type"] = 16},
{["lv"] = 1.662306e-19, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 60, ["offset"] = -8, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8222, ["type"] = 4},
{["lv"] = 8216, ["offset"] = -48, ["type"] = 4},
{["lv"] = 8218, ["offset"] = -40, ["type"] = 4},
{["lv"] = 8220, ["offset"] = -16, ["type"] = 4},
{["lv"] = 8221, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
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