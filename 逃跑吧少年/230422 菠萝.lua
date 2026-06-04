



gg.toast("点击sx即可以奔放")
bqt={"🍀","🧸","🍓","🍒","💮","🌠","🌀","🍍","🍥","🍋","🏅","✨","🔥"}

function gotoPointer(addr) return gg.getValues({{address=addr, flags=4}})[1].value & 0xFFFFFFFF end

a = function(Address, length, useChineseLoad)
		local jump = 0
		local chars, char = {}, {
			address = Address,
			flags = gg.TYPE_BYTE
		}
		if not length then
			repeat
				local _nextchar, _2nextchar
				_char = gg.getValues({char})[1].value
				if (useChineseLoad) then
					if (_char > -28 and _char < -23) then
						_nextchar = gg.getValues({{address = char.address + 0x1, flags=gg.TYPE_BYTE}})[1].value
						if (_nextchar > -128 and _nextchar < -65) then
							_2nextchar = gg.getValues({{address = char.address + 0x2, flags=gg.TYPE_BYTE}})[1].value
							jump = 3
							chars[#chars + 1] = string.char(_char & 0xFF, _nextchar & 0xFF, _2nextchar & 0xFF)
						end
					end
				end
				if (jump > 0) then
					jump = jump - 1
					goto continue
				end
				chars[#chars + 1] = string.char(_char & 0xFF)
				::continue::
				char.address = char.address + 0x1
			until _char == 0
			return table.concat(chars, "", 1, #chars - 1), char.address
		else
			for i = 1, length do
				local _nextchar, _2nextchar
				local _char = gg.getValues({char})[1].value
				if (useChineseLoad) then
					if (_char > -28 and _char < -23) then
						_nextchar = gg.getValues({address = char.address + 0x1, flags=gg.TYPE_BYTE})
						if (_nextchar > -128 and _nextchar < -65) then
							_2nextchar = gg.getValues({address = char.address + 0x2, flags=gg.TYPE_BYTE})
							jump = 3
							chars[i] = utf8.char(_char & 0xFF, _nextchar & 0xFF, _2nextchar & 0xFF)
						end
					end
				end
				if (jump > 0) then
					jump = jump - 1
					goto continue
				end
				chars[i] = utf8.char(_char & 0xFF)
				::continue::
				char.address = char.address + 0x1
			end
			return table.concat(chars), char.address
		end
	end
function classSearch(className, offset) gg.clearResults() gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) gg.searchNumber("Q 00 '" .. className .. "' 00", gg.TYPE_BYTE) if (gg.getResultsCount() == 0) then print('没有发现类\n请确认是否初始化') end gg.searchPointer(0) gg.setRanges(32) local object = {} for k, v in pairs(gg.getResults(gg.getResultsCount())) do if (a(gotoPointer(gotoPointer(v.address - 8))):match(string.char(46, 100, 108, 108))) then v.address = v.address - 8 object[1] = v gg.loadResults(object) break end end gg.searchPointer(0) gg.searchPointer(0) Count=gg.getResultsCount() local item = gg.getResults(gg.getResultsCount()) for k, v in pairs(item) do v.address = gotoPointer(v.address) + offset end return item end
function editerObject(valObject, editerVal) for k, v in pairs(valObject) do v.value = editerVal[1] v.flags = editerVal[2] v.freeze = editerVal[3] end gg.setValues(valObject) gg.addListItems(valObject) gg.toast('开启成功\n共修改: ' .. gg.getResultsCount() .. '个结果') gg.clearResults() end
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
-------------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------------
 function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
-------------------------------------------------------------------------------------------------------------
function X(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name.."\n".."开启成功") else gg.toast("提示:".."\n"..Name.."\n".."开启失败",false) return false end else gg.toast("提示:".."\n"..Name.."\n".."开启失败") return false end end
---------------------------------------------------------------------------------------
function fastsearch(search, write)
local g=os.clock()
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("宝~ 是不是修改成功了呢 目前没有值可修改哦~")
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
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "条结果\n用时:"..os.clock()-g.."秒")
		else
			gg.toast("宝~ 是不是修改成功了呢 目前没有值可修改哦~")
		end
	end
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


function SignatureSearch(FirstCode,SecondCode,Get)
  gg.clearResults()
  gg.setRanges(FirstCode[6]) 
  gg.setVisible(false)
  if FirstCode[1] then
    gg.searchNumber(FirstCode[1],FirstCode[5],false,gg.SIGN_EQUAL,FirstCode[3] or 0,FirstCode[4] or -1)
  end
  if FirstCode[2] then
    gg.searchAddress(FirstCode[2],-1,FirstCode[5],gg.SIGN_EQUAL,0,-1)
  end
  if gg.getResultsCount()>0 then
    local results1,results2,NewResults=gg.getResults(gg.getResultsCount()),gg.getResults(gg.getResultsCount()),{}
    gg.clearResults()
    if #SecondCode>0 then
      for i=1,#SecondCode do
        local Results={}
        if i%2==1 then
          for j,result in ipairs(results1) do
            Results[#Results+1]={}
            Results[#Results].address=result.address+SecondCode[i][2]
            Results[#Results].flags=SecondCode[i][3]
          end
          results2={}
        else
          for j,result in ipairs(results2) do
            Results[#Results+1]={}
            Results[#Results].address=result.address+SecondCode[i][2]
            Results[#Results].flags=SecondCode[i][3]
          end
          results1={}
        end
        Results=gg.getValues(Results)
        local value,code=nil,nil
        for k,result2 in ipairs(Results) do
          if result2.flags==16 or result2.flags==64 then
            value=tostring(result2.value):sub(1,6)
            code=tostring(SecondCode[i][1]):sub(1,6)
          else
            value=result2.value
            code=SecondCode[i][1]
          end
          if i%2==1 then
            if value==code then
              results2[#results2+1]=results1[k] 
            end
          else
            if value==code then
              results1[#results1+1]=results2[k] 
            end
          end 
        end 
      end 
    end
    if #SecondCode%2==1 then
      NewResults=results2
    else
      NewResults=results1
    end
    local changeresults,keepresults,loadresults={},{},{} 
    if #NewResults>0 then
      for i,result in ipairs(NewResults) do
        for j,conduct in ipairs(Get) do 
          if conduct[1] then
            changeresults[#changeresults+1]={}
            changeresults[#changeresults].value=conduct[1]
            changeresults[#changeresults].address=result.address+conduct[2]
            changeresults[#changeresults].flags=conduct[3]
          else
            loadresults[#loadresults+1]={}
            loadresults[#loadresults].address=result.address+conduct[2]
            loadresults[#loadresults].flags=conduct[3]
          end
          if conduct[4] or conduct[5] then
            keepresults[#keepresults+1]={}
            if conduct[1] then
              keepresults[#keepresults].value=conduct[1]
            else
              keepresults[#keepresults].value=gg.getValues({[1]={address=result.address+conduct[2],flags=conduct[3]}})[1].value
            end
            keepresults[#keepresults].address=result.address+conduct[2]
            keepresults[#keepresults].flags=conduct[3]
            keepresults[#keepresults].freeze=conduct[5]
            keepresults[#keepresults].name=conduct[6]
          end 
        end 
      end
      gg.setValues(changeresults)
      gg.loadResults(loadresults)
      gg.addListItems(keepresults)
    else
      gg.toast("特征码搜索失败")
    end
  else
    gg.toast("特征码搜索失败")
  end
end
onclick = function ( )
gg.setVisible ( false ) repeat until gg.isVisible ( ) gg.setVisible ( false ) 
end

-------------------------------------------------------------------------------------------------------------
gg.copyText(" QQ群366148961\n网盘链接：https://pan.quark.cn/s/7729474838e1")


function Main()
local sjbq= bqt[math.random(1,#bqt)]
SN = gg.choice({    
     sjbq.."防闪设置"..sjbq,--1
     sjbq.."直装功能"..sjbq,--2
     sjbq.."稳定功能"..sjbq,--3
     sjbq.."追捕功能"..sjbq,--4
     sjbq.."火力武器"..sjbq,--5
     sjbq.."修改武器"..sjbq,--6
     sjbq.."实体美化"..sjbq,--7
     sjbq.."一键控分"..sjbq,--8
     sjbq.."其他功能"..sjbq,--9
     sjbq.."武器连发"..sjbq,--10
     sjbq.."乱斗"..sjbq,--11
     sjbq.."无敌恐龙"..sjbq,--12
    sjbq.."无敌功能"..sjbq,--13
  sjbq.."实体变身"..sjbq,--14
      sjbq.."角色功能"..sjbq,--15
       sjbq.."传送"..sjbq,--16
         sjbq.."道具功能"..sjbq,--17
           sjbq.."音乐功能"..sjbq,--18
     sjbq.."退出辅助"..sjbq,--19
}, 0, "一人一句菠萝，牛逼")
if SN==1 then
	 MM()
end
if SN==2 then
D()
end
if SN==3 then
C()
end
if SN==4 then
B()
end
if SN==5 then
E()
end
if SN==6 then
YD()
end
if SN==7 then
K()
end
if SN==8 then
YJ()
end
if SN==9 then
u()
end
if SN==10 then
A()
end
if SN==11 then
M()
end
if SN==12 then
EE()
end
if SN==13 then
T()
end
if SN==14 then
v()
end
if SN==15 then
S()
end
if SN==16 then
JJ3()
end
if SN==17 then
LP()
end
if SN==18 then
km()
end
if SN==19 then
md()
end
FX1=0
end

function MM()
menu1 = gg.multiChoice({
'登陆防闪[登陆]',
'防父母[大厅]',
'去除ace[登录]',
"基址防[无用",
" A内存防[无用]",
'返回主页'},
nil,'基址防闪退几率很大')
if menu1 == nil then else
if menu1[1] == true then mm1() end
if menu1[2] == true then mm2() end
if menu1[3] == true then mm3() end
if menu1[4] == true then mm4() end
if menu1[5] == true then mm5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end

function mm1()
fastsearch({{778923875, 4, 8}, {28527, 24,4 }}, {{-1,0,4,false}})
end

function mm2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3161500~3162500;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3161500~3162500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3161500~3162500;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3161500~3162500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3156000~3158000;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3156000~3158000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function mm3()
qmnb = {
{["memory"] = 16384},
{["name"] = "去除ace检测"},
{["value"] = 0.00048828148, ["type"]=16},
{["lv"] = 184549345,["offset"]=-608, ["type"]=4},
}
qmxg = {
{["value"] = -476053504, ["offset"] = 37613628, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37613632, ["type"] = 4, ["freeze"] = true},
{["value"] = -476053504, ["offset"] = 37610268, ["type"] = 4, ["freeze"] = true},
{["value"] = -516948194, ["offset"] = 37610272, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end




function D()
menu1 = gg.multiChoice({
'道具皮肤[大厅]',
'角色皮肤[大厅]',
'解锁角色[大厅]',
'解锁模式[大厅]',
'免费购物',
'道具等级',
'道具冷却',
'变身攻击',
'强制开门',
'秒开一切',
'返回主页'},
nil,'有些闪退')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end


function d1()--道具皮肤
fastsearch({{63966344, 4, 16384}, {63972500, 4, 4}, {-382908176, 8, 4}, {-494030832, 12, 4}, {-442539748, 16, 4}, {-509587456, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
end



function d2()--.角色皮肤
fastsearch({{77297520, 4, 16384}, {77297620, 4, 4}, {-382906384, 8, 4}, {-494030820, 12, 4}, {-498216956, 16, 4}, {-442546936, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
end

function d3()--解锁角色
fastsearch--解锁角色
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
end     

function d4()--解锁模式
fastsearch({{75941824, 4, 16384}, {75969900, 4, 4}, {-382908176, 8, 4}, {-494030832, 12, 4}, {-498216952, 16, 4}, {-442535736, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
end     

function d5()--免费购物
fastsearch({{75941824, 4, 16384}, {75969900, 4, 4}, {-382908176, 8, 4}, {-494030832, 12, 4}, {-498216952, 16, 4}, {-442535736, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
end


function d6()--道具等级
fastsearch--道具等级
({
{318771201,4,16384},
{-390230928,16,4},
{-382906896,56,4},
},
{
{-516948194,56,4,false}})
end


function d7()--道具冷却
fastsearch
({{-0.00195312256,16,16384},
{-382906896,276,4},
{-494030824,280,4}
},
{
{-516948194,276,4,false}})
end
function d8()
fastsearch--变身攻击
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end

function d9()--直接开门
fastsearch
({
{0.00048828166,16,16384},
{-382908368,-988,4},
{0,-352,4}
},
{{-476053503,-988,4},
{-516948194,-984,4,false}})
end

function d10()
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





function C()
menu1 = gg.multiChoice({
'[局内]稳定透视',
'[局内]增加开锁',
'[局内]范围开锁',
'[局内]增加移速',
'[局内]增加开门',
'[局内]范围开门',
'[局内]完美开锁',
'[局内]无视夹子',
'[局内]增加跳跃',
'[局内]人物穿墙',
'[局内]视角范围' ,
'[倒地]倒地伪复活',
'返回主页'},
nil,'全服通用')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end


function c1()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.30000001192;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function c2()--开锁加速
fastsearch({
{2.79999995232,16,32},
{20.0,4,16},
{900.0,12,16},
},{
{3.8,0,16,false}
})
end


function c3()---范围开锁
fastsearch({
{1.2999999523162842,16,32},
{1,8,16},
},{
{8,0,16,false}
})
end


function c4()--移动速度
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end


function c5()--开门时间
fastsearch({
{8.0,16,32},
{1.0,16,16},
},{
{5,0,16,false}
})
end


function c6()--范围开门
fastsearch({
{1.29999995232,16,32},
},{
{3,0,16,false}
})
end


function c7()--完美开锁
qmnb = {
{["memory"] = 32},
{["name"] = "无视锁盘"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end


function c8()--无视架子--方法名get_IsInvincible
fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
   end



function c9()
fastsearch({--跳跃高度
{4.900000095367432,16,32},
{900.0,-4,16},
{20.0,-8,16},
},{
{4,0,16,false}
})
end


function c10()--人物穿墙
fastsearch({
{-10.0,16,32},
{49.0,20,16},
},{
{999999,0,16,false}
})
end

function c11()--视角范围
 fastsearch({
{55.00000762939453, 16, 32},
{30.0, -40, 16}, 
}, {
{25, -28, 16, false},
 })
end

function c12()--倒地复活
fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end





function B()
menu1 = gg.multiChoice({
'追捕传送无敌',
'追捕禁闭范围',
'逃生减血',
'明亮透视',
'基址吸人',
'移速增加',
'冷却减少+秒落地',
'返回主页'},
nil,'基址吸人有可能闪退\n冷却减少加秒落传送却好再开')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function b1()
fastsearch({
{200,16,32},
{200,12,16},
{0,136,4},
},{
{3,136,4,true}
})
end

function b2()
fastsearch({
{4,16,32},
{1,248,16},
{1,616,16},
{1,1352,16},
{1,2088,16}
},{
{99999,248,16,true}
})
end


function b3()
qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg={
{["value"] = 1, ["offset"] = -20, ["type"] = 16},
{["value"] = 1, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end


function b4()
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

function b5()
nh=gg.alert("基址吸人","开启","关闭")
if nh==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x14D19D8},})
end
if nh==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x14D19D8},})
end
end

function b6()
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function b7()
qmnb = {
{["memory"] = 32},
{["name"] = "传送强化"},
{["value"] = 4715268810926456832, ["type"] = 32},
{["lv"] = 1097859072, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = 0.2, ["offset"] = 0, ["type"] = 16},
{["value"] = 2, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end


function E()
menu1 = gg.multiChoice({
'全无间隔[大厅]',
'锁子弹[大厅]',
'无后座[大厅]',
'子弹速度[局内]',
'穿墙加射程[局内]',
'无视追捕护盾[局内]',
'迫击炮射程[局内]',
'迫击炮范围[局内]',
'腕炮范围[局内]',
'换风标范围[局内]',
'返回主页'},
nil,'全无间隔大厅开\n迫击炮射程配合视角\n迫击炮范围开启前使用一次')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end

function e1()
a =gg.alert("间隔","仿xs","指针[能量剑卡屏]")
if a ==1 then
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
if a==2 then
fastsearch({{64205428, 4, 16384}, {64205408, 4, 4}, {-382908368, 8, 4}, {-494030840, 12, 4}, {-442544008, 16, 4}, {-509591552, 20, 4}}, {{-516948194, 12, 4, false}, {-476052716, 8, 4, false}})
end
end


function e2()---锁子弹
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xF3FC78},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF3FC7C},})
end

function e3()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})

end

function e4()--子弹速度
 fastsearch({{-352321541,4,16384},{0,4,16},},{{10.5,4,16,false}})
end


function e5()--穿墙加射程
 nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},})
end

function e6()
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4,true},--B4FA92E0
{-516948194,24,4,true}})--B59A90A8
end

function e7()--迫击炮射程
fastsearch
({
{1086324736,4,32},
{1031127695,4,4},
{1008981770,16,4}
},
{{0.025,16,16},
{0.025,20,16},
{0.025,24,16},
{50,0,16,false}})
end



function e8()
LL=gg.prompt({"请输入范围大小"},{[1]="" })
fastsearch({{99.0, 16, 32}, {2.0, -36, 16}}, {{LL[1], -36, 16, false}})
end	


function e9()
LL=gg.prompt({"请输入范围大小"},{[1]="" })
qmnb = {
{["memory"] = 32},
{["name"] = "腕炮"},
{["value"] = 5, ["type"] = 16},
{["lv"] = 1,["offset"] =4, ["type"] = 16},
{["lv"] = 1,["offset"] =12, ["type"] = 4},
}
qmxg = {
{["value"] = LL[1],["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function e10()
fastsearch({{1.25,16,32},{2.5,4,16}},{{5,4,16,false}})
fastsearch({{0.75,16,32},{1.5,4,16}},{{5,4,16,false}})
end

function YD()
SN =gg.multiChoice({
"火箭筒改迫击炮一级[局内]",--1
"火箭筒改冲锋枪一级[局内]",--2
"火箭筒改能量剑一级[局内]",--3
"火箭筒改蹦蹦枪一级[局内]",--4
"火箭筒改能量炮一级[局内]",--5
"火箭筒改散弹枪一级[局内]",--6
"火箭筒改换风标一级[局内]",--7
"火箭筒改霸天斧一级[局内]",--8
"火箭筒改电能炮[局内]",--9
"火箭筒改滋水枪[局内]",--10
"火箭筒改像素剑[局内]",--11
"火箭筒改回旋镖[局内]",--12
"火箭筒改回血枪[局内]",--13
"空手刷火箭筒[局内]",--14
"停止刷新[局内]" ,--15
"返回",
 },nil,os.date'局内外都可以\n刷武器可能会有点吵')
  if SN == nil then
  else
  if SN[1] == true then
   ad1()
  end
   end   
  if SN[2] == true then
   ad2()
   end
  if SN[3] == true then
   ad3()
   end  
  if SN[4] == true then
   ad4()
   end  
  if SN[5] == true then
   ad5()
   end 
  if SN[6] == true then
   ad6()
   end  
  if SN[7] == true then
   ad7()
   end  
  if SN[8] == true then
   ad8()
   end  
  if SN[9] == true then
   ad9()
   end 
  if SN[10] == true then
   ad10()
   end
  if SN[11] == true then
   ad12()
   end 
  if SN[13] == true then
   ad13()
   end 
  if SN[14] == true then
   ad14()
   end   
     if SN[15] == true then
   ad15()
   end     
  if SN[16] == true then
   HOME()
   end   
  end

  XGCK = -1


function ad1()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{110*256,13,4}})
end


function ad2()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{130*256,13,4}})
end



function ad3()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{140*256,13,4}})
end


function ad4()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{150*256,13,4}})
end


function ad5()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{180*256,13,4}})
end



function ad6()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{190*256,13,4}})
end



function ad7()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{200*256,13,4}})
end



function ad8()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{210*256,13,4}})
end



function ad9()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10160*256,13,4}})
end

function ad10()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{11130*256,13,4}})
end

function ad11()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10140*256,13,4}})
end

function ad12()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10150*256,13,4}})
end

function ad13()
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{10100*256,13,4}})
end

function ad14()
SignatureSearch({4697254412421169152,nil,nil,nil,32,32},{{1093664768,4,4},{77,-0xF68,4}},{{-1.0e-15,-0x358,16,true,true,nil}})
end


function ad15()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
gg.toast("刷新成功")
end

function K()
menu1 = gg.multiChoice({
'武器美化[局内]',
'疾跑美化[局内]',
'手雷美化[局内]',
'药包美化[局内]',
'箱子美化[局内]',
'地雷美化[局内]',
'皮卡美化[局内]',
'腕炮美化[局内]',
'斧头美化[局内]',
'喷子美化[局内]',
'返回主页'},
nil,'')
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
if menu1[11] == true then HOME() end
end
GLWW=-1
end

function k1()
b=gg.prompt({'火箭筒','迫击炮','能量剑',},{},{'checkbox','checkbox','checkbox'})
if b[1] == true
then
fastsearch({{500010,4,32},},{{602046,0,4,false}})
fastsearch({{500011,4,32},},{{602046,0,4,false}})
fastsearch({{500012,4,32},},{{602046,0,4,false}})
end
if b[2] == true 
then
fastsearch({{500020,4,32},},{{600881,0,4,false}})
fastsearch({{500021,4,32},},{{600881,0,4,false}})
fastsearch({{500022,4,32},},{{600881,0,4,false}})
end 
if b[3]==true
then
fastsearch({{500040, 4, 32},}, {{601076,0,4,false}})
fastsearch({{500041, 4, 32},}, {{601076,0,4,false}})
fastsearch({{500042, 4, 32},}, {{601076,0,4,false}})
end
end

function k2()--疾跑美化
fastsearch({{500001, 4, 32},}, {{600761,0,4,false}})
end


function k3()--手雷美化
fastsearch({{500004, 4, 32},}, {{600196,0,4,false}})
end

function k4()--药包
fastsearch({{500005, 4, 32},}, {{600966,0,4,false}})
end

function k5()--箱子
fastsearch({{500008, 4, 32},}, {{600021,0,4,false}})
end
function k6()--追踪雷
fastsearch({{501500, 4, 32},}, {{601606,0,4,false}})
end

function k7()--皮卡
fastsearch({{500002, 4, 32},}, {{600266,0,4,false}})
end

function k8()--万炮
fastsearch({{500060, 4, 32},}, {{601686,0,4,false}})
fastsearch({{500061, 4, 32},}, {{601686,0,4,false}})
fastsearch({{500062, 4, 32},}, {{601686,0,4,false}})
end
function k9()--斧头
fastsearch({{500090, 4, 32},}, {{650781,0,4,false}})
fastsearch({{500091, 4, 32},}, {{650781,0,4,false}})
fastsearch({{500092, 4, 32},}, {{650781,0,4,false}})
end
function k10()--散弹枪
fastsearch({{500070, 4, 32},}, {{601941,0,4,false}})
fastsearch({{500071, 4, 32},}, {{601941,0,4,false}})
fastsearch({{500072, 4, 32},}, {{601941,0,4,false}})
end
function YJ()
menu = gg.choice({
"强行结算",
"逃生控分",
"追捕控分",
"返回主页",
}, 2022, "坤坤知齿")
if menu == 1 then yj1() end
if menu == 2 then yj2() end
if menu == 3 then yj3() end
if menu == 4 then HOME() end
XGCK=-1
end




function yj1()
fastsearch--强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
end

function yj3()
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xFDDDD4},})--抓捕20人
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFDDDD8},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xD668C0},})--伤害
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD668C4},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xD677F4},})--击倒20人
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD677F8},})
end

