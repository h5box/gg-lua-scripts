
---------功能首页(这里可以写你的主功能代码)-------
function main()


function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end





function yeshi()
menu = gg.multiChoice({
"HOOK全防(腾讯界面)",
"静态CALL全防(光子界面)",
"动态CRC全防(大厅界面)",
"VM全防(落地开启)",
"退出修仙",
}, nil, "隐藏23    |     4不要隐藏(防封4部曲)配合VM功能使用")
if menu == nil then else 
if menu[1] == true then A1() end 
if menu[2] == true then A2() end
if menu[3] == true then A3() end 
if menu[4] == true then A4() end
if menu[5] == true then kk() end 
end XGCK = -1 end

function A1()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("4572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function A2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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


function A3()

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16,777,216;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("16,777,216;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(8)
gg.searchNumber("16384;16384;16384;16384;16384;16384;36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(16)
gg.searchNumber("16384;16384;16384;16384;16384;16384;36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(8)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(2)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(16)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

end

function A4()

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("4572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("18812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("18812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("4072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.searchNumber("4073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4073", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(16)
gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1777777"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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



end





function kk() os.exit()end while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false)end gg.clearResults() if XGCK == 1 then yeshi()end end





end


while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    main()
  end
end
lylidzzhrtx()
