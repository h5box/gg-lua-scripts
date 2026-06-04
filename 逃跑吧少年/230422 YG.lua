gg.alert("我把高香举过头，愿我不染人间愁。8.13")


-----你干嘛

---------------------------------------------------------------------------------------------------------------

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
		for i in pairs(S_list) do			local _N = S_list[i].internalName:gsub('^.*/', '')
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
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
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
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------<

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end
																															
function getRanges()
	local ranges = {}
	local tt = {}
	local t = gg.getRangesList('^/data/*.so*$')
	for i in pairs(t) do
		if t[i].type:sub(2, 2) == 'w' or t[i].type == "r-xp" then
			if not tt[t[i].internalName] then
				tt[t[i].internalName] = {}
			end
			if not tt[t[i].internalName][t[i].state] then
				tt[t[i].internalName][t[i].state] = 0
			end
			tt[t[i].internalName][t[i].state] = tt[t[i].internalName][t[i].state] + 1
			t[i].count = tt[t[i].internalName][t[i].state]
			table.insert(ranges, t[i])
		end
	end
	return ranges
end
function Base_Address(N_So)
	local S_list = getRanges()
	local _S = {}
	for i in pairs(S_list) do
		local _N = S_list[i].internalName:gsub('^.*/', '')
		if N_So[1] == _N and N_So[2] == S_list[i].state and N_So[3] == S_list[i].count then
			_S = S_list[i]
			break
		end
	end
	return _S.start
end
function Get_Address(Address, Offset)
	local flags_bit = {[true] = 32, [false] = 4}
	local ti64 = gg.getTargetInfo().x64
	local Type = flags_bit[ti64]
	local addr = 0
	if Address then
		addr = Address + Offset[1]
		for _ = 2, #Offset do
			local pointer = gg.getValues({{address = addr, flags = Type}})
			if not ti64 then
				pointer[1].value = pointer[1].value & 0xFFFFFFFF
			end
			addr = pointer[1].value + Offset[_]
		end
	end
	return addr
end
																															
function str_table(strtable, strnum)
  if type(strtable) ~= "table" then
    return nil
  end
  local tabData = {}
  for i=1, #strtable/strnum do
    tabData[i] = {}
    local post = i*strnum
    for s=(post-(strnum-1)),post, 1 do
      table.insert(tabData[i],strtable[s])
    end
  end
  return tabData
