
gg.copyText("官方交流群668328145")

DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1) for i=2 , #tb1 do local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]} table.
insert(lt1,i,mm2) end for i=1 , #tb2 do if tb2[i][2]~=nil then local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]} table.insert(lt2,i,mm3) else local mm3={["修改"] = false,["偏移"] = tb2[i][1]} table.insert(lt2,i,mm3) end end LongTao(lt1, lt2 ) end function LongTao(Search, Write) gg.clearResults() gg.setVisible(false) lx=Search[1]["类型"] gg.searchNumber(Search[1]["主特征码"], lx) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} if (count > 0) then gg.toast("共搜索 "..count.." 条数据") for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local num = Search[k]["副特征码"] if Search[k]["类型"]~= nil then lx =Search[k]["类型"] else lx = Search[1]["类型"] end for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + Search[k]["偏移"] tmp[#tmp].flags = lx end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} for i=1, #data do for k, w in ipairs(Write) do if w["类型"] ~= nil then lx = w["类型"] else lx = Search[1]["类型"] end t[#t+1] = {} t[#t].address = data[i] + w["偏移"] t[#t].flags = lx if (w["修改"]~=nil) and (w["修改"]~=false) then t[#t].value = w["修改"] gg.setValues(t) if (w["冻结"] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = w["冻结"] gg.addListItems(item) end end end end gg.loadResults(t) gg.toast("共偏移η"..#t.." 条数据ΔΘ") else gg.toast("未定位到数据！") return false end else gg.toast("未定位到数据！") return false end end local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local isok = mearrass(memory, array) if isok then local isok, datatype = typetab(array, type) if isok then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].isok = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].isok = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].isok = false end end end end for i = 1, #data do if data[i].isok then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.
memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze return gg.addListItems(t) else return gg.setValues(t) end else return false end end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end lde,mnsj={},{Dj="0.01",dv={},lz="/sdcard/.zbb",r={}} lde.gre,lde.sbr,lde.srg,lde.crs=gg.getResults,gg.searchNumber,gg.setRanges,gg.clearResults function lde.qb()table.remove(bc,#bc)table.remove(bc,#bc)end function bv(a,b) if not b then b=","end if not tostring(a):find(b)then return{a}end local tab={}local i=0 while true do j=string.find(a,b,i+1) if not j then table.insert(tab,a:sub(i+1,#a)) break end table.insert(tab,a:sub(i+1,j-1)) i=j end return tab end function so(a,b,c) local csn=gg.getRanges() gg.setVisible(false) lde.srg(a[3]) lde.crs() lde.sbr(a[2],a[4]) local js=gg.getResultCount() local count=lde.gre(js) lde.crs() if #count~=0 then local lode,lope,lobe={},{},{} for p=1,#b do lode[p]={} for i=1,#count do lode[p][i]={} lode[p][i].address=count[i].address+b[p][2] if not b[p][3]then b[p][3]=a[4]end lode[p][i].flags=b[p][3]end lode[p]=gg.getValues(lode[p]) db=bv(b[p][1],"~") if not db[2]then db[2]=db[1]end for i=1,#lode[p] do if tonumber(lode[p][i].value)>=tonumber(db[1]) and tonumber(lode[p][i].value)<=tonumber(db[2]) then lope[#lope+1]={} lope[#lope]=count[i] end end if #lope==0 then lde.srg(csn)if p>11 then p=11 end return "开启失败" end count=lope lope={}end for i=1,#c do for n=1,#count do lope[#lope+1]={} lope[#lope].address=count[n].address+c[i][2] if not c[i][3]then c[i][3]=a[4]end lope[#lope].flags=c[i][3] if c[i][1] then lope[#lope].value=c[i][1] else lope[#lope].value=gg.getValues(lope)[#lope].value end if c[i][4] then lobe[#lobe+1]={} lobe[#lobe]=lope[#lope] table.remove(lope,#lope) end if c[i][4]==1 then lobe[#lobe].freeze=true elseif c[i][4]==2 then lobe[#lobe].freeze=false end if c[i][5] then lobe[#lobe].name=c[i][5] end end end gg.setValues(lope) gg.addListItems(lobe) lde.srg(csn) return a[1].."开启成功" else lde.srg(csn) return a[1].."开启失败!!!" end end function Mswrite(read,write) 	gg.clearResults() 	gg.setRanges(read["内存"]) 	gg.setVisible(false) 	gg.searchNumber(read["主特征码"],read["类型"]) 	if gg.getResultCount()>0 then 		local Result=gg.getResults(gg.getResultCount()) 		gg.clearResults() 		for i=1,#read do 			local t={} 			for e,v in ipairs(Result) do 				t[#t+1]={address=v.address+read[i]["偏移"],flags=read[i]["类型"]} 			end 	
t=gg.getValues(t) 			for _a,x in ipairs(t) do 				if x.value~=read[i]["值"] then 					Result[_a]=nil 				end 			end 			local MS={} 			for i,v in pairs(Result) do 				MS[#MS+1]=Result[i] 			end 			Result=MS 		end 		if(#Result>0)then 			local data={{},{}} 			for i,v in ipairs(Result) do 				for a,x in ipairs(write) do 					if x["冻结"]==true then 						data[2][#data[2]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"],freeze=true} 					else 						data[1][#data[1]+1]={address=v.address+x["偏移"],flags=x["类型"],value=x["值"]} 					end 				end 			end 			gg.setValues(data[1]) 			gg.addListItems(data[2]) 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启成功,共搜索"..#Result.."条地址已修改"..(#data[1]+#data[2]).."条数据") 		else 			gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."修改失败") 		end 	else 		gg.toast((read["功能名称"] or read["名称"] or read["name"] or "").."开启失败,未搜索到数据") 	end end function readPointer(name,offset,i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i=2,#offset do addr=gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value=addr[1].value&0xFFFFFFFF end addr=addr[1].value+offset[i] end return addr end end 
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
------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
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
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("告:没有值可修改")
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
		gg.toast("已修改" .. (#tb[1] + #tb[2]) .. "个值，神雕🕊💰祝你")
		else
			gg.toast("告:没有值可修改")
		end
	end
end
function xtnb(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功，祝您游戏愉快") end
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
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器


-------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------
function Main()
  menu = gg.choice({
	 "👉本防👈",
	 "📀稳定📀",
	 "💿半稳💿",
	 "⌨变态⌨",
	 "🗽直装🗽",
	 "🦅传送🦅",
	 "🗾连发🗾",
	 "🌋乱斗🌋",
	 "🌈美化🌈",
	 "🌁角色🌁",
	 "🎟变身🎟",
	 "🥇解封🥇",
	 "🥈特殊🥈",
	 "🎬自用🎬",
	 "🥃空武—更🥃",
	 "💧空心直💧",
	 "🥛Music🥛",
	 "🍰变恐龙🍰",
	 "🥕总防🥕",
	 "🍏换卡🍎",
	 "💰BF💰",
	 "🍎火改🍏",
	 "🍏进化🍎",
	 "🥛影之自调🥛",
	 "🔪独家f🔪",
	 "🍮无无🍵",
	 "🍫无无🍵",
	 "🍾美化👝",
	 "🍾美化2👑",
	 "🍾美化3👑",
	 "🥛魔自用无修复🥛",
	 "🌽教自用无修复🌽",
	 "🧣雨自用无修复🧣",
	 "白8.14.1",
	 "️🈸退🈸",
}, nil, os.date("作者神雕己更新8.14.1🌸\n时间:%Y年/️%m月/%d日%H:%M:%S\n进程:".. gg.getTargetInfo().label.."\n包名:".. gg.getTargetPackage().."\n禁止倒卖"))
if menu == 1 then A() end
if menu == 2 then C() end
if menu == 3 then D() end
if menu == 4 then E() end
if menu == 5 then G() end
if menu == 6 then H() end
if menu == 7 then I() end
if menu == 8 then J() end
if menu == 9 then K() end
if menu == 10 then M() end
if menu == 11 then N() end
if menu == 12 then O() end
if menu == 13 then P() end
if menu == 14 then Q() end
if menu == 15 then w() end
if menu == 16 then nba() end
if menu == 17 then kun() end
if menu == 18 then dc() end
if menu == 19 then up() end
if menu == 20 then FV() end
if menu == 21 then CY() end
if menu == 22 then by() end
if menu == 23 then AP() end
if menu == 24 then LM() end
if menu == 25 then FG() end
if menu == 26 then MP() end
if menu == 27 then MT() end
if menu == 28 then ZS() end
if menu == 29 then KLJ() end
if menu == 30 then GPS() end
if menu == 31 then MWS() end
if menu == 32 then QAQ() end
if menu == 33 then A2() end
if menu == 34 then T() end
if menu == 35 then Exit() end
XGCK=-1
end
-------------------------------------------------------------------------------------------------------------
function C()
SN = gg.multiChoice({
  "🦄移动开物[什么时候都可以开全部]",
  "🦄穿墙",
  "🦄加速开锁",
  "失效👀",
  "范围锁🦄",
  "移速🦄",
  "跳高🦄",
  "亮透🦄",
  "夹子🦄",
  "视野🦄",
  "疾跑无敌",
  "返回上一页",
}, nil, "稳定上分一套\n神雕，永远的神")
  if SN==nil then else
  if SN[1] == true then c1() end
  if SN[2] == true then c2() end
  if SN[3] == true then c3() end
  if SN[4] == true then c4() end
  if SN[5] == true then c5() end
  if SN[6] == true then c6() end
  if SN[7] == true then c7() end
  if SN[8] == true then c8() end
  if SN[9] == true then c9() end
  if SN[10] == true then c10() end
  if SN[11] == true then c11() end
  if SN[12] == true then HOME() end
  end XGCK = -1 end

function c1()
fastsearch({{-444186608,4,16384},{-382906384,28,4},{167772164,192,4}},{{-516948194,28,4,false}})
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}},{{-516948194,184,4,false}})
end
function c2()
fastsearch({{49.0, 16, 32}, {-10.0, -340, 16}}, {{99999, -340, 16, false}})
end
function c3()
fastsearch({{1075838976,4,32},{1069547520,-8,4},{1073741824,-4,4}},{{3,-12,16,false}})
end
function c4()
fastsearch({{59.0, 16, 32}, {2.0, 20, 16}}, {{99999, 20, 16, false}})
qmnb = {
{["memory"] = 32},
{["name"] = "已失效"},
{["value"] = 0.36000001430511475, ["type"] = 16},
{["lv"] = 1.2000000476837158, ["offset"] = 84, ["type"] = 16},
}
qmxg = {
{["value"] = 3.6, ["offset"] = 84, ["type"] = 16},
}
xqmnb(qmnb)
end
function c5()
qmnb = {
{["memory"] = 32},
{["name"] = "范围开锁"},
{["value"] = 1.2999999523162842, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end
function c6()
fastsearch--加速
({
{-444251988,4,16384},
{-382908368,20,4},
{-494030840,24,4},
{-442543992,28,4},
},
{{-476052418,20,4},
{-516948194,24,4,false}})
end
function c7()
fastsearch--高跳
({
{0.00048828154,16,16384},
{-382908368,2228,4},
{-494030840,2232,4},
{167772164,2300,4}
},
{{-476052416,2228,4},
{-516948194,2232,4,false}})
end
function c8()
fastsearch({
{71077936, 4, 16384},
{71077968, -4, 4},
},{
{-516948194, 4, 4, false},
},"明透")
end
function c9()
fastsearch({
{25.0, 16, 32},
{1.0, -4, 16},
{0.5, -8, 16},
{2.5, -12, 16}
},{
{0.0, -4, 16, false},
},"无视夹子")
end
function c10()
fastsearch({{1109393408,4,32},{1086324736,4,4}},{{14,28,16,false}})
end
function c11()
fastsearch({{106147,4,32},{32,0x2c, 16}},{{300,0x6,2},},"疾跑改无敌")
end
function G()
B = gg.multiChoice({
     "模式🦄",--1
	 "角色🦄",--2
     "皮肤🦄",--3
     "角皮肤🦄",--4
     "间隔🦄",--5
     "子弹t",--6
     "无后🦄",--7
	 "金币🦄",--8
     "无冷🦄",--9
     "无敌🦄",--10
     "攻击🦄",--11
     "透视🦄",--12
     "不死🦄",--13
     "猎杀🍁",--14
     "关猎杀",--15
     "秒杀🍁",--16
     "关秒杀",--17
     "超稳定一件套",--18
     "返回上一页",--19
 },nil,"猎杀指的是猎杀队友\n神雕山圈钱中")
  if B == nil then
  else
  if B[1] == true then
    A1()
  end
  if B[2] == true then
    A2()
  end
  if B[3] == true then
    A3()
  end
  if B[4] == true then
    A4()
  end
  if B[5] == true then
    A5()
  end
  if B[6] == true then
    A6()
  end
  if B[7] == true then
    A7()
  end
  if B[8] == true then
    A8()
  end
  if B[9] == true then
    A9()
  end
  if B[10] == true then
    A10()
  end
  if B[11] == true then
    A11()
  end
  if B[12] == true then
    A12()
  end
  if B[13] == true then
    A13()
  end
  if B[14] == true then
    A14()
  end
  if B[15] == true then
    A15()
  end
  if B[16] == true then
    A16()
  end
  if B[17] == true then
    A17()
  end
  if B[18] == true then
    A18()
  end
  if B[19] == true then
    HOME()
end
end
end													  
function A1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xF82AAC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF82AB0},})
end
function A2()
fastsearch
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
end
function A3()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b05dcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B05DD0},})
end
function A4()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1076760},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
end
function A5()
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,"无间隔")end
function A6()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
fastsearch({{64205408, 4, 16384}, {-382908368, 4, 4}, {-494030840, 8, 4}, {-442544008, 12, 4}}, {{-476052716, 4, 4, false}, {-516948194, 8, 4, false}})--无后
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')
end
end
function A7()
fastsearch
({
{0.00100000005,16,16384},
{-382907280,40,4},
},
{
{1.6875,0,16,false}})
end
function A8()
fastsearch({{1104150528,4,32},{2,64,4}},{{1314520,52,4,false}})
end
function A9()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1CBE9F0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBE9F4},})
end
function A10()
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
function A11()
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end
function A12()
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
end
function A13()
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-476053504,5628,4,false},{-516948194,5632,4,false}},4,16384,"丝血不死")
end
function A14()
fastsearch--杀队友 --开启
({
{104,4,16384},
{104,4,4},
{-382908368,-1564,4}
},
{
{-516948194,-1564,4,false}})
end
function A15()
fastsearch--杀队友 --关闭
({
{104,4,16384},
{104,4,4},
{-516948194,-1564,4}
},
{
{-382908368,-1564,4,false}})
end
function A16()
fastsearch
({
{0.00048828148,16,16384},
{-382908368,1464,4},
{-494030840,1468,4},
{167772164,1420,4}
},
{{-516948194,1468,4},
{-476052718,1464,4,false}})
end
function A17()
fastsearch
({
{0.00048828148,16,16384},
{-476052718,1464,4},
{-516948194,1468,4},
{167772164,1420,4}
},
{{-494030840,1468,4},
{-382908368,1464,4,false}})
end
function A18()
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

function w2()
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
function D()
menu1 = gg.multiChoice({
"受伤踩夹锁血🍁",
"🦄全星耀动作🦄",
"🦄能量腕炮全屏🦄",
"🦄医疗箱全屏🦄",
"🦄复活🦄",
"999",
"🦄疾跑改无敌🦄",
"🦄无敌时间🦄",
"🦄无限夹子🦄",
"🦄防卡屏🦄",
"🦄不死捐钱🦄",
"🦄4v1刷钱🦄",
"🦄8v2刷钱🦄",
"停止👈",
"️返回上一页",
}, nil, os.date("半稳功能心挑选好吧！\n当前时间:%Y年/️%m月/%d日%H:%M:%S\n最近不知道是怎么了，老是喜欢用🦄"))
if menu1 == nil then else
if menu1[1] == true then d2() end
if menu1[2] == true then d4() end
if menu1[3] == true then d5() end
if menu1[4] == true then d6() end
if menu1[5] == true then d9() end
if menu1[6] == true then d10() end
if menu1[7] == true then d13() end
if menu1[8] == true then d14() end
if menu1[9] == true then d16() end
if menu1[10] == true then d17() end
if menu1[11] == true then d18() end
if menu1[12] == true then d19() end
if menu1[13] == true then d20() end
if menu1[14] == true then d21() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------


function d2()
fastsearch({{2.0,16,32},{1.5,4,16},{10.0,8,16},{0,12,16}},{{100,0,16},{-1,8,4,false}})
fastsearch
({
{128.31251525879,16,16384},
{-382907280,-400,4},
{167772163,-452,4}
},
{
{-516948194,-400,4,false}})
fastsearch
({{128.31251525879,16,16384},
{-516948194,-400,4},
{167772163,-452,4}
},
{
{-382907280,-400,4,false}})
end



function d4()
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
{961201,4,4},
{961361,8,4},
{961371,12,4},
{961191,16,4},
{961351,20,4,false}})
end

function d5()
fastsearch({
{5,16,32},
{1,4,16},
{0,8,16}},
{{1500,4,16, false}})
end


function d6()
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱全屏"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end





function d9()
fastsearch({{200.0, 16, 32},{100.0, -20, 16},{0.30000001192092896, -16, 16},},{{100, -24, 16, false},})
end

function d10()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3161500~3162500;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3161500~3162500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3149000~3151300;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3149000~3151300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3170000~3171000;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3170000~3171000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("3154000~3156000;23::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3154000~3156000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
	--	v.value = "这里是修改值"
		v.freeze = true
	end
end
gg.toast("开启成功你妈都能被防死")
gg.clearResults()
end


function d13()
fastsearch({{106147,4,32},{32,0x2c, 16}},{{300,0x6,2},},"疾跑改无敌")
end

function d14()
xtnb({{false,300,0,4,nil,nil},{65536,76,4},{-256,136,4},{255,140,4}},{{999,48,16,false}},4,32,"无限时间")
end



function d16()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("106;107;108", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("180;150;120;60::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("180;150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.toast("已将女特工自制夹子间隔修改为0.1秒")
	 gg.clearResults()
end

function d17()
local t = {"libunity.so", "Cd"}
local tt = {0x2400}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 1000000, freeze = true}})
end

