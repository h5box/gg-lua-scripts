


    

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end
function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==Tp then return v.start end end end
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
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
--木杨破解仿xs写法配置
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
--木杨破解 【【 核心代码，不懂勿动 】】
--木杨破解   JF Script编辑器
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
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
--木杨破解 【【 核心代码，不懂勿动 】】
--木杨破解   JF Script编辑器
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
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
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
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
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
				--木杨破解- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --木杨破解- true 就是冻结
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
				--木杨破解- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --木杨破解- true 就是冻结
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
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
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
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
--木杨破解 【【 核心代码，不懂勿动 】】
--木杨破解   JF Script编辑器
D=gg.TYPE_DWORD E=gg.TYPE_DOUBLE F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end

--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解
function X(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name.."\n".."开启成功") else gg.toast("提示:".."\n"..Name.."\n".."开启失败",false) return false end else gg.toast("提示:".."\n"..Name.."\n".."开启失败") return false end end
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end

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
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
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
           gg.toast("\n共修改"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
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



function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
--木杨破解 【【 核心代码，不懂勿动 】】
--木杨破解   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
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
				--木杨破解- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --木杨破解- true 就是冻结
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
		local _Q = tonumber(0x83A2A3F)
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
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
function xtnb(Search, Get, Type, Range, Name)
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功了呢～，宝贝～～祝您游戏愉快～～") end
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
		gg.toast("已修改0条数据")
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
				--木杨破解- 遍历每个结果
				for _, vv in ipairs(write) do
					local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
					if vv[4] then --木杨破解- true 就是冻结
						table.insert(tb[2], p)
					else
						table.insert(tb[1], p)
					end
				end
			end
			gg.addListItems(tb[2])
			gg.setValues(tb[1])
		gg.toast("已修改" .. (#tb[1] + #tb[2]) .. "个值")
		else
			gg.toast("已修改0条数据")
		end
	end
end
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
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


DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
gg.toast('当前版本8.14.1\n适配游戏逃跑吧少年')
function Main()
gg.toast('by.子期')
menu1 = gg.multiChoice({
     "[ 简页 ]    游戏配置",
	 "强制结算",
	 "直装功能",
	 "必用上分",
	 "音乐功能",
	 "结束程序"
	 
	 
}, nil, ("[内部项目] : 逃跑吧少年\n[支持渠道] : 360  全服木\n[Interior] :  4.6版本"))


if menu1 == nil then else
if menu1[1] == true then ghjkl() end
if menu1[2] == true then qw552222() end
if menu1[3] == true then JJ22222() end
if menu1[4] == true then cgg5() end
if menu1[5] == true then play2() end
if menu1[6] == true then os.exit() end
end end


function ghjkl()
menu1 = gg.multiChoice({
"登录防闪",
"游戏防封",
"解封账号",
"备用解封",
"返回脚本"
},nil,os.date(""))
if menu1 == nil then else
if menu1[1] == true then q1S() end
if menu1[2] == true then L9_849() end
if menu1[3] == true then qa2() end
if menu1[4] == true then qa1() end
if menu1[5] == true then Main() end
end
end


function q1S()
  gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function q1()
  gg.clearResults()
	 gg.setRanges(114514)
	 gg.searchNumber("360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("360本来就可以无限创号\n你个sz")
	 gg.clearResults()
end

 function L9_849()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
    gg.searchNumber("12131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("454648", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  
  function qa1()
  if gg.getTargetInfo().label ~= "..mingcheng.." then
    if gg.alert("当前进程:" .. gg.getTargetInfo().label .. "！\n请确认此进程是框架进程\n是否继续？", "继续", "返回") == 1 then
    end
    if gg.alert("当前进程:" .. gg.getTargetInfo().label .. "！\n请确认此进程是框架进程\n是否继续？", "继续", "返回") == 2 then
      Main0()
      return false
    end
  else
  end
  if true == true then
    if io.open("/storage/emulated/0/Android/data/" .. gg.getTargetPackage() .. "/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt") ~= nil then
      io.open("/storage/emulated/0/Android/data/" .. gg.getTargetPackage() .. "/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt", "w"):write((math.random(111111111, 999999999)))
      gg.toast("写入成功")
    else
      gg.alert("检测到目标文件不存在！无法修改文件！")
    end
  end
end
function qa2()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/com.bfire.da.nuj/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("检测到目标文件不存在！无法修改文件！")
end
end
end

  

function JJ22222()
menu1 = gg.multiChoice({
"360直装",
"全服直装",
"360+通用",
"子期内部",
"二区直装",
"倾城脚本",
"鱼塘脚本",
"三区直装",
"返回主页",
},nil,os.date("8.14.1过后直装功能全部下架"))
if menu1 == nil then else
if menu1[1] == true then T00() end
if menu1[2] == true then JJ2222() end
if menu1[3] == true then Mn() end
if menu1[4] == true then Main2nn() end
if menu1[5] == true then dsb2() end
if menu1[6] == true then dsb3() end
if menu1[7] == true then dsb4() end
if menu1[8] == true then dsb5() end
if menu1[9] == true then Main() end

end
end

function T00()
  gg.toast('8.14.1')
  SN = gg.multiChoice({
	 "锁定子弹",--木杨破解-1
	 "武器间隔",--木杨破解-2
	 "穿墙射程",--木杨破解-3
	 "道具冷却",--木杨破解-4
	 "枪枪暴击",--木杨破解-5
	 "强制开门",--木杨破解-6
	 "锁定变身",--木杨破解-7
	 "移动开物",--木杨破解-8
	 "击倒队友",--木杨破解-9
	 "暗黑透视",--木杨破解-10
	 "明亮透视",--木杨破解-11
	 "雷达透视",--木杨破解-12
	 "自动开锁",--木杨破解-13
	 "倒地不清",--木杨破解-14
	 "解锁角色",--木杨破解-15
	 "角色皮肤️",--木杨破解-16
	 "解锁道具",--木杨破解-17
	 "道具皮肤",--木杨破解-18
	 "道具520级",--木杨破解-19
	 "乱斗锁卡",--木杨破解-20
	 "解锁模式",
	 "返回主页"
},nil,"")
if SN == nil then else    end
if SN[1] == true then T1() end
if SN[2] == true then T2() end
if SN[3] == true then T3() end
if SN[4] == true then T4() end
if SN[5] == true then T5() end
if SN[6] == true then T6() end
if SN[7] == true then T7() end
if SN[8] == true then T8() end
if SN[9] == true then T9() end
if SN[10] == true then T10() end
if SN[11] == true then T11() end
if SN[12] == true then T12() end
if SN[13] == true then T13() end
if SN[14] == true then T14() end
if SN[15] == true then T15() end
if SN[16] == true then T16() end
if SN[17] == true then T17() end
if SN[18] == true then T18() end
if SN[19] == true then T19() end
if SN[20] == true then T20() end
if SN[21] == true then T21() end
if SN[22] == true then JJ22222() end

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

function wtmnb()
menu1 = gg.multiChoice({
"观战控制人",
"关控制别人",
"大神资格证",
"跳跃开物",
"追捕开锁",
"车轮撞人",
"实体钻石",
"十年大礼包",
"传送功能",
"换卡功能",
"锁全激活",
"逃生秒赢",
"追捕秒赢",
"返回主页",
},nil,os.date("杂七杂八功能"))
if menu1 == nil then else
if menu1[1] == true then HS1() end
if menu1[2] == true then HS2() end
if menu1[3] == true then HS3() end
if menu1[4] == true then HS4() end
if menu1[5] == true then HS5() end
if menu1[6] == true then HS6() end
if menu1[7] == true then HS7() end
if menu1[8] == true then HS8() end
if menu1[9] == true then dsb() end
if menu1[10] == true then qy17() end
if menu1[11] == true then c55() end
if menu1[12] == true then c56() end
if menu1[13] == true then c57() end
if menu1[14] == true then Main() end
end
end



function HS1()fastsearch({{-442542840,4,16384},{-498216952,-4,4},{-494030832,-8,4}},{{-516948194,-12,4,false}})end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-516,948,194;-494,030,832;-498,216,952;-442,542,840", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-516,948,194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382,908,176", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;101;102;103;104::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;103;104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("305;306;105;301", gg.TYPE_DWORD)
	 gg.toast("完成")
	 gg.clearResults()
end

function HS4()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'跳跃开物')
end



function HS5()qmnb = {
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



function HS6()qmnb=
{
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
xqmnb(qmnb,qmxg)
end

function HS7()
local kj=gg.prompt({'银币','点券','钻石'})
if kj==nil then else
if kj[1]=='' or kj[2]=='' or kj [3]then end
TG(32,{{900001,0},{910001,4},{1,-8},},{{kj[1],-12,false},{kj[3],40,false},{kj[2],44,false},},4,"已修改为"..kj[1].."银币"..kj[2].."点券"..kj[3].."钻石")
end
end

function HS8()
s=gg.alert("确定要开启吗？","算了","确定")
if s==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "封号第一步"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "封号第二步"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "封号第三步"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end
end

function c54()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x12c3eb8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x12c3eb8},})
end

function c55()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x177b60c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x177b610},})
end

