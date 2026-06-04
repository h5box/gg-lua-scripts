



gg.alert("作者: 恶作剧")




gg.alert("致谢：星海   川哥   ")






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
		gg.toast("已修改" .. (#tb[1] + #tb[2]) .. "个值")
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
  SN = gg.multiChoice({
  "😙防闪［8.1.4］😍",
  "😮稳定功能区🥶",
  "😖连发功能区🥶",
  "🥰变态功能区😓",
  "🥶新版本防封区😥",
  "😪乱斗功能😱",
  "🤑角色功能😉",
  "😍半稳定功能区😜",
  "🤩恐龙时代😄",
  "🧐自调功能😋",
  "😙音乐😍",
  "退出脚本"
 }, nil, "源码来自：神雕山    致谢：川哥")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   EZ()
  end
  if SN[8] == true then
   ERY()
  end
  if SN[9] == true then
   cnm()
  end
  if SN[10] == true then
   EFC()
  end
  if SN[11] == true then
   EFE()
  end      
  if SN[12] == true then
   Exit()
  end
end
  XGCK = -1
end




function a()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("778,923,875", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2147483647", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
	 end


function b()
  SN = gg.multiChoice({
  "范围开锁",
  "加速",
  "高跳",
  "明透",
  "移动开物",
  "加速开锁",
  "透视",
  "退出脚本"
 }, nil, "稳定上分")
  if SN == nil then
  else
  if SN[1] == true then
    b1()
  end
  if SN[2] == true then
   b2()
  end
  if SN[3] == true then
   b3()
  end
  if SN[4] == true then
   b4()
  end
  if SN[5] == true then
   b5()
  end
  if SN[6] == true then
   b6()
  end
if SN[7] == true then
   b7()
  end  
  if SN[8] == true then
   Exit()
  end
end
  XGCK = -1
end


function b1()
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

function b2()
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

function b3()
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

function b4()
fastsearch({
{71077936, 4, 16384},
{71077968, -4, 4},
},{
{-516948194, 4, 4, false},
},"明透")
end

function b5()
xb=gg.alert("移动开物","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1731454},},'移动开物开')
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x1731454},},'移动开物关')
end
end

function b6()
fastsearch({{1075838976,4,32},{1069547520,-8,4},{1073741824,-4,4}},{{3,-12,16,false}})
end

function b7()
fastsearch({
{71077936, 4, 16384},
{71077968, -4, 4},
},{
{-516948194, 4, 4, false},
},"明透")
end
function c()
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
  }, nil, "部分可能无用")
  if SN == nil then
    else
  if SN[1] == true then
    a99()
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
function a99()
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


function d()
B = gg.multiChoice({
     "模式",--1
	 "角色",--2
     "皮肤",--3
     "角皮肤",--4
     "间隔",--5
     "子弹t",--6
     "无后",--7
	 "金币",--8
     "无冷",--9
     "无敌",--10
     "攻击",--11
     "透视",--12
     "不死",--13
     "猎杀",--14
     "关猎杀",--15
     "秒杀",--16
     "关秒杀",--17
     "超稳定一件套",--18
     "返回上一页",--19
 },nil,"超级变态\n")
  if B == nil then
  else
  if B[1] == true then
    SB1()
  end
  if B[2] == true then
    SB2()
  end
  if B[3] == true then
    SB3()
  end
  if B[4] == true then
    SB4()
  end
  if B[5] == true then
    SB5()
  end
  if B[6] == true then
    SB6()
  end
  if B[7] == true then
    SB7()
  end
  if B[8] == true then
    SB8()
  end
  if B[9] == true then
    SB9()
  end
  if B[10] == true then
    SB10()
  end
  if B[11] == true then
    SB11()
  end
  if B[12] == true then
    SB12()
  end
  if B[13] == true then
    SB13()
  end
  if B[14] == true then
    SB14()
  end
  if B[15] == true then
    SB15()
  end
  if B[16] == true then
    SB16()
  end
  if B[17] == true then
    SB17()
  end
  if B[18] == true then
    SB18()
  end
  if B[19] == true then
    HOME()
