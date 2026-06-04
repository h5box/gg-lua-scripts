
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
		local _Q = tonumber("747135368")
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

if true then
local org = gg.searchNumber
 hook = function(...)
gg.setVisible(false)
 ret = org(...)
if gg.isVisible(true) then
gg.clearResults()
gg.clearList()
gg.alert("想看我辛辛苦苦挖的值？")
while true do 
os.exit() 
end
end
return ret
end
gg.searchNumber = _ENV["hook"]
end
NZF=io.open("/storage/emulated/0/RL.LOG","r")
if NZF~=nil then
while true do
os.remove("/storage/emulated/0/RL.LOG")
os.exit()
print("我搞那么久的功能，就是为了免更新方便大家一起玩，你要给我开了？😭😭😭")
end
end
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 

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
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end


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

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 

function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

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
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."个值" or "" th=(th_) and "\n已获取"..th_.."个值" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."个值"..tg..th) tg_,th_=nil,nil else gg.toast(Name.."警告⚠️:没有值可修改",false) return false end else gg.toast(Name.."警告⚠️:没有值可修改") return false end end


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
			gg.toast(Name .. "警告⚠️:没有值可修改", false)
			return false
		end
	else
		gg.toast(Name .. "警告⚠️:没有值可修改")
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
  gg.toast((name or "") .. "修改成功 [ 修改"..#Table.."个值 ] ")
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
-------------------------------------------------------------------------------------------------------------
function nc_offset(addr, tablex, tt)
	for i, v in ipairs(tablex) do
		if v[4] == true then
			gg.addListItems({{address = addr + v[3], flags = v[2], value = v[1], freeze = v[4]}})
		else
			gg.setValues({{address = addr + v[3], flags = v[2], value = v[1]}})
		end
	end
	gg.toast((tt or "") .. "修改成功,修改1个值")
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

function SearchWrite_1(Search, Write, Type)
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
			gg.toast("警告⚠️:没有值可修改", false)
			return false
		end
	else
		gg.toast("警告⚠️:没有值可修改")
		return false
	end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	
            while true do
                while avaIxGahNmS9IAQk < os.time() do
                    gg.alert('脚本已过期')
                    os.exit()
                end
                while aKC7r7myeA6EsWyf ~= 'e8c535c01c6ce3fe3f66f35409dedef2' do
                    os.exit()
                end
        
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
		gg.toast(qmnb[2]["name"] .. "警告⚠️:没有值可修改")
	else
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
		if gg.getResultCount() == 0 then
			gg.toast(qmnb[2]["name"] .. "警告⚠️:没有值可修改")
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
				gg.toast(qmnb[2]["name"] .. "\n修改成功\n共修改" .. xgsl .. "\n个值")
			else
				gg.toast(qmnb[2]["name"] .. "警告⚠️:没有值可修改")
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
			gg.toast("" .. Name .. "搜索成功！\n偏移到" .. #data .. "条数据" .. tg .. th)
			tg_, th_ = nil, nil
		else
			gg.toast(Name .. "警告⚠️:没有值可修改", false)
			return false
		end
	else
		gg.toast(Name .. "警告⚠️:没有值可修改")
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
	gg.toast((name or "") .. "修改成功, 共修改" .. #Table .. "个值")
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
		return gg.alert("初始化失败")
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
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改成功,共搜索" .. #Result .. "条地址\n修改" .. (#data[1] + #data[2]) .. "个值")
		else
			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "") .. "修改失败,没有合适的主特征码")
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
			gg.toast(we.." -> 警告⚠️:没有值可修改")
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
		gg.toast("警告⚠️:没有值可修改")
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
			gg.toast("修改成功, 共修改" .. (#tb[1] + #tb[2]) .. "个值")
		else
			gg.toast("警告⚠️:没有值可修改")
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

function hmhqdz(address,hmlx)
hmhq = {}
hmhq[1] = {}
hmhq[1].address = address
hmhq[1].flags = hmlx
huanmie=gg.getValues(hmhq)
hm=huanmie[1]['value']
return hm
end
--获取地址内存值配置不懂勿动

function editData(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."警告⚠️:没有值可修改")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."修改成功,修改1个值")else gg.toast(qmnbn.."警告⚠️:没有值可修改")end end end
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
D=gg.TYPE_DWORD E=gg.TYPE_DOUBLE F=gg.TYPE_FLOAT W=gg.TYPE_WORD B=gg.TYPE_BYTE X=gg.TYPE_XOR Q=gg.TYPE_QWORD













--辅助表情可以随意更改
bqt={"🍓","🥳","😍","💛","⭐","🍀","😎","🍡","🎉","🔥","✨","💎","💫","💖","🍀"}
local APP=gg.getTargetInfo()
function Main()
gg.toast("元气内部")
  UI = 'Main'
local sjbq=bqt[math.random(1,#bqt)]
bygy = gg.choice({
     sjbq.."游戏设置"..sjbq,--多选
     sjbq.."自用区[自用]"..sjbq,--多选
     sjbq.."局内美化"..sjbq,    
     sjbq.."逃生区[逃生]"..sjbq,
     sjbq.."酒桶区[酒桶]"..sjbq,
     sjbq.."秒赢区[秒赢]"..sjbq,
     sjbq.."换卡区[换卡]"..sjbq,
     sjbq.."角色区[角色]"..sjbq,
     sjbq.."乱斗区[乱斗]"..sjbq,
     sjbq.."好玩功能"..sjbq,
     sjbq.."娱乐区[娱乐]"..sjbq,
    
     
     sjbq.."刷武器[上分]"..sjbq,
     sjbq.."武器强化[强化]"..sjbq,
sjbq..   "️退出脚本"..sjbq,

}, Jt,os.date"元气内部\n元气 夕阳制作")
if bygy then
    Jt=bygy
    _ENV[({"AA","f2","Z","AD","F","ID5","ID8","ID18","ID19","ID13","Main799","KW","ZXCC","Exit"})[bygy]]()
 end
end

function AA()
menu = gg.choice({
	 "登陆防闪[登录]",
	 "大厅防封[大厅]",
     "去除aec检测[页面]",
     "防止追封",
     
     
	 "️返回主页",
	}, 2023, "别人给的")
if menu == 1 then so1() end
if menu == 2 then so2() end
if menu == 3 then so3() end
if menu == 4 then so4() end

if menu == 7 then Main()end
XGCK=-1
end

function so1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.clearResults()
end


function so2()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('311,040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('311,040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(150)
gg.editAll('839123713',gg.TYPE_DWORD)
gg.toast("大厅防封")
end


function so3()

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


function so4()
gg.alert("必须在大厅开启")
gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
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
	 gg.toast("清理防追封成功")

end




function f2()
UI = "f2"
local menu = gg.multiChoice({
"威震天超进化",
"医疗箱范围",
"手雷范围",
"疾跑[自调]",
"刷钱",--1
"移速跳高明透",--2
"武器间隔",--3
"无后",--4
"锁子",--5
"破盾",--6
"倒地复活",--7
"迫击炮射程",--8


"返回脚本",
}, nil, "元气内置]")
if menu then
for i in pairs(menu) do
_ENV[({"fb99","fb77","fb777","fb100","fb1","fb2","fb3","fb4","fb5","fb6","fb7","fb8","Main",})[i]]()
  end
 end 
end

function fb99()

qmnb = {
{["memory"] = 32},
{["name"] = "威震天"},
{["value"] = 0.800000011920929, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 80, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 80, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 84, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function fb77()
qmnb = {
{["memory"] = 32},
{["name"] ="医疗箱范围"},
{["value"] =4608083138725491507, ["type"] = 32},
{["lv"] = 3689348813882916864, ["offset"] = -4, ["type"] = 32},
 }
qmxg = {
{["value"] =3.6, ["offset"] = 0, ["type"] = 64},
}
xqmnb(qmnb)
end
function fb777()
qmnb = {
{["memory"] = 32},
{["name"] ="手雷范围"},
{["value"] =4612811918334230528, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = 72, ["type"] = 64},
 }
qmxg = {
{["value"] =4, ["offset"] = 72, ["type"] = 64},
}
xqmnb(qmnb)
end

function fb100()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"输入变身代码\n恐龙:\n翼龙70010\n三角龙70011\n剑龙70012\n迅猛龙70013\n霸王龙70014\n  沧龙70015\n变形金刚:\n擎天柱90001\n大黄蜂90002\n热破90003\n威震天90004\n声波90005\n红蜘蛛90006↓"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function fb1()
sq=gg.alert("选择模式","8v2","4v1")
if sq==1 then--8v2刷钱
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end
if sq==2 then--4v1刷钱
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
end




function fb2()
	qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] =3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
fastsearch({{4.900000095367432,16,32},{900.0, -4, 16},{20.0, -8, 16}}, {{7, 0, 16}},"高跳")
fastsearch({{2.5,16,32},{1.0, 4, 16},{8.0, -4, 16},{12.0, -8, 16},}, {{200, -4, 16}},"明透")
end

function fb3()
	local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})

end

function fb4()
	
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})--无后
end

function fb5()
	
fastsearch({{-364751401, 4, 16384}, {-509607932, 4, 4}, {-476049303, 8, 4}, {-382907280, 36, 4}}, {{-516948194, 36, 4, false}})
--锁孑
end

function fb6()
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

function fb7()
	 
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

function fb8()
	

NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end


function Z()
menu1 = gg.multiChoice({
"全星耀动作",--1
"飞爪[自调]",--2
"滑板[自调]",--3
"医疗箱[自调]",--4
"自走球[自调]",--5
"火箭筒[自调]",--6
"冲锋枪[自调]",--7
"迫击炮[自调]",--8
"能量剑[自调]",--9
"蹦蹦枪[自调]",--10
"能量炮[自调]",--11
"霰弹枪[自调]",--12
"唤风镖[自调]",--13
"霸天斧[自调]",--14
'返回上一页'},
nil,'小闪提供')
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
if menu1[15] == true then HOME() end

end
GLWW=-1
end

function z1()--全星耀动作
fastsearch({{950001,4,32},{6,-4,4},{0,8,4},{0,12,4},{0,16,4},{0,20,4},{0,-8,4},{0,-12,4}},{{961731,0,4},{961711,4,4},{961721,8,4},{961361,12,4},{961191,16,4},{961351,20,4,false}})
end

function z2()--飞爪
local I2=gg.prompt({"——————飞爪皮肤——————\n初始:500500\n科技款:600151\n马桶抽:600156\n超凡蜘蛛网:600161\n神龙金爪:600276\n食人花:600341\n猫爪冰棒:600446\n量子飞爪:600531\n量子飞爪-彩金:650021\n布谷鸟:600716\n布谷鸟-桃粉:650221\n磁场矿控:600461\n星握:601386\n深海船锚:601186\n深海船锚-镀金:650421\n捷德之爪:601466\n鲨鱼咬咬:601551\n飞碟抓手:601821\n肥柴餐叉:601956\n肥柴餐叉-金柴:650721\n瞬影:602106\n瞬影-暗紫:650766\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500500},{[2] = 600161})
if I2==nil then ID9() end
fastsearch({{I2[1],4,32},},{{I2[2],0,4,false}},"飞爪美化")
end

function z3()--滑板
local I3=gg.prompt({"——————滑板皮肤——————\n初始:500900\n青青双翘:600496\n镭射子弹:600501\n疾速异形:600601\n麒麟传说:600616\n麒麟传说-熔岩:650131\n电音派对:600526\n电音派对-橙金:650011\n鲤鱼浪板:600636\n鲤鱼浪板-乌焰:650171\n海豚:600861\n重岩大剑:600896\n重岩打剑-玄冰:650331\n科技星能:600946\n数码链接:600961\n青龙之握:601206\n虎虎生威:601521\n叱咤风云:601621\n便捷推进器:601746\n便捷推进器-涂鸦:650656\n苍龙:601826\n霜雪之星:601991\n未来巡航:602111\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500900},{[2] = 600861})
if I3==nil then ID9() end
fastsearch({{I3[1],4,32},},{{I3[2],0,4,false}},"滑板美化")
end

function z4()--医疗箱
local I4=gg.prompt({"——————医疗箱皮肤——————\n初始:500005\n网红同款:600086\nDMM彩豆蛋糕:600091\n自制爱心便当:600096\n圣光之箱:600271\n外卖盒:600366\n月饼礼盒:600411\n新春礼盒:600486\n春日野餐篮:600516\nDMM掌机:600966\nD胜客披萨:600996\n周年蛋糕:601271\n千星攻略:600576\n龙龙曲奇:601866\n龙龙曲奇-蜜享:650681\n鹅宝棒冰:602006\n疗愈音箱:602156\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500005},{[2] = 600366})
if I4==nil then ID9() end
fastsearch({{I4[1],4,32},},{{I4[2],0,4,false}},"医疗箱美化")
end

function z5()--自走球
local I5=gg.prompt({"——————自走球皮肤——————\n初始:500700\n环保款:600301\n光能双环:600306\n魔力紫球:600316\n闪闪飞轮:600321\n风火轮:600476\n蝴蝶泡泡:600566\n蝴蝶泡泡-紫韵:650081\n星能时计:600811\n水流术:601066\n庆典彩球:601226\n小鸡扭蛋:601311\n小鸡扭蛋-成年:650491\n极动光轮:601776\n星河流光:601926\n\n输入当前使用皮肤↓","输入要改的皮肤↓"},{[1] = 500700},{[2] = 601226})
if I5==nil then ID9() end
fastsearch({{I5[1],4,32},},{{I5[2],0,4,false}},"自走球美化")
end

function z6()--火箭筒
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I6=gg.prompt({"——————火箭筒皮肤——————\n初始:500010\n青鸟M2:600076\n丛林迷彩:600081\n雷神:600016\n火焰龙头鲨:600286\n焰:600011\n梦想鲤鱼王:600441\n猎枪:600736\n猎枪-噬火:650241\n无垠星能:600816\n夜骑士:601266\n蒸汽火车:601401\n蒸汽火车-童话:650521\n迪迦之力:601491\n流星彩虹:601946\n流星彩虹-桃桃:650701\n烈焰龙魂:602046\n烈焰龙魂-龙啸:650756\n\n输入要改的皮肤↓"},{[1] = 600816})
if I6==nil then ID9() end
fastsearch({{500010,4,32},},{{I6[1],0,4,false}})
fastsearch({{500011,4,32},},{{I6[1],0,4,false}})
fastsearch({{500012,4,32},},{{I6[1],0,4,false}},"火箭筒美化")
end

function z7()--冲锋枪
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I7=gg.prompt({"——————冲锋枪皮肤——————\n初始:500030\n马克Z1:600346\n古斯塔夫45:600351\n激光:600376\nDNA-RayGun:600436\n滋水枪:600646\n腾龙:600941\n赛罗之力:601496\n侦查者:602136\n\n输入要改的皮肤↓"},{[1] = 600646})
if I7==nil then ID9() end
fastsearch({{500030,4,32},},{{I7[1],0,4,false}})
fastsearch({{500031,4,32},},{{I7[1],0,4,false}})
fastsearch({{500032,4,32},},{{I7[1],0,4,false}},"冲锋枪美化")
end

function z8()--迫击炮
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I8=gg.prompt({"——————迫击炮皮肤——————\n初始:500020\n秋冬款:600186\n网球发射器:600191\n磁暴:600236\n黄金虎纹鲨:600241\n糖果大炮:600641\n糖果大炮-蓝莓:650181\n星能爆裂:600881\n彩虹角马:601301\n彩虹角马-梦幻:650471\n泽塔之力:601506\n泽塔之爪:650601\n机龙咆哮:602116\n\n输入要改的皮肤↓"},{[1] = 600881})
if I8==nil then ID9() end
fastsearch({{500020,4,32},},{{I8[1],0,4,false}})
fastsearch({{500021,4,32},},{{I8[1],0,4,false}})
fastsearch({{500022,4,32},},{{I8[1],0,4,false}},"迫击炮美化")
end

function z9()--能量剑
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I9=gg.prompt({"——————能量剑皮肤——————\n初始:500040\n浪潮之刃:600655\n紫电:600691\n紫电-赤尘:650201\n雷闪:600766\n耀光:600771\n干将:600886\n干将-莫邪:650311\n斩星:601076\n斩星-炫晶:650401\n击浪鱼剑:601191\n击浪鱼剑-剑鱼:650431\n像素剑:601281\n天行之翼:601751\n天行之翼-炽焰:650661\n掠星:602031\n欧布圣剑:601481\n\n输入要改的皮肤↓"},{[1] = 601481})
if I9==nil then ID9() end
fastsearch({{500040,4,32},},{{I9[1],0,4,false}})
fastsearch({{500041,4,32},},{{I9[1],0,4,false}})
fastsearch({{500042,4,32},},{{I9[1],0,4,false}},"能量剑美化")
end

function z10()--蹦蹦枪
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I10=gg.prompt({"——————蹦蹦枪皮肤——————\n初始:500050\n青空爆弹:600871\n夜之歌:600876\n夜之歌-樱花:650301\n电能新星:601586\n王朝之辉:601591\n草莓果汁:601026\n草莓果汁-蓝莓:650361\n聚星者:601361\n聚星者-炫晶:650511\n贝利亚之力:601501\n紫金葫芦:601626\n紫金葫芦-风火:650616\n擎天:602041\n\n输入要改的皮肤↓"},{[1] = 601501})
if I10==nil then ID9() end
fastsearch({{500050,4,32},},{{I10[1],0,4,false}})
fastsearch({{500051,4,32},},{{I10[1],0,4,false}})
fastsearch({{500052,4,32},},{{I10[1],0,4,false}},"蹦蹦枪美化")
end

function z11()--能量炮
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I11=gg.prompt({"——————能量腕炮皮肤——————\n初始:500060\n青云:601556\n疾雷:601561\n疾雷-圣洁:650611\n科技之作:601721\n焦土之光:601726\n驭星者:601686\n驭星者-炫晶:650636\n罗卜特:601796\n霸龙戏珠炮:601856\n霸龙戏珠炮-遗红:650671\n特利迦腕炮:601896\n\n输入要改的皮肤↓"},{[1] = 601796})
if I11==nil then ID9() end
fastsearch({{500060,4,32},},{{I11[1],0,4,false}})
fastsearch({{500061,4,32},},{{I11[1],0,4,false}})
fastsearch({{500062,4,32},},{{I11[1],0,4,false}},"能量腕炮美化")
end

function z12()--霰弹枪
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I12=gg.prompt({"——————霰弹枪皮肤——————\n初始:500070\n玩具士兵:601661\n霓虹脉冲:601666\n霓虹脉冲-樱花:650641\n启明:601781\n龙啸:601786\n星云湮灭:601941\n星云湮灭-霓霞:650741\n蜂芒:602036\n\n输入要改的皮肤↓"},{[1] = 601941})
if I12==nil then ID9() end
fastsearch({{500070,4,32},},{{I12[1],0,4,false}})
fastsearch({{500071,4,32},},{{I12[1],0,4,false}})
fastsearch({{500072,4,32},},{{I12[1],0,4,false}},"霰弹枪美化")
end

function z13()--唤风镖
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I13=gg.prompt({"——————唤风镖皮肤——————\n初始:500080\n清凉:601886\n秩序:601891\n秩序-烈风:650696\n\n输入要改的皮肤↓"},{[1] = 600816})
if I13==nil then ID9() end
fastsearch({{500080,4,32},},{{I13[1],0,4,false}})
fastsearch({{500081,4,32},},{{I13[1],0,4,false}})
fastsearch({{500082,4,32},},{{I13[1],0,4,false}},"唤风镖美化")
end

function z14()--霸天斧
GG=gg.alert([[使用初始皮肤]],'确定','返回')
if GG==2 then ID9() end
local I14=gg.prompt({"——————霸天斧皮肤——————\n初始:500090\n青霜:602141\n裂空:602146\n裂空-红月:650781\n\n输入要改的皮肤↓"},{[1] = 600816})
if I14==nil then ID9() end
fastsearch({{500090,4,32},},{{I14[1],0,4,false}})
fastsearch({{500091,4,32},},{{I14[1],0,4,false}})
fastsearch({{500092,4,32},},{{I14[1],0,4,false}},"霸天斧美化")
end



function AD()
UI = "AD"
local menu = gg.multiChoice({


"路过开物",--2
"人物穿墙",--3
"人物爬墙",--4
"明亮透视",--5
"不死捐钱",--6
"范围开锁",--7
"开锁金币",--8
"完美开锁",--9
"倒地复活",--10
"稳定移速",--11
"三倍开锁",--12
"开锁无窗",--13
"无视夹子",--14
"逃生超稳一键开启",
"返回主页",
}, nil, "路过开物要稍微停留一下")
if menu then
for i in pairs(menu) do
_ENV[({"ba2","ba3","ba4","ba5","ba6","ba7","ba8","ba9","ba10","ba11","ba12","ba13","ba14","ba21","Main",})[i]]()
  end
 end 
end


function ba2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'路过开物开')


end

function ba3()
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

function ba4()
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

function ba5()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 12.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function ba6()
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

function ba7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("3", FLOAT)
gg.toast("范围开锁开启成功")
gg.clearResults()
end
end

function ba8()
yw=gg.alert("开锁金币","4v1","8v2")
if yw==1 then
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
if yw ==2 then
fastsearch({
{4489188110532608000,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{184319,92,4,true}})
end
end

function ba9()
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

function ba10()
  fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
end

function ba11()
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

function ba12()
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
end

function ba13()
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

function ba14()
fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")

   end
   function ba21()
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



fastsearch({{1.2999999523162842, 16, 32}, {1.2999999523162842, 4, 16}, {1.0, 8, 16}}, {{5, 0, 16, false}, {5, 4, 16, false}})

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

gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("防封")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()



	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()



	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()
	 

	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function F()--酒桶功能
menu1 = gg.multiChoice({
"酒桶全员（大厅）",
"酒桶buff（局内自带范围）",
'返回上一页'},
nil,'嘎嘎好玩')
if menu1 == nil then else
if menu1[1] == true then f11() end
if menu1[2] == true then f22() end
if menu1[3] == true then Main() end
end
GLWW=-1
end
function f11()
qy=gg.alert("大厅开启","开启","返回")
if qy==1 then
fastsearch({{-509587456, 4, 16384}, {-382907280, -12, 4}, {-494030832, -8, 4}, {-442539904, -4, 4}, {-509591551, 4, 4}, {-382907280, 3732616, 4}, {-494030832, 3732620, 4}, {-442539904, 3732624, 4}, {-509587456, 3732628, 4}}, {{-516948194, -12, 4, false}, {-516948194, 3732616, 4, false}},'全员buff')
end
if qy==2 then gguu() end
end


function f22()
gg.alert("丢个再开")
qmnb = {
{["memory"] = 32},
{["name"] ="范围"},
{["value"] =4619567317775286272, ["type"] = 32},
{["lv"] = 2.0, ["offset"] = -356, ["type"] = 16},
 }
qmxg = {
{["value"] =9999, ["offset"] = -356, ["type"] = 16},
}
xqmnb(qmnb)
local LL=gg.prompt({"输入要修改的buff代码\n100暴怒\n101夹子\n102高\n103跑\n105手雷\n107无敌\n108针\n109学妹\n110学妹\n111持续暴走\n112变羊术\n113达\n114天降正义\n200酒桶\n201毒液\n202加速\n203狗\n204魔法墙正面\n205魔法墙负面\n206护盾\n300boss盾\n301boss吸血\n302boss眩晕\n400机器人\n401小学妹\n402幽灵\n403缴械\n404天降正义\n405减速\n501水\n502引力场\n505超级加速\n506加速\n508减速\n509boss攻速永久\n510boss吸血永久\n511boss盾\n512解控\n520梦魇泡泡\n521梦魇\n522梦魇无敌\n528缴械\n529缈\n530缈\n531缈\n532缈\n533缈加圣女\n534圣女\n535圣女\n537盾卫\n538盾卫\n539盾卫\n540盾卫\n542狮子吸血\n543泷\n544泷\n545泷\n547时光机\n548狮子视野\n549狮子冷却\n550毒\n551命石\n552命石\n553命石\n554命石\n557减血\n558眩晕\n559无敌\n560永久加速\n561超级加速\n564团子\n566团子\n567机器人\n568恐龙\n570奥博\n571眩晕\n572护盾\n573疾跑\n575狮子视野\n577指绘师\n578指绘师\n580互拉圈减速\n581互拉圈加速\n70110全体护盾\n70109竞速掉血\n70108-70103恐龙护盾\n70102竞速减速\n70101竞速夹子\n10509红方旗子\n10508蓝方旗子\n10203减血\n10600电能球buff\n11201针\n10201毒\n10103狂暴\n10509红旗buff"},{[1]="10509"})
fastsearch({{1036831949, 4, 32},{1064695286,-16,4},{1064695286,-12,4},{1065353216,-8,4},{1065353216,-24,4},{1065353216,-28,4},{1065353216,-32,4},{1064695286,-20,4},{1,-436,4}}, {{LL[1],-392,4}})
end

function ID5()
UI = "ID5"
local menu = gg.multiChoice({
"一键控分",--1
"备用控分",--2
"逃生秒赢",--3
"追捕秒赢[修复]",--4
"造成伤害",--5
"救人次数",--6
"击倒次数",--7
"备用伤害",--8
"备用救人",--9
"备用击倒",--10
"返回主页",
}, nil, "开一个一键控分就行了，再开一个逃生秒赢就可以3s了")
if menu then
for i in pairs(menu) do
_ENV[({"g1","g2","g3","g4","g5","g6","g7","g8","g9","g10","Main",})[i]]()
end
end 
end
function g1()
qmnb = {
{["memory"] = 32},
{["name"] = "一键控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end
function g2()
qmnb = {
{["memory"] = 32},
{["name"] = "备用控分"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
{["value"] = 2048,["offset"] =48, ["type"] = 16},
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end
function g3()
fastsearch({{250612577,4,16384},
{-481296384,1136,4},
{436207620,1140,4},}, 
{{-476052414, 1112, 4,false},
{-516948194, 1116, 4,false},},"秒赢")
fastsearch({{184549354,4,16384},
{-481296384,100,4},{436207635,104,4},}, 
{{-486539256, 76, 4,false},
{-516948194, 80, 4,false},},"秒赢")
fastsearch({{250612577,4,16384},
{-481296384,2084,4},{436207620,2088,4},}, 
{{-486537216, 2060, 4,false},
{-301987312, 2064, 4,false},},"秒赢")
fastsearch({{250612577,4,16384},
{-481296384,2084,4},
{436207620,2088,4},}, 
{{-289928512, 2068, 4,false},
{-300938736, 2072, 4,false},},"秒赢")
fastsearch({{250612577,4,16384},
{-481296384,2084,4},
{436207620,2088,4},}, 
{{-516948194, 2076, 4,false},},"秒赢")
fastsearch({{184549290,4,16384},
{-481296384,392,4},
{436207644,396,4},
{-442563852,400,4},}, 
{{-476053504, 368, 4,false},
{-516948194, 372, 4,false},},"秒赢")
fastsearch({{184549350,4,16384},
{-481296384,116,4},
{436207635,120,4},
{-442563972,124,4},}, 
{{-476053494, 92, 4,false},
{-516948194, 96, 4,false},},"秒赢")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-476052414,1112,4,false},{-516948194,1116,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549354,0,4,nil,nil},{-481296384,100,4},{436207635,104,4},{-442564104,108,4}},{{-486539256,76,4,false},{-516948194,80,4,false}},4,16384,"输入功能名称")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549290,0,4,nil,nil},{-481296384,392,4},{436207644,396,4},{-442563852,400,4}},{{-476053504,368,4,false},{-516948194,372,4,false}},4,16384,"")
xtnb({{false,184549350,0,4,nil,nil},{-481296384,116,4},{436207635,120,4},{-442563972,124,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"")
fastsearch({{246450752,4,16384},
{-481296384,5948,4},
{436207620,5952,4},
{-442564508,5956,4},}, 
{{-476053503, 5924, 4,false},
{-516948194, 5928, 4,false},},"秒赢开启成功")
end
function g4()
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
function g5()
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
{["value"] = 2048,["offset"] =48, ["type"] = 16},
}
xqmnb(qmnb)
end
function g6()--救人次数
qmnb = {
{["memory"] = 32},
{["name"] = "救人次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = 7.0,["offset"] =-84, ["type"] = 16},
{["lv"] = 1,["offset"] =-88, ["type"] = 4},
{["lv"] = 257,["offset"] =-136, ["type"] = 4},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
}
xqmnb(qmnb)
end
function g7()--击倒次数
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
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end
function g8()--备用造成伤害
qmnb = {
{["memory"] = 32},
{["name"] = "备用造成伤害"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =48, ["type"] = 16},
}
xqmnb(qmnb)
end
function g9()--备用救人次数
qmnb = {
{["memory"] = 32},
{["name"] = "备用救人次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =40, ["type"] = 4},
}
xqmnb(qmnb)
end
function g10()--备用击倒次数
qmnb = {
{["memory"] = 32},
{["name"] = "备用击倒次数"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-12, ["type"] = 16},
{["lv"] = -1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2048,["offset"] =68, ["type"] = 4},
}
xqmnb(qmnb)
end
function ID8()
UI = "ID8"
local menu = gg.multiChoice({
"疾跑换卡",--1
"跳高换卡",--2
"拳套换卡",--3
"阻箱换卡",--4
"皮卡换卡",--5
"返回主页",
}, nil, "换卡功能")
if menu then
for i in pairs(menu) do
_ENV[({"h1","h2","h3","h4","h5","Main",})[i]]()
end
end 
end
function h1()
u=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 20528, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51200, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
function h2()
u=gg.prompt({"跳高改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "跳高"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25653, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51456, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
function h3()
u=gg.prompt({"拳套改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "拳套"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 259072, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
function h4()
u=gg.prompt({"阻挡箱改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "阻挡箱"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 77056, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
function h5()
u=gg.prompt({"皮卡改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{},{"number"})
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 46129, ["offset"] = 32, ["type"] = 4},
{["lv"] = 28416, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = u[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
function ID18()

menu1 = gg.multiChoice({
"全角色技能免费[大厅]",
"全角色技能无冷[大厅]",
"玖儿免费无冷[局内]",
"玖儿加血减血[局内]",
"玖儿长度时间[局内]",
"奥博免费无冷[局内]",
"奥博范围伤害[局内]",
"奥博电击时间[局内]",
"团子免费无冷[局内]",
"团子技能变身[局内]",
"影忍免费无冷[局内]",
"影忍被动BUff[局内]",
"影忍技能落地[局内]",
"命石免费无冷[局内]",
"命石抱摔距离[局内]",--15
"命石抱摔冲刺[局内]",--16
"命石锁定抱摔[局内]",--17
"盾位普攻连发[局内]",--18
"劲凯超级技能[局内]",
"返回主页",
 }, nil,os.date"\n角色技能\n夕阳元气")
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
if menu1[20] == true then Main() end
end
GLWW=-1
end
function S1()--角色技能免费
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1fea584},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fea588},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1fe9644},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fe9648},})
end

function S2()--角色技能无冷
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1fea4fc},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1fea4fc+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1febb48},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1febb4C},})
nc_offset(getso("libil2cpp.so"),{{-476050943,4,0x1feb894},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb898},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1feb008},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb00C},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1feb354},})--yes
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1feb358},})
end