end
function soAddress(so,memory)
  local soList = gg.getRangesList(so)
  if (#soList > 0) then
    local soTypes = {}
    for i,item in ipairs(soList) do
      if item.state == memory then
        table.insert(soTypes,"0x"..string.format("%08X",item['start']))
        table.insert(soTypes,"0x"..string.format("%08X",item['end']))
      end
    end
    return str_table(soTypes,2)
   else
    return false
  end
end
function gg.searchSoNumber(so,memory,num,type)
  local t = {}
  local valueTable = gg.getListItems()
  local so_add = soAddress(so,memory) or {}
  if (#so_add) > 0 then
    for _,s in pairs(so_add) do
      gg.clearResults()
      gg.searchNumber(num, type, false, gg.SIGN_EQUAL, s[1], s[2])
      local count = gg.getResultCount()
      local result = gg.getResults(count)
      for i,v in pairs(result) do
        t[#t+1] = {}
        t[#t].address = v.address
        t[#t].flags = v.flags
      end
    end
    gg.loadResults(t)
   else
    gg.toast("搜nm")
  end
end
																															
																															
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
																															
function JZ(Value)
add=gg.getRangesList(Value[1])[1].start+Value[2] 
	if Value[5]==true then 
		gg.addListItems({{address=add,flags=Value[3],value=Value[4],freeze=true}}) 
			if Value[6]==nil then else gg.toast(Value[6].."开启成功") end
	else
		gg.setValues({{address=add,flags=Value[3],value=Value[4]}}) 
			if Value[6]==nil then else gg.toast(Value[6].."开启成功") end
	end
end
																															
function GetValues(Value)
	 Value=gg.getValues({Value})
	Value=tostring(Value[1].value) 
	return Value
end



function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD


----------------------------------------------------------------------------------
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


--------------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------
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


---------------------------------

function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--by.鑫海
  -----------------------------------------------------------------------
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
  ----------------------------------------------------------------------------------------------------------------
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
  ---------------------------------------------------------------------------
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


  --------------------------------------------------------
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
  --------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end


  
  -----------------------------------------------------------------------------------------------
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
---------------------------------------------------------------------------------------------------------------

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end
---------------------------------------------------------------------------------------------------------------
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
---------------------------------------------------------------------------------------------------------------
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
---------------------------------------------------------------------------------------------------------------

local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		i = v['start']
		break
	end
end

---------------------------------------------------------------------------------------------------------------
function X(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name.."\n".."开启成功") else gg.toast("提示:".."\n"..Name.."\n".."开启失败",false) return false end else gg.toast("提示:".."\n"..Name.."\n".."开启失败") return false end end
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
---------------------------------------------------------------------------------------------------------------
function xqmnb(A0_470)
  gg.clearResults()
  gg.setRanges(A0_470[1].memory)
  gg.searchNumber(A0_470[3].value, A0_470[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(A0_470[2].name .. "\n开启失败")
  else
    gg.refineNumber(A0_470[3].value, A0_470[3].type)
    gg.refineNumber(A0_470[3].value, A0_470[3].type)
    gg.refineNumber(A0_470[3].value, A0_470[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(A0_470[2].name .. "\n开启失败")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      for _FORV_4_ = 1, sz do
        pdsz = true
        for _FORV_8_ = 4, #A0_470 do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[_FORV_4_].address + A0_470[_FORV_8_].offset
            pysz[1].flags = A0_470[_FORV_8_].type
            szpy = gg.getValues(pysz)
            pdpd = A0_470[_FORV_8_].lv .. ";" .. szpy[1].value
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
          szpy = sl[_FORV_4_].address
          xgxc(szpy, qmxg)
          xgjg = true
        end
      end
      if xgjg == true then
        gg.toast(A0_470[2].name .. "\n开启成功\n共修改" .. xgsl .. "\n条数据")
      else
        gg.toast(A0_470[2].name .. "\n开启失败")
      end
    end
  end
end

DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
---------------------------------------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------------------------------------
function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
---------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
---------------------------------------------------------------------------------------------------------------
--配置
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
--------------------------------------------------------------------------------------------------------------
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--------------------------------------------------------------------------------------------------------------
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
---------------------------------------------------------------------------------------------------------------
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--------------------------------------------------------------------------------------------------------------

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.toast(qmnbn.."开启失败")end end end

D=gg.TYPE_DWORD  E=gg.TYPE_DOUBLE  F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

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
local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end




function setvalue(addr, flag, value)
  gg.setValues({{address = addr, flags = flag, value = value}})
end

local function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.alert("初始化失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2,#search do
			local mtp = {}
			for w,r in ipairs(result) do
				mtp[#mtp+1] = {address = r.address + search[i][2], flags = search[i][3]}
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w,r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		for i = 1, #result do
			result[i] = result[i].address
		end
		return result
	end
end


 
 
 
 
 
 
 function Main0()
SN = gg.choice({    
	 "防闪防封",
	 "逃生稳定功能",
	 "追捕稳定功能",
	 "大乱斗功能",
	 "皮肤",
	 "其他功能",
	 "武器功能",
	 "特殊功能",
	 "音乐功能",
	 "退出脚本",
}, 0, "YG顶尖")
if SN==1 then
	 NB()
end
if SN==2 then
	 GGB()
end
if SN==3 then
	 YG1()
end
if SN==4 then
	 YG2()
end

if SN==5 then
	 YG3()
end
if SN==6 then
	 YG4()
end
if SN==7 then
	 YG5()
end
if SN==8 then
	 YG6()
end
if SN==9 then
	 Main()
end
if SN==10 then
	 os.exit()
end
FX1=0
end

 
 
 
 
 





function NB()
menu2 = gg.multiChoice({
	"防闪",
	"A防封[大厅开]",
	"防检测[大厅开]",
	"防封[大厅开]",
	"防",
    "防追封[退出游戏]",
    "风影防",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu2 == nil then else
if menu2[1] == true then a1() end
if menu2[2] == true then a2() end
if menu2[3] == true then a3() end
if menu2[4] == true then a4() end
if menu2[5] == true then a5() end
if menu2[6] == true then a6() end
if menu2[7] == true then a7() end
if menu2[8] == true then Main0() end
end
GLWW=-1
end
 
function a1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
	 end
 
function a2()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("535146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启13%成功")
	 gg.clearResults()
	 
	 gg.clearResults()--A内存防
	 gg.setRanges(32)
	 gg.searchNumber("672568", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启43%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("312228", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启53%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("656220", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启67%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启79%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("311138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启86%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("147876", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启95%")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("731622", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启100%成功奔放")
	 gg.clearResults()
end

 function a3()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("防检测")
	 gg.clearResults()
end

 
function a4()
	 gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,670,527,267", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("11253", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1,322,254,336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,297,307,992", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1001)
gg.editAll("0", gg.TYPE_DWORD)	
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,297,307,992", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("开启成功")
end

 
 function a5()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1572864;6291456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1572864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1572864;6291456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6291456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("内部防")
gg.clearResults()
end

 function a6()
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
os.remove("/storage/emulated/0/android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/android/data/com.bairimeng.dmmdzz.m4399")
gg.toast("获取成功,已删除追封文件")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg = gg.getResults(100)
sl = gg.getResultCount()
if 100 < sl then
sl = 100
end
for _FORV_3_ = 1, sl do
dzy = jg[_FORV_3_].address
gg.addListItems({
[1] = {
address = dzy,
flags = gg.TYPE_DWORD,
freeze = true,
value = 0
}
})
end
gg.toast("防追封成功")
end
 
 
 
function a7()
qmnb = {
{["memory"] = 16384},
{["name"] = "防封1"},
{["value"] = 1745421313, ["type"] = 4},
{["lv"] = 1745421313,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -1745421313,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封2"},
{["value"] = 1929409140, ["type"] = 4},
{["lv"] = 1929409140,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -1929409140,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封3"},
{["value"] = 21530208, ["type"] = 4},
{["lv"] = 21530208,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -21530208,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封4"},
{["value"] = 7562610, ["type"] = 4},
{["lv"] = 7562610,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -7562610,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封5"},
{["value"] = 696123755, ["type"] = 4},
{["lv"] = 696123755,["offset"] =0, ["type"] = 4},
}
qmxg = {
{["value"] = -696123755,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end
 
 
 
 
 
 
 
 
 
function GGB()
menu3 = gg.multiChoice({
	"3.8倍移速[半稳]",
	"开锁加速",
	"高跳",
	"概率开锁",
	"穿墙[半稳]",
	"无视夹子",
	"移动开物[大厅开半稳]",
	"医疗箱范围",
	"倒地复活[谨慎用]",
	"全角色技能免费无CD[谨慎用]",
	"8v2赚米[谨慎用]",
	"明透[稳]",
	"A内存移动开物",
	"不死捐钱",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu3 == nil then else
if menu3[1] == true then b1() end
if menu3[2] == true then b2() end
if menu3[3] == true then b3() end
if menu3[4] == true then b4() end
if menu3[5] == true then b5() end
if menu3[6] == true then b6() end
if menu3[7] == true then b7() end
if menu3[8] == true then b8() end
if menu3[9] == true then b9() end
if menu3[10] == true then b10() end
if menu3[11] == true then b11() end
if menu3[12] == true then b12() end
if menu3[13] == true then b13() end
if menu3[14] == true then b14() end
if menu3[15] == true then Main0() end
end
GLWW=-1
end

 function b1()
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速[开启]"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function b2()
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
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

function b3()
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.900000095367432,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function b4()
qmnb = {
{["memory"] = 32},
{["name"] = "概率"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function b5()
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
end
 
function b6()
qmnb = {
{["memory"] = 32},
{["name"] = "无视夹子"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end
 


function b7()
fastsearch
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})
end

function b8()
qmnb = {
 {["memory"] = 32},
{["name"] = "额"},--医疗包范围
      {["value"] = 1128792064, ["type"] = 32},
      {["lv"] = 1067030938, ["offset"] = 8, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 1082130432, ["offset"] = 8, ["type"] = 4},
    }
    xqmnb(qmnb)
  end
  
 function b9()
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
 
 
 function b10()--角色技能免费
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
 
 
function b11()
  fastsearch({
     {4489188110532608000, 32, 32},
     {256, 20, 4},
     {100, 24, 4},
   }, 
   {{1, 88, 4, true},
    {184319,92,4,true},},"8v2开锁无限刷钱")
end

 
 
 
function b12()--透视
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

function b13()--移动开物
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
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
{["name"] = "概率"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "无视夹子"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 0.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 25.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
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
{["value"] = 0.0,["offset"] =144, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)

end



function b14()
fastsearch({{37,4,32},{-1, 8, 4},{0, 16, 4},{-1, 24, 4},{37, 672, 4},}, {{1, 16, 4,true}})
gg.clearResults()
end





 function YG1()
menu4 = gg.multiChoice({
	"奥博一套",
	"狮子一套",
	"追捕无限夹子1[大厅开娱乐]",
	"蹦蹦枪范围",
	"三倍移速",
	"迫击炮范围[半稳]",
	"手雷范围",
	"迫击炮范围加降落速度",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu4 == nil then else
if menu4[1] == true then c1() end
if menu4[2] == true then c2() end
if menu4[3] == true then c3() end
if menu4[4] == true then c4() end
if menu4[5] == true then c5() end
if menu4[6] == true then c6() end
if menu4[7] == true then c7() end
if menu4[8] == true then c8() end
if menu4[9] == true then Main0() end
end
GLWW=-1
end


function c1()
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

qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = 1,["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end 

function c2()--狮子
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子范围+伤害＋免费"},
{["value"] = 1.850000023841858, ["type"] = 16},
{["lv"] = 0.6200000047683716,["offset"] =-4, ["type"] = 16},
{["lv"] = 0.5,["offset"] =-8, ["type"] = 16},
{["lv"] = 0.10000000149011612,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-24, ["type"] = 16},
{["value"] = 1,["offset"] =-0x1C, ["type"] = 16},
{["value"] = 0,["offset"] =-0x80, ["type"] = 4},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 0.30000001192092896,["offset"] =-16, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0,["offset"] =-20, ["type"] = 16},
{["value"] = 1.0,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function c3()--追捕无限夹子第一步[大厅开]
gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110", gg.TYPE_DWORD)
    gg.toast("已将雇佣兵天赋变为自制夹子")
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("180;150;120;60::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("180;150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.toast("已将自制夹子CD变为1秒")
    gg.clearResults()
  end
  
	 function c4()
	xxs({{false,0.05999999865889549,4,16,nil,nil},{0.009999999776482582,16,16}},{{10,0,16}},16,32,"蹦蹦枪范围")
end



function c5()--3.6移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.6倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function c6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function c7()
 qmnb = {
      {["memory"] = 32},
      {["name"] = "手雷"},--手雷范围
      {["value"] = 1107558400, ["type"] = 32},
      {["lv"] = 1045220557, ["offset"] = -116, ["type"] = 4},
      {["lv"] = 1075838976, ["offset"] = -120, ["type"] = 4},
      {["lv"] = 1073741824, ["offset"] = -124, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 4, ["offset"] = -124, ["type"] = 16},
      {["value"] = 50, ["offset"] = 0, ["type"] = 16},
    }
    xqmnb(qmnb)
    end

function c8()
local LL=gg.prompt({"↓迫击炮范围↓","↓迫击炮降落速度↓"},{[1]="3" },{[2]="0.5"})
fastsearch({{1000.0,16,32},{2.0,8,16},{1.0,-12,16},{2.5,12,16},{0.20000000298023224,16,16},{20.0,-4,16},{0.8500000238418579,-8,16}},{{LL[1],8,16,true},{LL[2],-12,16,true}}) 
end


function YG2()
menu5 = gg.multiChoice({
	"乱斗锁道具",
	"道具无CD",
	"超级锁弹夹",
	"透",
	"箱子大量物资",
	"封号针[局内]",
	"医疗箱改针[局内开]",
	"持续时间1",
    "持续时间[通用]",
    "无敌buff时间加长",
    "疾跑改无敌buff[虚体]",
    "道具卡美化[不要开！]",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu5 == nil then else
if menu5[1] == true then d1() end
if menu5[2] == true then d2() end
if menu5[3] == true then d3() end
if menu5[4] == true then d4() end
if menu5[5] == true then d5() end
if menu5[6] == true then d6() end
if menu5[7] == true then d7() end
if menu5[8] == true then d8() end
if menu5[9] == true then d9() end
if menu5[10] == true then d10() end
if menu5[11] == true then d11() end
if menu5[12] == true then d12() end
if menu5[13] == true then Main0() end
end
GLWW=-1
end

function d1()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'乱斗锁卡开')
end

 function d2()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},},'道具无冷开')
end

function d3()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end




function d4()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70560},},'暗黑透视开')
end


function d5()
fastsearch({{256, 4, 32},{1045220557, 8, 4},{1028443341, 68, 4},{0, 92 , 4},{1065353216, 132, 4},}, {{0, 92, 4,true}})
end




function d6()
   fastsearch({
     {-3.064652987708566E-19, 16, 32},
     {0.11999999731779099, 8, 16},
   }, {
     {-20, 12, 16, false},
   },"针攻速")
end


function d7()
editData(
{
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "改针"},
{["value"] = 2303, ["type"] = D},
{["lv"] = -256,["offset"] =-4, ["type"] = D},
{["lv"] = 1073741824,["offset"] =4, ["type"] = D},
},
{
{["value"] =179456,["offset"] =-8, ["type"] = D,["freeze"] = false},
}
)
gg.clearResults()
end



function d8()
fastsearch({
     {1.0141204801825835E31, 16, 32},
     {0.4000000059604645, 8, 16},
   }, {
     {100, 4, 16, false},
   },"针持续时间")
end

function d9()
fastsearch({
     {1.0141204801825835E31, 16, 32},
     {0.4000000059604645, 8, 16},
   }, {
     {100, 4, 16, false},
   },"针持续时间")
end

 function d10()
fastsearch({{547,4,32},{5, 0x4, 16}},{{2100000000, 0x4, 16}})
end

 function d10()
xtnb({{false,300,0,4,nil,nil},{65536,76,4},{-256,136,4},{255,140,4}},{{999,48,16,false}},4,32,"输入功能名称")
end



function d11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("开启成功❤️")
	 gg.clearResults()
end



function d12()
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


function YG3()
menu6 = gg.multiChoice({
	"道具皮肤",
	"角色皮肤",
	"失忆者招手改星耀出场",
	"失忆者招手改小学妹星耀出场",
	"游戏机",
	"玩滑板",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu6 == nil then else
if menu6[1] == true then e1() end
if menu6[2] == true then e2() end
if menu6[3] == true then e3() end
if menu6[4] == true then e4() end
if menu6[5] == true then e5() end
if menu6[6] == true then e6() end
if menu6[7] == true then Main0() end
end
GLWW=-1
end

function e1()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B5141C},},'道具全皮开')
end



function e2()--角色皮肤
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D0},},'角色全皮开')
end

function e3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961351", gg.TYPE_DWORD)
	 gg.toast("我可不是在玩，我是在创造艺术")
	 gg.clearResults()
end


function e4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961191", gg.TYPE_DWORD)
	 gg.toast("妖娆的失忆者")
	 gg.clearResults()
end

function e5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961731", gg.TYPE_DWORD)
	 gg.toast("变成游戏机了")
	 gg.clearResults()
end

function e6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("960001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961351", gg.TYPE_DWORD)
	 gg.toast("玩滑板")
	 gg.clearResults()
end

function YG4()
menu7 = gg.multiChoice({
	"幻风标范围",
	"跳高改buff",
	"疾跑改无敌[稳定]",
	"命使者锁抱摔[局内]",
	"抱摔距离伤害[局内]",
	"无后座",
	"霸天斧",
	"无视追捕护盾",
	"改文字",
	"跳高变身",
	"沧龙功能",
	"战斗少女一套",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu7 == nil then else
if menu7[1] == true then f1() end
if menu7[2] == true then f2() end
if menu7[3] == true then f3() end
if menu7[4] == true then f4() end
if menu7[5] == true then f5() end
if menu7[6] == true then f6() end
if menu7[7] == true then f7() end
if menu7[8] == true then f8() end
if menu7[9] == true then f9() end
if menu7[10] == true then f10() end
if menu7[11] == true then f11() end
if menu7[12] == true then f12() end
if menu7[13] == true then Main0() end
end
GLWW=-1
end



function f1()
qmnb = {
{["memory"] = 32},
{["name"] = "唤风范围[1]"},
{["value"] = 1.25, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] =20,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "唤风范围[2]"},
{["value"] = 0.75, ["type"] = 16},
{["lv"] = 1.5,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] =20,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function f2()
qmnb = {
{["memory"] = 32},
{["name"] = "跳高buff改"},
{["value"] = -1410747465, ["type"] = 4},
{["lv"] = 408, ["offset"] = 4, ["type"] = 4},
{["lv"] = -256, ["offset"] = 16, ["type"] = 4},
{["lv"] = 255, ["offset"] = 20, ["type"] = 4},
{["lv"] = 256, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 27392, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end
    
function f3()
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

function f4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.80259693e-45;20.0;7.00649232e-44;-208,624.796875::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.80259693e-45;20.0;7.00649232e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.40129846e-45;0.10000000149;0.0}})
	 end
	 gg.toast("抱摔免费+冷却+定抱摔技能［蓝色开］")
	 gg.clearResults()
end

function f5()
qmnb = {
{["memory"] = 32},
{["name"] = "抱摔高度+距离+伤害"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.0,["offset"] =-100, ["type"] = 16},
{["value"] = 80.0,["offset"] =-96, ["type"] = 16},
{["value"] = 1.0,["offset"] =-84, ["type"] = 16},
}
xqmnb(qmnb)
end


function f6()
fastsearch({{3.5617442956674625E-36, 16, 16384}, {0.0010000000474974513, -4, 16}, {2.646980168980223E-23, 68, 16}}, {{1.0, -4, 16, false}})
end

function f7()
fastsearch
({{6.25,16,32},{-1.5,-8,16},{1.5,4,16},{2.25,8,16},{0.5,12,16},{1.5,-12,16},{584,-24,4},{583,-48,4}},
{{99,0,16},
{300,-48,4},
{300,-24,4},
{10,-4,16,false}})
end




function f8()
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


function f9()
a=gg.prompt({"文字","改之后的文字"},{},{"text","text"})
gg.setRanges(32)
gg.searchNumber(";"..a[1], 2, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(";"..a[2],2)
end


function f10()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) xh=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""})if xh==nil then sfa1(print("你点击了取消")) end
nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{xh[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end




function f11()
    qmnb = {
      {["memory"] = 32},
      {["name"] = "开启成功"},--苍龙
      {["value"] = 500002, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 70500015, ["offset"] = 0, ["type"] = 4},
    }
    xqmnb(qmnb)
    
    qmnb = {
      {["memory"] = 32},
      {["name"] = "开启成功"},--苍龙范围伤害
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
      {["name"] = "开启成功"},--苍龙冷却
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
    
    
    
    
 function f12()
    qmnb = {
      {["memory"] = 32},
      {["name"] = "YG"},
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
  qmnb = {
      {["memory"] = 32},
      {["name"] = "YG"},
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
  
    
    
    
    
    
    
    

function YG5()
menu8 = gg.multiChoice({
	"全武器无间隔",
	"腕炮全屏",
	"唤",
	"引力场范围",
	"武器爆射[拉闸]",
	"超级盾卫",
	"盾卫连发",
	"盾卫普攻",
	"盾卫主动1",
	"盾卫主动1推动长度",
	"盾卫主动2",
	"改武器",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu8 == nil then else
if menu8[1] == true then g1() end
if menu8[2] == true then g2() end
if menu8[3] == true then g3() end
if menu8[4] == true then g4() end
if menu8[5] == true then g5() end
if menu8[6] == true then g6() end
if menu8[7] == true then g7() end
if menu8[8] == true then g8() end
if menu8[9] == true then g9() end
if menu8[10] == true then g10() end
if menu8[11] == true then g11() end
if menu8[12] == true then g12() end
if menu8[13] == true then Main0() end
end
GLWW=-1
end

function g1()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x24F418, 0x9C, 0xA8, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end





function g2()
   fastsearch({
     {3.923635700109488E-43, 16, 32},
     {5.0, -88, 16},
   }, {
     {99999, -84, 16, false},
   },"腕炮全屏")
end

function g3()
menu1 = gg.multiChoice({	
	 "唤风镖全屏[自调]",
	 "返回主页",
}, nil, os.date("武器范围"))
if menu1 == nil then else
if menu1[1] == true then i() end
if menu1[2] == true then YG5() end
end
GLWW=-1
end

function i()
local fy=gg.prompt({"焕风镖范围[自调]"}, {[1] = 10}, {[1] = "text"})
if fy==nil then end
qmnb = {
{["memory"] = 32},
{["name"] = "唤风镖范围[自调]"},
{["value"] = 1.25, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function g4()
fastsearch({
{500,16,32},
{20,-0x4,16},
{2.5,0x8,16},
{2.5,0xC,16}
},
{{999,0x8,16,false},{999,0xC,16,false}})
end


function g5()--武器爆射
qmnb = {
{["memory"] = 32},
{["name"] = "武器爆射[开]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 10000, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end


function g6()
local xt=gg.prompt({"盾卫连发"}, {[1] = 100})
xtnb({{false,40.0,0,16,nil,nil},{1.2000000476837158,12,16},{10.0,16,16},{0.699999988079071,20,16},{0.699999988079071,24,16}},{{xt[1],8,4,false}},16,32,"爱你")
xtnb({{false,10.0,12,16,nil,nil},{1.2000000476837158,16,16},{1.401298464324817E-45,44,16}},{{0,160,16,true}},16,32,"输入功能名称")
xtnb({{false,6.0,108,16,nil,nil},{10.0,112,16},{0.800000011920929,124,16},{0.5,128,16},{1.5,132,16},{12.0,136,16}},{{0,0,16,false},{0,4,16,false},{50,116,16,false},{0.01,120,16,false}},16,32,"爱你")
local xt=gg.prompt({"盾卫"}, {[1] = 20})
xtnb({{false,0.20000000298023224,0,16,nil,nil},{2147483647,72,4},{6.0,92,16},{3.5873240686715317E-43,132,16},{0.36000001430511475,232,16},{0.36000001430511475,236,16},{0.4000000059604645,240,16}},{{xt[1],88,16,false},{xt[1],96,16,false}},16,32,"爱你")
    end

function g7()
local xt=gg.prompt({"盾卫连发"}, {[1] = 100})
xtnb({{false,40.0,0,16,nil,nil},{1.2000000476837158,12,16},{10.0,16,16},{0.699999988079071,20,16},{0.699999988079071,24,16}},{{xt[1],8,4,false}},16,32,"爱你")
      end
   
   
   
   
   
   
function g8()
xtnb({{false,10.0,4,16,nil,nil},{1.2000000476837158,8,16},{1.401298464324817E-45,48,16}},{{0,0,16,true},{0,40,16,true},{0,44,16,true},{0,164,16,true}},16,32,"爱你")
   end


function g9()
xtnb({{false,6.0,108,16,nil,nil},{10.0,112,16},{0.800000011920929,124,16},{0.5,128,16},{1.5,132,16},{12.0,136,16}},{{0,0,16,false},{0,4,16,false},{10,116,16,false},{0.01,120,16,false}},16,32,"爱你")
   end

function g10()
local xt=gg.prompt({"盾卫"}, {[1] = 20})
xtnb({{false,0.20000000298023224,0,16,nil,nil},{2147483647,72,4},{6.0,92,16},{3.5873240686715317E-43,132,16},{0.36000001430511475,232,16},{0.36000001430511475,236,16},{0.4000000059604645,240,16}},{{xt[1],88,16,false},{xt[1],96,16,false}},16,32,"爱你")
end


function g11()
xtnb({{false,0.30000001192092896,104,16,nil,nil},{0.75,108,16},{1.0,112,16}},{{0,0,16,false},{0,4,16,false},{0,116,16,false}},16,32,"爱你")
end

function g12()
local xt=gg.prompt({"火箭筒修改武器\n火箭筒:一级100  二级101\n迫机炮:一级110  二级111  三级112\n冲锋枪:一级130  二级131  三级132\n能亮剑:一级140  二级141  三级142\n蹦蹦枪:一级150  二级151  三级152\n散弹枪:一级190  二级191  三级192\n幻锋镖:一级200  二级201  三级202\n霸天斧:一级210  二级211  三级212\n治疗手枪:10100  电球枪:10160  滋水枪:11130\n变形金刚武器:90100  90200  90300"}, {[1] = 110})
xtnb({{false,808595045,0,4,nil,nil},{64048,4,4},{256,8,4}},{{xt[1]*256,12,4,false}},4,32,"修改武器")
end







function YG6()
menu9 = gg.multiChoice({
	"疾跑上道具[大厅]",
	"六个星耀动作",
	"逃生秒赢[30秒之后再开]",
	"追捕秒赢",
	"开锁加速额😓",
	"完美开锁",
	"腕炮子弹",
	"改钻石",
	"DMM改雇佣兵动作",
	"变身攻击",
	"人物爬墙",
	"反弹伤害",
	"追捕开锁",
	"制裁队友",
	"观战控制别人",
	"道具卡等级",
	"关闭杀队友",
	"返回主页",
}, nil, os.date("作者：YG"))
if menu9 == nil then else
if menu9[1] == true then h1() end
if menu9[2] == true then h2() end
if menu9[3] == true then h3() end
if menu9[4] == true then h4() end
if menu9[5] == true then h5() end
if menu9[6] == true then h6() end
if menu9[7] == true then h7() end
if menu9[8] == true then h8() end
if menu9[9] == true then h9() end
if menu9[10] == true then h10() end
if menu9[11] == true then h11() end
if menu9[12] == true then h12() end
if menu9[13] == true then h13() end
if menu9[14] == true then h14() end
if menu9[15] == true then h15() end
if menu9[16] == true then h16() end
if menu9[17] == true then h17() end
if menu9[18] == true then Main0() end
end
GLWW=-1
end

function h1()
local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{20528,32,4},
{51200,40,4}
},{
{SA[1],-12,4,false}
}) end




function h2()--自动开锁
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
{961191,16,4},
{961351,20,4,false}})
end

	
	
function h3()--逃生秒赢
fastsearch({{100.0,16,32},{0.30000001192092896,4,16},}, {{0, -4, 16, false}})
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})
end





function h4()--追捕秒赢
nc_offset(getso("libil2cpp.so"),{{-476053504,0xF7ED10},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xF7ED14},})
nc_offset(getso("libil2cpp.so"),{{-482344940,0xF7E510},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xF7E514},})
nc_offset(getso("libil2cpp.so"),{{-476053504,0xF7C410},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xF7C414},})
nc_offset(getso("libil2cpp.so"),{{-482343961,0xD4DB48},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xD4CB4C},})
nc_offset(getso("libil2cpp.so"),{{-476052411,0xD4CC14},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xD4CC18},})
nc_offset(getso("libil2cpp.so"),{{-482081950,0xD5D884},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xD5D888},})
nc_offset(getso("libil2cpp.so"),{{-476053484,0xF7EAC0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xF7EAC4},})
nc_offset(getso("libil2cpp.so"),{{-476053454,0xF7F194},})
nc_offset(getso("libil2cpp.so"),{{-516948194,0xF7F194},})
end
	
	
	
	





function h5()--2倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "9999倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function h6()--完美开锁
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

function h7()
qmnb = {
      {["memory"] = 32},
      {["name"] = "腕炮子弹"},
      {["value"] = 13997441024, ["type"] = 32},
      {["lv"] = 3, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 1066192077, ["offset"] = 12, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 80, ["offset"] = 4, ["type"] = 4},--子弹
      {["value"] = 999, ["offset"] = 8, ["type"] = 4},--连发
      {["value"] = 1.2, ["offset"] = 20, ["type"] = 16},--高度
      {["value"] = 10, ["offset"] = 24, ["type"] = 16},--高度
    }
    xqmnb(qmnb)
    end

function h8()
local kj=gg.prompt({'银币','点券','钻石'})
if kj==nil then else
if kj[1]=='' or kj[2]=='' or kj [3]then end
TG(32,{{900001,0},{910001,4},{1,-8},},{{kj[1],-12,false},{kj[3],40,false},{kj[2],44,false},},4,"已修改为"..kj[1].."银币"..kj[2].."点券"..kj[3].."钻石")
end
end


function h9()
gg.setRanges(32)
	 gg.searchNumber("950001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("961361", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h10()
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end


function h11()
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
end


function h12()
fastsearch
({
{-128.00001525879,16,16384},
{-382908368,1260,4}
},
{{-482082800,1260,4},
{-516948194,1264,4,false}})
end

function h13()
fastsearch
({
{-0.00195311918,16,16384},
{-382908368,-548,4},
{-494030840,-544,4}
},
{
{-516948194,-548,4,false}})
end



function h14()
fastsearch--杀队友
({
{104,4,16384},
{104,4,4},
{-382908368,-1564,4}
},
{
{-516948194,-1564,4,false}})
end

function h15()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("78,884,133;78,454,692;78,454,672;-382,908,176;-494,030,832;-498,216,952;-442,542,840:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382,908,176", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-516,948,194", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h16()
local xt=gg.prompt({"道具等级"}, {[1] = 13})
xtnb({{false,502000,0,4,nil,nil},{501900,4,4}},{{xt[1],168,4,false},{xt[1],172,4,false},{xt[1],176,4,false},{xt[1],180,4,false},{xt[1],184,4,false},{xt[1],188,4,false},{xt[1],192,4,false},{xt[1],196,4,false},{xt[1],200,4,false},{xt[1],204,4,false},{xt[1],208,4,false},{xt[1],212,4,false},{xt[1],216,4,false},{xt[1],220,4,false},{xt[1],224,4,false},{xt[1],228,4,false},{xt[1],232,4,false},{xt[1],236,4,false},{xt[1],240,4,false},{xt[1],244,4,false},{xt[1],248,4,false},{xt[1],252,4,false},{xt[1],256,4,false},{xt[1],260,4,false},{xt[1],264,4,false},{xt[1],268,4,false},{xt[1],272,4,false},{xt[1],276,4,false},{xt[1],280,4,false},{xt[1],284,4,false},{xt[1],288,4,false},{xt[1],292,4,false},{xt[1],296,4,false},{xt[1],300,4,false},{xt[1],304,4,false},{xt[1],308,4,false},{xt[1],312,4,false},{xt[1],316,4,false},{xt[1],320,4,false},{xt[1],324,4,false},{xt[1],328,4,false}},4,32,"全道具改等级")
end

function h17()
fastsearch--杀队友
({
{104,4,16384},
{104,4,4},
{-516948194,-1564,4}
},
{
{-382908368,-1564,4,false}})
end 



local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub('%lua$', '')..'cfg'
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"","10"}
end
end
bei()
------
--搜索歌曲
function start(name,sl)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end
-----
--歌词
function Lyric(gid)
geci=gg.makeRequest("http://music.163.com/api/song/media?id="..gid).content
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%]", "")
geci=zjson(geci)
return geci.lyric
end
--播放音乐
function play(id,name)
gg.toast("正在播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
gg.toast("正在停止播放...")
for i=1,100 do
gg.playMusic("stop")
end
gg.toast("播放已停止")
end
----
function Play(gqlb,idb)
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放音乐","查看歌词"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end
if sn == 2 then
gc=Lyric(idb[SN])
gg.alert(gc)
end
end
XGCK=-1
end

function zjson(jsonr)
local str = jsonr
-- 匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
    if string.find(str, v) then
        str = string.gsub(str, v, string.gsub(v, "\"", ""))
    end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
--print(idb)
end


--主页
function Main()
XW=gg.choice({
"搜索歌曲",
"歌曲列表",
"播放音乐",
"查看歌词",
"停止播放",
"播放热歌",
"退出脚本"
},nil,"用音乐函数修改器")
if XW == nil then end
if XW == 1 then Main1() end
if XW == 2 then Play(gqlb,idb) end
if XW == 3 then play(idb[SN],gqlb[SN]) end
if XW == 4 then
if idb[1]=="1010" then gg.alert("请先搜索歌曲")else
 gc=Lyric(idb[SN]);gg.alert(gc) end end
if XW == 5 then stop() end
if XW == 6 then YY998() end
if XW == 7 then os.exit() end
XGCK=-1
end

---
function Main1()
search = gg.prompt({
"输入要搜索的歌曲",
"设置显示数量(数字)",
},g.sel,{
"text",
"text",
})
if search == nil then Main() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
--print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end


function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 

















print("爱你哟❤️❤️")
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