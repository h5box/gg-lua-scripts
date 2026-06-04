function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
  SN = gg.multiChoice({
  "上色",
  "透视",
  "透视",
  "退出脚本"
 }, nil, "没有QQ")
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
   Exit()
  end
end
  XGCK = -1
end
function SearchWrite(Search, Write, Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1], Type)
local count = gg.getResultCount()
local result = gg.getResults(count)
gg.clearResults()
local data = {}
local base = Search[1][2]
if (count > 0) then
for i, v in ipairs(result) do
v.isUseful = true
end
for k=2, #Search do
local tmp = {}
local offset = Search[k][2] - base
local num = Search[k][1]
for i, v in ipairs(result) do
tmp[#tmp+1] = {}
tmp[#tmp].address = v.address + offset
tmp[#tmp].flags = v.flags
end
tmp = gg.getValues(tmp)
for i, v in ipairs(tmp) do
if ( tostring(v.value) ~= tostring(num) ) then
result[i].isUseful = false
end
end
end
for i, v in ipairs(result) do
if (v.isUseful) then
data[#data+1] = v.address
end
end
if (#data > 0) then
gg.toast("搜索到"..#data.."条数据")
local t = {}
local base = Search[1][2]
for i=1, #data do
for k, w in ipairs(Write) do
offset = w[2] - base
t[#t+1] = {}
t[#t].address = data[i] + offset
t[#t].flags = Type
t[#t].value = w[1]
if (w[3] == true) then
local item = {}
item[#item+1] = t[#t]
item[#item].freeze = true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.toast("已修改"..#t.."条数据")
gg.addListItems(t)
else
gg.toast("not found", false)
return false
end
else
gg.toast("Not Found")
return false
end
end



function a()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "上色"},
{["value"] = 983065, ["type"] = 4},
{["lv"] = 1511557, ["offset"] = 16, ["type"] = 4},
{["lv"] = 8200, ["offset"] = 24, ["type"] = 4},
{["lv"] = 331908, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function b()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "透视"},
{["value"] = 7.020872287969835E-29, ["type"] = 16},
{["lv"] = 5.18354915846122E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 16, ["type"] = 16},
{["lv"] = 7.23034947072796E-15, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end



function c()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "透视"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = -127.0, ["offset"] = 16, ["type"] = 16},
{["lv"] = 0.24022650718688965, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.6931471824645996, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.009999999776482582, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"



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