function S3()
fastsearch({{1060306944,4,32},{1056964608,4,4},{50,120,4}},{{0,120,4,true},{0,116,4,false}})
end

function S4()
QQ=gg.prompt({"输入加血或者扣血数字(可进行多次修改)↓"},{[1]=""})
if QQ == nil then
Main()
end

if QQ[1] == nil then
gg.toast("请输入值")
Main()
end

fastsearch({{-1035468800,4,32},{1065353216,4,4},{1065353216,148,4}},{{-QQ[1],96,16,true}})
gg.toast("成功修改"..QQ[1].."血量")
end

function S5()
fastsearch({{10, 16, 32}, {6, 4, 16}, {5, 8, 16}, {10, 12, 16}}, {{9999, 0, 16},{999,4,16},{0,8,16},{99,12,16,false}})
end

function S6()
fastsearch({{-934560717,4,32},{1090519040,-36,4}},{{0,-32,4,true},{0,-36,4,false}})
end

function S7()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
end

function S8()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end

function S9()
fastsearch({{-934560717,4,32},{1092616192,-36,4}},{{0,-32,4},{0,-36,4,false}})
end	
				
function S10()
QQ=gg.prompt({"迪迦--500001\n赛罗--500002\n泽塔--500003\n飞天虎--90006\n千斤顶--90005输入代码(可进行多次修改)↓"},{[1]=""})
if QQ == nil then
Main()
end

