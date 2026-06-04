-- 洋洋***

gg.alert(os.date("脚本启动时间为:%Y年%m月%d日%H时%M分%S秒"))

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
			gg.toast("\n" .. Name .. "开启失败🌚🌝", false)
			return false
		end
	else
		gg.toast(Name .. "开启失败🌚🌚")
		return false
	end
end

function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功🌞🌞") end
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败🌟💫") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败🌿🌺🌼<") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 

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
bqt={"🌹","🌸","🍃","🌴","⭐","🍀","🍁","🍡","✨","你真🐶","没💴","🧠❌","🌊🦆","💖你","送你🌸🌸"}
local APP=gg.getTargetInfo()
gg.toast("星适永远的神")
local sjbq= bqt[math.random(1,#bqt)]
SN = gg.choice({
     sjbq.."星适防闪ᕦ🌝ᕤ"..sjbq,--1
     sjbq.."星适防封👑"..sjbq,--2
     sjbq.."上分[逃]🌸"..sjbq,--3
     sjbq.."🌟手动秒赢🌟"..sjbq,--4
     sjbq.."🌟局内✨"..sjbq,--5
     sjbq.."💫疾跑buf💫"..sjbq,--6
     sjbq.."💜稳定娱乐💜"..sjbq,--7
     sjbq.."😡倒地复活😡"..sjbq,--8
     sjbq.."人机"..sjbq,--9
     sjbq.."高跳🌚"..sjbq,--10
     sjbq.."👊人机间隔👊"..sjbq,--11
     sjbq.."🤬杀你妈🤬"..sjbq,--12
     sjbq.."刷钱2"..sjbq,--13
     sjbq.."无后作力🤥🤥"..sjbq,--14
     sjbq.."锁子"..sjbq,--15
     sjbq.."排击炮范围"..sjbq,--16
     sjbq.."医疗"..sjbq,--17
     sjbq.."战女"..sjbq,--18
     sjbq.."🍍观战🍍"..sjbq,--19
     sjbq.."🔥变态🔥"..sjbq,--20
     sjbq.."走自球😇😇"..sjbq,--21
     sjbq.."😍道具buf功能😍"..sjbq,--22
     sjbq.."🌸车轮无限撞人🌸"..sjbq,--23
     sjbq.."🍺领你妈框🍺"..sjbq,--24
     sjbq.."👑人物视野扩大👑"..sjbq,--25
     sjbq.."枪改武器"..sjbq,--26
     sjbq.."🥰道具变恐龙🥰"..sjbq,--27
     sjbq.."🍎实战美化🍎"..sjbq,--28
     sjbq.."🥵空手改武器🥵"..sjbq,--29
     sjbq.."🤕解设备🤕"..sjbq,--30
     sjbq.."🐮退出脚本🐮"..sjbq,--31
 }, nil, os.date"温柔自用脚本\n当前时间:%Y年/️%m月/%d日%H:%M:%S\n{当前进程}:"..APP.activities[1].label.."  {当前版本}:"..APP.versionName.."")
if SN == 1 then a1() end
if SN == 2 then a2() end
if SN == 3 then a3() end
if SN == 4 then a4() end
if SN == 5 then a5() end
if SN == 6 then a6() end
if SN == 7 then a7() end
if SN == 8 then a8() end
if SN == 9 then a9() end
if SN == 10 then a10() end
if SN == 11 then a11() end
if SN == 12 then a12() end
if SN == 13 then a13() end
if SN == 14 then a14() end
if SN == 15 then a15() end
if SN == 16 then a16() end
if SN == 17 then a17() end
if SN == 18 then a18() end
if SN == 19 then a19() end
if SN == 20 then a20() end
if SN == 21 then a21() end
if SN == 22 then a22() end
if SN == 23 then a23() end
if SN == 24 then a24() end
if SN == 25 then a25() end
if SN == 26 then a26() end
if SN == 27 then a27() end
if SN == 28 then a28() end
if SN == 29 then a29() end
if SN == 30 then a30() end
if SN == 31 then os.exit() end
FX1=0
end

function a1()
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

-------------------------------------------------------------------------------------------------------------
function a2()
UI = "q"
local menu = gg.multiChoice({
"防止追封",
"打榜防封",
"防检测",
"防举报",
"星适全防",
"防人工",
"星适防异常",
"️返回主页️",
}, nil, "防封")
if menu then
for i in pairs(menu) do
_ENV[({"q1","q2","q3","q4","q5","q6","q7","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------

function q1()
gg.alert("在大厅开启")
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
	 gg.toast("清理防追封成功星适为您保驾护航")
end

function q2()
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

function q3()
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

function q4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（一局一开）")
	 gg.clearResults()
	end 
	
function q5()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("535146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启16%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("672568", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启49%成功")
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

function q6()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--夏天
xtnb({{false,33554432,0,4,nil,nil}},{{0,0,4,false}},4,16384,"防人工")
end

function q7()
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
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------
function f3()
print("男模自用")
lw=1
Main()
end
-------------------------------------------------------------------------------------------------------------

function a3()
menu1 = gg.multiChoice({
"😊稳定一件套🌞",
"🙄移动开物🙄",
"5倍加速开锁",
"😷无视爆炸🤑",
"完美开锁💫<",
"人物移速🌼🌼",
"人物穿墙🍟🍟",
"无视架子🐽",
"人物爬墙😘",
"人物明透😚",
"人物高跳😰",
"人物移速😚[追捕]",
"🥺人物透视😚[追捕]",
"😚全局加速😚[追捕]",
"😕基址吸人☹️[追捕]",
"🤑逃生减血☺️[追捕]",
}, nil,os.date"返回点确定\n点取消也可以")
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
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then b15() end
if menu1[16] == true then b16() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function b1()
qmnb = {
{["memory"] = 32},
{["name"] = "3倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =0, ["type"] = 16},
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

fastsearch({
     {1.5, 16, 32},
     {1.0, -4, 16},
     {2.0, 4, 16},
     {2.5, 8, 16},
   }, {
     {3, -4, 16, false},
   },"加速开锁")


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

fastsearch({{25.0, 16, 32},{1.0, -4, 16},{0.5, -8, 16},{2.5, -12, 16}},{{0.0, -4, 16},{520,-12,16,false}})
end--无视夹子


function b2()
fastsearch({{-444186608,4,16384},{-382906384,28,4},{167772164,192,4}},{{-516948194,28,4,false}})
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}},{{-516948194,184,4,false}})
end

function b3()
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

function b4()
fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")
end

function b5()
fastsearch({
     {59.0, 16, 32},
     {2.0, 20, 16}, 
   }, {
     {99999, 20, 16, false},
   },"0概率触发开锁")
end

function b6()
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

function b7()
fastsearch({
     {-10, 16, 32},
     {49.0, 20, 16}, 
   }, {
      {999999, 0, 16, false},
   },"人物穿墙")
end

function b8()
   fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
end

function b9()
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

function b10()
fastsearch({{2.5,16,32},{1.0, 4, 16},{8.0, -4, 16},{12.0, -8, 16},}, {{200, -4, 16}},"明透")
end




function b11()
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

function b12()
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

function b13()
   fastsearch({
     {76111644, 4, 16384},
     {76111664, -4, 4}, 
   }, {
     {-476053503, 4, 4, false},
      {-516948194, 8, 4, false},
   },"人物透视")
end

function b14()
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

function b15()
local t = {"libil2cpp.so", "Cd", 1}
local tt = {0x20E0B0, 0x5C, 0x0, 0xBC, 0x14}
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value = 0}})
end
function b16()
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

function a4()
menu1 = gg.multiChoice({
     "倒地结算『局内30秒开』",
     "击倒50人『大厅开』",
     "个人伤害『大厅开』",
     "救人数量『大厅开』",
     "逃脱八人『大厅开』",
}, nil,os.date"返回点确定\n点取消也可以")
if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
end
GLWW=-1
end

function j1()--全体倒地
fastsearch({{100.0,16,32},{0.30000001192092896,4,16},}, {{0, -4, 16, false}})
end

function j2()--击倒五十
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
end

function j3()--个人伤害
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
end

function j4()--救人数量
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function j5()--逃生八人
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})
end



