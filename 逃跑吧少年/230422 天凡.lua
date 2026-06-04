function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end

function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end

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

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
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
function XGBase(Address, AFV)
	local address = 0
	for index, offset in ipairs(Address) do
		if index == 1 then
			address = offset
		else
			address = gg.getValues({{address = address + offset, flags = 4}})[1].value
		end
	end
	local Value, Freeze = {}, {}
	for index, value in ipairs(AFV) do
		local VALUE = {address = address + value[3], flags = value[2], value = value[1], freeze = true}
		if value[4] then
			Freeze[#Freeze + 1] = VALUE
		else
			Value[#Value + 1] = VALUE
		end
	end
	gg.setValues(Value)
	gg.addListItems(Freeze)
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
--			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

function LSQ_pointer(search, write)	
	if search[5] or search[6] then
	    local region_start = search[5]
        local region_end = search[6]
	    else
	    local region_start = 0
        local region_end = -1
    end
    gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)
	gg.refineNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)--优化搜索的数据		
	if gg.getResultsCount() == 0 then
		gg.toast("没有搜索到指针数据")
		return false
	else
		local result = Get_value()--获取搜索到的所有数据		
		gg.clearResults()		
		for i = 2, #search do--遍历副特征码数据
			local offset_array = {}--存放偏移数组的表
			for k, v in ipairs(result) do		
			
				offset_array[#offset_array + 1] = {
				["address"] = v["address"] + search[i][2],--把所有搜索出来的结果, 加上偏移量
				["flags"] = search[i][3] 
				}
			end			
			
			
			offset_array = gg.getValues(offset_array)--获取所有副特征数据
			
			local verify_array = {}--验证数组表	
			for k, v in ipairs(offset_array) do--遍历偏移后的数据			
				if v["value"] == search[i][1] then--如果值等于主特征
					verify_array[#verify_array + 1] = result[k]						
				end
			end					
			result = verify_array
		end	
			
		if #result > 0 then
			local Table = {
			{}, 
			{}
			}
			for k, v in ipairs(result) do				
				for kk, vv in ipairs(write) do
					local Modifythe_array = {
					["address"] = v["address"] + vv[2], 
					["flags"] = vv[3], 
					["value"] = vv[1], 
					["freeze"] = vv[4]
					}
					if vv[4] then
						Table[2][#Table[2] + 1] = Modifythe_array
					else
						Table[1][#Table[1] + 1] = Modifythe_array
					end
				end
			end			
			gg.addListItems(Table[2])
			gg.setValues(Table[1])			
			gg.toast("功能: [" .. search[1][4] .. "]开启成功共修改" .. (#Table[1] + #Table[2]) .. "条数据")
		else
			gg.toast("未找到偏移数据")
		end
	end
end


MENU = {"    ",--功能名
  "    ",
  "大变活人",
  "少女",
  "猎杀",
  "少女无冷",
  "角色全皮",
  "无间隔(买武器)",
  "💰",
  "道具13亿",
  "关闭猎杀",
  "能量剑9999999",
  "    ",
  "    ",
  "防闪 ",
  "磁电",
  "道具间隔",
  "一键",
  "移动开锁",
  "跳杆改夹子",
  "开箱子加金币",
  "防闪2"}

function Menu(count) -- 执行功能
  if count == 1 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--高跳移速
      {["value"] = 4453159313486957773, ["type"] = 32},
      {["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
      {["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 7,["offset"] =0, ["type"] = 16},
      {["value"] = 3.3,["offset"] =-16, ["type"] = 16},
    }
    xqmnb(qmnb)

qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--医疗包
      {["value"] = 4608083138725491507, ["type"] = 32},
      {["lv"] = 3689348813882916864,["offset"] =-4, ["type"] = 32},
    }
    qmxg = {
      {["value"] = 3.6,["offset"] =0, ["type"] = 64},
    }
    xqmnb(qmnb)

qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--手雷
      {["value"] = 4612811918334230528, ["type"] = 32},
      {["lv"] = 4611686018427387904,["offset"] =72, ["type"] = 32},
    }
    qmxg = {
      {["value"] = 4,["offset"] =72, ["type"] = 64},
    }
    xqmnb(qmnb)
end
  if count == 2 then
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("128.00001525879;-128.00001525879;0.30000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("透")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50466474e24;-8.80278627e22;-1.21750481e21;-5.90526395e21;-9.39921508e20;-1.83314741e27;-7.1611644e24;-1.30928164e25;-1.30683765e21;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("亮透")
	 gg.clearResults()
      
      gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90532306e21;-5.90771447e21;-7.15087112e24;-1.30940708e25;-1.30683878e21;-9.49143192e20;-9.40808087e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-1.50171254e24;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30940708e25;-1.30683878e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9.38591956e22;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("锁定子弹 ")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("无后")
	 gg.clearResults()
	 
	 qmnb = {
      {["memory"] = 32},
      {["name"] = "疾跑无敌"},
      {["value"] = 6750208, ["type"] = 4},
      {["lv"] = 106147, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 19660800, ["offset"] = 0, ["type"] = 4},
    }
    xqmnb(qmnb)
	 
	 so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressD(address, value)
    local tt = {}
    tt[1] = {}
    tt[1].address = so + address
    tt[1].flags = 4
    tt[1].value = '~A MOVW R0, #'..value
    tt[2] = {}
    tt[2].address = so + address + 0x4
    tt[2].flags = 4
    tt[2].value = '~A BX LR'
    gg.setValues(tt)
end

BaseAddressD(0x1b14490,0)

qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--动作
      {["value"] = 950001, ["type"] = 4},
      {["lv"] = 6, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 961351, ["offset"] = 0, ["type"] = 4},
      {["value"] = 961191, ["offset"] = 4, ["type"] = 4},
      {["value"] = 961361, ["offset"] = 8, ["type"] = 4},
      {["value"] = 961711, ["offset"] = 12, ["type"] = 4},
      {["value"] = 961731, ["offset"] = 16, ["type"] = 4},
      {["value"] = 964051, ["offset"] = 20, ["type"] = 4},
    }
    xqmnb(qmnb)
  end
  if count == 3 then
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
  if count == 4 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--战斗少女
      {["value"] = 1114636288, ["type"] = 4},
      {["lv"] = 1112014848, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 1109393408, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 1101004800, ["offset"] = 12, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0.1, ["offset"] = 0, ["type"] = 16},
      {["value"] = 0.1, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0.1, ["offset"] = 8, ["type"] = 16},
      {["value"] = 0.1, ["offset"] = 12, ["type"] = 16},
    }
    xqmnb(qmnb)
  end
  if count == 5 then
    gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("杀队友")
	 gg.clearResults()
  end
  if count == 6 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--战斗少女范围伤害
      {["value"] = 4481982349412139008, ["type"] = 32},
      {["lv"] = 1080033280, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = -12, ["type"] = 4},
      {["lv"] = 1043542835, ["offset"] = 4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 200, ["offset"] = 0, ["type"] = 16},
      {["value"] = 100, ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = 4, ["type"] = 16},
      {["value"] = 0, ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
  end
  if count == 7 then
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-8.32317813e22;-3.68935022e20;-9.39920383e20;-7.16042653e24;-1.30930378e25;-1.30683878e21;-9.40809528e22;-3.69655457e20;-3.69511377e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30930378e25;-1.30683878e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("解锁全皮肤")
	 gg.clearResults()
  end
  if count == 8 then
    local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
  end
  if count == 9 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--82锁赚米
      {["value"] = 4489188110532608000, ["type"] = 32},
      {["lv"] = 256, ["offset"] = 20, ["type"] = 4},
      {["lv"] = 100, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 88, ["type"] = 4},    
    }
    qmxg = {
      {["value"] = 1, ["offset"] = 88, ["type"] = 4, ["freeze"] = true},
      {["value"] = 184319, ["offset"] = 92, ["type"] = 4, ["freeze"] = true},
    }
    xqmnb(qmnb)
  end
  if count == 10 then
    gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21;-9.40121018e22;-3.69655457e20;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90340171e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("道具卡13亿级")
	 gg.clearResults()
  end
  if count == 11 then
    gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
	 gg.toast("杀队友")
	 gg.clearResults()
  end
  if count == 12 then
    qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--能量剑999
      {["value"] = 1115947008, ["type"] = 32},
      {["lv"] = 1066192077, ["offset"] = 76, ["type"] = 4},
      {["lv"] = -1, ["offset"] = 96, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 9999999, ["offset"] = 0, ["type"] = 16},
    }
    xqmnb(qmnb)
  end
  if count == 13 then
  nh({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{4479, 10, 2, false}, {1, 12, 1, false}})
  end
  if count == 14 then
  qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--苍龙范围伤害
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

    qmnb = {
      {["memory"] = 32},
      {["name"] = "天凡"},--苍龙冷却
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
    if count == 15 then
    gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("778923875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("Cd防闪")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("862,024,801;846,230,528::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("846,230,528", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("Xa防闪")
	 gg.clearResults()
end
if count == 16 then
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,058,642,330;4,728,779,609,802,696,294;4,898,227,545,819,840,512;1,140,457,472;4,620,693,218,757,967,872;1,045,220,557;1,050,253,722::", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4,620,693,218,757,967,872", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4,620,693,218,841,608,192", gg.TYPE_QWORD)
	 gg.toast("磁电场全图范围")
	 gg.clearResults()
	 end
	 if count == 17 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.11445016e28;-1.83314741e27;-7.16094304e24;-1.30930378e25;-1.30683878e21;-9.40837991e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-1.50171254e24;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30930378e25;-1.30683878e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("道具间隔 ✓")
	 gg.clearResults()
	 end
	 if count == 18 then
  qmnb = {
{["memory"] = 32},
{["name"] = "范围开锁"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 9, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
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
{["name"] = "3.8倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.2,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "屏蔽开锁"},--不触发开锁
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end
if count == 19 then
	 nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if count == 20 then
qmnb = {
{["memory"] = 32},
{["name"] = "天凡"},--跳杆改夹子
{["value"] = 1011, ["type"] = 4},
{["lv"] = 1011, ["offset"] = 0, ["type"] = 4},
{["lv"] = 80, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 70002, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end
if count == 21 then
nc_offset(getso("libil2cpp.so"),{{-476053439,4,0x123e388},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x123e38c},})
end     
if count == 22 then
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
end
gg.toast("开启成功")
gg.clearResults()
    end
end

--[[ 2022.11.28 模板
添加功能：
1.在MENU功能,后面添加,"功能名"
2.在function Menu(count)里面添加 if count == 上一个数字+1 then 功能 end
]]

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 算法放下面

---------------------------请勿修改-------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "天凡" .. xgsl .. "天凡") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."天凡") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."天凡") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "天凡" .. xgsl .. "天凡") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end AA="模板作者:天凡" function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("✨开启成功✨"..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("", false) return false end else gg.toast("") return false end end
----------------支持仿xs写法和指针写法-------------------
--[[

支持冻结，支持范围搜索

支持多种仿xs写法

范围搜索与普通写法一样

指针冻结在修改的那一行添加,true即可

仿xs模板：
不冻结
qmnb = {
{["memory"] = 内存范围},
{["name"] = "功能名词"},
{["value"] = 主特征码, ["type"] = 数据类型},
{["lv"] = 1副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 2副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 3副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
}
qmxg = {
{["value"] = 修改数值, ["offset"] = 偏移量, ["type"] = 数据类型},
}
xqmnb(qmnb)


qmnb = {
{["memory"] = 内存范围},
{["name"] = "功能名词"},
{["value"] = 主特征码, ["type"] = 数据类型},
{["lv"] = 1副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 2副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 3副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
}
qmxg = {
{["value"] = 修改数值, ["offset"] = 偏移量, ["type"] = 数据类型, ["freeze"] = true},
}
xqmnb(qmnb)

--
Jh内存:	['REGION_JAVA_HEAP'] = 2 
Ch内存:	['REGION_C_HEAP'] = 1 
Ca内存:	['REGION_C_ALLOC'] = 4 
Cd内存:	['REGION_C_DATA'] = 8 
Cb内存:	['REGION_C_BSS'] = 16 
Ps内存:['REGION_PPSSPP'] = 262144 
A内存:	['REGION_ANONYMOUS'] = 32 
J内存:	['REGION_JAVA'] = 65536 
S内存:	['REGION_STACK'] = 64 
As内存:	['REGION_ASHMEM'] = 524288 
V内存:	['REGION_VIDEO'] = 1048576 
O内存	['REGION_OTHER'] = -2080896 
B内存:	['REGION_BAD'] = 131072 
Xa内存:	['REGION_CODE_APP'] = 16384 
Xs内存:	['REGION_CODE_SYS'] = 32768 
A类搜:	['TYPE_AUTO'] = 127 
B类搜:	['TYPE_BYTE'] = 1 
E类搜:	['TYPE_DOUBLE'] = 64 
D类搜:	['TYPE_DWORD'] = 4 
F类搜:	['TYPE_FLOAT'] = 16 
Q类搜:	['TYPE_QWORD'] = 32 
W类搜:	['TYPE_WORD'] = 2 
X类搜:	['TYPE_XOR'] = 8 
]]

function PointerChain(Modular, Type, Chain)--动态基址模板 返回地址
  local modular = gg.getRangesList('^/data/*.so*$')
  local RecordAddress
  local MemoryAddress = {}
  for a, b in ipairs(modular) do
    if b['name']:match(Modular) then
      if b['state'] == Type then
        RecordAddress = b['start']
        for c, d in ipairs(Chain) do
          RecordAddress = gg.getValues({ [1] = { address = RecordAddress + d, flags = 4 } })[1].value & 0xffffffff
          if c < #Chain then
            MemoryAddress = gg.getValues({ [1] = { address = RecordAddress, flags = 4 } })[1]
            RecordAddress = MemoryAddress.address
          end
        end
        break
      end
    end
  end
  return gg.getValues({[1] = {address = MemoryAddress.address + Chain[#Chain], flags = 4}})[1]
end

so = gg.getRangesList('libil2cpp.so')[1].start
function BaseAddressD(address, value)
  local tt = {}
  tt[1] = {}
  tt[1].address = so + address
  tt[1].flags = 4
  tt[1].value = '~A MOVW R0, #'..value
  tt[2] = {}
  tt[2].address = so + address + 0x4
  tt[2].flags = 4
  tt[2].value = '~A BX LR'
  gg.setValues(tt)
end
function BaseAddressF(address, value)
  local result = {}
  result[1] = {}
  result[1].address = so + address
  result[1].flags = 4
  result[1].value = '~A MOVW R0, #' .. value
  result[2] = {}
  result[2].address = so + address + 4
  result[2].flags = 4
  result[2].value = '~A VMOV S0, R0'
  result[3] = {}
  result[3].address = so + address + 8
  result[3].flags = 4
  result[3].value = '~A VCVT.F32.S32 S0, S0'
  result[4] = {}
  result[4].address = so + address + 12
  result[4].flags = 4
  result[4].value = '~A VMOV R0, S0'
  result[5] = {}
  result[5].address = so + address + 16
  result[5].flags = 4
  result[5].value = '~A BX LR'
  gg.setValues(result)
end
function BaseAddress(deviation, hook) -- 静态基址模板
  local record = deviation
  local tt = {}
  for count = 1, #hook do
    tt[count] = {}
    tt[count].address = so + record
    tt[count].flags = 4
    tt[count].value = hook[count]
    record = record + 4
  end
  gg.setValues(tt)
end

function XsAlgorithm(range, features)
  if features[2] == nil then return end
  gg.clearResults()
  gg.setRanges(range[1])
  gg.searchNumber(features[1][1], 4)
  local record = gg.getResults(gg.getResultsCount())
  gg.clearResults()
  if record[1] == nil then return end
  for a = 2, #features do
    local storage = {}
    local hook = {}
    for b, c in ipairs(record) do
      storage[#storage+1] = {address = record[b].address + features[a][2], flags = 4}
    end
    storage = gg.getValues(storage)
    for d,e in ipairs(storage) do
      if e.value == features[a][1] then
        hook[#hook+1] = record[d]
      end
    end
    record = hook
  end
  local data = {}
  for f,g in ipairs(record) do
    data[#data+1] = {address = g.address + range[3], flags = range[2]}
  end
  return gg.getValues(data)
end

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 算法放上面

function Main()
  local menu = gg.multiChoice(MENU, nil, Bypass)
  if menu == nil then return end
  for a = 0, #MENU do
    gg.setVisible(false)
    if menu[a] == true then Menu(a) gg.clearResults() end
    gg.setVisible(false)
  end
end

while true do
  os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/game_log.txt")
  --循环防日志↑
  gg.sleep(500)
  gg.showUiButton()
  if gg.isClickedUiButton() then -- 指令防
    gg.hideUiButton()
    if gg.getListItems()[1] == nil then
      local tt = XsAlgorithm({32,4,0x54},{{1045220557},{1110704128,-4},{256,0x10},{100,0x14}})
      for a,b in ipairs(tt) do
        b.value=1
        b.freeze=true
      end
      gg.addListItems(tt)
      for c,d in ipairs(tt) do
        d.address=d.address+4
        d.value=184319
        d.freeze=true
      end
      gg.addListItems(tt)
    else
      gg.clearList()
    end
  end
  if gg.isVisible(true) then
    Main()
    gg.setVisible(false)
  end
end
