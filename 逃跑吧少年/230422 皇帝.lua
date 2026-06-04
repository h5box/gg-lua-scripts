




function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy,flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
readPointer = function(name, offset, i)
  local re=gg.getRangesList(name)
  local x64=gg.getTargetInfo().x64
  local va={[true]=32,[false]=4}
  if re[i or 1] then
    local addr=re[i or 1].start+offset[1]
    for i = 2,#offset do
      addr = gg.getValues({{address=addr,flags=va[x64]}})
      if not x64 then
        addr[1].value = addr[1].value & 0xFFFFFFFF
      end
      addr = addr[1].value + offset[i]
    end
    return addr
  end
end

function gg.edits(addr, Table, name)
  local Table1 = {{}, {}}
  for k, v in ipairs(Table) do
    local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
    if v[4] then
      Table1[2][#Table1[2]+1] = value
    else
      Table1[1][#Table1[1]+1] = value
    end    
  end
  gg.addListItems(Table1[2])
  gg.setValues(Table1[1])
  gg.toast((name or "") .. "开启成功 [ 修改"..#Table.."个值 ] ")
end
-------------------------------------------------------------------------------------------------------------
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
-------------------------------------------------------------------------------------------------------------
--仿xs写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function BaAdd(add)
	t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
	for i = 1, (#Item - 1) do
		Add = BaAdd(Add + Item[i])
	end
	return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
	local WY = {}
	WY[1] = {}
	WY[1].address = add
	WY[1].value = value
	WY[1].flags = falgs
	if dj == true then
		WY[1].freeze = true
		gg.addListItems(WY)
	else
		gg.setValues(WY)
	end
end
function getnc(Name, nc)
	local t = gg.getRangesList(Name)
	for i, v in ipairs(t) do
		if v.state == nc then
			return v.start
		end
	end
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

		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]

			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = v.flags
			end

			tmp = gg.getValues(tmp)

			for i, v in ipairs(tmp) do
				if (tostring(v.value) ~= tostring(num)) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end

		if (#data > 0) then
			gg.toast("\n共修改" .. #data .. "条数据")
			local t = {}
			local base = Search[1][2]
			for i = 1, #data do
				for k, w in ipairs(Write) do
					offset = w[2] - base
					t[#t + 1] = {}
					t[#t].address = data[i] + offset
					t[#t].flags = Type
					t[#t].value = w[1]

					if (w[3] == true) then
						local item = {}
						item[#item + 1] = t[#t]
						item[#item].freeze = true
						gg.addListItems(item)
					end

				end
			end
			gg.setValues(t)
		else
			gg.toast("\n开启失败", false)
			return false
		end
	else
		gg.toast("\n开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1]["memory"])
	gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2]["name"] .. "\n开启失败")
	else
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2]["name"] .. "\n开启失败")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(qmnb) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + qmnb[v]["offset"]
						pysz[1].flags = qmnb[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
			else
				gg.toast(qmnb[2]["name"] .. "\n开启失败")
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
--偏移配置
function readPointer(name, offset, i)
	local re = gg.getRangesList(name)
	local x64 = gg.getTargetInfo().x64
	local va = {[true] = 32, [false] = 4}
	if re[i or 1] then
		local addr = re[i or 1].start + offset[1]
		for i = 2, #offset do
			addr = gg.getValues({{address = addr, flags = va[x64]}})
			if not x64 then
				addr[1].value = addr[1].value & 0xFFFFFFFF
			end
			addr = addr[1].value + offset[i]
		end
		return addr
	end
end

gg.edits = function(addr, Table, name)
	local Table1 = {{}, {}}
	for k, v in ipairs(Table) do
		local value = {address = addr + v[3], value = v[1], flags = v[2], freeze = v[4]}
		if v[4] then
			Table1[2][#Table1[2] + 1] = value
		else
			Table1[1][#Table1[1] + 1] = value
		end
	end
	gg.addListItems(Table1[2])
	gg.setValues(Table1[1])
	gg.toast((name or "") .. "开启成功, 共修改" .. #Table .. "个值")
end

function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	if type(search[1][4]) == "string" then
		gg.searchAddress(search[1][4])
	end
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast("搜索失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = {address = r.address + search[i][2], flags = search[i][3]}
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		gg.toast("共搜索到" .. #result .. "条数据")
		return result
	end
end

function SearchWrite(read, write)
	gg.clearResults()
	gg.setRanges(read["内存"])
	gg.setVisible(false)
	gg.searchNumber(read["主特征码"], read["类型"])
	if gg.getResultCount() > 0 then
		local Result = gg.getResults(gg.getResultCount())
		gg.clearResults()
		for i = 1, #read do
			local t = {}
			for e, v in ipairs(Result) do
				t[#t + 1] = {address = v.address + read[i]["偏移"], flags = read[i]["类型"]}
			end
			t = gg.getValues(t)
			for _a, x in ipairs(t) do
				if x.value ~= read[i]["值"] then
					Result[_a] = nil
				end
			end
			local MS = {}
			for i, v in pairs(Result) do
				MS[#MS + 1] = Result[i]
			end
			Result = MS
		end
		if (#Result > 0) then
			local data = {{}, {}}
			for i, v in ipairs(Result) do
				for a, x in ipairs(write) do
					if x["冻结"] == true then
						data[2][#data[2] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"], freeze = true}
					else
						data[1][#data[1] + 1] = {address = v.address + x["偏移"], flags = x["类型"], value = x["值"]}
					end
				end
			end
			gg.setValues(data[1])
			gg.addListItems(data[2])
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启成功,共搜索" .. #Result .. "条地址\n已修改" .. (#data[1] + #data[2]) .. "条数据")
		else
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改失败")
		end
	else
		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "开启失败,未搜索到数据")
	end
end

function xqmnb(x)
	local tp1 = {["内存"] = x[1]["memory"], ["主特征码"] = x[3]["value"], ["类型"] = x[3]["type"], ["name"] = x[2]["name"]}
	for i = 4, #x do
		tp1[#tp1 + 1] = {["值"] = x[i]["lv"], ["偏移"] = x[i].offset, ["类型"] = x[i].type}
	end
	local tp2 = {}
	for i, v in ipairs(qmxg) do
		tp2[#tp2 + 1] = {["值"] = v.value, ["类型"] = v.type, ["偏移"] = v.offset, ["冻结"] = (v.freeze or nil)}
	end
	SearchWrite(tp1, tp2)
end

function readValue(add, flags)
	local t = gg.getValues({[1] = {address = add, flags = flags}})
	return t[1].value
end

function readAdd(add)
	local t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
-------------------------------------------------------------------------------------------------------------
function setvalue(add,lv,falg) gg.setValues({{address=add,flags=falg,value=lv}}) end
function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end
-------------------------------------------------------------------------------------------------------------
function fastsearch(search, write,we)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
	   if we~=nil then
		gg.toast(we.." -> 主特征码不存在")
	   end
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			if we~=nil then
			gg.toast(we.." -> 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
			end
		else
		    if we~=nil then
			gg.toast(we.." -> 开启失败")
			end
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("开启失败")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
		else
			gg.toast("开启失败")
		end
	end
end
-------------------------------------------------------------------------------------------------------------
local function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
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
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD E=gg.TYPE_DOUBLE F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD


if true then
local org = gg.searchNumber
 hook = function(...)
gg.setVisible(false)
 ret = org(...)
if gg.isVisible(true) then
gg.clearResults()
gg.clearList()
gg.alert("挖我的值？")
while true do 
os.exit() 
end
end
return ret
end
gg.searchNumber = _ENV["hook"]
end

do
local x0 = debug.getinfo(debug.getinfo)
local x1 = debug.getinfo(1)
local x2 = debug.traceback(debug.getinfo)
local f = x1.func
local ff = x0.func
if f ~= ff or f ~= x2 or ff ~= x2 then
return
end
function Debug(x)
debug.getinfo = x
local v0 = debug.getinfo(f)
if v0.istailcall then
return
end
if tostring(debug) ~= tostring(debug) then
return
end
end
Debug(f)
Debug(ff)
Debug(x2)
end


local pxxe=gg[ "makeRequest" ]( "FT+网络申请" )
while tostring(pxxe):find( "FT+" )==nil do
while true do  print( "NO Network " ) end end
function _A(_B) 
return string.char(table.unpack(_B))
end
local optfff=function()
local igs = 0
for i in pairs(_G) do
igs = igs + 1
end
if igs ~= 36 then
goto BAD
end
ipai = gg[ "isPackageInstalled" ]
gpa = gg[ "PACKAGE" ]
ggf = gg[ "getFile" ]()
gg[ "setVisible" ](false)
goto P1
::BAD::
xpc=nil if  gg.isVisible() then xpc=0 end
while xpc~=0 do break end
wgcz =  "哈哈，傻逼还想抓包" 
gg[ "toast" ](wgcz)
gg[ "sleep" ](50)
gg[ "setVisible" ](true)  
::PP::
gg[ "toast" ](wgcz)
goto PP
::P1::
if #{pairs({ "EA-FFF" })} ~= 2 then
goto BAD
end
xi = {1, 1}
for i, v in pairs(gg) do 
xi[1] = xi[1] + 1
if i:find( "DIR" ) and not v:find(gpa) then
goto BAD
end
if type(v) ==  "function"  then
xi[2] = xi[2] + 1
end
end
if xi[1] ~= 123 or xi[2] ~= 64 then
goto BAD
end
xi = 1
for i, v in pairs(debug) do 
xi = xi + 1
if type(v) ~=  "function"  then
goto BAD
end
end
if xi ~= 17 then
goto BAD
end
h = 1 
repeat
h = h + 1
until type(debug.getinfo(h) or 0) ==  "number" 
if h > 2 or debug.getinfo(h - 1).short_src ~= ggf then
goto BAD
end
if debug.traceback():match( ".(/.-):" ) ~= ggf then 
goto BAD
end
f = io.open( "/data/data/"  .. gpa ..  "/shared_prefs/"  .. gpa ..  "_preferences.xml" )
if not f then
goto BAD
else
spc = f:read( "*a" )
f:close()
if #spc < 20 then 
goto BAD
end
op = 0 
for k in spc:gmatch( "script%-debug.>(.-)<" ) do
op = op + 1
end
if op ~= 0 then
goto BAD
end
op = 0 
for k in spc:gmatch( "history%-0.>(.-)<" ) do
op = op + 1
h0 = k
end
if op ~= 1 then
goto BAD
end
op = 0 
for k in spc:gmatch(gg[ "getTargetPackage" ]() ..  "%-script.>(.-)<" ) do
op = op + 1
ps = k
end
if op ~= 1 then
goto BAD
end
if h0 ~= ps or h0 ~= ggf or ps ~= ggf then 
goto BAD
end
end
isby = debug.traceback():match( "(/.*/.*):%d" ) 
if ggf == isby or isby or debug.traceback():match( ":(%d+)" ) then
goto BAD
end
if not ipai(gpa) or ipai( "com.fffsse.bad" ) then 
goto BAD
end
if sdpa == true and gpa ~=  "com.fffsse.gg"  then
goto BAD
end
while true do 
goto BAD end
end
function ffvpns()
ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F" 
x=(tostring(gg[ "makeRequest" ](ffvpn)))
if not x  or not x:sub(1,20) then 
gg[ "alert" ]( "请查看相应权限"  )
else
while  #(x)<100  
or x:find( "SSL" ) or x:find('I/O') or x:find('javax')
do 
gg[ "alert" ]( "警告❗:\n⛔网络数据通道异常⛔\n\n请立刻停止你的抓包行为，否则手机屏幕卡死" )
local mpxgk=optfff()
end 
end
end
--鹿十七hook防御
while string.find(gg.EXT_CACHE_DIR,"com.sgqonplujwonwxxuud") do
end


function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
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
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("Not Found")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2, #search do
			local mtp = {}
			for w, r in ipairs(result) do
				mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w, r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		if #result > 0 then
			local tb = {{}, {}}
			for i, v in ipairs(result) do
				--- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果")
		else
			gg.toast("Not Found")
		end
	end
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

-------------------------------------------------------------------------------------------------------------
function readWrite(Search, Get, Type, Range, Name)
	gg.clearResults()
	gg.setRanges(Range)
	gg.setVisible(false)
	if Search[1][1] ~= false then
		gg.searchAddress(Search[1][1], 0xFFFFFFFF, Search[1][4] or Type, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	end
	gg.searchNumber(Search[1][2], Search[1][4] or Type, false, gg.SIGN_EQUAL, Search[1][5] or 1, Search[1][6] or -1)
	local count = gg.getResultCount()
	local result = gg.getResults(count)
	gg.clearResults()
	local data = {}
	local base = Search[1][3]
	if (count > 0) then
		for i, v in ipairs(result) do
			v.isUseful = true
		end
		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]
			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = Search[k][3] or Type
			end
			tmp = gg.getValues(tmp)
			for i, v in ipairs(tmp) do
				if v.flags == 16 or v.flags == 64 then
					values = tostring(v.value):sub(1, 6)
					num = tostring(num):sub(1, 6)
				else
					values = v.value
				end
				if tostring(values) ~= tostring(num) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end
		if (#data > 0) then
			local t, t_ = {}, {}
			local base = Search[1][3]
			for i = 1, #data do
				for k, w in ipairs(Get) do
					offset = w[2] - base
					if w[1] == false then
						t_[#t_ + 1] = {}
						t_[#t_].address = data[i] + offset
						t_[#t_].flags = Type
						th_ = (th_) and th_ + 1 or 1
					else
						t[#t + 1] = {}
						t[#t].address = data[i] + offset
						t[#t].flags = w[3] or Type
						t[#t].value = w[1]
						tg_ = (tg_) and tg_ + 1 or 1
						if (w[4] == true) then
							local item = {}
							item[#item + 1] = t[#t]
							item[#item].freeze = w[4]
							gg.addListItems(item)
						end
					end
				end
			end
			tg = (tg_) and "\n已修改" .. tg_ .. "条数据" or ""
			th = (th_) and "\n已获取" .. th_ .. "条数据" or ""
			gg.setValues(t)
			t_ = gg.getValues(t_)
			gg.loadResults(t_)
			gg.toast("\n" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast("\n" .. Name .. "开启失败", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
readPointer = function(name, offset, i)
  local re=gg.getRangesList(name)
  local x64=gg.getTargetInfo().x64
  local va={[true]=32,[false]=4}
  if re[i or 1] then
    local addr=re[i or 1].start+offset[1]
    for i = 2,#offset do
      addr = gg.getValues({{address=addr,flags=va[x64]}})
      if not x64 then
        addr[1].value = addr[1].value & 0xFFFFFFFF
      end
      addr = addr[1].value + offset[i]
    end
    return addr
  end
end

function gg.edits(addr, Table, name)
  local Table1 = {{}, {}}
  for k, v in ipairs(Table) do
    local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}
    if v[4] then
      Table1[2][#Table1[2]+1] = value
    else
      Table1[1][#Table1[1]+1] = value
    end    
  end
  gg.addListItems(Table1[2])
  gg.setValues(Table1[1])
  gg.toast((name or "") .. "开启成功 [ 修改"..#Table.."个值 ] ")
end
-------------------------------------------------------------------------------------------------------------
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
-------------------------------------------------------------------------------------------------------------
--仿xs写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "开启成功")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function BaAdd(add)
	t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
	for i = 1, (#Item - 1) do
		Add = BaAdd(Add + Item[i])
	end
	return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
	local WY = {}
	WY[1] = {}
	WY[1].address = add
	WY[1].value = value
	WY[1].flags = falgs
	if dj == true then
		WY[1].freeze = true
		gg.addListItems(WY)
	else
		gg.setValues(WY)
	end
end
function getnc(Name, nc)
	local t = gg.getRangesList(Name)
	for i, v in ipairs(t) do
		if v.state == nc then
			return v.start
		end
	end
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

		for k = 2, #Search do
			local tmp = {}
			local offset = Search[k][2] - base
			local num = Search[k][1]

			for i, v in ipairs(result) do
				tmp[#tmp + 1] = {}
				tmp[#tmp].address = v.address + offset
				tmp[#tmp].flags = v.flags
			end

			tmp = gg.getValues(tmp)

			for i, v in ipairs(tmp) do
				if (tostring(v.value) ~= tostring(num)) then
					result[i].isUseful = false
				end
			end
		end
		for i, v in ipairs(result) do
			if (v.isUseful) then
				data[#data + 1] = v.address
			end
		end

		if (#data > 0) then
			gg.toast("\n共修改" .. #data .. "条数据")
			local t = {}
			local base = Search[1][2]
			for i = 1, #data do
				for k, w in ipairs(Write) do
					offset = w[2] - base
					t[#t + 1] = {}
					t[#t].address = data[i] + offset
					t[#t].flags = Type
					t[#t].value = w[1]

					if (w[3] == true) then
						local item = {}
						item[#item + 1] = t[#t]
						item[#item].freeze = true
						gg.addListItems(item)
					end

				end
			end
			gg.setValues(t)
		else
			gg.toast("\n开启失败", false)
			return false
		end
	else
		gg.toast("\n开启失败")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
		if not nFindLastIndex then
			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
			break
		end
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
		nFindStartIndex = nFindLastIndex + string.len(szSeparator)
		nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end
function xgxc(szpy, qmxg)
	for x = 1, #(qmxg) do
		xgpy = szpy + qmxg[x]["offset"]
		xglx = qmxg[x]["type"]
		xgsz = qmxg[x]["value"]
		gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
		xgsl = xgsl + 1
	end
end
function xqmnb(qmnb)
	gg.clearResults()
	gg.setRanges(qmnb[1]["memory"])
	gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
	if gg.getResultCount() == 0 then
		gg.toast(qmnb[2]["name"] .. "\n开启失败")
	else
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2]["name"] .. "\n开启失败")
		else
			sl = gg.getResults(999999)
			sz = gg.getResultCount()
			xgsl = 0
			if sz > 999999 then
				sz = 999999
			end
			for i = 1, sz do
				pdsz = true
				for v = 4, #(qmnb) do
					if pdsz == true then
						pysz = {}
						pysz[1] = {}
						pysz[1].address = sl[i].address + qmnb[v]["offset"]
						pysz[1].flags = qmnb[v]["type"]
						szpy = gg.getValues(pysz)
						pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
						szpd = split(pdpd, ";")
						tzszpd = szpd[1]
						pyszpd = szpd[2]
						if tzszpd == pyszpd then
							pdjg = true
							pdsz = true
						else
							pdjg = false
							pdsz = false
						end
					end
				end
				if pdjg == true then
					szpy = sl[i].address
					xgxc(szpy, qmxg)
					xgjg = true
				end
			end
			if xgjg == true then
				gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
			else
				gg.toast(qmnb[2]["name"] .. "\n开启失败")
			end
		end
	end
end
-----------

function Main()
  gg.toast("倒卖的司马")
  menu = gg.choice({
	 "👍防闪💫",---1
	 "👍xa功能区💫",---2
	 "💫a内存直装功能💫",---3
	 "👍传送功能区💫",---4
	 "💫稳定功能区💫",---5
	 "💫(要不要菠萝)超级防封💫",---6
	 "💫特殊功能区💫",---7
	 "💫实体变身功能区💫",---8
	 "💫复制身份号功能区💫",---9
	 "💫武器菜单💫",---10
	 "💫道具BUFF功能💫",---11
	 "💫角色菜单💫",---12
	 "💫秒赢功能菜单💫",---13
	 "💫音乐菜单💫",---14
	 "💫恐龙菜单💫",---15
	 "️💫医疗包改道具(自调)💫",---16
	 "💫切换脚本💫",---17
	  "👑️退 出 皇 帝👑️️",
}, nil, os.date("-----------皇帝脚本-----------\n非二改你要是说二改你去找个一样的"))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then H() end
if menu == 9 then I() end
if menu == 10 then J() end
if menu == 11 then K() end
if menu == 12 then L() end
if menu == 13 then M() end
if menu == 14 then N() end
if menu == 15 then O() end
if menu == 16 then P() end
if menu == 17 then Q() end
if menu == 18 then Exit() end
XGCK=-1
end









function I()
menu1 = gg.multiChoice({
"身 份 证 复 制1",
"身 份 证 复 制2",
"身 份 证 复 制3",
"身 份 证 复 制4",
"身 份 证 复 制5",
"身 份 证 复 制6",
"身 份 证 复 制7",
"身 份 证 复 制8",
"身 份 证 复 制9",
"身 份 证 复 制10",
"返 回 主 页",
}, nil, os.date("身份证功能实名认证可用"))
if menu1 == nil then else
if menu1[1] == true then z1() end
if menu1[2] == true then z2() end
if menu1[3] == true then z3() end
if menu1[4] == true then z4() end
if menu1[5] == true then z5() end
if menu1[6] == true then z6() end
if menu1[7] == true then z7() end
if menu1[8] == true then z8() end
if menu1[9] == true then z9() end
if menu1[10] == true then z10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function z1()
gg.copyText("蔡岳权----330222196403154454")
gg.alert("复制成功")
end

function z2()
gg.copyText("张晓宇----131002199108034629")
gg.alert("复制成功")
end

function z3()
gg.copyText("郝杨梅----120222198905157823")
gg.alert("复制成功")
end

function z4()
gg.copyText("罗蓉----510602197111154780")
gg.alert("复制成功")
end

function z5()
gg.copyText("邓朴香----432901196202200022")
gg.alert("复制成功")
end

function z6()
gg.copyTe("张永军----320923199006124514")
gg.alert("复制成功")
end

function z7()
gg.copyText("王国胜----210623195710295253")
gg.alert("复制成功")
end

function z8()
gg.copyText("尹楠----210202197901080728")
gg.alert("复制成功")
end

function z9()
gg.copyText("王于忠----320923196904302112")
gg.alert("复制成功")
end

function z10()
gg.copyText("刘兰华----510113197501117135")
gg.alert("复制成功")
end


function J()
menu1 = gg.multiChoice({
'稳定无间隔(手持)',
'锁子弹(大厅)',
'无后坐(大厅)',
'子弹穿墙(大厅)',
'枪枪暴击(局内)',
'武器秒杀(大厅)',
"子弹射程(大厅)",
"破盾(局内)",
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end
function Y()
menu1 = gg.multiChoice({
"💰无间隔（局内）💰",
"💰锁子弹（大厅）💰",
"💰无后座（大厅）💰",
"💰无视追捕护盾（大厅）💰",
"😡返回界面😡",
}, nil, os.date("8.14.1可用，火力功能，配合我的防封特别稳定"))
if menu1 == nil then else
if menu1[1] == true then Y1() end
if menu1[2] == true then Y2() end
if menu1[3] == true then Y3() end
if menu1[4] == true then Y4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end

function j1()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end



function j2()--锁子弹--方法名get_CostFree
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end   
function j3()--无后
yw=gg.alert("超级无后座","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_FLOAT)
	 gg.toast("武器无后开启")
	 gg.clearResults()
end     
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;1.0;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00100000005", gg.TYPE_FLOAT)
	 gg.toast("武器无后关闭")
	 gg.clearResults()
end
end 
function j4()--子弹穿墙--方法名RpcFinishProjectile
readWrite({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"子弹穿墙")end
function j5()--枪枪暴击--方法名RealTeammateAttack
gg.alert("局内开启")
fastsearch
({
{8388578.5,16,16384},
{0,336,16},
},
{
{1,336,16,false}})
end
function j6()--武器秒杀--方法名get_Attack
fastsearch--秒杀一切
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
end
function j7()--子弹射程
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF43B64},})
end
function j8()--无视护盾
yw=gg.alert("破追捕盾","开启","关闭")
if yw==1 then
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})
end
if yw==2 then
fastsearch
({{-128.00001525879,16,16384},
{-486539264,20,4},
{-516948194,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
end
end
function K()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then k1() end
if menu1[2] == true then k2() end
if menu1[3] == true then k3() end
if menu1[4] == true then k4() end
if menu1[5] == true then k5() end
if menu1[6] == true then k6() end
if menu1[7] == true then k7() end
if menu1[8] == true then k8() end
if menu1[9] == true then k9() end
if menu1[10] == true then k10() end
if menu1[11] == true then k11() end
if menu1[12] == true then k12() end
if menu1[13] == true then k13() end
if menu1[14] == true then k14() end
if menu1[15] == true then k15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function L()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then l1() end
if menu1[2] == true then l2() end
if menu1[3] == true then l3() end
if menu1[4] == true then l4() end
if menu1[5] == true then l5() end
if menu1[6] == true then l6() end
if menu1[7] == true then l7() end
if menu1[8] == true then l8() end
if menu1[9] == true then l9() end
if menu1[10] == true then l10() end
if menu1[11] == true then l11() end
if menu1[12] == true then l12() end
if menu1[13] == true then l13() end
if menu1[14] == true then l14() end
if menu1[15] == true then l15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function M()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then m1() end
if menu1[2] == true then m2() end
if menu1[3] == true then m3() end
if menu1[4] == true then m4() end
if menu1[5] == true then m5() end
if menu1[6] == true then m6() end
if menu1[7] == true then m7() end
if menu1[8] == true then m8() end
if menu1[9] == true then m9() end
if menu1[10] == true then m10() end
if menu1[11] == true then m11() end
if menu1[12] == true then m12() end
if menu1[13] == true then m13() end
if menu1[14] == true then m14() end
if menu1[15] == true then m15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function N()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then n1() end
if menu1[2] == true then n2() end
if menu1[3] == true then n3() end
if menu1[4] == true then n4() end
if menu1[5] == true then n5() end
if menu1[6] == true then n6() end
if menu1[7] == true then n7() end
if menu1[8] == true then n8() end
if menu1[9] == true then n9() end
if menu1[10] == true then n10() end
if menu1[11] == true then n11() end
if menu1[12] == true then n12() end
if menu1[13] == true then n13() end
if menu1[14] == true then n14() end
if menu1[15] == true then n15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function O()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then o1() end
if menu1[2] == true then o2() end
if menu1[3] == true then o3() end
if menu1[4] == true then o4() end
if menu1[5] == true then o5() end
if menu1[6] == true then o6() end
if menu1[7] == true then o7() end
if menu1[8] == true then o8() end
if menu1[9] == true then o9() end
if menu1[10] == true then o10() end
if menu1[11] == true then o11() end
if menu1[12] == true then o12() end
if menu1[13] == true then o13() end
if menu1[14] == true then o14() end
if menu1[15] == true then o15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function P()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then p1() end
if menu1[2] == true then p2() end
if menu1[3] == true then p3() end
if menu1[4] == true then p4() end
if menu1[5] == true then p5() end
if menu1[6] == true then p6() end
if menu1[7] == true then p7() end
if menu1[8] == true then p8() end
if menu1[9] == true then p9() end
if menu1[10] == true then p10() end
if menu1[11] == true then p11() end
if menu1[12] == true then p12() end
if menu1[13] == true then p13() end
if menu1[14] == true then p14() end
if menu1[15] == true then p15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function Q()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then q1() end
if menu1[2] == true then q2() end
if menu1[3] == true then q3() end
if menu1[4] == true then q4() end
if menu1[5] == true then q5() end
if menu1[6] == true then q6() end
if menu1[7] == true then q7() end
if menu1[8] == true then q8() end
if menu1[9] == true then q9() end
if menu1[10] == true then q10() end
if menu1[11] == true then q11() end
if menu1[12] == true then q12() end
if menu1[13] == true then q13() end
if menu1[14] == true then q14() end
if menu1[15] == true then q15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function S()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then s1() end
if menu1[2] == true then s2() end
if menu1[3] == true then s3() end
if menu1[4] == true then s4() end
if menu1[5] == true then s5() end
if menu1[6] == true then s6() end
if menu1[7] == true then s7() end
if menu1[8] == true then s8() end
if menu1[9] == true then s9() end
if menu1[10] == true then s10() end
if menu1[11] == true then s11() end
if menu1[12] == true then s12() end
if menu1[13] == true then s13() end
if menu1[14] == true then s14() end
if menu1[15] == true then s15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function T()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then t1() end
if menu1[2] == true then t2() end
if menu1[3] == true then t3() end
if menu1[4] == true then t4() end
if menu1[5] == true then t5() end
if menu1[6] == true then t6() end
if menu1[7] == true then t7() end
if menu1[8] == true then t8() end
if menu1[9] == true then t9() end
if menu1[10] == true then t10() end
if menu1[11] == true then t11() end
if menu1[12] == true then t12() end
if menu1[13] == true then t13() end
if menu1[14] == true then t14() end
if menu1[15] == true then t15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function W()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then w1() end
if menu1[2] == true then w2() end
if menu1[3] == true then w3() end
if menu1[4] == true then w4() end
if menu1[5] == true then w5() end
if menu1[6] == true then w6() end
if menu1[7] == true then w7() end
if menu1[8] == true then w8() end
if menu1[9] == true then w9() end
if menu1[10] == true then w10() end
if menu1[11] == true then w11() end
if menu1[12] == true then w12() end
if menu1[13] == true then w13() end
if menu1[14] == true then w14() end
if menu1[15] == true then w15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function Z()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then z1() end
if menu1[2] == true then z2() end
if menu1[3] == true then z3() end
if menu1[4] == true then z4() end
if menu1[5] == true then z5() end
if menu1[6] == true then z6() end
if menu1[7] == true then z7() end
if menu1[8] == true then z8() end
if menu1[9] == true then z9() end
if menu1[10] == true then z10() end
if menu1[11] == true then z11() end
if menu1[12] == true then z12() end
if menu1[13] == true then z13() end
if menu1[14] == true then z14() end
if menu1[15] == true then z15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function Y()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then y1() end
if menu1[2] == true then y2() end
if menu1[3] == true then y3() end
if menu1[4] == true then y4() end
if menu1[5] == true then y5() end
if menu1[6] == true then y6() end
if menu1[7] == true then y7() end
if menu1[8] == true then y8() end
if menu1[9] == true then y9() end
if menu1[10] == true then y10() end
if menu1[11] == true then y11() end
if menu1[12] == true then y12() end
if menu1[13] == true then y13() end
if menu1[14] == true then y14() end
if menu1[15] == true then y15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function U()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then u1() end
if menu1[2] == true then u2() end
if menu1[3] == true then u3() end
if menu1[4] == true then u4() end
if menu1[5] == true then u5() end
if menu1[6] == true then u6() end
if menu1[7] == true then u7() end
if menu1[8] == true then u8() end
if menu1[9] == true then u9() end
if menu1[10] == true then u10() end
if menu1[11] == true then u11() end
if menu1[12] == true then u12() end
if menu1[13] == true then u13() end
if menu1[14] == true then u14() end
if menu1[15] == true then u15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function V()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then v1() end
if menu1[2] == true then v2() end
if menu1[3] == true then v3() end
if menu1[4] == true then v4() end
if menu1[5] == true then v5() end
if menu1[6] == true then v6() end
if menu1[7] == true then v7() end
if menu1[8] == true then v8() end
if menu1[9] == true then v9() end
if menu1[10] == true then v10() end
if menu1[11] == true then v11() end
if menu1[12] == true then v12() end
if menu1[13] == true then v13() end
if menu1[14] == true then v14() end
if menu1[15] == true then v15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function ZX()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then zx1() end
if menu1[2] == true then zx2() end
if menu1[3] == true then zx3() end
if menu1[4] == true then zx4() end
if menu1[5] == true then zx5() end
if menu1[6] == true then zx6() end
if menu1[7] == true then zx7() end
if menu1[8] == true then zx8() end
if menu1[9] == true then zx9() end
if menu1[10] == true then zx10() end
if menu1[11] == true then zx11() end
if menu1[12] == true then zx12() end
if menu1[13] == true then zx13() end
if menu1[14] == true then zx14() end
if menu1[15] == true then zx15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function HO()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then ho1() end
if menu1[2] == true then ho2() end
if menu1[3] == true then ho3() end
if menu1[4] == true then ho4() end
if menu1[5] == true then ho5() end
if menu1[6] == true then ho6() end
if menu1[7] == true then ho7() end
if menu1[8] == true then ho8() end
if menu1[9] == true then ho9() end
if menu1[10] == true then ho10() end
if menu1[11] == true then ho11() end
if menu1[12] == true then ho12() end
if menu1[13] == true then ho13() end
if menu1[14] == true then ho14() end
if menu1[15] == true then ho15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end

function LO()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then lo1() end
if menu1[2] == true then lo2() end
if menu1[3] == true then lo3() end
if menu1[4] == true then lo4() end
if menu1[5] == true then lo5() end
if menu1[6] == true then lo6() end
if menu1[7] == true then lo7() end
if menu1[8] == true then lo8() end
if menu1[9] == true then lo9() end
if menu1[10] == true then lo10() end
if menu1[11] == true then lo11() end
if menu1[12] == true then lo12() end
if menu1[13] == true then lo13() end
if menu1[14] == true then lo14() end
if menu1[15] == true then lo15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function EM()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then lo1() end
if menu1[2] == true then lo2() end
if menu1[3] == true then lo3() end
if menu1[4] == true then lo4() end
if menu1[5] == true then lo5() end
if menu1[6] == true then lo6() end
if menu1[7] == true then lo7() end
if menu1[8] == true then lo8() end
if menu1[9] == true then lo9() end
if menu1[10] == true then lo10() end
if menu1[11] == true then lo11() end
if menu1[12] == true then lo12() end
if menu1[13] == true then lo13() end
if menu1[14] == true then lo14() end
if menu1[15] == true then lo15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
function A()--登录防闪
qmnb = {
{["memory"] = 8},
{["name"] = "登录防闪"},
{["value"] = 778923875, ["type"] = 4},
{["lv"] = 28527,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = -1,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end     

function B()
  gg.toast('8.14.1')
  menu = gg.multiChoice({
	 "锁定子弹",---1
	 "武器间隔",---2
	 "穿墙射程",---3
	 "道具冷却",---4
	 "枪枪暴击",---5
	 "强制开门",---6
	 "锁定变身",---7
	 "移动开物",---8
	 "击倒队友",---9
	 "暗黑透视",---10
	 "明亮透视",---11
	 "雷达透视[大厅]",---12
	 "自动开锁",---13
	 "倒地不清buff",---14
	 "解锁角色",---15
	 "角色皮肤️",---16
	 "解锁道具",---17
	 "道具皮肤",---18
	 "道具520级",---19
	 "乱斗锁卡",---20
	 "解锁模式",
	 "子弹射程",
    "超级锁弹夹",
    "无后座",
    "秒杀",
    "不卡屏无间隔",
    "移动开物",
    "倒地丢道具",
    "道具无CD",
    "解锁模式",  
    "乱斗锁道具",
    "暗透",
    "局内改等级",
    "解锁道具皮肤",
    "解锁角色皮肤",
    "解锁角色",
	"返回主页"
},nil,"新版直装")
if menu == nil then else    end
if menu[1] == true then T1() end
if menu[2] == true then T2() end
if menu[3] == true then T3() end
if menu[4] == true then T4() end
if menu[5] == true then T5() end
if menu[6] == true then T6() end
if menu[7] == true then T7() end
if menu[8] == true then T8() end
if menu[9] == true then T9() end
if menu[10] == true then T10() end
if menu[11] == true then T11() end
if menu[12] == true then T12() end
if menu[13] == true then T13() end
if menu[14] == true then T14() end
if menu[15] == true then T15() end
if menu[16] == true then T16() end
if menu[17] == true then T17() end
if menu[18] == true then T18() end
if menu[19] == true then T19() end
if menu[20] == true then T20() end
if menu[21] == true then T21() end
if menu[22] == true  then poia1() end
if menu[23] == true  then poia2() end
if menu[24] == true  then poia3() end
if menu[25] == true  then poia4() end
if menu[26] == true  then poia5() end
if menu[27] == true  then poia6() end
if menu[28] == true  then poia7() end
if menu[29] == true  then poia8() end
if menu[30] == true  then poia9() end
if menu[31] == true  then poia10() end
if menu[32] == true  then poia11() end
if menu[33] == true  then poia12() end
if menu[34] == true  then poia13() end
if menu[35] == true  then poia14() end
if menu[36] == true  then poia15() end
if menu[37] == true then Main() end

XGCK=-1
end
function T1()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')

end
end
function poia1()--子弹射程
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF43B64},})
end




function poia2()--锁子弹
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end



	
function poia3()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end





function poia4()--秒杀
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x363fa94},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x363FA98},})
end



function poia5()--无间隔
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8C},})
end


function poia6()--移动开物
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1731454},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731458},})
end



function poia7()--倒地丢道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1F2EAC4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F2EAC8},})
end



function poia8()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1F34DFC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1F34E00},})
end




function poia9()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xFE2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},})
end

function poia10()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1E07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E0761C},})
end

function poia11()--暗透
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD705FC},})
end

function poia12()--改等级(目前改18)
nc_offset(getso("libil2cpp.so"),{{-476053486,4,0x1B3EC9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},})
end

function poi13()--道具全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1B5141C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B51420},})
end

function poi14()--角色全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xEA31D0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D4},})
end
function poi15()--解锁角色
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
end

function T2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end
function T3()
xb=gg.alert("穿墙射程","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},},'子弹穿墙射程开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xF45760},},'子弹穿墙射程关')
end
end
function T4()
xb=gg.alert("道具冷却","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},},'道具无冷开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1f312d0},},'道具无冷关')
end
end
function T5()
xb=gg.alert("枪枪暴击","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},},'枪枪暴击开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1b1895c},},'枪枪暴击关')
end
end
function T6()
xb=gg.alert("强制开门","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db674},},'强制开启逃生门开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x20db674},},'强制开启逃生门关')
end
end
function T7()
xb=gg.alert("锁定变身","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1886fa8},},'锁定变身开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1886fa8},},'锁定变身关')
end
end
function T8()
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end
function T9()
xb=gg.alert("击倒队友","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x114690c},},'击倒队友开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x114690c},},'击倒队友关')
end
end
function T10()
xb=gg.alert("暗黑透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70560},},'暗黑透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd70560},},'暗黑透视关')
end
end
function T11()
xb=gg.alert("明亮透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},},'明亮透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x101c518},},'明亮透视关')
end
end
function T12()
xb=gg.alert("雷达透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-301987312,4,0xd71c94},},'雷达透视开25%')
nc_offset(getso("libil2cpp.so"),{{-289928512,4,0xd71c98},},'雷达透视开50%')
nc_offset(getso("libil2cpp.so"),{{-300938736,4,0xd71c9C},},'雷达透视开75%')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd71cA0},},'雷达透视开90%')
nc_offset(getso("libil2cpp.so"),{{-486538264,4,0xd71c90},},'雷达透视开100%')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd71c90},},'雷达透视关25%')
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0xd71c94},},'雷达透视关%50')
nc_offset(getso("libil2cpp.so"),{{-442544008,4,0xd71c98},},'雷达透视关%75')
nc_offset(getso("libil2cpp.so"),{{-509591552,4,0xd71c9C},},'雷达透视关%90')
nc_offset(getso("libil2cpp.so"),{{-527478779,4,0xd71cA0},},'雷达透视关%100')
end
end
function T13()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb64},},'')
local Search_array = {
   {59.0, 16, 32, "自动开锁"},
   {16.0, 4, 16},
}
local Modifythe_array = {
   {99999, 4, 16, false}
}

LSQ_pointer(Search_array, Modifythe_array)
end
function T14()
xb=gg.alert("倒地不清buff","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12248},},'倒地不清buff开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1b12248},},'倒地不清buff关')
end
end
function T15()
xb=gg.alert("解锁角色","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA5158},},'解锁角色开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA5158},},'解锁角色关')
end
end
function T16()
xb=gg.alert("角色皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D0},},'角色全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA31D0},},'角色全皮关')
end
end
function T17()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},},'')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},},'解锁道具')
end

function T18()
xb=gg.alert("道具皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B5141C},},'道具全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0x1B5141C},},'道具全皮关')
end
end
function T19()
xb=gg.alert("道具520级","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-486538744,4,0x1B3EC9C},},'道具520级开启')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B3ECA0},},'道具520级开启')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-494030824,4,0x1B3EC9C},},'道具520级关闭')
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1B3ECA0},},'道具520级关闭')
end
end
function T20()
xb=gg.alert("乱斗锁卡","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'乱斗锁卡开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1E07618},},'乱斗锁卡')
end
end

function T21()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},},'解锁模式')
end

han={"🍓","🥳","😍","💛","⭐","🍀","😎","🍡","🎉","🔥","✨","💎","💫","💖","🍀"}
function C()
local han= han[math.random(1,#han)]
SN =gg.multiChoice({
"登录防闪",--1
"全图高亮",--2
"人物反伤",--3
"武器间隔",--4
"人物加速",--5
"人物高跳",--6
"极速回血",--7
"攻击吸血",--8
"无视护盾",--9
"无视夹子",--10
"角色技能",--11
"移动开物",--12
"击倒次数",--13
"营救次数",--14
"造成伤害",--15
"强制结算",--16
"道具无冷",--17
"武器秒杀",--18
"武器爆射",--19
"不死捐钱",--20
"角色冷却+免费",--21
"夹子全亮",--22
"追捕开锁",--23
"无限暴走",--24
"局内刷钱",--25
"倒地燃烧",--26
"倒地复活",--27
"人物爬墙",--28
"武器锁子",--29
"武器无后",--30
"丝血不死",--31
"人物无敌",--32
"追捕破盾",--33
"秒开一切",--34
"返回"
 },nil,os.date"")
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
if SN[16] == true then a199() end
if SN[17] == true then a16() end
if SN[18] == true then a17() end
if SN[19] == true then a18() end
if SN[20] == true then a19() end
if SN[21] == true then a20() end
if SN[22] == true then a22() end
if SN[23] == true then a23() end
if SN[24] == true then a24() end
if SN[25] == true then a25() end
if SN[26] == true then a26() end
if SN[27] == true then a27() end
if SN[28] == true then a28() end
if SN[29] == true then a29() end
if SN[30] == true then a30() end
if SN[31] == true then a31() end
if SN[32] == true then a32() end
if SN[33] == true then a33() end
if SN[34] == true then a34() end
if SN[35] == true then HOME() end
end
FX1=0
end


function a34()
qmnb = {
      {["memory"] = 32},
      {["name"] = "秒开一切"},
      {["value"] = 4489188110528151552, ["type"] = 32},
      {["lv"] = 256, ["offset"] = 20, ["type"] = 4},
      {["lv"] = 100, ["offset"] = 24, ["type"] = 4},
    }
    qmxg = {
    {["value"] = 1, ["offset"] = 88, ["type"] = 4, ["freeze"] = true},
    {["value"] = 122879, ["offset"] = 92, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)
end

function a32()
qmnb = {
{["memory"] = 32},
{["name"] = "人物无敌"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 100.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end

function a33()
qmnb = {
{["memory"] = 32},
{["name"] = "追捕破盾"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 156, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end


function a31()
qmnb = {
{["memory"] = 32},
{["name"] = "丝血不死"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end


function a30()
qmnb = {
{["memory"] = 32},
{["name"] = "无后座"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
{["value"] = 1, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function a29()
qmnb = {
{["memory"] = 32},
{["name"] = " 锁子弹"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -8, ["type"] = 16, ["freeze"] = false},
{["value"] = 1.0, ["offset"] = -4, ["type"] = 16, ["freeze"] = false},
{["value"] = 3.0, ["offset"] = 0, ["type"] = 16, ["freeze"] = false},
{["value"] = 1, ["offset"] = 44, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function a28()
qmnb = {
{["memory"] = 16384},
{["name"] = "人物爬墙"},
{["value"] = -321.125, ["type"] = 16},
{["lv"] = 0.949999988079071, ["offset"] = 140, ["type"] = 16},
}
qmxg = {
{["value"] = -1, ["offset"] = 140, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end



function a27()
qmnb = {
      {["memory"] = 32},
      {["name"] = "倒地复活"},
      {["value"] = 4575657222537216000, ["type"] = 32},
      {["lv"] = 1050253722, ["offset"] = -16, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 100, ["offset"] = -20, ["type"] = 16},
      {["value"] = 100, ["offset"] = -24, ["type"] = 16},
    }
    xqmnb(qmnb)
    end
    
    
function a26()
qmnb = {
{["memory"] = 32},
{["name"] = "倒地直接燃烧"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a25()
qc=gg.alert("无限刷钱","4v1","8v2")
if qc==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "41锁"},
{["value"] = 4489188110528151552, ["type"] = 32},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
{["lv"] = 100, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 1, ["offset"] = 88, ["type"] = 4},
{["value"] = 122879, ["offset"] = 92, ["type"] = 4},
}
xqmnb(qmnb)
end

if qc==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "82锁"},
{["value"] = 4489188110532608000, ["type"] = 32},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
{["lv"] = 100, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 1, ["offset"] = 88, ["type"] = 4},
{["value"] = 184319, ["offset"] = 92, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function a24()
qmnb = {
{["memory"] = 32},
{["name"] ="追捕无限暴走️"},
{["value"] =4787326404979064832, ["type"] = 32},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
 }
qmxg = {
{["value"] =10, ["offset"] = 28, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end

function a23()
qmnb = {
{["memory"] = 16384},
{["name"] = "追捕开锁"},
{["value"] = 75900672, ["type"] = 4},
{["lv"] = 75900652, ["offset"] = 4, ["type"] = 4},
{["lv"] = -382908368, ["offset"] = 8, ["type"] = 4},
{["lv"] = -494030840, ["offset"] = 12, ["type"] = 4},
{["lv"] = -442544040, ["offset"] = 16, ["type"] = 4},
{["lv"] = -509591552, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = -516948194, ["offset"] = 12, ["type"] = 4, ["freeze"] = false},
{["value"] = -476053503, ["offset"] = 8, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end


function a22()
qmnb = {
{["memory"] = 32},
{["name"] = "显示夹子"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 250,["offset"] =-12, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function a199()--
qmnb = {
{["memory"] = 32},
{["name"] = "强制结算"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function a20()--
qmnb = {
{["memory"] = 32},
{["name"] = "独家a内存全角色技能无冷+免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function a19()--
qmnb = {
{["memory"] = 32},
{["name"] = "不死捐钱"},
{["value"] = 37, ["type"] = 4},
{["lv"] = -1,["offset"] =8, ["type"] = 4},
{["lv"] = 0,["offset"] =16, ["type"] = 4},
{["lv"] = -1,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = 1,["offset"] =16, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
function a18()--武器爆射
qmnb = {
      {["memory"] = 32},
      {["name"] = "武器爆射"},
      {["value"] = 18293456896, ["type"] = 32},
      {["lv"] = 4579260101969313793, ["offset"] = 8, ["type"] = 32},
      {["lv"] = 4629700418003061965, ["offset"] = 12, ["type"] = 32},
      {["lv"] = 4539628425467396096, ["offset"] = 16, ["type"] = 32},
    }
    qmxg = {
    {["value"] = 4579260101969313892, ["offset"] = 8, ["type"] = 32},    
    }
    xqmnb(qmnb)
end

function a1()--登录防闪
qmnb = {
{["memory"] = 8},
{["name"] = "登录防闪"},
{["value"] = 778923875, ["type"] = 4},
{["lv"] = 28527,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = -1,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end     

function a2()
qmnb = {
{["memory"] = 32},
{["name"] = "全图高亮"},
{["value"] = 8.0, ["type"]=16},
{["lv"] = 4,["offset"]=-4, ["type"]=4},
{["lv"] = 1,["offset"]=8, ["type"]=4},
{["lv"] = 8,["offset"]=12, ["type"]=4},
}
qmxg = {
{["value"] = 1, ["offset"] = 46, ["type"] = 4, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a3()
qmnb = {
{["memory"] = 32},
{["name"] = "人物反伤"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 176, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a4()
qmnb = {
{["memory"] = 32},
{["name"] = "武器间隔"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 120, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a5()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 112, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a6()
qmnb = {
{["memory"] = 32},
{["name"] = "人物高跳"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 124, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "极速回血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 144, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a8()
qmnb = {
{["memory"] = 32},
{["name"] = "攻击吸血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 148, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a9()
qmnb = {
{["memory"] = 32},
{["name"] = "无视护盾"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 156, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function a10()
qmnb = {
{["memory"] = 32},
{["name"] = "无视夹子"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =8, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a11()
qmnb = {
{["memory"] = 32},
{["name"] = "角色技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 1581114487,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 0.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a12()
qmnb = {
{["memory"] = 32},
{["name"] = "移动开物"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = -1.5,["offset"] =4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =44, ["type"] = 16},
{["lv"] = 1.0,["offset"] =48, ["type"] = 16},
{["lv"] = -1.0,["offset"] =52, ["type"] = 16},
{["lv"] = 0.5,["offset"] =92, ["type"] = 16},
{["lv"] = 1.0,["offset"] =96, ["type"] = 16},
{["lv"] = -1.0,["offset"] =100, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =144, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a13()
qmnb = {
{["memory"] = 32},
{["name"] = "击倒次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =68, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a14()
qmnb = {
{["memory"] = 32},
{["name"] = "营救次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a15()
qmnb = {
{["memory"] = 32},
{["name"] = "造成伤害"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =48, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a16()
qmnb = {
{["memory"] = 32},
{["name"] = "道具无冷"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 1.0,["offset"] =12, ["type"] = 16},
{["lv"] = 1.0,["offset"] =16, ["type"] = 16},
{["lv"] = 1.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.0,["offset"] =24, ["type"] = 16},
}
xqmnb(qmnb)
end

function a17()
qmnb = {
{["memory"] = 32},
{["name"] = "武器秒杀"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 1.0, ["offset"] = 136, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function D()
menu = gg.choice({
    "8v2传送",
    "4v1传送",
    "大乱斗传送",
    "返回"
  }, 0, "不要乱传送哦")
  if menu == 1 then
    n1()
  end
  if menu == 2 then
    n2()
  end
  if menu == 3 then
    n3()
  end
  if menu == 4 then
    Main()
  end
  GLWW = -1
end
function n1()
  menu1 = gg.multiChoice({
    "😎出生点😎",
    "😎禁闭室😎",
    "😎逃生点😎",
    "😎锁1😎",
    "😎锁2😎",
    "😎锁3😎",
    "😎锁4😎",
    "😎锁5😎",
    "😎锁6😎",
    "😎锁7😎",
    "😎锁8😎",
    "😎锁9😎",
    "😎锁10😎",
    "😎上门😎",
    "😎中门😎",
    "😎下门😎",
    "一键锁位[配合移动开物]",
    "返回"
  }, nil, os.date("8v2传送"))
  if menu1[1] == true then
    na1()
  end
  if menu1[2] == true then
    na2()
  end
  if menu1[3] == true then
    na3()
  end
  if menu1[4] == true then
    na4()
  end
  if menu1[5] == true then
    na5()
  end
  if menu1[6] == true then
    na6()
  end
  if menu1[7] == true then
    na7()
  end
  if menu1[8] == true then
    na8()
  end
  if menu1[9] == true then
    na9()
  end
  if menu1[10] == true then
    na10()
  end
  if menu1[11] == true then
    na11()
  end
  if menu1[12] == true then
    na12()
  end
  if menu1[13] == true then
    na13()
  end
  if menu1[14] == true then
    na14()
  end
  if menu1[15] == true then
    na15()
  end
  if menu1[16] == true then
    na16()
  end
  if menu1[17] == true then
    na17()
  end
  if menu1[18] == true then
    Main()
  end
  GLWW = -1
end

function na1()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      4.79341316223,
      -212,
      16
    },
    {
      4.50854158401,
      -204,
      16
    }
  })
end

function na2()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      43.43095779419,
      -212,
      16
    },
    {
      19.70534706116,
      -204,
      16
    }
  })
end

function na3()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      86.59527587891,
      -212,
      16
    },
    {
      38.43141555786,
      -204,
      16
    }
  })
end

function na4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      8.40417480469,
      -212,
      16
    },
    {
      30.41175842285,
      -204,
      16
    }
  })
end

function na5()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.5557384491,
      -212,
      16
    },
    {
      35.01443862915,
      -204,
      16
    }
  })
end

function na6()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      40.48873519897,
      -212,
      16
    },
    {
      28.41207695007,
      -204,
      16
    }
  })
end

function na7()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      56.48946380615,
      -212,
      16
    },
    {
      35.36185073853,
      -204,
      16
    }
  })
end

function na8()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.46974754333,
      -212,
      16
    },
    {
      19.14470291138,
      -204,
      16
    }
  })
end

function na9()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.46561813354,
      -212,
      16
    },
    {
      16.30953407288,
      -204,
      16
    }
  })
end

function na10()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      84.58843231201,
      -212,
      16
    },
    {
      10.42553901672,
      -204,
      16
    }
  })
end

function na11()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      34.43569946289,
      -212,
      16
    },
    {
      5.32143163681,
      -204,
      16
    }
  })
end

function na12()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      50.61042404175,
      -212,
      16
    },
    {
      2.46119451523,
      -204,
      16
    }
  })
end

function na13()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      69.50844573975,
      -212,
      16
    },
    {
      5.45300483704,
      -204,
      16
    }
  })
end

function na4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      65.45124053955,
      -212,
      16
    },
    {
      33.24272537231,
      -204,
      16
    }
  })
end

function na15()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      72.46097564697,
      -212,
      16
    },
    {
      22.39505767822,
      -204,
      16
    }
  })
end

function na16()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      80.53405761719,
      -212,
      16
    },
    {
      18.30999183655,
      -204,
      16
    }
  })
end

function na17()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      8.40417480469,
      -212,
      16
    },
    {
      30.41175842285,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.5557384491,
      -212,
      16
    },
    {
      35.01443862915,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      40.48873519897,
      -212,
      16
    },
    {
      28.41207695007,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      56.48946380615,
      -212,
      16
    },
    {
      35.36185073853,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.46974754333,
      -212,
      16
    },
    {
      19.14470291138,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.46561813354,
      -212,
      16
    },
    {
      16.30953407288,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      84.58843231201,
      -212,
      16
    },
    {
      10.42553901672,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      34.43569946289,
      -212,
      16
    },
    {
      5.32143163681,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      50.61042404175,
      -212,
      16
    },
    {
      2.46119451523,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      69.50844573975,
      -212,
      16
    },
    {
      5.45300483704,
      -204,
      16
    }
  })
    fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      72.46097564697,
      -212,
      16
    },
    {
      22.39505767822,
      -204,
      16
    }
  })
end
function n2()
  menu1 = gg.multiChoice({
    "😎出生点😎",
    "😎禁闭室😎",
    "😎逃生点😎",
    "😎左上锁😎",
    "😎左下锁😎",
    "😎右上锁😎",
    "😎右下锁😎",
    "😎上门😎",
    "😎下门😎",
    "😎一键锁位😎",
    "返回"
  }, nil, "4v1传送")
  if menu1[1] == true then
    nb1()
  end
  if menu1[2] == true then
    nb2()
  end
  if menu1[3] == true then
    nb3()
  end
  if menu1[4] == true then
    nb4()
  end
  if menu1[5] == true then
    nb5()
  end
  if menu1[6] == true then
    nb6()
  end
  if menu1[7] == true then
    nb7()
  end
  if menu1[8] == true then
    nb8()
  end
  if menu1[9] == true then
    nb9()
  end
  if menu1[10] == true then
    nb10()
  end
  if menu1[11] == true then
    Main()
  end
  GLWW = -1
end

function nb1()
  fastsearch({
    {
      0.3749999702,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      3.31672906876,
      -212,
      16
    },
    {
      15.10242652893,
      -204,
      16
    }
  })
end

function nb2()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      41.2279510498,
      -212,
      16
    },
    {
      15.20110321045,
      -204,
      16
    }
  })
end

function nb3()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      80.47306060791,
      -212,
      16
    },
    {
      15.10242652893,
      -204,
      16
    }
  })
end

function nb4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      24.47529602051,
      -212,
      16
    },
    {
      25.74204444885,
      -204,
      16
    }
  })
