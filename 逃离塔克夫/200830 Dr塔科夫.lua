gg.clearResults()
gg.toast("作者Dr")
gg.sleep(600)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "已就绪") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "已就绪") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "已就绪") else gg.toast(qmnb[2]["name"] .. "已就绪") end end end end
function Main()
  SN = gg.multiChoice({
  "透视",
  "飞天（疾跑状态开启）",
  "恢复",
  "穿墙",
  "恢复",
  "范围",
  "除草",
  "午后",
"退出脚本"
 }, nil, "间隔调0，开快速冻结\n飞天用于跑路\nXs写法鸡儿快")
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
   os.exit()
  end    
end
  XGCK = -1
end

function a()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "透视"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 28, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = -8, ["offset"] = 116, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.sleep(400)
gg.clearList()
gg.toast("第二波")
gg.sleep(1000)
qmnb = {
{["memory"] = 4},
{["name"] = "透视"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 28, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 20, ["offset"] = 116 , ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.sleep(400)
gg.clearList()
gg.clearResults()
end


function b()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "跑毒飞天"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 28, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 24, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end


function c()
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "恢复1"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 28, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 9.5, ["offset"] = 24, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.sleep(1200)
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "恢复2"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 28, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 5, ["offset"] = 24, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.sleep(1200)
gg.clearList()
qmnb = {
{["memory"] = 4},
{["name"] = "恢复3"},
{["value"] = 0.7071068286895752, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.6216099858283997, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 28, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 40, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 24, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
gg.sleep(600)
gg.clearList()
gg.clearResults()
end



function d()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},
{["value"] = 0.8888888955116272, ["type"] = 16},
{["lv"] = 1.149999976158142, ["offset"] = 36, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 40, ["type"] = 16},
{["lv"] = 0.25, ["offset"] = 44, ["type"] = 16},
{["lv"] = 0.8999999761581421, ["offset"] = 48, ["type"] = 16},
}
qmxg = {
{["value"] = -0.005, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end


function e()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},
{["value"] = 0.8888888955116272, ["type"] = 16},
{["lv"] = 1.149999976158142, ["offset"] = 36, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 40, ["type"] = 16},
{["lv"] = 0.25, ["offset"] = 44, ["type"] = 16},
{["lv"] = 0.8999999761581421, ["offset"] = 48, ["type"] = 16},
}
qmxg = {
{["value"] = 0.4, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end



function f()
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-0.15000000596046448;0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(999)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("范围")
gg.clearResults()
end


function g()
qmnb = {
{["memory"] = 4},
{["name"] = "除草"},
{["value"] = 5126, ["type"] = 4},
{["lv"] = 28, ["offset"] = 20, ["type"] = 4},
{["lv"] = 5126, ["offset"] = 96, ["type"] = 4},
{["lv"] = 28, ["offset"] = 116, ["type"] = 4},
{["lv"] = 5126, ["offset"] = 128, ["type"] = 4},
{["lv"] = 80, ["offset"] = 148, ["type"] = 4},
{["lv"] = 10, ["offset"] = 156, ["type"] = 4},
{["lv"] = 5126, ["offset"] = 160, ["type"] = 4},
{["lv"] = 80, ["offset"] = 180, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 156, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end	 


function h()
qmnb = {
{["memory"] = 4},
{["name"] = "无后"},
{["value"] = 2.5625, ["type"] = 16},
{["lv"] = 5.605193857299268E-45, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 20, ["type"] = 64},
}
xqmnb(qmnb)
gg.clearResults()
end

A = gg.alert("🐧群", "👊收到👊")
if A == 1 then
else
gg.toast("调皮")
os.exit()
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