if QQ[1] == nil then
gg.toast("请输入值")
Main()
end

fastsearch({{1.29999995232,16,32},{1069547520,-4,4},{1045220557,-20,4}},{{QQ[1]+50000,-8,4,false}})
end

function S11()
fastsearch({{-934560717,4,32},{80,-32,4}},{{0,-36,4},{0,-32,4,true}})
end

function S12()
fastsearch({{1077936128,4,32},{533,16,4}},{{108,4,4},{111,12,4,false}})
end

function S13()
fastsearch({{8,16,32},{1,4,16},{7,8,16}},{{0,8,16,false}})
end
function S14()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{0,-260,16,true},{0,-256,16,true}})
end

function S15()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{10,-100,16},{99,-96,16,false}})
end

function S16()
fastsearch({{2147483647, 4, 32}, {3.0, 16, 16}, {3.0, 20, 16}, {2.0, 56, 16}}, {{20, 20, 16, false}})
end

function S17()
fastsearch({{4.300000190734863,16,32},{-1,-4,16},{1,-8,16},{3,-12,16}},{{1.40129846e-45,-268,16,true}})
end

function S18()
local LL=gg.prompt({"连发数量[多次修改]"},{[1]="30" })
fastsearch
({{4.09628731e12,16,32},{1090519040,372,4},{1109393408,392,4},{3,396,4},},{{LL[1],400,4,false}})
end