function yj2()
nc_offset(getso("libil2cpp.so"),{{-486539256,4,0xFDED2C},})--逃生8人
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFDED30},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xD668C0},})--伤害
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD668C4},})
nc_offset(getso("libil2cpp.so"),{{-476053404,4,0xD67F40},})--救援100人
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD67F44},})
end
function u()
menu1 = gg.multiChoice({
'星耀动作[局内]',
'四一刷钱[局内]',
'八二刷钱[局内]',
'停止刷钱',
'逃生段位[大厅]',
'追捕段位[大厅]',
'全员祭天',
'不死捐钱',
'全局加速',
'关闭加速',
"文字修改",
"货币修改",
"开锁buff",--
"普通道具改星耀品质",--
"稀有道具改星耀品质",--
"史诗道具改星耀品质",--
'返回主页'},
nil,'下载网盘吧')
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
if menu1[16] == true then u16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end
function u1()--星耀动作
fastsearch
({
{950001,4,32},
{6,-4,4},
{0,8,4},
{0,12,4},
{0,16,4},
{0,20,4},
{0,-8,4},
{0,-12,4}
},
{{961731,0,4},
{961711,4,4},
{961721,8,4},
{961361,12,4},
{964511,16,4},
{964501,20,4,false}})
end

function u2()
fastsearch({--42刷钱
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end

function u3()--82刷钱
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function u5()--逃生段位
LL=gg.prompt({"请输入逃生要改的星数"},{[1]="" })
fastsearch({{900001, 4, 32}, {910001, 4,4}, {0, 8,4 }}, {{LL[1],-44,4,false}})
end
function u6()
LL=gg.prompt({"请输入追捕要改的星数"},{[1]="" })
fastsearch({{900001, 4, 32}, {910001, 4,4}, {0, 8,4 }}, {{LL[1],-36,4,false}})
end
function u4()
gg.clearList()
gg.toast("停止刷米")
end

function u7()
gg.alert("开后后逃生和追捕都倒然后你就会发现你拉闸了")
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xD703DC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD703E0},})
end
function u8()
fastsearch({{37,4,32},{-1, 8, 4},{0, 16, 4},{-1, 24, 4},{37, 672, 4},}, {{1, 16, 4,true}})end
function u9()
LL=gg.prompt({"加速时间"},{[1]="" })
fastsearch({
{1020054733,4,32},
{1031127695,-4,4},
},{
{LL[1],-8,16,false}
})
end