function c56()--木杨破解逃生秒赢--木杨破解方法名1--木杨破解get_GameTime改~A MOV R0, #66, 8;~A BX LR--木杨破解方法名2--木杨破解get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--木杨破解方法名3--木杨破解get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--木杨破解方法名4--木杨破解get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--木杨破解方法名5--木杨破解get_IsOpend改~A MOV R0, #1;~A BX LR--木杨破解方法名6--木杨破解UpdateMaxLife-Update改~A MOV R0, #0 BX LR
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

function c57()--木杨破解追捕秒赢--木杨破解方法名1--木杨破解get_StillPlayingThiefCount改~A MOV R0 #0;~A BX LR--木杨破解方法名2--木杨破解get_FinalCapturedThiefCount改~A MOVT R0 #20;~A BX LR--木杨破解方法名3--木杨破解get_RemainedThiefCount改~A MOV R0 #0;~A BX LR--木杨破解方法名4--木杨破解get_KnockDownNum改~A MOVt R0, #999;~A BX LR--木杨破解方法名5--木杨破解get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--木杨破解方法名6--木杨破解get_GameTime改~A MOVT R0, #17250;~A BX LR--木杨破解方法名7--木杨破解get_RealCapturedThiefCount改~A MOV R0 #20;~A BX LR--木杨破解方法名8--木杨破解get_SuvivingThiefCount改~A MOV R0 #50;~A BX LR
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




function qw222()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1660944384;1996488704;1728053248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封①")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4194752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封②")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("82837768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封③")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("398459336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("注入成功.追捕不演最多撑到黄金")
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("830734336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封①")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("578813952", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封②")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("68157440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封③")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1364197376", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封④")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("272629760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("注入成功.祝你游戏玩的愉快")
	 gg.clearResults()
end

function ss1222()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')

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
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)

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

fastsearch({
     {-10, 16, 32},
     {49.0, 20, 16}, 
   }, {
      {999999, 0, 16, false},
   },"人物穿墙")

   fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")


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

fastsearch
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})

end




function qw552222()

 menu1= gg.multiChoice({
"关闭秒赢",
"逃生秒赢",
"追捕秒赢",
"返回主页",
}, nil, "")
if menu1 == nil then else
if menu1[1] == true then eaa35() end
if menu1[2] == true then eaa34() end
if menu1[3] == true then eaa36() end
if menu1[4] == true then Main() end
end
end






function eaa34()
fastsearch--木杨破解强制结算
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539256,208,4},
{-516948194,212,4,false}})

fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})

