asd = gg.alert('星凌帅不帅','帅','衰')
if asd == 2 then os.exit(print("傻逼")) end

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
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end
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

-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator)   local nFindStartIndex = 1   local nSplitIndex = 1   local nSplitArray = {}   while true do   local nFindLastIndex = string.find  (szFullString, szSeparator, nFindStartIndex)   if not nFindLastIndex then   nSplitArray[nSplitIndex] =   string.sub(szFullString, nFindStartIndex, string.len  (szFullString))   break end   nSplitArray[nSplitIndex] = string.sub  (szFullString, nFindStartIndex, nFindLastIndex - 1)   nFindStartIndex = nFindLastIndex + string.len  (szSeparator)   nSplitIndex = nSplitIndex + 1 end return   nSplitArray end   function xgxc(szpy, qmxg)   for x = 1, #(qmxg) do   xgpy = szpy + qmxg[x]["offset"]   xglx = qmxg[x]["type"]   xgsz = qmxg[x]["value"]   xgdj = qmxg[x]["freeze"]   if xgdj == nil or xgdj == "" then   gg.setValues({[1]   = {address = xgpy, flags = xglx, value = xgsz}})   else   gg.addListItems({[1]   = {address = xgpy, flags = xglx,   freeze = xgdj, value = xgsz}}) end   xgsl = xgsl + 1 xgjg = true end end   function xqmnb(qmnb)   gg.clearResults()   gg.setRanges(qmnb[1]["memory"])   gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else           sl = gg.getResults(999999)   sz = gg.getResultCount()           xgsl = 0 if sz > 999999 then   sz = 999999 end for i = 1, sz do   pdsz = true for v = 4, #(qmnb) do if   pdsz == true then   pysz = {} pysz[1]   = {} pysz[1].address   = sl[i].address + qmnb[v]["offset"] pysz[1].flags   = qmnb[v]["type"]   szpy = gg.getValues(pysz)   pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd   = split(pdpd, ";") tzszpd   = szpd[1] pyszpd = szpd[2]   if tzszpd == pyszpd then   pdjg = true pdsz = true else   pdjg = false pdsz = false end end end if   pdjg == true then szpy   = sl[i].address xgxc(szpy, qmxg) end end   if xgjg == true then   gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")   else   gg.toast(qmnb[2]["name"] .. "开启失败")   end   end   end   end 
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

-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器

function Main()
menu = gg.choice({
"💖防闪功能💖",
"💖稳定逃生💛",
"💚稳定追捕💟",
"💗直装功能💟",
"❤buff功能💞",
"💔防封功能💜",
"💘道具速度💛",
"💖美化功能💚",
"💗新版秒赢💙",
"💖稳定奔放💙",
"💓作者自用💗",
"💛武器连发💝",
"💞美化功能❤",
"💟坤色功能💔",
"💜音乐功能💘",
"💛恐龙功能💗",
"💛传送功能💖",
"💗退出脚本💖",
}, nil, os.date("内部持续更新"))
if menu == 1 then HI() end
if menu == 2 then A() end
if menu == 3 then B() end
if menu == 4 then C() end
if menu == 5 then D() end
if menu == 6 then E() end
if menu == 7 then F() end
if menu == 8 then i() end
if menu == 9 then G() end
if menu == 10 then H() end
if menu == 11 then Y() end
if menu == 12 then L() end
if menu == 13 then N() end
if menu == 14 then M() end
if menu == 15 then P() end
if menu == 16 then X() end
if menu == 17 then R() end
if menu == 18 then O() end
XGCK=-1
end
-------------------------------------------------------------------------------------------------------------
function HI()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function A()
menu1 = gg.multiChoice({
"三倍开锁",
"0概率",
"明亮",
"速度跳高",
"倒地复活",
"穿墙",
"完美开锁",
"无视夹子",
"移动开物",
"人物踏空",
"人物锁血",
"开锁刷钱",
"范围开锁",
"视野扩大",
"返回界面",
}, nil, os.date("别再玩360了，虽然很稳，但是360检测高了。建议玩7233版本（检测低）"))
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
if menu1[15] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------

function a1()--3倍开锁
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

function a2()
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

function a3()
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

