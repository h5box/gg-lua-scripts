function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main()
menu = gg.multiChoice({
"㊙️防封一步[大厅开启]",
"㊙️防封二步[大厅开启]",
"🈲腾讯页面[可以不开]",
"㊙️防封三步[落地开启]",
"🚀功能区域(配合防封)",
"退出脚本[防封]",
}, nil, "和平精英反馈群1001502783✈️✈️✈️✈️✈️✈️✈️✈️✈️✈️🔥🔥🔥🔥")
if menu == nil then else 
if menu[1] == true then A1() end 
if menu[2] == true then A2() end 
if menu[3] == true then A3() end 
if menu[4] == true then A4() end
if menu[5] == true then MM() end 

if menu[6] == true then kk() end 
end XGCK = -1 end
function A1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
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
gg.searchNumber("2;16384;16384;16384::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil) 
for i, v in ipairs(t) do if 
v.flags == gg.TYPE_DWORD then v.value = "0" 
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.toast("防封开启成功")
end
function A2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,179,403,647;2,621,443;83,886,080:65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65,793;2,621,443;2,097,204;2,621,450;1,638,426", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("12547;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("12547;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("2;16384;16384;16384::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(":1106467070", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_BYTE then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function A3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,179,403,647;2,621,443;83,886,080:65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "2"},
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
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "2"},
{["value"] = 10000, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_CODE_APP},
{["name"] = "2"},
{["value"] = 7771, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 7770, ["offset"] = 16, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4408, ["offset"] = 68, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 16, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 68, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 140, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = -1, ["offset"] = 168, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
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

function A4()
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = ""},
{["value"] = 862348033, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -4, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = -4, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "         "},
{["value"] = 1432512876, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 1932407877, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 111, ["offset"] = 8, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16384, ["offset"] = -24, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = -1, ["offset"] = -24, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "         "},
{["value"] = 196864, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16842753, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4864, ["offset"] = 352, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 4865, ["offset"] = 352, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 70012, ["offset"] = 760, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
gg.sleep(6000)
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "    "},
{["value"] = 196864, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 16842753, ["offset"] = 4, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 4865, ["offset"] = 352, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 16384, ["offset"] = 252, ["type"] =  gg.TYPE_DWORD},}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "         "},
{["value"] = 10240, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 2131, ["offset"] = 40, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 257, ["offset"] = 28, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)
end
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local t = gg.getResults(9999)
    gg.clearResults()
    if t ~= nil then
               local r = {}
               for j=2, #Search do
                          for i, v in ipairs(t) do
                              r[i] = {}
                              r[i].address = v.address + Search[j][2] - Search[1][2]
                              r[i].flags = v.flags
                          end
                          r = gg.getValues(r)
                          for i = #t, 1, -1 do
                              if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
                                         table.remove(t, i)
                                         table.remove(r, i)
                              end
                          end              
               end
               --写入数据
               local r = {}
               for i=1, #t do
                          for j=1, #Write do
                              r[#r+1] = {}
                              r[#r].address = t[i].address + Write[j][2] - Search[1][2]
                              r[#r].flags = t[i].flags
                              r[#r].value = Write[j][1]
                              r[#r].freeze = true--冻结的话修改后面加false
                          end 
               end
               gg.setValues(r)
               
              --gg.addListItems(r)
    end
end

------------配置--------

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.." 开启失败")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.." 开启成功")else gg.toast(_on.." 开启失败")end end end
--核心勿动
function SearchWrite(Search, Write, Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1], Type)
local count = gg.getResultCount()
local result = gg.getResults(count)
gg.clearResults()
local data = {} --用于保存有效结果
local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)

if (count > 0) then
for i, v in ipairs(result) do
v.isUseful = true --保存搜索到的地址信息(全部设定为true)
end

for k=2, #Search do
local tmp = {}
local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
local num = Search[k][1] --特征码

for i, v in ipairs(result) do
tmp[#tmp+1] = {} --添加项目
tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
tmp[#tmp].flags = v.flags  --项目数据类型
end

tmp = gg.getValues(tmp) --刷新项目值

for i, v in ipairs(tmp) do
if ( v.value ~= num ) then --判断项目值与其他特征码是否一致
 result[i].isUseful = false --不符合过滤条件设定为false
end
end
end  
for i, v in ipairs(result) do
if (v.isUseful) then --筛选出符合条件的主特征码地址
data[#data+1] = v.address
end
end
--------------内存写入
if (#data > 0) then
--gg.toast("搜索到"..#data.."条数据")
local t = {}
local base = Search[1][2]
for i=1, #data do
for k, w in ipairs(Write) do
offset = w[2] - base
t[#t+1] = {}
t[#t].address = data[i] + offset
t[#t].flags = Type
t[#t].value = w[1]
--- 冻结项目添加到列表
if (w[3] == true) then
local item = {}
item[#item+1] = t[#t]
item[#item].freeze = true
gg.addListItems(item)
end
--- 不需要可以注释掉
end
end
gg.setValues(t)
gg.toast(Name.."开启成功已修改: "..#t.." 条数据")
gg.addListItems(t)
else
gg.toast(Name.."开启失败，没有搜索到数据", false)
return false
end
end
end




function MM()
SN = gg.multiChoice({
"🌹人物透视",
"🌹人物上色",
"防闪",
"加速伤害",
"无后防抖",
"全屏自瞄",
"大厅范围",
"人物天线",
"人物地线",
"大厅除草",
"20倍加速开启",
"20倍加速关闭",
"过人头防",
"结算人头",
"跳伞加速",
"轿车加速",
"全枪瞬击",
"天空上色",
"加速防拉回（大厅）",
"轿车飞天",
"秒落地",
"远处除草树",
"强制站立",
"视角提高",
"2倍加速",
"高跳（不防摔）",
"50倍加速开启",
"50倍加速关闭",
"人物移速开启",
"人物移速关闭",
"退出脚本",
}, nil,"配合全防使用反馈群1001502783")
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end
if SN[4] == true then a4() end
if SN[5] == true then a5() end
if SN[6] == true then a6() end
if SN[7] == true then a7() end
if SN[8] == true then a8() end
if SN[9] == true then  a9() end
if SN[10] == true then a10() end
if SN[11] == true then a11() end
if SN[12] == true then a12() end
if SN[13] == true then a13() end
if SN[14] == true then a14() end
if SN[15] == true then a15() end
if SN[16] == true then a16() end
if SN[17] == true then a17() end
if SN[18] == true then a18() end
if SN[19] == true then a19() end
if SN[20] == true then a20() end
if SN[21] == true then a21() end
if SN[22] == true then a22() end
if SN[23] == true then a23() end
if SN[24] == true then a24() end
if SN[25] == true then a25() end
if SN[26] == true then a26() end
if SN[27] == true then a27() end
if SN[28] == true then a28() end
if SN[29] == true then a29() end
if SN[30] == true then a30() end
if SN[31] == true then Exit() end
end
XGCK = -1 
end



--------透视--------
function a1()
qmnb = {
        {memory = 1048576},
        {name = "马赛克"},
        {value = -5.5695588E-40, type = 16},
        {
          lv = 4.8331922E21,
          offset = -132,
          type = 16
        },
        {
          lv = 9.1842503E-41,
          offset = -120,
          type = 16
        }
      }
      qmxg = {
        {
          value = 5444,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 1048576},
        {name = "透视"},
        {value = -2.7610737E-39, type = 16},
        {
          lv = 4.906848E21,
          offset = -132,
          type = 16
        },
        {
          lv = 1.3833282E-39,
          offset = -120,
          type = 16
        }
      }
      qmxg = {
        {
          value = 5444,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
    end

function a2()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色成功"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.072850831100576E-28, ["offset"] = -36, ["type"] = 16},
{["lv"] = 3.734502446379567E-40, ["offset"] = -28, ["type"] = 16},
{["lv"] = 4.19370795313881E-40, ["offset"] = -20, ["type"] = 16},
{["lv"] = 2.062500476837158, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 4, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end



--------防闪--------
function a3()
    qmnb = {
        {memory = 1048576},
        {
          name = "偏移房区防闪"
        },
        {value = -8.3241613E-40, type = 16},
        {
          lv = 5.8013756E-42,
          offset = -8,
          type = 16
        },
        {
          lv = 4.7592633E21,
          offset = -4,
          type = 16
        },
        {
          lv = 4.796158E21,
          offset = 4,
          type = 16
        },
        {
          lv = 2,
          offset = 200,
          type = 16
        }
      }
      qmxg = {
        {
          value = 8.3241613E-40,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 1048576},
        {
          name = "偏移山体防闪"
        },
        {value = -6.488152E-40, type = 16},
        {
          lv = 2.2960275E-41,
          offset = -8,
          type = 16
        },
        {
          lv = 6.50000238419,
          offset = -4,
          type = 16
        },
        {
          lv = 4.7604163E21,
          offset = 4,
          type = 16
        },
        {
          lv = 5.6051939E-45,
          offset = 8,
          type = 16
        },
        {
          lv = 2,
          offset = 144,
          type = 16
        }
      }
      qmxg = {
        {
          value = 6.488152E-40,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
    end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M416伤害开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("SC伤害开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500")
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AKM伤害开启成功")
end
--------防抖--------
function a5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("聚点开启成功🌴")
end




--------除草黑色--------
function a6()
gg.clearResults()
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
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("145", gg.TYPE_FLOAT)
gg.toast("范围开启成功")
end


function a8()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
 gg.toast("天线开启成功")
end


function a9()
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
  
  
function a10()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="大厅除草开启成功"},
{["value"] =29806, ["type"] = gg.TYPE_DWORD},
{["lv"] = 7630437, ["offset"] = 40, ["type"] = gg.TYPE_DWORD},
{["lv"] = 1633907556, ["offset"] = 64, ["type"] = gg.TYPE_DWORD},
 }
qmxg = {
{["value"] =1936942449, ["offset"] = 140, ["type"] = gg.TYPE_DWORD},
}
xqmnb(qmnb)
end



function a11()
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

function a12()
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

function a13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,954,047,316;1,970,037,078;1,633,906,508;7,562,578:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1633906508", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("无视人头开启成功")
end

function a14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,954,047,316;1,970,037,078;7,562,578;0:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1633906508", gg.TYPE_DWORD)
gg.toast("无视人头恢复成功")
end

function a15()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "跳伞加速"},
{["value"] = 0.00050000002, ["type"] = gg.TYPE_FLOAT},
{["lv"] =0.00050000002, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] =0.1, ["offset"] =0 , ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.toast("20秒后关闭下降加速")
gg.sleep(20000)
qmnb = {
{["memory"] = 32},
{["name"] = "加速关闭"},
{["value"] = 20000, ["type"] = 16},
{["lv"] = 750, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.0001, ["offset"] = 88, ["type"] = 16},
{["lv"] = 0.10000000149, ["offset"] = 96, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0005, ["offset"] = 96, ["type"] = 16},
}
xqmnb(qmnb)
end

function a16()
qmnb = {
{["memory"] = 32},
{["name"] = "轿车加速"},
{["value"] = 50, ["type"] = 16},
{["lv"] = 5, ["offset"] = 4, ["type"] = 16},
{["lv"] = 2, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0, ["offset"] = 32, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = -0.23, ["offset"] = 40, ["type"] = 16},
}
xqmnb(qmnb)
end


function a17()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("瞬击成功")
end


function a18()
	gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('671,236,104;1,669,562,379;671,236,105;8,200:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('8200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('6',gg.TYPE_DWORD)
	gg.toast('星空天空开启成功')
end
function a19()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber('-6.1526231e27;-1.0070975e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('-6.1526231e27',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('-5',gg.TYPE_FLOAT)
	gg.toast('加速防拉回开启成功')
end







function a20()
  gg.clearResults()
  gg.searchNumber("0.001;49.9999961853;24.99999809265::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("轿车飞天开启成功")
end


function a21()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "秒落地"},
{["value"] = 30.0, ["type"] =  gg.TYPE_FLOAT},
{["lv"] = 36.0, ["offset"] = 4, ["type"] =  gg.TYPE_FLOAT},
{["lv"] = 6.0, ["offset"] = 8, ["type"] =  gg.TYPE_FLOAT},
{["lv"] = 55.0, ["offset"] = 12, ["type"] =  gg.TYPE_FLOAT},
{["lv"] = 1.0, ["offset"] = 16, ["type"] =  gg.TYPE_FLOAT},
{["lv"] = 360000.0, ["offset"] = 24, ["type"] =  gg.TYPE_FLOAT},
{["lv"] = 700.0, ["offset"] = 72, ["type"] =  gg.TYPE_FLOAT},}
qmxg = {
{["value"] = 999999.0, ["offset"] = -116, ["type"] =  gg.TYPE_FLOAT},
{["value"] = 999999.0, ["offset"] = -112, ["type"] =  gg.TYPE_FLOAT},
{["value"] = 999999.0, ["offset"] = -108, ["type"] =  gg.TYPE_FLOAT},}
xqmnb(qmnb)
end

function a22()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.000005;0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0.45", gg.TYPE_FLOAT)
gg.toast("远处除树草开启成功")
end

function a23()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.30799e21F;-7.1614595e24F;0F;0.00001F;-1.3095104e25F;-3.3568104e27F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("强制站立部署完成")
 end

    
function a24()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("600", gg.TYPE_FLOAT)
  gg.toast("视角提高开启成功")
end    

function a25()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.123", gg.TYPE_FLOAT)
  gg.toast("人物2倍加速开启成功")
end

function a26()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("2500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("超高跳不防摔开启成功.")
end

function a27()
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
gg.toast("不拉回开启")
end




function a28()
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
gg.toast("不拉回已关闭")
end


function a29()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.0530367e28;-5.8454586e27;-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("人物移速开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-6.1526231e27;-1.0070975e28;::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end




function a30()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.0530367e28;-5.8454586e27;0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("-2.7860151e28",gg.TYPE_FLOAT)
gg.toast("人物移速关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0;-1.0070975e28;::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-6.1526231e27",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function kk() os.exit()end while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false)end gg.clearResults() if XGCK == 1 then Main()end end