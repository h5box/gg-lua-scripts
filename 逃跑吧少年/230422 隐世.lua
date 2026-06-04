gg.alert("欢迎来到隐世9.0脚本，本版本支持8.14.1逃少版本哦！\n注意一定要配防，特别是防人工，不然打一把必封")

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."注入成功，祝您游戏玩的愉快") end
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
		gg.toast("已修改" .. (#tb[1] + #tb[2]) .. "个值，祝您游戏愉快！")
		else
			gg.toast("警告⚠️:没有值可修改")
		end
	end
end
function tgnb(Search, Get, Type, Range, Name)
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

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
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
---------------------------------------------------------------------------------------------------
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------



function Main()
menu = gg.choice({
	 "防闪防封1[隐世独家]",
	 "防闪与拉闸",
	 "防封3[隐世独家]",
	 "防封4[隐世独家]",
	 "防封5[隐世独家]",
	 "逃生稳定[一键开启]",
	 "追捕稳定",
	 "直装功能",
	  "buff功能",
	  "武器连发[自调]",
	  "自调功能",
	  "换卡功能",
	  "人物踏空",
       "️️退出",
}, nil, os.date("隐世制作"))
if menu == 1 then q() end
if menu == 2 then TS() end
if menu == 3 then A() end
if menu == 4 then C() end
if menu == 5 then pa3() end
if menu == 6 then a3() end
if menu == 7 then AWD() end
if menu == 8 then XZC() end
if menu == 9 then NHJ() end
if menu == 10 then a9() end
if menu == 11 then B1() end
if menu == 12 then G() end
if menu == 13 then a6() end
if menu == 14 then TC() end
XGCK=-1
end

function pa3()--这是功能3的
--功能放这里
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
gg.toast("防封开启成功")
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
gg.toast("防封开启成功")
end
end


function q()
menu1 = gg.multiChoice({
"登录防闪",
"防追封",
"打榜防",
"防检测",
"防举报",
"xa全防",
"防人工",
"防异常",
"️返回主页️",
}, nil, "防闪和防封，不建议全开哈，闪退了不能怪我")
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
end
GLWW=-1
end

function q1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function q2()
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
	 gg.toast("清理防追封成功无明为您保驾护航")
end

function q3()
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

function q4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()
gg.searchNumber("4554", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4554", gg.TYPE_DWORD)
gg.toast("防检测开启成功")
gg.clearResults()
end

function q5()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（一局一开）")
	 gg.clearResults()
	end 
	
function q6()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("535146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启13%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
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
	 gg.toast("开启100%")
	 gg.clearResults()
    gg.clearResults()
gg.toast("已注入")
end

function q7()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--夏天
xtnb({{false,33554432,0,4,nil,nil}},{{0,0,4,false}},4,16384,"防人工")
end

function q8()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("33,554,560", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = "-1"
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("33,554,880", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = "-1"
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  end

function q9()
print("留名隐世，禁止二改")
lw=1
Main()
end

function A()
menu1 = gg.multiChoice({
"防举报[大厅或结算开启]",
"杀检测[全局开启]",
"️返 回 主 页",
}, nil, os.date("一局一开，可能会闪退"))
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
end
GLWW=-1
end

function g1()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（一局一开）")
	 gg.clearResults()
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

function g2()

if gg.getRangesList("libqhsdk.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xA94; -- 数值地址:0xCE0E9A94
	t[2] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xAA0; -- 数值地址:0xCE0E9AA0
	t[3] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xAF4; -- 数值地址:0xCE0E9AF4
	t[4] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xB50; -- 数值地址:0xCE0E9B50
	t[5] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xB5C; -- 数值地址:0xCE0E9B5C
	t[6] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xB94; -- 数值地址:0xCE0E9B94
	t[7] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0xBFC; -- 数值地址:0xCE0E9BFC
	t[8] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1D90; -- 数值地址:0xCE0EAD90
	t[9] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1DE0; -- 数值地址:0xCE0EADE0
	t[10] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EB0; -- 数值地址:0xCE0EAEB0
	t[11] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EB8; -- 数值地址:0xCE0EAEB8
	t[12] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EEC; -- 数值地址:0xCE0EAEEC
	t[13] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1EF0; -- 数值地址:0xCE0EAEF0
	t[14] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F00; -- 数值地址:0xCE0EAF00
	t[15] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F10; -- 数值地址:0xCE0EAF10
	t[16] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F18; -- 数值地址:0xCE0EAF18
	t[17] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F20; -- 数值地址:0xCE0EAF20
	t[18] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F28; -- 数值地址:0xCE0EAF28
	t[19] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F30; -- 数值地址:0xCE0EAF30
	t[20] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F38; -- 数值地址:0xCE0EAF38
	t[21] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F64; -- 数值地址:0xCE0EAF64
	t[22] = gg.getRangesList("libqhsdk.so")[1]["start"] + 0x1F7C; -- 数值地址:0xCE0EAF7C
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 0,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("105开启成功")
end
if gg.getRangesList("libtprt.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADF78; -- 数值地址:0xCE252F78
	t[2] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADF7C; -- 数值地址:0xCE252F7C
	t[3] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADF80; -- 数值地址:0xCE252F80
	t[4] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFCC; -- 数值地址:0xCE252FCC
	t[5] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFD4; -- 数值地址:0xCE252FD4
	t[6] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFDC; -- 数值地址:0xCE252FDC
	t[7] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFE4; -- 数值地址:0xCE252FE4
	t[8] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFEC; -- 数值地址:0xCE252FEC
	t[9] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFF4; -- 数值地址:0xCE252FF4
	t[10] = gg.getRangesList("libtprt.so")[1]["start"] + 0xADFFC; -- 数值地址:0xCE252FFC
	t[11] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE004; -- 数值地址:0xCE253004
	t[12] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE008; -- 数值地址:0xCE253008
	t[13] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE00C; -- 数值地址:0xCE25300C
	t[14] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE010; -- 数值地址:0xCE253010
	t[15] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE014; -- 数值地址:0xCE253014
	t[16] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0A0; -- 数值地址:0xCE2530A0
	t[17] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0A4; -- 数值地址:0xCE2530A4
	t[18] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0A8; -- 数值地址:0xCE2530A8
	t[19] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0AC; -- 数值地址:0xCE2530AC
	t[20] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0B0; -- 数值地址:0xCE2530B0
	t[21] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0B4; -- 数值地址:0xCE2530B4
	t[22] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0B8; -- 数值地址:0xCE2530B8
	t[23] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0BC; -- 数值地址:0xCE2530BC
	t[24] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0C0; -- 数值地址:0xCE2530C0
	t[25] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0C4; -- 数值地址:0xCE2530C4
	t[26] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0C8; -- 数值地址:0xCE2530C8
	t[27] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0CC; -- 数值地址:0xCE2530CC
	t[28] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0D0; -- 数值地址:0xCE2530D0
	t[29] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0D4; -- 数值地址:0xCE2530D4
	t[30] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0D8; -- 数值地址:0xCE2530D8
	t[31] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0DC; -- 数值地址:0xCE2530DC
	t[32] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0E0; -- 数值地址:0xCE2530E0
	t[33] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0E4; -- 数值地址:0xCE2530E4
	t[34] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0E8; -- 数值地址:0xCE2530E8
	t[35] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0EC; -- 数值地址:0xCE2530EC
	t[36] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE0FC; -- 数值地址:0xCE2530FC
	t[37] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE100; -- 数值地址:0xCE253100
	t[38] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE104; -- 数值地址:0xCE253104
	t[39] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE108; -- 数值地址:0xCE253108
	t[40] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE10C; -- 数值地址:0xCE25310C
	t[41] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE110; -- 数值地址:0xCE253110
	t[42] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE184; -- 数值地址:0xCE253184
	t[43] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE188; -- 数值地址:0xCE253188
	t[44] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE18C; -- 数值地址:0xCE25318C
	t[45] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE190; -- 数值地址:0xCE253190
	t[46] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE194; -- 数值地址:0xCE253194
	t[47] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE198; -- 数值地址:0xCE253198
	t[48] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE19C; -- 数值地址:0xCE25319C
	t[49] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1A0; -- 数值地址:0xCE2531A0
	t[50] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1A4; -- 数值地址:0xCE2531A4
	t[51] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1A8; -- 数值地址:0xCE2531A8
	t[52] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1AC; -- 数值地址:0xCE2531AC
	t[53] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1B0; -- 数值地址:0xCE2531B0
	t[54] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1B4; -- 数值地址:0xCE2531B4
	t[55] = gg.getRangesList("libtprt.so")[1]["start"] + 0xAE1B8; -- 数值地址:0xCE2531B8
	t[56] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F58; -- 数值地址:0xCE25BF58
	t[57] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F5C; -- 数值地址:0xCE25BF5C
	t[58] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F60; -- 数值地址:0xCE25BF60
	t[59] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F64; -- 数值地址:0xCE25BF64
	t[60] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F68; -- 数值地址:0xCE25BF68
	t[61] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F6C; -- 数值地址:0xCE25BF6C
	t[62] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F70; -- 数值地址:0xCE25BF70
	t[63] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F98; -- 数值地址:0xCE25BF98
	t[64] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6F9C; -- 数值地址:0xCE25BF9C
	t[65] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FA0; -- 数值地址:0xCE25BFA0
	t[66] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FA4; -- 数值地址:0xCE25BFA4
	t[67] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FA8; -- 数值地址:0xCE25BFA8
	t[68] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FAC; -- 数值地址:0xCE25BFAC
	t[69] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FB0; -- 数值地址:0xCE25BFB0
	t[70] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FE8; -- 数值地址:0xCE25BFE8
	t[71] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FEC; -- 数值地址:0xCE25BFEC
	t[72] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FF0; -- 数值地址:0xCE25BFF0
	t[73] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FF4; -- 数值地址:0xCE25BFF4
	t[74] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FF8; -- 数值地址:0xCE25BFF8
	t[75] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB6FFC; -- 数值地址:0xCE25BFFC
	t[76] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7000; -- 数值地址:0xCE25C000
	t[77] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7008; -- 数值地址:0xCE25C008
	t[78] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7014; -- 数值地址:0xCE25C014
	t[79] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7018; -- 数值地址:0xCE25C018
	t[80] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7024; -- 数值地址:0xCE25C024
	t[81] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7028; -- 数值地址:0xCE25C028
	t[82] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7034; -- 数值地址:0xCE25C034
	t[83] = gg.getRangesList("libtprt.so")[1]["start"] + 0xB7038; -- 数值地址:0xCE25C038
	gg.setValues({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
		},
		[2] = { 
			address = t[2],
			flags = 4,
			value = 0,
		},
		[3] = { 
			address = t[3],
			flags = 4,
			value = 0,
		},
		[4] = { 
			address = t[4],
			flags = 4,
			value = 0,
		},
		[5] = { 
			address = t[5],
			flags = 4,
			value = 0,
		},
		[6] = { 
			address = t[6],
			flags = 4,
			value = 0,
		},
		[7] = { 
			address = t[7],
			flags = 4,
			value = 0,
		},
		[8] = { 
			address = t[8],
			flags = 4,
			value = 0,
		},
		[9] = { 
			address = t[9],
			flags = 4,
			value = 0,
		},
		[10] = { 
			address = t[10],
			flags = 4,
			value = 0,
		},
		[11] = { 
			address = t[11],
			flags = 4,
			value = 0,
		},
		[12] = { 
			address = t[12],
			flags = 4,
			value = 0,
		},
		[13] = { 
			address = t[13],
			flags = 4,
			value = 0,
		},
		[14] = { 
			address = t[14],
			flags = 4,
			value = 0,
		},
		[15] = { 
			address = t[15],
			flags = 4,
			value = 0,
		},
		[16] = { 
			address = t[16],
			flags = 4,
			value = 0,
		},
		[17] = { 
			address = t[17],
			flags = 4,
			value = 0,
		},
		[18] = { 
			address = t[18],
			flags = 4,
			value = 0,
		},
		[19] = { 
			address = t[19],
			flags = 4,
			value = 0,
		},
		[20] = { 
			address = t[20],
			flags = 4,
			value = 0,
		},
		[21] = { 
			address = t[21],
			flags = 4,
			value = 0,
		},
		[22] = { 
			address = t[22],
			flags = 4,
			value = 0,
		},
		[23] = { 
			address = t[23],
			flags = 4,
			value = 0,
		},
		[24] = { 
			address = t[24],
			flags = 4,
			value = 0,
		},
		[25] = { 
			address = t[25],
			flags = 4,
			value = 0,
		},
		[26] = { 
			address = t[26],
			flags = 4,
			value = 0,
		},
		[27] = { 
			address = t[27],
			flags = 4,
			value = 0,
		},
		[28] = { 
			address = t[28],
			flags = 4,
			value = 0,
		},
		[29] = { 
			address = t[29],
			flags = 4,
			value = 0,
		},
		[30] = { 
			address = t[30],
			flags = 4,
			value = 0,
		},
		[31] = { 
			address = t[31],
			flags = 4,
			value = 0,
		},
		[32] = { 
			address = t[32],
			flags = 4,
			value = 0,
		},
		[33] = { 
			address = t[33],
			flags = 4,
			value = 0,
		},
		[34] = { 
			address = t[34],
			flags = 4,
			value = 0,
		},
		[35] = { 
			address = t[35],
			flags = 4,
			value = 0,
		},
		[36] = { 
			address = t[36],
			flags = 4,
			value = 0,
		},
		[37] = { 
			address = t[37],
			flags = 4,
			value = 0,
		},
		[38] = { 
			address = t[38],
			flags = 4,
			value = 0,
		},
		[39] = { 
			address = t[39],
			flags = 4,
			value = 0,
		},
		[40] = { 
			address = t[40],
			flags = 4,
			value = 0,
		},
		[41] = { 
			address = t[41],
			flags = 4,
			value = 0,
		},
		[42] = { 
			address = t[42],
			flags = 4,
			value = 0,
		},
		[43] = { 
			address = t[43],
			flags = 4,
			value = 0,
		},
		[44] = { 
			address = t[44],
			flags = 4,
			value = 0,
		},
		[45] = { 
			address = t[45],
			flags = 4,
			value = 0,
		},
		[46] = { 
			address = t[46],
			flags = 4,
			value = 0,
		},
		[47] = { 
			address = t[47],
			flags = 4,
			value = 0,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 0,
		},
		[49] = { 
			address = t[49],
			flags = 4,
			value = 0,
		},
		[50] = { 
			address = t[50],
			flags = 4,
			value = 0,
		},
		[51] = { 
			address = t[51],
			flags = 4,
			value = 0,
		},
		[52] = { 
			address = t[52],
			flags = 4,
			value = 0,
		},
		[53] = { 
			address = t[53],
			flags = 4,
			value = 0,
		},
		[54] = { 
			address = t[54],
			flags = 4,
			value = 0,
		},
		[55] = { 
			address = t[55],
			flags = 4,
			value = 0,
		},
		[56] = { 
			address = t[56],
			flags = 4,
			value = 0,
		},
		[57] = { 
			address = t[57],
			flags = 4,
			value = 0,
		},
		[58] = { 
			address = t[58],
			flags = 4,
			value = 0,
		},
		[59] = { 
			address = t[59],
			flags = 4,
			value = 0,
		},
		[60] = { 
			address = t[60],
			flags = 4,
			value = 0,
		},
		[61] = { 
			address = t[61],
			flags = 4,
			value = 0,
		},
		[62] = { 
			address = t[62],
			flags = 4,
			value = 0,
		},
		[63] = { 
			address = t[63],
			flags = 4,
			value = 0,
		},
		[64] = { 
			address = t[64],
			flags = 4,
			value = 0,
		},
		[65] = { 
			address = t[65],
			flags = 4,
			value = 0,
		},
		[66] = { 
			address = t[66],
			flags = 4,
			value = 0,
		},
		[67] = { 
			address = t[67],
			flags = 4,
			value = 0,
		},
		[68] = { 
			address = t[68],
			flags = 4,
			value = 0,
		},
		[69] = { 
			address = t[69],
			flags = 4,
			value = 0,
		},
		[70] = { 
			address = t[70],
			flags = 4,
			value = 0,
		},
		[71] = { 
			address = t[71],
			flags = 4,
			value = 0,
		},
		[72] = { 
			address = t[72],
			flags = 4,
			value = 0,
		},
		[73] = { 
			address = t[73],
			flags = 4,
			value = 0,
		},
		[74] = { 
			address = t[74],
			flags = 4,
			value = 0,
		},
		[75] = { 
			address = t[75],
			flags = 4,
			value = 0,
		},
		[76] = { 
			address = t[76],
			flags = 4,
			value = 0,
		},
		[77] = { 
			address = t[77],
			flags = 4,
			value = 0,
		},
		[78] = { 
			address = t[78],
			flags = 4,
			value = 0,
		},
		[79] = { 
			address = t[79],
			flags = 4,
			value = 0,
		},
		[80] = { 
			address = t[80],
			flags = 4,
			value = 0,
		},
		[81] = { 
			address = t[81],
			flags = 4,
			value = 0,
		},
		[82] = { 
			address = t[82],
			flags = 4,
			value = 0,
		},
		[83] = { 
			address = t[83],
			flags = 4,
			value = 0,
		},
	})
	gg.toast("隐世独家杀检测")
fastsearch({{1987539786,4,4}},{{0,0,4,true}})
fastsearch({{1398036289,4,4}},{{0,0,4,true}})
fastsearch({{574169904,4,4}},{{0,0,4,true}})
fastsearch({{1629954853,4,4}},{{0,0,4,true}})
fastsearch({{1463904086,4,4}},{{0,0,4,true}})
fastsearch({{639645488,4,4}},{{0,0,4,true}})
fastsearch({{588650008,4,4}},{{0,0,4,true}})
fastsearch({{959784737,4,4}},{{0,0,4,true}})
end
end


function g3()
print("留名隐世，禁止二改")
lw=1
Main()
end



function TS()
menu1 = gg.multiChoice({
"防闪(8.14.0)",
"开了100%拉闸",
"待更新",
"待更新",
"待更新",
"待更新",
"️返回主页️",
}, nil, os.date("隐世制作，拉闸是不明功能，不建议打开，如打开了请立即中断脚本"))
if menu1 == nil then else
if menu1[1] == true then ts1() end
if menu1[2] == true then ts2() end
if menu1[3] == true then pa3() end
if menu1[4] == true then ts4() end
if menu1[5] == true then ts5() end
if menu1[6] == true then ts6() end
end
GLWW=-1
end

function ts1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function ts2()--这是功能2的
--功能放这里
  gg.clearResults()
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("拉闸开启％10.")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("拉闸开启％20")
  gg.toast("拉闸开启％40")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除防封文件中％50")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("内存拉闸％60")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = "0"
      }
    })
  end
  gg.toast("内存检测防封正在删除％90")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = "0"
      }
    })
  end
  gg.toast("％100拉闸开启成功！")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
end

function pa3()--这是功能3的
--功能放这里
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
gg.toast("防封开启成功")
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
gg.toast("防封开启成功")
end
end

function ts4()--这是功能4的
--功能放这里
end


function ts5()--这是功能5的
--功能放这里
end

function ts6()--这是功能6的
print("留名隐世，禁止二改")
lw=1
Main()
end


function a3()
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

    qmnb = {
      {["memory"] = 32},
      {["name"] = "医疗包范围"},--医疗包范围
      {["value"] = 1128792064, ["type"] = 32},
      {["lv"] = 1067030938, ["offset"] = 8, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 1082130432, ["offset"] = 8, ["type"] = 4},
    }
    xqmnb(qmnb)

fastsearch--移动开物可跳
({
{-444186608,4,16384},
{-382906384,28,4},
{167772164,192,4}
},
{
{-516948194,28,4,false}})

fastsearch({{25.0, 16, 32},{1.0, -4, 16},{0.5, -8, 16},{2.5, -12, 16}},{{0.0, -4, 16},{520,-12,16,false}})
end--无视夹子

function C()
menu1 = gg.multiChoice({
"防举报[大厅或结算开启]",
"普防",
"杀检测[全局开启]",
"大厅防举报",
"16进制防封开启",
"️返 回 主 页",
}, nil, os.date("一局一开，可能会闪退"))
if menu1 == nil then else
if menu1[1] == true then g4() end
if menu1[2] == true then g5() end
if menu1[3] == true then g6() end
if menu1[4] == true then c1() end
if menu1[5] == true then c3() end
if menu1[6] == true then g7() end
end
GLWW=-1
end

function g4()
gg.setRanges(262207)
gg.searchNumber('4554', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('4554',4)
gg.toast('防检测开启成功')
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（一局一开）")
	 gg.clearResults()
end

function g5()
gg.alert("过检测，在登录界面或者大厅开启")
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
gg.toast("过检测成功")
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.19902326e12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("防封开启成功")
	 gg.clearResults()
end

function g6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("361,418,272,974,897,152;84,149,249;361,418,272,453,099,520;361,418,272,522,109,953;15,621,861,291,590,657;120,330,552,598,855,681:73", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("361418272522109953", gg.TYPE_QWORD)
	 gg.toast("a防开启")
	 gg.clearResults()
end

function g7()
print("留名隐世，禁止二改")
lw=1
Main()
end


function AWD()
menu1 = gg.multiChoice({
"3.6倍速度",
"人物亮透",
"️待更新",
"️待更新",
"️待更新",
"️待更新",
"️返回大厅",
}, nil, os.date("隐世制作"))
if menu1 == nil then else
if menu1[1] == true then awd1() end
if menu1[2] == true then awd2() end
if menu1[3] == true then awd3() end
if menu1[4] == true then awd4() end
if menu1[5] == true then awd5() end
if menu1[6] == true then awd6() end
end
GLWW=-1
end

function awd1()
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

function awd2()
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


function awd3()--这是功能3的
--功能放这里
end


function awd4()--这是功能4的
--功能放这里
end

function awd5()--这是功能5的
--功能放这里
end


function awd6()--这是功能6的
--功能放这里
print("留名隐世，禁止二改")
lw=1
Main()
end


function XZC()
menu1 = gg.multiChoice({
"移动开物(不可跳)",
"锁定子弹",
"解锁模式",
"击倒队友",
"人物穿墙",
"人物爬墙",
"倒地复活",
"零血不死",
"角色皮肤",
"️返回主页️",
}, nil, os.date("隐世制作"))
if menu1 == nil then else
if menu1[1] == true then xzc1() end
if menu1[2] == true then xzc2() end
if menu1[3] == true then T21() end
if menu1[4] == true then nm15() end
if menu1[5] == true then b19() end
if menu1[6] == true then b20() end
if menu1[7] == true then q9() end
if menu1[8] == true then lxbs() end
if menu1[9] == true then jspf() end
if menu1[10] == true then bf3() end
end
GLWW=-1
end

function xzc1()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()
end


function xzc2()--这是功能2的
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},})
end