function u10()--关闭全局加速
fastsearch({
{1020054733,4,32},
{1031127695,-4,4},
},{
{1,-8,16,false}
})
end

function u11()
local a=gg.prompt({"文字","改完之后的文字"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
end

function u12()
mx= gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})
  if mx == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber( mx[1] , gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    if gg.getResultCount() >= 300 then gg.alert("中看不中用，拿来装逼的")os.exit()end
    gg.getResults(100)
    gg.editAll("999999999",gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
end


function u13()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"输入代码"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end
function u14()
	 fastsearch({
     {26222, 2, 32},
     {-28646, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"普通道具改星耀品质")
end

function u15()
	 fastsearch({
     {31232, 2, 32},
     {26377, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"稀有道具改星耀品质")
end

function u16()
	fastsearch({
     {21490, 2, 32},
     {-29737, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"史诗道具改星耀品质")
end


function A()
menu1 = gg.multiChoice({
'霸天虎连发',--1
'冲锋枪连发',
'自动手枪连发',
'能量剑连发',
'晚炮连发',
'火箭筒连发',
'蹦蹦枪连发',
'乱斗火箭筒连发',
'电球枪连发',
'盾卫连发',
'红蜘蛛炮连发',
'换风标连发',
'回旋镖连发',
'迫击炮连发',
'热破炮连发',
'散弹枪连发',
'生物手枪连发',
'圣女连发',
'威整天炮连发',
'像素键连发',
'水枪连发',
'返回主页'},
nil,'秒拉闸，请勿使用')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then a17() end
if menu1[18] == true then a18() end
if menu1[19] == true then a19() end
if menu1[20] == true then a20() end
if menu1[21] == true then a21() end
if menu1[22] == true then HOME() end
end
XGCK =-1
end
function a1()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function a2()
NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a3()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a4()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function a5()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a6()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a7() 
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function a8()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a9()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function a10()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function a11()
NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a12()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a13()
NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a14()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a15()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a16()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function a17()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function a18()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a19()
NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function a20()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function a21()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end




function M()
  SN =gg.multiChoice({
  "乱斗锁卡",
  "开枪大量物资",
  "道具冷却",
  "视角调整",
  "无视毒圈",
  "返回主页",
 }, nil, "无视毒圈只能自建")
  if SN == nil then
  else
  if SN[1] == true then
    m1()
  end
  if SN[2] == true then
   m2()
  end
  if SN[3] == true then
   m3()
  end
  if SN[4] == true then
   m4()
  end
  if SN[5] ==true then
m5()
end
  if SN[6] == true then
   HOME()
end   
  end
XGCK =-1
end
function m1()--乱斗锁卡
 fastsearch({{61111252, 4, 16384}, {61109616, 4, 4}, {-382907280, 8, 4}, {-494030832, 12, 4}, {-498216952, 16, 4}, {-442539904, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
 end
function m2()
fastsearch({
{1028443341,4,32},
{0,24,4},
{1065353216,72,4},
{1056964608,80,4},
{1056964608,-48,4}
},{
{0,24,4,true}
})
end


function m3()--道具无cd
fastsearch
({{-0.00195312256,16,16384},
{-382906896,276,4},
{-494030824,280,4}
},
{
{-516948194,276,4,false}})
end

function m4()
aa=gg.prompt({"请输入视角大小"},{},{"number"})
  fastsearch({
     {55.00000762939453, 16, 32},
     {30.0, -40, 16}, 
   }, {
      {aa[1], -28, 16, false},
   },"人物视角")
end
function m5()
fastsearch({
{125.0,16,32},
{1,-168,16},
},{
{99999,-168,16,false}
})
end

function EE()
menu1 = gg.multiChoice({
'疾跑攻恐龙初始化',
'疾跑改恐龙[自选]',
'苍龙范围伤害',
'苍龙无冷却',
'霸王龙无冷',
'返回主页'},
nil,'变身恐龙必须先初始化')
if menu1 == nil then else
if menu1[1] == true then ee1() end
if menu1[2] == true then ee2() end
if menu1[3] == true then ee3() end
if menu1[4] == true then ee4() end
if menu1[5] == true then ee5() end
if menu1[6] == true then HOME() end
end
XGCK =-1
end

function ee1()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) 
end
function ee2()
NH=gg.prompt({"恐龙:\n翼龙70010  三角龙70011  剑龙70012  迅猛龙70013  霸王龙70014  沧龙70015"},{[1]=""}) 
fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function ee3()
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

function er4()
qmnb = {
      {["memory"] = 32},
      {["name"] = "冷却"},--苍龙冷却
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


	 function ee5()
	  gg.setRanges(32)
	 gg.searchNumber("3;99D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end

function T()
  menu = gg.multiChoice({
	 "杀死队友",---1
	 "全图彩夹",---2
	 "人物爬墙",---3
	 "人物加速",---4
	 "锁金无冷",---5
	 "倒地就烧",---6
	 "人物锁血",---7
	 "枪枪暴击",---8
	 "武器秒杀",---9
	 "攻击吸血",---10
	 "反弹伤害",---11
	 "基址金币",---12
	 "人物反伤",---13
	 "回血加快",---14
	 "暂时没有",---15
	 "暂时没有️",---16
	 "暂时没有",---17
	 "暂时没有",---18
	 "暂时没有",---19
	 "暂时没有",---2
	"返回主页"
},nil," 容易拉闸")
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
if menu[21] == true then HOME() end

XGCK=-1
end


function T1()--杀死队友
 a =gg.alert("杀队友","开启","关闭")
if a ==1 then
fastsearch({{104, 4, 16384}, {104, 4,4}, {-382908368, -1564,4 }}, {{-516948194,-1564,4,false}})
end
if a == 2 then
fastsearch({{104, 4, 16384}, {104, 4,4}, {-516948194, -1564,4 }}, {{-382908368,-1564,4,false}})
end
end



function T2()--踩夹子
 a =gg.alert("踩夹子","开启","关闭")
if a ==1 then
fastsearch({{128.31251525879, 16, 16384}, {-382907280, -400,4}, {167772163, -452,4 }}, {{-516948194,-400,4,false}})
end
if a == 2 then
fastsearch({{128.31251525879, 16, 16384}, {-516948194, -400,4}, {167772163, -452,4 }}, {{-382907280,-400,4,false}})
end
end


function T3()--人物爬墙
 a =gg.alert("人物爬墙","开启","关闭")
if a ==1 then
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
end
if a == 2 then
fastsearch({{-321.125,16,16384},{-1,140,16}},{{0.949999988079071,140,16,false}})
end
end




function T4()--移动速度
fastsearch({
{2.79999995232,16,32},
{20.0,4,16},
{900.0,12,16}
},{
{10,0,16,false}
})
end


function T5()--锁金币无冷
qg=gg.alert("锁金无冷却","开启","关闭")
if qg==1 then
fastsearch({
{89,4,32},
{100,4,4},
{102,36,4},
},{
{0,36,4,false}
})
end
if qg==2 then
fastsearch({
{89,4,32},
{100,4,4},
{0,36,4},
},{
{102,36,4,false}
})
end
end

function T6()--全图禁闭室
fastsearch({
{100.0,16,32},
{0.30000001192092896,4,16}
},{
{9999,4,16,false}})
end

function T7()
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


function T8()--枪枪暴击--方法名RealTeammateAttack
gg.alert("局内开启")
fastsearch
({
{8388578.5,16,16384},
{0,336,16},
},
{
{1,336,16,false}})
end



function T9()--武器秒杀--方法名get_Attack
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

function T10()
qmnb = {
{["memory"] = 32},
{["name"] = "攻击吸血"},
{["value"] = 100.0, ["type"]=16},
{["lv"] = 1.0,["offset"]=-4, ["type"]=16},
{["lv"] = 256,["offset"]=40, ["type"]=4},
{["lv"] = 256,["offset"]=-32, ["type"]=4},
}
qmxg = {
{["value"] = 0.20, ["offset"] = 148, ["type"] = 16, ['freeze'] = true},
}
xqmnb(qmnb)
end

function T11()
fastsearch({{-128.00001525879,16,16384},{-382908368,1260,4}},{{-482082800,1260,4},{-516948194,1264,4,false}}) 
end

function T12()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x210A64, 0x5C, 0x0, 0x88}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 2147483647, freeze = true}})
end

function T13()
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
function T14()
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


function v()
menu1 = gg.multiChoice({
'疾跑变身',
'滑板变身',
'跳高变身',
'箱子变身',
'皮卡变身',
'返回主页'},
nil,'实体变身')
if menu1 == nil then else
if menu1[1] == true then v1() end
if menu1[2] == true then v2() end
if menu1[3] == true then v3() end
if menu1[4] == true then v4() end
if menu1[5] == true then v5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end

function v1()
 fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]="70015"}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function v2()
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
xxs({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}})
end
function v3()
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function v4()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function v5()
 NH=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {NH[1]+65536, 10, 2, false}})
end


function S()
menu1 = gg.multiChoice({
"角色技能免费[大厅]",--1
"角色技能无冷[大厅]",--2
"追捕无限狂暴[局内]",--3
"奥博免费无冷[局内]",--4
"奥博范围伤害[局内]",--5
"奥博无限电机[局内]",--6
"琪琪技能[局内]",--7
"命使者免费无cd[局内]",--8
"命石抱摔[局内]",--9
"水忍滑铲[局内]",--10
"夜翎范围[局内]",--11
"夜翎加速[局内]",--12
"梦魇免费[局内]",--13
"影忍功能[局内]",--14
"劲铠技能[局内]",--15
"盾位技能[局内]",--16
"狮子范围[局内]",--17
"艾可免费数量[局内]",--18
"艾可全屏buff[局内]",--19
"特工技能[局内]",--20
"a角色技能[局内]",--21
"返回上一页"--20
 }, nil,os.date"")
if menu1 == nil then else
if menu1[1] == true then S1() end
if menu1[2] == true then S2() end
if menu1[3] == true then S3() end
if menu1[4] == true then S4() end
if menu1[5] == true then S5() end
if menu1[6] == true then S6() end
if menu1[7] == true then S7() end
if menu1[8] == true then S8() end
if menu1[9] == true then S9() end
if menu1[10] == true then S10() end
if menu1[11] == true then S11() end
if menu1[12] == true then S12() end
if menu1[13] == true then S13() end
if menu1[14] == true then S14() end
if menu1[15] == true then S15() end
if menu1[16] == true then S16() end
if menu1[17] == true then S17() end
if menu1[18] == true then S18() end
if menu1[19] == true then S19() end
if menu1[20] == true then S20() end
if menu1[21] == true then S21() end
if menu1[22] == true then HOME() end
end
end


function S1()--角色技能免费--方法名1--get_CoinCost--方法名2--CostCoin
fastsearch
({
{0.00048828154,16,16384},
{-382908368,-576,4},
{-494030840,-572,4},
{167772163,-648,4}
},
{{-476053503,3328,4},
{-516948194,3332,4},
{-476053504,-576,4},
{-516948194,-572,4,false}})
end



function S2()--角色技能无冷--方法名1--ReduceCoolingDown--方法名2--CanStartSkill--方法名3--get_ChargeProgress--方法名4--get_Cooldown--方法名5--get_Activating
fastsearch
({
{-0.00048828369,16,16384},
{-382907280,-360,4},
{-494030832,-356,4},
},
{{-476053503,-360,4},
{-516948194,-356,4,false}})
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
},
{{-476053504,308,4},
{-516948194,312,4},
{-476050943,1652,4},
{-516948194,1656,4},
{-476053503,2344,4},
{-516948194,2348,4},
{-476053503,-536,4},
{-516948194,-532,4,false}})
end
function S3()
fastsearch--({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}}) 
({{4787326404979064832,32,32},{0,28,4}},{{10,28,4,true}}) 
end

