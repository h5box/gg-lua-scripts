
  

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
----------------------------------------------------------------------------------------------------
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD E=gg.TYPE_DOUBLE F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
----------------------------------------------------------------------------------------------------
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end

----------------------------------------------------------------------------------------------------
function X(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name.."\n".."开启成功") else gg.toast("提示:".."\n"..Name.."\n".."开启失败",false) return false end else gg.toast("提示:".."\n"..Name.."\n".."开启失败") return false end end
----------------------------------------------------------------------------------------------------
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
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
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
-----------
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
-------------------------
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
		gg.toast("神提醒：宝贝～～:没有值可修改哦～～")
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
		gg.toast("宝贝～～已修改" .. (#tb[1] + #tb[2]) .. "个值，祝您游戏愉快！宝贝～～")
		else
			gg.toast("神提醒：宝贝～～:没有值可修改哦～～")
		end
	end
end
-----------------------------------------------------------------------------
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


-----------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-----------------------------------------------------------------------------

Tonumber = true -- 加密数字开关
bqt={"🍧","🔥","💦","🌵"}
sy=1
local mt=bqt[math.random(1,#bqt)]
function Main0()
SN = gg.choice({
  mt.."直播功能[修复]"..mt,
  mt.."基础功能[修复]"..mt,--2
  mt.."稳定功能[修复]"..mt,--
  mt.."直装功能[修复]"..mt,--4
  mt.."火力专区[修复]"..mt,
  mt.."变身功能[修复]"..mt,--6
  mt.."武器功能[修复]"..mt,
  mt.."buff功能[修复]"..mt,--8
  mt.."SSS秒赢[修复]"..mt,--
  mt.."坑逼队友[修复]"..mt,--10
  mt.."传送功能[修复]"..mt,--11
  mt.."美化功能[修复]"..mt,--12
  mt.. '动作功能[修复]'..mt,--13
  mt.."炫光功能[修复]"..mt,
  mt.."设备功能[修复]"..mt,--15
  mt.."角色技能[修复]"..mt,
  mt.."医疗箱改[没试]"..mt,--17
  mt.."音乐功能[修复]"..mt,--
  mt.."乱斗稳定[修复]"..mt,--19
  mt.."换卡功能[修复]"..mt,--
  mt.."自调功能[没试]"..mt,--21
  mt.."稳定无间[修复]"..mt,--22
  mt.."稳定连发[修复]"..mt,
  mt.."Thank you for you"..mt,--23
  }, 0, "by.神\n\n所有功能全部修复完成\n\n版本：4.3\n\n交流群：707405947")
if SN==1 then
	 X()
end
if SN==2 then
	 qy1()
end
if SN==3 then
	 qy2()
end
if SN==4 then
	 qy3()
end
if SN==5 then
	 E()
end
if SN==6 then
	 qy4()
end
if SN==7 then
	 M()
end
if SN==8 then
	 qy5()
end
if SN==9 then
	 qy6()
end
if SN==10 then
	 qy7()
end
if SN==11 then
	 qy8()
end
if SN==12 then
	 qy9()
end
if SN==13 then
	 qy10()
end
if SN==14 then
     qy11()
end
if SN==15 then
     qy12()
end

if SN==16 then
     qy13()
end
if SN==17 then
     qy14()
end

if SN==18 then
     qy15()
end
if SN==19 then
     qy16()
end
if SN==20 then
     qy17()
end

if SN==21 then
     qy18()
end

if SN==22 then
	 qy19()
end
if SN==23 then
	 qy20()
end
if SN==24 then
	 HS36()
end
FX1=0
end
    
    
    
function X()
menu1 = gg.multiChoice({
 "神(稳定无间格)",
 "内部(稳定无后坐)",
 "666(稳定锁子弹)",
 "远程控制",
 "大神资格证",
 "无视护盾[和直装的不一样]",
  "炮攻击范围",
  "炮攻速速度",
  "炮释放范围",
  "凯凯技能免费",
  "凯凯技能超大吸人",
 "返回",
},nil,"直播功能")
if menu1 == nil then else
if menu1[1] == true then va1() end
if menu1[2] == true then va2() end
if menu1[3] == true then va3() end
if menu1[4] == true then va4() end
if menu1[5] == true then va5() end
if menu1[6] == true then va6() end
if menu1[7] == true then va7() end
if menu1[8] == true then va8() end
if menu1[9] == true then va9() end
if menu1[10] == true then va10() end
if menu1[11] == true then va11() end
if menu1[12] == true then Main0() end
end
GLWW=-1
end

function va1()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end
function va2()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("牛逼")
	 gg.clearResults()
end
function va3()
fastsearch({{62046212, 4, 16384}, {62046192, 4, 4}, {-382907280, 8, 4}, {-494030832, 12, 4}, {-498216952, 16, 4}, {-442539764, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
end
function va4()
a =gg.alert("观战控制","开启","关闭")
if a ==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd93420},})
end
if a == 2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xd93420},})
end
end
function va5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;101D;102D;103D;104D::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4;101;102;103;104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6;301;302;303;304", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function va6()
xh=gg.alert("破盾","开","关")
if xh == 1 then
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
 
 if xh==2 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-382908368,1516,4,false},{-494030840,1520,4,false}},4,16384,"追捕破盾[关]")
end
end

function va7()
gg.clearResults()
gg.alert("先打一炮再开")
fastsearch({{99.0, 16, 32}, {2.0, -36, 16}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{5, -36, 16, false}})
end
function va8()
fastsearch({{99.0, 16, 32}, {5.0, -36, 16}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{0.37, -16, 16, false}})
end


function va9()
gg.alert("搜索是一直开炮，不然可能不成功")
op= gg.prompt({[1]="宝~~输入要修改的范围"}, {[1]="0"}, {[1]="txet"})
  if op == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("6.0;0.00999999978;0.05000000075;3.58732407e-43::", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber(6, gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.getResults(100)
    gg.editAll( op[1] ,gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("宝~~修改成功了哦~~")
    gg.clearResults()
end
end
function va10()
a=gg.prompt({"宝~~写一下你现在的技能金币数量,100/95/85/80"})
qmnb = {
{["memory"] = 32},
{["name"] = "劲凯免费+无冷却"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = a[1],["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =4, ["type"] = 4},
{["value"] = 0.0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end
function va11()
qmnb = {
{["memory"] = 32},
{["name"] = "劲铠范围"},
{["value"] = 0.95, ["type"] = 16},
{["lv"] = 0.25,["offset"] =36, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =36, ["type"] = 16},
}
xqmnb(qmnb)
end

function qy1()
 menu2 = gg.multiChoice({
 mt.."防闪"..mt,
 mt.."人工+追封"..mt,
 mt.."防封"..mt,
 mt.."防封"..mt,
 mt.. "返回神"..mt,
},nil,"基础功能")
if menu2 == nil then else
if menu2[1] == true then pa1() end
if menu2[2] == true then pa2() end
if menu2[3] == true then pa3() end
if menu2[4] == true then pa4() end
if menu2[5] == true then Main0() end

end
GLWW=-1
end
function pa1()
 qmnb = {
{["memory"] = 16},
{["name"] = "防闪"},
{["value"] = 2, ["type"] = 4},
{["lv"] = 2,["offset"] =8, ["type"] = 4},
{["lv"] = 1,["offset"] =12, ["type"] = 4},
{["lv"] = 1,["offset"] =16, ["type"] = 4},
{["lv"] = 2,["offset"] =24, ["type"] = 4},
{["lv"] = 2,["offset"] =32, ["type"] = 4},
{["lv"] = 2,["offset"] =40, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
end

function pa2()
qc=gg.alert("大厅开人工，退游戏是开追封","人工[会闪]","追封")
if qc==1 then
xtnb({{false,33554432,0,4,nil,nil}},{{0,0,4,false}},4,16384,"防人工")	 end
	 if qc==2 then
ac=gg.getTargetPackage()
gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bfire.da.xinh/gameplugins/"..ac.."/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bfire.da.xinh/gameplugins")
gg.toast("获取成功,已删除追封文件")
end
end

function pa3()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("14,848;29,124,154;805,412,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("29,124,154", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3,672,102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("27,394,050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("8,128,048;7,997,016:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-134,114,248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-134,114,248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,147,248,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,147,248,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("96,207,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("96,207,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("28,588,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28,588,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,476,502,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,476,502,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("定制防封开启")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("14,848;29,124,154;805,412,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("29,124,154", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3,672,102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("27,394,050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("8,128,048;7,997,016:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999)
gg.getResults(9999)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-134,114,248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-134,114,248", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,147,248,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,147,248,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("96,207,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("96,207,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("28,588,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28,588,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999999", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,476,502,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,476,502,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("定制防封开启")
end

function pa4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("防封")
	 gg.clearResults()
end




function qy2()
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
"追捕秒赢[追捕]",
"️返回主页️",
}, nil, "逃生所有功能全部修复完成\n，逃生所有功能全部亲测\n追捕的没有测试")
if menu then
for i in pairs(menu) do
_ENV[({"s1","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","L1","L2","L3","L4","L5","L6","Main0",})[i]]()
  end
 end 
end
------------------------
 
 -------------------------------------------------------------------------------------
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
qc=gg.alert("无限刷钱","4v1","8v2")
if qc==1 then
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/25f20ab8d148f25c44afc4483bce60b6.").content))
end

if qc==2 then
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/986ac983138209179de51d1e3a26c980.").content))
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
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xcd0378},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xcd037c},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xda856c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xda8570},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfbb67c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbb680},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfbd77c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbd780},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfbdd2c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbdd30},})
nc_offset(getso("libil2cpp.so"),{{-476053494,4,0xfbe400},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbe404},})
nc_offset(getso("libil2cpp.so"),{{-482081950,4,0xcd0378},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xcd037c},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xda856c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xda8570},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xfbb67c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbb680},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfbd77c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbd780},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xfbdd2c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbdd30},})
nc_offset(getso("libil2cpp.so"),{{-476053454,4,0xfbe400},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfbe404},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xda94f0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xda94f4},})
end