fastsearch--木杨破解击倒50
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
end
function eaa35()

fastsearch--木杨破解抓获50人
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4},
{-494030820,80,4,false}})

fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})

fastsearch--木杨破解逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4},
{-494030820,212,4,false}})

fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4},
{-494030840,-752,4,false}})
end



function eaa36()
fastsearch--木杨破解抓获50人
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4},
{-516948194,80,4,false}})

fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})

fastsearch--木杨破解击倒50
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
end




--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-

function q1S()
  gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


	 



HHJ={
'道具等级[状态:关闭]',
'解锁角色[状态:关闭]', 
'道具皮肤[状态:关闭]', 
'角色皮肤[状态:关闭]', 
'道具锁卡[状态:关闭]',
'子弹速度[状态:关闭]', 
'人物漂浮[状态:关闭]', 
'道具无冷[状态:关闭]', 
'变身攻击[状态:关闭]', 
'解锁模式[状态:关闭]', 
'武器后座[状态:关闭]', 
'跳跃开物[状态:关闭]', 
'渲染透视[状态:关闭]', 
'子弹穿墙[状态:关闭]', 
'人物爬墙[状态:关闭]', 
'无视无敌[状态:关闭]', 
'稳定高跳[状态:关闭]', 
'反弹伤害[状态:关闭]', 
'稳定移速[状态:关闭]', 
'地图高亮[状态:关闭]',
'己方视野[状态:关闭]', 
'箱子锁血[状态:关闭]', 
'追捕开锁[状态:关闭]', 
'直接开门[状态:关闭]', 
'武器秒杀[状态:关闭]', 
'倒地复活[状态:关闭]', 
'制裁队友[状态:关闭]', 
'技能免费[状态:关闭]', 
'技能冷却[状态:关闭]', 
'护盾血量[状态:关闭]', 
'全图踩夹[状态:关闭]', 
'--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解秒赢区--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解',
'32秒结算[状态:关闭]', 
'强制结算[状态:关闭]', 
'救人数量[状态:关闭]', 
'个人伤害[状态:关闭]', 
'逃生八人[状态:关闭]', 
'逃生四人[状态:关闭]', 
'抓获50人[状态:关闭]', 
'击倒50人[状态:关闭]', 
'逃生秒赢[状态:关闭]', 
'追捕秒赢[状态:关闭]', 
'返回主页菜单',
}
function JJ2222()  
A = gg.choice(HHJ,nil,'')
if A == 1 then a1() end
if A == 2 then a2() end
if A == 3 then a3() end
if A == 4 then a4() end
if A == 5 then a5() end
if A == 6 then a6() end
if A == 7 then a7() end
if A == 8 then a8() end
if A == 9 then a9() end
if A == 10 then a10() end
if A == 11 then a11() end
if A == 12 then a12() end
if A == 13 then a13() end
if A == 14 then a14() end
if A == 15 then a15() end
if A == 16 then a16() end
if A == 17 then a17() end
if A == 18 then a18() end
if A == 19 then a19() end
if A == 20 then a20() end
if A == 21 then a21() end
if A == 22 then a22() end
if A == 23 then a23() end
if A == 24 then a24() end
if A == 25 then a25() end
if A == 26 then a26() end
if A == 27 then a27() end
if A == 28 then a28() end
if A == 29 then a29() end
if A == 30 then a30() end
if A == 31 then a31() end
if A == 32 then a32() end
if A == 33 then a33() end
if A == 34 then a34() end
if A == 35 then a35() end
if A == 36 then a36() end
if A == 37 then a37() end
if A == 38 then a38() end
if A == 39 then a39() end
if A == 40 then a40() end
if A == 41 then a41() end
if A == 42 then a42() end
if A == 43 then JJ22222() end
end

HH42=true--木杨破解已完成
HH33=true--木杨破解已完成
HH34=true--木杨破解已完成
HH36=true--木杨破解已完成
HH39=true--木杨破解已完成
HH40=true--木杨破解已完成
function a42()
if HH42 == true then
fastsearch--木杨破解32秒
({
{-310113762,4,16384},
{-382908368,20,4},
{-494030840,24,4}
},
{{-476052414,20,4},
{-516948194,24,4,false}})
fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
fastsearch--木杨破解伤害
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4},
{-301987312,-540,4},
{-289928512,-536,4},
{-300938736,-532,4},
{-516948194,-528,4,false}})
fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})
fastsearch--木杨破解抓获50人
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4},
{-516948194,80,4,false}})
HHJ[42]="一键追捕秒赢[状态:生效中]"
HHJ[33]="32秒结算[状态:生效中]"
HHJ[34]="强制结算[状态:生效中]"
HHJ[39]="抓获50人[状态:生效中]"
HHJ[36]="个人伤害[状态:生效中]"
HHJ[40]="击倒50人[状态:生效中]"
HH42=false--木杨破解已完成
HH33=false--木杨破解已完成
HH34=false--木杨破解已完成
HH36=false--木杨破解已完成
HH39=false--木杨破解已完成
HH40=false--木杨破解已完成
else
fastsearch--木杨破解32秒
({
{-310113762,4,16384},
{-476052414,20,4},
{-516948194,24,4}
},
{{-382908368,20,4},
{-494030840,24,4,false}})
fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})
fastsearch--木杨破解伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4},
{-494030840,-540,4},
{-442544008,-536,4},
{-509591552,-532,4},
{-527478779,-528,4,false}})
fastsearch--木杨破解抓获50人
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4},
{-494030820,80,4,false}})
fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4},
{-494030840,-752,4,false}})
HHJ[42]="一键追捕秒赢[状态:关闭]"
HHJ[33]="32秒结算[状态:关闭]"
HHJ[34]="强制结算[状态:关闭]"
HHJ[39]="抓获50人[状态:关闭]"
HHJ[36]="个人伤害[状态:关闭]"
HHJ[40]="击倒50人[状态:关闭]"
HH42=true--木杨破解已完成
HH33=true--木杨破解已完成
HH34=true--木杨破解已完成
HH36=true--木杨破解已完成
HH39=true--木杨破解已完成
HH40=true--木杨破解已完成
end end

