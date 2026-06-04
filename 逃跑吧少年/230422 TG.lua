
gg.alert("TG\n8.14.1『360』直装\n发现脚本有bug请反馈TG\n已修复全部功能，更新火力功能\n角色技能\n独家稳定xa防+削弱检测\nTG官方Q群：641878639","知道了")
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
----------------------------------------------------------------------------------------------------
function ad(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("没有值可修改")
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
		gg.toast("修改成功，共修改" .. (#tb[1] + #tb[2]) .. "个值")
		else
			gg.toast("没有值可修改")
		end
	end
end
---------
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
----------------------------------------------------------------------------------------------------------
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
---
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
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
----------------------------------------------------------------------------------------------
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
end----------------------------------------------------------------------------------
---------------
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
---------------------------------------------------------------------------------------------------
function zn(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
----------
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
-------------------------------------------------------------------------------------------------------------<

function Main()
menu = gg.choice({
"8.14.1防闪",--1
"一键注入xa防[登录界面开]",--2
"360直装功能",--3
"自调功能",--4
"医疗箱改物『自调』",--5
"火箭筒改武器+火力功能",--6
"TG独家防+削弱检测",--7
"角色技能",--8
"音乐专区",--9
"退出脚本",--10
}, nil, os.date("360直装功能"))
if menu == 1 then a1() end
if menu == 2 then a2() end
if menu == 3 then a3() end
if menu == 4 then a4() end
if menu == 5 then a5() end
if menu == 6 then a6() end
if menu == 7 then a7() end
if menu == 8 then a8() end
if menu == 9 then a9() end
if menu == 10 then os.exit() end
XGCK=-1
end
function a1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("注入成功")
	 gg.clearResults()
	 end
function a2()--防.txt
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
os.remove("/storage/emulated/11/Android/data/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/11/Android/data/com.bairimeng.dmmdzz.qihoo")
     gg.toast("获取成功,已删除追封文件")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
	 gg.searchNumber("65536", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg["TYPE_DWORD"],freeze = true,value = 0}})
	 end
	 gg.toast("防追封开启成功")
gg.setRanges(262207)
gg.searchNumber('4554', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('4554',4)
gg.toast('防检测')
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99999)
gg.editAll("防举报", gg.TYPE_BYTE)
gg.toast("开启成功")
gg.clearResults()
end

function a3()
menu1 = gg.multiChoice({
"解锁角色",--1
"解锁模式",--2
"道具卡皮肤",--3
"角色皮肤",--4
"解锁道具卡",--5
"道具卡满级",--6
"老版本大厅",--7
"一键开启逃生上分功能",--8
"人物天线「大厅开」",--9
"强制队友准备",--10
"队友头上有箭头",--11
"倒地复活",--12
"路过开物［配合移动开物］",--13
"人物失重",--14
"️返回主页️",--15
}, nil, os.date("直装功能"))
gg.toast("TG稳定功能，感谢您的支持")
if menu1 == nil then else
if menu1[1] == true then nm1() end
if menu1[2] == true then nm2() end
if menu1[3] == true then nm3() end
if menu1[4] == true then nm4() end
if menu1[5] == true then nm5() end
if menu1[6] == true then nm6() end
if menu1[7] == true then nm7() end
if menu1[8] == true then nm8() end
if menu1[9] == true then nm9() end
if menu1[10] == true then nm10() end
if menu1[11] == true then nm11() end
if menu1[12] == true then nm12() end
if menu1[13] == true then nm13() end
if menu1[14] == true then nm14() end
if menu1[15] == true then nm15() end
end
GLWW=-1
end
function nm1()--解锁角色
xb=gg.alert("解锁角色","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA5158},},'解锁角色开')--开
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA5158},},'解锁角色关')--关
end
end
function nm2()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end     
function nm3()--道具卡皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b5141c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51420},})
end
function nm4()--角色皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end
function nm5()--解锁道具卡
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},})
end
function nm6()--道具卡满级
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d630},})
end
function nm7()--老版本大厅
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xd74284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd74288},})
end
function nm8()--一键注入
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'开启成功')

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

fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")
   
fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")

qmnb = {
{["memory"] = 32},
{["name"] = "5倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 5,["offset"] =0, ["type"] = 16},
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
end
function nm9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149011612',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.10000000149011612',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(5000)
gg.editAll('50',gg.TYPE_FLOAT)
	gg.toast("人物天线")
end
function nm10()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xd74284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd74288},})
end
function nm11()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd5cdbc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd5cdd0},})
end
function nm12()
   fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end