end

function nb5()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.52613067627,
      -212,
      16
    },
    {
      2.29943323135,
      -204,
      16
    }
  })
end

function nb6()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.20668029785,
      -212,
      16
    },
    {
      24.98922157288,
      -204,
      16
    }
  })
end

function nb7()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      55.20252609253,
      -212,
      16
    },
    {
      3.50737595558,
      -204,
      16
    }
  })
end

function nb8()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      75.47306060791,
      -212,
      16
    },
    {
      19.40088844299,
      -204,
      16
    }
  })
end

function nb9()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      75.5991897583,
      -212,
      16
    },
    {
      10.4521522522,
      -204,
      16
    }
  })
end

function nb10()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      24.47529602051,
      -212,
      16
    },
    {
      25.74204444885,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      25.52613067627,
      -212,
      16
    },
    {
      2.29943323135,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      58.20668029785,
      -212,
      16
    },
    {
      24.98922157288,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      55.20252609253,
      -212,
      16
    },
    {
      3.50737595558,
      -204,
      16
    }
  })
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      -10,
      -152,
      16
    }
  }, {
    {
      75.47306060791,
      -212,
      16
    },
    {
      19.40088844299,
      -204,
      16
    }
  })
end

function n3()
  menu1 = gg.multiChoice({
    "boss房",
    "教堂处",
    "海盗船",
    "C字楼",
    "返回"
  }, nil, os.date("乱斗传送"))
  if menu1[1] == true then
    nd1()
  end
  if menu1[2] == true then
    nd2()
  end
  if menu1[3] == true then
    nd3()
  end
  if menu1[4] == true then
    nd4()
  end
  if menu1[5] == true then
    Main()
  end
  GLWW = -1
