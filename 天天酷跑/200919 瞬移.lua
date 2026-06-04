function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {}  local base = Search[1][2]  if (count > 0) then for i, v in ipairs(result) do v.isUseful = true  end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false   end end end  for i, v in ipairs(result) do  if (v.isUseful) then   data[#data+1] = v.address  end  end  if (#data > 0) then  local t = {}  local base = Search[1][2]  for i=1, #data do  for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset  t[#t].flags = Type t[#t].value = w[1] if (w[3] == false) then local item = {}  item[#item+1] = t[#t] item[#item]. freeze = false gg.addListItems(item) if (w[4] == true) then local item = {}  item[#item+1] = t[#t] item[#item]. freeze = true gg.addListItems(item) end end end end gg.setValues(t) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."开启失败", false) return false end else gg.toast(Name.."开启失败", false) return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"],qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败")  else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

function Main()
SN = gg.multiChoice({
    "金蝉子",
    "孙悟空",
    "小音",
    "蝶语",
    "秦始皇",
    "退出",
 }, nil)
  if SN == nil then else
if SN[1] == true then d1() end
if SN[2] == true then d2() end
if SN[3] == true then d3() end
if SN[4] == true then d4() end
if SN[5] == true then d5() end
if SN[6] == true then Exit() end 
  end 
   XGCK = -1 
end

function d1()--C9F1F
so=gg.getRangesList('libGameApp.so')[1].start
py=0x1246EC0
setvalue(so+py,gg.TYPE_FLOAT,0.999)
gg.toast("金蝉子瞬移")
end

function d2()--C9F17
so=gg.getRangesList('libGameApp.so')[1].start
py=0x123EE48
setvalue(so+py,gg.TYPE_FLOAT,0.999)
gg.toast("孙悟空瞬移")
end

function d3()--C9F23
so=gg.getRangesList('libGameApp.so')[1].start
py=0x124A1C8
setvalue(so+py,gg.TYPE_FLOAT,0.999)
gg.toast("小音瞬移")
end

function d4()--C9F1B
so=gg.getRangesList('libGameApp.so')[1].start
py=0x1242AF4
setvalue(so+py,gg.TYPE_FLOAT,0.999)
gg.toast("蝶语瞬移")
end

function d5()--C9E8E
so=gg.getRangesList('libGameApp.so')[1].start
py=0x12464AC
setvalue(so+py,gg.TYPE_FLOAT,0.999)
gg.toast("秦始皇瞬移")
end

function Exit()
os.exit() end


while true do
if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false) end
  gg.clearResults()
  if XGCK == 1 then
    Main() end end