function d18()
fastsearch({{37,4,32},{-1, 8, 4},{0, 16, 4},{-1, 24, 4},{37, 672, 4},}, {{1, 16, 4,true}})
end

function d19()
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end

function d20()
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function d21()
gg.clearList()
gg.toast("停止刷钱成功")
end

----------------------------------------------------------------------------------------------------
function E()
menu1 = gg.multiChoice({
"倒车改跳跃🦄",
"跳高无限时间🦄",
"火箭筒子穿🦄",
"火箭筒射程🦄",
"车轮无限时间🦄",
"时光机无限时间🦄",
"时光机随机buff🦄",
"优化战绩面板🦄",
"局内超级移速🦄",
"吼吼号全屏红旗🦄",
"A内存无间隔🦄",
"大神资格证🦄",
"无限刷道具🦄",
"一键美化道具🦄",
"观战控制别人🦄",
"返回上一页",
}, nil, os.date("变态功能 倒车改跳跃已修复"))
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e13() end
if menu1[8] == true then e7() end
if menu1[9] == true then e8() end
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then e13() end
if menu1[14] == true then e14() end
if menu1[15] == true then e15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------

function e1()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-4,294,967,177;4,294,967,295;8;4,294,967,295:125", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_QWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end

function e2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.3F;0.3F", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("4.3F",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("100000", FLOAT)
gg.toast("成功")
gg.clearResults()
end
end

function e3()
fastsearch
({
{-442563748,4,16384},
{-382906384,-60,4},
{-390230032,-108,4}
},
{
{-516948194,-60,4,false}})
end

function e4()
fastsearch({{1061997773,4,32},{1073741824,-4,4},{1088421888,-12,4}},{{1176255488,-8,4,false}})
end

function e5()
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

function e6()
fastsearch({{547,4,32},{5,4, 16}},{{9999999,4,16}})
end


function e13()
gg.searchNumber("0.20000000298F;0.10000000149F;547;1.36000001431F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	  gg.getResults(100)
      gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("108", gg.TYPE_DWORD)
	  gg.editAll("107", gg.TYPE_DWORD)
	  gg.editAll("202", gg.TYPE_DWORD)
	  gg.editAll("301", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.editAll("510", gg.TYPE_DWORD)
	  gg.editAll("509", gg.TYPE_DWORD)
	  gg.editAll("102", gg.TYPE_DWORD)
	  gg.editAll("109", gg.TYPE_DWORD)
	  gg.editAll("552", gg.TYPE_DWORD)
	  gg.editAll("100", gg.TYPE_DWORD)
	  gg.editAll("300", gg.TYPE_DWORD)
	  gg.toast("时光机随机buff")
	  gg.clearResults()
      gg.clearResults()
	  end

function e7()
fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})
fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})
fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function e8()
fastsearch({{1048039129,4,32},{1084017869,-12,4}},{{100,-28,16,false}})
end

function e10()
fastsearch({{2.5, 16, 32}, {568, 8, 4}, {1, 12, 4},{0,16,4},{0,84,4},{1075838976,4,4},{568,60,32}}, {{99,4,16,true},{10509,8,4,true},{0,92,16,true}},'吼吼号红旗')
end

function e11()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function e12()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;101D;102D;103D;104D::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4;101;102;103;104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6;301;302;303;304", gg.TYPE_DWORD)
	 gg.toast("已解锁大神资格证")
	 gg.clearResults()
	 end
	 
function e13()
fastsearch({{102, 4, 32}, {3, -8, 4}, {101, -4, 4}, {100, 4, 4}}, {{112, 4, 4, false}})
fastsearch({{50.0, 16, 32}, {60.0, -4, 16}, {30.0, 4, 16}}, {{0.8, -4, 16, false}, {0.8, 4, 16, false}})end

function e14()
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

function e15()
sz =gg.alert("观战","开启","关闭")
if sz ==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD37510},})
end
if sz == 2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xD37510},})
end
end

--------------------------------------------------------------------------------------------
function A()
menu1 = gg.multiChoice({
"🥕防闪🥕",
"🗡杀检测🗡",
"🛡防举报🛡",
"📿防封📿",
"📿大哥防2📿",
"💎删除日制💎",
"️返回上一页",
}, nil, os.date("独家防封"))
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then g4() end
if menu1[5] == true then g5() end
if menu1[6] == true then g6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------


function g1()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end