end

function nd1()
  fastsearch({
    {
      0.3749999702,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      66.4966506958,
      -212,
      16
    },
    {
      55.80109786987,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end

function nd2()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      95.24781799316,
      -212,
      16
    },
    {
      19.73115158081,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end

function nd3()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      69.37117767334,
      -212,
      16
    },
    {
      24.43232536316,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end

function nd4()
  fastsearch({
    {
      0.37499997023,
      16,
      32
    },
    {
      1111752704,
      -132,
      4
    }
  }, {
    {
      44.47694778442,
      -212,
      16
    },
    {
      81.638671875,
      -204,
      16
    },
    {
      3,
      -208,
      16,
      false
    }
  })
end
function E()
UI = "E"
local menu = gg.multiChoice({
"三倍开锁",
"无视破译",
"完美开锁",
"人物移速",
"人物穿墙",
"无视架子",
"人物爬墙",
"人物明透",
"倒地复活",
"人物高跳",
"范围锁门",
"逃生一套",
"移动开物",
"稳定a内存无间隔",
"️返回主页️",
}, nil, "打榜功能")
if menu then
for i in pairs(menu) do
_ENV[({"s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","s12","s13","s14","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function s1()
qmnb = {
{["memory"] = 32},
{["name"] = "加速开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function s2()
qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function s3()
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function s4()
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function s5()
fastsearch({
     {-10, 16, 32},
     {49.0, 20, 16}, 
   }, {
      {999999, 0, 16, false},
   },"人物穿墙")
end

function s6()
   fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
end

function s7()
  fastsearch({
     {-7.16145954789978E24,16,16384},
     {0.949999988079071, 4, 16}, 
     {4.379627278394057E-36, 8, 16}, 
   }, {
      {-1, 4, 16, false},
   },"人物爬墙")
end

function s8()
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function s9()
   fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end



function s10()
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function s11()
fastsearch({{1.2999999523162842, 16, 32}, {1.2999999523162842, 4, 16}, {1.0, 8, 16}}, {{5, 0, 16, false}, {5, 4, 16, false}})
end

function s12()
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
	 




qmnb = {
{["memory"] = 32},
{["name"] = "穿墙"},
{["value"] = -10.0, ["type"] = 16},
{["lv"] = 49.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4453159313486957773, ["type"] = 32},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 7,["offset"] =0, ["type"] = 16},
{["value"] = 15,["offset"] =-16, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.59999990463;3.0;200.0;5.0;0.10000000149;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_FLOAT)
	 gg.toast("皮卡加速")
	 gg.clearResults()
	
qmnb = {
{["memory"] = 32},
{["name"] = "开锁范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 4.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)



qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}



qmnb = {
{["memory"] = 32},
{["name"] = "透视"},
{["value"] = 4575657222484262912, ["type"] = 32},
{["lv"] = 1090519040, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1094713344, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 1112014848, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)


qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1128792064, ["type"] = 32},
{["lv"] = 1067030938, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 1082130432, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end

function s13()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x17C0AF0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17C0AF4},})
end
function s14()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "注入成功\n要不要菠萝\n要不要菠萝\n要不要菠萝")
end
function getso(So_name)
	return gg.getRangesList(So_name)[1].start
end

function BaAdd(add)
	t = gg.getValues({[1] = {address = add, flags = 4}})
	return t[1].value & 0xFFFFFFFF
end
function readPointer(Add, Item)
	for i = 1, (#Item - 1) do
		Add = BaAdd(Add + Item[i])
	end
	return Add + Item[#Item]
end
function setvalue(add, value, falgs, dj)
	local WY = {}
	WY[1] = {}
	WY[1].address = add
	WY[1].value = value
	WY[1].flags = falgs
	if dj == true then
		WY[1].freeze = true
		gg.addListItems(WY)
	else
		gg.setValues(WY)
	end
end
function getnc(Name, nc)
	local t = gg.getRangesList(Name)
	for i, v in ipairs(t) do
		if v.state == nc then
			return v.start
		end
	end
end
function F()
gg.alert("初始化")
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc61f00},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x36f4f7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x36f4f7c},})
gg.alert("XA")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,700,929,651;1,065,353,216;1,048,576,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,700,929,651", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("XA1")
	 gg.clearResults()
	 if gg.getRangesList("libunity.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libunity.so")[1]["start"] + 0xA7D3A0; -- 数值地址:0xBE9C83A0
	t[2] = gg.getRangesList("libunity.so")[1]["start"] + 0xE277A0; -- 数值地址:0xBED727A0
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("XA2")
end
if gg.getRangesList("libbrms.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libbrms.so")[1]["start"] + 0x137F68; -- 数值地址:0x8D187F68
	t[2] = gg.getRangesList("libbrms.so")[1]["start"] + 0x137F74; -- 数值地址:0x8D187F74
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("XA3")
end
if gg.getRangesList("libbootstrap.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x8AC34; -- 数值地址:0xBF3D4C34
	t[2] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x8AC40; -- 数值地址:0xBF3D4C40
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("XA4")
end
gg.alert("独家防封[秒开但是多可能有点慢]")
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9acc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9ae4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9af4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b08},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b20},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b30},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b48},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b64},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x9f9b80},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8dc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe8a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe89c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe888},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe858},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe83c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe828},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe808},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe73c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe74c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe778},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe908},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c39ef0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d09a84},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1ce88},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d1d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d39284},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d3d860},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4d42684},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4daf700},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e025a4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e02684},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e14578},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e289f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28bdc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e28d40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e44f1c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x3928},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x5270},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x1a8d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x24af4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042b3c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4042c84},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x47d1278},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x47ebf7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4827b5c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c2799c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x3472788},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x1ae2dfc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x485e100},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x497e004},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x497fa78},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e45bac},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfeaa8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6fc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe70c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe728},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe738},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe748},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe75c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe76c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe788},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe798},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe7bc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe878},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe968},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe978},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea68},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea6c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea78},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea88},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea8c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea98},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfea9c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x3704fd4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4c32d80},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x259a80c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4208},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4218},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4228},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4238},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4248},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4258},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4268},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4278},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4288},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4298},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de42f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4308},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4318},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4328},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4338},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4348},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4358},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4368},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4378},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4388},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4398},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de43b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6bc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6dc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4dfe6f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40f8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4108},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4118},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4128},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de412c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4138},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de413c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4148},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de414c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de415c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4168},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4178},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4188},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4198},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de41c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3ff8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4008},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4018},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4028},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4038},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4048},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4058},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4068},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4078},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4088},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de4098},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40a8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40b8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de40d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x50e4a0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d1d8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x488d224},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x489da70},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48a19c4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48ab4ec},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48af3c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48c8184},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48def40},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x48e80d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fd8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4de3fe8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e2d2e8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e12544},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e123c0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e463cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46230},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46430},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0d1e0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0e830},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0e894},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e0ef28},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e10130},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e10174},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e11698},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1175c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e118c0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e11a98},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e1213c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e121f0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e46ce0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e464c8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{0,4,0x4e4647c},})--要不要菠萝
gg.alert("独家防检测")
--↓独家防检
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,712,962", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,037,110", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,968,111,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,217,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,967,661,159", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,967,661,157", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,967,661,156", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,151,534", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,430,572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,003,788,832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,422,437", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,235,247", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,236,515", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,708,897", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,627,244", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
gg.clearResults()
	 gg.setRanges(16384)