function a4()--3.6倍移速
    qmnb = {
      {["memory"] = 32},
      {["name"] = ""},--高跳移速
      {["value"] = 4453159313486957773, ["type"] = 32},
      {["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
      {["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 7,["offset"] =0, ["type"] = 16},
      {["value"] = 3.3,["offset"] =-16, ["type"] = 16},
    }
    xqmnb(qmnb)
end

function a5()
search(200.0,16,32)
py1(100.0,16,-20)
py1(0.30000001192092896,16,-16)
xg1(100,16,-24,false)
end

function a6()
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

function a7()
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

function a8()
fastsearch({
     {25.0, 16, 32},
     {1.0, -4, 16},
     {0.5, -8, 16},
     {2.5, -12, 16}
   }, {
     {0.0, -4, 16, false},
   },"无视夹子")
   end

function a9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-5.90756979e21;-7.15087112e24;-1.25143e23;-7.16031585e24;-1.30945135e25;-1.3068399e21;-9.40827903e22;-3.69511342e20;-3.69655493e20;-8.26501131e19;-1.26323303e23;-3.83692277e21;-9.38612132e22;-1.50171254e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30945135e25;-1.3068399e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-5.9029581e21;-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("移动开物")
	 gg.clearResults()
end

function a10()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("人物踏空开启成功")
  gg.clearResults()
end

function a11()
  gg.setRanges(32)
  gg.searchNumber("2F;1.5F;1,092,616,192D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("第一步开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("100F;1.5F;1,092,616,192D::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1092616192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("不死之身")
  gg.clearResults()
end

function a12()
fastsearch({
     {4489188110528151552, 32, 32},
     {256, 20, 4},
     {100, 24, 4},
   }, 
   {{1, 88, 4, true},
    {122879,92,4,true},},"4v1开锁无限刷钱")
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function a13()
qmnb = {
{["memory"] = 32},
{["name"] = "开锁范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 4.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function a14()
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
end

function B()
menu1 = gg.multiChoice({
"亮透",
"移速",
"穿墙",
"视角（稳定）",
"刷钱",
"无限夹子",
"返回脚本",
}, nil, os.date("很稳定"))
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end

function b1()
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

function b2()--3.6移速
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

function b3()
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

function b4()
qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function b5()
fastsearch({
     {4489188110528151552, 32, 32},
     {256, 20, 4},
     {100, 24, 4},
   }, 
   {{1, 88, 4, true},
    {122879,92,4,true},},"追捕刷钱")
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function b6()
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
    
function C()
menu1 = gg.multiChoice({
	 "锁子无后",
	 "13级间隔",
	 "子弹穿墙射程",
	 "道具无冷却",
	 "枪枪暴击",
	 "强制开门",
	 "锁定变身",
	 "移动开物",
	 "击倒队友",
	 "暗黑透视",
	 "明亮透视",
	 "雷达透视",
	 "自动开锁",
	 "倒地不清buff",
	 "解锁角色",
	 "角色皮肤",
	 "解锁道具",
	 "道具皮肤",
	 "道具520级",
	 "乱斗锁卡",
	 "返回界面"
}, nil, os.date("陆哥的源码"))
if menu1 == nil then else
if menu1[1] == true then C1() end
if menu1[2] == true then C2() end
if menu1[3] == true then C3() end
if menu1[4] == true then C4() end
if menu1[5] == true then C5() end
if menu1[6] == true then C6() end
if menu1[7] == true then C7() end
if menu1[8] == true then C8() end
if menu1[9] == true then C9() end
if menu1[10] == true then C10() end
if menu1[11] == true then C11() end
if menu1[12] == true then C12() end
if menu1[13] == true then C13() end
if menu1[14] == true then C14() end
if menu1[15] == true then C15() end
if menu1[16] == true then C16() end
if menu1[17] == true then C17() end
if menu1[18] == true then C18() end
if menu1[19] == true then C19() end
if menu1[20] == true then C20() end
if menu1[21] == true then HOME() end
end
GLWW=-1
end

function C1()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')

end
end
function C2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end
function C3()
xb=gg.alert("穿墙射程","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},},'子弹穿墙射程开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xF45760},},'子弹穿墙射程关')
end
end
function C4()
xb=gg.alert("道具冷却","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},},'道具无冷开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1f312d0},},'道具无冷关')
end
end
function C5()
xb=gg.alert("枪枪暴击","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},},'枪枪暴击开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1b1895c},},'枪枪暴击关')
end
end
function C6()
xb=gg.alert("强制开门","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db674},},'强制开启逃生门开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x20db674},},'强制开启逃生门关')
end
end
function C7()
xb=gg.alert("锁定变身","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1886fa8},},'锁定变身开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1886fa8},},'锁定变身关')
end
end
function C8()
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end
function C9()
xb=gg.alert("击倒队友","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x114690c},},'击倒队友开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x114690c},},'击倒队友关')
end
end
function C10()
xb=gg.alert("暗黑透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70560},},'暗黑透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd70560},},'暗黑透视关')
end
end
function C11()
xb=gg.alert("明亮透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},},'明亮透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x101c518},},'明亮透视关')
end
end
function C12()
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
function C13()
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
function C14()
xb=gg.alert("倒地不清buff","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12248},},'倒地不清buff开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1b12248},},'倒地不清buff关')
end
end
function C15()
xb=gg.alert("解锁角色","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA5158},},'解锁角色开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA5158},},'解锁角色关')
end
end
function C16()
xb=gg.alert("角色皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D0},},'角色全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA31D0},},'角色全皮关')
end
end
function C17()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},},'')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},},'解锁道具')
end

function C18()
xb=gg.alert("道具皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B5141C},},'道具全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0x1B5141C},},'道具全皮关')
end
end
function C19()
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
function C20()
xb=gg.alert("乱斗锁卡","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'乱斗锁卡开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1E07618},},'乱斗锁卡')
end
end

function D()
menu1 = gg.multiChoice({
"疾跑无敌",
"跳高无敌",
"返回界面",
}, nil, os.date("搭配防封稳，不搭配也行，但是有风险"))
if menu1 == nil then else
if menu1[1] == true then D1() end
if menu1[2] == true then D2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end


function D1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-256;-2,115,672,474;6,750,208;-65,536;65,535;-65,536;1,107,296,256;1,174,405,120;1,241,513,984;1,308,622,848;-922,746,880::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,750,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19,660,800", gg.TYPE_DWORD)
	 gg.toast("疾跑改Boss无敌")
	 gg.clearResults()
end

function D2()
qmnb = {
{["memory"] = 32},
{["name"] = "跳高改追捕无敌buff"},
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

function E()
menu1 = gg.multiChoice({
"🤖防举报（不建议开）🤖",
"👹全防（建议开）👹",
"👺防异常（不建议开）👺",
"👾xa全防（不建议开）👾",
"👽大厅防（不建议开）👽",
"😍新版防封（必开）😍",
"🤓防人工（会闪）🤓",
"😎防异常（建议开）😎",
"😤A内存防封（闪退）😤",
"🥰防追封（下线开）🥰",
"🥺防乱斗（作者专用）🥺",
"😡返回界面😡",
}, nil, os.date("星凌源码，懒得弄这些东西"))
if menu1 == nil then else
if menu1[1] == true then E1() end
if menu1[2] == true then E2() end
if menu1[3] == true then E3() end
if menu1[4] == true then E4() end
if menu1[5] == true then E5() end
if menu1[6] == true then E6() end
if menu1[7] == true then E7() end
if menu1[8] == true then E8() end
if menu1[9] == true then E9() end
if menu1[10] == true then E10() end
if menu1[11] == true then E11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end

function E1()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报[一局一开]")
end

function E2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1992", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1332", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1997", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1386", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1742", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1985", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1986", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1989", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1990", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1991", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1993", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1995", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1996", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1262", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10552", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10579", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10611", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1368", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1391", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1332", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1794", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1037", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1126", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1127", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1846", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1121", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1931", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1097", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1589", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function E3()
gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1;1;1;1;1;11;1;11;1;11;1;11;1;11;1;11;1;11;1;11;1;1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DOUBLE,freeze = true,value = 1}})
	 end
	 gg.toast("第一步")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("11;1;1;95;428;5451;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;16856;5427;5555;5555;57588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 6}})
	 end
	 gg.toast("注入成功")
	 gg.clearResults()
end

function E4()
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1633951848", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封12%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1465275732", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封14%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1445546323", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封18%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("289808488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封23%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1719865971", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封29%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("291852690", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封35%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("294719632", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封39%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1399156857", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封49%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1629516581", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封59%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1717921138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封69%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1627419765", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封73%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1394635634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封79%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1627414883", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封81%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1711617654", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封86%")
gg.clearResults()
gg.makeRequest("https://time.tianqi.com/")
gg.getResults(0)
gg.makeRequest("https://time.tianqi.com/")
gg.searchNumber("1465321814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100)
gg.editAll("", gg.TYPE_DWORD)
gg.toast("xa防封100%注入成功")
gg.clearResults()
end
function E5()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,879,076,961", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,953,497,204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,953,720,419", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,660,973,153", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,936,880,755", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,929,409,140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
--
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,745,421,313", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("大厅防封注入成功")
	 gg.clearResults()
end


function E6()--大厅防封
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("48,889,863;79,560,711;17,629,439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("大厅防封开启25%")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("7,562,610", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("大厅防封开启50%")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("大厅防封开启75%")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("16,846,327;7,237,481", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("大厅防封开启100%")
end

function E7()
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
--夏天
xtnb({{false,33554432,0,4,nil,nil}},{{0,0,4,false}},4,16384,"防人工")
end
     
     
     function E8()
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
  
       function E9()
    gg.clearResults()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 4
      }
    })
  end
  gg.toast("a内存防封二")
  gg.toast("正在检测中")
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("16进制防封开启.....................")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启.............???...???..............获取文件成功..")
  gg.toast("防封开启...........获取封号文件...............")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除检测")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启百分之50")
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
  gg.toast("内存检测删除成功")
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
  gg.toast("内存检测删除成功")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("..开启检测函数成功...")
  gg.toast("删除代码检测中")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.toast("100%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("1000%")
  gg.toast("正在保护中")
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("1.023021112")
  gg.toast("1.023021112")
  gg.toast("1.020103996")
  gg.toast("1.834850219")
  end
  
  function E10()
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
os.remove("/storage/emulated/0/Android/data/com.bfire.da.xinh/gameplugins/"..ac.."")
gg.toast("获取成功,已删除追封文件")
end

function E11()
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
  gg.toast("防封开启％10.")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启％20")
  gg.toast("防封开启％40")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除检测中％50")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("内存防封％60")
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
  gg.toast("内存检测正在删除％90")
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
  gg.toast("％100防封开启成功！")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  end
  
function F()
menu1 = gg.multiChoice({
"皮卡自调",
"滑板滑板",
"自走球自调",
"返回界面",
}, nil, os.date("好像是通用，我也不清楚"))
if menu1 == nil then else
if menu1[1] == true then F1() end
if menu1[2] == true then F2() end
if menu1[3] == true then F3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function F1()
xh = gg.prompt({i = "请输入你想要改的皮卡速度"}, {i = "800"})
gg.searchNumber("4.59999990463;3.0;200.0;5.0;0.10000000149;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
gg.setRanges(32)
	 gg.searchNumber("4.59999990463;3.0;200.0;5.0;0.10000000149;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("皮卡速度")
	 gg.clearResults()
end

function F2()
xh = gg.prompt({i = "请输入你想要改的滑板速度"}, {i = "800"})
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1019D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("滑板速度")
	 gg.clearResults()
end

function F3()
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

function i()
menu1 = gg.multiChoice({
"🍰疾跑🍰",
"🍔火箭筒1级🍔",
"🍉火箭筒2级🍉",
"🍎火箭筒3级🍎",
"🍊迫击炮1级🍊",
"🍆迫击炮2级🍆",
"🍅迫击炮3级🍅",
"🍚医疗箱🍚",
"🍙手榴弹🍙",
"🍺跳高🍺",
"🍻皮卡🍻",
"🍸冲锋枪🍸",
"🍏酒桶🍏",
"🍐自走球🍐",
"🍘阻挡箱🍘",
"🍓传送门🍓",
"🍇飞爪🍇",
"🍈狗🍈",
"🍑针🍑",
"🍒毒液🍒",
"🍼滑板🍼",
"🥞能量剑1级🥞",
"🥧能量剑2级🥧",
"🥖能量剑3级🥖",
"🥯蹦蹦枪🥯",
"🥮能量碗炮🥮",
"🦴小灰机🦴",
"🥛生命护盾🥛",
"🍕充气垫🍕",
"🌭魔法墙🌮",
"🌮战术导弹🌮",
"🌯追踪雷🌯",
"🍥治疗球🍥",
"🍭引力场🍭",
"🍖时光机🍖",
"🍗返 回 主 页🍗",
}, nil, os.date("陆哥的源码，因为自己懒"))
if menu1 == nil then else
if menu1[1] == true then i1() end
if menu1[2] == true then i2() end
if menu1[3] == true then i3() end
if menu1[4] == true then i4() end
if menu1[5] == true then i5() end
if menu1[6] == true then i6() end
if menu1[7] == true then i7() end
if menu1[8] == true then i8() end
if menu1[9] == true then i9() end
if menu1[10] == true then i10() end
if menu1[11] == true then i11() end
if menu1[12] == true then i12() end
if menu1[13] == true then i13() end
if menu1[14] == true then i14() end
if menu1[15] == true then i15() end
if menu1[16] == true then i16() end
if menu1[17] == true then i17() end
if menu1[18] == true then i18() end
if menu1[19] == true then i19() end
if menu1[20] == true then i20() end
if menu1[21] == true then i21() end
if menu1[22] == true then i22() end
if menu1[23] == true then i23() end
if menu1[24] == true then i24() end
if menu1[25] == true then i25() end
if menu1[26] == true then i26() end
if menu1[27] == true then i27() end
if menu1[28] == true then i28() end
if menu1[29] == true then i29() end
if menu1[30] == true then i30() end
if menu1[31] == true then i31() end
if menu1[32] == true then i32() end
if menu1[33] == true then i33() end
if menu1[34] == true then i34() end
if menu1[35] == true then i35() end
if menu1[36] == true then HOME() end
end
GLWW=-1
end
function i1()--疾跑新皮肤
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600051\n7级\n600056\n10级\n600061\n13级\n600066\n秋枫\n600661\n蝙蝠\n600761\n心之痕\n600981\n蜜蜂\n601126\n彩带\n601181\n青龙\n601211\n蝶舞\n601681'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end


function i2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	  fw= gg.prompt({i='4级\n600076\n7级\n600081\n10级\n600016\n13级\n600286\n焰\n600011\n鲤鱼王\n600441\n猎枪\n600736\n无垠星\n600816\n夜骑士\n601266\n火车\n601401\n迪迦\n601491'}, {i='0'})
	 gg.editAll(fw["i"], gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i3()--追踪雷13级皮肤
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
function i4()--滑板新皮肤
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

function i5()--蹦蹦枪新皮肤①
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

function i6()--蹦蹦枪新皮肤②
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

function i7()--蹦蹦枪新皮肤③
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

function i8()--引力场新皮肤
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

function i9()--传送门新皮肤 
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

function i10()--巡逻犬新皮肤
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

function i11()--蹦蹦枪新皮肤[风格]①
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

function i12()--蹦蹦枪新皮肤[风格]②
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

function i13()--蹦蹦枪新皮肤[风格]③
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

function i14()--引力场新皮肤[风格]
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
function i15()--传送门新皮肤[风格]
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

function i16()--巡逻犬新皮肤[风格]
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
	 function i17()
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

function i18()
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

function i19()
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
function i20()
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

function i21()
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

function i22()
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
function i23()
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

function i24()
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

function i25()
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
function i26()
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

function i27()
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
function i28()
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
function i29()
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

function i30()
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

function i31()
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

function i32()
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

function i33()
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
function i34()
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
function i35()
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

function G()
menu1 = gg.multiChoice({
"倒地结算",
"击倒50人",
"个人伤害",
"救人数量",
"逃脱八人",
"返回界面",
}, nil, os.date("伤感神的源码"))
if menu1 == nil then else
if menu1[1] == true then G1() end
if menu1[2] == true then G2() end
if menu1[3] == true then G3() end
if menu1[4] == true then G4() end
if menu1[5] == true then G5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end

function G1()
fastsearch({{100.0,16,32},{0.30000001192092896,4,16},}, {{0, -4, 16, false}})
end

function G2()
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
end

function G3()
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
end

function G4()
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function G5()
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})
end
function H()
menu1 = gg.multiChoice({
"一键开启逃生稳定（局内）",
"一键开启追捕稳定（局内）",
"返回界面",
}, nil, os.date("打白银的时候作者经常用"))

if menu1 == nil then else
if menu1[1] == true then H1() end
if menu1[2] == true then H2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function H1()
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

qmnb = {
{["memory"] = 32},
{["name"] = "3倍高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)

gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.59999990463;3.0;200.0;5.0;0.10000000149;0.80000001192::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_FLOAT)
	 gg.toast("皮卡加速")
	 gg.clearResults()
	
qmnb = {
{["memory"] = 32},
{["name"] = "开锁范围"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 4.7, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)



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
end

function H2()
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
{["name"] = "4倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)


qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
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
end

function Y()
menu1 = gg.multiChoice({
"无间",
"锁子",
"无后",
"破盾",
"返回界面",
}, nil, os.date("不搭配防封:赤石去吧你"))
if menu1 == nil then else
if menu1[1] == true then Y1() end
if menu1[2] == true then Y2() end
if menu1[3] == true then Y3() end
if menu1[4] == true then Y4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end

function Y1()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x2130BC, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function Y2()
nc_offset(getso("libil2cpp.so"),{{-486539263,4,0x1ba4524},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4528},})
end

function Y3()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2.02910614e20;0.00100000005;-1.30940708e25;-1.30683878e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("无后开启成功")
	 gg.clearResults()
end     

function Y4()
xtnb({{false,227805720,0,4,nil,nil},{-481296384,1540,4},{436207620,1544,4},{-442564508,1548,4}},{{-486539264,1516,4,false},{-516948194,1520,4,false}},4,16384,"破盾[开]")
end
function L()
menu1 = gg.multiChoice({
    "霸天斧连发",--1
    "蹦蹦枪连发",--2
    "冲锋枪连发",--3
    "火箭筒连发",--4
    "电球枪连发",--5
    "盾位连发",--6
    "红蜘蛛炮连发",--7
    "唤风镖连发",--8
    "回旋镖连发",--9
    "火箭筒连发",--10
    "能量剑连发",--11
    "腕炮连发",--12
    "迫击炮连发",--13
    "热破炮连发",--14
    "霰弹枪连发",--15
    "生物手枪连发",--16
    "圣女连发",--17
    "威震天炮连发",--18
    "像素剑连发",--19
    "滋水枪连发",--20
    "自动手枪连发",--21
    "返回界面",--22
}, nil, os.date("全版本通用"))
if menu1 == nil then else
if menu1[1] == true then L1() end
if menu1[2] == true then L2() end
if menu1[3] == true then L3() end
if menu1[4] == true then L4() end
if menu1[5] == true then L5() end
if menu1[6] == true then L6() end
if menu1[7] == true then L7() end
if menu1[8] == true then L8() end
if menu1[9] == true then L9() end
if menu1[10] == true then L10() end
if menu1[11] == true then L11() end
if menu1[12] == true then L12() end
if menu1[13] == true then L13() end
if menu1[14] == true then L14() end
if menu1[15] == true then L15() end
if menu1[16] == true then L16() end
if menu1[17] == true then L17() end
if menu1[18] == true then L18() end
if menu1[19] == true then L19() end
if menu1[20] == true then L20() end
if menu1[21] == true then L21() end
if menu1[22] == true then HOME() end
end
GLWW=-1
end

function L1()
    NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) nh({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})
end

function L2()
    Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) nh({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) nh({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) nh({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end

function L3()
   NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) nh({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})
end

function L4()
    NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) nh({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function L5()
  NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) nh({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})
end

function L6()
  NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) nh({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})
end

function L7()
  NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) nh({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})
end

function L8()
  NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) nh({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function L9()
  NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) nh({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})
end

function L10()
  NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) nh({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function L11()
 Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) nh({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) nh({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) nh({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end 
end

function L12()
  NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) nh({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function L13()
   NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) nh({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function L14()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) nh({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})  
end

function L15()
  Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) nh({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) nh({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end

function L16()
  NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) nh({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})
end

function L17()
  NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) nh({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})
end

function L18()
  NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) nh({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})
end

function L19()
  NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) nh({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})
end

function L20()
   NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) nh({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})
end

function L21()
  NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) nh({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})
end

function N()
menu1 = gg.multiChoice({
"道具一键美化",
"道具风格",
"道具品质",
"返回界面",
}, nil, os.date("不是实体的，别人看不到"))
if menu1 == nil then else
if menu1[1] == true then N1() end
if menu1[2] == true then N2() end
if menu1[3] == true then N3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function N1()
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

function N2()
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

function N3()
fastsearch({
     {26222, 2, 32},
     {-28646, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"普通卡")

	 fastsearch({
     {31232, 2, 32},
     {26377, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"稀有卡")
   
	fastsearch({
     {21490, 2, 32},
     {-29737, 2, 2}
   }, {
     {26143, 0, 2, false},
     {-32768, 2, 2, false},
   },"史诗卡")
end

function M()
menu1 = gg.multiChoice({
"全角色技能免费",
"全角色技能冷却",
"影之忍者技能攻击范围",
"影之忍者一套",
"小狮子一套",
"奥博范围攻击",
"奥博电机时间",
"返回界面",
}, nil, os.date("稳定奔放去吧，作者亲测，特别稳"))
if menu1 == nil then else
if menu1[1] == true then M1() end
if menu1[2] == true then M2() end
if menu1[3] == true then M3() end
if menu1[4] == true then M4() end
if menu1[5] == true then M5() end
if menu1[6] == true then M6() end
if menu1[7] == true then M7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function M1()
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
{-516948194,-572,4,false},
}, "全角色技能免费")
end

function M2()
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
{-516948194,-532,4,false},
}, "全角色技能冷却")
end

function M3()
local xt=gg.prompt({"影之忍者攻击范围"}, {[1] = 10}, {[1] = "text"})
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{xt[1],124,16,false}},16,32,"范围")
end

function M4()
xtnb({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{2.80259693e-45,0,16,true},{2.80259693e-45,4,16,false},{2.80259693e-45,8,16,false},{9999,108,16,false}},16,32,"满级影之忍者")
end

function M5()--狮子
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

function M6()
fastsearch({{3.799999952316284,16,32},{3,-20,16}},{{99,-20,16},{5,68,16,false}})
end

function M7()
fastsearch({{1033, 4, 32}, {0.5, 4, 16}, {1, 16,16 }}, {{9999,16,16,false}})
end

function P()
menu1 = gg.multiChoice({
"小黑子专属",
"好听音乐",
"停止播放",
"返回界面",
}, nil, os.date("作者一般不用"))
if menu1 == nil then else
if menu1[1] == true then P1() end
if menu1[2] == true then P2() end
if menu1[3] == true then P3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function P1()
  menu1 = gg.multiChoice({
"坤你太美",
"坤 出 没",
"红色坤脚",
"坤从未离去",
"坤坤进行曲",
"wake 坤",
"本草坤目",
"爱坤错过",
"past lives坤",
"坤哥进行曲",
"老八音乐",
"返回界面",
},nil,'ikun音乐')
    if menu1 == nil then gg.toast("取消首页") else
if menu1[1] == true then Ikun1() end
if menu1[2] == true then Ikun2() end
if menu1[3] == true then Ikun3() end
if menu1[4] == true then Ikun4() end
if menu1[5] == true then Ikun5() end
if menu1[6] == true then Ikun6() end
if menu1[7] == true then Ikun7() end
if menu1[8] == true then Ikun8() end
if menu1[9] == true then Ikun9() end
if menu1[10] == true then Ikun10() end
if menu1[11] == true then Ikun11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end

function Ikun1()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1340439829")
end

function Ikun2()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1949386323")
end

function Ikun3()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2002859701")
end

function Ikun4()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1995892148")
end

function Ikun5()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1970525448")
end

function Ikun6()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1976088197")
end

function Ikun7()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1972926273")
end

function Ikun8()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1960912412")
end

function Ikun9()
gg.playMusic("http://music.163.com/song/media/outer/url?id=2011105024")	
end

function lkun10()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1960595909.mp3")
end

function Ikun11()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1933706947.mp3")
end

function P3()
VV = "结束播放"
	gg.playMusic ( "https://fanyi.baidu.com/gettts?lan=zh&text="..VV.."&spd=6&source=wise" )
end


function P2()
SW="音乐功能"

  menu1 = gg.multiChoice({
    "起风了",--1
	"大哥背起行囊",--2
	"江南Style",--3
    "遗失的心跳",--4
    '高阶成长指南',--5
    '我们',--6
    '篝火旁',--7
    '心如止水',--8
    '爱坤进行曲',--9
    '隔岸(DJ)',--10
    '孤勇者',--11
    '把回忆拼好给你',--12
    '大眠',--13
    'Do lt',--14
    '小城夏天',--15
    '错位时空',--16
    'Drown(Alle Farben Remix)',--17
    'Where Is Your Love',--18
    'Relax',--19
    '苦茶子',--20
    'Fractures',--21
    '月亮之矢',--22
    '妈妈的话',--23
    '落差(DJ)',--24
    '没用功能',--25
    '四季予你',--26
    '苦咖啡',--27
    '凭什么觉得我还喜欢你',--28
    '难过',--29
    'ТАМАДА (Remix)',--30
    '爱如火',--31
    '寂寞烟火',--32
    '停止',
   '返回界面'},
    nil,'伤感才是必杀技')
    if menu1 == nil then gg.toast("取消首页") else
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
    if menu1[33] == true then LPM() end
    if menu1[34] == true then HOME() end
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

function LPM()
gg.toast("已停止音乐")
for i=1,100 do
gg.playMusic("stop")
gg.playMusic("stop")
gg.playMusic("stop")
end
end

function X()
menu1 = gg.multiChoice({
"皮卡霸王龙",
"霸王龙一套",
"返回界面",
}, nil, os.date("霸王龙"))
if menu1 == nil then else
if menu1[1] == true then X1() end
if menu1[2] == true then X2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function X1()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70014+65536, 10, 2, false}})
end

function X2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end
	
function R()
menu1 = gg.multiChoice({
"4V1传送",
"8V2传送",
"返回界面",
}, nil, os.date("伤感神的源码"))
if menu1 == nil then else
if menu1[1] == true then R1() end
if menu1[2] == true then R2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function R1()
menu1 = gg.multiChoice({
"🚗出生点🚗",--1
"🚕禁闭室🚕",--2
"🚙逃生点🚙",--3
"🚌左上锁🚌",--4
"🚎左下锁🚎",--5
"🏎️右上锁🏎️",--6
"🚓右下锁🚓",--7
"🚑上门🚑",--8
"🚒下门🚒",--9
"🚐返回主页🚐",--10
}, nil, os.date("4V1传送"))
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
if menu1[10] == true then HOME() end
end
GLWW=-1
end

function k1()
fastsearch({{0.3749999702,16,32},{-10,-152,16}},{{3.31672906876,-212,16},{15.10242652893,-204,16}}) 
end

function k2()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{41.2279510498,-212,16},{15.20110321045,-204,16}}) 
end

function k3()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.47306060791,-212,16},{15.10242652893,-204,16}}) 
end

function k4()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{24.47529602051,-212,16},{25.74204444885,-204,16}}) 
end

function k5()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.52613067627,-212,16},{2.29943323135,-204,16}}) 
end

function k6()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.20668029785,-212,16},{24.98922157288,-204,16}})
end

