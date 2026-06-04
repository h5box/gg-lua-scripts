

-----------------------------------未经允许二改死妈-------------------------------------------









gg.alert("小鹏制作，二改倒卖死妈")
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
           gg.toast("搜索η"..#data.."条ΔΘ")
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
            gg.toast("开启失败", false)
            return false
        end
    else
        gg.toast("未找到游戏数据！开启失败")
        return false
    end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  

function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end
function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end
  sj = (os.date("%Y年%m月%d日%H时%M分%S秒")) 
    state={} state.a="[开启]" state.b="[开启]" state.c="[开启]" state.d="[开启]" state.e="[开启]" state.f="[开启]" state.j="[开启]" state.h="[开启]" state.i="[开启]"
 local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast("共到"..ssjgsl.."条数值") gg.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast("开启失败 原因:改善结果无数值") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("开启成功 已修改"..ssjgs.."条数值") else gg.toast("开启失败 原因:结果无数值") end end 
jiaqun =gg.alert('是否复制QQ群\n源码大部分来自网络\n本脚本完全免费\n','复制QQ群',"跳转加群",'进入脚本')
if jiaqun == 1 then 
 gg.copyText('1063892179')
 end
 if jiaqun == 2 then
 gg.jiaqun('9fs0DtdvEEUwQyY69RqOupc1HrO5QkIf') 
 end
 if jiaqun == 3 then
 end
gg.toast("欢迎加入")
function Main()
menu = gg.choice({
'汽车功能',
'轿车功能',
'大厅功能',
'落地功能',
'透视功能',
'防封功能',
'退出脚本'},
nil,'请先开防封再开别的，反馈交流群:1063892179')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then Exit() end
if menu == 8 then Exit() end
XGCK=-1
end
function A()
menu1 = gg.multiChoice({
  "吉普飞天",
  "吉普关闭",
  "蹦蹦飞天",
  "蹦蹦关闭",
  "装甲飞天",
  "装甲关闭",
  "牛逼加速",
  "轿车加速",
  "吉普加速",
  "蹦蹦加速",
  "摩托加速",
  "汽车锁油",
  "汽车秒刹",
  "车辆浮空",
  "全车加速(自测)",
  "全车速关",
  "蹦蹦穿墙",
  "返回主页"},
nil,"小鹏祝你游戏愉快！反馈交流群:1063892179")
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
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then a17() end
if menu1[18] == true then HOME() end
end
GLWW=-1
end


function a1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00055555557;49.9999961853;24.99999809265",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00055555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00455555557",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00055555557",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.04111111114",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00111111114",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00016666666;;49.9999961853", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00016666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00416666666",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00016666666",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll("-2", gg.TYPE_FLOAT)
gg10sj="1"
gg.toast("吉普蹦蹦飞天加速已开启")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.03", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-0.55",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("吉普加速")
end



function a10()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹦蹦加速")
end



function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("摩托车加速")
end



function a12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("汽车锁油")
end



function a13()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "全车秒刹车"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function a14()
Name = "车浮空" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.139455925665468E27, 0},
{-7.583908064996921E27, 4},
{-5.112866641183671E27, 8},
{-1.2793503529145021E28, 12},
{-7.600827713809233E27, 16},
{-7.600830074992474E27, 20},
{-7.593578290962217E27, 24},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end



function a15()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end



function a16()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  g10sj="0"
  gg.toast("全车加速已关闭")
end



function a17()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end







function B()
menu1 = gg.multiChoice({
"轿车飞天",
"轿车关闭",
'返回上一页'},
nil,'倒卖死妈')

if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then HOME() end
end
end