gg.searchNumber("1,970,040,662", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,779,744", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,684,512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,236,793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,003,136,032", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,234,368", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,234,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,158,138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,984,168,047", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,627,257", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,967,350,894", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,368,932", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,003,727,714", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,970,237,984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,365,092", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,003,791,467", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,969,514,504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("注入成功\n\n开始奔放")
	 gg.clearResults()
gg.alert("与服务器断开连接防")
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfdb3d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdb3d8},})--要不要菠萝
gg.alert("新版大厅防")
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9887cc},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9887d0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x98985c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989860},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9896d0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9896d4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x98917c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989180},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989df0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989df4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989038},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x98903c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x988da4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x988da8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989b8c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989b90},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x98a440},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x98a444},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x989f7c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x989f80},})--要不要菠萝
--防各种检测
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eee08c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eee090},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eeeb9c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eeeb9c+4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eec530},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eec534},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eed36c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eed370},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eea2f0},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eea2f4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eea100},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eea104},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eee570},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eee574},})--要不要菠萝
--无视弹窗
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3820},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3824},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3da8},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3da8+4},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3b0c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3b10},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e341c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e3420},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e3158},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e315c},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e2e34},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e2e38},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9e2b04},})--要不要菠萝
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9e2b08},})--要不要菠萝
end
function G()
menu1 = gg.multiChoice({
"强制对友准备",
"老版大厅",
"皮肤美化(游戏内)",
"优化战绩",
"箱子",
"普通功能",
"所有变身无间隔",
"改服装颜色",
"局内改等级",
"队友头上有箭头",
"",
"️返回上一页",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then xz1() end
if menu1[2] == true then xz2() end
if menu1[3] == true then xz3() end
if menu1[4] == true then xz4() end
if menu1[5] == true then xxz5() end
if menu1[6] == true then xxz6() end
if menu1[7] == true then xxz7() end
if menu1[8] == true then xxz8() end
if menu1[9] == true then xxz9() end
if menu1[10] == true then xxz10() end
if menu1[11] == true then xxz11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end


function xz1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xd74284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd74288},})
gg.toast("强制队友准备")
end

