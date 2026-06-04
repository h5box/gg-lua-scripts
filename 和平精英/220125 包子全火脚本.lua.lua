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
"腾讯页面(防禁网)",
"无后聚点(落地)",
"防十年(大厅)",
"跳伞加速(跳伞)",
"动作美化(大厅)",
"范围瞬击(落地)",
"跳伞加速(开)",
"全图除草(大厅)",
"腿甲加速(开)",
"腿甲加速(关)",
"高跳(开)",
"高跳(关)",
"人物爬墙",
"退出脚本",
 }, nil, "直接防天防地防空气\n该咋开咋开\n作者:包子\n自用版本")
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
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("196600~196699", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("16384000~16384999", gg.TYPE_DWORD)
jg=gg.getResults(10000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
gg.toast("防禁网开启成功")
end

function baozi2()

qmnb = {
{["memory"] = 32},
{["name"] = "m4无后"},
{["value"] = 0.550000011920929, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.8999999761581421, ["offset"] = 12, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "ak无后"},
{["value"] = 0.6499999761581421, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.6499999761581421, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.3599998951;0.1~1", gg.TYPE_FLOAT)
gg.refineNumber("3.3599998951", gg.TYPE_FLOAT)
gg.getResults(10000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("准星据点开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.20000004768;1.09375", gg.TYPE_FLOAT)
gg.searchNumber("3.20000004768;1.09375", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.toast("防抖开启成功")

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
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,543,503,872", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,342,177,280", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)


gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("335,544,322;65536", gg.TYPE_DWORD)
gg.searchNumber("335,544,322", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,048,576", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("0", gg.TYPE_DWORD)

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
gg.setRanges(4)
gg.searchNumber("135682;131330:751", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134402;131330:751", gg.TYPE_DWORD)
gg.refineNumber("134402", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("135682;131586", gg.TYPE_DWORD)
jg=gg.getResults(100000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 67109633}})
end







gg.toast("防十开启成功")


end


function baozi4()
qmnb = {
{["memory"] = 32},
{["name"] = "开启成功 30秒后自动关闭"},
{["value"] = 5.000000237487257E-4, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.4000000059604645, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.1, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)qmnb = {
{["memory"] = 32},
{["name"] = "跳伞关闭"},
{["value"] = 0.10000000149011612, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.4000000059604645, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.00050000002, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function baozi5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2201401',gg.TYPE_DWORD)
gg.searchNumber('2201401',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("2223001",gg.TYPE_DWORD)
gg.toast("俄舞改开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2200101',gg.TYPE_DWORD)
gg.searchNumber('2200101',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("2223002",gg.TYPE_DWORD)
gg.toast("你好改开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2200301',gg.TYPE_DWORD)
gg.searchNumber('2200301',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("2223003",gg.TYPE_DWORD)
gg.toast("鼓掌改开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2200601',gg.TYPE_DWORD)
gg.searchNumber('2200601',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("2207501",gg.TYPE_DWORD)
gg.toast("走改羽毛球开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2200701',gg.TYPE_DWORD)
gg.searchNumber('2200701',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("2210001",gg.TYPE_DWORD)
gg.toast("不行改自由摇摆开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2200801',gg.TYPE_DWORD)
gg.searchNumber('2200801',gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("2212301",gg.TYPE_DWORD)
gg.toast("肯定改比心开启成功")
end


function baozi6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT)
gg.searchNumber("23;28", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll("150", gg.TYPE_FLOAT)
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
qmnb = {
{["memory"] = 32},
{["name"] = "开启成功 30秒后自动关闭"},
{["value"] = 5.000000237487257E-4, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.4000000059604645, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.1, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)qmnb = {
{["memory"] = 32},
{["name"] = "跳伞关闭"},
{["value"] = 0.10000000149011612, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.4000000059604645, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.00050000002, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function baozi8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.39999997616;1.39999997616;2.0318828e-43;1.29999995232", gg.TYPE_FLOAT)
gg.searchNumber("1.39999997616", gg.TYPE_FLOAT)
gg.getResults(50)
gg.editAll("-0.00001", gg.TYPE_FLOAT)
gg.toast("全图除草")
end


function baozi9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.58732407e-43;0.10000000149;0.20000000298;3.60133705e-43", gg.TYPE_FLOAT)
gg.searchNumber("3.58732407e-43", gg.TYPE_FLOAT)
gg.getResults(500)
gg.editAll("4", gg.TYPE_FLOAT)
gg.toast("腿甲开启成功")
end

function baozi10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4;0.10000000149;0.20000000298;3.60133705e-43", gg.TYPE_FLOAT)
gg.searchNumber("4", gg.TYPE_FLOAT)
gg.getResults(500)
gg.editAll("3.58732407e-43", gg.TYPE_FLOAT)
gg.toast("腿甲关闭成功")
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