HH41=true
HH33=true--木杨破解已完成
HH34=true--木杨破解已完成
HH35=true--木杨破解已完成
HH36=true--木杨破解已完成
HH40=true--木杨破解已完成
function a41()
if HH41 == true then
fastsearch--木杨破解32秒
({
{-310113762,4,16384},
{-382908368,20,4},
{-494030840,24,4}
},
{{-476052414,20,4},
{-516948194,24,4,false}})
fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})
fastsearch--木杨破解救人
({
{-128.31251525879,16,16384},
{-382908368,1112,4},
{-494030840,1116,4},
{167772175,1028,4}
},
{{-476049800,1112,4},
{-516948194,1116,4,false}})
fastsearch--木杨破解伤害
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4},
{-301987312,-540,4},
{-289928512,-536,4},
{-300938736,-532,4},
{-516948194,-528,4,false}})
fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
HHJ[41]="一键逃生秒赢[状态:生效中]"
HHJ[33]="32秒结算[状态:生效中]"
HHJ[34]="强制结算[状态:生效中]"
HHJ[35]="救人数量[状态:生效中]"
HHJ[36]="个人伤害[状态:生效中]"
HHJ[40]="击倒50人[状态:生效中]"
HH41=false
HH33=false--木杨破解已完成
HH34=false--木杨破解已完成
HH35=false--木杨破解已完成
HH36=false--木杨破解已完成
HH40=false--木杨破解已完成
else
fastsearch--木杨破解32秒
({
{-310113762,4,16384},
{-476052414,20,4},
{-516948194,24,4}
},
{{-382908368,20,4},
{-494030840,24,4,false}})
fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4},
{-494030840,-752,4,false}})
fastsearch--木杨破解救人
({
{-128.31251525879,16,16384},
{-476049800,1112,4},
{-516948194,1116,4},
{167772175,1028,4}
},
{{-382908368,1112,4},
{-494030840,1116,4,false}})
fastsearch--木杨破解伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4},
{-494030840,-540,4},
{-442544008,-536,4},
{-509591552,-532,4},
{-527478779,-528,4,false}})
fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})
HHJ[41]="一键逃生秒赢[状态:关闭]"
HHJ[33]="32秒结算[状态:关闭]"
HHJ[34]="强制结算[状态:关闭]"
HHJ[35]="救人数量[状态:关闭]"
HHJ[36]="个人伤害[状态:关闭]"
HHJ[40]="击倒50人[状态:关闭]"
HH41=true
HH33=true--木杨破解已完成
HH34=true--木杨破解已完成
HH35=true--木杨破解已完成
HH36=true--木杨破解已完成
HH40=true--木杨破解已完成
end end

HH40=true--木杨破解已完成
function a40()
if HH40 == true then
fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4},
{-516948194,-752,4,false}})
HHJ[40]="击倒50人[状态:生效中]"
HH40=false
else
fastsearch--木杨破解击倒50
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4},
{-494030840,-752,4,false}})
HHJ[40]="击倒50人[状态:关闭]"
HH40=true
end end

HH39=true--木杨破解已完成
function a39()
if HH39 == true then
fastsearch--木杨破解抓获50人
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4},
{-516948194,80,4,false}})
HHJ[39]="抓获50人[状态:生效中]"
HH39=false
else
fastsearch--木杨破解抓获50人
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4},
{-494030820,80,4,false}})
HHJ[39]="抓获50人[状态:关闭]"
HH39=true
end end

HH38=true--木杨破解已完成
function a38()
if HH38 == true then
fastsearch--木杨破解逃脱人数4人
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539260,208,4},
{-516948194,212,4,false}})
HHJ[38]="逃生四人[状态:生效中]"
HH38=false
else
fastsearch--木杨破解逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4},
{-494030820,212,4,false}})
HHJ[38]="逃生四人[状态:关闭]"
HH38=true
end end

HH37=true--木杨破解已完成
function a37()
if HH37 == true then
fastsearch--木杨破解逃脱人数8人
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539256,208,4},
{-516948194,212,4,false}})
HHJ[37]="逃生八人[状态:生效中]"
HH37=false
else
fastsearch--木杨破解逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4},
{-494030820,212,4,false}})
HHJ[37]="逃生八人[状态:关闭]"
HH37=true
end end

HH36=true--木杨破解已完成
function a36()
if HH36 == true then
fastsearch--木杨破解伤害
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4},
{-301987312,-540,4},
{-289928512,-536,4},
{-300938736,-532,4},
{-516948194,-528,4,false}})
HHJ[36]="个人伤害[状态:生效中]"
HH36=false
else
fastsearch--木杨破解伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4},
{-494030840,-540,4},
{-442544008,-536,4},
{-509591552,-532,4},
{-527478779,-528,4,false}})
HHJ[36]="个人伤害[状态:关闭]"
HH39=true
end end

HH35=true--木杨破解已完成
function a35()
if HH35 == true then
fastsearch--木杨破解救人
({
{-128.31251525879,16,16384},
{-382908368,1112,4},
{-494030840,1116,4},
{167772175,1028,4}
},
{{-476049800,1112,4},
{-516948194,1116,4,false}})
HHJ[35]="救人数量[状态:生效中]"
HH35=false
else
fastsearch--木杨破解救人
({
{-128.31251525879,16,16384},
{-476049800,1112,4},
{-516948194,1116,4},
{167772175,1028,4}
},
{{-382908368,1112,4},
{-494030840,1116,4,false}})
HHJ[35]="救人数量[状态:关闭]"
HH35=true
end end