function xz2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x100b680},})
gg.toast("老版大厅")
end

function xz3()
fastsearch
({
{500001,4,32},
},
{{601211,0,4,false}})
fastsearch
({
{500002,4,32},
},
{{600231,0,4,false}})
fastsearch
({
{500003,4,32},
},
{{600251,0,4,false}})
fastsearch
({
{500004,4,32},
},
{{600266,0,4,false}})
fastsearch
({
{500005,4,32},
},
{{602006,0,4,false}})
fastsearch
({
{500007,4,32},
},
{{601981,0,4,false}})
fastsearch
({
{500008,4,32},
},
{{602026,0,4,false}})
fastsearch
({
{500200,4,32},
},
{{600216,0,4,false}})
fastsearch
({
{500300,4,32},
},
{{600181,0,4,false}})
fastsearch
({
{500400,4,32},
},
{{601986,0,4,false}})
fastsearch
({
{500500,4,32},
},
{{600161,0,4,false}})
fastsearch
({
{500600,4,32},
},
{{600331,0,4,false}})
fastsearch
({
{500700,4,32},
},
{{650081,0,4,false}})
fastsearch
({
{500800,4,32},
},
{{601061,0,4,false}})
fastsearch
({
{500900,4,32},
},
{{650131,0,4,false}})
fastsearch
({
{501000,4,32},
},
{{650141,0,4,false}})
fastsearch
({
{501100,4,32},
},
{{600751,0,4,false}})
fastsearch
({
{501200,4,32},
},
{{602051,0,4,false}})
fastsearch
({
{501300,4,32},
},
{{600701,0,4,false}})
fastsearch
({
{501400,4,32},
},
{{602056,0,4,false}})
fastsearch
({
{501500,4,32},
},
{{602061,0,4,false}})
fastsearch
({
{501600,4,32},
},
{{601331,0,4,false}})
fastsearch
({
{501700,4,32},
},
{{650776,0,4,false}})
fastsearch
({
{501800,4,32},
},
{{601931,0,4,false}})
fastsearch
({
{501900,4,32},
},
{{601566,0,4,false}})
fastsearch
({
{502000,4,32},
},
{{601571,0,4,false}})
fastsearch
({
{502100,4,32},
},
{{650666,0,4,false}})
fastsearch
({
{502200,4,32},
},
{{650691,0,4,false}})
fastsearch
({
{500010,4,32},
},
{{650756,0,4,false}})
fastsearch
({
{500020,4,32},
},
{{600881,0,4,false}})
fastsearch
({
{500030,4,32},
},
{{600646,0,4,false}})
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
fastsearch
({
{500050,4,32},
},
{{650511,0,4,false}})
fastsearch
({
{500060,4,32},
},
{{650636,0,4,false}})
fastsearch
({
{500070,4,32},
},
{{650741,0,4,false}})
fastsearch
({
{502300,4,32},
},
{{650751,0,4,false}})
fastsearch
({
{500090,4,32},
},
{{650781,0,4,false}})
end




