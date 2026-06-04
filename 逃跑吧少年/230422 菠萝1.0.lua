-- 要不要菠萝 修复 新版本直装[仅可偷不可二改[和我一样是修复直装的就没事了]]
--二改司募，二改双亲暴毙

function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--要不要菠萝防二改   
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
        --要不要菠萝防二改
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
--要不要菠萝防二改
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
			end--要不要菠萝防二改
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
--要不要菠萝防二改
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
--要不要菠萝防二改
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
end--要不要菠萝防二改
-------------------------------------------------------------------------------------------------------------<


function Main()
SN =gg.multiChoice({
"角色全皮[已复]",--1
"锁定金币[已修]",--2
"锁定道具[已复]",--3
"移动开物[已修]",--4
"攻击吸血[已修]",--5
"反弹伤害[修复]",--6
"一百发子[已复]",--7
"卡屏间隔[已复]",--8
"锁定子弹[已复]",--9
"解锁模式[已复]",--10
"解锁皮肤[已复]",--11
"道具冷却[已复]",--12
"杀死队友[已修]",--13
"免费购物[已修]",--14
"超级不死[已修]",--15
"倒地丢物[修复]",--16
"超级移速[已复]",--17
"武器秒杀[已修]",--18
"解锁道具[修复]",--19
"变身时间[没测]",--20
"裁判模式[没测]",--21
"解锁风格[已修]",--22
"枪枪暴击[已修]",--23
"超级高跳[已修]",--24
"超级透视[已修]",--25
"解锁角色[修复]",--26
"直接开门[已修]",--27
"武器无后[已修]",--28
"不卡无间[已修]",--29
"稳定锁金[已修]",--30
"子弹穿墙[已修]",--31
"无视架子[已修]",--32
"无限金币[没测]",--33
"追捕救人[没测]",--34
"无视buff[没测]",--35
"破追捕盾[已修]",--36
"全图踩架[已修]",--37
"变身攻击[已修]",--38
"全图亮透[修复]",--39
"丝血不死[已修]",--40
"A内存间隔[已修]",--41
"超级吸人[没测]",--42
"追捕开锁[修复]",--43
"开门秒逃[没测]",--44
"不掉Buff[没测]",--45
"修改段位[已修]",--46
"满级道具[已修]",--47
"跳跃开物[和谐]",--48
"观战控人[已修]",--49
"穿透伤害[没测]",--50
"自动开锁[已修]",--51
"技能免费[已修]",--52
"技能无冷[已修]",--53
"酒桶全员[已修]",--54
"激活全锁[已修]",--55
"逃生秒赢[已修]",--56
"追捕秒赢[已修]",--57
"退出脚本",
 },nil,os.date'要不要菠萝修复')
  if SN == nil then
  else
  if SN[1] == true then
    c1()
  end
  if SN[2] == true then
   c2()
  end
  if SN[3] == true then
   c3()
  end
  if SN[4] == true then
   c4()
  end
  if SN[5] == true then
   c5()
  end
  if SN[6] == true then
   c6()
  end
  if SN[7] == true then
   c7()
  end
  if SN[8] == true then
   c8()
  end
  if SN[9] == true then
   c9()
  end
  if SN[10] == true then
   c10()
  end
  if SN[11] == true then
   c11()
  end
  if SN[12] == true then
   c12()
  end
  if SN[13] == true then
   c13()
  end
  if SN[14] == true then
   c14()
  end
  if SN[15] == true then
   c15()
  end
  if SN[16] == true then
   c16()
  end
  if SN[17] == true then
   c17()
  end
  if SN[18] == true then
   c18()
  end
  if SN[19] == true then
   c19()
  end
  if SN[20] == true then
   c20()
  end
  if SN[21] == true then
   c21()
  end
  if SN[22] == true then
   c22()
  end
  if SN[23] == true then
   c23()
  end
  if SN[24] == true then
   c24()
  end
  if SN[25] == true then
   c25()
  end
  if SN[26] == true then
   c26()
  end
  if SN[27] == true then
   c27()
  end
  if SN[28] == true then
   c28()
  end
  if SN[29] == true then
   c29()
  end
  if SN[30] == true then
   c30()
  end
  if SN[31] == true then
   c31()
  end
  if SN[32] == true then
   c32()
  end
  if SN[33] == true then
   c33()
  end
  if SN[34] == true then
   c34()
  end
  if SN[35] == true then
   c35()
  end
  if SN[36] == true then
   c36()
  end
  if SN[37] == true then
   c37()
  end
  if SN[38] == true then
   c38()
  end
  if SN[39] == true then
   c39()
  end
  if SN[40] == true then
   c40()
  end
  if SN[41] == true then
   c41()
  end
  if SN[42] == true then
   c42()
  end
  if SN[43] == true then
   c43()
  end
  if SN[44] == true then
   c44()
  end
  if SN[45] == true then
   c45()
  end
  if SN[46] == true then
   c46()
  end
  if SN[47] == true then
   c47()
  end
  if SN[48] == true then
   c48()
  end
  if SN[49] == true then
   c49()
  end
 if SN[50] == true then
   c50()
  end
 if SN[51] == true then
   c51()
  end
 if SN[52] == true then
   c52()
  end
 if SN[53] == true then
   c53()
 if SN[54] == true then
   c54()
  end
 if SN[55] == true then
   c55()
  end
  if SN[56] == true then
   c56()
  end
  if SN[57] == true then
   c57()
  end
 if SN[58] == true then
