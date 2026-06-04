   function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, crxg) for x = 1, #(crxg) do xgpy = szpy + crxg[x]["offset"] xglx = crxg[x]["type"] xgsz = crxg[x]["value"] xgdj = crxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function gcrnb(crnb) gg.clearResults() gg.setRanges(crnb[1]["memory"]) gg.searchNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) gg.refineNumber(crnb[3]["value"], crnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(crnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(crnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + crnb[v]["offset"] pysz[1].flags = crnb[v]["type"] szpy = gg.getValues(pysz) pdpd = crnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, crxg) end end if xgjg == true then gg.toast(crnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(crnb[2]["name"] .. "开启失败") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function Main()
menu = gg.choice({
'透视防闪',
'透视功能',
'变态功能',
'退出脚本'},
nil,'交流群488363813')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then Exit() end
XGCK=-1
end



function A()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('6.31089206e-29;2.0:1417',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('99999', gg.TYPE_FLOAT)
gg.toast('山区防闪开启成功')
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.11015341e-19;2.0:497',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('99999', gg.TYPE_FLOAT)
gg.toast('防闪开启成功（按理单搜索修改3条数据）')
end


function B()
menu1 = gg.multiChoice({
'通用透视（2F/蓝色/V）',
'关闭透视（2F-LAN_V）',
'845透视（偏移/V/WUSE）',
'关闭透视（偏移-BSW-V）',
'845红色(V~D_PANUI)',
'845绿色（V/D_PIANYI）',
'845黄色（V…D~HUNHE）',
'物资透视（@V F-BASIWU）',
'返回上一页'},
nil,'488363813交流群')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'全枪无后（大厅）',
'倍镜防抖（大厅）',
'子弹聚点（大厅）',
'下蹲路飞（落地/全局）',
'循环范围',
'返回上一页'},
nil,'488363813交流群')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end




function b1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.0;9.21942286e-41:13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('40', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2.84541686e10;2.0::233',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('40', gg.TYPE_FLOAT)
gg.toast('高科技透视开启成功')
qmnb = {
{["memory"] = 1048576},
{["name"] = "蓝色"},
{["value"] = 8201, ["type"] = 4},
{["lv"] = 1194344475, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194379806, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('40',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('2', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('40',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('2', gg.TYPE_FLOAT)
gg.toast('高科技关闭开启成功')
qmnb = {
{["memory"] = 1048576},
{["name"] = "蓝色"},
{["value"] = 6, ["type"] = 4},
{["lv"] = 1194344475, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194379806, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 8201, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function b3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = -1.6815581571897805E-44, ["type"] = 16},
{["lv"] = 4.906834486556694E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 6.032090941602558E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 6444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = -2.5774194758203506E-39, ["type"] = 16},
{["lv"] = 5.626278334579643E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 5.146656796213707E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 6444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function b4()
qmnb = {
{["memory"] = 1048576},
{["name"] = "关闭"},
{["value"] =6444, ["type"] = 16},
{["lv"] = 4.906834486556694E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 6.032090941602558E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] =  -1.6815581571897805E-44, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "关闭"},
{["value"] = 6444, ["type"] = 16},
{["lv"] = 5.626278334579643E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 5.146656796213707E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = -2.5774194758203506E-39, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function b5()
qmnb = {
{["memory"] = 1048576},
{["name"] = "红色"},
{["value"] = 1080033281, ["type"] = 4},
{["lv"] = 262145, ["offset"] = -4, ["type"] = 4},
{["lv"] = 393221, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function b6()
qmnb = {
{["memory"] = 1048576},
{["name"] = "绿色"},
{["value"] = 536887310, ["type"] = 4},
{["lv"] = 30, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function b7()
qmnb = {
{["memory"] = 1048576},
{["name"] = "执行中..."},
{["value"] = 1080033281, ["type"] = 4},
{["lv"] = 262145, ["offset"] = -4, ["type"] = 4},
{["lv"] = 393221, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "黄色"},
{["value"] = 536887310, ["type"] = 4},
{["lv"] = 30, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function b8()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = -7.006492321624085E-45, ["type"] = 16},
{["lv"] = 4.759260533967018E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 4.833048073211809E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 6444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "物资透视"},
{["value"] = -3.128393216411297E-39, ["type"] = 16},
{["lv"] = 4.888404630981587E21, ["offset"] = -4, ["type"] = 16},
{["lv"] = 5.091319941692299E21, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 6444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end


function c1()
qmnb = {
{["memory"] = 8},
{["name"] = "防跳动"},
{["value"] = -1.362036392727984E28, ["type"] = 16},
{["lv"] = -3.690791725841273E20, ["offset"] = -4, ["type"] = 16},
{["lv"] = -3.6893509258042357E20, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
qmnb = {
{["memory"] = 8},
{["name"] = "无后"},
{["value"] = -1.362036392727984E28, ["type"] = 16},
{["lv"] = -5.731852598813241E27, ["offset"] = -4, ["type"] = 16},
{["lv"] = -5.729434156878201E27, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function c2()
qmnb = {
{["memory"] = 8},
{["name"] = "倍镜防抖"},
{["value"] = -1476732160.0, ["type"] = 16},
{["lv"] = -2.8111605430681328E28, ["offset"] = -4, ["type"] = 16},
{["lv"] = -3.7444097189855772E28, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function c3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('1.61668954e-27;-1.11445016e28:17',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-1.11445016e28',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('聚点开启成功')
end



function c4()
qmnb = {
{["memory"] = 32},
{["name"] = "路飞"},
{["value"] = 15.769279479980469, ["type"] = 16},
{["lv"] = -0.05608201399445534, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.015181541442871094, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function c5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('131,336;3,932,929:5',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('131,336',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('80', gg.TYPE_DWORD)
c5()
end




function Exit()
print("488363813交流群")
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
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end