function nb3()
print("男模自用")
lw=1
Main()
end

function a5()
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
 fastsearch({
      {
        4489188110532608000,
        32,
        32
      },
      {
        256,
        20,
        4
      },
      {
        100,
        24,
        4
      }
    }, {
      {
        1,
        88,
        4,
        true
      },
      {
        184319,
        92,
        4,
        true
      }
    })

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
	 gg.toast("防封")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
	 gg.toast("防封")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 

	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("局内防1")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("局内防2")
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("局内防闪")
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("局内防4")
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("大局内防5")
	 gg.clearResults()

	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("48,889,863", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("局内防开启成功")
	 gg.clearResults()

end



function a6()
fastsearch({{106147,4,32},{32,0x2c, 16}},{{300,0x6,2},},"疾跑改无敌")
end

function a7()
UI = "o"
local menu = gg.multiChoice({
"皮卡变霸王龙",
"霸王龙一套",
"苍龙一套",
"皮卡改苍龙",
"️返回主页️",
}, nil, "稳定游戏里开")
if menu then
for i in pairs(menu) do
_ENV[({"o1","o2","o3","o4","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------
function o1()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70014+65536, 10, 2, false}})
	 end
	 
function o2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end
	 
  function o3()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70015+65536, 10, 2, false}})
	 end