os.exit()   
  end
end
  XGCK = -1
end
end

function c1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea31d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea31d4},})
end

function c2()--锁金币--方法名RpcSubCoin
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x3143a6c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3143a70},})
end     

function c3()--锁道具--方法名CostCard
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1e07618},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1e0761c},})
end

function c4()--移动开物--方法名EndUsing
yw=gg.alert("移动开物","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()
end
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT)
	 gg.toast("移动开物关")
	 gg.clearResults()
end
end

function c5()--攻击吸血--get_BloodSucking
readWrite({{false,295731200,0,4,nil,nil},{-481296384,1932,4},{436207620,1936,4},{-442564508,1940,4}},{{-476052411,1908,4,false},{-516948194,1912,4,false}},4,16384,"攻击吸血")end

function c6()--反弹伤害--方法名get_DamageReflect
nc_offset(getso("libil2cpp.so"),{{-482082700,4,0x1b148d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b148d8},})
end

function c7()--基扯改子弹--方法名get_MaxRoundCount
nc_offset(getso("libil2cpp.so"),{{-476053404,4,0xf3d288},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d28c},})
end

function c8()--无间隔--方法名get_CooldownGain
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b13ebc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13ec0},})
end

function c9()--锁子弹--方法名get_CostFree
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end    

function c10()--解锁模式--方法名GetGameModeIsGradeLimit
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfe2394},})
end     

function c11()--道具皮肤--方法名OwnCardSkin
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b5141c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51420},})
end     

function c12()--道具无CD--方法名GetRemainedCooldownTime
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1f3aac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3aac8},})
end

