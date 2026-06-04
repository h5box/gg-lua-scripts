
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."   开启失败", false) return false end else gg.toast(Name.."   开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "笑颜提醒:开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function setvalue(a,b,c)
     gg.setValues({[1] = {address = a, flags = b, freeze = true, value =c}})

  end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function yiyz_yiyz_Main()
    menu = gg.choice({
    '防封区[大厅]',
    '基址区[大厅]',
    "透色区[全局]",
    "基址区[落地]",
    "变态区[落地]",
    '退出脚本'},
  2020,os.date'当前时间:%F %X\n本版本免费[防封不开必封]快猫咖啡 点个关注吧 交流群 876524390')
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then E() end
   if menu == 6 then Exit() end
  XGCK=-1
end

function A()
 gg.alert("请勿配其他插件或脚本，不然禁网")
   menu1 = gg.multiChoice({
    '大厅防封(1.8.1版)',
    "大厅防封(1.9版)",
    '防禁网',
      '返回上一页'},
  nil,os.date"当前时间:%F %X️️\n大厅防风开一个[防禁网必开]")
  if menu1 == nil then else
  if menu1[1] == true then a1() end
  if menu1[2] == true then a2() end
  if menu1[3] == true then a3() end
  if menu1[4] == true then HOME() end
  end
  GLWW=-1
end


function a1()
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("135682;144387", gg["TYPE_DWORD"])
gg["refineNumber"]("135682", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("134658;131586", gg["TYPE_DWORD"])
gg["refineNumber"]("134658", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("4096;135682", gg["TYPE_DWORD"])
gg["refineNumber"]("4096", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("157567", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("135938", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("135170", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("135426", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("135212", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("134914;262403", gg["TYPE_DWORD"])
gg["refineNumber"]("134914", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("133378;262403", gg["TYPE_DWORD"])
gg["refineNumber"]("133378", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("131330;133634", gg["TYPE_DWORD"])
gg["refineNumber"]("131330", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg["setVisible"](false)
gg.searchNumber("131842;132098", gg["TYPE_DWORD"])
gg["refineNumber"]("131842", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["setVisible"](false)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["setVisible"](false)
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("133634", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("131331", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg["setRanges"](gg["REGION_C_ALLOC"])
gg.searchNumber("132098", gg["TYPE_DWORD"])
gg["getResults"](50000)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg.toast("开启成功")
end

function a2()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("135682;144387", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("134658;131586", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("157567", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("135938", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("135170", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("135426", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("135212", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("134914;262403", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("133378;262403", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("131330;133634", gg.TYPE_DWORD)
gg.refineNumber("131330", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("131842;132098", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("133634", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("131331", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg.setRanges(gg.REGION_C_ALLOC)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("132098", gg.TYPE_DWORD)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.toast("1.9防开启成功")
end





function a3()
gg.clearResults()
 gg.setRanges(32) 
 gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(100) 
 gg.editAll('0', 16) gg.toast('新防禁网开启成功')
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")


end
function B()
gg.alert("如果出现枪口顶墙bug，请把平底锅扔了")
    menu1 = gg.multiChoice({
    '基质无后',
    '基址防抖',
    '基址聚点',
    '基址自瞄',
    "基址除草",
    "基址除雾",
    '返回上一页'},
  nil,os.date"当前时间:%F %X️️\n尽量少开点[无用功能别开]")
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
so = gg["getRangesList"]("libUE4.so")[1].start
    py = 19037220
    setvalue(so + py, 16, 0)
    so = gg["getRangesList"]("libUE4.so")[1].start
    py = 56004260
    setvalue(so + py, 16, 0)
    gg["toast"]("无后开启成功")
end


function b2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x346D530
setvalue(so+py,4,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1A45A48
setvalue(so+py,4,0)
gg.toast("防抖开启成功")
end

function b3()
so = gg["getRangesList"]("libUE4.so")[1].start
    py = 27281792
    setvalue(so + py, 16, 0)
    gg["toast"]("聚点开启成功")
end


function b4()
so = gg["getRangesList"]("libUE4.so")[1].start
    py = 15862756
    setvalue(so + py, 16, 0)
    so = gg["getRangesList"]("libUE4.so")[1].start
    py = 15856200
    setvalue(so + py, 16, -3.86856308E25)
    gg["toast"]("自瞄开启成功")
end
function b5()
so = gg["getRangesList"]("libUE4.so")[1].start
    py = 36231496
    setvalue(so + py, 16, 0)
    gg["toast"]("除草开启成功")
end
function b6()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A43A18
setvalue(so+py,4,0)
gg.toast("除雾开启成功")
end


function C()
  menu1 = gg.multiChoice({
    '骁龙通用透视',
    '骁龙通用上色',
    '麒麟980透视',
    '麒麟970透视',
    '骁龙通用红色',
    "骁龙通用黄色",
    '骁龙通用蓝色',
    '麒麟透视防闪',
    '返回上一页'},
  nil,os.date"当前时间:%F %X️️\n如果透视不闪，就不用开防闪")
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
  GLWW=-1
end
function c1()
qmnb = {
{["memory"] = 1048576},
{["name"] = "人物马赛克"},
{["value"] = -1.6815581571897805E-44, ["type"] = 16},
{["lv"] = 6.032090941602558E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 9.763687180029595E-41, ["offset"] = 8, ["type"] = 16},
{["lv"] = 4.925281230630404E21, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "人物透明化"},
{["value"] = -2.5774194758203506E-39, ["type"] = 16},
{["lv"] = 5.146656796213707E21, ["offset"] = 4, ["type"] = 16},
{["lv"] = 8.688050478813866E-44, ["offset"] = 8, ["type"] = 16},
{["lv"] = 1.3912518743591297E-19, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function c2()
qmnb = {
{["memory"] = 1048576},
{["name"] = "绿色"},
{["value"] = 8201, ["type"] = 4},
{["lv"] = 1194379814, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1966088, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end




function c3()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("112;256;128;2848;352;32;384;16;2848;336;16;272;332;352;368;384;388;392;396;400;404;468;784;734,003,200;64;16;4095;4095;4095;4095;4095;112:6477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100000)
     gg.editAll("4", gg.TYPE_DWORD)
	 gg.toast("980透视开启成功")
end
	 

function c4()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20000;750;0.0001;0.0005 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,328,550,408,728,725,571",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("-1,328,550,408,576,460,390",gg.TYPE_QWORD)
  gg.toast("麒麟970透视开启成功")
end

function c5()
qmnb = {
{["memory"] = 1048576},
{["name"] = "红色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1194344481, ["offset"] = 4, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 14, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function c6()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("黄色")
end

function c7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end
function c8()
 gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
  end
  gg.toast("麒麟防闪开启成功")
  gg.clearResults()

end

function D()
  menu1 = gg.multiChoice({
    '人物加速[开]',
    '人物加速[关]',
    '枪械瞬击',
    '小范围',
    '人物天线',
    '返回上一页'},
  nil,os.date"当前时间:%F %X️️\n娱乐[基本开了必封]")
  if menu1 == nil then else
    if menu1[1] == true then d1() end
    if menu1[2] == true then d2() end
    if menu1[3] == true then d3() end
    if menu1[4] == true then d4() end
    if menu1[5] == true then d5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end

function d1()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3BBD48C
setvalue(so+py,32,-1228926273126264269)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3538480
setvalue(so+py,32,-1228926273126264269)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1FFC0CC
setvalue(so+py,32,-1228926273126264269)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1918148
setvalue(so+py,32,-1228926273126264269)
so=gg.getRangesList('libUE4.so')[1].start
py=0x35143B8
setvalue(so+py,32,-1585267068834414592)
so=gg.getRangesList('libUE4.so')[1].start
py=0x350109C
setvalue(so+py,32,-1585267068834414592)
so=gg.getRangesList('libUE4.so')[1].start
py=0x13134A0
setvalue(so+py,32,-1228926273126264269)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1249B70
setvalue(so+py,32,-1228926273126264269)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3523518
setvalue(so+py,32,-1328550408578138112)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A05B0C
setvalue(so+py,32,-1585267068834414592)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C1CCBC
setvalue(so+py,32,-1296744153870237696)
gg.toast("加速开")
end


function d2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3BBD48C
setvalue(so+py,32,-1228926273201366461)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3538480
setvalue(so+py,32,-1228926273201366461)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1FFC0CC
setvalue(so+py,32,-1228926273201366461)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1918148
setvalue(so+py,32,-1228926273201366461)
so=gg.getRangesList('libUE4.so')[1].start
py=0x35143B8
setvalue(so+py,32,-1585267064848315881)
so=gg.getRangesList('libUE4.so')[1].start
py=0x350109C
setvalue(so+py,32,-1585267064848315881)
so=gg.getRangesList('libUE4.so')[1].start
py=0x13134A0
setvalue(so+py,32,-1228926273201366461)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1249B70
setvalue(so+py,32,-1228926273201366461)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3523518
setvalue(so+py,32,-1328550408728725571)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3A05B0C
setvalue(so+py,32,-1585267064848315881)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C1CCBC
setvalue(so+py,32,-1296744153870237696)
gg.toast("加速关")
end


function d3()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3568EA4
setvalue(so+py,4,0)
gg.toast("瞬击开启成功")
end


function d4()
so=gg.getRangesList('libUE4.so')[1].start
py=0x39053D8
setvalue(so+py,16,45)
gg.toast("范围开启成功")
end




function d5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.toast("天线开启成功")
  qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "人物天线开启"},
{["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function E()
  menu1 = gg.multiChoice({
    '全屏自瞄',
    '枪械伤害',
    '真伤范围',
    '测试1[无用]',
    '测试2[无用]',
    '返回上一页'},
  nil,os.date"当前时间:%F %X️️\n娱乐使用[基本开了必封]")
  if menu1 == nil then else
    if menu1[1] == true then e1() end
    if menu1[2] == true then e2() end
    if menu1[3] == true then e3() end
    if menu1[4] == true then e4() end
    if menu1[5] == true then e5() end
    if menu1[6] == true then HOME() end
  end
  GLWW=-1
end

function e1()
qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "全屏自瞄"
    },
    {
      value = 3.5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 2.20000004768,
      offset = -44,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.5,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.10000000149,
      offset = 24,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.5,
      offset = 28,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.80000001192,
      offset = 32,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.80000001192,
      offset = 36,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 200,
      offset = 52,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 20,
      offset = 56,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 100,
      offset = 60,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 99999,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      value = 99999,
      offset = 8,
      type = gg.TYPE_FLOAT
    },
    {
      value = 99999,
      offset = 12,
      type = gg.TYPE_FLOAT
    },
    {
      value = 99999,
      offset = 16,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.setRanges(16384)
  SearchWrite({
    {"360", "-12"},
    {"0.0001", "0"},
    {"1478828288", "84"}
  }, {
    {"99999", "0"}
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {3.5, 3296},
    {1, 3300},
    {1, 3304},
    {1, 3308},
    {1, 3312},
    {0.5, 3316},
    {0.5, 3324},
    {200, 3348},
    {20, 3352},
    {20, 3364}
  }, {
    {999999999, 3296},
    {999999999, 3300},
    {999999999, 3304},
    {999999999, 3308},
    {999999999, 3312},
    {999999999, 3316},
    {999999999, 3324},
    {999999999, 3348},
    {999999999, 3352},
    {999999999, 3364}
  }, 16)
  gg.setRanges(16384)
  SearchWrite({
    {-1.555965707145412E26, 0}
  }, {
    {-3.86856308E25, 92}
  }, 16, Name)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("180", gg.TYPE_FLOAT)
  gg.setRanges(16384)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全屏自瞄开启成功")
end


function e2()
Name = "M416伤害"
  gg.setRanges(32)
  SearchWrite({
    {88000, 0}
  }, {
    {35000, 0}
  }, 16)
  Name = "QBZ，SC伤害"
  gg.setRanges(32)
  SearchWrite({
    {87000, 0}
  }, {
    {35000, 0}
  }, 16)
  Name = "AKM，大盘鸡伤害"
  gg.setRanges(32)
  SearchWrite({
    {71500, 0}
  }, {
    {350000, 0}
  }, 16)
  Name = "M716伤害"
  gg.setRanges(32)
  SearchWrite({
    {68000, 0}
  }, {
    {35000, 0}
  }, 16)
end
function e3()
  qmnb = {
    {memory = 16384},
    {
      name = "头部范围"
    },
    {value = 1.4708926E-37, type = 16},
    {
      lv = 0.10000000149,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 80,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "真伤范围"
    },
    {
      value = 9.203507E-5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 25,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 30.5,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 400,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      value = 400,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end



function Exit()
  print("快猫咖啡请关注 交流群876524390")
  os.exit()
end



function HOME()
  lw=1
  yiyz_yiyz_Main()
end



cs = '依旧稳定'
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    yiyz_yiyz_Main()
  end
end