end
end
end													  
function SB1()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xF82AAC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xF82AB0},})
end
function SB2()
fastsearch
({{-0.00048828166,16,16384},
{-382906384,-380,4},
{-494030820,-376,4},
{167772164,-276,4}
},
{
{-516948194,-380,4,false}})
end
function SB3()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b05dcc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1B05DD0},})
end
function SB4()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1076760},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1076764},})
end
function SB5()
xtnb({{false,295731200,0,4,nil,nil},{-481296384,1488,4},{436207620,1492,4},{-442564508,1496,4}},{{-476052716,1464,4,false},{-516948194,1468,4,false}},4,16384,"无间隔")end
function SB6()
xb=gg.alert("锁子无后","开","关")
if xb==1 then
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1ba4524},},'锁子开')
fastsearch({{64205408, 4, 16384}, {-382908368, 4, 4}, {-494030840, 8, 4}, {-442544008, 12, 4}}, {{-476052716, 4, 4, false}, {-516948194, 8, 4, false}})--无后
end
if xb==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0x1ba4524},},'锁子关')
end
end
function SB7()
fastsearch
({
{0.00100000005,16,16384},
{-382907280,40,4},
},
{
{1.6875,0,16,false}})
end
function SB8()
fastsearch({{1104150528,4,32},{2,64,4}},{{1314520,52,4,false}})
end
function SB9()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1CBE9F0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1CBE9F4},})
end
function SB10()
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
function SB11()
fastsearch
({{0.00100000005,16,16384},
{-382907280,184,4}
},
{
{-516948194,184,4,false}})
end
function SB12()
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
fastsearch
({{-369098723,4,16384},{0,68,16}},
{
{1,68,16,false}})
end
function SB13()
xtnb({{false,295698437,0,4,nil,nil},{-481296384,5652,4},{436207620,5656,4},{-442564472,5660,4}},{{-476053504,5628,4,false},{-516948194,5632,4,false}},4,16384,"丝血不死")
end
function SB14()
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
function SB16()
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
function SB17()
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
function SB18()
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


function e()
menu1 = gg.multiChoice({
"防闪［防止在使用防封的时候闪退］",
"杀检测",
"防举报",
"防封",
"大哥防2",
"删除日制",
"️返回上一页",
}, nil, os.date("防封"))
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

function f()
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
 }, nil, "乱斗功能")
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