function xz4()
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function xz6()
fastsearch({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}})
end
function xz7()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x118aa08},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x118aa0c},})
end
function xz8()
a=gg.prompt({"1 绿色 2红色 3白色黑色"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0x1ced84c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ced850},})
end
function xz9()
a=gg.prompt({"输入想改的等级"})
function getso(So_name) return gg.getRangesList(So_name)[1].start end
nc_offset(getso("libil2cpp.so"),{{-476053504+a[1],4,0xd4d630},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d634},})
end
function xz10()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd5cdbc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd5cdd0},})
end
function H()
menu1 = gg.multiChoice({
'吼吼号实体变身',
'阻挡箱实体变身',
'跳高实体变身',
'疾跑实体变身',
'皮卡实体变身',
'滑板实体变身',
'返回主页'},
nil,"实体变身~有些会吞金币")
if menu1 == nil then else
if menu1[1] == true then bba1() end
if menu1[2] == true then bba2() end
if menu1[3] == true then bba3() end
if menu1[4] == true then bba4() end
if menu1[5] == true then bba5() end
if menu1[6] == true then bba6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end
function bba1()
QQ=gg.prompt({"输入变身代码↓70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})end
function bba2()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function bba3()
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function bba4()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function bba5()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) QQ=gg.prompt({"输入变身代码70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{101,28,4}},{{QQ[1],8,4,false}})end
function bba6()
QQ=gg.prompt({"输入变身代码↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) end
function K()
menu1 = gg.multiChoice({
"Buff初始化<必须开>",
"酒桶全屏+无敌",
"疾跑改无敌",
"跳高改暴走",
"疾跑改buff[自调]",
"疾跑改随机buff",
"疾跑改boss无敌",
"跳高改提升攻速[无限时长]",
}, nil, os.date("道具BUFF功能"))
if menu1 == nil then else
if menu1[1] == true then bf1() end
if menu1[2] == true then bf2() end
if menu1[3] == true then bf3() end
if menu1[4] == true then bf4() end
if menu1[5] == true then bf5() end
if menu1[6] == true then bf6() end
if menu1[7] == true then bf7() end
if menu1[8] == true then bf8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end

function bf1()
qc=gg.alert("Buff初始化\n温馨提示：打完一局关掉第二局再开，否则会有BUG！","开启","关闭")
if qc==1 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
gg.toast("Buff初始化开启成功")
gg.clearResults()
end
if qc==2 then 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
gg.toast("Buff初始化关闭成功")
gg.clearResults()
end
end


function bf2()
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶全屏+无敌"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 99.0,["offset"] =-4, ["type"] = 16},
{["value"] = 107,["offset"] =136, ["type"] = 4},
}
xqmnb(qmnb)
end

function bf3()--疾跑改无敌
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑改无敌"},
{["value"] = 106147, ["type"] = 4},
{["lv"] = 6750208, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 12, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 16, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 19660800, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end

function bf4()--跳高改暴走
qmnb = {
{["memory"] = 32},
{["name"] = "跳高改暴走"},
{["value"] = 408, ["type"] = 4},
{["lv"] = 26112, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = -256, ["offset"] = 12, ["type"] = 4},
{["lv"] = 255, ["offset"] = 16, ["type"] = 4},
{["lv"] = 256, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 28416, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end


function bf5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end

function bf6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7,012,352", gg.TYPE_DWORD)
	 gg.toast("疾跑随机buff")
	 gg.getResults(999999)
  while true do
      gg.editAll("19,660,800", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,208,960", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,684,672", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,274,496", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,143,424", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,553,600", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,077,888", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("13,500,416", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("7,012,352", gg.TYPE_DWORD)
    gg.sleep(205)
    gg.editAll("6,750,208", gg.TYPE_DWORD)
    gg.sleep(205)
  end
end


function bf7()
gg.setRanges(32)
gg.searchNumber("106147;103W", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("103", 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", 2)
gg.toast("开启成功")
end


function bf8()
gg.setRanges(32)
gg.searchNumber("408;26112::5", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26112", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("130304", 4)
	 gg.toast("开启成功")
end
function L()
B = gg.multiChoice({
     "狐狸免费无冷",--1
	 "狐狸加血减血",--2
     "狐狸长度时间",--3
     "奥博免费无冷",--4
     "奥博范围伤害",--5
     "奥博电击时间",--6
     "团子免费无冷",--7
	 "团子技能变身",--8
     "影者免费数量",--9
     "影者全屏范围",--10
     "影者瞬移时间",--11
     "命石免费无冷",
     "命石抱摔距离",
     "命石抱摔冲刺",
     "命石锁定抱摔",
     "水忍免费数量",
     "圣女超级普攻",
     "圣女技能全图",
     "盾卫超级普攻",
     "盾卫技能免费",
     "艾克免费数量",
     "艾克全屏buff",
     "艾克技能伤害",
     "返回主页",
 },nil,"")
  if B == nil then
  else
  if B[1] == true then
    B1()
  end
  if B[2] == true then
    B2()
  end
  if B[3] == true then
    B3()
  end
  if B[4] == true then
    B4()
  end
  if B[5] == true then
    B5()
  end
  if B[6] == true then
    B6()
  end
  if B[7] == true then
    B7()
  end
  if B[8] == true then
    B8()
  end
  if B[9] == true then
    B9()
  end
  if B[10] == true then
    B10()
  end
  if B[11] == true then
    B11()
  end
  if B[12] == true then
    B12()
  end
  if B[13] == true then
    B13()
  end
  if B[14] == true then
    B14()
  end
  if B[15] == true then
    B15()
  end
  if B[16] == true then
    B16()
  end
  if B[17] == true then
    B17()
  end
  if B[18] == true then
    B18()
  end
  if B[19] == true then
    B19()
  end
  if B[20] == true then
    B20()
  end
  if B[21] == true then
    B21()
  end
  if B[22] == true then
    B22()
  end
  if B[23] == true then
    B23()
  end
  if B[24] == true then
    Main0()
end
end
XGCK =-2
while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   JJ5()
  end
end
end
function B1()
fastsearch({{-934560717,4,32},{1581114487,4,4},{0,8,4}},{{0,-32,4,true},{0,-36,4,false}})
end
function B2()
MM=gg.prompt({"输入加血或者扣血数字(可进行多次修改)↓"},{[1]=""})
fastsearch({{-1035468800,4,32},{1065353216,4,4},{1065353216,148,4}},{{-MM[1],96,16,true}})
gg.toast("成功修改"..MM[1].."血量")
end
function B3()
fastsearch({{10, 16, 32}, {6, 4, 16}, {5, 8, 16}, {10, 12, 16}}, {{9999, 0, 16},{999,4,16},{0,8,16},{99,12,16,false}})
end
function B4()
fastsearch({{-934560717,4,32},{1090519040,-36,4}},{{0,-32,4,true},{0,-36,4,false}})
end
function B5()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,76,16,false}})
end
function B6()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end
function B7()
fastsearch({{-934560717,4,32},{1092616192,-36,4}},{{0,-32,4},{0,-36,4,false}})
end					
function B8()
QQ=gg.prompt({"迪迦--1\n赛罗--2\n泽塔--3\n输入奥特曼代码(可进行多次修改)↓"},{[1]=""})
fastsearch({{1.29999995232,16,32},{1069547520,-4,4},{1045220557,-20,4}},{{QQ[1]+50000,-8,4,false}})
end
function B9()--缈技能
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{99999,-40,4},{0,-32,4,false}})
end
function B10()--缈范围
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{99,84,16,false}})
end
function B11()--缈落地
fastsearch({{-934560717,4,32},{1581114487,4,4},{2,8,4}},{{0,88,4},{9999,92,16,false}})
end
function B12()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end
function B13()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{10,-100,16},{99,-96,16,false}})
end
function B14()
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{20, 16, 16, false}})
end
function B15()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{1.40129846e-45,-268,16,true}})
end
function B16()
fastsearch
({{1581114487,4,32},
{-934560717,-4,4},
{1,100,4}},
{{9999,-44,4},
{0,-40,4},
{0,-36,4},
{1314520,4,4},
{0.1,64,16,false}})
end
function B17()
fastsearch({
{1050253722,4,32},
{1089470464,4,4},
{0,-8,4}
},{
{0,-4,4},
{0,8,4},
{520,28,4,true},
{520,36,4,true},
})
end
function B18()
fastsearch({
{1581114487,4,32},
{-934560717,-4,4},
{0,4,4}
},{
{0,-36,4},
{0,-40,4},
{99,20,16},
{0,24,4},
{9999,60,4,false}
})
end
function B19()
fastsearch({
{1092616192,4,32},
{1065353216,-40,4},
{0,-4,4},
{256,-80,4}
},{
{0,4,4},
{666,24,4,true},
{666,32,4,true},
{0,148,4,true}
})
end
function B20()
fastsearch({
{1581114487,4,32},
{-934560717,-4,4},
{0,4,4},
{0,-8,4}
},{
{0,-36,4},
{0,-40,4,false}
})
fastsearch({
{-934560717,4,32},
{1086324736,72,4},
{1,68,4}
},{
{0,84,4,false}
})
end
function B21()
fastsearch
({{1581114487,4,32},
{-934560717,-4,4},
{0,-8,4}
,{0,20,4}},
{{0,-36,4},
{9999,-44,4,false}})
end
function B22()
local NN=gg.prompt({"请输入需要修改的buff↓"},{[1]=""})
fastsearch
({{1581114487,4,32},
{-934560717,-4,4},
{0,-8,4},
{0,20,4}},
{{0.05,104,16},
{0,108,4},
{99,84,16},
{NN[1],88,4,false}})
end
function B23()
local ZZ=gg.prompt({"请输入需要修改的伤害↓"},{[1]=""})
fastsearch
({{1581114487,4,32},
{-934560717,-4,4},
{0,-8,4},
{0,20,4}},
{{ZZ[1],96,16},
{0.05,104,16},
{0,108,4},
{0,112,4,false}})
end
function M()
UI = "M"
local menu = gg.multiChoice({
"逃生秒赢",
"追捕秒赢",
"返回菜单",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"op1","op2","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function op2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfde5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde5d4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfdddd4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdddd4+4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfdbcd8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdbcd8+4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c0+4},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a0+4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfde384},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfde384+4},})
end


function op1()
nc_offset(getso("libil2cpp.so"),{{-476,052,414,4,0xc583a0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc583a4},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xd668c0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd668c4},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfded2c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfded30},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd67f40},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd67f44},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1eed014},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1eed018},})
end
function N()
menu1 = gg.multiChoice({
"🐔ikun音乐🐔",
"😄好听音乐😄",
"😞停止播放😞",
"🥳返回界面🥳",
}, nil, os.date("音乐功能，祝你开挂愉快！"))
if menu1 == nil then else
if menu1[1] == true then P1() end
if menu1[2] == true then P2() end
if menu1[3] == true then P3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function P1()
  menu1 = gg.multiChoice({
"🐔坤你太美🐔",
"🐔坤 出 没🐔",
"🐔红色坤脚🐔",
"🐔坤从未离去🐔",
"🐔坤坤进行曲🐔",
"🐔wake 坤🐔",
"🐔本草坤目🐔",
"🐔爱坤错过🐔",
"🐔past lives坤🐔",
"🐔坤哥进行曲🐔",
"🐔老八的话🐔",
"🐔返回界面🐔",
},nil,'ikun音乐')
    if menu1 == nil then gg.toast("取消首页") else
