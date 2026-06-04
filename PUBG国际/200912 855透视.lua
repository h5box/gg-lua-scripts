

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end if xgjg == true then 
end end end end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]
gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.." 开启失败")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.." 开启成功")else gg.toast(_on.." 开启失败")end end end
local app = {}
--设置搜索模式
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
function split(szFullString, szSeparator) 
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} 
while true do 
local nFindLastIndex = string.find
(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = 
string.sub(szFullString, nFindStartIndex, string.len
(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub
(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len
(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end 
function xgxc(szpy, qmxg) 
for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] 
xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
xgdj = qmxg[x]["freeze"] 
if xgdj == nil or xgdj == "" then 
gg.setValues({[1] 
= {address = xgpy, flags = xglx, value = xgsz}}) 
else 
gg.addListItems({[1] 
= {address = xgpy, flags = xglx, 
freeze = xgdj, value = xgsz}}) end 
xgsl = xgsl + 1 xgjg = true end end 
function xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
        sl = gg.getResults(999999) 
sz = gg.getResultCount() 
        xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] 
= {} pysz[1].address 
= sl[i].address + qmnb[v]["offset"] pysz[1].flags 
= qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd 
= split(pdpd, ";") tzszpd 
= szpd[1] pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end if 
pdjg == true then szpy 
= sl[i].address xgxc(szpy, qmxg) end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end
-------配置↑↑↑勿修改-------

function Main()
SN = gg.multiChoice({
"855透视",
"绿色",
"红色",
"退出脚本"
}, nil, "键来制作")
if SN == nil then else
if SN[1] == true then a() end
if SN[2] == true then b() end
if SN[3] == true then c() end
if SN[4] == true then Exit() end
end XGCK = -1 end


function a()
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

function b()
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

function c()
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






function Exit()
os.exit()
end
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




--交流群：604520568