function Re_(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](999999) sz = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({230,157,161,230,149,176,230,141,174})) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x][Re_({97,100,100,114,101,115,115})] xglx = Loading1[x][Re_({102,108,97,103,115})] xgsz = Loading1[x][Re_({118,97,108,117,101})] xgdj = Loading1[x][Re_({102,114,101,101,122,101})] if xgdj == nil or xgdj == Re_({}) then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))]({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.setRanges(Loading[1][Re_({109,101,109,111,114,121})]) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Loading[3][Re_({118,97,108,117,101})], Loading[3][Re_({102,108,97,103,115})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Loading[2][Re_({80,114,111,106,101,99,116,115})] .. Re_({76,111,97,100,229,164,177,232,180,165,226,157,140})) else gg.refineNumber(Loading[3][Re_({118,97,108,117,101})], Loading[3][Re_({102,108,97,103,115})]) gg.refineNumber(Loading[3][Re_({118,97,108,117,101})], Loading[3][Re_({102,108,97,103,115})]) gg.refineNumber(Loading[3][Re_({118,97,108,117,101})], Loading[3][Re_({102,108,97,103,115})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Loading[2][Re_({80,114,111,106,101,99,116,115})] .. Re_({76,111,97,100,229,164,177,232,180,165,226,157,140})) else sl = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](999999) sz = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v][Re_({97,100,100,114,101,115,115})] pysz[1].flags = Loading[v][Re_({102,108,97,103,115})] szpy = gg.getValues(pysz) pdpd = Loading[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end if xgjg == true then 
end end end end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()gg.setRanges(_om)gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](_ov,orig[3].type or orig[3][2])sz=gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]()if sz<1 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](_on..Re_({32,66,65,67,75,67,72,79,68,73}))else sl=gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](_on..Re_({32,229,188,128,229,144,175,230,136,144,229,138,159}))else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](_on..Re_({32,229,188,128,229,144,175,229,164,177,232,180,165}))end end end
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
if dataType ==Re_({68}) or dataType == Re_({68}) then 
type = gg.TYPE_DWORD 
end 
if dataType == Re_({70}) then 
type = gg.TYPE_FLOAT 
end 
if dataType == Re_({69}) then 
type = gg.TYPE_DOUBLE 
end 
if dataType == Re_({66}) or dataType == Re_({66}) then 
type =  gg.TYPE_BYTE 
end 
if dataType == Re_({87}) or dataType == Re_({87}) then 
type = gg.TYPE_WORD os.exit() 
end	
return type 
end
app.memorySearch = function(pkgName, isNewSearch, address, tb, dataType)	
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() 
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)	local isSucess = gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](tb[1][Re_({108,118})], checkType(dataType), false, gg.SIGN_EQUAL, address, -1);	local t = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](9999);	local tab = {}	local data = {}	for i=1, #t do	for j=2, #tb do	tab[j] = {} tab[j].address = t[i].address + tb[j][Re_({111,102,102,115,101,116})] if(tb[j][Re_({116,121,112,101})] == nil) then tab[j].flags = t[i].flags else tab[j].flags = checkType(tb[j][Re_({116,121,112,101})]) end tab = gg.getValues(tab)	if (tab[j].value == tb[j][Re_({108,118})]) then data[#data+1] = t[i].address end end	end gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() return isSucess, data end app.memoryWrite = function(pkgName, address, value, dataType) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)	local t = {}	t[1] ={}	t[1].address = address	t[1].flags = checkType(dataType)	t[1].value = value	return gg.setValues(t) end
GG = {Read,Write} 
function GG.ReadWrite(Read,Writw)TZ = {} dataTZ = Read[1] offset = dataTZ[2] for i=1,#Read do TZA = Read[i] LV = {[Re_({108,118})] = TZA[1],[Re_({111,102,102,115,101,116})] = TZA[2]-offset} table.insert(TZ, i, LV) end app.memorySearchMode(Memory) isSuuess,TUG = app.memorySearch(pkgName, true, 0, TZ, Type) if TUG[1] == nil then  else for ii=1,#TUG do for iii=1,#Write do dataxg = Write[iii] value = dataxg[1] Deviant = dataxg[2] app.memoryWrite(pkgName,TUG[ii]+Deviant-offset,value,Type) end end gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](ID.. Re_({229,188,128,229,144,175,230,136,144,229,138,159})) end end
function SearchWrite(Search, Write, Type)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Search[1][1], Type)
local t = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](9999)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
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
--gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](r)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](999999) sz = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({230,157,161,230,149,176,230,141,174})) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end
function SearchWrite(Search, Write, Type) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Search[1][1], Type) local count = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() local result = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](count) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Name..Re_({32,32,228,191,174,230,148,185})..#data..Re_({230,157,161,230,149,176,230,141,174})) local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](item)end end end gg.setValues(t) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Name..Re_({32,32,32,229,188,128,229,144,175,229,164,177,232,180,165}), false) return false end else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Name..Re_({32,32,32,229,188,128,229,144,175,229,164,177,232,180,165})) return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](999999) sz = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({230,157,161,206,148,206,152})) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end function PS() end function setvalue(address,flags,value) PS(Re_({228,191,174,230,148,185,229,156,176,229,157,128,230,149,176,229,128,188,40,229,156,176,229,157,128,44,230,149,176,229,128,188,231,177,187,229,158,139,44,232,166,129,228,191,174,230,148,185,231,154,132,229,128,188,41})) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
local app = {}
function Assert(data)
if data == nil or data == Re_({}) or data == Re_({110,105,108}) then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
local rx = mearrass(memory, array)
if rx then
local rx, datatype = typetab(array, type)
if rx then
if Assert(array[1].hv) then
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setRanges(memory)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](array[1].lv .. Re_({126}) .. array[1].hv, datatype[1])
else
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setRanges(memory)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](array[1].lv, datatype[1])
end
if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then
return false
else
local tab = {}
local data = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]())
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
for i = 1, #data do
data[i].rx = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
data[z].rx = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].rx = false
end
end
end
end
for i = 1, #data do
if data[i].rx then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print(Re_({116,121,112,101,229,143,130,230,149,176,233,148,153,232,175,175}))
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({116,121,112,101,229,143,130,230,149,176,233,148,153,232,175,175}))
os.exit()
end
else
print(Re_({109,101,109,111,114,121,32,111,114,32,97,114,114,97,121,229,143,130,230,149,176,233,148,153,232,175,175}))
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({109,101,109,111,114,121,32,111,114,32,97,114,114,97,121,229,143,130,230,149,176,233,148,153,232,175,175}))
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze
--gg.setValues(t)
return gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](t)
else
return gg.setValues(t)
end
else
return false
end
end
----------------------------------------------仿XS配置代码,不准动,不然鸡掰给你砍断♂----------------------------------------------