function k7()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{55.20252609253,-212,16},{3.50737595558,-204,16}})
end

function k8()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.47306060791,-212,16},{19.40088844299,-204,16}})
end

function k9()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{75.5991897583,-212,16},{10.4521522522,-204,16}})
end

function R2()
menu1 = gg.multiChoice({
"🚚出生点🚚",--1
"🚛禁闭室🚛",--2
"🚜逃生点🚜",--3
"🛴锁1🛴",--4
"🚲锁2🚲",--5
"🛵锁3🛵",--6
"🏍️锁4🏍️",--7
"🚔锁5🚔",--8
"🚍锁6🚍",--9
"🚘锁7🚘",--10
"🚖锁8🚖",--11
"🚡锁9🚡",--12
"🚠锁10🚠",--13
"🚟上门🚟",--14
"🚂中门🚂",--15
"🛬下门🛬",--16
"⚠️返回主页⚠️",--17
}, nil, os.date("8V2传送"))
if menu1 == nil then else
if menu1[1] == true then k10() end
if menu1[2] == true then k11() end
if menu1[3] == true then k12() end
if menu1[4] == true then k13() end
if menu1[5] == true then k14() end
if menu1[6] == true then k15() end
if menu1[7] == true then k16() end
if menu1[8] == true then k17() end
if menu1[9] == true then k18() end
if menu1[10] == true then k19() end
if menu1[11] == true then k20() end
if menu1[12] == true then k21() end
if menu1[13] == true then k22() end
if menu1[14] == true then k23() end
if menu1[15] == true then k24() end
if menu1[16] == true then k25() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end

function k10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{4.79341316223,-212,16},{4.50854158401,-204,16}})
end

function k11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{43.43095779419,-212,16},{19.70534706116,-204,16}})
end

function k12()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{86.59527587891,-212,16},{38.43141555786,-204,16}})
end

function k13()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
end

function k14()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
end

function k15()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
end

function k16()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
end

function k17()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
end

function k18()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
end

function k19()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
end

function k20()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
end

function k21()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
end

function k22()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
end

function k23()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{65.45124053955,-212,16},{33.24272537231,-204,16}})
end

function k24()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end

function k25()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.53405761719,-212,16},{18.30999183655,-204,16}})
end

-------------------------------------------------------------------------------------------------------------
function HOME()
print("为什么退出脚本😡")
lw=1
Main()
end
-------------------------------------------------------------------------------------------------------------
cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