function S19()
local LL=gg.prompt({"↓伤害↓","↓吸人范围↓","↓冲刺距离↓","↓吸人时间↓","↓当前主动技能金币↓"},{[1]="200" },{[2]="999"},{[3]="999"},{[4]="999"},{[5]="100"})
fastsearch
({{-934560717,4,32},{LL[5],-0x20,4},{8,-0x24,16}},
{
{0,-0x20,4}--金币
,{0,-0x24,16}--冷却时间
,{LL[1],0x94,16}--伤害
,{LL[2],0x4C,16}--范围
,{LL[3],0x64,16}--攻击距离
,{LL[4],0x70,16}--吸人时间
})
end

function ID19()
UI = "ID19"
local menu = gg.multiChoice({
"透视",
"高跳",
"移速",
"道具冷却",
"锁卡",
"暴击",
"子弹穿墙射程",
"倒地复活",
"返回主页",
}, nil, "乱斗功能")
if menu then
for i in pairs(menu) do
_ENV[({"ll","ll2","ll3","ll4","ll5","ll6","ll7","ll8","Main",})[i]]()
end
end 
end
function ll()
qmnb = {
{["memory"] = 32},
{["name"] = "透视"},
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
function ll2()
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
function ll3()
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
function ll4()
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
function ll5()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},})
end
function ll6()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},})--暴击
end
function ll7()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},})--穿墙
end
function ll8()
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