function b1()
gg.clearResults()
gg.searchNumber("0.00100000005;49.9999961853;24.99999809265::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.06100000005",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("轿车飞天")
end



function b2()
gg.clearResults()
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00100000005",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("飞天关闭")
end



function C()
menu1 = gg.multiChoice({
"除草除树",
"除草树关️",
"大厅除草",
"范围除草️",
"落地除草️",
"暴力全除",
"关闭全除",
'返回上页'},
nil,'交流反馈群:1063892179')

if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then HOME() end
end
end

  function c1()
    gg.setRanges(16384)
    SearchWrite({
      {
        tonumber("-3.1863806e30"),
        tonumber("0")
      },
      {
        tonumber("-6.1840865e27"),
        tonumber("12")
      }
    }, {
      {
        tonumber("0"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
  
  function c2()
    gg.setRanges(16384)
    SearchWrite({
      {
        tonumber("-6.1840865e27"),
        tonumber("12")
      }
    }, {
      {
        tonumber("-3.1863806e30"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
  
  
 function c3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,590,068,740,425,724,723",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("4,590,068,742,429,853,100",gg.TYPE_QWORD)
qmnb = {
{["memory"] = 16384},
{["name"] = "全图除草"},
{["value"] = -2123974960349970432, ["type"] = 32},
{["lv"] = -1.3620439e28, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast('全图除草已成功')
end
  
  
  
 function c4()
gg.setRanges(1048576)--除草
local dataType = 16
local tb1 = {{2.0, 0}, {0.00390625, 8}, {10000.0, 24}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function c5()
gg.setRanges(1048576)--除草
local dataType = 16
local tb1 = {{2.0, 0}, {0.00390625, 8}, {10000.0, 24}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
Name = "除草A内存" 
gg.setRanges(32)
local dataType = 16
local search = {
{8.0,0},
{1.0, 8},
{1.2000000476837158, 40},
{0.800000011920929, 48},
{1.5, 96},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType)

Name = "除草" 
gg.setRanges(32)
local dataType = 16
local search = {
{1.399999976158142,0},
{1.399999976158142, 4},
{1.9197788961249994E-43, 72},
{1.540755710453297E-33, 80},
{4.4841550858394146E-44, 128},

}
local modify = {{-99, 0},}
SearchWrite(search,modify,dataType)
Name = "除草A内存" 
gg.setRanges(32)
local dataType = 16
local search = {
{1.399999976158142,0},
{1.399999976158142, -4},
{1.9197788961249994E-43, 68},
{1.540755710453297E-33, 76},
{4.4841550858394146E-44, 124},

}
local modify = {{-0.00001, 0},{-0.00001, -4},}
SearchWrite(search,modify,dataType)
end

  
 function c6()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("000A90ED1C3400E3r",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("000000001C3400E3r",32)
gg.toast("变态全除已成功")
  end
  function c7()
   gg.clearResults()
	 gg.setRanges(16384)
gg.searchNumber('-2,089,612,932,236,181,504',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-2,089,612,928,250,541,568",gg.TYPE_QWORD)
  gg.toast("变态全除已关闭成功")
  end





function D()
menu1 = gg.multiChoice({
"落地聚点",
"人物天线",
"全枪无后",
"持枪自瞄",
"自用范围",
"全抢增伤",
"返回主页"},
nil,"持枪自瞄趴下也锁！")
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end

function d1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("聚点成功")
end


function d2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("千米天线")
end

function d3()
  Name = "无后"
  gg.setRanges(16384)
  local dataType = 16
  local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
  local modify = {{0, -8},}
  SearchWrite(search,modify,dataType,Name)
  Name = "防抖"
  gg.setRanges(16384)
  local dataType = 4
  local tb1 = {{-405405696, 0}, {-499122175, 4}, {-481296380, 8}, }
  local tb2 = {{0, 0}, }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(16384)
  local dataType = 16
  local tb1 = {{-1.114450155758339E28, 0}, {-2.8111605430681328E28, -12}, {-1476732160.0, -8}, {-3.7444097189855772E28, -4}, {128.0, 4}, }
  local tb2 = {{0, 0}, }
  SearchWrite(tb1, tb2, dataType)
  Name = "聚点"
  gg.setRanges(16384)
  local dataType = 16
  local search = {{-6.171871492066637E27, 0},{-3.868563083935415E25, -8},}
  local modify = {{0, -8},{0, 4},}
  SearchWrite(search,modify,dataType,Name)
end

function d4()
Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.2573531344941352E23, 0},{-9.90656151829801E27, -40},}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("持枪自瞄")
Name="乱喵趴下"
local dataType = 32
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
SearchWrite(tb1, tb2, dataType)
Name = "全图距离" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},
}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)
Name = "频率自瞄"
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},
}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)
Name = "近远自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.999999747378752E-5, 0},
{360.0, -12},
{-360.0, -8},
{180.0, -4},
{-1.0153182385499395E28, 8},
}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)
end


function d5()
gg.setRanges(32)
local dataType = 16
local Name ="子弹范围"
local tb1 = {{90.775703430176, 0}, {0, 0}, {8, 0}, {16, 2}, }
local tb2 = {{150, 2}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="头部范围"
local tb1 = {{0.00009203507, 0}, {25, 20}, {30.5, 24}, }
local tb2 = {{295, 20}, {295, 24}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="身体范围"
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="身体第二部"
local tb1 = {{-88.73961639404, 0}, {18, 4}, {28, 8}, }
local tb2 = {{-530, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="全身范围"
local tb1 = {{69.5, 0}, {33, -4}, {35, -8}, }
local tb2 = {{270, 0}, {130, -4}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local search = {{9.201618194580078, 0},{9.203507215715945E-5, 8},{23.0, 24},}
local modify = {{240, 28},{240, 32},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
end

function d6()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("全枪增伤成功")
end





function E()
menu = gg.choice({
"晓龙专区",
"联发科专区",
"麒麟专区",
"物品透视",
"全机型白色",
"全机型黑色",
'返回上页'},
nil,'小鹏制作不喜勿喷')
if menu == 1 then XL() end
if menu == 2 then LFK() end
if menu == 3 then QL() end
if menu == 4 then FPTS() end
if menu == 5 then QJXB() end
if menu == 6 then QJXH() end
if menu == 7 then HOME() end
XGCK=-1
end


function FPTS()
Name = "流畅物品透视" 
gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-7.006492321624085E-45, 0}, 
{4.759266726416505E21, -52}, 
{5.568031422025374E-40, -48}, 
{1.107830132135128E-39, -32},
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-3.128393216411297E-39, 0}, 
{5.294235815352964E21, -28}, 
{4.980641729049856E21, -20}, 
{4.888404630981587E21, -4},
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function QJXB()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("白色开启成功")
end



function QJXH()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("黑色开启成功")
end

function XL()
menu1 = gg.multiChoice({
'6系列透视',
'通用上色',
'845透视',
'845浅蓝',
'845绿色',
'845深蓝',
"865透色",
"855透色",
"450透色",
"425透色",
'返回上页'},
nil,'反馈交流群:1063892179')

if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then HOME() end
end
end

function e1()
menu1 = gg.multiChoice({
"6系通用",
"659透色️",
"660透色",
"625透色️",
"653透色️",
'返回上页'},
nil,'小鹏制作国体变态辅助')

if menu1 == nil then else
if menu1[1] == true then xl1() end
if menu1[2] == true then xl2() end
if menu1[3] == true then xl3() end
if menu1[4] == true then xl4() end
if menu1[5] == true then xl5() end
if menu1[6] == true then HOME() end
end
end





function xl1()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.5695588e-40, 0}, {4.7408149e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.5774027e-39, 0}, {5.6262783e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪1
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202017189786658E-19, -132}, {3.76158192263132E-37, -124}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪2
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202010727438122E-19, -132}, {9.80908925027372E-45, -128}, {1.1202014604847243E-19, -124}, {255.0, -8}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function xl2()
qmnb = {
{["memory"] = 1048576},
{["name"] = "659透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 448, ["offset"] = 76, ["type"] = 4},
{["lv"] = 2, ["offset"] = 92, ["type"] = 4},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 304, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = 312, ["type"] = 16},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "上色"},
{["value"] = 432, ["type"] = 4},
{["lv"] = 64, ["offset"] = -756, ["type"] = 4},
{["lv"] = 8, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = -756, ["type"] = 4},
}
xqmnb(qmnb)
end

function xl3()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineAddress("504")
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineAddress("900")
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.setRanges(1048576 or 131072) 
local tb1 = {{tonumber("-1.7632431e-38"),tonumber("0")}, {tonumber("-1.7632429e-38"),tonumber("-16")}, {tonumber("4.5920551e-41"),tonumber("12")}, {tonumber("4.5919149e-41"),tonumber("-4")}, } 	
local tb2 = {{tonumber("4.594157e-41"),tonumber("-4")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function xl4()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType=gg.TYPE_FLOAT 
Name="马赛克"--- 4.814603e21
local tb1={{4.814603e21,0x24CC},{4.7408149e21,0x24C4}}
local tb2={{9999,0x24C8}}
SearchWrite(tb1,tb2,dataType)
gg.toast("马赛克开启成功，正在开启透明码.................")
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType=gg.TYPE_FLOAT 
Name="透明码"--- 5.1466568e21
local tb1={{5.1466568e21,0x47E4},{5.6262783e21,0x47DC}}
local tb2={{5444,0x47E0}}
SearchWrite(tb1,tb2,dataType)
gg.toast("透视开启成功")
gg.setRanges(1048576 or 131072) 
local tb1 = {{tonumber("-1.7632431e-38"),tonumber("0")}, {tonumber("-1.7632429e-38"),tonumber("-16")}, {tonumber("4.5920551e-41"),tonumber("12")}, {tonumber("4.5919149e-41"),tonumber("-4")}, } 	
local tb2 = {{tonumber("4.594157e-41"),tonumber("-4")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end	 


function xl5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-5.5695588e-40",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(8)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2.57740266e-40",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.57740266e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(8)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
 gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1194380045, 4}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function e2()
menu1 = gg.multiChoice({
"红色",
"黄色️",
"粉色",
"黄绿️",
"蓝色",
"白色",
"水晶蓝",
"水晶彩",
'返回上页'},
nil,'小鹏制作不喜勿喷')

if menu1 == nil then else
if menu1[1] == true then qwe1() end
if menu1[2] == true then qwe2() end
if menu1[3] == true then qwe3() end
if menu1[4] == true then qwe4() end
if menu1[5] == true then qwe5() end
if menu1[6] == true then qwe6() end
if menu1[7] == true then qwe7() end
if menu1[8] == true then qwe8() end
if menu1[9] == true then HOME() end
end
end


  function qwe1()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("红色")
  end
  function qwe2()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("黄色")
  end
  function qwe3()  
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("粉色")
  end
  function qwe4()  
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("4", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("黄绿")
  end
  function qwe5()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("蓝色")
  end
  
  function qwe6()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("白色")
  end
   
  function qwe7()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("31", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("水晶蓝")
  end
  
  function qwe8()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("32", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("水晶彩")
  end







function e3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("透明化开启成功")
end

function e4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end



function e5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
end



function e6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("深一点的蓝色开启成功")
end





function e7()
SN = gg.choice({
	 "865透明",
	 "865马赛克",
	 "865绿",
	 "865红色",
}, nil, "反馈交流群:1063892179")
if SN==1 then
	 HS6()
end
if SN==2 then
	 HS7()
end
if SN==3 then
	 HS8()
end
if SN==4 then
	 HS9()
end
FX1=0
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1.12020508e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
	 end
	 gg.toast("865透视开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1.25414346e-19;1.7506772e-39;2.0;1.8425141e-39;1.74488844e-39::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("865马赛克开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("1,194,347,012;8,196;8,200;524,292;1,080,039,424", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200\n", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_DWORD)
	 gg.toast("865绿色开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults(gg.REGION_VIDEO)
	 gg.setRanges(262207)
	 gg.searchNumber("1,194,347,012;8,196;8,200;524,292;1,080,039,424\n", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_DWORD)
	 gg.toast("865红色开启成功")
	 gg.clearResults()
end

function e8()
Name = "流畅透视" 
gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-1.6815581571897805E-44, 0}, 
{4.925287423079891E21, -28}, 
{4.906834486556694E21, -4},
 }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-2.5774194758203506E-39, 0}, 
{6.087445810522475E21, -20}, 
{6.105893117546138E21, -12},
{5.626278334579643E21, -4}, 
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

Name = "流畅上色" 
gg.setRanges(1048576)
local dataType = 4
local tb1 = {
{8201, 0}, 
{1661173789, -28}, 
{1661239325, -12},
{1194344481, -4},
 }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 4
local tb1 = {
{8201, 0}, 
{738344998, -32}, 
{2494642, -24}, 
}
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 4
local tb1 = {
{8200, 0}, 
{1080033310, -12}, 
{2031640, -8},
{1080033304, -4}, 
}
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)

end


function e9()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.toast("马赛克")
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.toast("透视开启成功")
qmnb = {{["memory"] = 1048576},{["name"] = "绿色上色"},{["value"] = 8200, ["type"] = 4},{["lv"] = 539246599, ["offset"] = -12, ["type"] = 4},{["lv"] = 786441, ["offset"] = -8, ["type"] = 4},{["lv"] = 1661239308, ["offset"] = -4, ["type"] = 4},{["lv"] = 1194380045, ["offset"] = 4, ["type"] = 4},{["lv"] = 786443, ["offset"] = 8, ["type"] = 4},{["lv"] = 1661304844, ["offset"] = 12, ["type"] = 4},}
qmxg = {{["value"] = 6, ["offset"] = 0, ["type"] = 4},}
end

function e10()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3.15292154e-43;2.0:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT, false, 536870912, 0, -1)
gg.clearResults()
gg.toast("425偏移优化透视开启")

qmnb = {
{["memory"] = 1048576},
{["name"] = "人物绿色"},
{["value"] = 8204, ["type"] = 4},
{["lv"] = 538968075, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194380046, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 970, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 1048576},
{["name"] = "车辆红色"},
{["value"] = 8204, ["type"] = 4},
{["lv"] = 1077936128, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194380038, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 11, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("透视防闪")

qmnb = {
{["memory"] = 1048576},
{["name"] = "毒圈可见化"},
{["value"] = 8196, ["type"] = 4},
{["lv"] = 1194330372, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194346752, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 8195, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function LFK()
menu1 = gg.multiChoice({
'P60透视(1)',
'P60红色',
"自改上色",
"P70透色",
"P60透色(2)",
"通用防闪",
"P22透色",
"P23透色",
"P10透视",
"G90透视",
"G90白色",
"P20透色",
"P22/P35透",
"P35备用透",
"联发科人物透视",
"联发科人物透视防闪",
"联发科人物仿骁龙黄色",
"联发科人物仿骁龙绿色",
'返回上页'},
nil,'P60第一个用不了就用第二个')

if menu1 == nil then else
if menu1[1] == true then lfk1() end
if menu1[2] == true then lfk2() end
if menu1[3] == true then lfk3() end
if menu1[4] == true then lfk4() end
if menu1[5] == true then lfk5() end
if menu1[6] == true then lfk6() end
if menu1[7] == true then lfk7() end
if menu1[8] == true then lfk8() end
if menu1[9] == true then lfk9() end
if menu1[10] == true then lfk10() end
if menu1[11] == true then lfk11() end
if menu1[12] == true then lfk12() end
if menu1[13] == true then lfk13() end
if menu1[14] == true then lfk14() end
if menu1[15] == true then lfk15() end
if menu1[16] == true then lfk16() end
if menu1[17] == true then lfk17() end
if menu1[18] == true then lfk18() end
if menu1[19] == true then HOME() end
end
end
function lfk1()
gg.alert("需要冻结2")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("5.1567783e-43;3.5873241e-43;3.2229865e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end

function lfk2()
  qmnb = {
    {memory = 4},
    {name = "成功"},
    {value = 395976705, type = 4},
    {
      lv = 802824192,
      offset = 8,
      type = 4
    },
    {
      lv = 802824192,
      offset = 16,
      type = 4
    },
    {
      lv = 40,
      offset = 60,
      type = 4
    }
  }
  qmxg = {
    {
      value = 38,
      offset = 60,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function lfk3()
  a = gg.prompt({
    "联发科上色，随便改正负都可以"
  }, {
    [1] = 36
  }, {
    [1] = "number"
  })
  ab = "\"" .. a[1] .. "\""
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("802,824,192;48;937,041,920;40;736,370,688", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(ab, gg.TYPE_DWORD)
  gg.toast("上色")
end

function lfk4()
  	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.793662e-43F;1.4012985e-45F;0.5F;360.0F;0.5F;776.0F:121", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(20)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 	 end
	 gg.toast("透视联发科 P70")
	 gg.clearResults()
	 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("38", gg.TYPE_DWORD)
gg.toast("联发科红色上色，正在进行中")
	 end
function lfk5()
gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.8530377e-34;1.2960464e-38;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;5.1567783e-43;1.4012985e-45;2.8025969e-45;0.5:289", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    var = gg.getResults(20)
    gg.editAll("2", gg.TYPE_FLOAT)
    var = gg.getResults(100)
    var[1].value = 2
    var[1].freeze = true
    var[2].value = 2
    var[2].freeze = true
    gg.addListItems(var)
    gg.clearResults()
    gg.toast("联发科P60透视")
end	 	 

function lfk6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
   end  
function lfk7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = 80
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("君かげさがじくぇぉ透视开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("23;76;44;77;45;78:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("41",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
end 
function lfk8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
end 
function lfk9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("304D;328D;328D;64D;3,552D:100",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("64", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("61",gg.TYPE_DWORD)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value = '61'
t[i].freeze = true
end
gg.addListItems(t)
gg.toast("透视成功")
end
function lfk10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("透视已开启")
	 gg.clearResults()
end

function lfk11()

  gg.clearResults()

  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)

  gg.editAll("999", gg.TYPE_FLOAT)

  gg.toast("白色已经成功")

end

function lfk12()
  SN = gg.choice({
  "p20透视",
  "P20白色",
  "p20偏移透视",
  "p20偏移上色",
  "返回上页"},
nil, "小鹏制作国体变态辅助")
  if SN == 1 then
    lfk99()
  end
  if SN == 2 then
   lfk22()
  end
  if SN == 3 then
   lfk33()
  end
  if SN == 4 then
   lfk44()
  end
  if SN == 5 then
   HOME()
  end
  XGCK = -1
end



function lfk99()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6896617e-29;-5.5695588e-40;3.7615819e-37;2.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("p20马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.37548971176;1.3912569e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("P20透视开启成功")
end



function lfk22()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("983,045;1,073,742,860;1,661,141,005;8,200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_DWORD)
gg.toast("p20白色开启成功")
end



function lfk33()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1270885e-19;4.7223676e21;-5.5695588e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("5444开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.25098156929;1.8425099e-39;1.5612188e-39;-2.7610737e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.7610737e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("5444偏移透视开启成功")
end



function lfk44()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,661,501,445;1,661,141,005;8,200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("偏移上色开启成功")
end

function lfk13()
qmnb = {
{["memory"] = 4},
{["name"] = "测试"},
{["value"] = 0.94999998808, ["type"] = 16},
{["lv"] = 1.20000004768, ["offset"] = -40, ["type"] = 16},
{["lv"] = 3, ["offset"] = 320, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 320, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
	 gg.clearResults()
	 	 gg.clearResults()
	 gg.setRanges(QW)
	 gg.searchNumber("-294,802,802", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
xqmnb(qmnb)
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("29D;9D;56D::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
     end

function lfk14()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = 120
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function lfk15()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.30534994602F;0.56855899096F;0.00060000003F;12,000.0F;0.00003F;3.0F:517", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
	 end
gg.toast("联发科人物透视已成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-294,802,802", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
end

function lfk16()
for i=1,3 do
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
end
gg.toast("联发科人物透视防闪已成功")
end
	 function lfk17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("29D;9D;56D::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
  gg.editAll("31", gg.TYPE_DWORD)
	 gg.setRanges(4)
	 gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
  gg.editAll("67", gg.TYPE_DWORD)
    gg.toast("联发科人物仿骁龙黄色已成功")
	 end
	 function lfk18()
	gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("29D;9D;56D::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
  gg.editAll("33", gg.TYPE_DWORD)
	 gg.setRanges(4)
	 gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
  gg.editAll("65", gg.TYPE_DWORD)
    gg.toast("联发科人物仿骁龙绿色已成功")
	 end




function QL()
menu1 = gg.multiChoice({
"麒麟通用透色",
"麒麟659透️",
"麒麟659色",
"麒麟710透️",
"麒麟710红️",
"麒麟710绿️",
"麒麟六系列透视",
"麒麟通用红",
"麒麟通用绿",
"麒麟通用防闪",
"麒麟去除胸罩",
"麒麟通用靓仔色",
'返回上页'},
nil,'反馈交流群:1063892179')

if menu1 == nil then else
if menu1[1] == true then ql1() end
if menu1[2] == true then ql2() end
if menu1[3] == true then ql3() end
if menu1[4] == true then ql4() end
if menu1[5] == true then ql5() end
if menu1[6] == true then ql6() end
if menu1[7] == true then ql7() end
if menu1[8] == true then ql8() end
if menu1[9] == true then ql9() end
if menu1[10] == true then ql10() end
if menu1[11] == true then ql11() end
if menu1[12] == true then ql12() end
if menu1[13] == true then HOME() end
end
end




function ql1()
 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.9}})
	 end
	 gg.toast("️透视开启成功️")
	 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("16;32;40::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 26}})
	 end
	 gg.toast("上色开启成功️")
end


function ql2()
 qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 448, ["offset"] = 76, ["type"] = 4},
{["lv"] = 2, ["offset"] = 92, ["type"] = 4},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "透视[备用]"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 304, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = 312, ["type"] = 16},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function ql3()
qmnb = {
{["memory"] = 4},
{["name"] = "上色"},
{["value"] = 432, ["type"] = 4},
{["lv"] = 64, ["offset"] = -756, ["type"] = 4},
{["lv"] = 8, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = -756, ["type"] = 4},
}
xqmnb(qmnb)
end

function ql4()
gg.setRanges(4)
local dataType = 4
local Name ="透视"
local tb1 = {{801112064, 0}, {256, -872}, {112, -852}, {256, -836}, {112, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = {{8, -852}, {8, -172},}
SearchWrite(tb1, tb2, dataType)
end

function ql5()
gg.setRanges(4)
local dataType = 4
local tb1 = {{801112064, 0}, {256, -872}, {8, -852}, {256, -836}, {8, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = {{24, 4}, {26, -60},}
SearchWrite(tb1, tb2, dataType)
end


function ql6()
gg.setRanges(4)
local dataType = 4
local tb1 = {{801112064, 0}, {256, -872}, {8, -852}, {256, -836}, {8, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = { {26, 4}, {28, -60},}
SearchWrite(tb1, tb2, dataType)
end




function ql7()
qmnb = {
{["memory"] = 4},
{["name"] = "麒麟6系列透视"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 268, ["offset"] = 4, ["type"] = 16},
{["lv"] = 268, ["offset"] = 8, ["type"] = 16},
{["lv"] = 480, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 16, ["type"] = 16},
{["lv"] = 480, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1.00000011921, ["offset"] = 24, ["type"] = 16},   
{["lv"] = 1.00000011921, ["offset"] = 28, ["type"] = 16},   
{["lv"] = 2.569395e-10, ["offset"] = 64, ["type"] = 16},     
{["lv"] = 0.00008785885, ["offset"] = 68, ["type"] = 16},   
{["lv"] = 0.65723782778, ["offset"] = 72, ["type"] = 16},   
{["lv"] = 14.57730102539, ["offset"] = 76, ["type"] = 16},  
{["lv"] = 0.00041242075, ["offset"] = 80, ["type"] = 16},  
{["lv"] = 0.02505219355, ["offset"] = 84, ["type"] = 16},  
{["lv"] = 0.0000675781, ["offset"] = 88, ["type"] = 16},  
{["lv"] = 0.00782599207, ["offset"] = 92, ["type"] = 16},  
{["lv"] = 0.00782405864, ["offset"] = 96, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 100, ["type"] = 16},  
{["lv"] = 1.3813413e-16, ["offset"] = 112, ["type"] = 16},  
{["lv"] = 2.1466491e-41, ["offset"] = 116, ["type"] = 16},  
{["lv"] = 7.6824924e21, ["offset"] = 128, ["type"] = 16},  
{["lv"] = 0.00783725083, ["offset"] = 132, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 144, ["type"] = 16},  
{["lv"] = 1.7506422e-41, ["offset"] = 148, ["type"] = 16},  
{["lv"] = 0.0078125, ["offset"] = 156, ["type"] = 16},  
{["lv"] = 0.04523181915, ["offset"] = 160, ["type"] = 16},  
{["lv"] = 1.9202086e-7, ["offset"] = 164, ["type"] = 16},  
{["lv"] = 0.04523181915, ["offset"] = 168, ["type"] = 16},  
{["lv"] = 1.6606788e-41, ["offset"] = 172, ["type"] = 16},  
{["lv"] = 0.00782680511, ["offset"] = 200, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
end



function ql8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 26}})
  end
  gg.toast("上色开启成功")
  gg.clearResults()
end



function ql9()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 28}})
  end
  gg.toast("绿色开启成功")
  gg.clearResults()
end



function ql10()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
  end
  gg.toast("开启成功")
  gg.clearResults()
end







function ql11()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 24}})
  end
  gg.toast("去除胸罩开启成功")
  gg.clearResults()
end



function ql12()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16D;32D;40D::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16;32;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("26;36", gg.TYPE_DWORD)
gg.toast("靓仔黄色开启成功")
gg.clearResults()
end







function F()
    menu1 = gg.multiChoice({
    "内存防封1",
    "返回上一页"},
  nil,"如果封号说明脸黑")
  if menu1 == nil then else
    if menu1[1] == true then f1() end
    if menu1[2] == true then HOME() end
  end
  GLWW=-1
end




function f1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    for _FORV_3_ = 1, n do
      gg.addListItems({
        [1] = {
          address = jz[_FORV_3_].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
    end
    gg.toast("开启成功")
  else
    gg.toast("开启失败")
  end
end









function Exit()
print("小鹏制作，未经允许二改死妈！")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '欢迎下次使用'
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