function T21()--这是功能3的
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},})
end

function nm15()--杀死傻逼队友
 lj =gg.alert("杀队友","开启","关闭")
fastsearch({{104, 4, 16384}, {104, 4,4}, {-382908368, -1564,4 }}, {{-516948194,-1564,4}})
end

function jspf()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1076760},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
end


function b19()
qmnb = {
      {["memory"] = 32},
      {["name"] = "人物穿墙"},
      {["value"] = -10.0, ["type"] = 16},
      {["lv"] = 0, ["offset"] = 28, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 36, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 80, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 999999, ["offset"] = 0, ["type"] = 16,},
    }
    xqmnb(qmnb)
end

function b20()
qc=gg.alert("爬墙","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD9F1A8},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{0.94999998808,16,0xD9F1A8},})
end
end

function q9()
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

function lxbs()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xD567E8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD567EC},})
end


function bf3()
print("留名隐世，禁止二改")
lw=1
Main()
end


function NHJ()
menu1 = gg.multiChoice({
"疾跑改无敌buff",
"待更新",
"待更新",
"待更新",
"待更新",
"待更新",
"️返回主页️",
}, nil, os.date("隐世制作"))
if menu1 == nil then else
if menu1[1] == true then nhj1() end
if menu1[2] == true then nhj2() end
if menu1[3] == true then nhj3() end
if menu1[4] == true then nhj4() end
if menu1[5] == true then nhj5() end
if menu1[6] == true then nhj6() end
end
GLWW=-1
end