function S4()
fastsearch({{-934560717,4,32},{1090519040,-36,4}},{{0,-32,4,true},{0,-36,4,false}})
end

function S5()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
end

function S6()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end

function S7()
qmnb = {
{["memory"] = 32},
{["name"] = "琪琪技能"},
{["value"] = 8.407790785948902E-44, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 1, ["offset"] = -8, ["type"] = 16},
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end
function S8()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end


function S9()
qmnb = {
{["memory"] = 32},
{["name"] = "命石抱摔"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = -12, ["type"] = 16},
}
qmxg = {
{["value"] = 1, ["offset"] = -156, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0, ["offset"] = -260, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = -256, ["type"] = 4, ["freeze"] = true},
{["value"] = 3.0, ["offset"] = -100, ["type"] = 16, ["freeze"] = true},
{["value"] = 80.0, ["offset"] = -96, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end  
function S10()
qmnb = {
{["memory"] = 32},
{["name"] = "水忍滑铲"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 70,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4},
}
xqmnb(qmnb)
end
function S11()
NH=gg.prompt({"输入你想要的范围，初始范围为5.5"},{[1]=""})
readWrite({{false,0.375,148,16,nil,nil},{30.0,156,16},{0.5,168,16}},{{0,0,16,false},{0,4,16,true},{NH[1],128,16,false}},16,32,"夜翎")
end
function S12()
NH=gg.prompt({" 墙上移速为2，地面移速为0"},{[1]=""})
readWrite({{false,3.5873240686715317E-43,0,16,nil,nil},{0.0,40,16},{1.0,80,16},{9.183549615799121E-41,192,16}},{{NH[1],72,16,true}},16,32,"夜翎加速")
end

function S13()
qmnb = {
{["memory"] = 32},
{["name"] = "梦魇免费"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 6.0,["offset"] =-36, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end  

function S14()
qmnb = {
{["memory"] = 32},
{["name"] = "影忍技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
{["lv"] = 1036831949,["offset"] =-36, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 9999,["offset"] =-40, ["type"] = 4},
{["value"] = 1.5,["offset"] =84, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end  


function S15()
qmnb = {
{["memory"] = 32},
{["name"] = "劲铠技能"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 8.0,["offset"] =-36, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 6.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
{["value"] = 3.3,["offset"] =104, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function S16()
qmnb = {
{["memory"] = 32},
{["name"] = "盾卫1"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 60,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "盾卫2"},
{["value"] = -934560717, ["type"] = 4},
{["lv"] = 80,["offset"] =-32, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-32, ["type"] = 4, ["freeze"] = true},
{["value"] = 15.0,["offset"] =-36, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end
function S17()
qmnb = {
{["memory"] = 32},
{["name"] = "狮子范围"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-24, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)
end

function S18()
fastsearch
({{1581114487,4,32},
{-934560717,-4,4},
{0,-8,4}
,{0,20,4}
},{
{0,-36,4},
{9999,-44,4,false}})
end


function S19()
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

function S20()
qmnb = {
{["memory"] = 32},
{["name"] = "特工技能"},
{["value"] = 0.30000001192092896, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-4, ["type"] = 16},
{["lv"] = 50,["offset"] =-56, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =-56, ["type"] = 4},
{["value"] = 0,["offset"] =-60, ["type"] = 16},
}
xqmnb(qmnb)
end

function S21()
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

function JJ3()
gg.alert("暂时不可以用")
HOME()
end

function LP()
menu1 = gg.multiChoice({
'疾跑改无敌',
'跳高改暴走',
'车轮无限撞人',
'车轮buff',
'酒桶1件套',
'药包范围',
'传送门范围',
'小飞机进化',
'毒液范围',
'引力场范围',
'返回主页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then LP1() end
if menu1[2] == true then LP2() end
if menu1[3] == true then LP3() end
if menu1[4] == true then LP4() end
if menu1[5] == true then LP5() end
if menu1[6] == true then LP6() end
if menu1[7] == true then LP7() end
if menu1[8] == true then LP8() end
if menu1[9] == true then LP9() end
if menu1[10] == true then LP10() end
if menu1[11] == true then HOME() end
end
end

function LP1()--疾跑改无敌
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

function LP2()--跳高改暴走
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

function LP3()
qmnb={
{['memory']=32},
{['name']='车轮无限撞人'},
{['value']=1.5, ['type']=16},
{['lv']=9.0,['offset']=-8, ['type']=16},
{['lv']=0.20000000298023224,['offset']=56, ['type']=16},
{['lv']=0.4000000059604645,['offset']=84, ['type']=16},
}
qmxg=
{
{['value']=9999,['offset']=0,['type']=16},
}
xqmnb(qmnb)
end

function LP4()--buff
fastsearch({{-1046478848, 4, 32}, {588, 4, 4}, {587, 8, 4}, {-853297860, 792886396, 4}}, {{300, 4, 4, false}, {300, 8, 4, false}})
end

function LP5()
qmnb = {
{["memory"] = 32},
{["name"] = "酒桶一套"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 99.0,["offset"] =-4, ["type"] = 16},
{["value"] = 1.0,["offset"] =132, ["type"] = 16},
{["value"] = 0,["offset"] =136, ["type"] = 4},
}
xqmnb(qmnb)
end

function LP6()
NH=gg.prompt({"输入医疗包范围，初始值为1.2(可多次修改↓)"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =NH[1], ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end


function LP7()
qmnb = {
{["memory"] = 32},
{["name"] ="传送门范围"},
{["value"] =4617315517961601024, ["type"] = 32},
{["lv"] = 2.3125, ["offset"] = 4, ["type"] = 16},
 }
qmxg = {
{["value"] =20, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end
function LP8()
NH=gg.prompt({"输入导弹发射数量(可进行多次修改)↓","输入导弹伤害(可进行多次修改)↓","输入导弹范围(可进行多次修改)↓"},{[1]="",[2]="",[3]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "飞机强化"},
      {["value"] = 1085276160, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 16, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -28, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -36, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 40, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 44, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -196, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0, ["offset"] = -4, ["type"] = 16},
      {["value"] = 0, ["offset"] = -24, ["type"] = 4},
      {["value"] = 0, ["offset"] = -20, ["type"] = 16},
      {["value"] = NH[3], ["offset"] = -8, ["type"] = 16},
      {["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
      {["value"] = NH[2], ["offset"] = -16, ["type"] = 4},
    }
    xqmnb(qmnb)
end
function LP9()
NH=gg.prompt({"输入范围，初始值为2.0↓)"},{[1]=""})
fastsearch({
{200.0,16,32},
{2.0,8,16}
},{
{NH[1],8,16,false}
})
end

function LP10()
NH=gg.prompt({"输入引力场范围(可多次修改↓)"},{[1]=""})
fastsearch({{1075838976, 4, 32}, {-0.25, -36, 16}, {0.6000000238418579, -32, 16}, {0.8999999761581421, -24, 16}, {20.0, -16, 16}, {500.0, -12, 16}, {0.20000000298023224, 4, 16}}, {{NH[1], -4, 16, false}})
end


function km()
gg.alert("暂时不可以用")
HOME()
end
function HOME()
Main()
end


function md()
d = gg.alert('快点进群','退出脚本',"复制群号")
if d == 1 then os.exit()end
if d == 2 then gg.copyText("725334154")end
end 
gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end