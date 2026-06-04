
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
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local cmenu1=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(cmenu1)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(cmenu1) return a[1].."开启成功" else lde.srg(cmenu1) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 			t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 

function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end
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

local il2cppStart = 0
for k, v in pairs(gg.getRangesList('libil2cpp.so$')) do
	if (v.state == 'Xa') then
		il2cppStart = v['start']
		break
	end
end
-------------------------------------------------------------------------------------------------------------
function Main()
menu = gg.choice({
     "逃生功能[稳定]",
	 "追捕功能[稳定]",
	 "游戏防闪+防封",
   
	 "️️退出脚本️️",
}, nil, os.date("\n温馨提示：修改器设置快速冻结：否\n冻结间隔：33000us"))
if menu == 1 then TS() end
if menu == 2 then ZB() end
if menu == 3 then FSF() end

if menu == 4 then Exit() end
XGCK=-1
end
-------------------------------------------------------------------------------------------------------------
function TS()
menu1 = gg.multiChoice({
"3倍开锁[稳定]",
"明透[稳定]",
"0概率触发开锁[稳定]",
"完美开锁[稳定]",
"无视夹子[稳定]",
"逃生秒结算[稳定]",
"不死捐钱[稳定]",
"移动开物[稳定]",
"一键控分[稳定]",
"️返回主页️",
}, nil, os.date("逃生功能[稳定]"))
if menu1 == nil then else
if menu1[1] == true then ts1() end
if menu1[2] == true then ts2() end

if menu1[3] == true then ts3() end
if menu1[4] == true then ts4() end
if menu1[5] == true then ts5() end
if menu1[6] == true then ts6() end
if menu1[7] == true then ts7() end
if menu1[8] == true then ts11() end
if menu1[9] == true then ts12() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------

function ts1()--3倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end


function ts2()--明透
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

function ts3()--0概率触发开锁
qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function ts4()--完美开锁
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



function ts5()--无视夹子
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



function ts6()
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



function ts7()--不死捐钱
gg.alert("温馨提示：开启成功后退出脚本后才有明显效果")
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






function ts11()
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



function ts12()--一键控分
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






















-------------------------------------------------------------------------------------------------------------
function ZB()
menu1 = gg.multiChoice({
"明透[稳定]",
"减少逃生血量[稳定]",
"一键控分[稳定]",
"追捕秒结算[稳定]",
"️返回主页️",
}, nil, os.date("追捕功能[稳定]"))
if menu1 == nil then else
if menu1[1] == true then zb1() end
if menu1[2] == true then zb2() end
if menu1[3] == true then zb3() end
if menu1[4] == true then zb4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function zb1()--明透
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



function zb2()--减少逃生血量
qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0, ["offset"] = -20, ["type"] = 16},
{["value"] = 1.0, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end



function zb3()--一键控分
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



function zb4()--备用一键控分
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








-------------------------------------------------------------------------------------------------------------






-------------------------------------------------------------------------------------------------------------
function FSF()
menu1 = gg.multiChoice({
"防闪[通用]",
"防封[自慰]",
"防封[自慰]",
"防封[自慰]",
"防封[自慰]",
"防封[自慰]",
"防封[自慰]",
"防封[自慰]",
"防封[自慰]",
"️返回主页️",
}, nil, os.date("游戏防闪+防封"))
if menu1 == nil then else
if menu1[1] == true then fsf1() end
if menu1[2] == true then fsf2() end
if menu1[3] == true then fsf3() end
if menu1[4] == true then fsf4() end
if menu1[5] == true then fsf5() end
if menu1[6] == true then fsf6() end
if menu1[7] == true then fsf7() end
if menu1[8] == true then fsf8() end
if menu1[9] == true then fsf9() end
if menu1[10] == true then HOME() end
end
GLWW=-1

end
-------------------------------------------------------------------------------------------------------------
function fsf1()
menu1 = gg.multiChoice({
"通用防闪",
"登录防闪",
"️返回主页️",
}, nil, os.date(""))
if menu1 == nil then else
if menu1[1] == true then fs1() end
if menu1[2] == true then fs2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function fs1()--360+九游+华为+vivo+好游快爆登录防闪
qmnb = {
{["memory"] = 16},
{["name"] = "360+九游+华为+vivo+好游快爆登录防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 999999,["offset"] =0, ["type"] = 4},
{["value"] = 999999,["offset"] =4, ["type"] = 4},
{["value"] = 999999,["offset"] =8, ["type"] = 4},
}
xqmnb(qmnb)
end

function fs2()--登录防闪
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

-------------------------------------------------------------------------------------------------------------
function readPointer(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end

function fsf2()--大厅防封
local addr = readPointer("libunity.so", {3108}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3044}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3052}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3180}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3684}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3140}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3188}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3092}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3068}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3084}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3172}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3164}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3060}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3204}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3156}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3100}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3212}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3228}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3124}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3220}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3148}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3076}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3132}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3116}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
local addr = readPointer("libunity.so", {3196}, 1)
gg.edits(addr, {{-1, 4, 0, true}})
gg.toast("已完成30％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("01035230h;00120021h;010351C0h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("已完成45％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("6E6F6365h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("已完成55％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("6E6F6365h;54007364h;76206568h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("已完成65％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("79726164h;100000~9000000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("已完成80％")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("79726164h", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
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
gg.toast("已完成100％")
end

function fsf3()--大厅防封
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

function fsf4()--大厅防封
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
	 gg.toast("大厅防封开启成功")
	 gg.clearResults()
end

function fsf5()--大厅防封
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("26,692,041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("3,540,518", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,745,363,969", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,879,446,549", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,914,059,776", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("大厅防封修改成功")
	 gg.clearResults()
     end
     
     function fsf6()--防封5
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封5修改成功")
	 gg.clearResults()
     end

function fsf7()--防封6
     gg.clearResults()
     gg.setRanges(32)
     gg.searchNumber("1.7857725E31", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("1.7857725E31", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(100)
     gg.editAll("0", gg.TYPE_FLOAT)
     gg.toast("防封6开启成功")
     gg.clearResults()
     end
     
function fsf8()--防封7
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("16,777,216;33,554,432;369,098,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16,777,216;33,554,432;369,098,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封7开启成功")
	 gg.clearResults()
     end
     
function fsf9()--防封8
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,441,792;13,369,344;738,263,040;503,316,480", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,441,792;13,369,344;738,263,040;503,316,480", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("防封8开启成功")
	 gg.clearResults()
     end
------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
function Exit()
print("花花内部")
os.exit()
end
-------------------------------------------------------------------------------------------------------------
function HOME()
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
-------------------------------------------------------------------------------------------------------------