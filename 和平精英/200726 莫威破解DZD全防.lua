function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启成功")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启成功")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启成功") end end end end
function ZBY(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.alert(qmnbn.."开启失败")end end end 


--莫威破解全源DZD，做人别嚣张
--交流群：110


function Main()
menu = gg.multiChoice({
"①大厅防封①",
"②出生岛防②",
"③透色菜单③",
"④备用防封④",
"⑤BT全功能⑤",
"♝决赛圈剩一人开启♝",
"♛结算开启过人头♛",
}, nil, "莫威破解全源DZD，交流群：110")
if menu == nil then else 
if menu[1] == true then A1() end 
if menu[2] == true then A2() end 
if menu[3] == true then A5() end 
if menu[4] == true then KK() end 
if menu[5] == true then DPG() end 
if menu[6] == true then wsrt() end 
if menu[7] == true then grt() end 
end XGCK = -1 end


function A1()
local time=os.clock()
gg.setRanges(4)
local dataType = 4
local tb1 = {{16384, 0}, {16384, 4}, {16384, 8}, {16384, 12}, {16384, 16}, {16384, 20}, {5120,100}}
local tb2 = {{700400, 0,true},{65538, 20,true}, {70016, 4,true}, {70016, 8,true}, {70016, 12,true}, {70016, 16,true},{70003,508,true}}
SearchWrite(tb1, tb2, dataType)

qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "a"},
{["value"] = 66562, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 33554432, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 197377, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "b"},
{["value"] = 262403, ["type"] = 4},
{["lv"] = 131330, ["offset"] = 64, ["type"] = 4},
{["lv"] = 262403, ["offset"] = 256, ["type"] = 4},
{["lv"] = 131330, ["offset"] = 320, ["type"] = 4},
{["lv"] = 262403, ["offset"] = 480, ["type"] = 4},
{["lv"] = 131330, ["offset"] = 544, ["type"] = 4},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 64, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 256, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 320, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 480, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 544, ["type"] = 4,["freeze"]=true},}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "c"},
{["value"] = 16384, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 4, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 8, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 12, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 16, ["type"] = 4},
{["lv"] = 4102, ["offset"] = 200, ["type"] = 4},
{["lv"] = 16000, ["offset"] = 204, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 4, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 8, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 12, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 16, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 200, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 204, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 208, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 184, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 152, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 156, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 24, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 32, ["type"] = 4,["freeze"]=true},
{["value"] = -1, ["offset"] = 132, ["type"] = 4,["freeze"]=true},}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1~3;16384;16384;16384::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1432512876;1932407877;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.searchNumber("20480;10240;67,043,328:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("133,378;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133,378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0;-1;16384;0;36::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1042;10240;1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("135,170;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("135170", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.searchNumber("2131;67109377~67109633;8000~300000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8000~300000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("144,387;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65536;16384;262144", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
for i, v in ipairs(t) do if 
v.flags == gg.TYPE_DWORD then v.value = "0" 
v.freeze = true
end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("786,450;786,450;786,450;786,450;786,450;786,450;786,450;786,450;5,676:153:", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("786450", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16384}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("28000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("20800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.searchNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_BYTE)

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启完毕！耗时"..os.clock()-time.."s")
end

function A2()
local time=os.clock()
gg.setRanges(16384)
local dataType = 4
local tb1 = {{1179403647,0x0},{65793,0x4},{2621443,0x10},{541856,0x20},{83886592,0x24},{2097204,0x28},}
local tb2 = {{-1,0x4,true},}
SearchWrite(tb1, tb2, dataType)
local dataType = 4
local tb1 = {{32,0x0},{131072,0x4},{131074,0x8},{65538,0xC},{65538,0x10},{131074,0x14},{65538,0x18},{65538,0x30},{65538,0x34},{131072,0xB0},}
local tb2 = {{0,0xC,true},{0,0x10,true},{0,0x18,true},{0,0x30,true},{0,0x34,true},}
SearchWrite(tb1, tb2, dataType)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "1"},
{["value"] = 262148, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65540, ["offset"] = -60, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = -60, ["type"] =  gg.TYPE_DWORD},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "2"},
{["value"] = 131074, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 327685, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 327685, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 327685, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "3"},
{["value"] = 327681, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 2883598, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4128842, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2;55;32;131,072;131,074;65,538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10240;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "5"},
{["value"] = 65538, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65538, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "6"},
{["value"] = 131073, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 131073, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 131074, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 16, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "7"},
{["value"] = 65540, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
local time=os.clock()
gg.setRanges(4)
local dataType = 4
local tb1 = {{700400, 0}, {70016, 4}, {70016, 8}, {70016, 12}, {70016, 16}, {65538, 20}, {5120,100}}
local tb2 = {{16384,508,true}}
SearchWrite(tb1, tb2, dataType)

gg.toast("出生岛防封开启完毕！耗时"..os.clock()-time.."s")
end



function KK()
byf = gg.multiChoice({
"腾讯防封",
"大厅防封",
"落地防封",
"返回主页",
}, nil, "莫威破解全源DZD，做人别嚣张")
if byf == nil then else 
if byf[1] == true then by1() end 
if byf[2] == true then by2() end 
if byf[3] == true then by3() end 
if byf[4] == true then Main() end
end XGCK = -1 end




function by1()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("262148", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("262148", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "2"},
{["value"] = 65538, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65538, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "2"},
{["value"] = 131073, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 131073, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 131074, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 65537, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 16, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)

gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("131074", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("131074", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("16384;134144;65536;65792;524288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65536;65792", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65536;65537;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("65536;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16384}})
end
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65536;16384;262144", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>1000 then sl=1000 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
end

function by2()
gg.setRanges(4)
gg.searchNumber("1~3;16384;16384;16384::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "65536"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1432512876;1932407877;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("65536;65537;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65536;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16384"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2;16384;16384;16384::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16384;16384;16384;16384;16384::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "70012"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,638,400;65,536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
for i, v in ipairs(t) do if 
v.flags == gg.TYPE_DWORD then v.value = "0" 
v.freeze = true
     end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,638,40;65,536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
for i, v in ipairs(t) do if 
v.flags == gg.TYPE_DWORD then v.value = "0" 
v.freeze = true
end
end
gg.addListItems(t)
t = nil

qmnb = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 262144, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 168, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 372, ["type"] = 4},
{["lv"] = 131074, ["offset"] = 480, ["type"] = 4},}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4,["freeze"]=true},
{["value"] = 0, ["offset"] = 168, ["type"] = 4,["freeze"]=true},
{["value"] = 0, ["offset"] = 372, ["type"] = 4,["freeze"]=true},
{["value"] = 0, ["offset"] = 480, ["type"] = 4,["freeze"]=true},},
xqmnb(qmnb)

gg.clearResults()
gg.searchNumber("16384;1;9;9;2::24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("262144～270000;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("262144;1536::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("262144;1536::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end

gg.clearResults()
gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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


gg.clearResults()
gg.searchNumber("262148;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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


gg.clearResults()
gg.searchNumber("16384;845,296,129;7;7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.searchNumber("67109633;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.searchNumber("0;0;0;0;-1;16384;0;0;0;0:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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


gg.clearResults()
gg.searchNumber("2131;67109377~67109633;8000~300000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8000~300000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("20480;10240;67,043,328:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2131;10240:1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1042;10240:1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("65538;70012;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "70012"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil




gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("35,653,649D;10,240D;2D;262,144D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("35,653,649D;10,240D;2D;262,144D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10,240;10,240;10,240;67,043,328;10,240;10,240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_BYTE)

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("国服防封部署成功")
end

function by3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("65538;70012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16384"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end
----功能----

function DPG()
SN = gg.multiChoice({
"大厅除草",
"一秒落地",
"人物透色",
"落地防闪",
"无后防抖",
"全屏自瞄",
"大厅范围",
"人物天线",
"上帝视角",
"人物加速",
"加速关闭",
"全枪伤害",
"车辆加速",
"人物高跳",
"全枪瞬击",
}, nil,"莫威破解全源DZD，交流群：1092146304")
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end
if SN[4] == true then a4() end
if SN[5] == true then a5() end
if SN[6] == true then a6() end
if SN[7] == true then a7() end
if SN[8] == true then a8() end
if SN[9] == true then a9() end
if SN[10] == true then a10() end
if SN[11] == true then a11() end
if SN[12] == true then a12() end
if SN[13] == true then a13() end
if SN[14] == true then a14() end
if SN[15] == true then a15() end
end
XGCK = -1 
end

--------透视--------
function a1()

  
  gg.clearResults()

  gg.setRanges(gg.REGION_VIDEO)

  gg.clearResults()

  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)

  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)

  gg.getResults(100)

  gg.editAll("-90", gg.TYPE_FLOAT)

  gg.clearResults()

  h5sj="1"

  gg.toast("黑夜模式已开启")
  
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.000005;0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0.45", gg.TYPE_FLOAT)
gg.toast("大厅除草开启成功")
end
  
  
  


function a2()
gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1024", 16)
    resultCounts = gg.getResultsCount()
    results = gg.getResults(resultCounts)
    for _FORV_3_ = 1, resultCounts do
      values = {}
      values[1] = {}
      values[1].address = results[_FORV_3_].address - 4
      values[1].flags = 16
      values = gg.getValues(values)
      if values[1].value == 5000 then
              values = {}
        values[1] = {}
        values[1].address = results[_FORV_3_].address - 8
        values[1].flags = 16
        values = gg.getValues(values)
        if values[1].value == 3000 then
          values = {}
          values[1] = {}
          values[1].address = results[_FORV_3_].address - 12
          values[1].flags = 16
          values = gg.getValues(values)
          if values[1].value == 0.5 then
            setvalues = {}
            setvalues[1] = {}
            setvalues[1].address = results[_FORV_3_].address
            setvalues[1].flags = 16
            setvalues[1].value = 999999
                        setvalues[2] = {}
            setvalues[2].address = results[_FORV_3_].address - 4
            setvalues[2].flags = 16
            setvalues[2].value = 999999
            setvalues[3] = {}
            setvalues[3].address = results[_FORV_3_].address - 8
            setvalues[3].flags = 16
            setvalues[3].value = 999999
            setvalues[4] = {}
            setvalues[4].address = results[_FORV_3_].address - 12
            setvalues[4].flags = 16
            setvalues[4].value = 999999
            gg.setValues(setvalues)
            gg.toast("跳伞秒落开启")
          end
        end
      end
    end
  end

--------防闪--------
function a3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 5.7922799e21, ["type"] = 16},
{["lv"] = 5.8013756e-42, ["offset"] = 4, ["type"] = 16},
{["lv"] = 4.7408149e21, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "修复马赛克"},
{["value"] = 5.6631623e21, ["type"] = 16},
{["lv"] = 6.1243404e21, ["offset"] = 8, ["type"] = 16},
{["lv"] = 6.1427877e21, ["offset"] = 16, ["type"] = 16},
{["lv"] = 5.6631729e21, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 28, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "红色"},
{["value"] = 2.0074678e22, ["type"] = 16},
{["lv"] = 7.8984722e-29, ["offset"] = 12, ["type"] = 16},
{["lv"] = 1.793662e-42, ["offset"] = 24, ["type"] = 16},
{["lv"] = 6.4292188e-29, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1.9263028e22, ["offset"] = 56, ["type"] = 16},
{["lv"] = 4.8344904e21, ["offset"] = 72, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = 72, ["type"] = 16},
}
xqmnb(qmnb)
end



--------无后--------
function a4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.854625e-42;2.0:505", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("9.76256614e-41;2.0:201", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


--------防抖--------
function a5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后已部署")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("半防抖已部署")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖已部署")

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点已部署")
end




--------除草黑色--------
function a6()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("强力自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")
end


-------




--------范围--------
function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "范围部署➤%50"},
{["value"] = 9.201618194580078, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 28, ["type"] = 16},
{["lv"] = 28.0, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 180, ["offset"] = 24, ["type"] = 16},
{["value"] = 180, ["offset"] = 28, ["type"] = 16},
{["value"] = 180, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围部署➤%100"},
{["value"] = 35, ["type"] = 16},
{["lv"] = 33, ["offset"] = 4, ["type"] = 16},
{["lv"] = 62, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 145, ["offset"] = 0, ["type"] = 16},
{["value"] = 145, ["offset"] = 4, ["type"] = 16},
{["value"] = 145, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end


function a8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)  
end



--------关闭--------
function a9()
gg.clearResults()    
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("350", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启")

  end




function a10()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("加速不拉回开启")
end




function a11()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("加速不拉回已关闭")
end



function a12()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("M4伤害已部署")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("AKM伤害已部署")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("SCAR伤害已部署")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("35000", gg.TYPE_FLOAT)
gg.toast("M16伤害已部署")
    end
function a13()
ZBY({{32},{"全车加速部署➤%50"},{0.72727274895, 16},{0.34377467632, 4, 16},{0.25, -0xe8, 16}},{{99, 0, 16},{99, 4, 16},{99, -0xe8, 16}})
ZBY({{32},{"全车加速部署➤%100"},{1059431846, 4},{0.30000001192, 0x4, 16},{0.94117647409, 0x8, 16},{1, 0x10, 16},{0.76000005007, 0x14, 16},{0.96078431606, 0x18, 16},{1, 0x1c, 16},{0.74509805441, 0x20, 16}},{{90, 0, 16},{90, 0x4, 16}})
end



function a14()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "高挑部署➤%100"},
{["value"] = 443, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 45, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 2000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 4, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function a15()
gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("全枪瞬击已部署")
end



function a16()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =-999999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
 
 
function A5()
DTL2 = gg.multiChoice({
'八五五--[C-HD]',
'八四五--[C-LC]',
'八三五--[C-LC]',
'八六五--[C-LC]',
'防透闪--[C-QJ]',
'主界面--[C-FH]'},
nil,'莫威破解全源DZD，交流群：1092146304') 
if DTL2 == nil then else      
if DTL2[1]==true then c1() end
if DTL2[2]==true then c2() end
if DTL2[3]==true then c3() end
if DTL2[4]==true then c4() end
if DTL2[5]==true then c5() end
if DTL2[6]==true then Main() end
end
GLWW=-1
end 



function c1()
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%10"},
{["value"] = 1671659523, ["type"] = 4},
{["lv"] = -2147352564, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%15"},
{["value"] = 1670152221, ["type"] = 4},
{["lv"] = -2145513268, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%20"},
{["value"] = 2949135, ["type"] = 4},
{["lv"] = 1073741825, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%25"},
{["value"] = 2490385, ["type"] = 4},
{["lv"] = 1081081873, ["offset"] = 4, ["type"] = 4},
{["lv"] = 4143, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1669693440, ["offset"] = 12, ["type"] = 4},
{["lv"] = 69672, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1669660673, ["offset"] = 20, ["type"] = 4},
{["lv"] = -2147483636, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 24, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%30"},
{["value"] = 1671790629, ["type"] = 4},
{["lv"] = 458757, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1670938662, ["offset"] = 8, ["type"] = 4},
{["lv"] = -2145644340, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 12, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%35"},
{["value"] = 2555921, ["type"] = 4},
{["lv"] = 1081098257, ["offset"] = -20, ["type"] = 4},
{["lv"] = 2162688, ["offset"] = -16, ["type"] = 4},
{["lv"] = 1081100288, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1048578, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1073741825, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = -20, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%40"},
{["value"] = 1661550624, ["type"] = 4},
{["lv"] = 1074806840, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1245197, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = -8, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%50"},
{["value"] = 284033031, ["type"] = 4},
{["lv"] = 1074806835, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%55"},
{["value"] = 276037660, ["type"] = 4},
{["lv"] = 1804599296, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1670381569, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},
{["value"] = -1, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%60"},
{["value"] = 536889604, ["type"] = 4},
{["lv"] = 671105024, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = -8, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%70"},
{["value"] = 271384581, ["type"] = 4},
{["lv"] = 1081083909, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%75"},
{["value"] = 2195478, ["type"] = 4},
{["lv"] = 1081081878, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2298152, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1669333025, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2363688, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1669365795, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%85"},
{["value"] = 287309830, ["type"] = 4},
{["lv"] = 1081608448, ["offset"] = 4, ["type"] = 4},
{["lv"] = 287440905, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%90"},
{["value"] = 3735564, ["type"] = 4},
{["lv"] = 1080033296, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%100"},
{["value"] = 4329537, ["type"] = 4},
{["lv"] = 1080033308, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
end


function c2()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1.8368781e-40;2.25048828125",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("八四五--[LC]➤%40")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.2652927e-40;-2.7610905e-39:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("八四五--[LC]➤%70")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('-1.46937635e-39;3.67346189e-40;2.0:97',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast('八四五--[LC]➤%100')
end


function c3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "八三五--[LC]➤%40"},
{["value"] = -2147086191, ["type"] = 4},
{["lv"] = 1671233540, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4140, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1669365763, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八三五--[LC]➤%70"},
{["value"] = -2145513280, ["type"] = 4},
{["lv"] = 1670152221, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八三五--[LC]➤%100"},
{["value"] = 1092616199, ["type"] = 4},
{["lv"] = 128, ["offset"] = 428, ["type"] = 4},
}
qmxg = {
{["value"] = 35, ["offset"] = 428, ["type"] = 4},

}
xqmnb(qmnb)
end


function c5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-8.3241613e-40", gg.TYPE_FLOAT)
gg.searchNumber("-8.3241613e-40", gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll("8.3241613e-40", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-6.488152e-40", gg.TYPE_FLOAT)
gg.searchNumber("-6.488152e-40", gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll("6.488152e-40", gg.TYPE_FLOAT)
gg.toast("防透闪部署➤%100")
end

function c4()
gg.setRanges(1048576)
Name="八六五--[LC]➤%20"
local dataType = 16
local tb1 = {{2.37500786781, 0}, }
local tb2 = {{200, 1140}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
Name="八六五--[LC]➤%40"
local dataType = 16
local tb1 = {{2.25061058998, 0}, }
local tb2 = {{200, 116}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
Name="八六五--[LC]➤%60"
local dataType = 4
local tb1 = {{8200, 0}, {208, 8}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
Name="八六五--[LC]➤%80"
local dataType = 16
local tb1 = {{-7.4058063e-40, 0}, }
local tb2 = {{999999999, -4}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
Name="八六五--[LC]➤%100"
local dataType = 16
local tb1 = {{-6.488152e-40, 0}, }
local tb2 = {{99999999, -4}, }
SearchWrite(tb1, tb2, dataType)
end


function wsrt()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,954,047,316;1,970,037,078;1,633,906,508;7,562,578:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1633906508", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("无视人头执行完毕")
end

function grt()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("结算过人头开启完毕")
  end



while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false)end gg.clearResults() if XGCK == 1 then Main()end end

