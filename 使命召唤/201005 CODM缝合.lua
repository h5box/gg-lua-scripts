function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end if xgjg == true then 
end end end end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]
gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.." 开启失败")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.." 开启成功")else gg.toast(_on.." 开启失败")end end end
local app = {}
app.memorySearchMode = function(MEMORY) 
if (MEMORY == 2) then
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP) 
end 
if (MEMORY == -1) then
gg.setRanges(gg.REGION_VIDEO) 
end 
if (MEMORY == -2) then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_CODE_SYS)         
end 
if (MEMORY == 0) then 
gg.setRanges(gg.REGION_ANONYMOUS)
end        
end
function checkType(dataType)	local type 
if dataType =="D" or dataType == "D" then 
type = gg.TYPE_DWORD 
end 
if dataType == "F" then 
type = gg.TYPE_FLOAT 
end 
if dataType == "E" then 
type = gg.TYPE_DOUBLE 
end 
if dataType == "B" or dataType == "B" then 
type =  gg.TYPE_BYTE 
end 
if dataType == "W" or dataType == "W" then 
type = gg.TYPE_WORD os.exit() 
end	
return type 
end
app.memorySearch = function(pkgName, isNewSearch, address, tb, dataType)	
gg.clearResults() 
gg.setVisible(false)	local isSucess = gg.searchNumber(tb[1]["lv"], checkType(dataType), false, gg.SIGN_EQUAL, address, -1);	local t = gg.getResults(9999);	local tab = {}	local data = {}	for i=1, #t do	for j=2, #tb do	tab[j] = {} tab[j].address = t[i].address + tb[j]["offset"] if(tb[j]["type"] == nil) then tab[j].flags = t[i].flags else tab[j].flags = checkType(tb[j]["type"]) end tab = gg.getValues(tab)	if (tab[j].value == tb[j]["lv"]) then data[#data+1] = t[i].address end end	end gg.clearResults() return isSucess, data end app.memoryWrite = function(pkgName, address, value, dataType) gg.setVisible(false)	local t = {}	t[1] ={}	t[1].address = address	t[1].flags = checkType(dataType)	t[1].value = value	return gg.setValues(t) end
GG = {Read,Write} 
function GG.ReadWrite(Read,Writw)TZ = {} dataTZ = Read[1] offset = dataTZ[2] for i=1,#Read do TZA = Read[i] LV = {["lv"] = TZA[1],["offset"] = TZA[2]-offset} table.insert(TZ, i, LV) end app.memorySearchMode(Memory) isSuuess,TUG = app.memorySearch(pkgName, true, 0, TZ, Type) if TUG[1] == nil then  else for ii=1,#TUG do for iii=1,#Write do dataxg = Write[iii] value = dataxg[1] Deviant = dataxg[2] app.memoryWrite(pkgName,TUG[ii]+Deviant-offset,value,Type) end end gg.toast(ID.. "开启成功") end end
function SearchWrite(Search, Write, Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1], Type)
local t = gg.getResults(9999)
gg.clearResults()
if t ~= nil then
local r = {}
for j=2, #Search do
for i, v in ipairs(t) do
r[i] = {}
r[i].address = v.address + Search[j][2] - Search[1][2]
r[i].flags = v.flags
end
r = gg.getValues(r)
for i = #t, 1, -1 do
if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
table.remove(t, i)
table.remove(r, i)
end
end       
end
--写入数据
local r = {}
for i=1, #t do
for j=1, #Write do
r[#r+1] = {}
r[#r].address = t[i].address + Write[j][2] - Search[1][2]
r[#r].flags = t[i].flags
r[#r].value = Write[j][1]
r[#r].freeze = true--冻结的话修改后面加false
end
end
gg.setValues(r)
end
end
--gg.addListItems(r)
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
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

function SearchWrite2(Search, Write, Type, Name)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          gg.toast(Name.."开启成功！已修改"..#t.."条数据")
          gg.addListItems(t)
        else
            gg.toast(Name.."开启失败", false)
            return false
        end
    else
        gg.toast(Name.."开启失败")
        return false
    end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main()
SN = gg.multiChoice({
    "全枪无后",
    "聚点(多人)",
    "透视（生存）",
    "透视（多人）",
    "自瞄",
    "范围（新）",
    "范围（3倍）",
    "范围（5倍）",
    "范围（10倍）",
    "秒开镜/切枪",
    "全局加速（1档）",
    "全局加速（2档）",
    "持刀加速",
    "撞墙上天（多人）",
    "子弹穿墙",
    "蹲下路飞",
    "关闭加速",
    "M4无后秒换弹",
    "高跳（多人）",
    "高跳（生存）",
    "退出脚本",
}, nil, "韩服裸奔，其他服自己找防封"..sj)
  if SN == nil then  else
  if SN[1] == true then wh() end
  if SN[2] == true then jd() end
  if SN[3] == true then ts1() end
  if SN[4] == true then ts2() end  
  if SN[5] == true then zm2() end
  if SN[6] == true then fw1() end
  if SN[7] == true then fw2() end
  if SN[8] == true then fw3() end
  if SN[9] == true then fw4() end
  if SN[10] == true then mk() end
  if SN[11] == true then js1() end
  if SN[12] == true then js2() end
  if SN[13] == true then djs() end
  if SN[14] == true then ft() end
  if SN[15] == true then cq() end
  if SN[16] == true then lf() end
  if SN[17] == true then gjs() end
  if SN[18] == true then m4wh() end
  if SN[19] == true then gt() end
  if SN[20] == true then gt2() end
  if SN[21] == true then  Exit() end 
  end XGCK = -1 end
  

function wh()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("-5.72949909e27F;-2.78698203e28F;-3.74440972e28F:9", gg.TYPE_FLOAT)
	gg.refineNumber("-2.78698203e28", gg.TYPE_FLOAT)
	gg.getResults(999)
	gg.editAll("0", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.toast("全枪无后")
end

function m4wh()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="无后"--功能名称
    local tb1 = {{1040724263,0x0}, {1148846080,-0x28},{1109393408,-0x24},{240,0x1C}}  --16进制
    local tb2 = {{1008981770,0x54},{0,0x170},}
    local dataType = gg.TYPE_DWORD
    SearchWrite2(tb1, tb2, dataType,Name)
end

function jd()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("-5.45618446e27F;-7.58411349e27F:17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
	gg.searchNumber("-5.45618446e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(10)
	gg.editAll("0",gg.TYPE_FLOAT)
	gg.toast("全枪聚点开启成功")
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("-1.30222878e21F;-5.55351105e24F;-2.25091691e26F:17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
	gg.searchNumber("-5.55351105e24", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(10)
	gg.editAll("0",gg.TYPE_FLOAT)
	gg.toast("死亡十字开启成功")
end

function ts1()
	gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('338,558,980~338,558,990', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(10)
	gg.editAll('-481,296,383', gg.TYPE_DWORD)
	gg.toast("透视开启成功")
end

function ts2()
	gg.clearResults()
	gg.setRanges(gg.REGION_VIDEO)
	gg.searchNumber('338,558,000~338,558,990', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(200)
	gg.editAll('1,999,255,999', gg.TYPE_DWORD)
	gg.toast("透视开启成功")
	gg.clearResults()
end

--新版
function zm1()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="自瞄"--功能名称
    local tb1 = {{1055286886,0x0}, {1059481190,0x18},{1058642330,0x48}}  --16进制
    local tb2 = {{1071225242,0x0},{0,0x18},{1050253722,0x30},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
end

--旧版
function zm2()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="自瞄"--功能名称
    local tb1 = {{1055286886,0x0}, {1059481190,0x18},{1058642330,0x48}}  --16进制
    local tb2 = {{1071225242,0x0},{0,0x18},{1050253722,0x30},}
    local dataType = gg.TYPE_DWORD
    SearchWrite2(tb1, tb2, dataType,Name)
end

function fw1()
	gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber("-5.76566947e27F;-5.76808791e27F;-1.23824227e28F;-6.15254757e27::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
	gg.searchNumber("-5.76808791e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(10)
	gg.editAll("0",gg.TYPE_FLOAT)
	gg.toast("范围ONE")
	gg.clearResults()
	gg.setRanges(32)
	gg.searchNumber('0.22',gg.TYPE_FLOAT)
	gg.getResults(510)
	gg.editAll('6.5',gg.TYPE_FLOAT)
	gg.toast('范围TWO')
	gg.clearResults()
	gg.setRanges(32)
	gg.searchNumber('0.24',gg.TYPE_FLOAT)
	gg.getResults(510)
	gg.editAll('6.5',gg.TYPE_FLOAT)
	gg.toast('范围THREE')
end

function fw2()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="范围"--功能名称
    local tb1 = {{1041462460,0x0}, {12,-0x50},{193,-0x4C},{-1138501878,0xC}}  --16进制
    local tb2 = {{1077936128,0x0},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
end

function fw3()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="范围"--功能名称
    local tb1 = {{1041462460,0x0}, {12,-0x50},{193,-0x4C},{-1138501878,0xC}}  --16进制
    local tb2 = {{1084227584,0x0},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
end

function fw4()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="范围"--功能名称
    local tb1 = {{1041462460,0x0}, {12,-0x50},{193,-0x4C},{-1138501878,0xC}}  --16进制
    local tb2 = {{1092616192,0x0},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
end

function mk()
	gg.clearResults()
	gg.setRanges(gg.REGION_C_DATA)
	gg.searchNumber("-2.78698203e28F;-3.74440972e28F;-2.9203723e-31F;-1.14072176e-33F:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
	gg.searchNumber("-3.74440972e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(10)
	gg.editAll("0",gg.TYPE_FLOAT)
	gg.toast("秒切枪和秒开镜开启成功")
end

function js1()
	gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("4.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(400)
	gg.editAll('5', gg.TYPE_FLOAT)
	gg.toast("全局加速")
	gg.clearResults()
end

function js2()
	gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("4.28000020981;4.28000020981::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(400)
	gg.editAll('7', gg.TYPE_FLOAT)
	gg.toast("全局加速开启成功")
	gg.clearResults()
end

function djs()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("1.1115000248", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("2.85", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("持刀加速")
end

function ft()
	gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber('0.4999999702F;0.05000000075F;0.25F::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber('0.25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(10)
	gg.editAll('40', gg.TYPE_FLOAT)
	gg.toast("撞墙飞天开启成功")
	gg.clearResults()
end

function cq()
	gg.clearResults()
	gg.setRanges(16)
	gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
	gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
	gg.getResults(510)
	gg.editAll('0',gg.TYPE_FLOAT)
	gg.toast('子弹穿墙')
end

function lf()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("0.97000002861", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹲下路飞")
end

function gt()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("7.5;0.8::5", gg.TYPE_FLOAT)
	 gg.refineNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("7.5;4::5", gg.TYPE_FLOAT)
	 gg.refineNumber("7.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("人物高跳")
end

function gt2()
	gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("10;1;1.5;0.3::30", gg.TYPE_FLOAT)
	gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(1000)
	gg.editAll("3", gg.TYPE_FLOAT)
	gg.clearResults()
	gg.toast("人物高跳开启成功")
	gg.clearResults()
end


function gjs()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(400)
	 gg.editAll('4.28000020981', gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
end

function Exit()
	print(sj)
	print("exit")
	os.exit()
end

cs = "test"

while true do
sj = os.date("测试：台服，国际服，韩服")
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end