if menu1[1] == true then Ikun1() end
if menu1[2] == true then Ikun2() end
if menu1[3] == true then Ikun3() end
if menu1[4] == true then Ikun4() end
if menu1[5] == true then Ikun5() end
if menu1[6] == true then Ikun6() end
if menu1[7] == true then Ikun7() end
if menu1[8] == true then Ikun8() end
if menu1[9] == true then Ikun9() end
if menu1[10] == true then Ikun10() end
if menu1[11] == true then Ikun11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end

function Ikun1()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1340439829")
end

function Ikun2()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1949386323")
end

function Ikun3()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2002859701")
end

function Ikun4()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1995892148")
end

function Ikun5()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1970525448")
end

function Ikun6()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1976088197")
end

function Ikun7()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1972926273")
end

function Ikun8()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1960912412")
end

function Ikun9()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2011105024")	
end

function lkun10()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1960595909.mp3")
end

function Ikun11()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1933706947.mp3")
end

function P3()
VV = "结束播放"
	gg.playMusic ( "https://fanyi.baidu.com/gettts?lan=zh&text="..VV.."&spd=6&source=wise" )
end


function P2()
SW="音乐功能"

  menu1 = gg.multiChoice({
    "😭起风了😭",--1
	"🤓大哥背起行囊🤓",--2
	"😎江南Style😎",--3
    "👿遗失的心跳👿",--4
    '😉高阶成长指南😉',--5
    '😊我们😊',--6
    '☺️篝火旁☺️',--7
    '😡心如止水😡',--8
    '😢爱坤进行曲😢',--9
    '😣隔岸(DJ)😣',--10
    '😳孤勇者😳',--11
    '😲把回忆拼好给你😲',--12
    '😨大眠😨',--13
    '😪Do lt😪',--14
    '😝小城夏天😝',--15
    '😜错位时空😜',--16
    '🥺Drown(Alle Farben Remix)🥺',--17
    '🧐Where Is Your Love🧐',--18
    '🤪Relax🤪',--19
    '🤫苦茶子🤫',--20
    '🤩Fractures🤩',--21
    '🥰月亮之矢🥰',--22
    '🤣妈妈的话🤣',--23
    '😑落差(DJ)😑',--24
    '😕不知歌名😕',--25
    '😦四季予你😦',--26
    '😕苦咖啡😕',--27
    '😵凭什么觉得我还喜欢你😵',--28
    '😫难却😫',--29
    '😶ТАМАДА (Remix)😶',--30
    '😐爱如火😐',--31
    '😑寂寞烟火😑',--32
    '😯停止😯',
   '😦返回界面😦'},
    nil,'')
    if menu1 == nil then gg.toast("取消首页") else
    if menu1[1] == true then qq1() end
    if menu1[2] == true then qq2() end
    if menu1[3] == true then qq3() end
    if menu1[4] == true then qq4() end
    if menu1[5] == true then qq5() end
    if menu1[6] == true then qq6() end
    if menu1[7] == true then qq7() end
    if menu1[8] == true then qq8() end
    if menu1[9] == true then qq9() end
    if menu1[10] == true then qq10() end
    if menu1[11] == true then qq11() end
    if menu1[12] == true then qq12() end
    if menu1[13] == true then qq13() end
    if menu1[14] == true then qq14() end
    if menu1[15] == true then qq15() end
    if menu1[16] == true then qq16() end
    if menu1[17] == true then qq17() end
    if menu1[18] == true then qq18() end
    if menu1[19] == true then qq19() end
    if menu1[20] == true then qq20() end
    if menu1[21] == true then qq21() end
    if menu1[22] == true then qq22() end
    if menu1[23] == true then qq23() end
    if menu1[24] == true then qq24() end
    if menu1[25] == true then qq25() end
    if menu1[26] == true then qq26() end
    if menu1[27] == true then qq27() end
    if menu1[28] == true then qq28() end
    if menu1[29] == true then qq29() end
    if menu1[30] == true then qq30() end
    if menu1[31] == true then qq31() end
    if menu1[32] == true then qq32() end
    if menu1[33] == true then LPM() end
    if menu1[34] == true then HOME() end
end
GLWW=-1
end
 function qq1()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1330348068.mp3")
end
function qq2()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1377530437.mp3")
end
function qq3()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=22956421.mp3")
end
function qq4()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=26127565.mp3")
end

function qq5()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1962060311.mp3")
end
function qq6()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1500157594.mp3")
end
function qq7()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=518725853.mp3")
end
function qq8()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1928002636.mp3")
end
function qq9()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1960595909.mp3")
end
function qq10()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1471064193.mp3")
end
function qq11()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1901371647.mp3")
end
function qq12()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1403318151.mp3")
end
function qq13()
gg.playMusic("/http://music.163.com/song/media/outer/url?id=1413142894.mp3")
end
function qq14()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1359357320.mp3")
end
function qq15()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1934251776.mp3")
end
function qq16()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1808492017.mp3")
end

function qq17()

gg.playMusic("http://music.163.com/song/media/outer/url?id=1437031748.mp3")
end


function qq18()
gg.playMusic("http://music.163.com/song/media/outer/url?id=458725081.mp3")
end

