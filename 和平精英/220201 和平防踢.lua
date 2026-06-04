function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
SN = gg.multiChoice({"大厅第一步","落地第二部","大厅第三部","退出",}, nil, "稳定")
if SN == nil then else
if SN[1] == true then A1() end
if SN[2] == true then A2() end
if SN[3] == true then A3() end
if SN[4] == true then kk() end
end XGCK = -1 end
function A1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("251,376,870", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("134914;131330:751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "67109633"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("524288;10240;131072:891", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "67109633"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("135682;131330:751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "67109633"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("870,477;131330:50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("870477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "67109634"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134402;131330:751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "67109633"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("251,376,870", 4, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "67109633"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("135682;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "67109633"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 10240, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65536, ["offset"] = 32, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 19969, ["offset"] = 72, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 32, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 84, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 10240, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 2048, ["offset"] = 60, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 196608, ["offset"] = 72, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 10240, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 28, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 40, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 72, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 100, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 104, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 108, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 10240, ["offset"] = 112, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 78633, ["offset"] = 124, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 78633, ["offset"] = 128, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 78633, ["offset"] = 132, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 78633, ["offset"] = 136, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 78633, ["offset"] = 180, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 78633, ["offset"] = 184, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
end

function A2()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("10,530", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("17,460", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("19,792", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12,077", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast("内存防踢开启100％")
	 gg.clearResults()
end

function A3()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("196,864", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,330;134,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135,682;144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("135,682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4,096;135,682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,096", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,402;67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,402", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,658;134,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,842;133,635", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131,842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,634;135,682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133,634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,378;144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133,378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.toast("稳定全防")
end

function b()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("12290", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("12290", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
end

function kk() os.exit() end while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false) end gg.clearResults() if XGCK == 1 then Main() end end