function EZ()
menu1 = gg.multiChoice({
"技能免费",
"技能无限",
"技能无冷却",
"命石者",
"星辰圣女",
"艾可",
"金库艾可",
"水之忍者",
"小狐狸",
"小狮子",
"奥博",
"影之忍者",
"团子",
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

function ERY()
menu1 = gg.multiChoice({
"受伤踩夹锁血",
"全星耀动作",
"能量腕炮全屏",
"医疗箱全屏",
"复活",
"",
"疾跑改无敌",
"无敌时间",
"无限夹子",
"防卡屏",
"不死捐钱",
"4v1刷钱",
"8v2刷钱",
"停止",
"️返回上一页",
}, nil, os.date("半稳功能\n当前时间:%Y年/️%m月/%d日%H:%M:%S\n"))
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

function cnm()
menu1 = gg.multiChoice({
"皮卡改剑龙",
"皮卡改霸王龙",
"皮卡改迅猛龙",
"皮卡改三角龙",
"皮卡改翼龙",
"皮卡改苍龙",
"苍龙技能无冷却",
"霸王龙无冷却",
"剑龙无冷却",
"三角龙无冷却",
"返回主页",
}, nil, "新版本恐龙好吧")
if KLQ==1 then klq1() end
if KLQ==2 then klq2() end
if KLQ==3 then klq3() end
if KLQ==4 then klq4() end
if KLQ==5 then klq5() end
if KLQ==6 then klq6() end
if KLQ==7 then klq7() end
if KLQ==8 then klq8() end
if KLQ==9 then klq9() end
if KLQ==10 then klq10() end
if KLQ==11 then Main() end
ASDF=-1
end


function klq1()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500012", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function klq2()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500014", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function klq3()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500013", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function klq4()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500011", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function klq5()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70015", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function klq6()
gg.setRanges(32)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500015", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function klq7()
fastsearch({{false,3.0,0,16,nil,nil},{7.006492321624085E-44,144,16},{99.0,152,16},{5.0,160,16}},{{0,140,16,false}},16,32,"苍龙攻击无冷却")
fastsearch({{false,2.5,0,16,nil,nil},{3.5,8,16},{50.0,12,16},{4.0,32,16}},{{0.01,20,16,false}},16,32,"输入功能名称")end
function klq8()
fastsearch({{false,1.3872854796815689E-43,4,16,nil,nil},{3.0,12,16},{3.0,20,16}},{{0.01,0,16,false}},16,32,"霸王龙攻击无冷却")
end
function klq9()
gg.setRanges(32)
	 gg.searchNumber("7;20D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function klq10()
gg.setRanges(32)
	 gg.searchNumber("1.5;35D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function EFC()
SN = gg.multiChoice({
	 "人物移速",--1
	 "人物血量",--2
	 "开锁速度",--3
	 "视野范围",--4
	 "跳跃高度",--5
	 "金币数量",--6
	 "倒地移速",--7
	 "退出脚本",--8
}, nil, "自调功能，调多点开始修仙")
if SN == nil then
  else
if SN[1]==true then
	 HS12()
end
if SN[2]==true then
	 HS13()
end
if SN[3]==true then
	 HS16()
end
if SN[4]==true then
	 HS15()
end
if SN[5]==true then
	 HS84()
end
if SN[6]==true then
	 HS79()
end
if SN[7]==true then
	 HS80()
end
if SN[8]==true then
	 Exit()
end
end
  XGCK = -1
end

function HS12()--1
local Savior=gg.prompt({"人物移速[自调]"}, {[1] = 3.6}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb ={
{["memory"] = 32},
{["name"] = "人物移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg ={
{["value"] = Savior[1],["offset"] =0, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end


function HS13()--2
local Savior=gg.prompt({"人物血量[自调]"}, {[1] = 1000}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb ={
{["memory"] = 32},
{["name"] = "人物血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg ={
{["value"] = Savior[1],["offset"] =-20, ["type"] = 16,["freeze"] = false},
{["value"] = Savior[1],["offset"] =-24, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end


function HS16()--3
local Savior=gg.prompt({"开锁速度[自调]"}, {[1] = 3}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁速度"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = Savior[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end


function HS15()--4
local Savior=gg.prompt({"视野范围[自调]"}, {[1] = 100}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb ={
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg ={
{["value"] = Savior[1],["offset"] =-4, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end


function HS84()--5
local Savior=gg.prompt({"跳跃高度[自调]"}, {[1] = 10}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb ={
{["memory"] = 32},
{["name"] = "跳跃高度"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg ={
{["value"] = Savior[1],["offset"] =0, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end

function HS79()--6
local Savior=gg.prompt({"金币数量[自调]"}, {[1] = 100000}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb ={
{["memory"] = 32},
{["name"] = "金币数量"},
{["value"] = 1116471296, ["type"] = 4},
{["lv"] = 1129512960, ["offset"] = 4, ["type"] = 4},
}
qmxg ={
{["value"] = Savior[1],["offset"] =64, ["type"] = 4,["freeze"] = false},
}
xqmnb(qmnb)
end

function HS80()--7
local Savior=gg.prompt({"倒地移速[自调]"}, {[1] = 10}, {[1] = "text"})
if Savior==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb ={
{["memory"] = 32},
{["name"] = "倒地移速"},
{["value"] = 900.0, ["type"] = 16},
{["lv"] = 20.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.24199999868869781, ["offset"] = 16, ["type"] = 16},
}
qmxg ={
{["value"] = Savior[1],["offset"] =16, ["type"] = 16,["freeze"] = false},
}
xqmnb(qmnb)
end

function d21()
gg.clearList()
gg.toast("停止刷钱成功")
end

local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub("%lua$", "").."cfg"
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"红色高跟鞋","10"}
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
sn=gg.choice({"播放"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
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
function YY998() Obtain=gg.makeRequest("https://api.uomg.com/api/rand.music?sort=热歌榜&format=json").content muchen=Obtain:match('url":"(.-)","picurl') gg.playMusic(muchen) end 
--主页


 









function EFE()  
 SN = gg.choice({
   "𒅒♥搜索歌曲🔍♥️𒅒",
   "𒅒♥️搜索列表🌐♥️𒅒",
   "𒅒♥️播放热歌🗣️♥️𒅒",
   "𒅒♥️停止播放💤♥️𒅒",
   "𒅒♥️返回主页️➗♥️𒅒",
},2018,os.date("𒅒当前时间%Y年%m月%d日%H时%M分%S秒𒅒"))
if SN==1 then s1() end
if SN==2 then Play(gqlb,idb) end
if SN==3 then YY998() end
if SN==4 then stop() end
if SN==5 then os.exit() end
XGCK=-7
end

function s1()
search = gg.prompt({
"输入要搜索的歌曲\n可加上歌手名字",
"设置显示数量(数字)",
},g.sel,{
"text",
})
if search == nil then Main6() end
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

while true do if gg.isVisible(true) then   FX1 = nil  gg.setVisible(false) end  if FX1 == nil then  Main()  end  end



function Exit()
print("恶作剧")
os.exit()
end
cs = "恶作剧"



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