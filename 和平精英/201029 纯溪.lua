function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
----------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

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
    
           gg.addListItems(t)
        else
            gg.toast("无数据", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end
----------------------------------------------------------------------------------------------------
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main()
SN = gg.choice({
"防封<菜单>",
"透视<菜单>",
"变态<菜单>",
"退出脚本"},
nil,"纯溪脚本1.0版本")

 if SN == 1 then
    aa1()
  end
  if SN == 2 then
   aa2()
  end
  if SN == 3 then
   aa3()
  end
  if SN == 4 then
   Exit()
  end
  XGCK = -1
end


function aa1()
SN1 = gg.choice({
"防封",
"优化",
"返回主页"},
nil,"纯溪牛逼")

if SN1 == 1 then z1() end

if SN1 == 2 then z2() end

if SN1 == 3 then Main() end

end


function aa2()
SN2 = gg.choice({
"660/835透色",
"845/855透色",
"安卓十透色",
"返回主页"},
nil,"Perspective coloring recommended birth island opening ")

if SN2 == 1 then n1() end

if SN2 == 2 then n2() end

if SN2 == 3 then n3() end

if SN2 == 4 then Main() end

end


function aa3()
SN3 = gg.choice({
"无抖-聚范",
"自瞄-天线",
"跳伞-加速",
"微型-加速",
"美化-全套",
"返回主页"},
nil,"Can be used with their own perverted script  ")

if SN3 == 1 then x1() end

if SN3 == 2 then x2() end

if SN3 == 3 then x3() end

if SN3 == 4 then x4() end

if SN3 == 5 then x5() end

if SN3 == 6 then Main() end

end

-----这是第1个分类
function z1()

gg.clearResults()
gg.setRanges(4)
gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil





gg.clearResults()
gg.setRanges(16)
gg.searchNumber("16384;16384;16384;16384;16384::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "70089"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil


gg.clearResults()
gg.setRanges(16)
gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "70089"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.alert("正在加载 请等待1分钟 期间请勿切屏 请勿返回桌面")
gg.sleep(60000)
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("70089;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("70089;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16384"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

end

function z2()
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("70089;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("70089;65538", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "16384"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

end





---------这是第2个分类

function n1()

qmnb = {
    {memory = 1048576},
    {
      name = "稍等"
    },
    {value = 4241, type = 2},
    {
      lv = 2048,
      offset = -100,
      type = 2
    },
    {
      lv = 4128,
      offset = -96,
      type = 2
    }
  }
  qmxg = {
    {
      value = -1,
      offset = 0,
      type = 2
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 1048576},
    {
      name = "透视"
    },
    {value = 4288, type = 2},
    {
      lv = 7,
      offset = -8,
      type = 2
    }
  }
  qmxg = {
    {
      value = -1,
      offset = 0,
      type = 2
    }
  }
  xqmnb(qmnb)
  	qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8201, ["type"] = 4},
{["lv"] = 8200, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1194344460, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194344462, ["offset"] = 4, ["type"] = 4},
{["lv"] = 8202, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function n2()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("7.1054291e-15;2.25054979324;1.8945555e-40;-1.8368781e-40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功️")
else gg.toast("失败")
end
gg.clearResults()
gg.searchNumber("7.3468957e-40;6.1058807e21;1.3775394e-39;-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
else gg.toast("失败")
gg.clearResults()
end
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("7.1054291e-15;2.25054979324;1.8945555e-40;-1.8368781e-40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功️")
else gg.toast("失败")
end
gg.clearResults()
gg.searchNumber("7.3468957e-40;6.1058807e21;1.3775394e-39;-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
else gg.toast("失败")
gg.clearResults()
end
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1080576261, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194346770, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.6498026e-40;5.5681155e-40;3.7313215e-40;5.5681716e-40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("5.5681716e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("110",0xFFFFFFFFFFFFF)
gg.getResults(10)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("防区防闪修改成功")
else gg.toast("防区防闪开启失败")
end
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.7223665e21;4.7961574e21;5.8013756e-42;2.2960275e-41::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("2.2960275e-41", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchAddress("4F8",0xFFFFFFFFFFFFF)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("山体防闪开启成功")
else gg.toast("山体防闪开启失败")
gg.clearResults()
end

end

function n3()

gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("7.1054291e-15;2.25054979324;1.8945555e-40;-1.8368781e-40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功️")
else gg.toast("失败")
end
gg.clearResults()
gg.searchNumber("7.3468957e-40;6.1058807e21;1.3775394e-39;-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
else gg.toast("失败")
gg.clearResults()
end
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("7.1054291e-15;2.25054979324;1.8945555e-40;-1.8368781e-40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功️")
else gg.toast("失败")
end
gg.clearResults()
gg.searchNumber("7.3468957e-40;6.1058807e21;1.3775394e-39;-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("8888", gg.TYPE_FLOAT)
gg.toast("855透视开启成功")
else gg.toast("失败")
gg.clearResults()
end
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1080576261, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194346770, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.6498026e-40;5.5681155e-40;3.7313215e-40;5.5681716e-40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("5.5681716e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("110",0xFFFFFFFFFFFFF)
gg.getResults(10)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("防区防闪修改成功")
else gg.toast("防区防闪开启失败")
end
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.7223665e21;4.7961574e21;5.8013756e-42;2.2960275e-41::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultsCount()~=0 then
gg.searchNumber("2.2960275e-41", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchAddress("4F8",0xFFFFFFFFFFFFF)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("山体防闪开启成功")
else gg.toast("山体防闪开启失败")
gg.clearResults()
end

end


--------这是第3个分类
function x1()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("枪口防抖部")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖部署")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪无后部署")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("枪口聚点部署")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围部署 "},
{["value"] = 35, ["type"] = 16},
{["lv"] = 33, ["offset"] = 4, ["type"] = 16},
{["lv"] = 62, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 190, ["offset"] = 0, ["type"] = 16},
{["value"] = 190, ["offset"] = 4, ["type"] = 16},
{["value"] = 190, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end
function x2()


gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄部署")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("全图自瞄部署")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("全图自瞄部署 ")
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
 gg.toast("天线开启成功")
end

function x3()

qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "跳伞加速部署 "},
{["value"] = 3000.0, ["type"] = 16},
{["lv"] = 5000.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1024.0, ["offset"] = 8, ["type"] = 16},}
qmxg = {
{["value"] = 999999.0, ["offset"] = 0, ["type"] = 16},
{["value"] = 999999.0, ["offset"] = 4, ["type"] = 16},
{["value"] = 999999.0, ["offset"] = 8, ["type"] = 16},}
xqmnb(qmnb)
end
function x4() 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1.138", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1526231e27;-1.0070975e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-6.1526231e27',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('-5',gg.TYPE_FLOAT)
gg.toast("微速部署 ")

end

function x5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("401357", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("403754", gg.TYPE_DWORD)
gg.toast("美化部署")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("330600100;3306001::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("330600100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("330600600",gg.TYPE_DWORD)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("330600200;3306002::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("330600200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("330600600",gg.TYPE_DWORD)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("330600300;3306003::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("330600300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("330600600",gg.TYPE_DWORD)
gg.toast("玛莎美化 ")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,300,600;103,006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,300,600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("103,006,013", gg.TYPE_DWORD)
gg.toast("Mini14")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10800400;108004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10800400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("108004029", gg.TYPE_DWORD)
gg.toast("平底锅")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101004025", gg.TYPE_DWORD)
gg.toast("M416")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100800;101008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101008016", gg.TYPE_DWORD)
gg.toast("M762")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100600;101006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101,006,011", gg.TYPE_DWORD)
gg.toast("AUG")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101002007", gg.TYPE_DWORD)
gg.toast("M16A4")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101001025", gg.TYPE_DWORD)
gg.toast("AK47")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100500;101005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101005011", gg.TYPE_DWORD)
gg.toast("GROZA")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101003024", gg.TYPE_DWORD)
gg.toast("SCAR-L")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,100,700;101,007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101007003", gg.TYPE_DWORD)
gg.toast("QBZ")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,100,900;101,009", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("101009002", gg.TYPE_DWORD)
gg.toast("Mk47")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,101,000;101,010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,101,000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,101,0004", gg.TYPE_DWORD)
gg.toast("G36C")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,100;102,001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,1013", gg.TYPE_DWORD)
gg.toast("UZI")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,200;102,002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,2019", gg.TYPE_DWORD)
gg.toast("UMP45")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,300;102,003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,3008", gg.TYPE_DWORD)
gg.toast("Vector")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,200,500;102,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,200,500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,200,5001", gg.TYPE_DWORD)
gg.toast("野牛")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,300,400;103,004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,300,400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,300,4010", gg.TYPE_DWORD)
gg.toast("SKS")
gg.setRanges(32)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10,300,500;103,005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10,300,500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10,300,5007", gg.TYPE_DWORD)
gg.toast("VSS")

end



function Exit()
print('纯溪')
os.exit() end
cs = '神'
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

            