function c13()--杀队友
yw=gg.alert("猎杀队友","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-1.30928164e25;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("猎杀队友")
	 gg.clearResults()
end
if yw==2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.50171254e24;-3.68935339e20;-3.92915649e21;-3.68935057e20;-5.90526395e21;-2.02910209e20;-1.30683765e21;-9.40071658e22;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25", gg.TYPE_FLOAT)
	 gg.toast("猎杀队友")
	 gg.clearResults()
end
end

function c14()--免费购物--方法名GetCardPrice
yw=gg.alert("超级免费购物","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-1.30928164e25;-1.30683765e21;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("免费购物")
	 gg.clearResults()
end
if yw==2 then
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-3.68935022e20;-2.02910561e20;-8.74019344e22;-7.4363437e19;-7.16031585e24;-5.90295867e21;-2.02910209e20;-9.40422939e22;-3.69511342e20;-8.26140755e19;-1.25733008e23;-3.83692277e21;-1.50171254e24;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.90295867e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30928164e25;-1.30683765e21", gg.TYPE_FLOAT)
	 gg.toast("免费购物关")
	 gg.clearResults()
end
end

function c15()--不死--方法名DamageShield
yw=gg.alert("超级不死","开启","关闭")
if yw==1 then 
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-1.30939232e25;-1.3068399e21;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("人物无敌")
	 gg.clearResults()
end
if yw==2 then  
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25144045e23;-7.16031585e24;-5.9029581e21;-2.02910209e20;-3.69511342e20;-3.69655493e20;-1.26323303e23;-3.83692277e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.30939232e25;-1.3068399e21", gg.TYPE_FLOAT)
	 gg.toast("人物无敌关")
	 gg.clearResults()
end
end

function c16()--倒地丢道具--方法名Boolean get_Disabled()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f2eac4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f2eac8},})
end

function c17()--超级移速--方法名get_SpeedGain
nc_offset(getso("libil2cpp.so"),{{-476052417,4,0x1b13e18},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13e1c},})
end     

function c18()--武器秒杀--方法名get_Attack
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

function c19()--解锁道具--方法名IsOwned
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},})
end

function c20()--无限变身时间--方法名EndShapeShift
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x3c706ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x3c706b0},})
end

function c21()--裁判模式--方法名set_PlayingRole
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b13d7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13d80},})
end

function c22()--解锁风格--方法名OwnCardStyle
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b51c68},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b51c68},})
end

function c23()--枪枪暴击--方法名RealTeammateAttack
gg.alert("局内开启")
fastsearch
({
{8388578.5,16,16384},
{0,336,16},
},
{
{1,336,16,false}})
end

function c24()--超级高跳--方法名get_JumpGain
nc_offset(getso("libil2cpp.so"),{{-476052415,4,0x1b13f50},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b13f54},})
end     

function c25()--超级透视--方法名get_IsVisible
yw=gg.alert("超级透视","开启","关闭")
if yw==1 then
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("128.00001525879;-128.00001525879;0.30000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("超级透视")
	 gg.clearResults()
end
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("128.00001525879;-128.00001525879;-1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.30000001192", gg.TYPE_FLOAT)
	 gg.toast("超级透视关")
	 gg.clearResults()
end
end	

function c26()--全角色--方法名IsOwnCharacter
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xea5158},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xea515c},})
end     

function c27()--直接开门--方法名get_IsOpend
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x20db674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db678},})
end

function c28()--无后
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

function c29()--全武器间隔--方法名1-get_FireCooldownTime方法名2-get_FireCooldownTimeRatio
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf49d88},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf49d8c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end

function c30()--稳定锁金--方法名FinishBuy
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1f3daec},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f3daf0},})
end     

function c31()--子弹穿墙--方法名RpcFinishProjectile
readWrite({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"子弹穿墙")end

function c32()--无视架子--方法名get_IsInvincible
fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
   end

function c33()--无限金币--方法名get_CoinNum
nc_offset(getso("libil2cpp.so"),{{-471858942,4,0x1f401d8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f401dc},})
end     

function c34()--追捕救人--方法名IsPoliceLike
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfdc1ac},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xfdc1b0},})
end

function c35()--无视buff--方法名GetBuffById
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.54742062e26;-9.38577544e22;-3.69079137e20;-1.50171254e24;-3.68935198e20;-3.68935198e20;-9.39921227e20;-7.16145955e24;-1.30951038e25;-1.30684047e21;-9.4914291e20;-9.40125702e22;-3.70087803e20;-8.2578038e19;-1.25142712e23;-3.83692277e21;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30951038e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("无视buff")
	 gg.clearResults()
end

function c36()--无视护盾
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