HH34=true--木杨破解已完成
function a34()
if HH34 == true then
fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4},
{-516948194,-472,4,false}})
HHJ[34]="强制结算[状态:生效中]"
HH34=false
else
fastsearch--木杨破解强制结算
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4},
{-494030824,-472,4,false}})
HHJ[34]="强制结算[状态:关闭]"
HH34=true
end end

HH33=true--木杨破解已完成
function a33()
if HH33 == true then
fastsearch--木杨破解32秒
({
{-310113762,4,16384},
{-382908368,20,4},
{-494030840,24,4}
},
{{-476052414,20,4},
{-516948194,24,4,false}})
HHJ[33]="32秒结算[状态:生效中]"
HH33=false
else
fastsearch--木杨破解32秒
({
{-310113762,4,16384},
{-476052414,20,4},
{-516948194,24,4}
},
{{-382908368,20,4},
{-494030840,24,4,false}})
HHJ[33]="32秒结算[状态:关闭]"
HH33=true
end end

function a32()
end


HH31=true--木杨破解已完成
function a31()
if HH31 == true then
fastsearch
({
{128.31251525879,16,16384},
{-382907280,-400,4},
{167772163,-452,4}
},
{
{-516948194,-400,4,false}})
HHJ[31]="全图踩夹[状态:生效中]"
HH31=false
else
fastsearch
({{128.31251525879,16,16384},
{-516948194,-400,4},
{167772163,-452,4}
},
{
{-382907280,-400,4,false}})
HHJ[31]="全图踩夹[状态:关闭]"
HH31=true
end end

HH30=true--木杨破解已完成
function a30()
if HH30 == true then
fastsearch
({
{0.30000001192,16,16384},
{-1023406079,-660,4}
},
{
{110.5,0,16,false}})
HHJ[30]="护盾血量[状态:生效中]"
HH30=false
else
fastsearch
({
{110.5,16,16384},
},
{
{0.30000001192,0,16,false}})
HHJ[30]="护盾血量[状态:关闭]"
HH30=true
end end

HH29=true--木杨破解已完成
function a29()
if HH29 == true then
fastsearch
({
{-0.0004882816,16,16384},
{-382908368,-536,4},
{-494030840,-532,4},
{-382908368,308,4}
},
{{-476053504,308,4},
{-516948194,312,4},
{-476050943,1652,4},
{-516948194,1656,4},
{-476053503,2344,4},
{-516948194,2348,4},
{-476053503,-536,4},
{-516948194,-532,4,false}})
HHJ[29]="技能冷却[状态:生效中]"
HH29=false
else
fastsearch
({
{-0.0004882816,16,16384},
{-476053503,-536,4},
{-516948194,-532,4},
{-476053504,308,4},
},
{{-382908368,308,4},
{-494030840,312,4},
{-382908368,1652,4},
{-494030840,1656,4},
{-382907280,2344,4},
{-494030832,2348,4},
{-382908368,-536,4},
{-494030840,-532,4,false}})
HHJ[29]="技能冷却[状态:关闭]"
HH29=true
end end

HH28=true--木杨破解已完成
function a28()
if HH28 == true then
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
HHJ[28]="技能免费[状态:生效中]"
HH28=false
else
fastsearch
({
{0.00048828154,16,16384},
{-476053504,-576,4},
{-516948194,-572,4},
{167772163,-648,4}
},
{{-382906384,3328,4},
{-494030820,3332,4},
{-382908368,-576,4},
{-494030840,-572,4,false}})
HHJ[28]="技能免费[状态:关闭]"
HH28=true
end end

HH27=true--木杨破解已完成
function a27()
if HH27 == true then
fastsearch--木杨破解杀队友
({
{104,4,16384},
{104,4,4},
{-382908368,-1564,4}
},
{
{-516948194,-1564,4,false}})
HHJ[27]="制裁队友[状态:生效中]"
HH27=false
else
fastsearch--木杨破解杀队友
({
{104,4,16384},
{104,4,4},
{-516948194,-1564,4}
},
{
{-382908368,-1564,4,false}})
HHJ[27]="制裁队友[状态:关闭]"
HH27=true
end end

HH26=true--木杨破解已完成
function a26()
if HH26 == true then
fastsearch
({
{-388161.5,16,16384},
{-382907280,-1048,4},
},
{{-516948194,-1044,4},
{-476053504,-1048,4,false}})
HHJ[26]="倒地复活[状态:生效中]"
HH26=false
else
fastsearch
({
{-388161.5,16,16384},
{-476053504,-1048,4},
},
{{-494030832,-1044,4},
{-382907280,-1048,4,false}})
HHJ[26]="倒地复活[状态:关闭]"
HH26=true
end end

HH25=true--木杨破解已完成
function a25()
if HH25 == true then
fastsearch
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
HHJ[25]="武器秒杀[状态:生效中]"
HH25=false
else
fastsearch
({
{0.00048828148,16,16384},
{-476052718,1464,4},
{-516948194,1468,4},
{167772164,1420,4}
},
{{-494030840,1468,4},
{-382908368,1464,4,false}})
HHJ[25]="武器秒杀[状态:关闭]"
HH25=true
end end

HH24=true--木杨破解已完成
function a24()
if HH24 == true then
fastsearch
({
{0.00048828166,16,16384},
{-382908368,-988,4},
{0,-352,4}
},
{{-476053503,-988,4},
{-516948194,-984,4,false}})
HHJ[24]="直接开门[状态:生效中]"
HH24=false
else
fastsearch
({
{0.00048828166,16,16384},
{-476053503,-988,4},
{0,-352,4}
},
{{-494030840,-984,4},
{-382908368,-988,4,false}})
HHJ[24]="直接开门[状态:关闭]"
HH24=true
end end