--配置↓↓↓勿修改
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] xgdj = qmxg[x][Re_({102,114,101,101,122,101})] if xgdj == nil or xgdj == Re_({}) then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))]({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](999999) sz = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({230,157,161,230,149,176,230,141,174})) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end
--配置↑↑↑勿修改，调用方法   xqmnb(qmnb)

function SearchWrite(Search, Write, Type)
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
    gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
    gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Search[1][1], Type)
    local count = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]()
    local result = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](count)
    gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
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
                       gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](item)
                   end
                  
               end
           end
           gg.setValues(t)
    
           gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](t)
        else
            gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({230,151,160,230,149,176,230,141,174}), false)
            return false
        end
    else
        gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({78,111,116,32,70,111,117,110,100}))
        return false
    end
end
-----------------------防脚本反编译-----------------------
function Sots_searchNumber(n, type, ft, sign, r, s)
  local waring = Re_({10,77,97,120})
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](n, type, ft, sign, r, s)
  if gg.isVisible(true) then
    gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
    gg[string.char(tonumber("70",16))..string.char(tonumber("72",16))..string.char(tonumber("6f",16))..string.char(tonumber("63",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("73",16))..string.char(tonumber("4b",16))..string.char(tonumber("69",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]()
    print(waring)
    while true do
      gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
      while true do
      end
    end
  end
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x][Re_({111,102,102,115,101,116})] xglx = qmxg[x][Re_({116,121,112,101})] xgsz = qmxg[x][Re_({118,97,108,117,101})] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg.setRanges(qmnb[1][Re_({109,101,109,111,114,121})]) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) gg.refineNumber(qmnb[3][Re_({118,97,108,117,101})], qmnb[3][Re_({116,121,112,101})]) if gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() == 0 then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) else sl = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](999999) sz = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][Re_({111,102,102,115,101,116})] pysz[1].flags = qmnb[v][Re_({116,121,112,101})] szpy = gg.getValues(pysz) pdpd = qmnb[v][Re_({108,118})] .. Re_({59}) .. szpy[1].value szpd = split(pdpd, Re_({59})) tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,230,136,144,229,138,159,44,229,133,177,228,191,174,230,148,185}) .. xgsl .. Re_({230,157,161,230,149,176,230,141,174})) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](qmnb[2][Re_({110,97,109,101})] .. Re_({229,188,128,229,144,175,229,164,177,232,180,165})) end end end end
--指针配置不懂勿动
function SearchWrite(Search, Write, Type) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false) gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Search[1][1], Type) local count = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("43",16))..string.char(tonumber("6f",16))..string.char(tonumber("75",16))..string.char(tonumber("6e",16))..string.char(tonumber("74",16))]() local result = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](count) gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({240,159,149,185,58,228,191,174,230,148,185})..#data..Re_({230,157,161,230,149,176,230,141,174,46,229,188,128,229,144,175,230,136,144,229,138,159})) local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](item) end end end gg.setValues(t) else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({240,159,149,185,58,230,144,156,231,180,162,48,230,157,161,230,149,176,230,141,174,46,228,191,174,230,148,185,229,164,177,232,180,165}), false) return false end else gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))](Re_({240,159,149,185,58,230,144,156,231,180,162,48,230,157,161,230,149,176,230,141,174,46,228,191,174,230,148,185,229,164,177,232,180,165})) return false end end
--仿Xs配置不懂勿动
function Main()
menu = gg.choice({
'大厅防封 GL',
'落地功能 GL',
'基址功能 GL',
'主功能名称4',
'主功能名称5',
'退出脚本'},
2018,'3.0版本\n没有任何禁令➕\n修复举报打人秒禁网➕\n修复大厅十年➕\n修复部分机型修改数值不一样➕\n修复人物自动光感上色➕\n禁止转发➕\n禁止mt查看源码➕\n脚本没有任何编译➕\n禁止⭕钱➕\n陨落🌹\n空白🌹')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.choice({
'开启防封 GL',
'待',
'待',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
2018,'这里也可以随便填')
if menu1 == 1 then a1() end
if menu1 == 2 then a2() end
if menu1 == 3 then a3() end
if menu1 == 4 then a4() end
if menu1 == 5 then a5() end
if menu1 == 6 then a6() end
if menu1 == 7 then a7() end
if menu1 == 8 then a8() end
if menu1 == 9 then a9() end
if menu1 == 10 then a10() end
if menu1 == 11 then a11() end
if menu1 == 12 then a12() end
if menu1 == 13 then HOME() end
GLWW=-1
end



function B()
menu1 = gg.choice({
'无后舜击聚点',
'845透视上色',
'超大范围打击',
'全局除掉雾气',
'人物地线',
'360°自瞄',
'演员版本范围',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
2018,'这里也可以随便填')
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then b4() end
if menu1 == 5 then b5() end
if menu1 == 6 then b6() end
if menu1 == 7 then b7() end
if menu1 == 8 then b8() end
if menu1 == 9 then b9() end
if menu1 == 10 then b10() end
if menu1 == 11 then b11() end
if menu1 == 12 then b12() end
if menu1 == 13 then HOME() end
GLWW=-1
end



function C()
menu1 = gg.choice({
'3650°自瞄[待更新]',
'3650°范围[待更新]',
'3650°锁头[待更新]',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
2018,'这里也可以随便填')
if menu1 == 1 then c1() end
if menu1 == 2 then c2() end
if menu1 == 3 then c3() end
if menu1 == 4 then c4() end
if menu1 == 5 then c5() end
if menu1 == 6 then c6() end
if menu1 == 7 then c7() end
if menu1 == 8 then c8() end
if menu1 == 9 then c9() end
if menu1 == 10 then c10() end
if menu1 == 11 then c11() end
if menu1 == 12 then c12() end
if menu1 == 13 then HOME() end
GLWW=-1
end



function D()
menu1 = gg.choice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
2018,'这里也可以随便填')
if menu1 == 1 then d1() end
if menu1 == 2 then d2() end
if menu1 == 3 then d3() end
if menu1 == 4 then d4() end
if menu1 == 5 then d5() end
if menu1 == 6 then d6() end
if menu1 == 7 then d7() end
if menu1 == 8 then d8() end
if menu1 == 9 then d9() end
if menu1 == 10 then d10() end
if menu1 == 11 then d11() end
if menu1 == 12 then d12() end
if menu1 == 13 then HOME() end
GLWW=-1
end



function E()
menu1 = gg.choice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'返回上一页'},
2018,'这里也可以随便填')
if menu1 == 1 then e1() end
if menu1 == 2 then e2() end
if menu1 == 3 then e3() end
if menu1 == 4 then e4() end
if menu1 == 5 then e5() end
if menu1 == 6 then e6() end
if menu1 == 7 then e7() end
if menu1 == 8 then e8() end
if menu1 == 9 then e9() end
if menu1 == 10 then e10() end
if menu1 == 11 then e11() end
if menu1 == 12 then e12() end
if menu1 == 13 then HOME() end
GLWW=-1
end