function ID13()
UI = "ID13"
local menu = gg.multiChoice({
"皮卡倒退改捐钱",
"针无限时间",
"自走球加速",
"道具卡13亿级",
"飞爪无限长",
"医疗包全屏",
"逃生者获取支援金币[关]",
"逃生者获取资源金币[开]",
"踩夹锁血",
"返回主页",
}, nil, "好玩功能")
if menu then
for i in pairs(menu) do
_ENV[({"lll","ll12","ll32","ll42","ll51","l1l6","l5l7","ll28","ulll","Main",})[i]]()
end
end 
end
function lll()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-4,294,967,177;4,294,967,295;8;4,294,967,295:125", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_QWORD)
	 gg.toast("皮卡倒退改捐钱")
	 gg.clearResults()
end
function ll12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("45,716,912.0;5.0;0.40000000596::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3000", gg.TYPE_FLOAT)
	 gg.toast("肾上腺素无限时间［大厅］")
	 gg.clearResults()
 end
 function ll32()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("自走球加速［大厅］")
	 gg.clearResults()
 end
 function ll42()
  gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21;-9.40121018e22;-3.69655457e20;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90340171e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("道具卡13亿级")
	 gg.clearResults()
 end
 function ll51()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;8.0;0.5;6.69999980927::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.69999980927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("200", gg.TYPE_FLOAT)
	 gg.toast("飞爪无限长度")
	 gg.clearResults()
 
 end
 function l1l6()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6.0;-0.25;0.60000002384;1.0;20.0;200.0;1.20000004768;3.0;0.20000000298::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1800", gg.TYPE_FLOAT)
	 gg.toast("医疗包全图")
	 gg.clearResults()
 end
 function l5l7()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68958525e20;-7.1608877e24;-5.9029581e21;-7.1608877e24;-5.58188404e26;-2.02910209e20;-1.30683765e21;-9.40067335e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.15697979e23::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30939601e25", gg.TYPE_FLOAT)
	 gg.toast("逃生获得支援金币［关］")
	 gg.clearResults()
 end
 function ll28()
  gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68958525e20;-7.1608877e24;-5.9029581e21;-7.1608877e24;-5.58188404e26;-1.30939601e25;-1.30683765e21;-9.40067335e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.15697979e23::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30939601e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20;-1.30939601e25", gg.TYPE_FLOAT)
	 gg.toast("逃生获得支援金币［开］")
	 gg.clearResults()
 
  end
  function ulll()
  gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.55078125F;1.0F;0.69921875F;0.5F;2.5F;0.5F;1.0F;1,103,626,240D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,103,626,240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("夹子锁血")
	 gg.clearResults()
	 end
  function Main799()