function nm13()--路过开物
fastsearch({{1147207680,4,32},{20.0,-8,16}},{{0.1,8,16,false},{0,-4,16,false}})
end

function nm14()--人物失重
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.00999999978',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.00999999978',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10000)
gg.editAll('3',gg.TYPE_FLOAT)
end






function nm15()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end









function a4()
menu1 = gg.multiChoice({
"开锁『自调』",--1
"移速『自调』",--2
"高跳『自调』",--3
"️返回主页️",--4
}, nil, os.date("自调功能"))
if menu1 == nil then else
if menu1[1] == true then zt1() end
if menu1[2] == true then zt2() end
if menu1[3] == true then zt3() end
if menu1[4] == true then zt4() end
end
GLWW=-1
end
function zt1()
local tg=gg.prompt({"开锁[自调]"}, {[1] = 3}, {[1] = "text"})
if tg==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = tg[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function zt2()
local tg=gg.prompt({"移速[自调]"}, {[1] = 3.8}, {[1] = "text"})
if tg==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = tg[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function zt3()
local tg=gg.prompt({"高跳『自调』"}, {[1] = 6.8}, {[1] = "text"})
if tg==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = tg[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end
function a5()
menu1 = gg.multiChoice({
"医疗箱『自调』",--1
"返回大厅",--2
}, nil,os.date("医疗箱改物"))
if menu1 == nil then else
if menu1[1] == true then gb1() end
if menu1[2] == true then gb2() end
end
GLWW=-1
end

function gb1()
local xt=gg.prompt({"永久幽灵1014 车轮1018 侦查眼300 针179456 生命护盾128000 飞爪205056 酒桶204800 狗179200 传送门179200  自走球230400 毒液230656 阻挡箱256000 引力场77056 治疗球256768 导弹257536 气垫257280 地雷257792 时光机258048 吼吼号260096 小飞机258304 医疗箱102656 迪迦50001 赛罗50002 泽塔50003 90001擎天柱 90002大黄蜂 90003热破 90004威震天 90005声波 90006蜘蛛"}, {[1] = 1014})
zn({{false,2303,0,4,nil,nil},{-256,-4,4},{1073741824,4,4}},{{xt[1]*256,-8,4,false}},4,32,"")
end


function gb2()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end

function zt4()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end

function wq7()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end

function dj3()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end

function js9()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end

function yy6()
print("稳定直装功能，感谢您的支持")
lw=1
Main()
end




function a6()
menu1 = gg.multiChoice({
"火箭筒改武器",
"火力全开",
"局内武器超大后坐力",
"全星耀动作",
"杀队友",
"无间隔(半稳)",
"返回主页",
}, nil,os.date("火力全开"))
if menu1 == nil then else
if menu1[1] == true then wq1() end
if menu1[2] == true then wq2() end
if menu1[3] == true then wq3() end
if menu1[4] == true then wq4() end
if menu1[5] == true then wq5() end
if menu1[6] == true then wq6() end
if menu1[7] == true then wq7() end
end
GLWW=-1
end

function wq1()
local xh=gg.prompt({[1]="修改武器\n火箭筒:一级100  二级101\n迫机炮:一级110  二级111  三级112\n冲锋枪:一级130  二级131  三级132\n能亮剑:一级140  二级141  三级142\n蹦蹦枪:一级150  二级151  三级152\n散弹枪:一级190  二级191  三级192\n幻锋镖:一级200  二级201  三级202\n霸天斧:一级210  二级211  三级212\n10160:能量球\n11130:滋水枪\n10150:回旋镖\n10100:回血枪\n12130:自动手枪n变形金刚武器:90100  90200  90300"}, {[1] = 110})
ad({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{xh[1]*256,13,4}})
  end

function wq2()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})--锁子弹
gg.clearResults()--火力全开
	gg.setRanges(16384)
	gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll("1", gg.TYPE_FLOAT)
	gg.toast("jb")
	gg.clearResults()
end

function wq3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.30000001192',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.30000001192',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1500)
gg.editAll('5',gg.TYPE_FLOAT)
end

function wq4()
fastsearch--全星耀动作
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
{{960761,0,4},
{960431,4,4},
{961721,8,4},
{961361,12,4},
{961191,16,4},
{961351,20,4,false}})
end