function nhj1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function nhj2()--这是功能2的
--功能放这
end

function nhj3()--这是功能3的
--功能放这
end

function nhj4()--这是功能4的
--功能放这
end

function nhj5()--这是功能5的
--功能放这
end

function nhj6()--这是功能6的
--功能放这
end

function nhj6()
print("留名隐世，禁止二改")
lw=1
Main()
end

function a9()
menu1 = gg.multiChoice({
  "蹦蹦枪连发『自调』",
  "火箭筒连发『自调』",
  "能量剑连发『自调』",
  "迫击炮1级连发『自调』",
  "返回主页",
}, nil, os.date("lf"))
if menu1 == nil then else
if menu1[1] == true then lf1() end
if menu1[2] == true then nm16() end
if menu1[3] == true then lf3() end
if menu1[4] == true then lf4() end
if menu1[5] == true then lf5() end
end
GLWW=-1
end
function lf1()
 Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) nh({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) nh({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) nh({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end end

function nm16()--火箭筒连发
 Nh=gg.alert("火箭筒","普通","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) nh({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) nh({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end

function lf3()
 Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) nh({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) nh({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) nh({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
 
function lf4()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) nh({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end 


 function lf5()
print("留名隐世，尊重原创")
lw=1
Main()
end

function B1()
menu1 = gg.multiChoice({
"手雷范围",
"医疗箱范围",
"针改移速攻速",
"腕炮范围",
"腕炮射程",
"迫击炮范围",
"迫击炮攻速",
"小飞机功能",
"传送门一套",
"皮卡变身",
"返回主页",
}, nil, os.date("自调功能,部分功能可能用不了，可以反馈于我，有时间会修复！"))
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
end
GLWW=-1
end

function b1()
NH=gg.prompt({"输入手榴弹范围，初始值为2(可多次修改↓)"},{[1]=""})
fastsearch({{1045220557, 4, 32}, {1.0, -100, 16}, {0.36000001430511475, -96, 16}, {0.4000000059604645, -88, 16}, {-0.25, -40, 16}, {0.6000000238418579, -36, 16}, {0.800000011920929, -24, 16}, {20.0, -20, 16}, {1000.0, -16, 16}, {2.5, -4, 16}}, {{NH[1], -8, 16, false}})
end

function b2()
NH=gg.prompt({"输入医疗包范围，初始值为1.2(可多次修改↓)"},{[1]=""})
    qmnb = {
      {["memory"] = 32},
      {["name"] = "医疗包范围"},
      {["value"] = 1128792064, ["type"] = 32},
      {["lv"] = 1101004800, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1077936128, ["offset"] = 12, ["type"] = 4},
      {["lv"] = 1045220557, ["offset"] = 16, ["type"] = 32},
      {["lv"] = 1058642330, ["offset"] = -20, ["type"] = 32},         
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
end

function b3()
NH=gg.prompt({"输入要改的针攻速,原始值-0.25(可进行多次修改)↓","输入要改的针移速,原始值0.12(可进行多次修改)↓"},{[1]="-",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "针移速攻速"},
{["value"] = 1084227584, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 20, ["type"] = 32},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 256, ["offset"] = 76, ["type"] = 4},
{["lv"] = 0, ["offset"] = 70, ["type"] = 4},
}
qmxg = {
{["value"] = NH[2], ["offset"] = 4, ["type"] = 16},
{["value"] = NH[1], ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end
function b4()
NH=gg.prompt({"输入腕炮范围(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "腕炮范围"},
{["value"] = 1084227584, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 52.0, ["offset"] = 80, ["type"] = 16},
{["lv"] = 0, ["offset"] = 84, ["type"] = 4},
{["lv"] = 280, ["offset"] = 88, ["type"] = 4},
{["lv"] = 0, ["offset"] = 92, ["type"] = 4},
{["lv"] = 0, ["offset"] = 96, ["type"] = 4},
{["lv"] = 0, ["offset"] = 112, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = 4, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end    

function b5()
NH=gg.prompt({"输入腕炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1045220557, 4, 32}, {1, -8, 4}, {0, 4, 4}, {0, 16, 4}, {0.009999999776482582, 28, 16}, {0.009999999776482582, 32, 16}, {0.009999999776482582, 36, 16}, {0.10000000149011612, 44, 16}, {0, 56, 4}}, {{NH[1], -12, 16, false}})
end

function b6()
NH=gg.prompt({"输入迫击炮范围(可进行多次修改)↓"},{[1]=""})
fastsearch({{99.0, 16, 32}, {0.20000000298023224, -32, 16}, {0.4000000059604645, -24, 16}, {0.15000000596046448, -20, 16}, {1.0, -16, 16}, {0.8500000238418579, -12, 16}, {2.5, 12, 16}}, {{NH[1], -36, 16, false}})
end

function b7()
NH=gg.prompt({"输入迫击炮射程(可进行多次修改)↓"},{[1]=""})
fastsearch({{1031127695, 4, 32}, {1008981770, 12, 4}, {1008981770, 16, 4}, {1008981770, 20, 4}, {1028443341, 28, 4}, {0, 40, 4}, {0, 48, 4}, {0, 60, 4}}, {{NH[1], -4, 16, false}})
end

function b8()
qc=gg.alert("超级小飞机","飞机强化","飞机持续时间")
if qc==1 then
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
if qc==2 then
NH=gg.prompt({"输入飞机持续时间(可进行多次修改)↓"},{[1]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "飞机持续时间"},
      {["value"] = 256, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 4, ["type"] = 16},
      {["lv"] = 0, ["offset"] = 8, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 24, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -4, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 28, ["type"] = 16},
      {["lv"] = 0, ["offset"] = 36, ["type"] = 4},
      {["lv"] = 0, ["offset"] = 44, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = 40, ["type"] = 16, ["freeze"] = true},
    }
    xqmnb(qmnb)
end
end

function b9()
NH=gg.prompt({"输入传送距离(可进行多次修改)↓","输入持续时间(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "传送门"},
      {["value"] = 1061997773, ["type"] = 32},
      {["lv"] = 1065353216, ["offset"] = -8, ["type"] = 4},
      {["lv"] = 0, ["offset"] = -24, ["type"] = 4},
      {["lv"] = 1, ["offset"] = -72, ["type"] = 16},
      {["lv"] = 1053609165, ["offset"] = -60, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[2], ["offset"] = -12, ["type"] = 16,},
      {["value"] = NH[1], ["offset"] = -16, ["type"] = 16,},
      {["value"] = 0, ["offset"] = -4, ["type"] = 16},
    }
    xqmnb(qmnb)
end    

function b10()
tg=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""})if tg==nil then sfa1(print("你点击了取消")) end
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {tg[1]+65536, 10, 2, false}})
end

function b11()
NH=gg.prompt({"输入引力场范围(可多次修改↓)"},{[1]=""})
fastsearch({{1075838976, 4, 32}, {-0.25, -36, 16}, {0.6000000238418579, -32, 16}, {0.8999999761581421, -24, 16}, {20.0, -16, 16}, {500.0, -12, 16}, {0.20000000298023224, 4, 16}}, {{NH[1], -4, 16, false}})
end

 function b12()
print("留名隐世，尊重原创")
lw=1
Main()
end




function G()
SN =gg.multiChoice({
"火箭筒换卡",
"皮卡换卡",
"阻挡箱换卡",
"拳套换卡",
"疾跑换卡",
"跳高换卡",
"返回"
},nil,os.date'换卡功能')
  if SN == nil then
  else
  if SN[1] == true then
   JK1()
  end
  if SN[2] == true then
   JK2()
  end
  if SN[3] == true then
   JK3()
   end
  if SN[4] == true then
   JK4()
   end   
  if SN[5] == true then
   JK5()
   end
  if SN[6] == true then
   JK6()
   end
  if SN[7] == true then
   JK7()
  end
end
  XGCK = -1
end
  
function JK1()
NH=gg.prompt({"输入要修改的武器:\n火箭筒1级200\n火箭筒2级201\n火箭筒3级202\n迫击炮1级210\n迫击炮2级211\n迫击炮3级212\n冲锋枪1级230\n冲锋枪2级231\n冲锋枪3级\n能量剑1级240\n能量剑2级241\n能量剑3级242\n蹦蹦枪1级250\n蹦蹦枪2级251\n蹦蹦枪3级252\n能量腕炮1级280\n能量腕炮2级281\n能量腕炮3级282\n霰弹枪1级290\n霰弹枪2级291\n霰弹枪3级292\n唤风标1级300\n唤风标2级301\n唤风标3级302"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "火箭筒换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 64048, ["offset"] = 32, ["type"] = 4},
{["lv"] = 25600, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end

function JK2()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "皮卡换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 46129, ["offset"] = 32, ["type"] = 4},
{["lv"] = 28416, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function JK3()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "阻挡箱换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 77056, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function JK4()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "拳套换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25655, ["offset"] = 32, ["type"] = 4},
{["lv"] = 259072, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function JK5()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 20528, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51200, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
  
function JK6()
NH=gg.prompt({"输入要修改的道具:\n疾跑100\n皮卡101\n侦查眼102\n手雷103\n医疗包104\n跳高105\n护盾106\n阻挡箱107\n雷达108\n狗109\n针110\n酒桶111\n飞爪112\n传送门113\n自走球114\n毒液115\n滑板116\n魔法墙117\n引力场118\n治疗球119\n气垫120\n导弹121\n追踪雷122\n震荡波123\n小飞机124\n时光机125\n跳跳杆126\n拳套127\n吼吼号128\n噗噗蛋129\n呼啦圈130\n火箭筒200\n迫击炮210\n冲锋枪230\n能量剑240\n蹦蹦枪250\n能量炮280\n霰弹枪290\n换风标300"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "跳高换卡"},
{["value"] = 779514723, ["type"] = 4},
{["lv"] = 1632071241, ["offset"] = 4, ["type"] = 4},
{["lv"] = 25653, ["offset"] = 32, ["type"] = 4},
{["lv"] = 51456, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)  
end

function JK7()
print("留名隐世，禁止二改")
lw=1
Main()
end

function a6()
menu1 = gg.multiChoice({
  "跳",
  "踏空",
  "返回主页",
}, nil, os.date("噢，好无聊"))
if menu1 == nil then else
if menu1[1] == true then tc1() end
if menu1[2] == true then tc2() end
if menu1[3] == true then tc3() end
end
GLWW=-1
end

function tc1()
local ML=gg.prompt({"↓间隔↓","↓跳跃高度↓"},{[1]="0"},{[2]="7"})
fastsearch({{20.0, 16, 32}, {900.0, 4, 16}}, {{ML[1], 16, 16, false}, {ML[2], 8, 16, false}})
end

 function tc2()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("人物踏空开启成功")
  gg.clearResults()
  end


function tc3()
print("留名隐世，禁止二改")
lw=1
Main()
end


function TC()
print("已退出脚本，欢迎下次使用\n作者:隐世\nQQ489725770\n留名隐世，尊重原创\n这是我最后一次更新了")
os.exit()
end


cs = 'qq489725770'
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