SN = gg.multiChoice({
	 "自走球移速[自调][局内开]",
	 "全员祭天",
	 "吸人[开]",
	 "开门秒逃",
	 "全图踩架",
	 "全员祭天[关]",
	 "逃生门秒开",
	 "吸人[关]",
	 "霸天斧伤害]",
	 "霸天斧打人得盾",
	 "全图踩架[关]",
	 "控制初始化[关]",
	 "踩架子得盾",
	 "返回",
}, nil, "如果想退出直接点旁边或者是确定")
if SN[1]==true then
	 HS800()
end
if SN[2]==true then
	 HS829()
end
if SN[3]==true then
	 HS817()
end
if SN[4]==true then
	 HS809()
end
if SN[5]==true then
	 HS807()
end
if SN[6]==true then
	 HS830()
end
if SN[7]==true then
	 HS801()
end
if SN[8]==true then
	 HS818()
end
if SN[9]==true then
	 HS810()
end
if SN[10]==true then
	 HS855()
end
if SN[11]==true then
	 HS808()
end
if SN[12]==true then
	 HS803()
end
if SN[13]==true then
	 HS8004()
end
if SN[14]==true then
	 Main()
end
FX1=0
end

function HS800()
	 xh = gg.prompt({i = "请输入你想要改的自走球速度"}, {i = "800"})
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("自走球速度")
	 gg.clearResults()
