function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据郑佩奇") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
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
		local _Q = tonumber(0x44f3f49e)
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
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
		local _Q = tonumber(0x44f3f49e)
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
			print(string.char(231,190,164,58).._Q)
		end
return _S end
	local _A = string.format('0x%X',Get_Address(t_So, t_Offset, _bit))
return _A
end
----------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function yiyz_Main()
menu = gg.multiChoice({
  "真伤范围(内存)",
  "大厅无后聚点(全局)",
  "单局防抖",
  "飞行加速",
  "关闭加速",
  "基址范围",
  "关闭基址范围",
  "二倍射速",
  "关闭二倍",
  "轿车飞天(可循环)",
  "200W瞬击",
  "退出脚本",
}, nil, os.date(" 祁莫恩源码来自网络 和平64位功能 当前时间%Y年-%m月-%d日 %H时:%M分:%S秒"))
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
if menu[12] == true then Exit()   end
end XGCK = -1 end
function A1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("145", gg.TYPE_FLOAT)
gg.toast("范围开启成功")
end

function A2()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x69D20, 0xF8, 0x18}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 0}})
  gg.toast("大厅全枪无后聚点")
end

function A3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false)
  gg.searchNumber("1", gg.TYPE_FLOAT, false)
  gg.getResults(500)
  gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
  gg.toast("防抖开启成功")
end

function A4()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0x1280, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0xA80, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0xA80, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0x1280, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x424DB0, 0x8, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC08, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC60, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 4}})

gg.toast("开启成功")
end

function A5()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0x1280, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0xA80, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})

local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0xA80, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x272B00, 0x1280, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x424DB0, 0x8, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC08, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43 }})



local t = {"libUE4.so:bss", "Cb"}
local tt = {0x427338, 0xC60, 0x8, 0x80, 0x958}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 3.58732407e-43}})
gg.toast("关闭成功")
end

function A6()
so=gg.getRangesList('libUE4.so')[1].start
py=0x7AA33D0
setvalue(so+py,16,40)
gg.toast("基址范围")
end

function A7()
so=gg.getRangesList('libUE4.so')[1].start
py=0x7AA33D0
setvalue(so+py,16,0.10000000149)
gg.toast("恢复基址范围")
end

function A8()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x22760, 0x20, 0x290, 0x5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1.051}})
gg.toast("人物二倍")
end

function A9()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x22760, 0x20, 0x290, 0x5E8}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 16, value = 1}})
  gg.toast("关闭二倍")
end

function A10()
gg.clearResults()
  gg.searchNumber("0.00100000005;49.9999961853;24.99999809265::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("轿车飞天开启成功")
gg.clearResults()
  gg.searchNumber("0.1;49.9999961853;24.99999809265::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.00100000005", gg.TYPE_FLOAT)
  gg.toast("轿车关闭开启成功")
end



function A11()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2000000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("M416")

  
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2000000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("SCAR")
  
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2000000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("M762")
    
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2000000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("AKM")


end
function Exit()
print"☞感谢使用☜"
print""
os.exit()
end
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    yiyz_Main()
  end
end