function wq5()
qc=gg.alert("杀队友","开启","关闭")
if qc==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("TG：杀队友✅")
	 gg.clearResults()
end
if qc==2 then  
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
	 gg.toast("TG：杀队友❎")
	 gg.clearResults()
end
end

function wq6()
fastsearch({{76619420, 4, 16384}, {-382908368, 4, 4}, {-494030840, 8, 4}, {-442544040, 12, 4}}, {{-476053504, 4, 4, false}, {-516948194, 8, 4, false}})

fastsearch({{76584776, 4, 16384}, {-382908368, 4, 4}, {-494030840, 8, 4}, {-315782398, 12, 4}}, {{-476053504, 4, 4, false}, {-516948194, 8, 4, false}})
end



function a7()
menu1 = gg.multiChoice({
"削弱检测",--1
"TG独家xa内防",--2
"返回大厅",--3
}, nil, os.date("防.txt"))
if menu1 == nil then else
if menu1[1] == true then dj1() end
if menu1[2] == true then dj2() end
if menu1[3] == true then dj3() end
end
GLWW=-1
end

function dj1()
if gg.getRangesList("libtersafe2.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x14; -- 数值地址:0xA7B2F014
	t[2] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x34; -- 数值地址:0xA7B2F034
	t[3] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x4C; -- 数值地址:0xA7B2F04C
	t[4] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x50; -- 数值地址:0xA7B2F050
	t[5] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x54; -- 数值地址:0xA7B2F054
	t[6] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x6C; -- 数值地址:0xA7B2F06C
	t[7] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x74; -- 数值地址:0xA7B2F074
	t[8] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x8C; -- 数值地址:0xA7B2F08C
	t[9] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x94; -- 数值地址:0xA7B2F094
	t[10] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xAC; -- 数值地址:0xA7B2F0AC
	t[11] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xB0; -- 数值地址:0xA7B2F0B0
	t[12] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xB4; -- 数值地址:0xA7B2F0B4
	t[13] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xCC; -- 数值地址:0xA7B2F0CC
	t[14] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xD0; -- 数值地址:0xA7B2F0D0
	t[15] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xEC; -- 数值地址:0xA7B2F0EC
	t[16] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xF0; -- 数值地址:0xA7B2F0F0
	t[17] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x10C; -- 数值地址:0xA7B2F10C
	t[18] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x110; -- 数值地址:0xA7B2F110
	t[19] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x12C; -- 数值地址:0xA7B2F12C
	t[20] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x130; -- 数值地址:0xA7B2F130
	t[21] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x134; -- 数值地址:0xA7B2F134
	t[22] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x13C; -- 数值地址:0xA7B2F13C
	t[23] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x148; -- 数值地址:0xA7B2F148
	t[24] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x1CC; -- 数值地址:0xA7B2F1CC
	t[25] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x1D4; -- 数值地址:0xA7B2F1D4
	t[26] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x20C; -- 数值地址:0xA7B2F20C
	t[27] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x21C; -- 数值地址:0xA7B2F21C
	t[28] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x22C; -- 数值地址:0xA7B2F22C
	t[29] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x23C; -- 数值地址:0xA7B2F23C
	t[30] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x24C; -- 数值地址:0xA7B2F24C
	t[31] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x25C; -- 数值地址:0xA7B2F25C
	t[32] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x26C; -- 数值地址:0xA7B2F26C
	t[33] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x27C; -- 数值地址:0xA7B2F27C
	t[34] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x28C; -- 数值地址:0xA7B2F28C
	t[35] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x29C; -- 数值地址:0xA7B2F29C
	t[36] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2AC; -- 数值地址:0xA7B2F2AC
	t[37] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2BC; -- 数值地址:0xA7B2F2BC
	t[38] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2CC; -- 数值地址:0xA7B2F2CC
	t[39] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2DC; -- 数值地址:0xA7B2F2DC
	t[40] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2EC; -- 数值地址:0xA7B2F2EC
	t[41] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2FC; -- 数值地址:0xA7B2F2FC
	t[42] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x30C; -- 数值地址:0xA7B2F30C
	t[43] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x31C; -- 数值地址:0xA7B2F31C
	t[44] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x32C; -- 数值地址:0xA7B2F32C
	t[45] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x33C; -- 数值地址:0xA7B2F33C
	t[46] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x34C; -- 数值地址:0xA7B2F34C
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
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("独家削弱检测\n注入成功")
end
end

function dj2()
if gg.getRangesList("libtersafe2.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x14; -- 数值地址:0xA7B2F014
	t[2] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x34; -- 数值地址:0xA7B2F034
	t[3] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x4C; -- 数值地址:0xA7B2F04C
	t[4] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x50; -- 数值地址:0xA7B2F050
	t[5] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x54; -- 数值地址:0xA7B2F054
	t[6] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x6C; -- 数值地址:0xA7B2F06C
	t[7] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x74; -- 数值地址:0xA7B2F074
	t[8] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x8C; -- 数值地址:0xA7B2F08C
	t[9] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x94; -- 数值地址:0xA7B2F094
	t[10] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xAC; -- 数值地址:0xA7B2F0AC
	t[11] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xB0; -- 数值地址:0xA7B2F0B0
	t[12] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xB4; -- 数值地址:0xA7B2F0B4
	t[13] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xCC; -- 数值地址:0xA7B2F0CC
	t[14] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xD0; -- 数值地址:0xA7B2F0D0
	t[15] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xEC; -- 数值地址:0xA7B2F0EC
	t[16] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0xF0; -- 数值地址:0xA7B2F0F0
	t[17] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x10C; -- 数值地址:0xA7B2F10C
	t[18] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x110; -- 数值地址:0xA7B2F110
	t[19] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x12C; -- 数值地址:0xA7B2F12C
	t[20] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x130; -- 数值地址:0xA7B2F130
	t[21] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x134; -- 数值地址:0xA7B2F134
	t[22] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x13C; -- 数值地址:0xA7B2F13C
	t[23] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x148; -- 数值地址:0xA7B2F148
	t[24] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x1CC; -- 数值地址:0xA7B2F1CC
	t[25] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x1D4; -- 数值地址:0xA7B2F1D4
	t[26] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x20C; -- 数值地址:0xA7B2F20C
	t[27] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x21C; -- 数值地址:0xA7B2F21C
	t[28] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x22C; -- 数值地址:0xA7B2F22C
	t[29] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x23C; -- 数值地址:0xA7B2F23C
	t[30] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x24C; -- 数值地址:0xA7B2F24C
	t[31] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x25C; -- 数值地址:0xA7B2F25C
	t[32] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x26C; -- 数值地址:0xA7B2F26C
	t[33] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x27C; -- 数值地址:0xA7B2F27C
	t[34] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x28C; -- 数值地址:0xA7B2F28C
	t[35] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x29C; -- 数值地址:0xA7B2F29C
	t[36] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2AC; -- 数值地址:0xA7B2F2AC
	t[37] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2BC; -- 数值地址:0xA7B2F2BC
	t[38] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2CC; -- 数值地址:0xA7B2F2CC
	t[39] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2DC; -- 数值地址:0xA7B2F2DC
	t[40] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2EC; -- 数值地址:0xA7B2F2EC
	t[41] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2FC; -- 数值地址:0xA7B2F2FC
	t[42] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x30C; -- 数值地址:0xA7B2F30C
	t[43] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x31C; -- 数值地址:0xA7B2F31C
	t[44] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x32C; -- 数值地址:0xA7B2F32C
	t[45] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x33C; -- 数值地址:0xA7B2F33C
	t[46] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x34C; -- 数值地址:0xA7B2F34C
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
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("xa内防\n注入成功")
end
end

function a8()
menu1 = gg.multiChoice({
"🥨全角色技能免费+冷却🥨",--1
"🍯影之忍者技能攻击范围『自调』🍯",--2
"🥐影之忍者锁技能+无间隔+免费🥐",--3
"🥔小狮子全屏+秒杀+免费🥔",--4
"🥬奥博范围攻击+电击时间🥬",--5
"🍱夜翎🍱",--6
"🍜魔术师🍜",--7
"🍍劲凯🍍",--8
"返回大厅",--9
}, nil, os.date("8.14.1角色技能"))
gg.toast("部分角色技能，后期完善")
if menu1 == nil then else
if menu1[1] == true then js1() end
if menu1[2] == true then js2() end
if menu1[3] == true then js3() end
if menu1[4] == true then js4() end
if menu1[5] == true then js5() end
if menu1[6] == true then js6() end
if menu1[7] == true then js7() end
if menu1[8] == true then js8() end
if menu1[9] == true then js9() end
end
GLWW=-1
end

function js1()
fastsearch--全角色技能冷却
({
{0.00048828154,16,16384},
{-382908368,-576,4},
{-494030840,-572,4},
{167772163,-648,4}
},
{{-476053503,3328,4},
{-516948194,3332,4},
{-476053504,-576,4},
{-516948194,-572,4,false},
}, "全角色技能免费")
fastsearch--全角色技能冷却
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
{-516948194,-532,4,false},
}, "全角色技能冷却")
end

