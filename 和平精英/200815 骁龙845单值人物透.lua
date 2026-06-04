function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, crxg) for x = 1, #(crxg) do xgpy = szpy + crxg[x]["offset"] xglx = crxg[x]["type"] xgsz = crxg[x]["value"] xgdj = crxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function gcrnb(crnb) gg.clearResults() gg.setRanges(crnb[1]["memory"]) gg.searchNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(crnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + crnb[v]["offset"] pysz[1].flags = crnb[v]["type"] szpy = gg.getValues(pysz) pdpd = crnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, crxg) end end if xgjg == true then gg.toast(crnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(crnb[2]["name"] .. "开启失败") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main()
  SN = gg.multiChoice({
  "💐骁龙845透视💐",
 }, nil, os.date("💐QQ反馈群:818772924💐"))
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
qmnb = {
{["memory"] = 1048576},
{["name"] = "赛克"},
{["value"] = 7.105429051666896E-15, ["type"] = 16},
{["lv"] = 2.250549793243408, ["offset"] = 4, ["type"] = 16},
{["lv"] = 7.105427357601002E-15, ["offset"] = 8, ["type"] = 16},
{["lv"] = 2.25048828125, ["offset"] = 12, ["type"] = 16},
{["lv"] = -1.8368780789755432E-40, ["offset"] = 120, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 120, ["type"] = 16},

}

xqmnb(qmnb)qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 1.3775394488621898E-39, ["type"] = 16},
{["lv"] = 6.142777035544349E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = -2.761090468136333E-39, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.3912525205939833E-19, ["offset"] = 68, ["type"] = 16},
{["lv"] = 9.183549615799121E-41, ["offset"] = 76, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 40, ["type"] = 16},

}

xqmnb(qmnb)qmnb = {
{["memory"] = 1048576},
{["name"] = "绿了"},
{["value"] = 3.2755771993131896E-40, ["type"] = 16},
{["lv"] = 2.3802072906857657E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2.046875238418579, ["offset"] = 8, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
end



function b()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=200000
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=200000
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=200000
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=200000
gg.setValues(setvalues)
gg.toast("开启成功了")
end
end
end
end
end

function c()
 end



function d()
gg.setRanges(1048576)
gg.searchNumber("2.25048828125;-1.83687808e-40", 16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.83687808e-40", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1)
gg.editAll("5444",16)
gg.clearResults()
gg.searchNumber("8.26529275e-40;-2.76109047e-39", 16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.76109047e-39", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1)
gg.editAll("5444", 16)
gg.toast("透视")
end



function e()

end


function f()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("00002008h;0000200Bh",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("绿色开启成功了")
end



function Exit()
print("💐QQ反馈群:818772924💐")
os.exit()
end
cs = "💐QQ反馈群:818772924💐"



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