function c37()--全图踩架
yw=gg.alert("全图踩架","开启","关闭")
if yw==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("74732764;-382907280;-494030832::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382907280;-494030832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-476053503;-516948194", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end  
if yw==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("74732764;-476053503;-516948194::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-476053503;-516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382907280;-494030832", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
end

function c38()--变身攻击--方法名SpawnFireProjectileOrder
fastsearch--变身攻击
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end

function c39()--亮透--方法名get_DisableFogVisual
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},})
end

function c40()--丝血不死--方法名get_IsDying
yw=gg.alert("丝血不死","开启","关闭")
if yw==1 then 
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
if yw==2 then 
qmnb = {
{["memory"] = 32},
{["name"] = "丝血不死"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 100.0, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},   
}
xqmnb(qmnb)
end
end

function c41()--a内存全武器无间隔
local t = {"libil2cpp.so", "Cd"}
local tt = {0x20F0C4, 0x5C, 0x90, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
gg.toast('修改成功')
end

function c42()--吸人--方法名SetEnablePhysics
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17e1380},})
end

function c43()--追捕开锁
fastsearch
({
{-0.00195311918,16,16384},
{-382908368,-548,4},
{-494030840,-544,4}
},
{
{-516948194,-548,4,false}})
end

function c44()--开门秒逃--方法名get_Radius
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x4ac39a4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x4ac39a8},})
end     

function c45()--死亡不掉Buff--方法名LocalClearAllBuffAndDebuff
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1b1216c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12170},})
end     

function c46()--修改段位
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-36,4,false}},4,32,"开启成功")
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-44,4,false}},4,32,"开启成功")
end

function c47()--满级道具--方法名GetCardLevel
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4d630},})
end     

function c48()--跳跃移动--方法名RpcEndUsing
gg.alert("被和谐了所以用移动开物")
end

function c49()--观战控人--方法名protected Void Start
yw=gg.alert("观战控人","开启","关闭")
if yw==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd52374},})
end
if yw==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xd52374},})
end
end

function c50()--额外伤害--方法名get_Target
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x38e8240},})
end

function c51()--自动开锁--方法名1--CalculateResult--方法名2--CheckResultable--方法名3--get_CanTrigger
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5ebf8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5ebf8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xc5eb64},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5eb68},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xc5f108},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xc5f108+4},})
end

function c52()--角色技能免费--方法名1--get_CoinCost--方法名2--CostCoin
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

function c53()--角色技能无冷--方法名1--ReduceCoolingDown--方法名2--CanStartSkill--方法名3--get_ChargeProgress--方法名4--get_Cooldown--方法名5--get_Activating
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

function c54()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x12c3eb8+4},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x12c3eb8},})
end

function c55()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x177b60c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x177b610},})
end

function c56()--逃生秒赢--方法名1--get_GameTime改~A MOV R0, #66, 8;~A BX LR--方法名2--get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--方法名3--get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--方法名4--get_EscapedThiefCount改~A MOVW R0, #0;~A BX LR--方法名5--get_IsOpend改~A MOV R0, #1;~A BX LR--方法名6--UpdateMaxLife-Update改~A MOV R0, #0 BX LR
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

function c57()--追捕秒赢--方法名1--get_StillPlayingThiefCount改~A MOV R0 #0;~A BX LR--方法名2--get_FinalCapturedThiefCount改~A MOVT R0 #20;~A BX LR--方法名3--get_RemainedThiefCount改~A MOV R0 #0;~A BX LR--方法名4--get_KnockDownNum改~A MOVt R0, #999;~A BX LR--方法名5--get_TotalDamage改~A MOV R0, #1157627904;~A BX LR--方法名6--get_GameTime改~A MOVT R0, #17250;~A BX LR--方法名7--get_RealCapturedThiefCount改~A MOV R0 #20;~A BX LR--方法名8--get_SuvivingThiefCount改~A MOV R0 #50;~A BX LR
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

function Exit()
os.exit()
end
cs = ""
--要不要菠萝防二改

while true do
  if gg.isVisible(true) then
    XGCK = -1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == -1 then
    Main()
  end
end