mima="3477717943"
key=gg.prompt({'请输入账号，楠天QQ1279467156'},{[1]=" "},{[1]='number'});

--------
function a()
gg.alert("账号正确","请输入密码")
end
---------

function endd()
i=1
gg.alert("账号错误错误!!")
gg.setVisible(false)
while true do
i=i+99
gg.toast("警告,账号错误!!")
file:write("")--生成里面的文字
file:close()
gg.setVisible(false)
gg.processKill()
gg.setVisible(true)
end
end

if key==nil then gg.alert("账号错误","滚")
endd()
end

if key[1] == mima then
a()
else
endd()
end



mima="123456"
key=gg.prompt({'请输入密码，楠天QQ1279467156'},{[1]=" "},{[1]='number'});

--------
function a()
gg.alert("密码正确","请开始奔放")
end
---------

function endd()
i=1
gg.alert("密码错误!!")
gg.setVisible(false)
while true do
i=i+99
gg.toast("警告,密码错误!!")
file:write("")--生成里面的文字
file:close()
gg.setVisible(false)
gg.processKill()
gg.setVisible(true)
end
end

if key==nil then gg.alert("密码错误","滚")
endd()
end

if key[1] == mima then
a()
else
endd()
end


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


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main()
SN = gg.multiChoice({
    "防封",
    "无后",
    "自瞄",
    "范围",
    "子弹聚点",
    "子弹穿墙",
    "范围备用",
    "人物天线",
    "全局加速",
    "加速关闭",
    "站立路飞",
    "蹲下路飞",
    "俯卧路飞",
    "聚点关闭",
    "秒镜切枪",      
    "人物透视（不推荐）",              
    "退出脚本",
}, nil, "楠天牛逼，楠天QQ1279467156"..sj)
  if SN == nil then  else
  if SN[1] == true then a1() end
  if SN[2] == true then a2() end
  if SN[3] == true then a3() end
  if SN[4] == true then a4() end  
  if SN[5] == true then a5() end
  if SN[6] == true then a6() end
  if SN[7] == true then a7() end
  if SN[8] == true then a8() end
  if SN[9] == true then a9() end
  if SN[10] == true then a10() end
  if SN[11] == true then a11() end
  if SN[12] == true then a12() end
  if SN[13] == true then a13() end
  if SN[14] == true then a14() end
  if SN[15] == true then a15() end
  if SN[16] == true then a16() end
  if SN[17] == true then  Exit() end 
  end XGCK = -1 end
  
function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() == 0 then
gg.toast("防封开启失败")
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do

gg.addListItems({[1] = {address =jz[i].address+4,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+0,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+8,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+12,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+16,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+20,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address =jz[i].address+100,flags = 4,freeze = true,value = 131072}})
gg.addListItems({[1] = {address =jz[i].address-300,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address =jz[i].address-296,flags = 4,freeze = true,value = 0}})
end
gg.toast("内存防封开启成功")
end
  

gg.clearResults()
gg.setRanges(4)
gg.searchNumber('12547',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('12547',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD ,freeze = true,value = 0,}})
end
gg.toast('防封ONE')
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('131586',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('131586',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)	 jg=gg.getResults(1000)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD ,freeze = true,value = 0,}})
end
gg.toast('防封TWO')

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("16224", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("67,177,356", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.isVisible(false)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  
  gg.toast('防封')
end

function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-5.72953628e27;-2.78698203e28;-3.74440972e28;9.00720355e15', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2.78698203e28", gg.TYPE_FLOAT)
gg.getResults(4)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪无后开启成功")
gg.clearResults()
end

function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("0.24500000477", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("俯卧路飞")
end

function a12()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("0.97000002861", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("12", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹲下路飞")
end

function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("1.47000002861", gg.TYPE_FLOAT)
  gg.refineNumber("1.47000002861", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("站立路飞")
end

function a7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-5.76566947e27F;-5.76808791e27F;-1.23824227e28F;-6.15254757e27::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.76808791e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("25％")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('0.22',gg.TYPE_FLOAT)
gg.getResults(510)
gg.editAll('6.5',gg.TYPE_FLOAT)
gg.toast('50％')
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('0.24',gg.TYPE_FLOAT)
gg.getResults(510)
gg.editAll('6.5',gg.TYPE_FLOAT)
gg.toast('75％')
gg.toast('100％')
end

function a6()
gg.clearResults()
gg.setRanges(16)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast('子弹穿墙')
end

function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
  gg.searchNumber("1.0193~1.0194", gg.TYPE_FLOAT)
  gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("人物天线")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-8.34162127e22;-5.45618446e27;-1.67604184e26', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5.45618446e27', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("子弹聚点开启成功")
end

function a14()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-8.34162127e22;0;-1.67604184e26', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll('-5.45618446e27', gg.TYPE_FLOAT)
gg.toast("子弹聚点关闭成功")
end

function a15()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.78698203e28F;-3.74440972e28F;-2.9203723e-31F;-1.14072176e-33F:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-3.74440972e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("秒切枪和秒开镜开启成功")
end


function a3()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="自瞄"--功能名称
    local tb1 = {{1055286886,0x0}, {1059481190,0x18},{1058642330,0x48}}  --16进制
    local tb2 = {{1071225242,0x0},{0,0x18},{1050253722,0x30},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
end


function a4()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name="范围"--功能名称
    local tb1 = {{1041462460,0x0}, {12,-0x50},{193,-0x4C},{-1138501878,0xC}}  --16进制
    local tb2 = {{1077936128,0x0},}
    local dataType = gg.TYPE_DWORD
    SearchWrite(tb1, tb2, dataType,Name)
end


function a9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.28000020981", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll('5', gg.TYPE_FLOAT)
gg.toast("全局加速")
gg.clearResults()
end

function a10()
 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(400)
 gg.editAll('4.28000020981', gg.TYPE_FLOAT)
 gg.toast("关闭成功")
end

function a16()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('338,558,000~338,558,990', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll('1,999,255,999', gg.TYPE_DWORD)
gg.toast("透视开启成功")
gg.clearResults()
end

function Exit()
print(sj)
print("exit")
os.exit()
end
cs = "test"

while true do
sj = os.date("测试：台服，进入主页开防封，建议开自瞄和秒开镜")
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end