HH23=true--木杨破解已完成
function a23()
if HH23 == true then
fastsearch
({
{-0.00195311918,16,16384},
{-382908368,-548,4},
{-494030840,-544,4}
},
{
{-516948194,-548,4,false}})
HHJ[23]="追捕开锁[状态:生效中]"
HH23=false
else
fastsearch
({
{-0.00195311918,16,16384},
{-494030840,-544,4},
{-516948194,-548,4}
},
{
{-382908368,-548,4,false}})
HHJ[23]="追捕开锁[状态:关闭]"
HH23=true
end end

HH22=true--木杨破解已完成
function a22()
if HH22 == true then
fastsearch
({
{0.00048828148,16,16384},
{-382907280,-1924,4},
{0,-2228,4}
},
{
{-516948194,-1924,4,false}})
HHJ[22]="箱子锁血[状态:生效中]"
HH22=false
else
fastsearch
({
{0.00048828148,16,16384},
{-516948194,-1924,4},
{0,-2228,4}
},
{
{-382907280,-1924,4,false}})
HHJ[22]="箱子锁血[状态:关闭]"
HH22=true
end end

HH21=true
function a21()
if HH21 == true then
fastsearch
({
{-1046462464,4,16384},
{-382906896,188,4}
},
{
{-516948194,188,4,false}})
HHJ[21]="己方视野[状态:生效中]"
HH21=false
else
fastsearch
({
{-1046462464,4,16384},
{-516948194,188,4}
},
{
{-382906896,188,4,false}})
HHJ[21]="己方视野[状态:关闭]"
HH21=true
end end

HH20=true
function a20 ()
if HH20 == true then
fastsearch
({
{-308471283,4,16384},
{-382908368,-724,4},
},
{
{-516948194,-724,4,false}})
HHJ[20]="地图高亮[状态:生效中]"
HH20=false
else
fastsearch
({
{-308471283,4,16384},
{-516948194,-724,4},
},
{
{-382908368,-724,4,false}})
HHJ[20]="地图高亮[状态:关闭]"
HH20=true
end end

