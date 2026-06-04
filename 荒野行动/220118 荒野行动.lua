function split0(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc0(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] table.insert(ad,{address = xgpy}) mskyz=readValue(xgpy,xglx) xgsl = xgsl + 1 end end function xqmnb0(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split0(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc0(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "捕获成功,共" .. xgsl .. "条数据") mskxgz=qmxg[1]["value"] msklx=qmxg[1]["type"] else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function split1(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc1(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] table.insert(af,{address = xgpy, flags = xglx, value = xgsz}) tmyz=readValue(xgpy,xglx) xgsl = xgsl + 1 end end function xqmnb1(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split1(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc1(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "捕获成功,共" .. xgsl .. "条数据") tmxgz=qmxg[1]["value"] tmlx=qmxg[1]["type"] else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function readValue(addr,type) local t = {}  t[1] = {}  t[1].address = addr t[1].flags = type t = gg.getValues(t) return tostring(t[1].value) end
wxg="        ❌"
yxg="        ⭕️"
First="                  首选"  --可以自定义.此为最优先数据显示的图标
Second="                  次选"--此为第二优先数据显示的图标
Third="                  Maybe"  --此为第三优先数据显示的图标


gg.alert("Guest倾创作")
function Main()
Le = gg.choice({
     "无后座力",
	 "子弹全穿",
	 "退出脚本",
},nil,os.date"修仙时间: %Y/%m/%d  %H:%M:%S")

if Le==1 then a1() end
if Le==2 then a() end
if Le==3 then os.exit() end
 XGCK = -1
end

function a1()
qmnb = {
{["memory"] = 4},
{["name"] = "无后座力"},
{["value"] = 4.18359375, ["type"] = 16},
{["lv"] = 1.9749999046325684, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.6999999284744263, ["offset"] = 32, ["type"] = 16},
{["lv"] = 3.640625, ["offset"] = 48, ["type"] = 16},
{["lv"] = 2.3125, ["offset"] = 64, ["type"] = 16},
}
qmxg={
{["value"] = -10, ["offset"] = 0, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)gg.clearResults()
end

function a()
qmnb = {
{["memory"] = 16},
{["name"] = "子弹穿墙"},
{["value"] = 16777217, ["type"] = 4},
{["lv"] = 16777472, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16777217, ["offset"] = 4, ["type"] = 4},
}
qmxg={
{["value"] = 0, ["offset"] = 0, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)gg.clearResults()
end

while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  if XGCK == 1 then
    Main()
  end
 end