end

function HS829()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935022e20;-5.90526395e21;-7.15087112e24;-4.10989446e25;-1.30940708e25;-1.30683878e21;-9.40466534e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-9.38620058e22;-1.50171254e24;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30940708e25;-1.30683878e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-3.87053735e25;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("全员祭天")
	 gg.clearResults()
end

function HS817()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.16145955e24;-1.30940708e25;-1.30683878e21;-9.49143755e20;-9.40796918e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30940708e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("吸人[开]")
	 gg.clearResults()
end

function HS809()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69079137e20;-5.90756979e21;-7.15087112e24;-8.73673108e22;-7.16031585e24;-1.30928164e25;-1.30683765e21;-9.40427263e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50466474e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90340171e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("开门秒逃")
	 gg.clearResults()
end

function HS807()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-5.90526395e21;-5.90756979e21;-7.15087112e24;-1.30940708e25;-1.30683878e21;-9.49145443e20;-9.40819616e22;-3.69511342e20;-9.38603845e22;-1.50171254e24;-5.90526395e21;-1.50525518e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30940708e25;-1.30683878e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("全图踩架")
	 gg.clearResults()
end

function HS830()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935022e20;-5.90526395e21;-7.15087112e24;-4.10989446e25;-3.87053735e25;-2.02910209e20;-9.40466534e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-9.38620058e22;-1.50171254e24;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-3.87053735e25;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30940708e25;-1.30683878e21", gg.TYPE_FLOAT)
	 gg.toast("全员祭天[关]")
	 gg.clearResults()