function qy3()
SN = gg.multiChoice({
mt.."武器无后[修复]"..mt,---1
mt.."反弹伤害[修复]"..mt,---2
mt.."锁子弹[修复]"..mt,--3
mt.."枪枪暴击[修复]"..mt,--4
mt.."子弹穿墙[修复]"..mt,---5
mt.."武器无间隔[修复]"..mt,--6
mt.."无视护盾[修复]"..mt,---7
mt.."秒开基址"..mt,---8
mt.."锁金币"..mt,---9
mt.."子弹速度"..mt,---10
mt.."倒地丢道具[修复]"..mt,---11
mt.."道具无CD[修复]"..mt,---12
mt.. "透视[修复]"..mt,--13
mt.."道具卡改等级[修复]"..mt,---14
mt.."子弹射程[修复]"..mt,--15
mt.."滑板加速"..mt,--16
mt.."自走球加速"..mt,
mt.."人物穿墙"..mt,--18
mt.."上帝视角"..mt,--19
mt.."全图丢道具"..mt,--20
mt.."解锁模式[修复]"..mt,--21
mt.."解锁皮肤[修复]"..mt,--22
mt.."解锁角色[修复]"..mt,--23
mt.."返回神"..mt,--24
 }, nil, "大部分修复完了")
  if SN == nil then else
  if SN[1] == true then xa1() end
  if SN[2] == true then xa2() end
  if SN[3] == true then xa3() end
  if SN[4] == true then xa4() end
  if SN[5] == true then xa5() end
  if SN[6] == true then xa6() end
  if SN[7] == true then xa7() end
  if SN[8] == true then xa8() end
  if SN[9] == true then xa9() end
  if SN[10] == true then xa10() end
  if SN[11] == true then xa11() end 
  if SN[12] == true then xa12() end  
  if SN[13] == true then xa13() end
  if SN[14] == true then xa14() end 
  if SN[15] == true then xa15() end
  if SN[16] == true then xa16() end
  if SN[17] == true then xa17() end
  if SN[18] == true then xa18() end
  if SN[19] == true then xa19() end
  if SN[20] == true then xa20() end
  if SN[21] == true then xa21() end
  if SN[22] == true then xa22() end
  if SN[23] == true then xa23() end
  if SN[24] == true then Main0() end
end 
XGCK = -1 
end

function xa1()
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})
end

function xa2()
nc_offset(getso("libil2cpp.so"),{{-482082700,4,0x15C3148},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x15C314C},})
end

function xa3()
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1cddbcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CDDBD0},})
end

function xa4()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1258d90},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1258d94},})
end

function xa5()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1887904},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc26e60},})
end

function xa6()
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x15c269c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x15C26A0},})
end

function xa7()
qc=gg.alert("破盾","开","关")
if qc==1 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-486539264,1516,4,false},{-516948194,1520,4,false}},4,16384,"破盾[开]")
end
if qc==2 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-382908368,1516,4,false},{-494030840,1520,4,false}},4,16384,"破盾[关]")
end
end

function xa8()
nc_offset(getso("libil2cpp.so"),{{0,4,0x946F3C},})
end


function xa9()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xDA11C4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xDA11C8},})
end

function xa10()
nc_offset(getso("libil2cpp.so"),{{1092616192,4,0x1BD0560},})
end

function xa11()--倒地丢道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1CBBFC8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBBFCC},})
end

function xa12()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1E59E9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E59EA0},})
end
function xa13()--暗透
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD56A08},})
end

function xa14()
nc_offset(getso("libil2cpp.so"),{{-476053486,4,0xD32D44},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD32D48},})
end

function xa15()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1887904},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc26e60},})
end

function xa16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1019D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("神提醒您：滑板加速［大厅］")
	 gg.clearResults()
end

function xa17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("神提醒您：自走球加速［大厅］")
	 gg.clearResults()
end

function xa18()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xD4EE1C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD4EE20},})
end

function xa19()
local xt=gg.prompt({"上帝视角"}, {[1] = 20})
xtnb({{false,40.0,20,16,nil,nil},{100.0,96,16},{10.0,32,16},{30.0,36,16},{10.0,0,16}},{{xt[1],48,16,false}},16,32,"")
end

function xa20()
fastsearch({{1052266988,4,32},{1052266988, 4, 4},{1053609165, 8, 4},{1086324736, -136, 4}}, {{100, -132, 16}})
end

function xa21()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xF82AAC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF82AB0},})
end

function xa22()--道具卡皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b05dcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B05DD0},})
end

function xa23()--角色皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1076760},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
end




function E()
UI = "E"
local menu = gg.multiChoice({
"武器间隔",
"无视护盾",
"炮攻击范围",
"炮攻速速度",
"炮释放范围",
"锁子弹",
"无后坐",
"飞镖范围",
"蹦蹦枪射程",
"️返回主页️",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"F1","F2","F3","F4","F5","F6","F7","F8","F9","Main0",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function F1()
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x209F44, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end


function F2()
xh=gg.alert("破盾","开","关")
if xh == 1 then
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
 
 if xh==2 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-382908368,1516,4,false},{-494030840,1520,4,false}},4,16384,"追捕破盾[关]")
end
end

function F3()
gg.clearResults()
gg.alert("先打一炮再开")
fastsearch({{99.0, 16, 32}, {2.0, -36, 16}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{5, -36, 16, false}})
end     

function F4()
   fastsearch({{99.0, 16, 32}, {5.0, -36, 16}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{0.37, -16, 16, false}})
end