function g2()
if gg.getRangesList("libil2cpp.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x95C028; -- 数值地址:0xBB223028
	t[2] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x35A9B98; -- 数值地址:0xBDE70B98
	t[3] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x378E7B0; -- 数值地址:0xBE0557B0
	t[4] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x3AFB518; -- 数值地址:0xBE3C2518
	t[5] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4C9D264; -- 数值地址:0xBF564264
	t[6] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D54250; -- 数值地址:0xBF61B250
	t[7] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D59C98; -- 数值地址:0xBF620C98
	t[8] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D5B998; -- 数值地址:0xBF622998
	t[9] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D70394; -- 数值地址:0xBF637394
	t[10] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D704BC; -- 数值地址:0xBF6374BC
	t[11] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D74DB4; -- 数值地址:0xBF63BDB4
	t[12] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D7D648; -- 数值地址:0xBF644648
	t[13] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D7DF8C; -- 数值地址:0xBF644F8C
	t[14] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D7E254; -- 数值地址:0xBF645254
	t[15] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4D91064; -- 数值地址:0xBF658064
	t[16] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DB1C74; -- 数值地址:0xBF678C74
	t[17] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DB24BC; -- 数值地址:0xBF6794BC
	t[18] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DC2AB8; -- 数值地址:0xBF689AB8
	t[19] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DC46BC; -- 数值地址:0xBF68B6BC
	t[20] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DC6F04; -- 数值地址:0xBF68DF04
	t[21] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DE3E60; -- 数值地址:0xBF6AAE60
	t[22] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DE5058; -- 数值地址:0xBF6AC058
	t[23] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB2AC; -- 数值地址:0xBF6B22AC
	t[24] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB2EC; -- 数值地址:0xBF6B22EC
	t[25] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB32C; -- 数值地址:0xBF6B232C
	t[26] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB36C; -- 数值地址:0xBF6B236C
	t[27] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB3AC; -- 数值地址:0xBF6B23AC
	t[28] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB470; -- 数值地址:0xBF6B2470
	t[29] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB4B0; -- 数值地址:0xBF6B24B0
	t[30] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB4F0; -- 数值地址:0xBF6B24F0
	t[31] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB530; -- 数值地址:0xBF6B2530
	t[32] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEB570; -- 数值地址:0xBF6B2570
	t[33] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEBD00; -- 数值地址:0xBF6B2D00
	t[34] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4DEBE30; -- 数值地址:0xBF6B2E30
	t[35] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E09288; -- 数值地址:0xBF6D0288
	t[36] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E0FC50; -- 数值地址:0xBF6D6C50
	t[37] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E2498C; -- 数值地址:0xBF6EB98C
	t[38] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E498BC; -- 数值地址:0xBF7108BC
	t[39] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E5176C; -- 数值地址:0xBF71876C
	t[40] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E517AC; -- 数值地址:0xBF7187AC
	t[41] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51948; -- 数值地址:0xBF718948
	t[42] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51988; -- 数值地址:0xBF718988
	t[43] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E519E0; -- 数值地址:0xBF7189E0
	t[44] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51A20; -- 数值地址:0xBF718A20
	t[45] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51C78; -- 数值地址:0xBF718C78
	t[46] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E51CB8; -- 数值地址:0xBF718CB8
	t[47] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E6586C; -- 数值地址:0xBF72C86C
	t[48] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E6ECD0; -- 数值地址:0xBF735CD0
	t[49] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E706F0; -- 数值地址:0xBF7376F0
	t[50] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E70734; -- 数值地址:0xBF737734
	t[51] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E7283C; -- 数值地址:0xBF73983C
	t[52] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76084; -- 数值地址:0xBF73D084
	t[53] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76184; -- 数值地址:0xBF73D184
	t[54] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76244; -- 数值地址:0xBF73D244
	t[55] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76384; -- 数值地址:0xBF73D384
	t[56] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76474; -- 数值地址:0xBF73D474
	t[57] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E76544; -- 数值地址:0xBF73D544
	t[58] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4E7C9B4; -- 数值地址:0xBF7439B4
	t[59] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EA7250; -- 数值地址:0xBF76E250
	t[60] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EB715C; -- 数值地址:0xBF77E15C
	t[61] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EC2990; -- 数值地址:0xBF789990
	t[62] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4ECD6D0; -- 数值地址:0xBF7946D0
	t[63] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EDCC78; -- 数值地址:0xBF7A3C78
	t[64] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EEF350; -- 数值地址:0xBF7B6350
	t[65] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4EF5630; -- 数值地址:0xBF7BC630
	t[66] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F10828; -- 数值地址:0xBF7D7828
	t[67] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F2693C; -- 数值地址:0xBF7ED93C
	t[68] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26A2C; -- 数值地址:0xBF7EDA2C
	t[69] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26A98; -- 数值地址:0xBF7EDA98
	t[70] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26B6C; -- 数值地址:0xBF7EDB6C
	t[71] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26BD8; -- 数值地址:0xBF7EDBD8
	t[72] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F26C44; -- 数值地址:0xBF7EDC44
	t[73] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F3F760; -- 数值地址:0xBF806760
	t[74] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F49DE4; -- 数值地址:0xBF810DE4
	t[75] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5D6B8; -- 数值地址:0xBF8246B8
	t[76] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5D800; -- 数值地址:0xBF824800
	t[77] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5D990; -- 数值地址:0xBF824990
	t[78] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5DAD8; -- 数值地址:0xBF824AD8
	t[79] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5DC68; -- 数值地址:0xBF824C68
	t[80] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5DDB0; -- 数值地址:0xBF824DB0
	t[81] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5DF40; -- 数值地址:0xBF824F40
	t[82] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5E088; -- 数值地址:0xBF825088
	t[83] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5E218; -- 数值地址:0xBF825218
	t[84] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5E384; -- 数值地址:0xBF825384
	t[85] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5E520; -- 数值地址:0xBF825520
	t[86] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5E7C8; -- 数值地址:0xBF8257C8
	t[87] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F5E910; -- 数值地址:0xBF825910
	t[88] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F63DE8; -- 数值地址:0xBF82ADE8
	t[89] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F6DD04; -- 数值地址:0xBF834D04
	t[90] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F9276C; -- 数值地址:0xBF85976C
	t[91] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4F927AC; -- 数值地址:0xBF8597AC
	t[92] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4FCCF2C; -- 数值地址:0xBF893F2C
	t[93] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x4FE6FD8; -- 数值地址:0xBF8ADFD8
	t[94] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x51D2CF8; -- 数值地址:0xBFA99CF8
	t[95] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x52141B4; -- 数值地址:0xBFADB1B4
	t[96] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x521EAB8; -- 数值地址:0xBFAE5AB8
	t[97] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x5244544; -- 数值地址:0xBFB0B544
	t[98] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x52664D8; -- 数值地址:0xBFB2D4D8
	t[99] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x5287A40; -- 数值地址:0xBFB4EA40
	t[100] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x52BB0CC; -- 数值地址:0xBFB820CC
	t[101] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x52BB20C; -- 数值地址:0xBFB8220C
	t[102] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x52D6F3C; -- 数值地址:0xBFB9DF3C
	t[103] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x52EF5BC; -- 数值地址:0xBFBB65BC
	t[104] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x53242CC; -- 数值地址:0xBFBEB2CC
	t[105] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x5454890; -- 数值地址:0xBFD1B890
	t[106] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x545A1B8; -- 数值地址:0xBFD211B8
	t[107] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x54E1D6C; -- 数值地址:0xBFDA8D6C
	t[108] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x54E1DD8; -- 数值地址:0xBFDA8DD8
	t[109] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x54E2DF0; -- 数值地址:0xBFDA9DF0
	t[110] = gg.getRangesList("libil2cpp.so")[1]["start"] + 0x54E2E30; -- 数值地址:0xBFDA9E30
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
		[47] = { 
			address = t[47],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[49] = { 
			address = t[49],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[50] = { 
			address = t[50],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[51] = { 
			address = t[51],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[52] = { 
			address = t[52],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[53] = { 
			address = t[53],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[54] = { 
			address = t[54],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[55] = { 
			address = t[55],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[56] = { 
			address = t[56],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[57] = { 
			address = t[57],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[58] = { 
			address = t[58],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[59] = { 
			address = t[59],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[60] = { 
			address = t[60],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[61] = { 
			address = t[61],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[62] = { 
			address = t[62],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[63] = { 
			address = t[63],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[64] = { 
			address = t[64],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[65] = { 
			address = t[65],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[66] = { 
			address = t[66],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[67] = { 
			address = t[67],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[68] = { 
			address = t[68],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[69] = { 
			address = t[69],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[70] = { 
			address = t[70],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[71] = { 
			address = t[71],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[72] = { 
			address = t[72],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[73] = { 
			address = t[73],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[74] = { 
			address = t[74],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[75] = { 
			address = t[75],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[76] = { 
			address = t[76],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[77] = { 
			address = t[77],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[78] = { 
			address = t[78],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[79] = { 
			address = t[79],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[80] = { 
			address = t[80],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[81] = { 
			address = t[81],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[82] = { 
			address = t[82],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[83] = { 
			address = t[83],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[84] = { 
			address = t[84],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[85] = { 
			address = t[85],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[86] = { 
			address = t[86],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[87] = { 
			address = t[87],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[88] = { 
			address = t[88],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[89] = { 
			address = t[89],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[90] = { 
			address = t[90],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[91] = { 
			address = t[91],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[92] = { 
			address = t[92],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[93] = { 
			address = t[93],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[94] = { 
			address = t[94],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[95] = { 
			address = t[95],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[96] = { 
			address = t[96],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[97] = { 
			address = t[97],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[98] = { 
			address = t[98],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[99] = { 
			address = t[99],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[100] = { 
			address = t[100],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[101] = { 
			address = t[101],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[102] = { 
			address = t[102],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[103] = { 
			address = t[103],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[104] = { 
			address = t[104],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[105] = { 
			address = t[105],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[106] = { 
			address = t[106],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[107] = { 
			address = t[107],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[108] = { 
			address = t[108],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[109] = { 
			address = t[109],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[110] = { 
			address = t[110],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
end
if gg.getRangesList("libtersafe2.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x293310; -- 数值地址:0xA296D310
	t[2] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2B99B8; -- 数值地址:0xA29939B8
	t[3] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2B9E64; -- 数值地址:0xA2993E64
	t[4] = gg.getRangesList("libtersafe2.so")[1]["start"] + 0x2DFB8C; -- 数值地址:0xA29B9B8C
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
	})
end
if gg.getRangesList("libunity.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libunity.so")[1]["start"] + 0xE21820; -- 数值地址:0xC156F820
	t[2] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0F90; -- 数值地址:0xC171EF90
	t[3] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0FD4; -- 数值地址:0xC171EFD4
	t[4] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0FE0; -- 数值地址:0xC171EFE0
	t[5] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD0FE8; -- 数值地址:0xC171EFE8
	t[6] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1024; -- 数值地址:0xC171F024
	t[7] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1034; -- 数值地址:0xC171F034
	t[8] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1050; -- 数值地址:0xC171F050
	t[9] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1054; -- 数值地址:0xC171F054
	t[10] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1070; -- 数值地址:0xC171F070
	t[11] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1104; -- 数值地址:0xC171F104
	t[12] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1110; -- 数值地址:0xC171F110
	t[13] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1138; -- 数值地址:0xC171F138
	t[14] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1174; -- 数值地址:0xC171F174
	t[15] = gg.getRangesList("libunity.so")[1]["start"] + 0xFD1420; -- 数值地址:0xC171F420
	t[16] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAA48; -- 数值地址:0xC1728A48
	t[17] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAA6C; -- 数值地址:0xC1728A6C
	t[18] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAAB0; -- 数值地址:0xC1728AB0
	t[19] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAAE4; -- 数值地址:0xC1728AE4
	t[20] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAB58; -- 数值地址:0xC1728B58
	t[21] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAB84; -- 数值地址:0xC1728B84
	t[22] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDACC8; -- 数值地址:0xC1728CC8
	t[23] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDACFC; -- 数值地址:0xC1728CFC
	t[24] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAD10; -- 数值地址:0xC1728D10
	t[25] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAD34; -- 数值地址:0xC1728D34
	t[26] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAFB8; -- 数值地址:0xC1728FB8
	t[27] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDAFEC; -- 数值地址:0xC1728FEC
	t[28] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDB030; -- 数值地址:0xC1729030
	t[29] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDB074; -- 数值地址:0xC1729074
	t[30] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDC7F4; -- 数值地址:0xC172A7F4
	t[31] = gg.getRangesList("libunity.so")[1]["start"] + 0xFDC8F0; -- 数值地址:0xC172A8F0
	t[32] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDEB8; -- 数值地址:0xC173BEB8
	t[33] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF24; -- 数值地址:0xC173BF24
	t[34] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF54; -- 数值地址:0xC173BF54
	t[35] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF58; -- 数值地址:0xC173BF58
	t[36] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDF7C; -- 数值地址:0xC173BF7C
	t[37] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDFA4; -- 数值地址:0xC173BFA4
	t[38] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEDFF8; -- 数值地址:0xC173BFF8
	t[39] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE190; -- 数值地址:0xC173C190
	t[40] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE1D4; -- 数值地址:0xC173C1D4
	t[41] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE224; -- 数值地址:0xC173C224
	t[42] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE314; -- 数值地址:0xC173C314
	t[43] = gg.getRangesList("libunity.so")[1]["start"] + 0xFEE3C8; -- 数值地址:0xC173C3C8
	t[44] = gg.getRangesList("libunity.so")[1]["start"] + 0xFF3E04; -- 数值地址:0xC1741E04
	t[45] = gg.getRangesList("libunity.so")[1]["start"] + 0xFFA0F8; -- 数值地址:0xC17480F8
	t[46] = gg.getRangesList("libunity.so")[1]["start"] + 0xFFE08C; -- 数值地址:0xC174C08C
	t[47] = gg.getRangesList("libunity.so")[1]["start"] + 0x100F820; -- 数值地址:0xC175D820
	t[48] = gg.getRangesList("libunity.so")[1]["start"] + 0x101084C; -- 数值地址:0xC175E84C
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
		[47] = { 
			address = t[47],
			flags = 4,
			value = 0,
			freeze = true,
		},
		[48] = { 
			address = t[48],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("50%")
end
if gg.getRangesList("libbootstrap.so")[1] then
	local t = {}
	t[1] = gg.getRangesList("libbootstrap.so")[1]["start"] + 0x81ED8; -- 数值地址:0xC190FED8
	gg.addListItems({
		[1] = { 
			address = t[1],
			flags = 4,
			value = 0,
			freeze = true,
		},
	})
	gg.toast("防封注入成功")
end
end

function g3()
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
gg.toast("注入成功")
gg.clearResults()
end

function g4()
gg.setRanges(4)
gg.searchNumber("3042160", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1400017232"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1599227979", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-292136832"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,987,539,786", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,398,036,289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,631,207,205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("574,169,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,629,954,853", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,463,904,086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("639,645,488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("588,650,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("959,784,737", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()
gg.clearResults()
gg.searchAddress("842,084,353", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("842,084,353", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/tombstone_00")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/tombstone_01")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/tombstone_02")
gg.toast("🍏成功🍏")
end

function g5()
fastsearch({{4.6533968e33,16,16384}},{{0,0,16,false}})
fastsearch({{21530208,4,16384}},{{0,0,4,false}})
fastsearch({{1060864,4,16384}},{{0,0,4,false}})
fastsearch({{2359296,4,16384}},{{0,0,4,false}})
fastsearch({{2097152,4,16384}},{{0,0,4,false}})
fastsearch({{2621440,4,16384}},{{0,0,4,false}})
fastsearch({{8650752,4,16384}},{{0,0,4,false}})
fastsearch({{4194304,4,16384}},{{0,0,4,false}})
fastsearch({{1835008,4,16384}},{{0,0,4,false}})
end

function g6()
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除文件成功🐲")
gg.sleep(500)
gg.toast("获取文件中🐉")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo")
     gg.toast("获取成功,已删除追封文件🐉")
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
	 gg.toast("防追封成功")
end





-------------------------------------------------------------------------------------------------------------

function alll(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("修改失败")
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
		gg.toast("修改成功")
		else
		gg.toast("修改失败")
		end
	end
end




-------------------------------------------------------------------------------------------------------------

function I()
SN =gg.multiChoice({
  "霸天虎连发",
  "冲锋枪连发",
  "自动枪连发",
  "能量剑连发",
  "能量炮连发",
  "火箭筒连发",
  "蹦蹦枪连发",
  "乱斗火箭筒",
  "电球枪连发",
  "盾卫盾连发",
  "红蜘蛛连发",
  "换风标连发",
  "回旋镖连发",
  "迫击炮连发",
  "热破炮连发",
  "散弹枪连发",
  "生物枪连发",
  "圣女仗连发",
  "威震天连发",
  "像素键连发",
  "滋水枪连发",
  "返回上一页",
  }, nil, "以前的🕊")
  if SN == nil then
    else
  if SN[1] == true then
    a1()
  end
  if SN[2] == true then
    a2()
  end
  if SN[3] == true then
    a3()
  end
  if SN[4] == true then
    a4()
  end
  if SN[5] == true then
    a5()
  end
  if SN[6] == true then
    a6()
  end
  if SN[7] == true then
    a7()
  end
  if SN[8] == true then
    a8()
  end
  if SN[9] == true then
    a9()
  end
  if SN[10] == true then
    a10()
  end
  if SN[11] == true then
    a11()
  end
  if SN[12] == true then
    a12()
  end
  if SN[13] == true then
    a13()
  end
  if SN[14] == true then
    a14()
  end
  if SN[15] == true then
    a15()
  end
  if SN[16] == true then
    a16()
  end
  if SN[17] == true then
    a17()
  end
  if SN[18] == true then
    a18()
  end
  if SN[19] == true then
    a19()
  end
  if SN[20] == true then
    a20()
  end 
  if SN[21] == true then
    a21()
  end
  if SN[22] == true then
   HOME()
  end
  end
  XGCK = -1
  end
function a1()
NH=gg.prompt({"输入霸天斧连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1.2000000476837158, 24, 16}, {1008981770, 28, 4}}, {{NH[1], 8, 4, false}})end
function a2()
NH=gg.prompt({"输入冲锋枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1092616192, 32, 32}, {1028443341, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a3()
NH=gg.prompt({"输入自动手枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1097859072, 32, 32}, {1032805417, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a4()
Nh=gg.alert("能量剑","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入能量剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==2 then NH=gg.prompt({"输入金库能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图能量剑(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, -4, 4}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}}) end
end
function a5()
NH=gg.prompt({"输入能量腕炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1112539136, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a6()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a7() 
Nh=gg.alert("蹦蹦枪","普通","金库","大乱斗新地图") if Nh==1 then NH=gg.prompt({"输入蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115947008, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116733440, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==3 then NH=gg.prompt({"输入大乱斗新地图蹦蹦枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1067030938, 16, 4}, {1067030938, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function a8()
NH=gg.prompt({"输入火箭筒连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115684864, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) nh({{1117126656, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a9()
NH=gg.prompt({"输入电球枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1115815936, 32, 32}, {0, 12, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}, {0, 16, 16, false}})end
function a10()
NH=gg.prompt({"输入盾位连发(可多次修改↓)"},{[1]=""}) fastsearch({{1109393408, 32, 32}, {0, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end 
function a11()
NH=gg.prompt({"输入红蜘蛛炮(可多次修改↓)"},{[1]=""}) fastsearch({{1103626240, 32, 32}, {1041865114, 12, 4}, {1.2000000476837158, 16, 16}, {1067030938, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a12()
NH=gg.prompt({"输入唤风镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1113587712, 32, 32}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {1036831949, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a13()
NH=gg.prompt({"输入回旋镖连发(可多次修改↓)"},{[1]=""}) fastsearch({{1116078080, 32, 32}, {0, 4, 4}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}}, {{NH[1], 8, 4, false}})end
function a14()
NH=gg.prompt({"输入迫击炮1级连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120272384, 32, 32}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1056964608, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a15()
NH=gg.prompt({"输入热破炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1117782016, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a16()
Nh=gg.alert("霰弹枪","普通","金库") if Nh==1 then NH=gg.prompt({"输入散弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1120403456, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end if Nh==2 then NH=gg.prompt({"输入金库霰弹枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1100480512, 32, 32}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1065353216, 28, 4}, {0, 32, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}}) end
end
function a17()
NH=gg.prompt({"输入生物手枪连发(可多次修改↓)"},{[1]=""}) 
fastsearch({{4776067405938425856, 32, 32}, {1112014848, 4, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {1050253722, 28, 4}}, {{0, 24, 16, false}, {NH[1], 8, 4, false}})end
function a18()
NH=gg.prompt({"输入圣女连发(可多次修改↓)"},{[1]=""}) fastsearch({{1099956224, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1060320051, 20, 4}, {1050253722, 28, 4}}, {{NH[1], 8, 4, false}, {0, 24, 16, false}})end
function a19()
NH=gg.prompt({"输入威震天炮连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114636288, 32, 32}, {0, 12, 4}, {1056964608, 16, 4}, {1061997773, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function a20()
NH=gg.prompt({"输入像素剑连发(可多次修改↓)"},{[1]=""}) fastsearch({{1114112000, 32, 32}, {0, 4, 4}, {0, 12, 4}, {0, 16, 4}, {0, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end
function a21()
NH=gg.prompt({"输入滋水枪连发(可多次修改↓)"},{[1]=""}) fastsearch({{1094713344, 32, 32}, {1043878380, 12, 4}, {1060320051, 16, 4}, {1060320051, 20, 4}, {0, 24, 4}, {0, 28, 4}}, {{NH[1], 8, 4, false}})end

-------------------------------------------------------------------------------------------------------------
function K()
menu1 = gg.multiChoice({
"火箭筒皮肤",
"迫击炮皮肤",
"能量剑皮肤",
"能量炮皮肤",
"医疗箱皮肤",
"传送门皮肤",
"自走球皮肤",
"皮卡皮肤",
"飞爪皮肤",
"疾跑皮肤",
"散弹枪皮肤",
"️返回上一页",
}, nil, os.date("无死人隐身美化"))
if menu1 == nil then else
if menu1[1] == true then xxz1() end
if menu1[2] == true then xxz2() end
if menu1[3] == true then xxz3() end
if menu1[4] == true then xxz4() end
if menu1[5] == true then xxz5() end
if menu1[6] == true then xxz6() end
if menu1[7] == true then xxz7() end
if menu1[8] == true then xxz8() end
if menu1[9] == true then xxz9() end
if menu1[10] == true then xxz10() end
if menu1[11] == true then xxz11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end


function xxz1()
fastsearch
({
{500010,4,32},
},
{{600016,0,4,false}})
end

function xxz2()
fastsearch
({
{500020,4,32},
},
{{600236,0,4,false}})
end

function xxz3()
fastsearch
({
{500040,4,32},
},
{{650401,0,4,false}})
end

function xxz4()
fastsearch
({
{500060,4,32},
},
{{601796,0,4,false}})
end

function xxz5()
fastsearch
({
{500005,4,32},
},
{{602006,0,4,false}})
end

function xxz6()
fastsearch
({
{500600,4,32},
},
{{600331,0,4,false}})
end

function xxz7()
fastsearch
({
{500700,4,32},
},
{{600566,0,4,false}})
end

function xxz8()
fastsearch
({
{500002,4,32},
},
{{600231,0,4,false}})
end

function xxz9()
fastsearch
({
{500500,4,32},
},
{{600161,0,4,false}})
end

function xxz10()
fastsearch
({
{500001,4,32},
},
{{601211,0,4,false}})
end

function xxz11()
fastsearch
({
{500070,4,32},
},
{{601941,0,4,false}})
end

function M()
menu1 = gg.multiChoice({
"角色技能免费[大厅]",--1
"角色技能无冷[大厅]",--2
"玖儿免费无冷[局内]",--3
"玖儿加血减血[局内]",--4
"玖儿长度时间[局内]",--5
"奥博免费无冷[局内]",--6
"奥博范围伤害[局内]",--7
"奥博电击时间[局内]",--8
"团子免费无冷[局内]",--9
"团子技能变身[局内]",--10
"影忍免费无冷[局内]",--11
"影忍被动BUff[局内]",--12
"影忍技能落地[局内]",--13
"命石免费无冷[局内]",--14
"命石抱摔距离[局内]",--15
"命石抱摔冲刺[局内]",--16
"命石锁定抱摔[局内]",--17
"盾位普攻连发[局内]",--18
"劲凯超级技能[局内]",--19
"返回上一页"--20
 }, nil,os.date"by.鹿鹿原创—应该不算借")
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
if menu1[20] == true then HOME() end
end
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
-------------------------------------------------------------------------------------------------------------

function J()
SN =gg.multiChoice({
"锁定道具[大厅]",
"道具冷却[大厅]",
"渲染透视[大厅]",
"武器间隔[局内]",
"超级移速[大厅]",
"子弹穿墙[大厅]",
"武器无后[大厅]",
"锁定弹夹[大厅]",
"武器射程[大厅]",
"人物爬墙[大厅]",
"大量物资[局内]",
"返回上一页",
 }, nil, "乱斗稳定功能")
  if SN == nil then
  else
  if SN[1] == true then
    sz1()
  end
  if SN[2] == true then
    sz2()
  end
  if SN[3] == true then
    sz3()
  end
  if SN[4] == true then
    sz4()
  end
  if SN[5] == true then
    sz5()
  end
  if SN[6] == true then
    sz6()
  end
  if SN[7] == true then
    sz7()
  end
  if SN[8] == true then
    sz8()
  end
  if SN[9] == true then
    sz9()
  end
  if SN[10] == true then
    sz10()
  end
  if SN[11] == true then
    sz11()
  end  
  if SN[12] == true then
   HOME()
  end
end
  XGCK = -1
end

function sz1()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1dfd628},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1DFD62C},})
end

function sz2()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1CBE9F0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBE9F4},})
end

function sz3()--暗透
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD56A08},})
end	

function sz4()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function sz5()
fastsearch--加速
({
{-444251988,4,16384},
{-382908368,20,4},
{-494030840,24,4},
{-442543992,28,4},
},
{{-476052418,20,4},
{-516948194,24,4,false}})
end     

function sz6()
fastsearch
({
{-442563748,4,16384},
{-382906384,-60,4},
{-390230032,-108,4}
},
{
{-516948194,-60,4,false}})
end

function sz7()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})
end     

function sz8()--锁子弹
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1cddbcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CDDBD0},})
end

function sz9()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-7.16086925e24;-5.90526395e21;-1.30939232e25;-1.3068399e21;-9.49144318e20;-8.51502427e22;-3.69799608e20;-3.69655457e20;-3.85536951e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1.30939232e25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2.02910209e20", gg.TYPE_FLOAT)
	 gg.toast("射程")
	 gg.clearResults()
end

function sz10()
fastsearch({{-321.125,16,16384},{0.949999988079071,140,16}},{{-1,140,16,false}})
end

function sz11()
fastsearch({{1028443341, 4, 32}, {0, 24, 4}, {1065353216, 72, 4}, {1056964608, 80, 4}, {1056964608, -48, 4}}, {{0, 24, 4,true}
}, "箱子大量物资")
end

-------------------------------------------------------------------------------------------------------------
function N()
menu1 = gg.multiChoice({
"跳跳杆实体变身",
"吼吼号实体变身",
"跳高实体变身",
"阻挡箱实体变身",
"皮卡实体变身",
"团子实体变身",
"疾跑实体变身",
"滑板实体变身",
"返回上一页",
}, nil, os.date("变身功能\n仅限娱乐"))
if menu1 == nil then else
if menu1[1] == true then m1() end
if menu1[2] == true then m2() end
if menu1[3] == true then m3() end
if menu1[4] == true then m4() end
if menu1[5] == true then m5() end
if menu1[6] == true then m6() end
if menu1[7] == true then m7() end
if menu1[8] == true then m8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function m1()
function xxs(search, write)
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
end
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
xxs
({
{1077097267,4,32},
{1061158912,-4,4},
{1,4,4},
{20,12,4},
{21,8,4},
{1061997773,24,4},
{1053609165,-52,4},
{1056964608,-8,4},
{1077936128,-200,4},
{1,-92,4},
{0,-72,4},
{0,-68,4}
},
{
{QQ[1],28,4,false}})
end

function m2()
function CY(search, write)
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
end
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码↓"},{[1]=""})
CY({{-1080170863,4,32},{128,28,4}},{{QQ[1],8,4,false}})
end





function m3()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{110179604573797, 32, 32}, {25653, 4, 4}, {51456, 12, 4}, {256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end


function m4()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{110188194508389, 32, 32}, {25655, 4, 4}, {77056, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end


function m5()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]=""}) nh({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {NH[1]+65536, 10, 2, false}})
end



function m6()
function bby(search, write)
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
end
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
bby({{1141,4,32},{1142,4,4},{1143,8,4},{3,-4,4},{3,28,4},{0,44,4},{0,12,4}},{{90006,32,4},{90006,36,4},{qQQ[1],40,4,false}})
end


function m7()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]="70015"}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function m8()
function xxs(search, write)
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
end
QQ=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛"},{[1]=""})
xxs({{-1080170863,4,32},{116,28,4}},{{QQ[1],8,4,false}})
end
-------------------------------------------------------------------------------------------------------------
function O()
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

function TG(Ranges,Search,Write,Type,Name) gg.setRanges(Ranges) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if (count>0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if (tostring(v.value)~=tostring(num)) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data>0) then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write) do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if (w[3]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.toast("提示:".."\n"..Name) else gg.toast("提示:".."\n"..Name,false) return false end else gg.toast("提示:".."\n"..Name) return false end end

function P()
menu1 = gg.multiChoice({
"修改货币",
"修改等级",
"修改段位",
"修改道具",
"修改角色",
"️返回上一页",
}, nil, os.date("特殊功能"))
if menu1 == nil then else
if menu1[1] == true then xxs1() end
if menu1[2] == true then xxs2() end
if menu1[3] == true then xxs3() end
if menu1[4] == true then xxs4() end
if menu1[5] == true then xxs5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end

function xxs1()
local kj=gg.prompt({'银币','点券','钻石'})
if kj==nil then else
if kj[1]=='' or kj[2]=='' or kj [3]then end
TG(32,{{900001,0},{910001,4},{1,-8},},{{kj[1],-12,false},{kj[3],40,false},{kj[2],44,false},},4,"已修改为"..kj[1].."银币"..kj[2].."点券"..kj[3].."钻石")
end
end

function xxs2()
local xt=gg.prompt({"道具等级"}, {[1] = 13}, {[1] = "text"})
xtnb({{false,502000,0,4,nil,nil},{501900,4,4}},{{xt[1],56,4,false},{xt[1],60,4,false},{xt[1],64,4,false},{xt[1],68,4,false},{xt[1],72,4,false},{xt[1],76,4,false},{xt[1],80,4,false},{xt[1],84,4,false},{xt[1],88,4,false},{xt[1],92,4,false},{xt[1],96,4,false},{xt[1],100,4,false}},4,32,"修改等级")
end

function xxs3()
local SA=gg.prompt({"\n请输入需要修改的逃生段位"},{[1]=""})
xtnb({{false,900001,44,4,nil,nil},{910001,48,4},{0,52,4}},{{SA[1],0,4,false}},4,32,"逃生段位")
local SA=gg.prompt({"\n请输入需要修改的追捕段位"},{[1]=""})
xtnb({{false,900001,36,4,nil,nil},{910001,40,4},{0,44,4}},{{SA[1],0,4,false}},4,32,"追捕段位")end

function xxs4()
local fy=gg.prompt({"医疗箱自调\n\n道具卡：\n\n200 疾跑\n201 跳高\n300 侦查眼\n301 阻挡箱\n400 手雷\n401 医疗箱\n500 护盾\n700 狗\n701 针\n800 酒桶\n801 飞爪\n900 传送门\n901 自走球\n1000 毒液\n1001 滑板\n1002 魔法墙\n1003 引力场\n1004 治疗球\n1005 气垫\n1006 导弹\n1007 追踪雷\n1008 震荡波\n1009 小灰机\n1010 时光机\n1011 跳杆\n1012 拳套\n1016 吼吼号\n\n特殊卡：\n\n50001迪迦\n50002 泽塔\n50003 赛罗\n70500005小恶魔\n70500004 全体护盾\n70500002 夹子\n10500001 疾跑\n10500002 冲锋\n10500003 狐狸链子\n10500004 天降之物\n10500005 生物炸弹\n10500007 盾位护盾\n10500009 盾位冲锋\n10500010 火力支援\n10500012 骇客飞爪\n10500013 骇客隐身\n10500014 蛋黄酥\n10500015 粽子\n10500016 高跳团子"}, {[1] = 50}, {[1] = "1007"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱"},
{["value"] = 1007, ["type"] = 4},
{["lv"] = 37,["offset"] =0x4, ["type"] = 4},
{["lv"] = 3,["offset"] =-0x10, ["type"] = 4},
{["lv"] = 8,["offset"] =-0x18, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =-0x20, ["type"] = 4},
}
xqmnb(qmnb)
end

function xxs5()
a=gg.prompt({"BOSS10000 阿治2100 指绘师2000 机械之心1900 灵膳子1800 小骇客1700 命石者1600 小狮子1500 黎明盾卫1400 星辰圣女1300 影之忍者1200 水之忍者1100 小梦魇1000 小狐狸900艾可800 发明家700 魔术师600 机器人500 小学妹400 女特工300 失忆者200 雇佣兵100 自行修改"},{[1]="" })
fastsearch({
{100,4,32},
{2,-4,4},
{0,-8,4},
{0,-12,4}
},
{{a[1],4,4,true}})
end

-------------------------------------------------------------------------------------------------------------
function Q()
SN = gg.multiChoice({
  "疾跑无敌",
  "无间",
  "🔒子",
  "无后",
  "刷💰8v2",
  "停止",
  "破盾",
  "大变活人",
  "皮卡改龙",
  "苍龙冷却【大厅或后台】",
  "返回上一页",
}, nil, "自\n8.14.1")
  if SN==nil then else
  if SN[1] == true then c1() end
  if SN[2] == true then c2() end
  if SN[3] == true then c3() end
  if SN[4] == true then c4() end
  if SN[5] == true then c5() end
  if SN[6] == true then c6() end
  if SN[7] == true then c7() end
  if SN[8] == true then c8() end
  if SN[9] == true then c9() end
  if SN[10] == true then c10() end
  if SN[11] == true then HOME() end
  end XGCK = -1 end

function c1()
fastsearch({{106147,4,32},{32,0x2c, 16}},{{300,0x6,2},},"疾跑改无敌")
end
function c2()
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,"无间隔")end
function c3()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
fastsearch({{64205408, 4, 16384}, {-382908368, 4, 4}, {-494030840, 8, 4}, {-442544008, 12, 4}}, {{-476052716, 4, 4, false}, {-516948194, 8, 4, false}})--无后
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')
end
end
function c4()
fastsearch
({
{0.00100000005,16,16384},
{-382907280,40,4},
},
{
{1.6875,0,16,false}})
end
function c5()
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end

function c6()
gg.clearList()
gg.toast("停止刷钱成功")
end
function c7()
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
 function c8()
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

function c9()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70015+65536, 10, 2, false}})
	 end


function c10()
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

-------------------------------------------------------------------------------------------------------------
function w()
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
  },2018, "V凭空刷枪BXLB")

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



-------------------------------------------------------------------------------------------------
function nba()
menu1 = gg.multiChoice({
    "🕊无间隔🌸",
    "🕊锁弹夹🌸",
    "🕊无后座🌸",
    "🕊道具皮肤🌸",
    "🕊角色皮肤🌸",
    "🕊移动开物🌸",
    "🕊倒地丢道具🌸",
    "🕊道具无CD🌸",
    "🕊解锁模式🌸",  
    "乱斗锁道具🌸",
    "🕊透图🌸",
    "18级道具局内",
    "️返回神雕脚本",
}, nil, os.date("666\n还有些功能，等待更新"))
if menu1 == nil then else
if menu1[1] == true then xa1() end
if menu1[2] == true then xa2() end
if menu1[3] == true then xa3() end
if menu1[4] == true then xa4() end
if menu1[5] == true then xa5() end
if menu1[6] == true then xa6() end
if menu1[7] == true then xa7() end
if menu1[8] == true then xa8() end
if menu1[9] == true then xa9() end
if menu1[10] == true then xa10() end
if menu1[11] == true then xa11() end
if menu1[12] == true then xa12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end





function xa1()--无间隔
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x15c269c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x15C26A0},})
end




function xa2()--锁子弹
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1cddbcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CDDBD0},})
end



	
function xa3()--无后
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})
end





function xa4()--道具卡皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b05dcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B05DD0},})
end



function xa5()--角色皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1076760},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
end



function xa6()--移动开物
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x170ec1c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x170ec20},})
end



function xa7()--倒地丢道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1CBBFC8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBBFCC},})
end



function xa8()--道具无cd
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1E59E9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E59EA0},})
end




function xa9()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xF82AAC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF82AB0},})
end

function xa10()--乱斗锁卡
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1dfd628},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1DFD62C},})
end

function xa11()--暗透
nc_offset(getso("libil2cpp.so"),{{-1,16,0xD56A08},})
end

function xa12()--改等级(目前改18)
nc_offset(getso("libil2cpp.so"),{{-476053486,4,0xD32D44},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD32D48},})
end


-------------------------------------------------------------------------------------------------
local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
    g.data = loadfile("-- WSG PRO 1.0.9(109)\n"..g.config)
    if g.data ~= nil then
        g.sel = g.data()
        g.data = nil
    end
    if g.sel == nil then
        g.sel = {"爱如火","30"}
    end
end
bei()
--搜索歌曲
function start(name,sl)
    fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
    return fw
end
--歌词
--播放音乐
function play(id,name)
    gg.toast("正在播放音乐："..name,true)
    gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end
--停止播放
function stop()
    gg.toast("正在停止音乐")
    for i=1,100 do
        gg.playMusic("stop")
        gg.playMusic("stop")
        gg.playMusic("stop")
    end
end
----
function Play(gqlb,idb)
    SN = gg.choice(gqlb,nil,ts)
    if SN == nil then XGCK =-1 else
        sn=gg.choice({"播放歌曲","播放并下载"},nil,"歌曲："..gqlb[SN])
        if sn == nil then end
        if sn == 1 then
            play(idb[SN],gqlb[SN])
        end
        if sn == 2 then
            local XEY=gg.makeRequest("http://music.163.com/song/media/outer/url?id="..idb[SN]..".mp3").content
            local XEY1=gg.getFile():gsub("[^/]+$","")..gqlb[SN]..".mp3"
            io.open(XEY1,"w"):write(XEY)
            gg.alert("小鳄鱼:\n\n音乐已成功下载位置:\n\n"..XEY1)
        end
        XGCK=-1
    end
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
    local data = "-- WSG PRO 1.0.9(109)\nreturn " .. str
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
        if res.result.songs[i] then
            gqlb[i]=res.result.songs[i].name
            idb[i]=res.result.songs[i].id
        end
    end
    --print(idb)
end
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end
--主页
function kun()
    SN = gg.choice({
        "搜索歌曲",
        "搜索列表",
        "播放热歌",
        "停止播放",
        "️️返回️️",
    },2018,os.date("添加一键下载音乐\n\n%Y年%m月%d日%H时%M分%S秒"))
    if SN==1 then s1() end
    if SN==2 then Play(gqlb,idb) end
    if SN==3 then YY998() end
    if SN==4 then stop() end
    if SN==5 then HOME() end
    GLWW=-1
end
---
function s1()
    search = gg.prompt({
        "输入要搜索的歌曲\n可加上歌手名字",
        "设置显示数量(数字)",
    },g.sel,{
        "text",
    })
    if not search then return end
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

-------------------------------------------------------------------------------------------------
function dc()
menu1 = gg.multiChoice({
'吼吼号实🕊',
'阻挡箱实🕊',
'跳高实体🕊',
'疾跑实体🕊',
'皮卡实体🕊',
'滑板实体🕊',
"️返回神雕脚本️",
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

-------------------------------------------------------------------------------------------------

function up()
menu1 = gg.multiChoice({
"全版本防闪",
"防封1🕊",
"防封2🕊",
"防封3🕊",
"防封4🕊",
"防封5🕊",
"防封6🕊",
"防封7🕊",
"防封8🕊",
"mund防🕊",
"EZ全防🕊",
"大厅防🕊",
"局内防🕊",
"Dange-fan",
"防人工🕊",
"超强大厅防🕊",
"超强局内防🕊",
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
if menu1[10] == true then fsf10() end
if menu1[11] == true then fsf11() end
if menu1[12] == true then fsf12() end
if menu1[13] == true then fsf13() end
if menu1[14] == true then fsf14() end
if menu1[15] == true then fsf15() end
if menu1[16] == true then fsf16() end
if menu1[17] == true then fsf17() end
if menu1[18] == true then HOME() end
end
GLWW=-1
end
function fsf17()
fastsearch({{1987539786,4,4}},{{0,0,4,true}})
fastsearch({{1398036289,4,4}},{{0,0,4,true}})
fastsearch({{574169904,4,4}},{{0,0,4,true}})
fastsearch({{1629954853,4,4}},{{0,0,4,true}})
fastsearch({{1463904086,4,4}},{{0,0,4,true}})
fastsearch({{639645488,4,4}},{{0,0,4,true}})
fastsearch({{588650008,4,4}},{{0,0,4,true}})
fastsearch({{959784737,4,4}},{{0,0,4,true}})

nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xFBAD78},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFBAD7C},})

nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1882050},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x187de9c},})

nc_offset(getso("libil2cpp.so"),{{0,16,0x3CABFAC},})
nc_offset(getso("libil2cpp.so"),{{0,16,0x3CC15B0},})
nc_offset(getso("libil2cpp.so"),{{0,16,0x3D8D204},})
end

function fsf16()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("842%🕊")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("1003%🕊")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("1543%🕊")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("1964%🕊")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("01902%🕊")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("5201%✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("13145%✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("Dange🕊🕊🕊🕊🕊100000000%奔驰\n全防")
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("6,948,938;6,948,400;536,991,232;59,900,929;100,768,768;65,829,889;256,513;4,981,728;5,375,536;10,806;1,275,468,816;1,343,107,584;1,678,135,808:3825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,948,938;6,948,400;536,991,232;59,900,929;100,768,768;65,829,889;256,513;4,981,728;5,375,536;10,806;1,275,468,816;1,343,107,584;1,678,135,808:3825", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("全防  ✓")
	 gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("43646976", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("30408704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("66322432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("xa防1  ✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("99352576", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("47841280", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("28311552", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("xa防2  ✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("46399488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("31719424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("22937600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("xa防封3  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第一步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第二步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第三步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("第四步  ✓")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("25%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("50%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("75%✓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("100%防")
gg.clearResults()

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('65,793',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常1🕊")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('26,625',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常2🕊")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('23,552',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常3🕊")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('21,568',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常4🕊")
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('13,312',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("防异常全🕊")

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,498,683,479", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("999%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-73,930,879", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("1534%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("567,981,756", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("6342%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-69,733,503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("96734%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2,097,155", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("9646454%")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6,291,461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("1966374%")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32,178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("349733456%")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("23,955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("Dange全防开启成功🕊")
gg.clearResults()

  gg.toast("EZ内存防封一🕊")
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
  gg.toast("EZ内存防封二🕊")
  gg.toast("正在检测中")
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中🕊")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("🕊16进制防封开启.....................🕊")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启.............🕊获取文件成功..")
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
  gg.toast("开启百分之199737")
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
  gg.toast("内存检测删除成功🕊")
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
  gg.toast("内存检测删除成功🕊")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("..开启检测函数🕊")
  gg.toast("删除代码检测中🕊")
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
  gg.toast("正在保护中🍎")
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
  gg.toast("全部防封开启成功🍏")

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
gg.toast("开启🍎%")
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
gg.toast("Dange/fan")
end

function fsf15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("33554432,0,4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0,0,4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4,16384}})
	 end
	 gg.toast("防人工开启成功")
	 gg.clearResults()
end


function FV()
A = gg.choice({    
	 "火箭筒🕊",
	 "疾跑🕊",
	 "跳高🕊",
	 "皮卡🕊",
	 "拳套🕊",
	 "箱子🕊",
     "返回",
}, nil,'别说我是大牛🕊')
if A==1 then
	 FV1()
end
if A==2 then
	 FV2()
end
if A==3 then
	 FV3()
end
if A==4 then
	 FV4()
end
if A==5 then
	 FV5()
end
if A==6 then
	 FV6()
end
if A==7 then
	 HOME()
end
XGCK =-1
end
function FV2()--疾跑

local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{20528,32,4},
{51200,40,4}
},{
{SA[1],-12,4,false}
}) 
end

function FV3()--跳高

local SE=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25653,32,4},
{51456,40,4}
},{
{SE[1],-12,4,false}
}) 
end

function FV5()--拳套

local SQ=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{SQ[1],-12,4,false}
}) 
end

function FV6()--阻挡箱

local SG=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{77056,40,4}
},{
{SG[1],-12,4,false}
}) 
end
function FV4()--皮卡

local SU=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{46129,32,4},
{28416,40,4}
},{
{SU[1],-12,4,false}
})
end
function FV1()
local SP=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪230  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{64048,32,4},
{25600,40,4}
},{
{SP[1],-12,4,false}
})
end


function HS1()
local ML=gg.prompt({"请输入你要改的大小"},{[1]="1.0" })
fastsearch({{18.0, 16, 32}, {8.0, -8, 16}, {1.0, -4, 16},  {-1.0, 8, 16}}, 
{
{ML[1], 4, 16, false}})
end

-------------------------------------------------------------------------------------------------
function CY()
menu1 = gg.multiChoice({
"初始-必须开-🕊",
"酒全+无敌🕊",
"疾跑无敌🕊",
"跳高暴走🕊",
"疾跑改bff[自]🕊",
"疾跑随机buff🕊",
"疾跑bos无敌🕊",
"跳高提升攻速[无限时长]🕊",
"生命护盾改buff🕊",
"追捕暴走🕊",
"跳高时间🕊",
"无敌加长🕊",
"酒桶伤害范围buff[自调]🕊",
"酒桶禁攻🕊",
"酒桶随机buff🕊",
"追捕倒地不起🕊",
"️返回主页️",
}, nil, os.date("道具BFF功能-不算全🕊"))
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
function bf16()
function ti(search, write)  
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("OPEN FAILED")
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("OPEN FAILED")
		end
	end
end

ti({{101, 4, 32}, {102, 4, 4}, {3, -4, 4}}, {{117, 0, 4, false}})
ti({{90.0, 16, 32}, {60.0, -4, 16}, {12.0, 4, 16}}, {{9999, -4, 16, false}, {9999, 0, 16, false}, {9999, 4, 16, false}})
end

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

function rr()
menu1 = gg.multiChoice({
"",
"",
"返回上一页"},
nil,'CY')
if menu1 == nil then else
if menu1[1] == true then rr1() end
if menu1[2] == true then rr2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
function rr2()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/9316e1fac05fdf6bc9df414e2112cc0d.lua").content))
end

function rr1()
pcall(load(gg.makeRequest("http://ayangwp.icu/down.php/e25fd38b4b13b82e441a3858a6b3a563.lua").content))
end

-------------------------------------------------------------------------------------------------

function by()
SN = gg.multiChoice({
"火箭筒改滋水枪",
"火箭筒改生物枪",
"火箭筒改电球枪",
"火箭筒改回旋镖",
"火箭筒改像素剑",
"火箭筒改自动手枪" ,
"火箭筒改变形金刚",
"火箭筒改能量剑",
"火箭筒改迫击炮",
"火箭筒改蹦蹦枪",
"火箭筒改散弹枪",
"火箭筒改冲锋枪",
"火箭筒改唤风标镖",
"火箭筒改霸天斧",
"火箭筒改能量腕炮",
"火箭筒改火箭筒",
"w🕊无",
"w🕊",
"w🕊",
"返回脚本",
 },nil,os.date'🕊神雕🕊')
  if SN == nil then
  else
  if SN[1] == true then
   NH1()
  end
  if SN[2] == true then
   NH2()
  end
  if SN[3] == true then
   NH3()
   end
  if SN[4] == true then
   NH4()
   end   
  if SN[5] == true then
   NH5()
   end
  if SN[6] == true then
   NH6()
   end
  if SN[7] == true then
   NH7()
   end
  if SN[8] == true then
   NH8()
   end
  if SN[9] == true then
   NH9()
   end
  if SN[10] == true then
   NH10()
   end           
  if SN[11] == true then
   NH11()
   end
  if SN[12] == true then
   NH12()
   end
  if SN[13] == true then
   NH13()
   end 
  if SN[14] == true then
   NH14()
   end
  if SN[15] == true then
   NH15()
   end
  if SN[16] == true then
   NH16()
   end
  if SN[17] == true then
   NH17()
   end 
  if SN[18] == true then
   NH18()
   end
  if SN[19] == true then
   NH19()
   end
  if SN[20] == true then
   HOME()
   end                            
  end
end
  XGCK = -1


function NH1()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2849280, 12, 4, false}})
end

function NH2()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2585600, 12, 4, false}})
end

function NH3()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2600960, 12, 4, false}})
end

function NH4()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2598400, 12, 4, false}})
end

function NH5()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{2595840, 12, 4, false}})
end

function NH6()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{3105280, 12, 4, false}})
end

function NH7()
NH=gg.alert("变形金刚","热破","威震天","红蜘蛛")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{23065600, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{23091200, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{23116800, 12, 4, false}})
end end

function NH8()
NH=gg.alert("能量剑","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{35840, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{36096, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{36352, 12, 4, false}})
end end

function NH9()
NH=gg.alert("迫击炮","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{28160, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{28416, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{28672, 12, 4, false}})
end end

function NH10()
NH=gg.alert("蹦蹦枪","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{38400, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{38656, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{38912, 12, 4, false}})
end end

function NH11()
NH=gg.alert("霰弹枪","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{48640, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{48896, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{49152, 12, 4, false}})
end end

function NH12()
NH=gg.alert("冲锋枪","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{33280, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{33356, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{33792, 12, 4, false}})
end end

function NH13()
NH=gg.alert("唤风镖","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{51200, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{51456, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{51712, 12, 4, false}})
end end

function NH14()
NH=gg.alert("霸天斧","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{53760, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{54016, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{54272, 12, 4, false}})
end end

function NH15()
NH=gg.alert("能量腕炮","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{46080, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{46336, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{46592, 12, 4, false}})
end end

function NH16()
NH=gg.alert("火箭筒","1级","2级","3级")
if NH==1 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{25600, 12, 4, false}})
end
if NH==2 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{25856, 12, 4, false}})
end
if NH==3 then
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{26112, 12, 4, false}})
end end

function NH17()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{30720, 12, 4, false}})
end

function NH18()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{40960, 12, 4, false}})
end

function NH19()
nh({{275084873969253, 32, 32}, {64048, 4, 4}}, {{43520, 12, 4, false}})
end

-------------------------------------------------------------------------------------------------
function AP()
menu1 = gg.multiChoice({
"技能免费⚡️",
"技能无限⚡️",
"技能无冷却🍎",
"命石者🍏",
"星辰圣女🕊",
"艾可🧠",
"金库艾可🧠",
"水之忍者🐉",
"小狐狸🐉",
"小狮子🐉",
"奥博🐲",
"影之忍者🐲",
"团子🌑",
"返回上一页"},
nil,'CY')
if menu1 == nil then else
if menu1[1] == true then nmdb1() end
if menu1[2] == true then nmdb2() end
if menu1[3] == true then nmdb3() end
if menu1[4] == true then nmdb4() end
if menu1[5] == true then nmdb5() end
if menu1[6] == true then nmdb6() end
if menu1[7] == true then nmdb7() end
if menu1[8] == true then nmdb8() end
if menu1[9] == true then ndmb9() end
if menu1[10] == true then nmdb10() end
if menu1[11] == true then nmdb11() end
if menu1[12] == true then nmdb12() end
if menu1[13] == true then nmdb13() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end

function nmdb1()
qc=gg.alert("技能免费","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1FE9644},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FE9648},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1FEA584},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEA588},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1FE9644},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1FE9648},})
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0x1FEA584},})
nc_offset(getso("libil2cpp.so"),{{-494030820,4,0x1FEA588},})
end
end

function nmdb2()
qc=gg.alert("技能无限","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476050943,4,0x1FEB894},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEB898},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1FEBB48},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEBB4C},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1FEB894},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0x1FEB898},})
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1FEBB48},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0x1FEBB4C},})
end
end

function nmdb3()
qc=gg.alert("技能无冷","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1FEB008},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEB00C},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1FEB354},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1FEB358},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1FEB008},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1FEB00C},})
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1FEB354},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1FEB358},})
end
end

function nmdb4()
NH=gg.prompt({"强力抱摔","抱摔冲刺距离","返回"},{},{"checkbox","checkbox","checkbox"})
if NH[1] == true then
nh=gg.prompt({"输入抱摔伤害(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "强力抱摔"},
{["value"] = 4.300000190734863, ["type"] = 16},
{["lv"] = -1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-12, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-256, ["type"] = 16, ["freeze"] = true},
{["value"] = 1,["offset"] =-268, ["type"] = 4, ["freeze"] = true},
{["value"] = 10.0,["offset"] =-100, ["type"] = 16},
{["value"] = 99.0,["offset"] =-96, ["type"] = 16},
{["value"] = nh[1],["offset"] =-84, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({"输入抱摔冲刺距离(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "暴摔冲刺距离"},
{["value"] = 2147483647, ["type"] = 4},
{["lv"] = 0,["offset"] =8, ["type"] = 4},
{["lv"] = 0,["offset"] =32, ["type"] = 4},
{["lv"] = 2.0,["offset"] =56, ["type"] = 16},
{["lv"] = 1077936128, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1],["offset"] =16, ["type"] = 16},
{["value"] = nh[1],["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[3] == true then HOME()
end
end

function nmdb5()
qc=gg.alert("星辰圣女","技能强化","普攻强化")
if qc==1 then
NH=gg.prompt({"输入技能范围，初始值为8"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1058642330, ["type"] = 4},
{["lv"] = 1090519040,["offset"] =4, ["type"] = 4},
{["lv"] = 1086324736,["offset"] =8, ["type"] = 4},
{["lv"] = 1082130432,["offset"] =12, ["type"] = 32},
}
qmxg = {
{["value"] = 0,["offset"] =-56, ["type"] = 16},
{["value"] = 0,["offset"] =0, ["type"] = 16},
{["value"] = NH[1],["offset"] =4, ["type"] = 16},
{["value"] = 520,["offset"] =8, ["type"] = 16},
{["value"] = 1314,["offset"] =44, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end
if qc==2 then
qmnb = {
{["memory"] = 32},
{["name"] = "普攻强化"},
{["value"] = 1089470464, ["type"] = 4},
{["lv"] = 1.0, ["offset"] = -32, ["type"] = 16},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0.6000000238418579, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 20, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 20, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 24, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end
end

function nmdb6()
NH=gg.prompt({"技能强化","技能buff","技能释放范围","返回"},{},{"checkbox","checkbox","checkbox","checkbox"})
if NH[1] == true then
nh=gg.prompt({"输入技能范围,初始值为2.5(可进行多次修改)↓","输入技能伤害,初始值为50(可进行多次修改)↓","输入技能数量(可进行多次修改↓)",},{[1]="",[2]="",[3]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 80, ["offset"] = -128, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -8, ["type"] = 16},
{["value"] = nh[2], ["offset"] = 4, ["type"] = 16},
{["value"] = nh[3], ["offset"] = -136, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
{["value"] = 0.001, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({"输入要修改的buff代码(可进行多次修改)\n100暴怒 101夹子 102跳高 103疾跑 105手雷 107无敌 108针 109学妹 110学妹 111持续暴走 112变羊术 113雷达 114天降正义 200酒桶 201毒液 202加速 203狗 204魔法墙正面 205魔法墙负面 206护盾 300boss盾 301boss吸血 302boss眩晕 400机器人 401小学妹 402幽灵 403缴械 404天降正义 405减速 501水 502引力场 505超级加速 506加速 508减速 509boss攻速永久 510boss吸血永久 511boss盾 512解控 520梦魇泡泡 521梦魇 522梦魇无敌 528缴械 529缈 530缈 531缈 532缈 533缈加圣女 534圣女 535圣女 537盾卫 538盾卫 539盾卫 540盾卫 542狮子吸血 543泷 544泷 545泷 547时光机 548狮子视野 549狮子冷却 550毒 551命石 552命石 553命石 554命石 557减血 558眩晕 559无敌 560永久加速 561超级加速 564团子 566团子 567机器人 568恐龙 570奥博 571眩晕 572护盾 573疾跑 575狮子视野 577指绘师 578指绘师 580互拉圈减速 581互拉圈加速 70110全体护盾 70109竞速掉血 70108-70103恐龙护盾 70102竞速减速 70101竞速夹子 10509红方旗子 10508蓝方旗子 10203减血 10600电能球buff 11201针 10201毒 10103狂暴"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能buff"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 80, ["offset"] = -128, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({"输入要改的技能释放范围,初始值为6(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能释放范围"},
{["value"] = 1086324736, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 256, ["offset"] = 44, ["type"] = 4},
{["lv"] = 1052266988, ["offset"] = 144, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = 152, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[4] == true then HOME()
end
end

function nmdb7()
NH=gg.prompt({"医疗包改金库艾可","技能强化","技能buff","技能释放范围","返回"},{},{"checkbox","checkbox","checkbox","checkbox","checkbox"})
if NH[1] == true then
qc=gg.alert("改金库艾可","开启","恢复")
if qc==1 then
qmnb = {
      {["memory"] = 32},
      {["name"] = "医疗包改艾可技能"},
      {["value"] = 875573550, ["type"] = 4},
      {["lv"] = 200, ["offset"] = 4, ["type"] = 32},
      {["lv"] = 401, ["offset"] = 12, ["type"] = 4},
      {["lv"] = 3, ["offset"] = 24, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 10003, ["offset"] = 12, ["type"] = 4,},
    }
    xqmnb(qmnb)
end    
if qc==2 then
qmnb = {
      {["memory"] = 32},
      {["name"] = "医疗包改艾可技能"},
      {["value"] = 875573550, ["type"] = 4},
      {["lv"] = 200, ["offset"] = 4, ["type"] = 32},
      {["lv"] = 3, ["offset"] = 24, ["type"] = 16},
    }
    qmxg = {
      {["value"] = 401, ["offset"] = 12, ["type"] = 4,},
    }
    xqmnb(qmnb)
end
end
if NH[2] == true then
nh=gg.prompt({"输入技能范围,初始值为2(可进行多次修改)↓","输入技能伤害,初始值为50(可进行多次修改)↓",},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -8, ["type"] = 16},
{["value"] = nh[2], ["offset"] = 4, ["type"] = 16},
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
{["value"] = 0, ["offset"] = 12, ["type"] = 16},
{["value"] = 0.001, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({"输入要修改的buff代码(可进行多次修改)\n100暴怒 101夹子 102跳高 103疾跑 105手雷 107无敌 108针 109学妹 110学妹 111持续暴走 112变羊术 113雷达 114天降正义 200酒桶 201毒液 202加速 203狗 204魔法墙正面 205魔法墙负面 206护盾 300boss盾 301boss吸血 302boss眩晕 400机器人 401小学妹 402幽灵 403缴械 404天降正义 405减速 501水 502引力场 505超级加速 506加速 508减速 509boss攻速永久 510boss吸血永久 511boss盾 512解控 520梦魇泡泡 521梦魇 522梦魇无敌 528缴械 529缈 530缈 531缈 532缈 533缈加圣女 534圣女 535圣女 537盾卫 538盾卫 539盾卫 540盾卫 542狮子吸血 543泷 544泷 545泷 547时光机 548狮子视野 549狮子冷却 550毒 551命石 552命石 553命石 554命石 557减血 558眩晕 559无敌 560永久加速 561超级加速 564团子 566团子 567机器人 568恐龙 570奥博 571眩晕 572护盾 573疾跑 575狮子视野 577指绘师 578指绘师 580互拉圈减速 581互拉圈加速 70110全体护盾 70109竞速掉血 70108-70103恐龙护盾 70102竞速减速 70101竞速夹子 10509红方旗子 10508蓝方旗子 10203减血 10600电能球buff 11201针 10201毒 10103狂暴"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能buff"},
{["value"] = 1080033280, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1, ["offset"] = -12, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[4] == true then
nh=gg.prompt({"输入要改的技能释放范围,初始值为6(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能释放范围"},
{["value"] = 1086324736, ["type"] = 4},
{["lv"] = 0, ["offset"] = 8, ["type"] = 4},
{["lv"] = 256, ["offset"] = 44, ["type"] = 4},
{["lv"] = 1052266988, ["offset"] = 144, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = 152, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[5] == true then HOME()
end
end

function nmdb8()
NH=gg.prompt({"输入技能数量(可进行多次修改)↓"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "水之忍者"},
{["value"] = 60, ["type"] = 32},
{["lv"] = 3, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1, ["offset"] = 136, ["type"] = 32},
}
qmxg = {
{["value"] = NH[1], ["offset"] = -8, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
{["value"] = 0.1, ["offset"] = 100, ["type"] = 16},
}
xqmnb(qmnb)
end

function nmdb9()
NH=gg.prompt({"输入链条持续时间(可进行多次修改)↓","输入技能加血或扣血(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 50, ["type"] = 4},
{["lv"] = 1084227584, ["offset"] = 76, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = 88, ["type"] = 4},
{["lv"] = 15, ["offset"] = 184, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
{["value"] = NH[1], ["offset"] = 68, ["type"] = 16},
{["value"] = 520, ["offset"] = 72, ["type"] = 16},
{["value"] = 520, ["offset"] = 80, ["type"] = 16},
{["value"] = -NH[2], ["offset"] = 188, ["type"] = 16},

}
xqmnb(qmnb)
end

function nmdb10()
NH=gg.prompt({"输入技能范围(可进行多次修改)↓","输入技能伤害(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "小狮子"},
{["value"] = 1072483533, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 9, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = -136, ["type"] = 4},
{["lv"] = 8, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -132, ["type"] = 16},
{["value"] = 0, ["offset"] = -128, ["type"] = 4},
{["value"] = NH[1], ["offset"] = -24, ["type"] = 16},
{["value"] = NH[2], ["offset"] = -28, ["type"] = 16},
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
{["value"] = 0, ["offset"] = -8, ["type"] = 16},
{["value"] = 0, ["offset"] = -12, ["type"] = 16},
}
xqmnb(qmnb)
end

function nmdb11()
NH=gg.prompt({"技能强化","技能buff","技能变身物体","返回"},{},{"checkbox","checkbox","checkbox","checkbox"})
if NH[1] == true then
nh=gg.prompt({"输入技能范围(可进行多次修改)↓","输入技能电击持续时间(可进行多次修改)↓","输入技能电击速度(可进行多次修改)↓"},{[1]="",[2]="",[3]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能强化"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -136, ["type"] = 32},
}
qmxg = {
{["value"] = 0, ["offset"] = -140, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -144, ["type"] = 16},
{["value"] = 0, ["offset"] = -36, ["type"] = 16},
{["value"] = nh[2], ["offset"] = -24, ["type"] = 16},
{["value"] = nh[1], ["offset"] = -20, ["type"] = 16},
{["value"] = nh[3], ["offset"] = -16, ["type"] = 16},
}
xqmnb(qmnb)
end
if NH[2] == true then
nh=gg.prompt({"100暴怒 101夹子 102跳高 103疾跑 105手雷 107无敌 108针 109学妹 110学妹 111持续暴走 112变羊术 113雷达 114天降正义 200酒桶 201毒液 202加速 203狗 204魔法墙正面 205魔法墙负面 206护盾 300boss盾 301boss吸血 302boss眩晕 400机器人 401小学妹 402幽灵 403缴械 404天降正义 405减速 501水 502引力场 505超级加速 506加速 508减速 509boss攻速永久 510boss吸血永久 511boss盾 512解控 520梦魇泡泡 521梦魇 522梦魇无敌 528缴械 529缈 530缈 531缈 532缈 533缈加圣女 534圣女 535圣女 537盾卫 538盾卫 539盾卫 540盾卫 542狮子吸血 543泷 544泷 545泷 547时光机 548狮子视野 549狮子冷却 550毒 551命石 552命石 553命石 554命石 557减血 558眩晕 559无敌 560永久加速 561超级加速 564团子 566团子 567机器人 568恐龙 570奥博 571眩晕 572护盾 573疾跑 575狮子视野 577指绘师 578指绘师 580互拉圈减速 581互拉圈加速 70110全体护盾 70109竞速掉血 70108-70103恐龙护盾 70102竞速减速 70101竞速夹子 10509红方旗子 10508蓝方旗子 10203减血 10600电能球buff 11201针 10201毒 10103狂暴\n输入自身buff(可进行多次修改)↓","输入敌方buff(可进行多次修改)↓"},{[1]="",[2]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能buff"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = 28, ["type"] = 4},
{["value"] = nh[2], ["offset"] = -12, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[3] == true then
nh=gg.prompt({"输入技能变身物体(可进行多次修改)\n1000长椅子 1001床 1002小箱子 1003仙人掌 1004小椅子 1005马桶 1006电脑 1007小柜子 1008花盆 1009矮桌子 1010路障 1011皮卡 1012魔术师的羊 1013自走球 1014兔子 1015扑克牌 1016鼓 1017绿色垃圾桶 1018蓝色垃圾桶 1019鸭子 1020球 1021滑板 1022战术导弹 1023小幽灵 1024小飞机 1025跳跳杆 1032哄哄号 1033原本的车 50001迪迦 50002赛罗 50003泽塔 70010翼龙 70011三角龙 70012剑龙 70013迅猛龙 70014霸王龙 70015苍龙 90001擎天柱 90002大黄蜂 90003热破 90004威震天 90005声波 90006红蜘蛛 90007擎天柱车形态 90008大黄蜂车形态 90009热破车形态 90010威震天车形态 90011声波车形态 90012红蜘蛛车形态"},{[1]=""})
qmnb = {
{["memory"] = 32},
{["name"] = "技能变身物体"},
{["value"] = 1081291571, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1017, ["offset"] = -8, ["type"] = 4},
{["lv"] = 573, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = nh[1], ["offset"] = -40, ["type"] = 4},
}
xqmnb(qmnb)
end
if NH[4] == true then HOME()
end
end

function nmdb12()
NH=gg.prompt({"输入技能数量(可进行多次修改)↓","输入技能范围(可进行多次修改)↓","输入影子持续时间(可进行多次修改)↓"},{[1]="",[2]="",[3]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "影子忍者"},
      {["value"] = 1075838976, ["type"] = 4},
      {["lv"] = 1, ["offset"] = 4, ["type"] = 4},
      {["lv"] = 14, ["offset"] = -20, ["type"] = 16},
      {["lv"] = 13, ["offset"] = -28, ["type"] = 16},
      {["lv"] = 0, ["offset"] = -32, ["type"] = 4},
      {["lv"] = 2, ["offset"] = -88, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = -136, ["type"] = 4, ["freeze"] = true},
      {["value"] = 0, ["offset"] = -132, ["type"] = 16,},
      {["value"] = 0, ["offset"] = -128, ["type"] = 4},
      {["value"] = NH[2], ["offset"] = -12, ["type"] = 16},
      {["value"] = 0, ["offset"] = -8, ["type"] = 16},
      {["value"] = NH[3], ["offset"] = -4, ["type"] = 16},
      {["value"] = 520, ["offset"] = -28, ["type"] = 16},
    }
    xqmnb(qmnb)
end    

function nmdb13()
qc=gg.alert("团子","免费无冷","技能变身")
if qc==1 then
qmnb = {
      {["memory"] = 32},
      {["name"] = "免费无冷"},
      {["value"] = -934560717, ["type"] = 4},
      {["lv"] = 1092616192,["offset"] =-36, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 0,["offset"] =-32, ["type"] = 4},
      {["value"] = 0,["offset"] =-36, ["type"] = 4},
    }
    xqmnb(qmnb)
end    
if qc==2 then
NH=gg.prompt({"输入要改的变身物体代码(可进行多次修改)\n1000长椅子 1001床 1002小箱子 1003仙人掌 1004小椅子 1005马桶 1006电脑 1007小柜子 1008花盆 1009矮桌子 1010路障 1011皮卡 1012魔术师的羊 1013自走球 1014兔子 1015扑克牌 1016鼓 1017绿色垃圾桶 1018蓝色垃圾桶 1019鸭子 1020球 1021滑板 1022战术导弹 1023小幽灵 1024小飞机 1025跳跳杆 1032哄哄号 1033原本的车 50001迪迦 50002赛罗 50003泽塔 70010翼龙 70011三角龙 70012剑龙 70013迅猛龙 70014霸王龙 70015苍龙 90001擎天柱 90002大黄蜂 90003热破 90004威震天 90005声波 90006红蜘蛛 90007擎天柱车形态 90008大黄蜂车形态 90009热破车形态 90010威震天车形态 90011声波车形态 90012红蜘蛛车形态"},{[1]=""})
qmnb = {
      {["memory"] = 32},
      {["name"] = "变身"},
      {["value"] = 1.29999995232, ["type"] = 16},
      {["lv"] = 1069547520,["offset"] =-4, ["type"] = 4},
      {["lv"] = 1045220557,["offset"] =-20, ["type"] = 4},
    }
    qmxg = {
      {["value"] = NH[1], ["offset"] = -8, ["type"] = 4},
    }
    xqmnb(qmnb)
end
end

-------------------------------------------------------------------------------------------------
function LM()
menu1 = gg.multiChoice({
"稳定范💎",
"稳定功🔨",
"返回上一页"},
nil,'LM神明')
if menu1 == nil then else
if menu1[1] == true then JJ100() end
if menu1[2] == true then JJ200() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
function JJ200()
readWrite({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{2.80259693e-45,0,16,true},{2.80259693e-45,4,16,false},{2.80259693e-45,8,16,false},{9999,108,16,false}},16,32,"满级影之忍者")
end

function JJ100()
local xt=gg.prompt({"影之忍者攻击范围"}, {[1] = 5}, {[1] = "text"})
readWrite({{false,14.0,116,16,nil,nil},{0.20000000298023224,128,16}},{{xt[1],124,16,false}},16,32,"范围")
end


function wtmd1()--变身攻击--方法名SpawnFireProjectileOrder
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1882050},})
end
-------------------------------------------------------------------------------------------------
function FG()
SN = gg.multiChoice({
	 "️Dange大厅防封️",
	 "Dange独家防封️",
	 "初始bxk️",
	 "Dange测试大厅防️",
	 "ca内存全防",
	 "独家全防",
	 "清追封",
	 "独家防封测试",
	 "豪哥防封",
	 "上一页",
}, nil, "CY")
if SN[1]==true then
	 HS492()
end
if SN[2]==true then
	 HS408()
end
if SN[3]==true then
	 HS407()
end
if SN[4]==true then
	 HS417()
end
if SN[5]==true then
	 cc()
end
if SN[6]==true then
	 cc1()
end
if SN[7]==true then
	 cc2()
end
if SN[8]==true then
	 cc3()
end
if SN[9]==true then
	 cc100()
end
if SN[10]==true then
	 HS496()
end
FX1=0
end

function MP()
gg.alert("💊恭喜💊—⚱喜提⚱—💈隐藏功能💈")
menu1 = gg.multiChoice({
"追捕无限暴走111⚰",
"无🔗",
"团子给队友变身🔪",
"返回上一页"},
nil,'隐藏功🖼')
if menu1 == nil then else
if menu1[1] == true then cc4() end
if menu1[2] == true then cc5() end
if menu1[3] == true then cc6() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
function cc6()
function CY(search, write)
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
		gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据")
		else
		gg.toast("开启失败")
		end
	end
end
local fy=gg.prompt({"自调\n恐龙:\n翼龙70010  三角龙70011  剑龙70012  迅猛龙70013  霸王龙70014  沧龙70015\n变形金刚:\n擎天柱90001  大黄蜂90002  热破90003  威震天90004  声波90005  红蜘蛛90006"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
CY({{1141,4,32},{1142,4,4},{1143,8,4},{3,-4,4},{3,28,4},{0,44,4},{0,12,4}},{{fy[1],32,4},{fy[1],36,4},{fy[1],40,4,false}})
end
-------------------------------------------------------------------------------------------------
function MT()
menu1 = gg.multiChoice({
	 "角色全皮肤🔪",--1
	 "锁金币🗡",--2
	 "全图踩夹子⚔",--3
	 "变身攻击🛡",--4
	 "锁道具🚬",--5
	 "xa虚拟金币☠",--6
	 "无后⚰",--7
	 "无间隔⚱",--8
	 "锁子弹🏺",--9
	 "解锁模式🔮",--10
	 "解锁道具皮肤📿",--11
	 "道具无CD💈",--12
	 "杀队友⚗",--13
	 "免费购物🕳",--14
	 "移动开物🎁",--15
	 "倒地丢道具🗺",--16
	 "逃生秒赢⛱",--17
	 "追捕秒赢🎊",--18
	 "丝血不死🎉",--19
	 "82锁全开[失🎐]",--20
	 "稳定锁金✉️",--21
	 "子弹穿墙📩",--22
	 "道具等级📬",--23
	 "全武器超级射速📯",--24
	 "解锁全角色🗞",--25
	 "直接开门📓",--26
	 "穿墙📕",--27
"返回上一页"},
nil,'🔑🗝开门成功')
if menu1 == nil then else
if menu1[1] == true then ssss1() end
if menu1[2] == true then ssss2() end
if menu1[3] == true then ssss3() end
if menu1[4] == true then ssss4() end
if menu1[5] == true then ssss5() end
if menu1[6] == true then ssss6() end
if menu1[7] == true then ssss7() end
if menu1[8] == true then ssss8() end
if menu1[9] == true then ssss9() end
if menu1[10] == true then ssss10() end
if menu1[11] == true then ssss11() end
if menu1[12] == true then ssss12() end
if menu1[13] == true then ssss13() end
if menu1[14] == true then ssss14() end
if menu1[15] == true then ssss15() end
if menu1[16] == true then ssss16() end
if menu1[17] == true then ssss17() end
if menu1[18] == true then ssss18() end
if menu1[19] == true then ssss19() end
if menu1[20] == true then ssss20() end
if menu1[21] == true then ssss21() end
if menu1[22] == true then ssss22() end
if menu1[23] == true then ssss23() end
if menu1[24] == true then ssss24() end
if menu1[25] == true then ssss25() end
if menu1[26] == true then ssss26() end
if menu1[27] == true then ssss27() end
if menu1[28] == true then HOME() end
end
GLWW=-1
end

function ssss1()--角色全皮肤
xtnb({{false,184548591,0,4,nil,nil},{-481296384,368,4},{436207644,372,4}},{{-476053503,332,4,false},{-516948194,336,4,false}},4,16384,"输入功能名称")end

function ssss2()--锁金币

xtnb({{false,184549340,0,4,nil,nil},{-481296384,1028,4},{436207638,1032,4},{-442563684,1036,4}},{{-476053503,988,4,false},{-516948194,992,4,false}},4,16384,"锁金币")
end

function ssss3()--秒开一切
xtnb({{false,184549325,0,4,nil,nil},{-481296384,2836,4},{436207620,2840,4},{-442564236,2844,4}},{{-476053503,2800,4,false},{-516948194,2804,4,false}},4,16384,"全图踩夹子")end
function ssss4()--移动开物
xtnb({{false,295698441,2916,4,nil,nil},{436207626,32,4},{-442563904,36,4},{-481296384,28,4}},{{-516948194,0,4,false}},4,16384,"输入功能名称")end

function ssss5()--不扣金币
xtnb({{false,184549305,0,4,nil,nil},{-481296384,4396,4},{436207620,4400,4},{-442564524,4404,4}},{{-476053504,4368,4,false},{-516948194,4372,4,false}},4,16384,"输入功能名称")
end


function ssss6()--爬墙
local xt=gg.prompt({"虚拟锁金币自调"}, {[1] = 300}, {[1] = "text"})
xtnb({{false,1116471296,0,4,nil,nil},{1129512960,4,4}},{{xt[1],64,4,true}},4,32,"虚拟锁金币")
end

function ssss7()--基扯改子弹
xtnb({{false,184549359,0,4,nil,nil},{-481296384,1472,4},{436207623,1476,4},{-442564360,1480,4}},{{1065353216,1408,4,false}},4,16384,"输入功能名称")
end

function ssss8()--无间隔
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,"输入功能名称")end

function ssss9()--锁子弹
qc=gg.alert("锁子弹","旧版","新版")
if qc==1 then
xtnb({{false,184549361,5904,4,nil,nil},{436207620,28,4},{-442564540,32,4},{-481296384,24,4}},{{-476053503,0,4,false},{-516948194,4,4,false}},4,16384,"输入功能名称")end
if qc==2 then
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1736,4},{436207623,1740,4},{-442564368,1744,4}},{{-516948194,1704,4,false}},4,16384,"输入功能名称")
end
end
function ssss10()--解锁模式
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2056,4},{436207620,2060,4},{-442564436,2064,4}},{{-476053503,2020,4,false},{-516948194,2024,4,false}},4,16384,"输入功能名称")end

function ssss11()--道具皮肤
xtnb({{false,184549360,0,4,nil,nil},{-481296384,3640,4},{436207623,3644,4},{-442564400,3648,4}},{{-476053503,3612,4,false},{-516948194,3616,4,false}},4,16384,"输入功能名称")end

function ssss12()--道具无CD

qc=gg.alert("道具无冷却","xa","a[逃]","a[追]")
if qc==1 then
xtnb({{false,184549300,0,4,nil,nil},{-481296384,6900,4},{436207626,6904,4},{-442564232,6908,4}},{{-476053503,6868,4,false},{-516948194,6872,4,false}},4,16384,"输入功能名称")
end
if qc==2 then
xtnb({{false,100.0,0,16,nil,nil},{100.0,4,16},{0.30000001192092896,8,16},{200.0,24,16}},{{0.01,48,16,false}},16,32,"道具无CD")
end
if qc==3 then
xtnb({{false,0.30000001192092896,0,16,nil,nil},{200.0,16,16},{1.0,28,16},{1.0,32,16},{1.0,36,16},{0.009999999776482582,80,16}},{{0.01,40,16,false}},16,32,"道具卡无冷却")
end
end

function ssss13()--杀队友
qc=gg.alert("猎杀队友","开启","关闭")
if qc==1 then 
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-516948194,100,4,false}},4,16384,"输入功能名称")end  
if qc==2 then  
xtnb({{false,184549359,0,4,nil,nil},{-481296384,120,4},{436207623,124,4},{-442564340,128,4}},{{-382908368,100,4,false}},4,16384,"输入功能名称")
end
end
function ssss14()--免费购物
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xD2D1DC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD2D1E0},})
end

function ssss15()--不死
qc=gg.alert("移动开物","移动开物","移动开物跳跃版")
if qc==1 then
xtnb({{false,184548931,0,4,nil,nil},{-481296384,2668,4},{436207632,2672,4},{-442564144,2676,4}},{{-476053504,2640,4,false},{-516948194,2644,4,false}},4,16384,"移动开物")end
if qc==2 then
xtnb({{false,184548931,0,4,nil,nil},{-481296384,2668,4},{436207632,2672,4},{-442564144,2676,4}},{{-476053504,2640,4,false},{-516948194,2644,4,false}},4,16384,"移动开物")
xtnb({{false,184549351,0,4,nil,nil},{-481296384,6192,4},{436207632,6196,4},{-442564028,6200,4}},{{-476053503,6156,4,false},{-516948194,6160,4,false}},4,16384,"输入功能名称")
end
end

function ssss16()--倒地丢道具
xtnb({{false,184549411,1424,4,nil,nil},{-481296384,24,4},{436207626,28,4},{-442564296,32,4}},{{-476053504,0,4,false},{-516948194,4,4,false}},4,16384,"输入功能名称")
end

function ssss17()--超级移速
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-476052414,1112,4,false},{-516948194,1116,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549354,0,4,nil,nil},{-481296384,100,4},{436207635,104,4},{-442564104,108,4}},{{-486539256,76,4,false},{-516948194,80,4,false}},4,16384,"输入功能名称")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549290,0,4,nil,nil},{-481296384,392,4},{436207644,396,4},{-442563852,400,4}},{{-476053504,368,4,false},{-516948194,372,4,false}},4,16384,"")
xtnb({{false,184549350,0,4,nil,nil},{-481296384,116,4},{436207635,120,4},{-442563972,124,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"")
end

function ssss18()--武器秒杀
xtnb({{false,250612577,0,4,nil,nil},{-481296384,1136,4},{436207620,1140,4},{-442564520,1144,4}},{{-482081950,1112,4,false},{-516948194,1116,4,false}},4,16384,"秒赢")
xtnb({{false,250612577,0,4,nil,nil},{-481296384,2084,4},{436207620,2088,4},{-442564508,2092,4}},{{-486537216,2060,4,false},{-301987312,2064,4,false},{-289928512,2068,4,false},{-300938736,2072,4,false},{-516948194,2076,4,false}},4,16384,"输入功能名称")
xtnb({{false,184549344,0,4,nil,nil},{-481296384,136,4},{436207635,140,4},{-442564104,144,4}},{{-476053496,112,4,false},{-516948194,116,4,false}},4,16384,"")
xtnb({{false,184548539,0,4,nil,nil},{-481296384,936,4},{436207620,940,4},{-442564508,944,4}},{{-476052411,912,4,false},{-516948194,916,4,false}},4,16384,"")
xtnb({{false,184549345,0,4,nil,nil},{-481296384,156,4},{436207644,160,4},{-442563852,164,4}},{{-476053504,132,4,false},{-516948194,136,4,false}},4,16384,"")
xtnb({{false,184549329,0,4,nil,nil},{-481296384,2956,4},{436207644,2960,4},{-442563276,2964,4}},{{-476053496,2932,4,false},{-516948194,2936,4,false}},4,16384,"")
xtnb({{false,184549350,0,4,nil,nil},{-439091200,112,4},{-481296384,116,4},{436207635,120,4}},{{-476053494,92,4,false},{-516948194,96,4,false}},4,16384,"")
end

function ssss19()--解锁道具
qc=gg.alert("丝血不死","开启","关闭")
if qc==1 then
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-476053504,5628,4,false},{-516948194,5632,4,false}},4,16384,"输入功能名称")
end
if qc==2 then
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-382908368,5628,4,false},{-494030840,5632,4,false}},4,16384,"输入功能名称")
end
end
function ssss20()--无限变身时间
xtnb({{false,250612577,0,4,nil,nil},{-481296384,3532,4},{436207632,3536,4},{-442564200,3540,4}},{{-476053499,3508,4,false},{-516948194,3512,4,false}},4,16384,"输入功能名称")
end

function ssss21()--裁判模式
xtnb({{false,295714822,0,4,nil,nil},{-481296384,3060,4},{436207629,3064,4},{-442564140,3068,4}},{{-476053504,3024,4,false},{-516948194,3028,4,false}},4,16384,"输入功能名称")end

function ssss22()--解锁风格
xtnb({{false,184549357,0,4,nil,nil},{-481296384,2432,4},{436207635,2436,4}},{{-476052416,2392,4,false},{-516948194,2396,4,false}},4,16384,"输入功能名称")
end

function ssss23()--枪枪暴击

xtnb({{false,184549327,0,4,nil,nil},{-481296384,4664,4},{436207635,4668,4},{-442563796,4672,4}},{{-476051055,4640,4,false},{-516948194,4644,4,false}},4,16384,"输入功能名称")end

function ssss24()--超级高跳
xtnb({{false,184549335,0,4,nil,nil},{-481296384,4004,4},{436207656,4008,4},{-442563260,4012,4}},{{1112014848,3952,4,false}},4,16384,"输入功能名称")
end


function ssss25()--全角色
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xE9BE08},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xE9BE0C},})
end


function ssss26()--直接开门
xtnb({{false,246450752,0,4,nil,nil},{-481296384,5948,4},{436207620,5952,4},{-442564508,5956,4}},{{-476053503,5924,4,false},{-516948194,5928,4,false}},4,16384,"输入功能名称")end
function ssss27()--人物穿墙
xtnb({{false,201453840,0,4,nil,nil},{-110911408,548,4},{512232079,552,4},{-89114364,556,4}},{{1103626240,536,4,false}},4,16384,"输入功能名称")
end

function cc4()
fastsearch({{60,16,32},{5,-4,16},{4,-16,16},{0,24,4}},{{10,24,4,true}})
end
function HS492()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast("CY大厅防")
	 gg.clearResults()
end

function HS408()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast("CY独家防封")
	 gg.clearResults()
end

function HS407()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("CY独家防封初始化成功")
	 gg.clearResults()
end

function HS417()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2,020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封加载10%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";0", gg.TYPE_WORD)
gg.toast("防封加载20%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-1431655766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1431655766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封加载30%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.0F;3.0F;5.0F;1.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("防封已加载45%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.0F;1.5F;10.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("防封已加载50%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防封65%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防封已加载70%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防封已加载80%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防封已加载89%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防封96%")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,900,483,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,900,483,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("CY大厅防封[测试]开启成功")
gg.clearResults()
end

function HS496()
	 Main()
end

function a2()
gg.getResultsCount()
gg.toast("正在开启")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("491520", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast("开启1")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("106503", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast("开启2")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast("开启3")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("20480", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.toast("开启成功")
gg.clearResults()
end

function cc()
gg.setRanges(4)
gg.searchNumber("3042160", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-1400017232"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1599227979", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "-292136832"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,987,539,786", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,398,036,289", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,631,207,205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("574,169,904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,629,954,853", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()


gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,463,904,086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()

gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("639,645,488", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("588,650,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()
	 
	 
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("959,784,737", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("")
	 gg.clearResults()
gg.clearResults()
gg.searchAddress("842,084,353", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("842,084,353", gg.TYPE_DWORD)
gg.toast("ca全防开启成功")
gg.clearResults()
end
function cc1()
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
	 gg.searchNumber("1,060,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,359,296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,097,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,621,440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8,650,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4,194,304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,835,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("内存防封开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(8)
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("54545", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("455445", gg.TYPE_DWORD)
gg.toast("防封初始化开启成功")
gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("535146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启166253%成功")
	 gg.clearResults()
	 gg.clearResults()--A内存防
	 gg.setRanges(32)
	 gg.searchNumber("672568", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启4307651%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("312228", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启5345278%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("656220", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启677827%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启7728829%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("311138", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启862992928%成功")
	 gg.clearResults()
	 
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("147876", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启9086267292%")
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
function cc2()
gg.toast("获取文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,文件名为game_log.txtDange")
os.remove("/storage/emulated/0/Android/data/com.excean.maid/gameplugins/com.bairimeng.dmmdzz.qihoo/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("💖删除封号残留文件成功💖")
gg.sleep(500)
gg.toast("💖获取追封文件中💖")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.excean.maid/gameplugins/com.bairimeng.dmmdzz.qihoo")
gg.toast("💞获取成功,已删除追封文件💞")
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
	 gg.toast("❤️清追封❤️")
end

function cc3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2,020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封［Dange独家]")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(";0", gg.TYPE_WORD)
gg.toast("✏防异常")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-1431655766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1431655766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防封✏")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.0F;3.0F;5.0F;1.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("全防🖋")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.0F;1.5F;10.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("追封无效🖊")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("游戏异常还能玩🖋")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("删除封号系统成功🔎")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("删除追封系统成功🔍")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("🖍防")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("防十年🔓")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,900,483,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,900,483,696", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("防 Xa ca EZ 📍")
gg.clearResults()
end

function ZS()
SN = gg.choice({
"能量剑美化斩星🎁",
"能量剑美化斩星炫晶🎁",
"返回脚本",
}, nil, "立果叫我做的🛡")
if SN==1 then YYDS1() end
if SN==2 then YYDS2() end
if SN==3 then HOME() end
FX1=0
end



function YYDS1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500040", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("500040",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601076", DWORD)
gg.toast("能量剑美化斩星开启成功")
gg.clearResults()
end
end

-------------------------------------------------------------------------------------------------

function KLJ()
SN = gg.multiChoice({
	 "2级能量剑改星耀风格🎊",
	 "2级能量剑改赤尘🎀",
	 "2级迫击炮改星能📓",
	 "2级能量剑改像素剑📕",
	 "2级能量剑改剑鱼🔗",
	 "2级迫击炮改角马📎",
	 "自走球改星能🗡",
	 "13级针🔑",
	 "13级手雷🛡",
	 "传送门次元虫洞💖",
	 "返回主页",
}, nil, "配合改武器嘎嘎好用")
if SN[1]==true then
	 mh1()
end
if SN[2]==true then
	 mh2()
end
if SN[3]==true then
	 mh3()
end
if SN[4]==true then
	 mh4()
end
if SN[5]==true then
	 mh5()
end
if SN[6]==true then
	 mh6()
end
if SN[7]==true then
	 mh7()
end
if SN[8]==true then
	 mh8()
end
if SN[9]==true then
	 mh9()
end
if SN[10]==true then
	 mh10()
end
if SN[11]==true then
	 HOME()
end
FX1=0
end

function mh1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("650401", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("650201", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("680081", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("601281", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("650441", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500021", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("650471", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600811", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function mh10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("601081", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

-------------------------------------------------------------------------------------------------

function GPS()
SN = gg.multiChoice({
	 "疾跑满级皮肤🎩",
	 "手雷满级皮肤🐲",
	 "火箭筒满级皮肤[有五个道具卡的时候开](升级也还是满级皮肤)",
	 "火箭筒满级皮肤(升级的话皮肤就会变会原来的样子)",
	 "火箭筒满级皮肤[有十九个道具卡的时候开](升级还是满级皮肤)",
	 "火箭筒满级皮肤[有十八个道具卡的时候开](升级还是满级皮肤)",
	 "跳高满级皮肤🌹",
	 "医疗箱满级皮肤🌹",
	 "皮卡满级皮肤🌰",
	 "侦查眼满级皮肤🌸",
	 "冲锋枪满级皮肤[有五个道具卡的时候开](升级也还是满级皮肤)",
	 "冲锋枪满级皮肤(升级的话皮肤就会变成原来的样子)",
	 "冲锋枪满级皮肤[有十九道具卡的时候开](升级还是满级皮肤)",
	 "冲锋枪满级皮肤[有十八个道具卡的时候开](升级还是满级皮肤)",
	 "酒桶满级皮肤🍁",
	 "自走球满级皮肤🌾",
	 "阻挡箱满级皮肤🍀",
	 "传送门满级皮肤🎍",
	 "飞爪满级皮肤🌴",
	 "巡逻犬满级皮肤🌟",
	 "肾上腺素满级皮肤🍂",
	 "迫击炮满级皮肤[有五个道具卡的时候开](升级还是满级皮肤)",
	 "迫击炮满级皮肤(升级的话皮肤就会变成原来的样子)",
	 "迫击炮满级皮肤[有十九个道具卡的时候开](升级还是满级皮肤)",
	 "迫击炮满级皮肤[有十八个道具卡的时候开](升级还是满级皮肤)",
	 "毒液满级皮肤🍥",
	 "🥛返回脚本🥛",
}, nil, "自建房装逼")
if SN[1]==true then
	 HS5()
end
if SN[2]==true then
	 HS6()
end
if SN[3]==true then
	 HS7()
end
if SN[4]==true then
	 HS23()
end
if SN[5]==true then
	 HS26()
end
if SN[6]==true then
	 HS29()
end
if SN[7]==true then
	 HS8()
end
if SN[8]==true then
	 HS9()
end
if SN[9]==true then
	 HS10()
end
if SN[10]==true then
	 HS11()
end
if SN[11]==true then
	 HS12()
end
if SN[12]==true then
	 HS24()
end
if SN[13]==true then
	 HS27()
end
if SN[14]==true then
	 HS30()
end
if SN[15]==true then
	 HS13()
end
if SN[16]==true then
	 HS14()
end
if SN[17]==true then
	 HS15()
end
if SN[18]==true then
	 HS16()
end
if SN[19]==true then
	 HS22()
end
if SN[20]==true then
	 HS18()
end
if SN[21]==true then
	 HS19()
end
if SN[22]==true then
	 HS20()
end
if SN[23]==true then
	 HS25()
end
if SN[24]==true then
	 HS28()
end
if SN[25]==true then
	 HS31()
end
if SN[26]==true then
	 HS21()
end
if SN[27]==true then
	 HOME()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600066", gg.TYPE_DWORD)
	 gg.toast("疾跑满级皮肤修改成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("手雷满级皮肤修改成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("19;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("18;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("医疗箱满级皮肤修改成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("皮卡满级皮肤修改成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600251", gg.TYPE_DWORD)
	 gg.toast("侦查眼满级皮肤修改成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("冲锋枪满级皮肤修改成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("冲锋枪满级皮肤修改成功")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("19;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("冲锋枪满级皮肤修改成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("18;500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("冲锋枪满级皮肤修改成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600311", gg.TYPE_DWORD)
	 gg.toast("酒桶满级皮肤修改成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600321", gg.TYPE_DWORD)
	 gg.toast("自走球满级皮肤修改成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600281", gg.TYPE_DWORD)
	 gg.toast("阻挡箱满级皮肤修改成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600331", gg.TYPE_DWORD)
	 gg.toast("传送门满级皮肤修改成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600276", gg.TYPE_DWORD)
	 gg.toast("飞爪满级皮肤修改成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600216", gg.TYPE_DWORD)
	 gg.toast("巡逻犬满级皮肤修改成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("肾上腺素满级皮肤修改成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("迫击炮满级皮肤修改成功")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("迫击炮满级皮肤修改成功")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("19;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("迫击炮满级皮肤修改成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("18;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("迫击炮满级皮肤修改成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600431", gg.TYPE_DWORD)
	 gg.toast("毒液满级皮肤修改成功")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------
function MWS()
SN = gg.multiChoice({  
    "防闪",
    "锁子弹",--2
    "无间隔",
    "无后座",--4
    "少女",
    "🦁打榜",--6
    "     ",
    "防追封",--8
    "4+1",
    "8+2",--10
    "停",
    "无CD",--12
    "倒地丢🎎",
    "大师球",--14
    "二代少女",
    "疾跑自改",--16
    "苍🐉",  
    "第3只眼",--18
    "登录🃏",
    "车胎撞🎠",
    "️返回"
  }, nil, "魔王神自用")
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
  if SN[21] == true then HOME() end
end
GLWW=-1
end





function xa1()
qmnb = {
{["memory"] = 16},
{["name"] = "防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
end




function xa2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1cddbcc},})
end



	
function xa3()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end





function xa4()
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})
end



function xa5()
qmnb = {
{["memory"] = 32},
{["name"] = "战斗少女"},
{["value"] = 0.125, ["type"] = 16},
{["lv"] = 1, ["offset"] = -152, ["type"] = 4},
{["lv"] = 80, ["offset"] = -144, ["type"] = 4},
{["lv"] = 2.5, ["offset"] = -24, ["type"] = 16},
{["lv"] = 403, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0.17499999701976776, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.800000011920929, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.30000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = -152, ["type"] = 4, ["freeze"] = true},
{["value"] = 1, ["offset"] = -144, ["type"] = 4, ["freeze"] = true},
{["value"] = 4, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},
{["value"] = 101, ["offset"] = -20, ["type"] = 4, ["freeze"] = true},
{["value"] = 0, ["offset"] = -8, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = -4, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
{["value"] = 0, ["offset"] = 4, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
--星纪
end



function xa6()
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
--星纪
end	



function xa7()
  qmnb = {
      {["memory"] = 32},
      {["name"] = "开启成功"},--高跳移速
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
      {["name"] = "疾跑无敌"},
      {["value"] = 6750208, ["type"] = 4},
      {["lv"] = 106147, ["offset"] = -4, ["type"] = 4},
    }
    qmxg = {
      {["value"] = 19660800, ["offset"] = 0, ["type"] = 4},
    }
    xqmnb(qmnb)
end



function xa8()
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
	 gg.toast("清理防追封成功魔王神为您保驾护航")
end




function xa9()
fastsearch({{4489188110532608000,32,32},{256,20,4},{100,24,4}},{{1,88,4,true},{184319,92,4,true}})
end




function xa10()
fastsearch({
{4489188110528151552,32,32},
{256,20,4},
{100,24,4}
},
{{1,88,4,true},
{122879,92,4,true}})
end



function xa11()
gg.clearList()--清除冻结
gg.toast("停止成功")
end




function xa12()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1E59E9C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E59EA0},})
end



function xa13()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1CBBFC8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBBFCC},})
end






function xa14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1F;0.00999999978F;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 xh = gg.prompt({
i = "请输入你想要改的自走球速度"
}, {i = ""})
	 gg.editAll(xh.i, gg.TYPE_FLOAT)
	 gg.toast("自走球速度")
	 gg.clearResults()
end



function xa15()
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







function xa16()
function nh(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("开启失败") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("修改成功, 已修改" .. (#tb[1] + #tb[2]) .. "条数据") else gg.toast("开启失败") end end end nh({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙\n70014霸王龙\n90001擎天柱\n90002大黄蜂\n90003热破\n90004威震天\n90005声波\n90006蜘蛛\n输入变身代码(可多次修改↓)"},{[1]="70015"}) nh({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end


function xa17()
qmnb = {
      {["memory"] = 32},
      {["name"] = "cai"},--苍龙范围伤害
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
      {["name"] = "cai"},--苍龙冷却
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





function xa18()
function fastsearch(search, write)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		gg.toast("想念 ")
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
		gg.toast("开启成功了哦")
		else
		gg.toast("想念")
		end
	end
end
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
end

function xa19()
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
end

function xa20()
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

-------------------------------------------------------------------------------------------------
function QAQ()
SN = gg.multiChoice({  
    "🍀破盾🍀",
    "🌷锁子🌷",--2
    "🍥间隔🍥",
    "🍻无后🍻",
    "🍻倒地🍻",
    "🧀疾敌🧀",
    "🌶苍🐉🌶",  
    "🥕控制🥕",
    "🍎刷💰🍎",
    "🍏停止🍏",
    "🍒包范围🍒",
    "️返🍏"
  }, nil, "ks.教父自用——神雕，借用")
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
  if SN[13] == true then HOME() end
end XGCK = -1 end





function xa1()--破盾
 fastsearch({{-128.00001525879,16,16384},{-382908368,20,4},{-494030840,24,4},{167772163,-32,4},{167772164,-68,4},},{{-486539264,20,4},{-516948194,24,4,false}})
end



function xa2()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1cddbcc},})
end



	
function xa3()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end





function xa4()
nc_offset(getso("libil2cpp.so"),{{1,16,0xEFB2A0},})
end



function xa5()--倒地伪复活
 fastsearch({{200.0, 16, 32}, {100.0, -20, 16},{0.30000001192092896, -16, 16} }, {  {100, -24, 16, false}})
end





function xa6()
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
end








function xa7()
fastsearch({{125762601315951, 32, 32}, {29281, 4, 2}, {-65536, 16, 4}, {65535, 20, 4}}, {{1, 12, 2, false}, {70015+65536, 10, 2, false}})
	 end








function xa8()
qmnb = {
      {["memory"] = 32},
      {["name"] = "cai"},--苍龙范围伤害
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
      {["name"] = "cai"},--苍龙冷却
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



function xa9()--观战控制
tg=gg.alert("观战控制别人","开","关")
if tg==1 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("78,884,133;78,454,692;78,454,672;-382,908,176;-494,030,832;-498,216,952;-442,542,840:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382,908,176", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-516,948,194", gg.TYPE_DWORD)
	 gg.toast("已修改31条数据")
	 gg.clearResults()
end
gg.toast("观战控制[开]")
end
if tg==2 then
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("78,884,133;78,454,692;78,454,672;-516,948,194;-494,030,832;-498,216,952;-442,542,840:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-516,948,194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382,908,176", gg.TYPE_DWORD)
	 gg.toast("已修改17条数据")
	 gg.clearResults()
gg.toast("观战控制[关]")
end

function xa10()
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

function xa11()--停止刷钱
gg.clearList()
gg.toast("已修改10条数据")
end

function xa12()
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
end

-------------------------------------------------------------------------------------------------
function A2()
menu1 = gg.multiChoice({
	"自走球加速🐤",
	"追捕破盾🙉",
	"无间隔🦊",
	"锁子弹🦊",
	"无后座🦊",
	"子弹穿墙🐧",
	"疾跑改无敌🐙",
	"跳高改暴走🐦",
	"疾跑改随机buff✂️",
	"开门秒逃❤️",
	"秒赢[30秒后开启]📍",
	"拳套换卡✏",
	"跳高换卡🔒",
	"疾跑换卡🔐",
	"搭配秒赢用的[只开一次]🔍",
	"疾跑改苍龙🖍",
	"苍龙技能🖊",
	"返回主页",
}, nil, os.date("by.雨落自用"))
if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then j9() end
if menu1[10] == true then j10() end
if menu1[11] == true then j11() end
if menu1[12] == true then j12() end
if menu1[13] == true then j13() end
if menu1[14] == true then j14() end
if menu1[15] == true then j15() end
if menu1[16] == true then j16() end
if menu1[17] == true then j17() end
if menu1[18] == true then HOME()end
end
GLWW=-1
end

function j1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1;0.01;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("自走球加速开启成功")
	 gg.clearResults()
end

function j2()
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

function j3()
local t = {"libil2cpp.so", "Cd"}
local tt = {0x21A790, 0x5C, 0x10, 0x5C, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function j4()
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1cddbcc},})--by涵
end

function j5()
fastsearch({{3.5617442956674625E-36, 16, 16384}, {0.0010000000474974513, -4, 16}, {2.646980168980223E-23, 68, 16}}, {{1.0, -4, 16, false}})
end

function j6()
fastsearch({{62046212, 4, 16384}, {62046192, 4, 4}, {-382907280, 8, 4}, {-494030832, 12, 4}, {-498216952, 16, 4}, {-442539764, 20, 4}}, {{-516948194, 12, 4, false}, {-476053503, 8, 4, false}})
end

function j7()
qmnb = {
{["memory"] = 32},
{["name"] = "疾跑buff改无敌"},
{["value"] = -377313563, ["type"] = 4},
{["lv"] = 106147, ["offset"] = 4, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 16, ["type"] = 4},
{["lv"] = 65535, ["offset"] = 20, ["type"] = 4},
{["lv"] = -65536, ["offset"] = 24, ["type"] = 4},
}
qmxg={
{["value"] = 107, ["offset"] = 10, ["type"] = 1},
}xqmnb(qmnb)
end

function j8()
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

function j9()
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

function j10()
  search(200, 16, 32)
  py1(0.30000001192092896, 16, -16)
  py1(0, 16, -4)
  py1(1, 16, 4)
  xg1(8848, 16, -16, false)
end

function j11()
fastsearch({{100.0,16,32},{0.30000001192092896,4,16},}, {{0, -4, 16, false}})
end

function j12()
local SQ=gg.prompt({"拳套改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25655,32,4},
{259072,40,4}
},{
{SQ[1],-12,4,false}
}) end

function j13()
local SE=gg.prompt({"跳高改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{25653,32,4},
{51456,40,4}
},{
{SE[1],-12,4,false}
}) end

function j14()
local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300\n\n请输入需要修改的道具卡↓"},{[1]=""})
fastsearch({
{779514723,4,32},
{1632071241,4,4},
{20528,32,4},
{51200,40,4}
},{
{SA[1],-12,4,false}
}) end

function j15()
fastsearch({{42569729,4,16384},{-494030820,212,4}},{{-486539256,208,4},{-516948194,212,4,}})

fastsearch({{-128.31251525879,16,16384},{-382908368,-756,4},{-494030840,-752,4},{167772164,-800,4}},{{-476053454,-756,4,true},{-516948194,-752,4,true}})

fastsearch({{0.20000000298,16,16384},{-527478779,-528,4},{-509591552,-532,4}},{{-486535200,-544,4,true},{-301987312,-540,4,true},{-289928512,-536,4,true},{-300938736,-532,4,true},{-516948194,-528,4,true}})

fastsearch({{-128.31251525879,16,16384},{-382908368,1112,4},{-494030840,1116,4},{167772175,1028,4}},{{-476049917,1112,4,true},{-516948194,1116,4,true}})
end

function j16()
fastsearch({{88167897181797, 32, 32}, {20528, 4, 4}, {51200, 12, 4}, {-256, 16, 4}}, {{28160, 12, 4, false}}) NH=gg.prompt({"70015沧龙"},{[1]=""}) fastsearch({{126879481684781, 32, 32}, {28271, 2, 2}, {29541, 4, 4}, {1245184, 16, 4}}, {{NH[1]+65536, 10, 2, false}, {1, 12, 1, false}})
end

function j17()
     qmnb = {
      {["memory"] = 32},
      {["name"] = "by.雨落提示你:\n苍龙范围伤害"},--苍龙范围伤害
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
end

-------------------------------------------------------------------------------------------------

function H()
JK = gg.choice({
"小地图传送",--1
"大地图传送",--2
"大乱斗传送",--3
"自定义传送",--4
"返回主页"
},0,"有bug请反馈")
if JK==1 then
	 e1()
end
if JK==2 then
	 e2()
end
if JK==3 then
	 e3()
end
if JK==4 then
	 e4()
end
if JK==5 then
	 HOME()
end
XGCK =-2
while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   JJ3()
  end
end
end
function e1()
JK = gg.choice({
"出生点",--1
"禁闭室",--2
"逃生点",--3
"左上锁",--4
"左下锁",--5
"右上锁",--6
"右下锁",--7
"上门",--8
"下门",--9
"返回",--10
},0,"")
if JK==1 then
	 k1()
end
if JK==2 then
	 k2()
end
if JK==3 then
	 k3()
end
if JK==4 then
	 k4()
end
if JK==5 then
	 k5()
end
if JK==6 then
	 k6()
end
if JK==7 then
	 k7()
end
if JK==8 then
	 k8()
end
if JK==9 then
	 k9()
end
if JK==10 then
	 HOME()
end
XGCK =-2
while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   e1()
  end
end
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
function e2()
JJ = gg.choice({
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
"返回",--17
},0,"锁由左到右，由上到下依次排列")
if JJ==1 then
	 e10()
end
if JJ==2 then
	 e11()
end
if JJ==3 then
	 e12()
end
if JJ==4 then
	 e13()
end
if JJ==5 then
	 e14()
end
if JJ==6 then
	 e15()
end
if JJ==7 then
	 e16()
end
if JJ==8 then
	 e17()
end
if JJ==9 then
	 e18()
end
if JJ==10 then
	 e19()
end
if JJ==11 then
	 e20()
end
if JJ==12 then
	 e21()
end
if JJ==13 then
	 e22()
end
if JJ==14 then
	 e23()
end
if JJ==15 then
	 e24()
end
if JJ==16 then
	 e25()
end
if JJ==17 then
	 HOME()
end
XGCK =-2
while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   e2()
  end
end
end
function e10()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{4.79341316223,-212,16},{4.50854158401,-204,16}})
end
function e11()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{43.43095779419,-212,16},{19.70534706116,-204,16}})
end
function e12()fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{86.59527587891,-212,16},{38.43141555786,-204,16}})
end
function e13()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{8.40417480469,-212,16},{30.41175842285,-204,16}})
end
function e14()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.5557384491,-212,16},{35.01443862915,-204,16}})
end
function e15()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{40.48873519897,-212,16},{28.41207695007,-204,16}})
end
function e16()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{56.48946380615,-212,16},{35.36185073853,-204,16}})
end
function e17()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{25.46974754333,-212,16},{19.14470291138,-204,16}})
end
function e18()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{58.46561813354,-212,16},{16.30953407288,-204,16}})
end
function e19()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{84.58843231201,-212,16},{10.42553901672,-204,16}})
end
function e20()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{34.43569946289,-212,16},{5.32143163681,-204,16}})
end
function e21()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{50.61042404175,-212,16},{2.46119451523,-204,16}})
end
function e22()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{69.50844573975,-212,16},{5.45300483704,-204,16}})
end
function e23()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{65.45124053955,-212,16},{33.24272537231,-204,16}})
end
function e24()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{72.46097564697,-212,16},{22.39505767822,-204,16}})
end
function e25()
fastsearch({{0.37499997023,16,32},{-10,-152,16}},{{80.53405761719,-212,16},{18.30999183655,-204,16}})
end
function e3()
OK = gg.choice({
"boss房",--1
"教堂处",--2
"海盗船",--3
"你个大傻逼幻想传",--4
"返回"
},0,"")
if OK==1 then
	 r1()
end
if OK==2 then
	 r2()
end
if OK==3 then
	 r3()
end
if OK==4 then
	 r4()
end
if OK==5 then
	 HOME()
end
XGCK =-2
while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   e3()
  end
end
end

function r1()
fastsearch({{0.3749999702,16,32},{1111752704,-132,4}},{{66.4966506958,-212,16},{55.80109786987,-204,16},{3,-208,16,false}}) 
end
function r2()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{95.24781799316,-212,16},{19.73115158081,-204,16},{3,-208,16,false}}) 
end
function r3()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{69.37117767334,-212,16},{24.43232536316,-204,16},{3,-208,16,false}}) 
end
function r4()
fastsearch({{0.37499997023,16,32},{1111752704,-132,4}},{{44.47694778442,-212,16},{81.638671875,-204,16},{3,-208,16,false}}) 
end

L0_01={}
QK=gg.clearList--清空保存列表
Qk=gg.clearResults--清空搜索列表
Nc=gg.setRanges--内存
So=gg.searchNumber--搜索/改善
Fw=gg.getResults--修改范围
Xg=gg.editAll--修改值
Dz=gg.searchAddress--地址搜索
Yc=gg.sleep--延迟
JS=gg.getListItems--获取保存列表计数if #JS
Js=gg.getResultCount--获取搜索列表计数
FW=0xFFFFFFFF--地址搜索范围
TJ=gg.addListItems--添加到保存列表
Ts=gg.toast--提示
Fz=gg.copyText--复制
Tj=gg.loadResults---将变量添加到搜索列表
sb="搜索失败了"
qxe="你选择了取消"


Sou=function(L0_15,L0_16,L0_17)
   Nc(32)
   Qk()
   So(L0_15,L0_16)
   if L0_17 then Dz(L0_17,FW,L0_16) end
   if Js()==0 then return nil end
   return Fw(Js())
end




LA_02=function(L0_16,L0_17)
     local v={}
   for k=1,#L0_17 do
     v[k]={
     ['address']=L0_16+L0_17[k][1],
     ['flags']=L0_17[k][2],
     ['value']=L0_17[k][3]
     }
     if L0_17[k][4] then v[k]['freeze']=true gg.addListItems(v) end
   end
     gg.setValues(v)
end

LA_03=function(L0_16,L0_17)
     local v={}
   for k=1,#L0_17 do
     v[k]={
     ['address']=L0_16+L0_17[k][1],
     ['flags']=L0_17[k][2]
     }
   end
     return gg.getValues(v)
end

LA_05=function(L0_16,L0_17)
     local vv=LA_03(L0_16,{{L0_17[1],4}})
     for k=2,#L0_17 do
     local v={{
     ['address']=(vv[1].value+L0_17[k]) & 0xFFFFFFFF,
     ['flags']=4
     }}
     vv=gg.getValues(v)
     end
     return vv
end

LA_06=function(L0_15,L0_16,L0_17,L0_18)
   return gg.getValues({{address=(L0_15[L0_16].value+L0_17) & 0xFFFFFFFF,flags=L0_18}})
end

LA_07=function(L0_15)
	local r = {}
	local t = gg.getRangesList('^/data/*.so*$')
	for i, v in pairs(t) do
	 if v.type:sub(2, 2) == 'w' then
      table.insert(r, v)
     end
	end
	for i=1,#r do
	 if L0_15[1] == r[i].internalName:gsub('^.*/', '') and L0_15[2] == r[i].state then
	  return r[i]
     end
    end
end

function e4()
if not io.open(gg.getFile():gsub('/[^/]+$', '')..'/Record.sv','rb') then io.open(gg.getFile():gsub('/[^/]+$', '')..'/Record.sv','w'):write('Call={\'记录位置\',\'删除位置\',\'退出\'}\ncode={1,2,3,4,5,6}'):close() end

   assert(loadfile(gg.getFile():gsub('/[^/]+$', '')..'/Record.sv'))()
   local GJ = gg.choice(Call,0,"自定义[zero]")
   if not GJ then XGCK=-2 return end
   if GJ == (#Call-2) then L0_01['记录']() return end
   if GJ == (#Call-1) then L0_01['删除']() return end
   if GJ == #Call then JJ3() end
   L0_01['修改坐标'](GJ)
   XGCK=-2
   while true do
if gg.isVisible(true) then
    XGCK = 2
    gg.setVisible(false)
  end
  if XGCK == 2 then
   e4()
  end
end
end


L0_01['修改坐标']=function(n)
   local t=L0_01['获取坐标']()
   local L0_02=n*2
   for i=1,#t do
     LA_02(t[i].address,{{0,16,code[L0_02-1]},{8,16,code[L0_02]}})
   end
   Ts('已传送到'..Call[n]..'，祝您游戏愉快！')
   gg.clearResults()
end

L0_01['记录']=function()
    local a=gg.prompt({'输入位置名称'},nil,{'text'})
    if not a then Ts(qxe) return end
    table.insert(Call,1,a[1])
    local t=L0_01['获取坐标']()
    local r=LA_03(t[1].address,{{0,16},{8,16}})
    table.insert(code,1,r[2].value)
    table.insert(code,1,r[1].value)
    local t,tt={},{}
    for i=1,#Call do
      table.insert(t,'\''..Call[i]..'\',')
    end
    for i=1,#code do
      table.insert(tt,code[i]..',')
    end
    io.open(gg.getFile():gsub('/[^/]+$', '')..'/Record.sv','w'):write('Call={'..table.concat(t)..'}\ncode={'..table.concat(tt)..'}'):close()
    Ts('记录成功')
    gg.clearResults()
end
L0_01['删除']=function()
    local a=gg.multiChoice(Call)
    if not a then return end
    if a[#Call-2] then return end
    if a[#Call-1] then return end
    if a[#Call] then return end
    local t={}
    for i=1,#Call do
      if a[i] then 
        table.remove(Call,i-#t)
        table.insert(t,{})
      end
    end
    local t={}
    for i=1,#Call do
      if a[i] then
        table.remove(code,i-#t)
        table.remove(code,i-#t)
        table.insert(t,{})
      end
    end
    local t,tt={},{}
    for i=1,#Call do
      table.insert(t,'\''..Call[i]..'\',')
    end
    for i=1,#code do
      table.insert(tt,code[i]..',')
    end
    io.open(gg.getFile():gsub('/[^/]+$', '')..'/Record.sv','w'):write('Call={'..table.concat(t)..'}\ncode={'..table.concat(tt)..'}'):close()
    Ts('删除成功')
    gg.clearResults()
end


L0_01['获取坐标']=function()
   local r=Sou('0.374999970',16)
   local V={}
   for i=1,#r do
     local t=LA_03(r[i].address,{{-132,16},{-212,16}})
     if t[1].value==49 then
       table.insert(V,t[2])
       gg.clearResults()
     end
   end
   return gg.getValues(V)
end

function T()
  gg.toast('8.14.1')
  SN = gg.multiChoice({
	 "锁定子弹",---1
	 "武器间隔",---2
	 "穿墙射程",---3
	 "道具冷却",---4
	 "枪枪暴击",---5
	 "强制开门",---6
	 "锁定变身",---7
	 "移动开物",---8
	 "击倒队友",---9
	 "暗黑透视",---10
	 "明亮透视",---11
	 "雷达透视[大厅]",---12
	 "自动开锁",---13
	 "倒地不清buff",---14
	 "解锁角色",---15
	 "角色皮肤️",---16
	 "解锁道具",---17
	 "道具皮肤",---18
	 "道具520级",---19
	 "乱斗锁卡",---20
	 "解锁模式",
	 "退出️脚本"
},nil,"X白不算借⭕️")
if SN == nil then else    end
if SN[1] == true then T1() end
if SN[2] == true then T2() end
if SN[3] == true then T3() end
if SN[4] == true then T4() end
if SN[5] == true then T5() end
if SN[6] == true then T6() end
if SN[7] == true then T7() end
if SN[8] == true then T8() end
if SN[9] == true then T9() end
if SN[10] == true then T10() end
if SN[11] == true then T11() end
if SN[12] == true then T12() end
if SN[13] == true then T13() end
if SN[14] == true then T14() end
if SN[15] == true then T15() end
if SN[16] == true then T16() end
if SN[17] == true then T17() end
if SN[18] == true then T18() end
if SN[19] == true then T19() end
if SN[20] == true then T20() end
if SN[21] == true then T21() end
if SN[22] == true then HOME() end

XGCK=-1
end
function T1()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{1,16,0xF46F34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')

end
end
function T2()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xf3d214},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xf3d218},})
end
function T3()
xb=gg.alert("穿墙射程","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF45760},},'子弹穿墙射程开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xF45760},},'子弹穿墙射程关')
end
end
function T4()
xb=gg.alert("道具冷却","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1f312d0},},'道具无冷开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1f312d0},},'道具无冷关')
end
end
function T5()
xb=gg.alert("枪枪暴击","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b1895c},},'枪枪暴击开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1b1895c},},'枪枪暴击关')
end
end
function T6()
xb=gg.alert("强制开门","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x20db674},},'强制开启逃生门开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x20db674},},'强制开启逃生门关')
end
end
function T7()
xb=gg.alert("锁定变身","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1886fa8},},'锁定变身开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1886fa8},},'锁定变身关')
end
end
function T8()
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end
function T9()
xb=gg.alert("击倒队友","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x114690c},},'击倒队友开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x114690c},},'击倒队友关')
end
end
function T10()
xb=gg.alert("暗黑透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70560},},'暗黑透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd70560},},'暗黑透视关')
end
end
function T11()
xb=gg.alert("明亮透视","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x101c518},},'明亮透视开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x101c518},},'明亮透视关')
end
end
function T12()
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
function T13()
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
function T14()
xb=gg.alert("倒地不清buff","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b12248},},'倒地不清buff开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906896,4,0x1b12248},},'倒地不清buff关')
end
end
function T15()
xb=gg.alert("解锁角色","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA5158},},'解锁角色开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA5158},},'解锁角色关')
end
end
function T16()
xb=gg.alert("角色皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEA31D0},},'角色全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xEA31D0},},'角色全皮关')
end
end
function T17()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b40ed0},},'')
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b40ed4},},'解锁道具')
end

function T18()
xb=gg.alert("道具皮肤","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B5141C},},'道具全皮开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0x1B5141C},},'道具全皮关')
end
end
function T19()
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
function T20()
xb=gg.alert("乱斗锁卡","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1E07618},},'乱斗锁卡开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1E07618},},'乱斗锁卡')
end
end

function T21()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xfe2390},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xFE2394},},'解锁模式')
end
function Exit()
print("快手搜索神雕官方账号")
os.exit()
end


-------------------------------------------------------------------------------------------------

function Exit()
print("欢迎下次使用 神雕の神雕山")
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

--------------------------------------

---[=[   ]=]----------------------------------------------------------------