HH19=true
function a19()
if HH19 == true then
fastsearch
({
{-444251988,4,16384},
{-382908368,20,4},
{-494030840,24,4},
{-442543992,28,4},
},
{{-476052418,20,4},
{-516948194,24,4,false}})
HHJ[19]="稳定移速[状态:生效中]"
HH19=false
else
fastsearch
({
{-444251988,4,16384},
{-476052418,20,4},
{-516948194,24,4},
{-442543992,28,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
HHJ[19]="稳定移速[状态:关闭]"
HH19=true
end end

HH18=true
function a18()
if HH18 == true then
fastsearch
({
{-128.00001525879,16,16384},
{-382908368,1260,4}
},
{{-482082800,1260,4},
{-516948194,1264,4,false}})
HHJ[18]="反弹伤害[状态:生效中]"
HH18=false
else
fastsearch
({
{-128.00001525879,16,16384},
{-482082800,1260,4}
},
{{-382908368,1260,4},
{-494030840,1264,4,false}})
HHJ[18]="反弹伤害[状态:关闭]"
HH18=true
end end

HH17=true
function a17()
if HH17 == true then
fastsearch
({
{0.00048828154,16,16384},
{-382908368,2228,4},
{-494030840,2232,4},
{167772164,2300,4}
},
{{-476052416,2228,4},
{-516948194,2232,4,false}})
HHJ[17]="稳定高跳[状态:生效中]"
HH17=false
else
fastsearch
({
{0.00048828154,16,16384},
{-476052416,2228,4},
{-516948194,2232,4},
{167772164,2300,4}
},
{{-382908368,2228,4},
{-494030840,2232,4,false}})
HHJ[17]="稳定高跳[状态:关闭]"
HH17=true
end end



HH1=true
function a1()
if HH1 == true then
fastsearch
({{-0.00048828468,16,16384},
{-382906896,-356,4},
{-494030824,-352,4},
},
{{-516948194,-356,4,false}})
HHJ[1]="道具等级[状态:生效中]"
HH1=false
else--木杨破解0x11F8C14
fastsearch
({{-0.00048828468,16,16384},
{-516948194,-356,4},
{-494030824,-352,4},
},
{{-382906896,-356,4,false}})
HHJ[1]="道具等级[状态:关闭]"
HH1=true
end end

HH2=true--木杨破解已完成
function a2()
if HH2 == true then
fastsearch
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
HHJ[2]="解锁角色[状态:生效中]"
HH2=false
else
fastsearch
({{-0.00048828166,16,16384},
{-516948194,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-382906384,-380,4,false}})
HHJ[2]="解锁角色[状态:关闭]"
HH2=true
end end


HH3=true--木杨破解已完成
function a3()
if HH3 == true then
fastsearch
({{-0.00048828282,16,16384},
{-382908176,-828,4},
{-494030832,-824,4},
},
{{-516948194,-828,4,false}})
HHJ[3]="道具皮肤[状态:生效中]"
HH3=false
else
fastsearch
({{-0.00048828282,16,16384},
{-516948194,-828,4},
{-494030832,-824,4},
},
{
{-382908176,-828,4,false}})
HHJ[3]="道具皮肤[状态:关闭]"
HH3=true
end end


HH4=true--木杨破解已完成
function a4()
if HH4 == true then
fastsearch
({{-0.00195311813,16,16384},
{-382906384,-692,4},
{-494030820,-688,4},
},
{
{-516948194,-692,4,false}})
HHJ[4]="角色皮肤[状态:生效中]"
HH4=false
else
fastsearch
({{-0.00195311813,16,16384},
{-516948194,-692,4},
{-494030820,-688,4},
},
{
{-382906384,-692,4,false}})
HHJ[4]="角色皮肤[状态:关闭]"
HH4=true
end end




HH5=true--木杨破解已完成
function a5()
if HH5 == true then
fastsearch
({{-0.00195312232,16,16384},
{-382907280,580,4},
},
{
{-516948194,580,4,false}})
HHJ[5]="道具锁卡[状态:生效中]"
HH5=false
else
fastsearch
({{-0.00195312232,16,16384},
{-516948194,580,4},
},
{
{-382907280,580,4,false}})
HHJ[5]="道具锁卡[状态:关闭]"
HH5=true
end end

HH6=true
function a6()
if HH6 == true then
fastsearch
({
{-352321541,4,16384},
{0,4,16},
},
{
{10.5,4,16,false}})
HHJ[6]="子弹速度[状态:生效中]"
HH6=false
else
fastsearch
({{10.5,16,16384}},
{
{0,0,16,false}})
HHJ[6]="子弹速度[状态:关闭]"
HH6=true
end end

HH7=true--木杨破解已完成
function a7()
if HH7 == true then
fastsearch
({
{320.25,16,16384},
{0,104,16}
},
{
{1,104,16,false}})
HHJ[7]="人物漂浮[状态:生效中]"
HH7=false
else
fastsearch
({
{320.25,16,16384},
{1,104,16}
},
{
{0,104,16,false}})
HHJ[7]="人物漂浮[状态:关闭]"
HH7=true
end end

HH8=true--木杨破解已完成
function a8()
if HH8 == true then
fastsearch
({{-0.00195312256,16,16384},
{-382906896,276,4},
{-494030824,280,4}
},
{{-476053503,276,4},
{-516948194,280,4,false}})
HHJ[8]="道具无冷[状态:生效中]"
HH8=false
else
fastsearch
({{-0.00195312256,16,16384},
{-476053503,276,4},
{-516948194,280,4}
},
{{-382906896,276,4},
{-494030824,280,4,false}})
HHJ[8]="道具无冷[状态:关闭]"
HH8=true
end end

HH9=true
function a9()
if HH9 == true then
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
HHJ[9]="变身攻击[状态:生效中]"
HH9=false
else
fastsearch
({{0.00100000005,16,16384},
{-516948194,184,4}
},
{
{-382907280,184,4,false}})
HHJ[9]="变身攻击[状态:关闭]"
HH9=true
end end

HH10=true--木杨破解已完成
function a10()
if HH10 == true then
fastsearch
({{116,4,16384},
{-382908176,-1992,4},
{-494030832,-1988,4},
},
{{-516948194,-1992,4,false}})
HHJ[10]="解锁模式[状态:生效中]"
HH10=false
else
fastsearch
({{116,4,16384},
{-516948194,-1992,4},
{-494030832,-1988,4},
},
{{-382908176,-1992,4,false}})
HHJ[10]="解锁模式[状态:关闭]"
HH10=true
end end

HH11=true
function a11()
if HH11 == true then
fastsearch
({
{0.00100000005,16,16384},
{-382907280,40,4},
},
{
{1.6875,0,16,false}})
HHJ[11]="武器后座[状态:生效中]"
HH11=false
else
fastsearch
({
{1.6875,16,16384},
},
{
{0.00100000005,0,16,false}})
HHJ[11]="武器后座[状态:关闭]"
HH11=true
end end

HH12=true--木杨破解已完成
function a12()
if HH12 == true then
fastsearch
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})
HHJ[12]="跳跃开物[状态:生效中]"
HH12=false
else
fastsearch
({
{-444186608,4,16384},
{-516948194,28,4},
{167772164,192,4}
},
{
{-382906384,28,4,false}})
HHJ[12]="跳跃开物[状态:关闭]"
HH12=true
end end

HH13=true--木杨破解已完成
function a13()
if HH13 == true then
fastsearch--木杨破解特征码:-2097155.5(偏移-1500左右)
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
HHJ[13]="渲染透视[状态:生效中]"
HH13=false
else--木杨破解0x11F8C14
fastsearch
({{-369098723,4,16384},{1,68,16}},
{
{0,68,16,false}})
HHJ[13]="渲染透视[状态:关闭]"
HH13=true
end end

HH14=true
function a14()
if HH14 == true then
fastsearch
({
{-442563748,4,16384},
{-382906384,-60,4},
{-390230032,-108,4}
},
{
{-516948194,-60,4,false}})
HHJ[14]="子弹穿墙[状态:生效中]"
HH14=false
else--木杨破解0x11F8C14
fastsearch
({
{-442563748,4,16384},
{-516948194,-60,4},
{-390230032,-108,4}
},
{
{-382906384,-60,4,false}})
HHJ[14]="子弹穿墙[状态:关闭]"
HH14=true
end end

HH15=true
function a15()
if HH15 == true then
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
HHJ[15]="人物爬墙[状态:生效中]"
HH15=false
else--木杨破解0x11F8C14
fastsearch({{-321.125,16,16384},{-1,140,16}},{{0.949999988079071,140,16,false}})
HHJ[15]="人物爬墙[状态:关闭]"
HH15=true
end end

HH16=true
function a16()
if HH16 == true then
fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})
HHJ[16]="无视无敌[状态:生效中]"
HH16=false
else
fastsearch
({{-128.00001525879,16,16384},
{-486539264,20,4},
{-516948194,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-382908368,20,4},
{-494030840,24,4,false}})
HHJ[16]="无视无敌[状态:关闭]"
HH16=true
end end