end

function HS801()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.69078997e20;-9.38573581e22;-1.50171254e24;-7.16094304e24;-1.30928164e25;-1.30683765e21;-9.40425822e22;-3.69511342e20;-1.50171254e24;-1.50466474e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("逃生门开启[拉闸]")
	 gg.clearResults()
end

function HS818()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.16145955e24;-2.02910209e20;-1.30683878e21;-9.49143755e20;-9.40796918e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30940708e25", gg.TYPE_FLOAT)
	 gg.toast("吸人[关]")
	 gg.clearResults()
end

function HS810()
fastsearch
({{6.25,16,32},{-1.5,-8,16},{1.5,4,16},{2.25,8,16},{0.5,12,16},{1.5,-12,16},{584,-24,4},{583,-48,4}},
{{99,0,16},
{300,-48,4},
{300,-24,4},
{10,-4,16,false}})
end

function HS855()
	 fastsearch({
     {1.0141204801825835E31, 16, 32},
     {0.4000000059604645, 8, 16},
   }, {
     {999, 4, 16, false},
   },"很持久")
   fastsearch({
     {-3.064652987708566E-19, 16, 32},
     {0.11999999731779099, 8, 16},
   }, {
     {-20, 12, 16, false},
   },"射好快")
end

function HS808()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-5.90526395e21;-5.90756979e21;-5.90295867e21;-2.02910209e20;-9.49145443e20;-9.40819616e22;-3.69511342e20;-9.38603845e22;-1.50171254e24;-5.90526395e21;-1.50525518e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30940708e25;-1.30683878e21", gg.TYPE_FLOAT)
	 gg.toast("全图踩架[关]")
	 gg.clearResults()
end

function HS803()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.16094304e24;-2.02910209e20;-1.30683878e21;-9.40430505e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50466474e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30940708e25", gg.TYPE_FLOAT)
	 gg.toast("控制初始化[关]")
	 gg.clearResults()
end

function HS8004()
gg.alert("踩到架子才有效果")
fastsearch({{1103626240,4,32},{2.5,-12,16},{101,4,4}},{{1500.0,-4,16,false},{300,4,4,false},{-1,0,4},{300.0,-12,16}},"护盾buff+")
end


function KW()
local a=gg.prompt ( { '100火箭筒   110迫击炮   130冲锋枪   140能量剑   150蹦嘣枪   180能量腕炮   190霰弹枪   200唤风镖   210霸天斧   10140像素剑   10100加血枪   10150回旋镖   10160能量球   12130 自动手枪   11130滋水枪   141能量剑二级 142能量剑三级 其他以此类推   变形金刚武器:90100  90200  90300[可实战]输入武器代码','开启刷武器','间隔[局内]' , '锁子弹[大厅]','无后[大厅]'  } , { 110,1 },{'number',"checkbox","checkbox","checkbox","checkbox", } )
if a==nil  then
gg.toast("未选择")
else
if a [2] == true then
fastsearch({{841901421,4,32},{16396336,4,4},{262144,20,4}},{{a[1]*256,13,4}}) 
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x9C}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 4, value = 1}})
end

if a [3] == true then
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

if a [4] == true then
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

if a [5] == true then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end
end
end

function ZXCC()
UI = "ZXCC"
local menu = gg.multiChoice({
"无间隔",
"无后座",
".锁子弹",
"破盾",
"迫击炮子弹范围",
"迫击炮射程",
"射程",
"暴击",
"能量炮范围[自调]",
"斧子范围[自调]",
"变身攻击",
"武器秒杀",
"返回主页",
}, nil, "元气内置]")
if menu then
for i in pairs(menu) do
_ENV[({"el1","el2","el3","el4","el5","el6","el7","el8","el9","el10","rty","baq","Main",})[i]]()
end
end 
end
function el1()
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
function el2()
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
end

function el3()-----锁子弹
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

function el4()---破盾
qc=gg.alert("鞭尸","开","关")
if qc == 1 then
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
 
 if qc==2 then
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-382908368,1516,4,false},{-494030840,1520,4,false}},4,16384,"追捕破盾[关]")
end
end

function el5()
  gg.clearResults()
  gg.alert("先打一炮再开")
  fastsearch({
    {
      99,
      16,
      32
    },
    {
      2,
      -36,
      16
    },
    {
      0.20000000298023224,
      -32,
      16
    },
    {
      0.4000000059604645,
      -24,
      16
    },
    {
      0.15000000596046448,
      -20,
      16
    },
    {
      1,
      -16,
      16
    },
    {
      0.8500000238418579,
      -12,
      16
    },
    {
      2.5,
      12,
      16
    }
  }, {
    {
      5,
      -36,
      16,
      false
    }
  })
end 

function el6()
	 NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end

function el7()--子弹射程穿墙
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},})
end

function el8()--枪枪暴击
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},})
end

function el9()
 a=gg.prompt({"能量腕炮范围"})
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{a[1],4,16, false}})
gg.toast("能量腕炮范围修改为"..a[1])
end

function el10()
xjnb=gg.prompt({"斧头伤害[自调]"}, {[1] = 3}, {[1] = "text"})
qmnb = {
{["memory"] = 32},
{["name"] = "斧头伤害"},
{["value"] = 5.0, ["type"] = 16},
{["lv"] = 60.0, ["offset"] = -104, ["type"] = 16},
}
qmxg = {
{["value"] = xjnb[1], ["offset"] = -104, ["type"] = 16, ["freeze"] = false},
{["value"] = xjnb[1], ["offset"] = 24, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function rty()
fastsearch({{0.00100000005,16,16384},{-382907280,184,4}},{{-516948194,184,4,false}})
end
function baq()

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
end

----------------------------------------------固定配置








function HOME()
lw=1
Main()
end



gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		Main()
	end
end






--------脚本放上面-------------------------------------
