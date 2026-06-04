function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function baozinb()
menu = gg.multiChoice({
"大厅防10年",
"750G透视(落地)",
"防禁网(大厅)",
"二倍加速(落地)",
"无后(大厅)",
"范围瞬击(落地)",
"跳伞加速(开)",
"跳伞加速(关)",
"腿甲加速(开)",
"腿甲加速(关)",
"高跳(开)",
"高跳(关)",
"人物爬墙",
"退出脚本",
 }, nil, "直接防天防地防空气\n大厅防禁网开5遍\n作者:\n湫风散落 kjdao.cc")
if menu == nil then else 
if menu[1] == true then baozi1() end 
if menu[2] == true then baozi2() end 
if menu[3] == true then baozi3() end 
if menu[4] == true then baozi4() end 
if menu[5] == true then baozi5() end 
if menu[6] == true then baozi6() end 
if menu[7] == true then baozi7() end 
if menu[8] == true then baozi8() end 
if menu[9] == true then baozi9() end 
if menu[10] == true then baozi10() end 
if menu[11] == true then baozi11() end 
if menu[12] == true then baozi12() end 
if menu[13] == true then baozi13() end 
if menu[14] == true then kk() end 
end XGCK = -1 end

function baozi1()
gg.clearResults()
gg.setRanges(5)
gg.searchNumber("134914;131330:751", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134914;131330:751", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

gg.clearResults()
gg.setRanges(5)
gg.searchNumber("135682;131330:751", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

gg.clearResults()
gg.setRanges(5)
gg.searchNumber("134402;131330:751", gg.TYPE_DWORD)
gg.refineNumber("134402", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

gg.clearResults()
gg.setRanges(5)
gg.searchNumber("135682;131586", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

qmnb = {
{["memory"] = 4},
{["name"] = "测试防禁网"},
{["value"] = 10240, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 2048, ["offset"] = 60, ["type"] =  gg.TYPE_DWORD},
{["lv"] = 196608, ["offset"] = 72, ["type"] =  gg.TYPE_DWORD},}
qmxg = {
{["value"] = 67109633, ["offset"] = 0, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109633, ["offset"] = 12, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109633, ["offset"] = 20, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109633, ["offset"] = 28, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109633, ["offset"] = 40, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109333, ["offset"] = 72, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109633, ["offset"] = 100, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 67109633, ["offset"] = 104, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 17500, ["offset"] = 108, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 18633, ["offset"] = 112, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 18633, ["offset"] = 124, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 18633, ["offset"] = 128, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 17500, ["offset"] = 132, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 17500, ["offset"] = 136, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 17500, ["offset"] = 180, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},
{["value"] = 17500, ["offset"] = 184, ["type"] =  gg.TYPE_DWORD,["freeze"]=true},}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("35,401", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10,497", gg.TYPE_DWORD)
gg.searchNumber("10,497", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.setRanges(4)
gg.searchNumber("198,993", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end


gg.toast("ca防十开启成功")


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1,179,648", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16384;115,212,288", gg.TYPE_DWORD)
gg.searchNumber("115,212,288", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("134,217,729;16384", gg.TYPE_DWORD)
gg.searchNumber("134,217,729", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16384;1,946,157,056", gg.TYPE_DWORD)
gg.searchNumber("1,946,157,056", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16384;1,073,741,824", gg.TYPE_DWORD)
gg.searchNumber("1,073,741,824", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16384;1,979,711,488", gg.TYPE_DWORD)
gg.searchNumber("1,979,711,488", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)



gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16384;671,088,640", gg.TYPE_DWORD)
gg.searchNumber("671,088,640", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)

gg.toast("开启成功")
end

function baozi2()

gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("-9.18397001e-41;3.75000047684;1.1202029e-19", gg.TYPE_FLOAT)
gg.searchNumber("-9.18397001e-41", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("5444", gg.TYPE_FLOAT)

gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("-1.56722902e-39;1.1202055e-19;3.7615819e-37", gg.TYPE_FLOAT)
gg.searchNumber("-1.56722902e-39", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("5444", gg.TYPE_FLOAT)



qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1194347029, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1937952768, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("-7.40580633e-40;1.1202012e-19", gg.TYPE_FLOAT)
gg.searchNumber("-7.40580633e-40", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("40", gg.TYPE_FLOAT)

gg.toast("开启成功")
end


function baozi3()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("134,217,729;16384", gg.TYPE_DWORD)
gg.searchNumber("134,217,729", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end

gg.toast("xa防禁网开启成功")


end


function baozi4()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x239C0, 0x20, 0x290, 0x5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x239C0, 0x20, 0x290, 0x5E0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x239C0, 0x20, 0x290, 0x5E4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC0, 0xB0, 0x5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC0, 0xB0, 0x5E0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC0, 0xB0, 0x5E4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0x30, 0x290, 0x5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0x30, 0x290, 0x5E0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0x30, 0x290, 0x5E4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0x520, 0x290, 0x5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0x520, 0x290, 0x5E0}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0x520, 0x290, 0x5E4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.1}})
gg.toast("开启成功")
end

function baozi5()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x69D20, 0xF8, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
gg.toast("开启成功")
end


function baozi6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT)
gg.searchNumber("23;28", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll("145", gg.TYPE_FLOAT)
gg.toast("范围开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.toast("M416瞬击")
    
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.toast("SCAR瞬击")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("68000", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.toast("M762瞬击")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("2000000", gg.TYPE_FLOAT)
gg.toast("AKM瞬击")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
end


function baozi7()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x239C0, 0x20, 0x290, 0x5F4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 0.1}})

end

function baozi8()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x239C0, 0x20, 0x290, 0x5F4}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 5.000000237487257E-4}})
end


function baozi9()

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x424DB0, 0x8, 0x60, 0x0, 0x450}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.toast("开穿墙")

end

function baozi10()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x424DB0, 0x8, 0x60, 0x0, 0x450}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})
gg.toast("关穿墙")
end


function baozi11()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("开启成功")

end


function baozi12()

gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("999", gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function baozi13()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("443;45;1", gg.TYPE_FLOAT)
gg.searchNumber("45", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("800", gg.TYPE_FLOAT)
gg.toast("爬墙开启成功")

end


function kk() os.exit()end while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false)end gg.clearResults() if XGCK == 1 then baozinb()end end