function cgg5()
 menu = gg.multiChoice({
"加速开锁",
"无视破译",
"完美开锁",
"人物移速",
"人物穿墙",
"无视架子",
"人物爬墙",
"人物明透",
"倒地复活",
"人物高跳",
"开锁赚米",
"人物移速[追捕]",
"人物透视[追捕]",
"全局加速[追捕]",
"基址吸人[追捕]",
"逃生减血[追捕]",
"迫击炮通用区",
"能量剑通用区",
"逃生一键稳定",
"乱七八糟部分",
"️返回主页️",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","L1","L2","L3","L4","L5","L6","L7","ss1222","wtmnb","Main",})[i]]()
  end
 end 
end
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解
 
 --木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-
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
fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")
end

function s3()
fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")
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
  qmnb = {
    {memory = 16384},
    {name = "爬墙"},
    {value = -321.125, type = 16},
    {
      lv = 0.949999988079071,
      offset = 140,
      type = 16
    }
  }
  qmxg = {
    {
      value = -1,
      offset = 140,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function s8()
fastsearch({{2.5,16,32},{1.0, 4, 16},{8.0, -4, 16},{12.0, -8, 16},}, {{200, -4, 16}},"明透")
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
io=gg.alert("刷钱","4v1刷钱","8v2刷钱","停止刷钱")
if io==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end

if io==2 then
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end
end


function L1()
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

function L2()
   fastsearch({
     {76111644, 4, 16384},
     {76111664, -4, 4}, 
   }, {
     {-476053503, 4, 4, false},
      {-516948194, 8, 4, false},
   },"人物透视")
end

function L3()
ggl=gg.alert("选择开启或关闭","开启","关闭")
if ggl==1 then
local t = {"libunity.so:bss", "Cb"}
local tt = {0x11BFC, 0xEC}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1.25}})
gg.toast("全局加速开启成功")
end
if ggl==2 then
local t = {"libunity.so:bss", "Cb"}
local tt = {0x11BFC, 0xEC}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 1}})
gg.toast("全局加速关闭成功")
end
end

function L4()
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x20E0B0, 0x5C, 0x0, 0xBC, 0x14}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
end

function L5()
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






function L6()
 menu = gg.multiChoice({
"迫击炮",
"全方面",
"️退出",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"avv1","avv2","Main"})[i]]()
  end
 end 
end

function avv1()--木杨破解
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{210,-12,4,false}
}) end

function avv2()


gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_FLOAT)
	 gg.toast("武器无后开启")
	 gg.clearResults()
	 
	 nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})

fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})

local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end     

function L7()
 menu = gg.multiChoice({
"能量剑",
"全方面",
"️退出",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"avvr1","avvr2","Main"})[i]]()
  end
 end 
end

function avvr1()--木杨破解
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{240,-12,4,false}
}) 

end

function avvr2()


gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.0", gg.TYPE_FLOAT)
	 gg.toast("武器无后开启")
	 gg.clearResults()
	 
	 nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})

fastsearch
({{-128.00001525879,16,16384},
{-382908368,20,4},
{-494030840,24,4},
{167772163,-32,4},
{167772164,-68,4},
},
{{-486539264,20,4},
{-516948194,24,4,false}})

local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')

end     

function play2()


  menu1 = gg.multiChoice({
    "起风了",--木杨破解1
	"大哥背起行囊",--木杨破解2
	"江南Style",--木杨破解3
    "遗失的心跳",--木杨破解4
    '高阶成长指南',--木杨破解5
    '我们',--木杨破解6
    '篝火旁',--木杨破解7
    '心如止水',--木杨破解8
    '爱坤进行曲',--木杨破解9
    '隔岸(DJ)',--木杨破解10
    '孤勇者',--木杨破解11
    '把回忆拼好给你',--木杨破解12
    '大眠',--木杨破解13
    'Do lt',--木杨破解14
    '小城夏天',--木杨破解15
    '错位时空',--木杨破解16
    'Drown(Alle Farben Remix)',--木杨破解17
    'Where Is Your Love',--木杨破解18
    'Relax',--木杨破解19
    '苦茶子',--木杨破解20
    'Fractures',--木杨破解21
    '月亮之矢',--木杨破解22
    '妈妈的话',--木杨破解23
    '落差(DJ)',--木杨破解24
    '不知歌名',--木杨破解25
    '四季予你',--木杨破解26
    '苦咖啡',--木杨破解27
    '凭什么觉得我还喜欢你',--木杨破解28
    '难却',--木杨破解29
    'ТАМАДА (Remix)',--木杨破解30
    '爱如火',--木杨破解31
    '寂寞烟火',--木杨破解32
    '停止'},--木杨破解40
    nil,'')
    if menu1 == nil then gg.toast("") else
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
    if menu1[33] == true then stop() end
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

function qq33()
gg.playMusic("")
end

function stop()
gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end




function Main2nn()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1680505769.txt").content))
end

function Mn()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1680722027.txt").content))
end

function dsb()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1680729118.txt").content))
end

function dsb2()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1680960718.txt").content))
end
function dsb3()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1681059710.txt").content))
end
function dsb4()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1681084034.txt").content))
end
function dsb5()
pcall(load(gg.makeRequest("http://jiami.guimei.work/a/1681012299.txt").content))
end
function qy17()
UI = 'gya'
local menu = gg.multiChoice({
"火箭筒换卡",
"疾跑换卡",
"跳高换卡",
"皮卡换卡",
"拳套换卡",
"箱子换卡",
"返回主页",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"DD1","DD2","DD3","DD4","DD5","DD6",'wtmnb'})[i]]()
  end
 end 
end
--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解--木杨破解-

function DD2()--木杨破解疾跑
local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{20528,32,4},
{51200,40,4}
},{
{SA[1],-12,4,false}
}) end

function DD3()--木杨破解跳高

local SE=gg.prompt({"跳高改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25653,32,4},
{51456,40,4}
},{
{SE[1],-12,4,false}
}) end

function DD5()--木杨破解拳套

local SQ=gg.prompt({"拳套改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{SQ[1],-12,4,false}
}) end

function DD6()--木杨破解阻挡箱

local SG=gg.prompt({"阻挡箱改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{77056,40,4}
},{
{SG[1],-12,4,false}
}) end
function DD4()--木杨破解皮卡

local SU=gg.prompt({"皮卡改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{46129,32,4},
{28416,40,4}
},{
{SU[1],-12,4,false}
}) end
function DD1()
local SP=gg.prompt({"火箭筒改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{64048,32,4},
{25600,40,4}
},{
{SP[1],-12,4,false}
}) end


  
  




while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
Main()
end
end