function a1()
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
end



function a2()
end



function a3()
end



function a4()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a5()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a6()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a7()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a8()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a9()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a10()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a11()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function a12()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b1()
Name = Re_({229,133,168,230,158,170,230,151,160,229,144,142}) 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
Name = Re_({229,133,168,230,158,170,233,152,178,230,138,150})
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
Name = Re_({229,133,168,230,158,170,232,129,154,231,130,185})
gg.setRanges(16384)
local dataType = 16
local search = {{-6.171871492066637E27, 0},{-3.868563083935415E25, -8},}
local modify = {{0, -8},{0, 4},}
SearchWrite(search,modify,dataType,Name)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg.setRanges(gg.REGION_CODE_APP)
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Re_({45,51,51,53,44,53,55,49,44,52,49,50,59,45,50,57,56,44,50,56,52,44,52,54,54,59,45,51,48,56,44,52,54,55,44,49,54,57,58,49,48,57}), gg.TYPE_DWORD, false)
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))](Re_({45,50,57,56,44,50,56,52,44,52,54,54,59,45,51,48,56,44,52,54,55,44,49,54,57}), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](1000)
gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))](Re_({48}), gg.TYPE_DWORD)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b2()
qmnb = {
{[Re_({109,101,109,111,114,121})] = 1048576},
{[Re_({110,97,109,101})] = Re_({231,172,172,228,184,128,230,173,165})},
{[Re_({118,97,108,117,101})] = 5.891058744021531E-42, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 9.242488229208623E-40, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 6.981425631590138E-29, [Re_({111,102,102,115,101,116})] = 16, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 7.020871084263619E-29, [Re_({111,102,102,115,101,116})] = 32, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.3912565272500753E-19, [Re_({111,102,102,115,101,116})] = 44, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0, [Re_({111,102,102,115,101,116})] = 48, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 1.662311335521485E-19, [Re_({111,102,102,115,101,116})] = 52, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 9.219422856485836E-41, [Re_({111,102,102,115,101,116})] = 60, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 120, [Re_({111,102,102,115,101,116})] = 48, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 1048576},
{[Re_({110,97,109,101})] = Re_({231,172,172,228,186,140,230,173,165})},
{[Re_({118,97,108,117,101})] = 3.76158192263132E-37, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 2.0, [Re_({111,102,102,115,101,116})] = 100, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = -127.0, [Re_({111,102,102,115,101,116})] = 116, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.24022650718688965, [Re_({111,102,102,115,101,116})] = 120, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.6931471824645996, [Re_({111,102,102,115,101,116})] = 124, [Re_({116,121,112,101})] = 16},
{[Re_({108,118})] = 0.009999999776482582, [Re_({111,102,102,115,101,116})] = 128, [Re_({116,121,112,101})] = 16},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 120, [Re_({111,102,102,115,101,116})] = 100, [Re_({116,121,112,101})] = 16},
}
xqmnb(qmnb)
qmnb = {
{[Re_({109,101,109,111,114,121})] = 1048576},
{[Re_({110,97,109,101})] = Re_({231,172,172,228,184,137,230,173,165})},
{[Re_({118,97,108,117,101})] = 1080033313, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1661796382, [Re_({111,102,102,115,101,116})] = 8, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1661829152, [Re_({111,102,102,115,101,116})] = 24, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1661861921, [Re_({111,102,102,115,101,116})] = 32, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 539246609, [Re_({111,102,102,115,101,116})] = 40, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1080557855, [Re_({111,102,102,115,101,116})] = 56, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 283312145, [Re_({111,102,102,115,101,116})] = 84, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 1669890065, [Re_({111,102,102,115,101,116})] = 96, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 8200, [Re_({111,102,102,115,101,116})] = 100, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 8201, [Re_({111,102,102,115,101,116})] = 108, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 671219730, [Re_({111,102,102,115,101,116})] = 116, [Re_({116,121,112,101})] = 4},
{[Re_({108,118})] = 537133058, [Re_({111,102,102,115,101,116})] = 128, [Re_({116,121,112,101})] = 4},
}
qmxg = {
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 100, [Re_({116,121,112,101})] = 4},
{[Re_({118,97,108,117,101})] = 0, [Re_({111,102,102,115,101,116})] = 108, [Re_({116,121,112,101})] = 4},
}
xqmnb(qmnb)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b3()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](3)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("180", gg.TYPE_FLOAT)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  revert = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](100, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](100, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for i, i in ipairs(t) do
        if i.flags == gg.TYPE_FLOAT then
          i.value = "200"
          i.freeze = true
        end--Iғ
      end--Fᴏʀ
    end--Dᴏ
  end--Dᴏ
  gg[string.char(tonumber("61",16))..string.char(tonumber("64",16))..string.char(tonumber("64",16))..string.char(tonumber("4c",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))..string.char(tonumber("49",16))..string.char(tonumber("74",16))..string.char(tonumber("65",16))..string.char(tonumber("6d",16))..string.char(tonumber("73",16))](t)
  t = nil
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("9999", gg.TYPE_FLOAT)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b4()
gg.setRanges(gg.REGION_CODE_APP)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("-486470332;-298841535;-409731072:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-298841535", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("98")
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](100)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_DWORD)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b5()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](300)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("-999999", gg.TYPE_FLOAT)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b6()
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(16384)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](2)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("-476053504", gg.TYPE_DWORD)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(16384)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](6)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1.6615351e35", gg.TYPE_FLOAT)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(16384)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](10)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("-1903895621994000382",gg.TYPE_QWORD)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(16384)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](6)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("0", gg.TYPE_FLOAT)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
  gg.setRanges(16384)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("63",16))..string.char(tonumber("68",16))..string.char(tonumber("4e",16))..string.char(tonumber("75",16))..string.char(tonumber("6d",16))..string.char(tonumber("62",16))..string.char(tonumber("65",16))..string.char(tonumber("72",16))]("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg[string.char(tonumber("67",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))](6)
  gg[string.char(tonumber("65",16))..string.char(tonumber("64",16))..string.char(tonumber("69",16))..string.char(tonumber("74",16))..string.char(tonumber("41",16))..string.char(tonumber("6c",16))..string.char(tonumber("6c",16))]("1.6615351e35", gg.TYPE_FLOAT)
  gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b7()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围"},
{["value"] = 1091779028, ["type"] = 4},
{["lv"] = 1103626240, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1106509824, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 160, ["offset"] = 28, ["type"] = 16},
{["value"] = 160, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
gg.setRanges(32)
  local dataType = 16
  local search = {{-92.23117065429688, 0},{16.0, 4},}
  local modify = {{100, 4},}
  SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)--A内存
local dataType = 16
local Name ="身体范围"
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b8()
end


function b9()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b10()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b11()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function b12()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c1()
end



function c2()

end



function c3()

end



function c4()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c5()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c6()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c7()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c8()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c9()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c10()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c11()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function c12()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d1()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d2()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d3()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d4()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d5()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d6()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d7()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d8()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d9()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d10()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d11()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function d12()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e1()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e2()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e3()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e4()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e5()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e6()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e7()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e8()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e9()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e10()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e11()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function e12()

gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("开启成功")
end



function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '这里可以填QQ'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg[string.char(tonumber("73",16))..string.char(tonumber("65",16))..string.char(tonumber("74",16))..string.char(tonumber("56",16))..string.char(tonumber("69",16))..string.char(tonumber("73",16))..string.char(tonumber("69",16))..string.char(tonumber("62",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))](false)
end
gg[string.char(tonumber("63",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("61",16))..string.char(tonumber("72",16))..string.char(tonumber("52",16))..string.char(tonumber("65",16))..string.char(tonumber("73",16))..string.char(tonumber("75",16))..string.char(tonumber("6c",16))..string.char(tonumber("74",16))..string.char(tonumber("73",16))]()
if XGCK==1 then
Main()
end
end

















--[[Welcome to Dluae]]