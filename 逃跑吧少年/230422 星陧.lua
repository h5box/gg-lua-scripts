
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
	 "🌀防闪防封🌀",
	 "🌀稳定功能🌀",
	 "🌀半稳功能🌀",
	 "🌀变态功能🌀",
	 "🌀直装功能🌀",
	 "🌀换卡功能🌀",
	 "🌀连发功能🌀",
	 "🌀乱斗功能🌀",
	 "🌀美化功能🌀",
	 "🌀角色功能🌀",
	 "🌀变身功能🌀",
	 "🌀解封设备🌀",
	 "🌀特殊功能🌀",
	 "️🌀退出辅助🌀",
}, nil, os.date("♡̶҉6꧔ꦿ6℘6\n时间:%Y年/️%m月/%d日%H:%M:%S\n进程:".. gg.getTargetInfo().label.."\n包名:".. gg.getTargetPackage().."\n状态:已退圈"))
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
if menu == 14 then Exit() end
XGCK=-1
end
-------------------------------------------------------------------------------------------------------------
function C()
SN = gg.multiChoice({
  "移动开物",
  "丝滑穿墙",
  "加速开锁",
  "血包范围",
  "范围开锁",
  "稳定移速",
  "稳定跳高",
  "全图亮透",
  "无视夹子",
  "视野范围",
  "疾跑无敌",
  "返回上一页",
}, nil, "稳定上分一套\n配合防封")
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
{["name"] = "血包范围优化"},
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
     "解锁模式",--1
	 "解锁角色",--2
     "道具皮肤",--3
     "角色皮肤",--4
     "武器间隔",--5
     "武器子弹",--6
     "武器无后",--7
	 "虚拟金币",--8
     "道具无冷",--9
     "无视无敌",--10
     "变身攻击",--11
     "渲染透视",--12
     "丝血不死",--13
     "开启猎杀",--14
     "关闭猎杀",--15
     "开启秒杀",--16
     "关闭秒杀",--17
     "返回上一页",--18
 },nil,"猎杀指的是猎杀队友")
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
nc_offset(getso("libil2cpp.so"),{{-442564368,4,0x1cddbcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CDDBD0},})
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
function D()
menu1 = gg.multiChoice({
"受伤踩夹锁血",
"全星耀动作",
"能量腕炮全屏",
"医疗箱全屏",
"倒地复活",
"666",
"疾跑改BOSS无敌",
"BOSS无敌时间",
"追捕无限夹子",
"内存防卡屏",
"不死捐钱",
"4v1开锁刷钱",
"8v2开锁刷钱",
"停止开锁刷钱",
"️返回上一页",
}, nil, os.date("半稳功能\n当前时间:%Y年/️%m月/%d日%H:%M:%S"))
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
"倒车改跳跃",
"跳高无限时间",
"火箭筒子穿",
"火箭筒射程",
"车轮无限时间",
"时光机无限时间",
"时光机随机buff",
"优化战绩面板",
"局内超级移速",
"吼吼号全屏红旗",
"A内存无间隔",
"大神资格证",
"无限刷道具",
"一键美化道具",
"观战控制别人",
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
-------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
function A()
menu1 = gg.multiChoice({
"登录防闪",
"独家杀检测",
"防检测+防举报",
"独家防封",
"ca防+xa防",
"清理追封",
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
fastsearch({{842084353,4,16},{909456435,4,4},{1094268983,8,4}},{{9999,0,4,false}})
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
gg.toast("注入成功")
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
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.qihoo")
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

function H()
SN =gg.multiChoice({
  "火箭换卡",
  "疾跑换卡",
  "跳高换卡",
  "皮卡换卡",
  "拳套换卡",
  "箱子换卡",
  "卡槽可用",
  "返回上一页"
 }, nil, "极简原创")
  if SN == nil then
  else
  if SN[1] == true then
    to1()
  end
  if SN[2] == true then
    to2()
  end
  if SN[3] == true then
    to3()
  end
  if SN[4] == true then
    to4()
  end
  if SN[5] == true then
    to5()
  end
  if SN[6] == true then
    to6()
  end
  if SN[7] == true then
    to7()
  end
  if SN[8] == true then
   HOME()
  end
end
  XGCK = -1
end

function to2()--疾跑
local SA=gg.prompt({"疾跑改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{[1]=""})
alll({{779514723,4,32},{1632071241,4,4},{20528,32,4},{51200,40,4}},{{SA[1],-12,4,false}}) end

function to3()--跳高
local SE=gg.prompt({"跳高改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{[1]=""})
alll({{779514723,4,32},{1632071241,4,4},{25653,32,4},{51456,40,4}},{{SE[1],-12,4,false}}) end

function to5()--拳套
local SQ=gg.prompt({"拳套改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{[1]=""})
alll({{779514723,4,32},{1632071241,4,4},{25655,32,4},{259072,40,4}},{{SQ[1],-12,4,false}}) end

function to6()--阻挡箱
local SG=gg.prompt({"阻挡箱改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{[1]=""})
alll({{779514723,4,32},{1632071241,4,4},{25655,32,4},{77056,40,4}},{{SG[1],-12,4,false}}) end

function to4()--皮卡
local SU=gg.prompt({"皮卡改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{[1]=""})
alll({{779514723,4,32},{1632071241,4,4},{46129,32,4},{28416,40,4}},{{SU[1],-12,4,false}}) end
function to1()
local SP=gg.prompt({"火箭筒改100  皮卡101  侦查眼102  手雷103  医疗包104  跳高105  护盾106  阻挡箱107  雷达108  狗109  针110   酒桶111 飞爪112  传送门113  自走球114   毒液115  滑板116  魔法墙117  引力场118  治疗球119  气垫120  导弹121  追踪雷122  震荡波123  小飞机124   时光机125  跳跳杆126  拳套127  吼吼号128  噗噗蛋129  呼啦圈130  火箭筒200  迫击炮210  冲锋枪220  能量剑240  蹦蹦枪250  能量炮280  霰弹枪290  换风标300 霸天斧310\n\n请输入需要修改的道具卡↓"},{[1]=""})
alll({{779514723,4,32},{1632071241,4,4},{64048,32,4},{25600,40,4}},{{SP[1],-12,4,false}}) end

function to7()
alll({{211,16,32},{70,-4,16},{26,8,16}},{{6,-16,4,false}})
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
  }, nil, "奈何原创 己整理")
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
 }, nil,os.date"by.鹿鹿原创")
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
function Exit()
print("欢迎下次使用 正经の小学生脚本😭")
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