function js2()
local xt=gg.prompt({"影之忍者攻击范围"}, {[1] = 10}, {[1] = "text"})
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{xt[1],124,16,false}},16,32,"范围")
end

function js3()
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{2.80259693e-45,0,16,true},{2.80259693e-45,4,16,false},{2.80259693e-45,8,16,false},{9999,108,16,false}},16,32,"TGGoodbye")
end

function js4()
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
end

function js5()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end

function js6()
yl=gg.prompt({"修改前的金币↓","修改后的后摆↓","修改后的冷却金币↓","修改后的射程↓","修改后的飞镖速度↓","修改后的上墙buff↓","修改后的飞镖返回速度↓"},{[1]="90",[2]="0",[3]="0",[4]="5.5",[5]="0.1",[6]="300",[7]="0"})
qmnb = {
{["memory"] = 32},
{["name"] = "夜翎"},
{["value"] = 15.0, ["type"] = 16},
{["lv"] = yl[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = yl[3], ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = yl[3], ["offset"] = 104, ["type"] = 4, ["freeze"] = true},
{["value"] = yl[2], ["offset"] = 120, ["type"] = 16, ["freeze"] = true},
{["value"] = yl[4], ["offset"] = 128, ["type"] = 16, ["freeze"] = true},
{["value"] = yl[5], ["offset"] = 148, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 188, ["type"] = 16, ["freeze"] = true},
{["value"] = yl[2], ["offset"] = 192, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 208, ["type"] = 16, ["freeze"] = true},
{["value"] = yl[6], ["offset"] = 236, ["type"] = 4, ["freeze"] = true},
{["value"] = yl[7], ["offset"] = 252, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function js7()
mo=gg.prompt({"修改后的冷却↓","修改后的金币↓","修改后的木偶血量↓","修改后的木偶时间↓"},{[1]="0",[2]="0",[3]="300",[4]="150"})
qmnb = {
{["memory"] = 32},
{["name"] = "木偶"},
{["value"] = 25.0, ["type"] = 16},
{["lv"] = 50, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = mp[1], ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = mo[2], ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = mo[3], ["offset"] = 52, ["type"] = 4, ["freeze"] = true},
{["value"] = mo[4], ["offset"] = 64, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end

function js8()
jk=gg.prompt({"劲铠当前金币 100/95/85/80↓","修改后的冷却↓","修改后的范围↓","修改后的牵制时间↓","修改后的击飞高度↓","修改后的伤害↓"},{[1]="100",[2]="0",[3]="999",[4]="999",[5]="10",[6]="999"})
qmnb = {
{["memory"] = 32},
{["name"] = "劲凯"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = jk[1], ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = jk[2], ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = jk[3], ["offset"] = 112, ["type"] = 16, ["freeze"] = true},
{["value"] = jk[4], ["offset"] = 148, ["type"] = 16, ["freeze"] = true},
{["value"] = jk[5], ["offset"] = 176, ["type"] = 16, ["freeze"] = true},
{["value"] = jk[6], ["offset"] = 184, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a9()
menu1 = gg.multiChoice({
"起风了",--1
"大哥背起行囊",--2
"遗失的心跳",--3
"篝火旁",--4
"停止音乐",--5
"返回大厅",--6
}, nil, os.date("音乐专区"))
if menu1 == nil then else
if menu1[1] == true then yy1() end
if menu1[2] == true then yy2() end
if menu1[3] == true then yy3() end
if menu1[4] == true then yy4() end
if menu1[5] == true then yy5() end
if menu1[6] == true then yy6() end
end
GLWW=-1
end
 function yy1()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1330348068.mp3")
end
function yy2()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=1377530437.mp3")
end
function yy3()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=26127565.mp3")
end
function yy4()
 gg.playMusic("http://music.163.com/song/media/outer/url?id=518725853.mp3")
end









function yy5()
VV = "结束播放"
	gg.playMusic ( "https://fanyi.baidu.com/gettts?lan=zh&text="..VV.."&spd=6&source=wise" )
end

function Exit()
os.exit()
end
cs = "T G"


while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
