function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end

-----------------------------------------------------------------------------------------

function Main()
  SN = gg.multiChoice({
  "855透视",
  "关",
  "上色",
  "关",
  "退出脚本"
 }, nil, "寻寻觅觅，冷冷清清，凄凄惨惨戚戚\n###")
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
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   Exit()
  end
end
  XGCK = -1
end


function a()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 2.25, ["type"] = 16},
{["lv"] = 1.5669572e-39, ["offset"] = -68, ["type"] = 16},
{["lv"] = 1.5669628e-39, ["offset"] = -36, ["type"] = 16},
{["lv"] = 2, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 60, ["offset"] = 36, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "虚化"},
{["value"] = 1.3086689e-19, ["type"] = 16},
{["lv"] = 5.2390206e21, ["offset"] = 20, ["type"] = 16},
{["lv"] = 6.0332159e-27, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.69314718246, ["offset"] = 112, ["type"] = 16},
{["lv"] = 2, ["offset"] = 164, ["type"] = 16},
}
qmxg = {
{["value"] = 60, ["offset"] = 164, ["type"] = 16},

}
xqmnb(qmnb)
end




function b()
  qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 2.25, ["type"] = 16},
{["lv"] = 1.5669572e-39, ["offset"] = -68, ["type"] = 16},
{["lv"] = 1.5669628e-39, ["offset"] = -36, ["type"] = 16},
{["lv"] = 60, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 36, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "虚化"},
{["value"] = 1.3086689e-19, ["type"] = 16},
{["lv"] = 5.2390206e21, ["offset"] = 20, ["type"] = 16},
{["lv"] = 6.0332159e-27, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.69314718246, ["offset"] = 112, ["type"] = 16},
{["lv"] = 60, ["offset"] = 164, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 164, ["type"] = 16},

}
xqmnb(qmnb)
end


function c()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 3.5, ["type"] = 16},
{["lv"] = 1.1490647e-41, ["offset"] = -108, ["type"] = 16},
{["lv"] = 3.50146484375, ["offset"] = -96, ["type"] = 16},
{["lv"] = 3.50000715256, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 4.20389539e-45, ["offset"] = -108, ["type"] = 16},

}
xqmnb(qmnb)
end


function d()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色关"},
{["value"] = 3.5, ["type"] = 16},
{["lv"] = 4.20389539e-45, ["offset"] = -108, ["type"] = 16},
{["lv"] = 3.50146484375, ["offset"] = -96, ["type"] = 16},
{["lv"] = 3.50000715256, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.1490647e-41, ["offset"] = -108, ["type"] = 16},

}
xqmnb(qmnb)
end


function Exit()
print("###")
os.exit()
end
cs = "###"



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









