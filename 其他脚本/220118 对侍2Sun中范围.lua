gg.clearList()
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "已就绪") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "已就绪") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "已就绪") else gg.toast(qmnb[2]["name"] .. "已就绪") end end end end
state={} state.z="[开启]" state.a="[开启]" state.b="[开启]" state.c="[开启]" state.d="[开启]" state.e="[开启]" state.f="[开启]" state.g="[开启]"

function Main()  
SN =gg.multiChoice({ 
 "范围"..state.z,  
 "退出脚本" }, nil, "byebye") 
  if SN == nil then
  ZZ()
  else
  if SN[1] == true then
    z()
  end

  if SN[2] == true then
   Ex()
  end            
end
  XGCK = -1
end
function ZZ()
gg.toast("nq")
end
function Ex()
gg.clearList()
os.exit()
end


function z()
  if state.z=="[开启]" then
qmnb = {
{["memory"] = 16384},
{["name"] = "范围"},
{["value"] = 3.6335669179942507E-42, ["type"] = 16},
{["lv"] = 50.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.019999999552965164, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.800000011920929, ["offset"] = 16, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1000000.0, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0.17, ["offset"] = 4, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
  state.z="[关闭]"
  elseif state.z=="[关闭]" then
qmnb = {
{["memory"] = 16384},
{["name"] = "范围"},
{["value"] = 3.6335669179942507E-42, ["type"] = 16},
{["lv"] = 50.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.019999999552965164, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.800000011920929, ["offset"] = 16, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1000000.0, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0.00001, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
  state.z="[开启]"
  end
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