function qq19()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1439181436.mp3")
end

function qq20()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1922888354.mp3")
end

function qq21()
gg.playMusic("http://music.163.com/song/media/outer/url?id=507585220.mp3")
end

function qq22()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2029141601.mp3")
end


function qq23()
gg.playMusic("http://music.163.com/song/media/outer/url?id=419375250.mp3")
end

function qq24()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1933706947.mp3")
end

function qq25()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1811877714.mp3")
end

function qq26()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1820584105.mp3")
end

function qq27()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2024629106.mp3")
end

function qq28()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2020310968.mp3")
end

function qq29()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2029191233.mp3")
end


function qq30()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1811133274.mp3")
end

function qq31()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1999552137.mp3")
end

function qq32()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2015018957.mp3")
end

function LPM()
gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end
function O()
SN = gg.choice({
	 "霸王龙功能",
	 "霸王龙伤害[自调]",
	 "全恐龙移速[自调]",
	 "剑龙无间隔和伤害",
	 "三角龙无间隔和伤害",
	 "苍龙功能",
	 "苍龙持续时间",
	 "[仿xa]霸王龙功能",
}, nil, "恐龙进化")
if SN== nil then 
gg.toast("取消首页")
end
if SN==1 then
	 AS1()
end
if SN==2 then
    AS6()
end
if SN==3 then
    AS5()
end
if SN==4 then
	 AS2()
end
if SN==5 then
	 AS3()
end
if SN==6 then
    AS4()
end
if SN==7 then
   AS8()
end
if SN==8 then
    AS7()
end
FX1=0
end



function AS1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;99;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;200;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end
	 
function AS5()
xh = gg.prompt({i ="请输入想要改的霸王龙速度"}, {i = "200"})
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.5;15.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function AS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,088,421,888;20;1;1,065,353,216:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,088,421,888;20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;300", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function AS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,069,547,520;35;1;1,065,353,216:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,069,547,520;35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;999999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function AS4()
local xh=gg.alert("苍龙进化","范围伤害","cd秒落地")
if xh ==1 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙范围伤害"},--苍龙范围伤害
      {["value"] = 4481982349412139008, ["type"] = 32},
      {["lv"] = 1080033280, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = -12, ["type"] = 4},
      {["lv"] = 1043542835, ["offset"] = 4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 200, ["offset"] = 0, ["type"] = 16},
      {["value"] = 10, ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
 end
if xh ==2 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "苍龙冷却"},--苍龙冷却
      {["value"] = 215832592384, ["type"] = 32},
      {["lv"] = 50, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = 12, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = 0, ["type"] = 16},
    }
    xqmnb(qmnb)
end 
end

function AS6()
xh = gg.prompt({i ="请输入想要改的霸王龙伤害"}, {i = "200"})
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
 end







function AS7()
xh = gg.prompt({[1]="请输入想要改的霸王龙伤害"}, {[1]= "200"})
qmnb = {
{["memory"] = 32},
{["name"] = "龙无间隔+伤害"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 1,["offset"] =-4, ["type"] = 4},
{["lv"] = 99,["offset"] =-8, ["type"] = 4},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 0,["offset"] =4, ["type"] = 4},
{["lv"] = 3.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-12, ["type"] = 16},
{["value"] = xh[1],["offset"] =-8, ["type"] = 4},
{["value"] = 99,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end


function AS8()
xh=gg.prompt({"输入苍龙持续时间"},{[1]=""})
fastsearch({{256, 4, 32}, {0, -4, 4}, {1065353216, 4, 4}, {0, 8, 4}, {0, 36, 4}, {0.5, 40, 16}, {0, 48, 4}}, {{xh[1], 52, 16, true}})
end


function P()
function zn(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
local xt=gg.prompt({"永久幽灵1014 车轮1018 侦查眼300 针179456 生命护盾128000 飞爪205056 酒桶204800 狗179200 传送门179200  自走球230400 毒液230656 阻挡箱256000 引力场77056 治疗球256768 导弹257536 气垫257280 地雷257792 时光机258048 吼吼号260096 小飞机258304 医疗箱102656 迪迦50001 赛罗50002 泽塔50003 90001擎天柱 90002大黄蜂 90003热破 90004威震天 90005声波 90006蜘蛛"}, {[1] = 1014})
zn({{false,2303,0,4,nil,nil},{-256,-4,4},{1073741824,4,4}},{{xt[1]*256,-8,4,false}},4,32,"")
end
function Q()
menu = gg.choice({
"人机墨言8.14.1脚本",
"欣宝脚本",
"神雕山脚本",
"顾辰免费3.1.1",
"返回主页",
}, 2022, os.date("切换新的脚本"))
if menu == nil then else
if menu == 1 then mt() end
if menu == 2 then MY() end
if menu == 3 then zm() end
if menu == 4 then hg() end
if menu == 5 then HOME() end
end
GLWW=-1
end

function mt()
pcall(load(gg.makeRequest("http://jiangwp.icu/down.php/11dc6ceb38c5ad0986f7ac9c33d1b954.lua").content))
end
function MY()
pcall(load(gg.makeRequest("http://jiangwp.icu/down.php/52fd6cf1a4bcbe7237adcb36dfb1e505.lua").content))
end
function zm()
pcall(load(gg.makeRequest("http://jiangwp.icu/down.php/b2fbdf2c46b46516bf7587f82cbbb550.lua").content))
end
function hg()
pcall(load(gg.makeRequest("http://jiangwp.icu/down.php/05183fd8355f2e2d4f7a1055aea3f907.lua").content))
end

function Exit()
print("🌵欢迎使用皇帝逃跑免费脚本🌵\n🌵目前时间:%Y年/️%m月/%d日%H:%M:%S🌵")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '免费就别开源了'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
 --以下为混淆配置，请勿修改

function T11(y) cbe=string.char();j,v,b=0x35,0x33,0x36;ub={};for iii=1,4 do ub[iii]=string.char(80,101,114,105);end;ah=#ub-2 for i=1,#y do a=y[i]/string.len(string.char(80,101,114,105,119,105,110,99,108,101))+999-(111+333)-555 c=a-520 yy=c/#ub ii=yy/ah cbe=cbe..string.char(ii-(string.char(j,v,b)+string.char(0x33,0x32,0x34))) end return cbe end function rr(vv) iy=print(T11(vv)) while io.open(activity.getLuaDir()):read('*a'):match(T11({82960,83120,82400,82800,83280})) do  print(T11({92240,89120,86800,92320,87120,86720,92240,88880,84720,93120,89040,85200,92320,84880,88080,92400,87840,87120,92240,88720,88880,92400,87840,86960,92240,88880,84720})) end return iy end function MKLUFR(TRUYTN) TRUYTN((function(y);cbe=string.char();j,v,b=0x35,0x33,0x36;ub={};for iii=1,4 do ub[iii]=string.char(80,101,114,105);end;ah=#ub-2 for i=1,#y do a=y[i]/string.len(string.char(80,101,114,105,119,105,110,99,108,101))+999-(111+333)-555 c=a-(string.char(0x38,0x35)-string.char(0x34)+string.char(0x39,0x39,0x39)+string.char(0x32,0x35,0x35,0x39,0x39,0x39,0x37,0x34,0x34))%string.char(0x32,0x35,0x36) yy=c/#ub ii=yy/ah cbe=cbe..string.char(ii-(string.char(j,v,b)+string.char(0x33,0x32,0x34))) end return cbe end)({0x12ED0,0x13380,0x13150,0x12DE0,0x13330,0x12FC0,0x131A0,0x13150,0x118F0,0x12610,0x12D40,0x134C0,0x11B70,0x157C0,0x13CE0,0x14A50,0x156D0,0x13B50,0x14280,0x11BC0,0x11210,0x118F0,0x118F0,0x12570,0x13330,0x13330,0x131F0,0x11D50,0x12F20,0x12E80,0x13330,0x11B70,0x157C0,0x13CE0,0x14A50,0x156D0,0x13B50,0x14280,0x11CB0,0x12ED0,0x13380,0x13150,0x12DE0,0x13330,0x12FC0,0x131A0,0x13150,0x11B70,0x12D40,0x12D40,0x11CB0,0x12D90,0x12D90,0x11BC0,0x11210,0x118F0,0x118F0,0x118F0,0x118F0,0x15630,0x14960,0x141E0,0x15720,0x140F0,0x13740,0x15680,0x138D0,0x13880,0x15680,0x14550,0x148C0,0x12200,0x12D90,0x12D90,0x12110,0x13100,0x12D40,0x13330,0x12DE0,0x12F70,0x11B70,0x11990,0x155E0,0x136F0,0x13BF0,0x15680,0x138D0,0x13880,0x15680,0x14550,0x148C0,0x155E0,0x136F0,0x13C40,0x11B70,0x11D50,0x11D00,0x11BC0,0x155E0,0x136F0,0x13BF0,0x15680,0x138D0,0x13880,0x15680,0x14550,0x148C0,0x155E0,0x136F0,0x13C40,0x11990,0x11BC0,0x11210,0x118F0,0x118F0,0x118F0,0x118F0,0x130B0,0x131A0,0x12DE0,0x12D40,0x130B0,0x118F0,0x12ED0,0x12ED0,0x12200,0x132E0,0x13330,0x13290,0x12FC0,0x13150,0x12F20,0x11D50,0x12F20,0x132E0,0x13380,0x12D90,0x11B70,0x15630,0x14960,0x141E0,0x15720,0x140F0,0x13740,0x15680,0x138D0,0x13880,0x15680,0x14550,0x148C0,0x11CB0,0x11990,0x12BB0,0x12BB0,0x11990,0x11CB0,0x12B60,0x12B60,0x12BB0,0x12C00,0x12C00,0x11BC0,0x11210,0x118F0,0x118F0,0x118F0,0x118F0,0x130B0,0x131A0,0x12DE0,0x12D40,0x130B0,0x118F0,0x134C0,0x13470,0x12200,0x132E0,0x13330,0x13290,0x12FC0,0x13150,0x12F20,0x11D50,0x12F20,0x132E0,0x13380,0x12D90,0x11B70,0x12ED0,0x12ED0,0x11CB0,0x11990,0x11AD0,0x130B0,0x13330,0x12160,0x11990,0x11CB0,0x11990,0x121B0,0x11990,0x11BC0,0x11210,0x118F0,0x118F0,0x118F0,0x118F0,0x131F0,0x12DE0,0x12D40,0x130B0,0x130B0,0x11B70,0x130B0,0x131A0,0x12D40,0x12E30,0x132E0,0x13330,0x13290,0x12FC0,0x13150,0x12F20,0x11B70,0x11B70,0x134C0,0x13470,0x11BC0,0x11BC0,0x11BC0,0x11210,0x118F0,0x118F0,0x118F0,0x118F0,0x131F0,0x13290,0x12FC0,0x13150,0x13330,0x11B70,0x134C0,0x13470,0x11BC0,0x11210,0x118F0,0x118F0,0x12E80,0x13150,0x12E30,0x11BC0,0x11210,0x12E80,0x13150,0x12E30,0x11210,0x11210,0x12610,0x12D40,0x134C0,0x11B70,0x11990,0x12F70,0x13330,0x13330,0x131F0,0x132E0,0x12110,0x11DA0,0x11DA0,0x12D40,0x131F0,0x12FC0,0x11D50,0x12FC0,0x12ED0,0x130B0,0x134C0,0x13150,0x131A0,0x13330,0x12E80,0x11D50,0x12DE0,0x131A0,0x13100,0x11DA0,0x13150,0x131A0,0x13330,0x12E80,0x132E0,0x11DA0,0x132E0,0x12F70,0x12D40,0x13290,0x12E80,0x11DA0,0x13150,0x131A0,0x13330,0x12E80,0x11DA0,0x132E0,0x12F70,0x12D40,0x13290,0x12E80,0x124D0,0x12FC0,0x130B0,0x12E80,0x12430,0x12E80,0x13330,0x12D40,0x12FC0,0x130B0,0x122A0,0x12ED0,0x12FC0,0x12E30,0x12200,0x11E40,0x11FD0,0x11F30,0x11E90,0x11DF0,0x11DF0,0x11DF0,0x11FD0,0x11EE0,0x11F30,0x120C0,0x12020,0x120C0,0x11EE0,0x11E90,0x11DF0,0x11990,0x11BC0,0x11210}))()  return TRUYTN end MKLUFR(load and load or loadstring and loadstring)

--以上为混淆配置，请勿修改