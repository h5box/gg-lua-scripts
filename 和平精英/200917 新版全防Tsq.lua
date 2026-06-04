
---------功能首页(这里可以写你的主功能代码)-------
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function yiyz_Main()
menu = gg.multiChoice({
"大厅防1",
"大厅防2",
"大厅防3",
"无后防抖聚点(大厅开启)",
"真伤范围(大厅开启)",
"全屏自瞄(大厅开启)",
"一秒落地(大厅开启)",
"全枪瞬击(大厅开启)",
"加速开启",
"加速关闭",
"加速伤害(持枪开启)",
"鸡腿防封(腾讯页面返回桌面开启,修改器隐藏23)",
"退出脚本",
}, nil, "修改器隐藏234，大厅断网开防封(避免搜索封号),可能一把一个号,建议的别玩\n零售控价天卡8,举报低价送周卡")
if menu == nil then else 
if menu[1] == true then A1() end 
if menu[2] == true then A2() end 
if menu[3] == true then A3() end 
if menu[4] == true then A4() end 
if menu[5] == true then A5() end 
if menu[6] == true then A6() end 
if menu[7] == true then A7() end 
if menu[8] == true then A8() end
if menu[9] == true then A9() end 
if menu[10] == true then A10() end 
if menu[11] == true then A11() end 
if menu[12] == true then A12() end 
if menu[13] == true then os.exit() end 
end XGCK = -1 end




function A1()
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "  "},
{["value"] = 66562, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 33554432, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 197377, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "      "},
{["value"] = 1432512876, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 1932407877, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -24, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = -24, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
end

function A2()
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "大厅防封"},
{["value"] = 16384, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -12, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -16, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -20, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 0, ["offset"] = -92, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = -88, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = -84, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 16, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 0, ["offset"] = 24, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "大厅防"},
{["value"] = 196864, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16842753, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 252, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 256, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 260, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 264, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 268, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = 272, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 5120, ["offset"] = 352, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 700400, ["offset"] = 252, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 70016, ["offset"] = 256, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 70016, ["offset"] = 260, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 70016, ["offset"] = 264, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 70016, ["offset"] = 268, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 70016, ["offset"] = 272, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16384;16384;16384;16384;16384::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
end


function A3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2;16384;16384;16384::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(9999)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end


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
gg.toast("1️")



gg.clearResults()
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
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_BYTE)

gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("443", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)

gg.toast("超级防封开启成功")
end

function A4()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("无后聚点防抖开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-6.1526231e27;-1.0070975e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-5", gg.TYPE_FLOAT)
end
function A5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("180", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("70", gg.TYPE_FLOAT)
gg.toast("真伤大范围开启成功")
end
function A6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("-1.0e10", gg.TYPE_FLOAT)
gg.toast("全屏自瞄开启成功")
end
function A7()
qmnb = {
{["memory"] = 32},
{["name"] = "一秒落地"},
{["value"] = 3000.0, ["type"] = 16},
{["lv"] = 5000.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1024.0, ["offset"] = 8, ["type"] = 16},}
qmxg = {
{["value"] = 999999.0, ["offset"] = 0, ["type"] = 16},
{["value"] = 999999.0, ["offset"] = 4, ["type"] = 16},
{["value"] = 999999.0, ["offset"] = 8, ["type"] = 16},}
xqmnb(qmnb)
end
function A8()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("CFDA7DEEr;5002DDE5r;010010E3r;7D00001Ar;FE05A0E3r;FF1D0FE3r;100184E5r::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("CFDA7DEEr", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
end
function A9()
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

function A10()
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
function A11()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.toast("加速伤害开启")
end



function A12()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("131072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.searchNumber("131074", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.searchNumber("131076", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.searchNumber("262144", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.editAll("262145", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.searchNumber("262146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.searchNumber("262147", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.searchNumber("262148", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)



gg.clearResults()
gg.searchNumber("196611", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.searchNumber("196613", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.searchNumber("327680", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.searchNumber("327684", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)

gg.toast("防追开启成功")
end





while true do 
  if gg.isVisible(true) then XGCK = 1 gg.setVisible(false) end 
  gg.clearResults() 
  if XGCK == 1 then yiyz_Main() end 
end