function F5()
gg.alert("搜索是一直开炮，不然可能不成功")
op= gg.prompt({[1]="宝~~输入要修改的范围"}, {[1]="0"}, {[1]="txet"})
  if op == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("6.0;0.00999999978;0.05000000075;3.58732407e-43::", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber(6, gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.getResults(100)
    gg.editAll( op[1] ,gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("宝~~修改成功了哦~~")
    gg.clearResults()
end
end

function F6()
  fastsearch({
     {64910848, 4, 16384},
     {64778592, -4, 4}, 
   }, {
    {-476053404, 4, 4, false},
    {-516948194, 8, 4, false},
   },"")
end

function F7()
nc_offset(getso("libil2cpp.so"),{{1,16,0x188896C},})
end     

function F8()
fastsearch({
{4.199999809265137,16,32},
{1.7000000476837158,4,16},
{1.25,8,16},
{2.5,12,16},
{1.5,-4,16},
{0.75,-8,16}
},{
{6.0,12,16},
{6.0,-4,16}
})
end
function F9()
xtnb({{false,-20.0,4,16,nil,nil},{0.800000011920929,12,16},{-0.4000000059604645,16,16},{2.5,20,16},{1.5,24,16}},{{50,0,16,false}},16,32,"蹦蹦枪射程")
end

function qy4()
SN = gg.choice({
mt.."道具卡变身[修复]"..mt,
mt.."变形金刚"..mt,
mt.."奥特曼"..mt,
mt.."恐龙"..mt,
mt.."返回神"..mt,
 }, 0, "神，交流群：707405947")
 if SN==1 then
	 xxs()
end
if SN==1 then
	 yy1()
end
if SN==2 then
	 yy2()
end
if SN==3 then
	 yy3()
end
if SN==4 then
	 Main0()
end
FX1=0
end

function xxs()
menu4 = gg.multiChoice({
'疾跑实体变身',
'阻挡箱实体变身',
'跳高实体变身',
'疾跑实体变身',
'皮卡实体变身',
'滑板实体变身',
"️返回主页️",
}, nil, os.date("变身"))
if menu4 == nil then else
if menu4[1] == true then ngf1() end
if menu4[2] == true then ngf2() end
if menu4[3] == true then ngf3() end
if menu4[4] == true then ngf4() end
if menu4[5] == true then ngf5() end
if menu4[6] == true then ngf6() end
if menu4[7] == true then qy4() end
end
GLWW=-1
end

function ngf1()
NH=gg.prompt({"恐龙:\n翼龙70010  三角龙70011  剑龙70012  迅猛龙70013  霸王龙70014  沧龙70015\n变形金刚:\n擎天柱90001  大黄蜂90002  热破90003  威震天90004  声波90005  红蜘蛛90006"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end
function ngf2()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function ngf3()
fastsearch({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function ngf4()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛输入变身代码(可多次修改↓)"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})end
function ngf5()
fastsearch({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) QQ=gg.prompt({"输入变身代码70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{101,28,4}},{{QQ[1],8,4,false}})end
function ngf6()
QQ=gg.prompt({"输入变身代码↓"},{[1]=""})
fastsearch({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}}) end

function yy1()
menu4 = gg.multiChoice({
mt..  "奥博改擎天柱"..mt,
mt..  "奥博改大黄蜂"..mt,
mt..  "奥博改热破"..mt,
mt..  "奥博改威震天"..mt,
mt..  "奥博改声波"..mt,
mt..  "奥博改红蜘蛛"..mt,
mt..  "团子改擎天柱"..mt,
mt..  "团子改大黄蜂"..mt,
mt.."团子改热破"..mt,
mt.."团子改威震天"..mt,
mt.."团子改声波"..mt,
mt.."团子改红蜘蛛"..mt,
mt.."全技能免费"..mt,
mt.."全技能冷却"..mt,
mt..  "返回神"..mt,
 },nil,"神霹雳交流群：707405947")
  if menu4 == nil then else
    if menu4[1] == true then e1() end
    if menu4[2] == true then e2() end
    if menu4[3] == true then e3() end
    if menu4[4] == true then e4() end
    if menu4[5] == true then e5() end
    if menu4[6] == true then e6() end
    if menu4[7] == true then e7() end
    if menu4[8] == true then e8() end
    if menu4[9] == true then e9() end
    if menu4[10] == true then e10() end
    if menu4[11] == true then e11() end
    if menu4[12] == true then e12() end
    if menu4[13] == true then e13() end
    if menu4[14] == true then e14() end
    if menu4[15] == true then Main0() end
end
GLWW=-1
end


function e1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1033;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90001", gg.TYPE_DWORD)
	 gg.toast("神提醒您：修改成功")
	 gg.clearResults()
end

function e2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1033;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90002", gg.TYPE_DWORD)
	 gg.toast("神提醒您：修改成功")
	 gg.clearResults()
end

function e3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1033;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90003", gg.TYPE_DWORD)
	 gg.toast("神提醒您：修改成功")
	 gg.clearResults()
end

function e4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1033;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90004", gg.TYPE_DWORD)
	 gg.toast("神提醒您：修改成功")
	 gg.clearResults()
end

function e5()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1033;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90005", gg.TYPE_DWORD)
	 gg.toast("神提醒您：修改成功")
	 gg.clearResults()
end

function e6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1033;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1033", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("90006", gg.TYPE_DWORD)
	 gg.toast("神提醒您：修改成功")
	 gg.clearResults()
end

function e7()
qmnb = {
      {["memory"] = 32},
      {["name"] = "神提醒你：擎天柱"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90001, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end
function e8()
qmnb = {
      {["memory"] = 32},
      {["name"] = "神提醒你：大黄蜂"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90002, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end
function e9()
qmnb = {
      {["memory"] = 32},
      {["name"] = "神提醒你：热破"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90003, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end
function e10()
qmnb = {
      {["memory"] = 32},
      {["name"] = "神提醒你：威震天"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90004, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end
function e11()
qmnb = {
      {["memory"] = 32},
      {["name"] = "神提醒你：声波"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90005, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb) 
end
function e12()
qmnb = {
      {["memory"] = 32},
      {["name"] = "神提醒你：红蜘蛛"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 90006, ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end

function e13()
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

function e14()
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
end

function yy2()
menu17 = gg.multiChoice({
mt.."改奥特曼"..mt,
mt.."奥特曼技能"..mt,
mt.."返回神"..mt,
}, nil, "")
if menu17 == nil then else
if menu17[1] == true then ta1() end
if menu17[2] == true then ta2() end
if menu17[3] == true then Main0() end
end
GLWW=-1
end

function ta1()
qc=gg.alert("奥特曼","泽塔","疾跑改迪迦","跳高改赛罗")
if qc==1 then
qmnb = {
{["memory"] = 32},
{["name"] = "奥特曼"},
{["value"] = 20528, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = -256, ["offset"] = 12, ["type"] = 4},
{["lv"] = 511, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 12800256, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end
if qc==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "奥特曼"},
{["value"] = 25653, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 256, ["offset"] = 12, ["type"] = 4},
{["lv"] = 512, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 12800512, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end
if qc==3 then
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "赛罗"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 50002,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
end


function ta2()
qc=gg.alert("奥特曼技能","迪迦","赛罗","泽塔")
if qc==1 then
xtnb({{false,12.0,0,16,nil,nil},{16.0,4,16},{3.0,8,16},{1.5,52,16},{1.5,56,16},{3.0,68,16}},{{2,120,4,true},{999,128,16,false}},16,32,"迪迦技能")
end
if qc==2 then
xtnb({{false,8.0,0,16,nil,nil},{14.0,4,16},{2.0,8,16},{1.5,52,16},{1.5,56,16},{3.0,68,16}},{{5,104,16,true},{0,108,16,false}},16,32,"输入功能名称")
 end
if qc==3 then
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;14;2;4.20389539e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.20389539e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
gg.clearResults()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;14;2;0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
gg.clearResults()
	 end
end

function yy3()
menu14 = gg.multiChoice({
mt.."皮卡改剑龙"..mt,
mt.."皮卡改霸王龙"..mt,
mt.."皮卡改迅猛龙"..mt,
mt.."皮卡改三角龙"..mt,
mt.."皮卡改翼龙"..mt,
mt.."皮卡改苍龙"..mt,
mt.."苍龙技能无冷却"..mt,
mt.."霸王龙无冷却"..mt,
mt.."剑龙无冷却"..mt,
mt.."三角龙无冷却"..mt,
mt..  "返回神"..mt,
 },nil,"神霹雳交流群：707405947")
  if menu14 == nil then else
    if menu14[1] == true then ee1() end
    if menu14[2] == true then ee2() end
    if menu14[3] == true then ee3() end
    if menu14[4] == true then ee4() end
    if menu14[5] == true then ee5() end
    if menu14[6] == true then ee6() end
    if menu14[7] == true then ee7() end
    if menu14[8] == true then ee8() end
    if menu14[9] == true then ee9() end
    if menu14[10] == true then ee10() end
    if menu14[11] == true then Main0() end
end
GLWW=-1
end

function ee1()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500012", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee2()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500014", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee3()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500013", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee4()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500011", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee5()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500010", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee6()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500015", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee7()
xtnb({{false,3.0,0,16,nil,nil},{7.006492321624085E-44,144,16},{99.0,152,16},{5.0,160,16}},{{0,140,16,false}},16,32,"苍龙攻击无冷却")
xtnb({{false,2.5,0,16,nil,nil},{3.5,8,16},{50.0,12,16},{4.0,32,16}},{{0.01,20,16,false}},16,32,"输入功能名称")end


function ee8()
xtnb({{false,1.3872854796815689E-43,4,16,nil,nil},{3.0,12,16},{3.0,20,16}},{{0.01,0,16,false}},16,32,"霸王龙攻击无冷却")
end

function ee9()
gg.setRanges(32)
	 gg.searchNumber("7;20D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ee10()
gg.setRanges(32)
	 gg.searchNumber("1.5;35D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function M()
menu1 = gg.multiChoice({
"改迫击炮",--1
"改冲锋枪",--2
"改能量剑",--3
"改蹦蹦枪",--4
"改能量炮",--5
"改散弹枪",--6
"改幻风镖",--7
"改霸天斧",--8
"改火箭筒",--9
"返回神",
}, nil, os.date("💫改武器💫"))
if menu1 == nil then else
if menu1[1] == true then er1() end
if menu1[2] == true then er2() end
if menu1[3] == true then er3() end
if menu1[4] == true then er4() end
if menu1[5] == true then er5() end
if menu1[6] == true then er6() end
if menu1[7] == true then er7() end
if menu1[8] == true then er8() end
if menu1[9] == true then er9() end
if menu1[10] == true then Main0() end
end
GLWW=-1
end
function er1()
fastsearch({{64048,4,32},{401,-48,4}},{{210,-44,4,false}})
end

function er2()
fastsearch({{64048,4,32},{401,-48,4}},{{230,-44,4,false}})
end

function er3()
fastsearch({{64048,4,32},{401,-48,4}},{{240,-44,4,false}})
end

function er4()
fastsearch({{64048,4,32},{401,-48,4}},{{250,-44,4,false}})
end

function er5()
fastsearch({{64048,4,32},{401,-48,4}},{{280,-44,4,false}})
end

function er6()
fastsearch({{64048,4,32},{401,-48,4}},{{290,-44,4,false}})
end


function er7()
fastsearch({{64048,4,32},{401,-48,4}},{{300,-44,4,false}})
end

function er8()
fastsearch({{64048,4,32},{401,-48,4}},{{310,-44,4,false}})
end

function er9()
fastsearch({{64048,4,32},{401,-48,4}},{{200,-44,4,false}})
end
 


function qy5()
menu = gg.choice({
"疾跑buff区",
"手雷buff区",
"酒桶buff区",
"时光buff区",
"针改buff区",
"魔法墙buff",
mt.."返回神"..mt,
}, 2022, "buff功能")
if menu == 1 then i1() end
if menu == 2 then i2() end
if menu == 3 then i3() end
if menu == 4 then i4() end
if menu == 5 then i5() end
if menu == 6 then i6() end
if menu == 7 then Main0() end
XGCK=-1
end

function i1()
menu1 = gg.multiChoice({
"疾跑改boss无敌",
"疾跑改随机",
"疾跑自定义",
mt.."返回神"..mt,
}, nil, os.date("疾跑buff功能"))
if menu1 == nil then else
if menu1[1] == true then ia1() end
if menu1[2] == true then ia2() end
if menu1[3] == true then ia3() end
if menu1[3] == true then Main5() end
end
GLWW=-1
end

function ia1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("神提醒你：疾跑改Boss无敌")
	 gg.clearResults()
end

function ia2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7,012,352", gg.TYPE_DWORD)
	 gg.toast("神提醒你：疾跑随机buff")
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
function ia3()
local SC=gg.prompt({"BUFF代码:\n547时光机BUFF\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n请输入你想改的buff"}, {[1] = 107}, {[1] = "text"})
if SC==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "神提醒你：疾跑改BUFF[自调]"},
{["value"] = -377313563, ["type"] = 4},
{["lv"] = 106147, ["offset"] = 4, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 16, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 20, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = SC[1],["offset"] =10, ["type"] = 1},
}
xqmnb(qmnb)
end
  
function i2()
menu1 = gg.multiChoice({
"手雷改无敌",
"手雷改缴械",
"手雷高范围0伤",
}, nil, os.date("手雷buff功能"))
if menu1 == nil then else
if menu1[1] == true then ib1() end
if menu1[2] == true then ib2() end
if menu1[3] == true then ib3() end
if menu1[4] == true then ib4() end
end
GLWW=-1
end

function ib1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33F;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end

function ib2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33F;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("403", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end

function ib3()
qmnb = {
{["memory"] = 32},
{["name"] = "神提醒你：手雷范围"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
{["value"] = 5.5,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
end
function i3()
menu1 = gg.multiChoice({
"酒桶全屏",
"酒桶自定义[先开全屏]",
"酒桶自定义[没开全屏]",
}, nil, os.date("酒桶buff功能"))
if menu1[1] == true then ic1() end
if menu1[2] == true then ic2() end
if menu1[3] == true then i3() end
if menu1[4] == true then i4() end
if menu1[5] == true then i5() end
if menu1[6] == true then i6() end
GLWW=-1
end

function ic1()
local g=os.clock()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2F;30F::5", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", FLOAT)
 gg.clearResults()
	 gg.toast("神提醒你：修改成功")
end

function ic2()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("999F;30F;0.1F;0.2F;200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n547时光机BUFF\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("神提醒你：修改成功")
	 end

function ic3()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2F;30F;0.1F;0.2F;200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n547时光机BUFF\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("神提醒你：修改成功")
	 end
	 
function i4()
menu1 = gg.multiChoice({
"时光机改时间",
"时光机自定义",
}, nil, os.date("时光机buff功能[先放一个时光机再开时光机自定义]"))
if menu1[1] == true then id1() end
if menu1[2] == true then id2() end
GLWW=-1
end

function id1()
fastsearch({{547,4,32},{5, 0x4, 16}},{{2100000000, 0x4, 16}})
end

function id2()
gg.setRanges(32)
	 gg.searchNumber("0.20000000298F;0.10000000149F;547;1.36000001431F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n108肾上腺素BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	  gg.toast("神提醒你：开启成功")
gg.clearResults()
	 end
	 function i5()
menu1 = gg.multiChoice({
"针改自定义",
}, nil, os.date("针改buff功能"))
if menu1[1] == true then ie1() end
GLWW=-1
end

function ie1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_FLOAT)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
	 end
	 
function i6()
menu1 = gg.multiChoice({
"[友]魔法墙随机",
"[敌]魔法墙随机",
"[友]魔法墙自调",
"[敌]魔法墙自调",
}, nil, os.date("魔法墙buff区"))
if menu1 == nil then else
if menu1[1] == true then if1() end
if menu1[2] == true then if2() end
if menu1[3] == true then if3() end
if menu1[4] == true then if4() end
end
GLWW=-1
end

function if1()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 while true do
	 gg.getResults(100)
    gg.editAll("100", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("102", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("103", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("107", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("108", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("300", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("109", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("110", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("111", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("113", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("206", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("301", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("505", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("509", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("510", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("522", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("560", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("542", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("561", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("573", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("11201", gg.TYPE_DWORD)
    gg.sleep(1000)
    end
end
	 function if2()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 while true do
	 gg.getResults(100)
    gg.editAll("100", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("102", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("103", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("107", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("108", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("300", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("109", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("110", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("111", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("113", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("206", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("301", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("505", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("509", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("510", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("522", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("560", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("542", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("202", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("561", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("573", gg.TYPE_DWORD)
    gg.sleep(1000)
    gg.editAll("11201", gg.TYPE_DWORD)
    gg.sleep(1000)
    end
end

function if3()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_DWORD)
gg.toast("神提醒你：开启成功")
gg.clearResults()
end

function if4()
gg.setRanges(32)
gg.searchNumber("50f;3.75f;202;203;0.7f::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw = gg.prompt({
i = "BUFF代码:\n100暴走BUFF\n102跳高BUFF\n103疾跑BUFF\n107无敌BUFF\n202魔法墙加速BUFF\n206生命护盾BUFF\n300Boss无敌BUFF\n301Boss狂暴BUFF\n552命石者护盾加速BUFF\n107无敌\n\n输入你想改的buff"
}, {i = ""})
gg.editAll(fw.i, gg.TYPE_DWORD)
gg.toast("神提醒你：开启成功")
gg.clearResults()
end

function qy6()
menu6 = gg.multiChoice({
mt.."强制结算"..mt,
mt.."救人数量"..mt,
mt.."个人伤害"..mt,
mt.."逃生八人"..mt,
mt.."逃生四人"..mt,
mt.."抓获50人"..mt,
mt.."击倒50人"..mt,
mt.."返回神"..mt,
 },nil,'所有功能在大厅开启。强制结算要在游戏30秒之后开，开完后在大厅关闭强制结算 ，继续进入游戏 30秒后开')
  if menu6 == nil then else
    if menu6[1] == true then k1() end
    if menu6[2] == true then k2() end
    if menu6[3] == true then k3() end
    if menu6[4] == true then k4() end
    if menu6[5] == true then k5() end
    if menu6[6] == true then k6() end
    if menu6[7] == true then k7() end
    if menu6[8] == true then Main0() end
  end
  GLWW=-1
end
function k1()
qc=gg.alert("强制结算","开启","关闭")
if qc==1 then 
fastsearch--
({
{0.00048828148,16,16384},
{-382906896,-476,4},
{-494030824,-472,4},
{184549345,-608,4}
},
{{-476053504,-476,4,true},
{-516948194,-472,4,true}},'强制结算')
end
if qc==2 then
fastsearch--
({
{0.00048828148,16,16384},
{-476053504,-476,4},
{-516948194,-472,4},
{184549345,-608,4}
},
{{-382906896,-476,4,true},
{-494030824,-472,4,true}},'强制结算')
end
end

function k2()
qc=gg.alert("救人数量","开启","关闭")
if qc==1 then 
fastsearch--救人数量
({
{-128.31251525879,16,16384},
{-382908368,1112,4},
{-494030840,1116,4},
{167772175,1028,4}
},
{{-476049917,1112,4,true},
{-516948194,1116,4,true}},'救人数量')
end     
if qc==2 then
fastsearch--救人数量
({
{-128.31251525879,16,16384},
{-476049917,1112,4},
{-516948194,1116,4},
{167772175,1028,4}
},
{{-382908368,1112,4,true},
{-494030840,1116,4,true}},'救人数量')
end
end

function k3()
qc=gg.alert("个人伤害'","开启","关闭")
if qc==1 then 
fastsearch--个人伤害'
({
{0.20000000298,16,16384},
{-527478779,-528,4},
{-509591552,-532,4}
},
{{-486535200,-544,4,true},
{-301987312,-540,4,true},
{-289928512,-536,4,true},
{-300938736,-532,4,true},
{-516948194,-528,4,true}},'个人伤害')
end     
if qc==2 then
fastsearch--个人伤害
({
{0.20000000298,16,16384},
{-516948194,-528,4},
{-300938736,-532,4}
},
{{-382908368,-544,4,true},
{-494030840,-540,4,true},
{-442544008,-536,4,true},
{-509591552,-532,4,true},
{-527478779,-528,4,true}},'个人伤害')
end
end

function k4()
qc=gg.alert("逃生八人","开启","关闭")
if qc==1 then 
fastsearch--伤害
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539256,208,4,true},
{-516948194,212,4,true}},'逃生八人')
end
if qc==2 then
fastsearch--伤害
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4,true},
{-494030820,212,4,true}},'逃生八人')
end
end

function k5()
qc=gg.alert("逃生四人","开启","关闭")
if qc==1 then 
fastsearch--逃脱人数8人
({
{42569729,4,16384},
{-494030820,212,4}
},
{{-486539260,208,4,true},
{-516948194,212,4,true}},'逃生四人')
end     
if qc==2 then
fastsearch--逃脱人数4人
({
{42569729,4,16384},
{-516948194,212,4}
},
{{-382906384,208,4,true},
{-494030820,212,4,true}},'逃生四人')
end
end

function k6()
qc=gg.alert("","开启","关闭")
if qc==1 then 
fastsearch--
({
{184549357,4,16384},
{-382906384,76,4},
{-494030820,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-476053454,76,4,true},
{-516948194,80,4,true}},'抓获50人')
end     
if qc==2 then
fastsearch--
({
{184549357,4,16384},
{-476053454,76,4},
{-516948194,80,4},
{167772164,256,4},
{167772162,292,4}
},
{{-382906384,76,4,true},
{-494030820,80,4,true}},'抓获50人')
end
end

function k7()
qc=gg.alert("","开启","关闭")
if qc==1 then 
fastsearch--抓获50人
({
{-128.31251525879,16,16384},
{-382908368,-756,4},
{-494030840,-752,4},
{167772164,-800,4}
},
{{-476053454,-756,4,true},
{-516948194,-752,4,true}},'击倒50人')
end     
if qc==2 then
fastsearch--抓获50人
({
{-128.31251525879,16,16384},
{-476053454,-756,4},
{-516948194,-752,4},
{167772164,-800,4}
},
{{-382908368,-756,4,true},
{-494030840,-752,4,true}},'击倒50人')
end
end



	 
function qy7()
  menu7 = gg.multiChoice({
"猎杀队友",
"手雷改无敌+范围伤害",
"反开锁",
"100%概率开锁[炸锁专用]",
"改阵营",
mt.."返回神"..mt,
}, nil, os.date("专打傻逼队友,狗叫的队友"))
if menu7 == nil then else
if menu7[1] == true then l1() end
if menu7[2] == true then l2() end
if menu7[3] == true then l3() end
if menu7[4] == true then l4() end
if menu7[5] == true then l5() end
if menu7[6] == true then Main0() end
end
GLWW=-1
end

function l1()
qc=gg.alert("神提醒你：猎杀队友","开启","关闭")
if qc==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("神提醒你：杀队友✓")
	 gg.clearResults()
end
if qc==2 then  
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
	 gg.toast("神提醒你：杀队友X")
	 gg.clearResults()
end
end

function l2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33F;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()

qmnb = {
{["memory"] = 32},
{["name"] = "神提醒你：手雷范围"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
{["value"] = 5,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
end

function l3()
qmnb = {
{["memory"] = 32},
{["name"] = "神提醒你：反开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = -3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function l4()
qmnb = {
{["memory"] = 32},
{["name"] = "神提醒你：100概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = -9999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function l5()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68935093e20;-5.90526395e21;-7.15142452e24;-5.06299207e25;-5.90295867e21;-7.16086925e24;-1.30928164e25;-1.30683765e21;-9.40426902e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50466474e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("神提醒你：改阵营")
	 gg.clearResults()
end

function qy8()
menu = gg.choice({
"8v2传送",
"4v1传送",
"大乱斗传送",
mt.."返回神"..mt,
}, 2022, "传送功能[取消返回]")
if menu == 1 then n1() end
if menu == 2 then n2() end
if menu == 3 then n3() end
if menu == 4 then Main0() end
XGCK=-1
end

function n1()
menu16 = gg.multiChoice({
"出生点",--1
"禁闭室",--2
"逃生点",--3
"锁1",--4
"锁2",--5
"锁3",--6
"锁4",--7
"锁5",--8
"锁6",--9
"锁7",--10
"锁8",--11
"锁9",--12
"锁10",--13
"上门",--14
"中门",--15
"下门",--16
"一键锁位[配合移动开物]",--17
}, nil, os.date("8v2传送\n锁由左到右，由上到下依次排列"))
if menu16[1] == true then na1() end
if menu16[2] == true then na2() end
if menu16[3] == true then na3() end
if menu16[4] == true then na4() end
if menu16[5] == true then na5() end
if menu16[6] == true then na6() end
if menu16[7] == true then na7() end
if menu16[8] == true then na8() end
if menu16[9] == true then na9() end
if menu16[10] == true then na10() end
if menu16[11] == true then na11() end
if menu16[12] == true then na12() end
if menu16[13] == true then na13() end
if menu16[14] == true then na14() end
if menu16[15] == true then na15() end
if menu16[16] == true then na16() end
if menu16[17] == true then na17() end
GLWW=-1
end

function na1()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{4.79341316223,-212,16},{4.50854158401,-204,16}})
end

function na2()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{43.43095779419,-212,16},{19.70534706116,-204,16}})
end

function na3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{86.59527587891,-212,16},{38.43141555786,-204,16}})
end

function na4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
end

function na5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
end

function na6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
end

function na7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
end

function na8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
end

function na9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
end

function na10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
end

function na11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
end

function na12()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
end

function na13()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
end

function na4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{65.45124053955,-212,16},{33.24272537231,-204,16}})
end

function na15()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function na16()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.53405761719,-212,16},{18.30999183655,-204,16}})
end

function na17()
qmnb = {
{["memory"] = 32},
{["name"] = "神提醒您：0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
astsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function n2()
menu17 = gg.multiChoice({
"出生点",--1
"禁闭室",--2
"逃生点",--3
"左上锁",--4
"左下锁",--5
"右上锁",--6
"右下锁",--7
"上门",--8
"下门",--9
"一键锁位",--10
}, nil, os.date("4v1传送"))
if menu17[1] == true then nb1() end
if menu17[2] == true then nb2() end
if menu17[3] == true then nb3() end
if menu17[4] == true then nb4() end
if menu17[5] == true then nb5() end
if menu17[6] == true then nb6() end
if menu17[7] == true then nb7() end
if menu17[8] == true then nb8() end
if menu17[9] == true then nb9() end
if menu17[10] == true then nb10() end
XGCK =-1
end

function nb1()
fastsearch({{0.3749999702,16,32},{-10,-152,16}},{{3.31672906876,-212,16},{15.10242652893,-204,16}}) 
end

function nb2()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{41.2279510498,-212,16},{15.20110321045,-204,16}}) 
end

function nb3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.47306060791,-212,16},{15.10242652893,-204,16}}) 
end

function nb4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
end

function nb5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}}) 
end

function nb6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
end

function nb7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
end

function nb8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function nb9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.5991897583,-212,16},{10.4521522522,-204,16}})
end

function nb10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function n3()
menu18 = gg.multiChoice({
"boss房",--1
"教堂处",--2
"海盗船",--3
"C字楼",--4
}, nil, os.date("大乱斗传送"))
if menu18[1] == true then nd1() end
if menu18[2] == true then nd2() end
if menu18[3] == true then nd3() end
if menu18[4] == true then nd4() end
XGCK =-1
end

function nd1()
fastsearch({{0.3749999702,16,32},{1111752704,-132,4}},{{66.4966506958,-212,16},{55.80109786987,-204,16},{3,-208,16,false}}) 
end
function nd2()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{95.24781799316,-212,16},{19.73115158081,-204,16},{3,-208,16,false}}) 
end
function nd3()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{69.37117767334,-212,16},{24.43232536316,-204,16},{3,-208,16,false}}) 
end
function nd4()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{44.47694778442,-212,16},{81.638671875,-204,16},{3,-208,16,false}}) 
end











function qy9()
menu9 = gg.multiChoice({
"疾跑",
"火箭筒1级",
"火箭筒2级",
"火箭筒3级",
"迫击炮1级",
"迫击炮2级",
"迫击炮3级",
"医疗箱",
"手榴弹",
"跳高",
"皮卡",
"冲锋枪",
"酒桶",
"自走球",
"阻挡箱",
"传送门",
"飞爪",
"狗",
"针",
"毒液",
"滑板",
"能量剑1级",
"能量剑2级",
"能量剑3级",
"蹦蹦枪",
"能量碗炮",
"小灰机",
"生命护盾",
"充气垫",
"魔法墙",
"战术导弹",
"追踪雷",
"治疗球",
"引力场",
"时光机",
"滑板风格(大厅)",
"魔法墙风格(大厅)",
"能量剑(大厅)",
"返回主页",
}, nil, os.date("道 具 皮 肤 美 化\n在游戏中开可以实战"))
if menu9 == nil then else
if menu9[1] == true then ii1() end
if menu9[2] == true then ii2() end
if menu9[3] == true then ii3() end
if menu9[4] == true then ii4() end
if menu9[5] == true then ii5() end
if menu9[6] == true then ii6() end
if menu9[7] == true then ii7() end
if menu9[8] == true then ii8() end
if menu9[9] == true then ii9() end
if menu9[10] == true then ii10() end
if menu9[11] == true then ii11() end
if menu9[12] == true then ii12() end
if menu9[13] == true then ii13() end
if menu9[14] == true then ii14() end
if menu9[15] == true then ii15() end
if menu9[16] == true then ii16() end
if menu9[17] == true then ii17() end
if menu9[18] == true then ii18() end
if menu9[19] == true then ii19() end
if menu9[20] == true then ii20() end
if menu9[21] == true then ii21() end
if menu9[22] == true then ii22() end
if menu9[23] == true then ii23() end
if menu9[24] == true then ii24() end
if menu9[25] == true then ii25() end
if menu9[26] == true then ii26() end
if menu9[27] == true then ii27() end
if menu9[28] == true then ii28() end
if menu9[29] == true then ii29() end
if menu9[30] == true then ii30() end
if menu9[31] == true then ii31() end
if menu9[32] == true then ii32() end
if menu9[33] == true then ii33() end
if menu9[34] == true then ii34() end
if menu9[35] == true then ii35() end
if menu9[36] == true then ii36() end
if menu9[37] == true then ii37() end
if menu9[38] == true then ii38() end
if menu9[39] == true then Main0()end
end
XGCK =-2
end
function ii1()--充气垫新皮肤
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw=gg.prompt({l='4级\n600051\n7级\n600056\n10级\n600061\n13级\n600066\n秋枫\n600661\n蝙蝠\n600761\n心之痕\n600981\n蜜蜂\n601126\n彩带\n601181\n青龙\n601211\n蝶舞\n601681'}, {l='0'})
	 gg.editAll(fw["l"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i="4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491"}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii3()--追踪雷13级皮肤
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii4()--滑板新皮肤
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii5()--蹦蹦枪新皮肤①
 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii6()--蹦蹦枪新皮肤②
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii7()--蹦蹦枪新皮肤③
 gg.clearResults()
 gg.setRanges(32)
	 gg.searchNumber("500022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500022", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600186\n7级\n600191\n10级\n600236\n13级\n600241\n糖果大炮\n600641\n星能爆裂\n600881\n彩虹角马\n601301\n泽塔之力\n601506'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii8()--引力场新皮肤
 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='网红同款:600086\nDMM彩豆蛋糕:600091\n自制爱心便当:600096\n圣光之箱:600271\n外卖盒:600366\n月饼盒:600411\n新春礼盒600486\n春日野菜篮600516\nDMM掌机：600966\nD胜客披萨：600996\n3周年蛋糕：601271\n千星攻略：600576'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii9()--传送门新皮肤 
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='新款:600071\n大棵菠萝:600041\n小猪储钱罐:600046\n氪金石脉冲弹:600226\n粽子:600336\n2019新春爆竹:600221\n圣诞雪球:600196\n单但瓦斯600521\n幸福捧花600576\n量子星星600756\n棉花枕头600781\n星能源石600906\n娃娃闹钟600931\n萌萌河豚601201\n金币爆弹601276'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii10()--巡逻犬新皮肤
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='活泼:600101\n花式跑酷:600106\n恶搞之舞:600111\n完美空翻:600116'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii11()--蹦蹦枪新皮肤[风格]①
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='热销款:600121\n购物车:600001\n摇滚小黄鸭:600006\nDMM-R超跑:600231\n星猪骑士:600266\n幻影流星跑车600416\n皇家马车600466\n3周年皮肤601286\n浪漫花车:600561\n浪漫花车[梦幻]:650071\n小花喵：600776\n小花喵［噶呜］650251\n驯鹿礼物车：600851\n方程式赛车：600971\n夏洛克车：601486\n德拉木巡逻车:650581\n摇滚小黄鸭[甜心]:650061'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii12()--蹦蹦枪新皮肤[风格]②
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='马克Z1:600346\n古斯塔夫45:600351\n激光:600376 \n黄金枪:600436\n腾龙600941'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii13()--蹦蹦枪新皮肤[风格]③
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='白橡木:600126\n陈年老坛酒:600131\n女巫的魔药:600136\n幻想伏特加:600311\n超能水600371\n烟花桶600391\n冰镇鸡尾酒600451\n爆米花：600791\n爆米花［草莓］：650281\n乌贼：601071\n像素炼药锅：601236\n腰鼓：601356\n压力罐：601411\n压力罐［危险品］\n考拉滚滚：601436\n晶源之星：601691'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii14()--引力场新皮肤[风格]
gg.clearResults()
 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='环保款:600301\n光能双环:600306\n魔力紫球:600316\n闪闪飞轮:600321\n风火轮600476\n蝴蝶泡泡:600566\n蝴蝶泡泡[甜心]:650081\n星能时计：600811\n水流术：601066\n庆典彩球：601226\n小鸡扭蛋：601311\n小鸡扭蛋［成年］：650491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii15()--传送门新皮肤[风格]
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='DMM快递箱:600141\n老式游戏机:600026\n熊猫表情包:600021\n真龙之印:600281\n2019元旦快乐:600201\n周年蛋糕:600386\n快乐豆娃:600401\n未来音箱:600406\n大冰块:600456\n聚能魔方601366'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii16()--巡逻犬新皮肤[风格]
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='深海之光:600291\n爱心水池:600296\n彩虹的约定:600326\n真龙现世:600331\n电音舞台600531\n电音舞台风格650031\n枫林:600666\n古树灵泉：600711\n古树灵泉［精灵］：650211\n圣诞之环：600846\n温泉：600976\n次元虫洞：601081\n莲花宝座：601636\n空间之门：601651'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii17()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='科技款:600151\n马桶抽:600156\n超凡蜘蛛网:600161\n神龙金爪:600276\n食人花:600341\n猫抓冰棒:600446\n量子飞爪600531\n量子飞爪风格650021\n布谷鸟：600716\n布谷鸟［桃粉］：650221\n星握：601386\n深海船锚：601186\n深海船锚［镀金］：650421\n捷德之爪：601466\n鲨鱼咬咬：601551'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='阿棕:600146\n短腿柯基:600031\n幼年哈士奇:600036\n黄金猎犬:600216\n彩虹贵宾犬:600471\n祭奠柴犬:600626\n祭奠柴犬 [黑柴]:650151\b憨憨胖达：\n憨巴狗：600866\n吐司犬：601046\n宇航员：601096\n幼年像素狗：601291\n气球犬：601296\n气球犬［喷涂］650401\n绘雪灵犬：601641'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii19()
	 gg.clearResults()
 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='冷静药水:600166\nbobo奶瓶:600171\n校长的热狗:600176\nDNA超进化:600181\n大葱600421\n香蕉萌萌600481\n冰淇淋:600651\n雪顶奶茶：600856\n玉净瓶：600891\n玉净瓶［琉璃］：650321\n糖葫芦：600921\n星空糖果：601101\n锦鲤：601421\n小姜饼：601446\n神光棒：601511\n黑暗神光棒：650591\n朔夜之晶：601761'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii20()
	 ggg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='二甲苯蓝:600356\n女巫的毒药:600361\n蜘蛛粘液:600381\n蜜罐:600386\n水滴:600426\n黄金毒:600431\n闪耀的灯球600541\n闪耀的灯球风格650041\n时之星云：600956\n岩浆：601061\n致命提灯：601196\n致命提灯［萤火］：650441\n像素毒液瓶：603231\n爱辣五油：601706'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='青青双翘600469\n雷射子弹600501\n电音派对600526\n电音派对风格650011\n青龙之握601206\n滑板麒麟传说[熔岩]650131\n电音派对：600526\n电音派对[橙金]:650011\n鲤鱼浪板:600636\n鲤鱼浪板[乌焰]:650171\n海豚：600861\b重岩大剑：600896\n重岩打剑［玄冰］：650331\n科技星能：600946：\n数码链接：600961\n青龙之握：601206\n虎虎生威：601521\n叱咤风云：601621\n便携推进器：601746'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii22()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='紫电［红尘］：650201\n雷闪：600766\n耀光：600771\n干将：600886\n干将［莫邪］：650311\n斩星：601076\n斩星［炫晶］：650401\n击浪鱼剑：601191\n击浪鱼剑［剑鱼］：650431\n像素剑：601281\n天行之翼：601751\n天行之翼［炽焰］：650661'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii23()
	 gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='紫电［红尘］：650201\n雷闪：600766\n耀光：600771\n干将：600886\n干将［莫邪］：650311\n斩星：601076\n斩星［炫晶］：650401\n击浪鱼剑：601191\n击浪鱼剑［剑鱼］：650431\n像素剑：601281\n天行之翼：601751\n天行之翼［炽焰］：650661'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii24()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500042", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500042", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='紫电［红尘］：650201\n雷闪：600766\n耀光：600771\n干将：600886\n干将［莫邪］：650311\n斩星：601076\n斩星［炫晶］：650401\n击浪鱼剑：601191\n击浪鱼剑［剑鱼］：650431\n像素剑：601281\n天行之翼：601751\n天行之翼［炽焰］：650661'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii25()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500050", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='青空爆弹600871\n夜之歌［樱花］：650301\n电能新星：601586\n王朝之辉：601591\n草莓果汁：601026\n草莓果汁［蓝莓］：650361\n聚星者：601361\n聚星者［炫晶］：650511\n贝利亚之力：601501\n紫金葫芦：601626'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii26()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500060", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500060", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='疾雷［圣洁］：650611\n科技之作：601721\n焦土之光：601726\n驭星者：601686\n驭星者［炫晶］：'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii27()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='绿玫瑰601366\n夜幕601314\n复古601406\n复古［烈空］：650551\n胜利飞燕1号：601471\n胜利飞燕2号：650571\n小葵试卷：601581'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii28()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("500007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='深蓝:600606\n离子能量:600611\n离子能量[天使]:650121\n超能粒子：601536\n雄狮之力：601541\n绵羊：600786\n绵羊［巧克力］：650271\n占星：600796\n防爆护盾：600911\n夹心饼干：601036\n夹心饼干［可可］：650381\n跃动音符：601056\n青龙盾：601216\n凌晶：601396\n帕拉吉之盾：601476\n福运到：601526\n晶能磐石：601701'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii29()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='Q弹柠檬:600681\n黑科技:600686\n黑科技[粉萌]:650191\n晶格科技：600741\n遗迹机关：600746\n熊猫气垫：600701\n节奏达人：600836\n橘子布丁：601031\n橘子布丁［草莓］：650371\n异星蘑菇：601086\n呼噜噜：601141\n好眠枕垫：601596'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii30()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='能源之门:600506\n迷你喷泉:600511\n彩虹孤影:600596\n圣殿之门:600621\n圣殿之门[冰晶]:650141\n热血竞技:600546\n蔷薇之恋:600571\n蔷薇之恋[初恋]:650091\n竹晚：600706\n山河屏风：600901\n山河屏风［星月］：650341\n霓虹光影：601166\n星空：601381\n侦案现场：601416\n侦案现场［投影］：650541\n星航中枢：601676'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii31()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='雷霆打击：600826\n爆破8号：600831\n爆破8号［魅影］：650291\n雷神制导：601251\n陷落文明：601256\n窜天猴：600926\n撒糖甜筒：601041\n撒糖甜筒［缤纷］：650391\n赞赞飞弹：601316\n火爆玉米：601351\n陨石流星：601371\n考场利器：601731'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii32()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='苍岚：601006\n紫盲：601011\n紫盲［春樱］：650351\n智械守卫：601601\n圣金甲虫：601606\n异星魔虫：601091\n纸箱鼹鼠：601306\n纸箱鼹鼠［白箱］：650481\n太鼓：601346\n雪人手办：601441'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function ii33()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='小蓝:600581\n小Y:600586\n小Y[甜心]:6500111\n治疗精灵：600721\n治疗精灵［粉灵］：650231\n电疗精灵600726\n女神使者：600731\n炫音精灵：600841\n助手机器人：600916\n兔兔花灯：600936\n牙牙：601136\n魔法茶壶：601171\n异星精灵：601376\n迪迦之光：601461\n护理终端：601741\n护理终端［急诊］：650651'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii34()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("501100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='蓝光:600551\n水之漩涡:600556\n水之漩涡[神秘]:650051\n飓风之力:600671\n魔能沙暴:600676\n幻星黑洞：600751\n极地暴雪：600801\n龙啸之域：601221\n魔力扫把：601391\n紧箍咒：601631\n紧箍咒［玉侓］：650621\n夜愿：601696'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii35()
gg.clearResults()
	  gg.setRanges(32)
	 gg.searchNumber("501800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='\n绿野仙踪：601426\n紫气东来：601431\n紫气东来［余霞］：650561\n小小汤圆：601531'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
function ii36()
gg.setRanges(262207)
gg.searchNumber('500900', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('500900', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('650131',4)
gg.toast('神提醒你：滑板风格皮开启成功')
end

function ii37()
gg.setRanges(262207)
gg.searchNumber('501000', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('501000', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('650141',4)
gg.toast('神提醒你：魔法墙风格皮开启成功')
end

function ii38()
qc=gg.alert("星耀皮肤","星耀皮肤","风格")
if qc==1 then
gg.setRanges(32)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("601076", gg.TYPE_DWORD)
gg.toast("神提醒你：开启成功")
gg.clearResults()
if qc==2 then 
gg.setRanges(32)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("601076", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("650401", gg.TYPE_DWORD)
gg.toast("神提醒你：开启成功")
gg.clearResults()
end
end
end





function qy10()
menu10 = gg.multiChoice({
 "🌟DMM涂鸦改失忆者星耀动作🌟",
"🌟DMM涂鸦改雇佣兵星耀动作🌟",
"🌟DMM涂鸦改战斗女星耀动作🌟",
"🌟DMM涂鸦改发明家星耀动作🌟",
"🌟DMM涂鸦改女特工星耀动作🌟",
"🌟DMM涂鸦改亩玖儿星耀动作🌟",
"🌟失忆者改篮球舞【游戏开】🌟",
"🌟失忆者改打篮球【游戏开】🌟",
"😡退出😡",
   },nil,'')
  if menu10 == nil then else
    if menu10[1] == true then qq1() end
    if menu10[2] == true then qq2() end
    if menu10[3] == true then qq3() end
    if menu10[4] == true then qq4() end
    if menu10[5] == true then qq5() end
    if menu10[6] == true then qq6() end
    if menu10[7] == true then qq7() end
    if menu10[8] == true then qq8() end
    if menu10[9] == true then Main0() end
  end
  GLWW=-1
end

function qq1()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961351", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq2()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961361", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq3()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961201", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq4()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961721", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq5()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961371", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq6()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961211", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq7()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;960,011;200;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("960271", gg.TYPE_DWORD)
	 gg.toast("神提醒你：开启成功")
	 gg.clearResults()
end
function qq8()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;960,011;200;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("960251", gg.TYPE_DWORD)
	 gg.toast("神提醒你：👿👿👿")
	 gg.clearResults()
end

function qy11()
  menu11 = gg.multiChoice({
  mt.."炫光1"..mt,
 mt.. "炫光2"..mt,
 mt.. "炫光3"..mt,
 mt.. "炫光4"..mt,
mt..  "炫光5"..mt,
mt.."返回神"..mt,
},nil,"")
if menu11 == nil then else
if menu11[1] == true then lo1() end
if menu11[2] == true then lo2() end
if menu11[3] == true then lo3() end
if menu11[4] == true then lo4() end
if menu11[5] == true then lo5() end
if menu11[6] == true then Main0() end
end
GLWW=-1
end
function lo1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 970131}})
	 end
	 gg.toast("神提醒你：修改成功")
	 gg.clearResults()
end
function lo2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 970151}})
	 end
	 gg.toast("神提醒你：修改成功")
	 gg.clearResults()
end
function lo3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 970171}})
	 end
	 gg.toast("神提醒你：修改成功")
	 gg.clearResults()
end
function lo4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 970181}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end
function lo5()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("970011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 970191}})
	 end
	 gg.toast("神提醒你：修改成功")
	 gg.clearResults()
end


function qy12()
  menu11 = gg.multiChoice({
mt..     "全框架360解设备",--1
mt..	 "全框架4399解设备",--2
mt..	 "全框架九游解设备",--3
mt..	 "全框架百度解设备",--4
mt..	 "全框架OPPO解设备",--5
mt..	 "全框架小米解设备",--6
mt..	 "全框架vivo解设备",--7
mt..	 "全框架应用宝解设备",--8
mt..	 "全框架好游快爆解设备",--9
mt..	 "返回主页",
   },nil,'作者冬物语，免费分享源码，请勿倒卖，进程一定要选择框架！！！冬物语留言:如设备解封失败则是你的框架不支持这种解封设备的方式，请自行清除框架数据。')
  if menu11 == nil then else
    if menu11[1] == true then qa1() end
    if menu11[2] == true then qa2() end
    if menu11[3] == true then qa3() end
    if menu11[4] == true then qa4() end
    if menu11[5] == true then qa5() end
    if menu11[6] == true then qa6() end
    if menu11[7] == true then qa7() end
    if menu11[8] == true then qa8() end
    if menu11[9] == true then qa9() end
    if menu11[10] == true then Main0() end
  end
  GLWW=-1
end

function qa1()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa2()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa3()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa4()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.g.baidu/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa5()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.nearme.gamecenter/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end


function qa6()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.mi/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa7()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.vivo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa8()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qa9()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("神提醒你：当前进程:"..mingcheng.."！\n请确认此进程是框架进程\n是否继续？","继续","返回")
if xuanze==1 then queding=true end
if xuanze==2 then Main0() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("神提醒你：写入成功。")
local shanchu=gg.alert("神提醒你：文件写入成功！请重启游戏即可！")
else
gg.alert("神提醒你：检测到目标文件不存在！无法修改文件！")
end
end
end

function qy13()
menu1 = gg.multiChoice({
	 "狐狸技能[局内]",
	 "夹子范围[局内]",
	 "琪琪技能[局内]",
	 "忍者技能[局内]",
	 "艾克技能[局内]",
	 "艾克技能释放范围[局内]",
	 "忍者技能长度[局内]",
	 "狮子范围[局内]",
	 "机械范围[局内]",
	 "命使者爆摔伤害+范围[局内]",
	 "命使者冲刺距离[局内]",
	 "命使者技能无冷却+免费[局内]",
	 "狮子技能释放范围[局内]",
	 "特工技能[局内]",
	 "定抱摔[局内]",
	 "玖儿技能范围+无限长[局内]",
	 "玖儿局内杀队友",
	 "影之忍者技能攻击范围",
	 "影之忍者锁技能+无间隔+免费",
	 "盾卫技能",
	 "盾卫改技能",
	 "返回",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then p1()end
if menu1[2] == true then p2()end
if menu1[3] == true then p3()end
if menu1[4] == true then p4()end
if menu1[5] == true then p5()end
if menu1[6] == true then p6()end
if menu1[7] == true then p7()end
if menu1[8] == true then p8()end
if menu1[9] == true then p9()end
if menu1[10] ==true then p10()end
if menu1[11] ==true then p11()end
if menu1[12] ==true then p12()end
if menu1[13] ==true then p13()end
if menu1[14] ==true then p14()end
if menu1[15] ==true then p15()end
if menu1[16] ==true then p16()end
if menu1[17] ==true then p17()end
if menu1[18] ==true then p18()end
if menu1[19] ==true then p19()end
if menu1[20] ==true then p20()end
if menu1[21] ==true then p21()end
if menu1[22] ==true then Main0()end
end
GLWW=-1
end

function p1()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] =10.0 } , 
{["类型"]=  4  ,["偏移"]=  -80  ,["副特征码"]= 50},
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  -84 , ["冻结"] =  false  , ["修改"] = 0  } , --冷却
  {["类型"] =  16 ,["偏移"] =  -80 , ["冻结"] =  true  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end

function p2()
qmnb = {
{["memory"] = 32},
{["name"] = "夹子范围"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-12, ["type"] = 16},
}
xqmnb(qmnb)
end

function p3()
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

function p4()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] = 0.5 } , 
{["类型"]=  4  ,["偏移"]=  4  ,["副特征码"]=  60},
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  -4 , ["冻结"] =  false  , ["修改"] = 1  }  , --技能
   {["类型"] =  4 ,["偏移"] =  4 , ["冻结"] =  false  , ["修改"] = 0  } , --金币
} LongTao(tb1, tb2)
end

function p5()
xtnb({{false,2.5,128,16,nil,nil},{5.647232811229013E-43,132,16},{3.5,136,16},{50.0,140,16},{0.30000001192092896,156,16},{4.0,160,16}},{{2,0,4,true},{0,8,16,false},{0,144,16,false},{0,148,16,false},{0,152,16,false}},16,32,"输入功能名称")
end

function p6()
local xt=gg.prompt({"艾克技能释放范围"}, {[1] = 10}, {[1] = "text"})
xtnb({{false,2147483647,0,4,nil,nil},{6.0,16,16},{3.5873240686715317E-43,60,16}},{{xt[1],20,16,false}},16,32,"输入功能名称")end

function p7()
gg.setRanges(32)
gg.searchNumber("9.18354962e-41;4;6", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
fw= gg.prompt({i=''}, {i='50'})
	 gg.editAll(fw["i"], 16)gg.toast("范围")
end

function p8()
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

function p9()
qmnb = {
{["memory"] = 32},
{["name"] = "机械范围"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
}
xqmnb(qmnb)
end

function p10()
qmnb = {
{["memory"] = 32},
{["name"] = "抱摔距离+伤害"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -8, ["type"] = 16},
}
qmxg={
{["value"] = 160.0, ["offset"] = -96, ["type"] = 16},
{["value"] = 100.0, ["offset"] = -84, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast('抱摔伤害+距离捕捉成功')
end

function p11()
local xt=gg.prompt({"命使者冲刺距离"}, {[1] = 15})
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{xt[1], 20, 16, false},{xt[1], 16, 16, false}})
end

function p12()
gg.setRanges(32)
Name = "全技能无冷却+免费"
local dataType = 16
local tb1 = {{4.300000190734863, 0}, {-1.0, -4}, {1.0, -8}, {3.0, -12}, }
local tb2 = {{0,-260, true}, {0,-256, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("全技能无冷却+免费开启成功️")
end

function p13()
local xt=gg.prompt({"小狮子技能释放范围"}, {[1] = 10}, {[1] = "text"})
xtnb({{false,2147483647,0,4,nil,nil},{5.0,16,16},{3.60133705331478E-43,60,16}},{{xt[1],20,16,false}},16,32,"输入功能名称")
end
function p14()
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

function p15()
gg.setRanges(32)
Name = "定技能[左]"
local dataType = 16
local tb1 = {{4.300000190734863, 0}, {-1.0, -4}, {1.0, -8}, {3.0, -12}, }
local tb2 = {{1.40129846e-45,-268, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("定技能[左]开启成功️")
end

function p16()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] = 10.0} , 
{["类型"]=  16  ,["偏移"]=  -8  ,["副特征码"]=  6.0},
{["类型"]=  16  ,["偏移"]=  16  ,["副特征码"]= 1.0 },
}
 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  -8 , ["冻结"] =  false  , ["修改"] = 999  } , ---范围
} LongTao(tb1, tb2)
local xt=gg.prompt({"玖儿连接范围"}, {[1] = 15}, {[1] = "text"})
xtnb({{false,3.58732407e-43,0,16,nil,nil},{5.5,-44,16}},{{xt[1],-40,16,false}},16,32,"玖儿")end
function p17()
xtnb({{false,-50.0,0,16,nil,nil},{0.6000000238418579,8,16},{7.006492321624085E-44,88,16}},{{99,96,16,false}},16,32,"输入功能名称")end
function p18()
local xt=gg.prompt({"影之忍者攻击范围"}, {[1] = 5}, {[1] = "text"})
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{xt[1],124,16,false}},16,32,"范围")
end

function p19()
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{2.80259693e-45,0,16,true},{2.80259693e-45,4,16,false},{2.80259693e-45,8,16,false},{9999,108,16,false}},16,32,"满级影之忍者")
end
function p20()
qc=gg.alert("盾卫","超级盾卫","超级盾卫普攻")
if qc==1 then
local xt=gg.prompt({"盾卫连发"}, {[1] = 100})
xtnb({{false,40.0,0,16,nil,nil},{1.2000000476837158,12,16},{10.0,16,16},{0.699999988079071,20,16},{0.699999988079071,24,16}},{{xt[1],8,4,false}},16,32,"输入功能名称")
xtnb({{false,10.0,4,16,nil,nil},{1.2000000476837158,8,16},{1.401298464324817E-45,48,16}},{{0,164,16,true}},16,32,"输入功能名称")
xtnb({{false,6.0,108,16,nil,nil},{10.0,112,16},{0.800000011920929,124,16},{0.5,128,16},{1.5,132,16},{12.0,136,16}},{{0,0,16,false},{0,4,16,false},{50,116,16,false},{0.01,120,16,false}},16,32,"输入功能名称")
local xt=gg.prompt({"盾卫"}, {[1] = 20})
xtnb({{false,0.20000000298023224,0,16,nil,nil},{2147483647,72,4},{6.0,92,16},{3.5873240686715317E-43,132,16},{0.36000001430511475,232,16},{0.36000001430511475,236,16},{0.4000000059604645,240,16}},{{xt[1],88,16,false},{xt[1],96,16,false}},16,32,"输入功能名称")
end
if qc==2 then
xtnb({{false,10.0,4,16,nil,nil},{1.2000000476837158,8,16},{1.401298464324817E-45,48,16}},{{0,0,16,true},{0,40,16,true},{0,44,16,true},{0,164,16,true}},16,32,"输入功能名称")end
end
function p21()
local xt=gg.prompt({"改角色技能"}, {[1] = 150})
xtnb({{false,143,0,4,nil,nil},{144,4,4},{145,8,4},{3,-4,4}},{{xt[1],0,4,false}},4,32,"呃呃")
end



function qy14()
menu15 = gg.multiChoice({
mt.."针".. mt,
mt.."护盾".. mt,
mt.."飞爪".. mt,
mt.."酒桶".. mt,
mt.."狗".. mt,
mt.."传送门".. mt,
mt.."自走球".. mt,
mt.."毒液".. mt,
mt.."阻挡箱".. mt,
mt.."引力场".. mt,
mt.."治疗球".. mt,
mt.."充气垫".. mt,
mt.."导弹".. mt,
mt.."地雷".. mt,
mt.."时光机".. mt,
mt.."吼吼号".. mt,
mt.."小飞机".. mt,
mt.."医疗箱".. mt,
mt.."迪迦".. mt,
mt.."赛罗".. mt,
mt.."泽塔".. mt,
mt.."火力支援".. mt,
mt.."返回主页".. mt,
}, nil, "")
if menu15 == nil then else
if menu15[1] == true then xta1() end
if menu15[2] == true then xta2() end
if menu15[3] == true then xta3() end
if menu15[4] == true then xta4() end
if menu15[5] == true then xta5() end
if menu15[6] == true then xta6() end
if menu15[7] == true then xta7() end
if menu15[8] == true then xta8() end
if menu15[9] == true then xta9() end
if menu15[10] == true then xta10() end
if menu15[11] == true then xta11() end
if menu15[12] == true then xta12() end
if menu15[13] == true then xta13() end
if menu15[14] == true then xta14() end
if menu15[15] == true then xta15() end
if menu15[16] == true then xta16() end
if menu15[17] == true then xta17() end
if menu15[18] == true then xta18() end
if menu15[19] == true then xta19() end
if menu15[20] == true then xta20() end
if menu15[21] == true then xta21() end
if menu15[22] == true then xta22() end
if menu15[23] == true then Main0() end
end
GLWW=-1
end



function xta22()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "火力支援"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 10006,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta21()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "泽塔"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 50003,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta20()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "赛罗"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 50002,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end



function xta19()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "神提醒你：迪迦"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 50001,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end


function xta18()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "神提醒你：开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 401,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta17()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "神提醒你：开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1009,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta16()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "神提醒你：开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1016,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta15()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "神提醒你：开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1010,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta14()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1007,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end
function xta13()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1006,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta12()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1005,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta11()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1004,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta10()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1003,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta9()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 301,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta8()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 1000,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta7()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 901,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta6()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 900,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta5()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 700,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta4()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 800,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta3()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 801,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function xta2()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 500,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end



function xta1()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "开启成功"},
{["value"] = 875573550, ["type"] = D},
{["lv"] = 200,["offset"] =0x4, ["type"] = D},
{["lv"] = 0,["offset"] =0x8, ["type"] = D},
},
{
{["value"] = 100,["offset"] =0xC, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end

function qy15()
menu1 = gg.multiChoice({
     mt.. "起风了"..mt,
	mt..  "大哥背起行囊"..mt,
	 mt.. "江南Style"..mt,
	mt..  "遗失的心跳"..mt,
    mt..  '高阶成长指南'..mt,
    mt.. '我们'..mt,
   mt..  '篝火旁'..mt,
   mt..  '停'..mt},
  nil,'自己用的，加密后你们用不了')
  if menu1 == nil then else
    if menu1[1] == true then pq1() end
    if menu1[2] == true then pq2() end
    if menu1[3] == true then pq3() end
    if menu1[4] == true then pq4() end
    if menu1[5] == true then pq5() end
    if menu1[6] == true then pq6() end
    if menu1[7] == true then pq7() end
    if menu1[8] == true then stop() end
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
 gg.playMusic("http://music.163.com/song/media/outer/url?id=566443202.mp3")
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
function stop()
gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end








function qy16()
menu18 = gg.multiChoice({
"道具无CD[大厅]",
"乱斗锁卡[大厅]",
"移动开物[大厅]",
"人物爬墙",
"连发︎",
mt.."返回神"..mt,
}, nil, os.date("修复完成"))
if menu18 == nil then else
if menu18[1] == true then ac1() end
if menu18[2] == true then ac2() end
if menu18[3] == true then ac3() end
if menu18[4] == true then ac4() end
if menu18[5] == true then ac5() end
if menu18[6] == true then Main0() end
end
GLWW=-1
end


function ac1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1E59E9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E59EA0},})
end

function ac2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1dfd628},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1DFD62C},})
end

function ac3()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x170ec1c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x170ec20},})
end

function ac4()
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

function ac5()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) nh({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
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
mt.."返回神"..mt,
}, nil, "强制换卡")
if menu then
for i in pairs(menu) do
_ENV[({"DD1","DD2","DD3","DD4","DD5","DD6",'Main0'})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------

function DD2()--疾跑
local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{20528,32,4},
{51200,40,4}
},{
{SA[1],-12,4,false}
}) end

function DD3()--跳高

local SE=gg.prompt({"跳高改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25653,32,4},
{51456,40,4}
},{
{SE[1],-12,4,false}
}) end

function DD5()--拳套

local SQ=gg.prompt({"拳套改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{SQ[1],-12,4,false}
}) end

function DD6()--阻挡箱

local SG=gg.prompt({"阻挡箱改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{77056,40,4}
},{
{SG[1],-12,4,false}
}) end
function DD4()--皮卡

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

function qy18()
local menu = gg.multiChoice({
"开锁速度",
"人物移速",
"人物高跳",
"视野范围",
"全局加速",
"自身血量",
"部分武器连发",
"血包范围",
"手雷伤害",
"手雷范围",
"返回主页",
}, nil, "")
if menu then
for i in pairs(menu) do
_ENV[({"y1","y2","y3","y4","y5","y6","y7","y8","y9","y10",'Main0'})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------

function y1()--开锁[自调]
local fy=gg.prompt({"开锁[自调]"}, {[1] = 3}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function y2()--移速[自调]
local fy=gg.prompt({"移速[自调]"}, {[1] = 3.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function y3()--高跳[自调]
local fy=gg.prompt({"高跳[自调]"}, {[1] = 6.8}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function y4()--视野范围[自调]
local fy=gg.prompt({"视野范围[自调]"}, {[1] = 15}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 10.0,["offset"] =-0x20, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function y5()--全局加速[自调]
local fy=gg.prompt({"全局加速[自调]"}, {[1] = 1.2}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 4},
{["name"] = "全局加速[✔]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function y6()--自身血量[自调]
local fy=gg.prompt({"自身血量[自调]"}, {[1] = 1200}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "自身血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-20, ["type"] = 16},
{["value"] = fy[1],["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function y7()--部分武器连发[自调]
gh=gg.alert("部分武器连发","开启","恢复")
if gh==1 then 
  local fy=gg.prompt({"输入你想要改的连发"}, {[1] =0 }, {[1] = "text"})
  if fy==nil then os.exit(print("取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[开]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
if gh==2 then 
  local gh=gg.prompt({"输入你当前的连发"}, {[1] =0 }, {[1] = "text"})
  if gh==nil then os.exit(print("取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[关]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = gh[1], ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function y8()--医疗箱范围[自调]
local fy=gg.prompt({"医疗箱范围[自调]"}, {[1] = 1.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function y9()--手榴弹伤害[自调]
local fy=gg.prompt({"手榴弹伤害[自调]"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function y10()--手榴弹范围[自调]
local fy=gg.prompt({"手榴弹范围[自调]"}, {[1] = 2.3}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function qy19()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end


function qy20()
menu1 = gg.multiChoice({
'斧头连发',
'冲锋枪连发',
'手枪连发',
'能量剑连发',
'腕炮连发',
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
'返回上一页'},
nil,'有点bug')
if menu1 == nil then else
if menu1[1] == true then na1() end
if menu1[2] == true then na2() end
if menu1[3] == true then na3() end
if menu1[4] == true then na4() end
if menu1[5] == true then na5() end
if menu1[6] == true then na6() end
if menu1[7] == true then na7() end
if menu1[8] == true then na8() end
if menu1[9] == true then na9() end
if menu1[10] == true then na10() end
if menu1[11] == true then na11() end
if menu1[12] == true then na12() end
if menu1[13] == true then na13() end
if menu1[14] == true then na14() end
if menu1[15] == true then na15() end
if menu1[16] == true then na16() end
if menu1[17] == true then na17() end
if menu1[18] == true then na18() end
if menu1[19] == true then na19() end
if menu1[20] == true then na20() end
if menu1[21] == true then na21() end
if menu1[22] == true then Main0() end
end
GLWW=-1
end
function na1()
NH=gg.prompt({"斧头连发"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function na2()
NH=gg.prompt({"冲锋枪连发"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function na3()
NH=gg.prompt({"手枪连发"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function na4()
Nh=gg.alert("能量剑","普通","金库","乱斗新地图") if Nh==1 then NH=gg.prompt({"能量剑连发"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"金库能量剑"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"乱斗新地图能量剑"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function na5()
NH=gg.prompt({"腕炮1级连发"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na6()
NH=gg.prompt({"火箭筒连发"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na7() 
Nh=gg.alert("蹦蹦枪","普通","金库","乱斗新地图") if Nh==1 then NH=gg.prompt({"蹦蹦枪连发"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"金库蹦蹦枪连发"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"乱斗新地图蹦蹦枪连发"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function na8()
NH=gg.prompt({"火箭筒连发"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na9()
NH=gg.prompt({"电球枪连发"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function na10()
NH=gg.prompt({"盾位连发"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function na11()
NH=gg.prompt({"红蜘蛛炮"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function na12()
NH=gg.prompt({"换风镖连发"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na13()
NH=gg.prompt({"回旋镖连发"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function na14()
NH=gg.prompt({"迫击炮1级连发"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na15()
NH=gg.prompt({"热破炮连发"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na16()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"散弹枪连发"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"金库霰弹枪连发"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function na17()
NH=gg.prompt({"生物手枪连发"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function na18()
NH=gg.prompt({"圣女连发"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function na19()
NH=gg.prompt({"威震天炮连发"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function na20()
NH=gg.prompt({"像素剑连发"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function na21()
NH=gg.prompt({"滋水枪连发"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end





function HS36()
	 os.exit()
end

print("感谢你使用神脚本，神科技为你保驾\n \n愿夜里能有人为你点灯你爱的人能住进你的人生")
gg.showUiButton()
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end