function o3()
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
    
function o4()    
tg=gg.prompt({"70015沧龙\n70014霸王龙\n70010翼龙\n70011三角龙\n70012剑龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""})if tg==nil then sfa1(print("你点击了取消")) end
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {tg[1]+65536, 10, 2, false}})
end    
    
 function wq6()
print("男模自用")
lw=1
Main()
end
function a8()
   fastsearch({
     {200.0, 16, 32},
     {100.0, -20, 16},
     {0.30000001192092896, -16, 16},
   }, {
     {100, -24, 16, false},
   },"倒地复活")
 end

function a9()
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

function a10()
nh({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{4479, 10, 2, false}, {1, 12, 1, false}})
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


function a11()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function a12()--杀死傻逼队友
 lj =gg.alert("杀垃圾队友","开启","关闭")
if lj ==1 then
fastsearch({{104, 4, 16384}, {104, 4,4}, {-382908368, -1564,4 }}, {{-516948194,-1564,4,false}})
end
if lj == 2 then
fastsearch({{104, 4, 16384}, {104, 4,4}, {-516948194, -1564,4 }}, {{-382908368,-1564,4,false}})
end
end


function a13()
menu1 = gg.multiChoice({
"4v1刷钱",
"8v2刷钱",
"️停止刷钱",
}, nil, os.date("返回主页点取消"))
if menu1 == nil then else
if menu1[1] == true then na1() end
if menu1[2] == true then na2() end
if menu1[3] == true then na3() end
end
GLWW=-1
end

function na1()
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end
function na2()
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function na3()
gg.clearList()
gg.toast("停止刷钱成功")
end



function a15()
gg.setValues({[1]={address=gg.getRangesList('libil2cpp.so')[1].start+0x1cddbcc,flags=4,value="~A bx lr"}})
end



function a14()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("无后开启")
  gg.clearResults()
gg.toast("开启成功")
end

