---------------------------请勿修改-------------------------------
function split(szFullString, szSeparator)   local nFindStartIndex = 1   local nSplitIndex = 1   local nSplitArray = {}   while true do   local nFindLastIndex = string.find  (szFullString, szSeparator, nFindStartIndex)   if not nFindLastIndex then   nSplitArray[nSplitIndex] =   string.sub(szFullString, nFindStartIndex, string.len  (szFullString))   break end   nSplitArray[nSplitIndex] = string.sub  (szFullString, nFindStartIndex, nFindLastIndex - 1)   nFindStartIndex = nFindLastIndex + string.len  (szSeparator)   nSplitIndex = nSplitIndex + 1 end return   nSplitArray end   function xgxc(szpy, qmxg)   for x = 1, #(qmxg) do   xgpy = szpy + qmxg[x]["offset"]   xglx = qmxg[x]["type"]   xgsz = qmxg[x]["value"]   xgdj = qmxg[x]["freeze"]   if xgdj == nil or xgdj == "" then   gg.setValues({[1]   = {address = xgpy, flags = xglx, value = xgsz}})   else   gg.addListItems({[1]   = {address = xgpy, flags = xglx,   freeze = xgdj, value = xgsz}}) end   xgsl = xgsl + 1 xgjg = true end end   function xqmnb(qmnb)   gg.clearResults()   gg.setRanges(qmnb[1]["memory"])   gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])   if gg.getResultCount() == 0 then   gg.toast(qmnb[2]["name"] .. "开启失败")   else           sl = gg.getResults(999999)   sz = gg.getResultCount()           xgsl = 0 if sz > 999999 then   sz = 999999 end for i = 1, sz do   pdsz = true for v = 4, #(qmnb) do if   pdsz == true then   pysz = {} pysz[1]   = {} pysz[1].address   = sl[i].address + qmnb[v]["offset"] pysz[1].flags   = qmnb[v]["type"]   szpy = gg.getValues(pysz)   pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd   = split(pdpd, ";") tzszpd   = szpd[1] pyszpd = szpd[2]   if tzszpd == pyszpd then   pdjg = true pdsz = true else   pdjg = false pdsz = false end end end if   pdjg == true then szpy   = sl[i].address xgxc(szpy, qmxg) end end   if xgjg == true then   gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")   else   gg.toast(qmnb[2]["name"] .. "开启失败")   end   end   end   end  function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end AA="模板作者:黑弩" function SearchWrite(Search, Write, Type) gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()   local data = {}     local base = Search[1][2]        if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end               for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end                        tmp = gg.getValues(tmp)                         for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                     result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("✨开启成功✨"..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("", false) return false end else gg.toast("") return false end end
----------------支持仿xs写法和指针写法-------------------
--[[

支持冻结，支持范围搜索

支持多种仿xs写法

范围搜索与普通写法一样

指针冻结在修改的那一行添加,true即可

仿xs模板：
不冻结
qmnb = {
{["memory"] = 内存范围},
{["name"] = "功能名词"},
{["value"] = 主特征码, ["type"] = 数据类型},
{["lv"] = 1副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 2副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 3副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
}
qmxg = {
{["value"] = 修改数值, ["offset"] = 偏移量, ["type"] = 数据类型},
}
xqmnb(qmnb)


qmnb = {
{["memory"] = 内存范围},
{["name"] = "功能名词"},
{["value"] = 主特征码, ["type"] = 数据类型},
{["lv"] = 1副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 2副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
{["lv"] = 3副特征码, ["offset"] = 偏移量, ["type"] = 数据类型},
}
qmxg = {
{["value"] = 修改数值, ["offset"] = 偏移量, ["type"] = 数据类型, ["freeze"] = true},
}
xqmnb(qmnb)

--
Jh内存:	['REGION_JAVA_HEAP'] = 2 
Ch内存:	['REGION_C_HEAP'] = 1 
Ca内存:	['REGION_C_ALLOC'] = 4 
Cd内存:	['REGION_C_DATA'] = 8 
Cb内存:	['REGION_C_BSS'] = 16 
Ps内存:['REGION_PPSSPP'] = 262144 
A内存:	['REGION_ANONYMOUS'] = 32 
J内存:	['REGION_JAVA'] = 65536 
S内存:	['REGION_STACK'] = 64 
As内存:	['REGION_ASHMEM'] = 524288 
V内存:	['REGION_VIDEO'] = 1048576 
O内存	['REGION_OTHER'] = -2080896 
B内存:	['REGION_BAD'] = 131072 
Xa内存:	['REGION_CODE_APP'] = 16384 
Xs内存:	['REGION_CODE_SYS'] = 32768 
A类搜:	['TYPE_AUTO'] = 127 
B类搜:	['TYPE_BYTE'] = 1 
E类搜:	['TYPE_DOUBLE'] = 64 
D类搜:	['TYPE_DWORD'] = 4 
F类搜:	['TYPE_FLOAT'] = 16 
Q类搜:	['TYPE_QWORD'] = 32 
W类搜:	['TYPE_WORD'] = 2 
X类搜:	['TYPE_XOR'] = 8 
]]

gg.alert(os.date("当前时间为%Y年-%m月-%d日 %H时:%M分:%S秒"))

function Main()
  SN = gg.multiChoice({--不够自己加
  "自定义上帝视角",
 }, nil, "初始视角高度为8随便你改！交流群982876022")--利用\n来换行
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
end
  XGCK = 2
end



function a()
local a = gg.prompt({"初始视角高度为8随便你改！交流群982876022"
 }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1]
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("50;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll(a, gg.TYPE_FLOAT)
gg.toast("开启成功")
   end
end



function b()

end



function c()

end


function d()

end



function e()

end


function f()

end

function g()

end


function k()

end
 


function l()

end



function m()

end



function n()

end



function o()

end 

function Exit()
print("交流群1056807011")
os.exit()
end
cs = ""



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