function a16()
op= gg.prompt({[1]="请输入您要修改的范围，初始值为6"}, {[1]="0"}, {[1]="txet"})
  if op == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("6.0;0.00999999978;0.05000000075;3.58732407e-43::", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber(6, gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.getResults(100)
    gg.editAll( op[1] ,gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
  qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";0", gg.TYPE_WORD)
	 gg.toast("防封")
	 gg.clearResults()
end


function a17()
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

function a18()
qmnb = {
      {["memory"] = 32},
      {["name"] = "艾克范围"},--战斗少女范围伤害
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
{["name"] = "艾可cd落地"},--免费cd落地时间
{["value"] = 50.0, ["type"] = 16},
{["lv"] = 1, ["offset"] = -140, ["type"] = 4},
{["lv"] = 80, ["offset"] = -132, ["type"] = 4},
{["lv"] = 0.800000011920929, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 520, ["offset"] = -140, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = -132, ["type"] = 4, ["freeze"] = false},
{["value"] = 0, ["offset"] = 8, ["type"] = 16, ["freeze"] = false},
}
xqmnb(qmnb)
end

function a19()--观战控制别人
tg=gg.alert("观战控制别人","开","关")
if tg==1 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("78,884,133;78,454,692;78,454,672;-382,908,176;-494,030,832;-498,216,952;-442,542,840:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382,908,176", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-516,948,194", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
gg.toast("观战控制别人『开』")
end
if tg==2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("78,884,133;78,454,692;78,454,672;-516,948,194;-494,030,832;-498,216,952;-442,542,840:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-516,948,194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382,908,176", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
gg.toast("观战控制别人『关』")
end

function a20()
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子稳定全屏秒杀无减血"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 80, ["offset"] = 4, ["type"] = 4},
{["lv"] = 33.0, ["offset"] = 104, ["type"] = 16},
{["lv"] = 1.5, ["offset"] = 108, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 1, ["offset"] = 4, ["type"] = 4, ["freeze"] = true},
{["value"] = 100, ["offset"] = 104, ["type"] = 16, ["freeze"] = true},
{["value"] = 115, ["offset"] = 108, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function a21()
SW="自走球速度"
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

function a22()
menu1 = gg.multiChoice({
"Buff初始化<必须开>",
"酒桶全屏+无敌🧠❌",
"疾跑改无敌🦀🦀",
"跳高改暴走送你🌸🌸",
"疾跑改buff[自调]傻🐷🐷",
"疾跑改随机buff傻🐷🐷",
"疾跑改boss无敌🌶️🐔",
"跳高改提升攻速🐂🍺[无限时长]",
"生命护盾改buffᥬ🌝᭄",
"追捕无限暴走🌚💦💦",
"跳高无限时间🥳阿巴阿巴😮😮😮",
"无敌buff时间加长🚀🉑",
"酒桶伤害范围buff💨💨[自调]",
"酒桶禁攻🌛🌛",
"酒桶随机buff👌",
"追捕倒地不起💝💝",
"️返回主页🌟️",
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
if menu1[9] == true then bf9() end
if menu1[10] == true then bf10() end
if menu1[11] == true then bf11() end
if menu1[12] == true then bf12() end
if menu1[13] == true then bf13() end
if menu1[14] == true then bf14() end
if menu1[15] == true then bf15() end
if menu1[16] == true then bf16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
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



function bf9()
NH=gg.prompt({"输入boss代码(可多次修改↓)"},{[1]=""}) nh({{57983845202497689, 32, 32}, {13500416, 4, 4}, {65535, 16, 4}}, {{NH[1], 6, 2, false}})
gg.toast("buff修改成功\n     成功修改114514条树枝")
end

function bf10()
bby({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}}) 
gg.toast("追捕无限暴走开启成功\n     成功修改114514条树枝\n     可以让对面封号")
end

function bf11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1017D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限时间开启成功")
	 gg.clearResults()
end

function bf12()
xtnb({{false,300,0,4,nil,nil},{65536,76,4},{-256,136,4},{255,140,4}},{{999,48,16,false}},4,32,"输入功能名称")
end

function bf13()
local LL=gg.prompt({"↓酒桶范围↓","↓酒桶buff↓","↓酒桶伤害↓"},{[1]="999" },{[2]="300"},{[3]="200"})
fastsearch
({{1088421888,4,32},{1017370378,8,4},{1106247680,24,4}},
{
{LL[1],20,16}--范围
,{LL[2],160,4}--buff
,{LL[3],156,16}--伤害
})
end


function bf14()
function classSearch(className, offset) gg.clearResults() gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC) gg.searchNumber("Q 00 '" .. className .. "' 00", gg.TYPE_BYTE) if (gg.getResultsCount() == 0) then print('没有发现类\n请确认是否初始化') end gg.searchPointer(0) gg.setRanges(32) local object = {} for k, v in pairs(gg.getResults(gg.getResultsCount())) do if (a(gotoPointer(gotoPointer(v.address - 8))):match(string.char(46, 100, 108, 108))) then v.address = v.address - 8 object[1] = v gg.loadResults(object) break end end gg.searchPointer(0) gg.searchPointer(0) local item = gg.getResults(gg.getResultsCount()) for k, v in pairs(item) do v.address = gotoPointer(v.address) + offset end return item end 
function editerObject(valObject, editerVal) for k, v in pairs(valObject) do v.value = editerVal[1] v.flags = editerVal[2] v.freeze = editerVal[3] end gg.setValues(valObject) gg.toast('小闪说开启成功\n共修改: ' .. gg.getResultsCount() .. '个结果') gg.clearResults() end

field = classSearch("BarrelObject", 276)
editerObject(field, {1500, 2, false})

field = classSearch("BarrelObject", 416)
editerObject(field, {10509, 2, false})end



function bf15()
     gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2F;30F;0.1F;0.2F;200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
     gg.editAll("300", gg.TYPE_FLOAT)
     while true do
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("102", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("103", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("107", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("108", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("202", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("206", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("300", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("301", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("552", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("509", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("510", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("522", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("204", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("542", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("573", gg.TYPE_DWORD)
     gg.sleep(370)
     gg.editAll("10132", gg.TYPE_DWORD)
     gg.sleep(370)
	 end
end

function a23()
qmnb=
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

qmnb=
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

function a24()
menu1 = gg.multiChoice({
'霸天虎连发',
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
'返回上一页'},
nil,'领战神框')
if menu1 == nil then else
if menu1[1] == true then sb1() end
if menu1[2] == true then sb2() end
if menu1[3] == true then sb3() end
if menu1[4] == true then sb4() end
if menu1[5] == true then sb5() end
if menu1[6] == true then sb6() end
if menu1[7] == true then sb7() end
if menu1[8] == true then sb8() end
if menu1[9] == true then sb9() end
if menu1[10] == true then sb10() end
if menu1[11] == true then sb11() end
if menu1[12] == true then sb12() end
if menu1[13] == true then sb13() end
if menu1[14] == true then sb14() end
if menu1[15] == true then sb15() end
if menu1[16] == true then sb16() end
if menu1[17] == true then sb17() end
if menu1[18] == true then sb18() end
if menu1[19] == true then sb19() end
if menu1[20] == true then sb20() end
if menu1[21] == true then sb21() end
if menu1[22] == true then HOME() end
end
GLWW=-1
end
function sb1()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb2()
NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb3()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb4()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function sb5()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb6()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb7() 
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function sb8()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb9()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function sb10()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function sb11()
NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb12()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb13()
NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function sb14()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb15()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb16()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function sb17()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function sb18()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function sb19()
NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb20()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function sb21()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end


function og10()
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
{{961731,0,4},
{961711,4,4},
{961721,8,4},
{961361,12,4},
{964511,16,4},
{964501,20,4,false}})
end


function a25()
aa=gg.prompt({"请输入你想修改的视野大小,原视野值12"},{15},{"number"})
  fastsearch({
     {55.00000762939453, 16, 32},
     {30.0, -40, 16}, 
   }, {
      {aa[1], -28, 16, false},
   },"人物视角")
end

function a26()
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
}, nil, os.date("返回点确定"))
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


---------------------------------------------------------------------------------------------------------------

function a27()
menu1 = gg.multiChoice({
'吼吼号实🕊',
'阻挡箱实🕊',
'跳高实体🕊',
'疾跑实体🕊',
'皮卡实体🕊',
'滑板实体🕊',
"️返回男模脚本️",
}, nil, os.date("新版本变"))
if menu1 == nil then else
if menu1[1] == true then ngf1() end
if menu1[2] == true then ngf2() end
if menu1[3] == true then ngf3() end
if menu1[4] == true then ngf4() end
if menu1[5] == true then ngf5() end
if menu1[6] == true then ngf6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end

function ngf11()
QQ=gg.prompt({"输入变身代码↓70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
fastsearch({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})end
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

function a28()
UI = "l"
local menu = gg.multiChoice({
"道具卡",
"风格",
"乱斗道具卡美化",
"返回主页",
 },nil,os.date'一键美化')
 if menu then
for i in pairs(menu) do
_ENV[({"l1","l2","l3","Main",})[i]]()
  end
 end 
end
-------------------------------------------------------------------------------------------------------------

function l1()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500001',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601211',gg.TYPE_DWORD)
gg.toast("疾跑美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500002',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600971',gg.TYPE_DWORD)
gg.toast("皮卡美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500003',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600251',gg.TYPE_DWORD)
gg.toast("侦查眼美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500004',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600906',gg.TYPE_DWORD)
gg.toast("手雷美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500005',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602006',gg.TYPE_DWORD)
gg.toast("医疗箱美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500006',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600116',gg.TYPE_DWORD)
gg.toast("跳高美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500007',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601981',gg.TYPE_DWORD)
gg.toast("生命护盾美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500008',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602026',gg.TYPE_DWORD)
gg.toast("阻挡美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650631',gg.TYPE_DWORD)
gg.toast("美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602126',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601691',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602106',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602021',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601776',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602011',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500900',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602111',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501000',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601676',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601696',gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601836',gg.TYPE_DWORD)
gg.toast("开启成功")gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500010',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒1级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500011',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒2级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500012',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('600016',gg.TYPE_DWORD)
gg.toast("火箭筒3级美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500021',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500022',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602116',gg.TYPE_DWORD)
gg.toast("破击炮3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500030',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500031',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500032',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602136',gg.TYPE_DWORD)
gg.toast("冲锋枪3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500041',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500042',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601076',gg.TYPE_DWORD)
gg.toast("能量剑3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500050',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500051',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500052',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('602041',gg.TYPE_DWORD)
gg.toast("蹦蹦枪3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500060',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500061',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500062',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601896',gg.TYPE_DWORD)
gg.toast("能量炮3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500070',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500071',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500072',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('601941',gg.TYPE_DWORD)
gg.toast("霰弹枪3美化成功")
gg.toast("一键美化成功")
end

function l2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500002',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650071',gg.TYPE_DWORD)
gg.toast("皮卡风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500004',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650261',gg.TYPE_DWORD)
gg.toast("手雷风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500005',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650681',gg.TYPE_DWORD)
gg.toast("医疗箱风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500007',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650121',gg.TYPE_DWORD)
gg.toast("生命护盾风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500008',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650161',gg.TYPE_DWORD)
gg.toast("阻挡箱风格美花成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650461',gg.TYPE_DWORD)
gg.toast("巡逻犬风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650771',gg.TYPE_DWORD)
gg.toast("肾上腺素风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650281',gg.TYPE_DWORD)
gg.toast("酒桶风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650766',gg.TYPE_DWORD)
gg.toast("飞爪风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650211',gg.TYPE_DWORD)
gg.toast("传送门风格成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650081',gg.TYPE_DWORD)
gg.toast("自走球风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650441',gg.TYPE_DWORD)
gg.toast("毒液风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500900',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650171',gg.TYPE_DWORD)
gg.toast("滑板风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501000',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650141',gg.TYPE_DWORD)
gg.toast("魔法墙风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501100',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650051',gg.TYPE_DWORD)
gg.toast("引力场风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650651',gg.TYPE_DWORD)
gg.toast("治疗求风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650686',gg.TYPE_DWORD)
gg.toast("气垫风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501400',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650391',gg.TYPE_DWORD)
gg.toast("捣蛋风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501500',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650481',gg.TYPE_DWORD)
gg.toast("追踪雷风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501600',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650411',gg.TYPE_DWORD)
gg.toast("震荡波风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501700',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650776',gg.TYPE_DWORD)
gg.toast("飞机风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('501800',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650561',gg.TYPE_DWORD)
gg.toast("时光机风格美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500010',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650756',gg.TYPE_DWORD)
gg.toast("火箭筒风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500011',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650756',gg.TYPE_DWORD)
gg.toast("火箭筒风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500012',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650756',gg.TYPE_DWORD)
gg.toast("火箭筒风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650761',gg.TYPE_DWORD)
gg.toast("破击炮风格美化1成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500021',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650761',gg.TYPE_DWORD)
gg.toast("破击炮风格美化2成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500022',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650761',gg.TYPE_DWORD)
gg.toast("破击炮风格美化3成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500040',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650401',gg.TYPE_DWORD)
gg.toast("能亮剑风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500041',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650401',gg.TYPE_DWORD)
gg.toast("能亮剑风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500042',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650401',gg.TYPE_DWORD)
gg.toast("能亮剑风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500050',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650616',gg.TYPE_DWORD)
gg.toast("蹦蹦枪风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500051',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650616',gg.TYPE_DWORD)
gg.toast("蹦蹦枪风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500052',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650616',gg.TYPE_DWORD)
gg.toast("蹦蹦枪风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500060',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650671',gg.TYPE_DWORD)
gg.toast("能量炮风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500061',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650671',gg.TYPE_DWORD)
gg.toast("能量炮风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500062',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650671',gg.TYPE_DWORD)
gg.toast("能量炮风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500070',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650741',gg.TYPE_DWORD)
gg.toast("霰弹枪风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500071',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650741',gg.TYPE_DWORD)
gg.toast("霰弹枪风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500072',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650741',gg.TYPE_DWORD)
gg.toast("霰弹枪风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500090',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650781',gg.TYPE_DWORD)
gg.toast("霸天夫风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500091',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650781',gg.TYPE_DWORD)
gg.toast("霸天夫风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('500092',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650781',gg.TYPE_DWORD)
gg.toast("霸天夫风格3美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502300',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650696',gg.TYPE_DWORD)
gg.toast("换风标风格1美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502301',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650696',gg.TYPE_DWORD)
gg.toast("换风标风格2美化成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('502302',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('650696',gg.TYPE_DWORD)
gg.toast("换风标风格3美化成功")
gg.toast("道具卡风格美化成功")
end

function l3()
qmnb = {
{["memory"] = 32},
{["name"] = "一键皮肤美化"},
{["value"] = 500001, ["type"] = 4},
{["lv"] = 500004, ["offset"] = 0x4, ["type"] = 4},
{["lv"] = 500005, ["offset"] = 0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 601211,["offset"] =0, ["type"] = 4},
{["value"] = 600756,["offset"] =0x4, ["type"] = 4},
{["value"] = 600366,["offset"] =0x8, ["type"] = 4},
{["value"] = 600016,["offset"] =0xC, ["type"] = 4},
{["value"] = 601571,["offset"] =0x10, ["type"] = 4},
{["value"] = 601566,["offset"] =0x14, ["type"] = 4},
{["value"] = 500009,["offset"] =0x18, ["type"] = 4},
{["value"] = 601686,["offset"] =0x1C, ["type"] = 4},
{["value"] = 600231,["offset"] =0x20, ["type"] = 4},
{["value"] = 600386,["offset"] =0x24, ["type"] = 4},
{["value"] = 600116,["offset"] =0x28, ["type"] = 4},
{["value"] = 601306,["offset"] =0x2C, ["type"] = 4},
{["value"] = 600431,["offset"] =0x30, ["type"] = 4},
{["value"] = 600811,["offset"] =0x34, ["type"] = 4},
{["value"] = 600331,["offset"] =0x38, ["type"] = 4},
{["value"] = 600391,["offset"] =0x3C, ["type"] = 4},
{["value"] = 601476,["offset"] =0x40, ["type"] = 4},
{["value"] = 600941,["offset"] =0x44, ["type"] = 4},
{["value"] = 600251,["offset"] =0x48, ["type"] = 4},
{["value"] = 601166,["offset"] =0x4C, ["type"] = 4},
{["value"] = 600161,["offset"] =0x50, ["type"] = 4},
{["value"] = 601591,["offset"] =0x54, ["type"] = 4},
{["value"] = 601171,["offset"] =0x58, ["type"] = 4},
{["value"] = 600946,["offset"] =0x5C, ["type"] = 4},
{["value"] = 600181,["offset"] =0x60, ["type"] = 4},
{["value"] = 601076,["offset"] =0x64, ["type"] = 4},
{["value"] = 600696,["offset"] =0x68, ["type"] = 4},
{["value"] = 601221,["offset"] =0x6C, ["type"] = 4},
{["value"] = 601976,["offset"] =0x70, ["type"] = 4},
{["value"] = 600746,["offset"] =0x74, ["type"] = 4},
{["value"] = 601256,["offset"] =0x78, ["type"] = 4},
{["value"] = 600881,["offset"] =0x7C, ["type"] = 4},
{["value"] = 601786,["offset"] =0x80, ["type"] = 4},
{["value"] = 601891,["offset"] =0x84, ["type"] = 4},
{["value"] = 601331,["offset"] =0x88, ["type"] = 4},
{["value"] = 601471,["offset"] =0x8C, ["type"] = 4},
{["value"] = 601716,["offset"] =0x90, ["type"] = 4},
{["value"] = 601836,["offset"] =0x94, ["type"] = 4},
{["value"] = 601881,["offset"] =0x98, ["type"] = 4},
}
xqmnb(qmnb)
end

function a29()
  res = gg.choice({
    "火箭筒",--1
    "能量剑",--2
    "蹦蹦枪",--3
    "唤风镖",--4
    "能量腕炮",--5
    "迫击炮",--6
    "冲锋枪",--7
    "霞弹枪",--8
    "霸天斧",--9
    "威震天(清除武器)",--10
    "热破(清除武器)",--11
    "滋水枪",--12
  },2018, "V0317/n借北冰洋的🕊")

if res==1 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{100*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==2 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{140*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==3 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{150*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==4 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{200*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==5 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{180*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==6 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{110*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==7 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{130*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==8 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{190*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==9 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{210*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==10 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{90200*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==11 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{90100*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end

if res==12 then
fastsearch({{51200, 4, 32},{8448, 8, 4},{65536, 48, 4},{65536, 56, 4},}, {{11130*65536, 52, 4,false}})
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x98}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1, freeze = true}})
gg.clearList()
end
end


function a30()
local jincheng=gg.getTargetInfo()
local mingcheng=jincheng["label"]
local baoming=gg.getTargetPackage()
local queding
if mingcheng~="..mingcheng.." then
local xuanze=gg.alert("当前进程:"..mingcheng.."！\n是否解封设备","开启","关闭")
if xuanze==1 then queding=true end
if xuanze==2 then HOME() return false end
else
queding=true
end
if queding==true then
local File="/storage/emulated/0/Android/data/"..baoming.."/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt"
if io.open(File)~=nil then
local xieru=math.random(111111111,999999999)
io.open(File,"w"):write(xieru)
gg.toast("正在解封")
local shanchu=gg.alert("解封成功")
else
gg.alert("解封失败")
end
end
end
-------------------------------------------------------------------------------------------------------------



function Exit()
print("男模")
os.exit()
end

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