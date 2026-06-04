function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

---抖音搜索风尘---

function ZBY(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]["value"]or qmnb[3][1]qmnbt=qmnb[3]["type"]or qmnb[3][2]qmnbn=qmnb[2]["name"]or qmnb[2][1]gg.setRanges(qmnb[1]["memory"]or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn.."开启失败")else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]["offset"]or qmnb[v][2])pysz[1].flags=qmnb[v]["type"]or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]["lv"]or qmnb[v][1]):gsub(",","")pyszpd=tostring(szpy[1].value):gsub(",","")if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]["value"]or qmxg[x][1]xgpy=szpy+(qmxg[x]["offset"]or qmxg[x][2])xglx=qmxg[x]["type"]or qmxg[x][3]xgdj=qmxg[x]["freeze"]or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn.."开启成功")else gg.alert(qmnbn.."开启失败")end end end 



---抖音搜索风尘--

function TianDao()
TD = gg.choice({
"光子防闪--[A-全局]",
"国服防封--[A-全局]",
"全伤加速--[A-落地]",
"加速关闭--[A-落地]",
"变态功能--[A-落地]",
"透色功能--[A-出生]",
"大厅功能--[A-大厅]",
"美化功能--[A-全局]",
"退出旅途--[A-再见]"},
2020,'2020年丶-风尘牛逼')       
if TD == 1 then A0() end
if TD == 2 then A1() end
if TD == 3 then A2() end
if TD == 4 then A3() end
if TD == 5 then A4() end
if TD == 6 then A5() end
if TD == 7 then A6() end
if TD == 8 then A7() end
if TD == 9 then Exit() end
XGCK=-1
end 

---黄瓜---
function A0()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end

function A1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12547;131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12549", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12549", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("35,653,649D;10,240D;2D;262,144D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("35,653,649D;10,240D;2D;262,144D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("42,560;43,072;43,584;64,320;65,344;65,856;67,392:761", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("42,560;43,072;43,584;64,320;65,344;65,856;67,392:761", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("917,522;131,075;65,818;131,075;65,818;917,522;131,077:141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("917,522;131,075;65,818;131,075;65,818;917,522;131,077:141", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10,240;10,240;10,240;67,043,328;10,240;10,240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("国服防封部署成功")
end

---黄瓜出品必是精品---

function A2()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%40")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.toast("全伤加速部署➤%70")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] = 68000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 68000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =71500, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 71500, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =88000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="全伤加速部署➤%100"},
{["value"] =87000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =40000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function A3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("加速部署关闭➤%100")
end

---黄瓜出品必是精品---

function A4()
TD3 = gg.multiChoice({
"视角--[D-单局]",
"射速--[D-单局]",
"瞬击--[D-持枪]",
"车速--[D-开车]",
"范围--[D-全局]",
"天线--[D-全局]",
"盒线--[D-全局]",
"刹车--[D-全局]",
"菜单--[D-返回]"},
nil,'2020年丶酒馆国服防封-酒馆出品必是精品')
if TD3 == nil then else
if TD3[1] == true then d1() end
if TD3[2] == true then d2() end
if TD3[3] == true then d3() end
if TD3[4] == true then d4() end
if TD3[5] == true then d5() end
if TD3[6] == true then d6() end
if TD3[7] == true then d7() end
if TD3[8] == true then d8() end
if TD3[9] == true then TianDao() end
end
GLWW=-1
end

---黄瓜出品必是精品---

function d1()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("瞬击加速部署➤%30")
qmnb = {
{["memory"] = 32},
{["name"] = "瞬击加速部署➤%60"},
{["value"] = 0.33067199588, ["type"] = 16},
{["lv"] = -1.68741369247, ["offset"] = -16, ["type"] = 16},
{["lv"] = 8.51431560516, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = -99999, ["offset"] = -16, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="单局视角部署➤%100"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =850, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function d2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1.125", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1526231e27;-1.0070975e28',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-6.1526231e27',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('-5',gg.TYPE_FLOAT)
gg.toast("单局加速部署➤%100")
end

---黄瓜出品必是精品---

function d3()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] = 68000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 68000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =71500, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 71500, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =91000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 91000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =88000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="全枪瞬击部署➤%100"},
{["value"] =87000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function d4()
ZBY({{32},{"全车加速部署➤%50"},{0.72727274895, 16},{0.34377467632, 4, 16},{0.25, -0xe8, 16}},{{99, 0, 16},{99, 4, 16},{99, -0xe8, 16}})
ZBY({{32},{"全车加速部署➤%100"},{1059431846, 4},{0.30000001192, 0x4, 16},{0.94117647409, 0x8, 16},{1, 0x10, 16},{0.76000005007, 0x14, 16},{0.96078431606, 0x18, 16},{1, 0x1c, 16},{0.74509805441, 0x20, 16}},{{90, 0, 16},{90, 0x4, 16}})
end

---黄瓜出品必是精品---

function d5()
qmnb = {
{["memory"] = 32},
{["name"] = "范围部署➤%50"},
{["value"] = 9.201618194580078, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 23.0, ["offset"] = 28, ["type"] = 16},
{["lv"] = 28.0, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 180, ["offset"] = 24, ["type"] = 16},
{["value"] = 180, ["offset"] = 28, ["type"] = 16},
{["value"] = 180, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "范围部署➤%100"},
{["value"] = 35, ["type"] = 16},
{["lv"] = 33, ["offset"] = 4, ["type"] = 16},
{["lv"] = 62, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 145, ["offset"] = 0, ["type"] = 16},
{["value"] = 145, ["offset"] = 4, ["type"] = 16},
{["value"] = 145, ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function d6()
qmnb = {
{["memory"] = 32},
{["name"] = "头部天线部署➤%100"},
{["value"] = 87.27782440186, ["type"] = 16},
{["lv"] = 90, ["offset"] = -4, ["type"] = 16},
{["lv"] = -100.91194152832, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = 0, ["type"] = 16},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = 16},
{["value"] = 999, ["offset"] = 8, ["type"] = 16},
}

xqmnb(qmnb)
end

---黄瓜出品必是精品---

function d7()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] ="全局盒线部署➤%50"},
{["value"] =11.05930042267, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.30930042267, ["offset"] = 48, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.30930042267, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
 }
 qmxg = {
{["value"] =99999, ["offset"] = 48, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 144, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 156, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] ="全局盒线部署➤%100"},
{["value"] =-11.24394989014, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.04788017273, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 13.04788017273, ["offset"] = 724, ["type"] = gg.TYPE_FLOAT},
 }
 qmxg = {
{["value"] =99999, ["offset"] = 724, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 976, ["type"] = gg.TYPE_FLOAT},
{["value"] =99999, ["offset"] = 1300, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function d8()
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "车速刹车部署➤%100"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function A5()
TD2 = gg.multiChoice({
'八五五--[C-HD]',
'八四五--[C-LC]',
'八三五--[C-LC]',
'防透闪--[C-QJ]',
'主界面--[C-FH]'},
nil,'2020年丶黄瓜国服防封-必是精品') 
if TD2 == nil then else      
if TD2[1]==true then c1() end
if TD2[2]==true then c2() end
if TD2[3]==true then c3() end
if TD2[4]==true then c4() end
if TD2[5]==true then TianDao() end
end
GLWW=-1
end 

---黄瓜出品必是精品---

function c1()
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%10"},
{["value"] = 1671659523, ["type"] = 4},
{["lv"] = -2147352564, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%15"},
{["value"] = 1670152221, ["type"] = 4},
{["lv"] = -2145513268, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%20"},
{["value"] = 2949135, ["type"] = 4},
{["lv"] = 1073741825, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%25"},
{["value"] = 2490385, ["type"] = 4},
{["lv"] = 1081081873, ["offset"] = 4, ["type"] = 4},
{["lv"] = 4143, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1669693440, ["offset"] = 12, ["type"] = 4},
{["lv"] = 69672, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1669660673, ["offset"] = 20, ["type"] = 4},
{["lv"] = -2147483636, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 24, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%30"},
{["value"] = 1671790629, ["type"] = 4},
{["lv"] = 458757, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1670938662, ["offset"] = 8, ["type"] = 4},
{["lv"] = -2145644340, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 12, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%35"},
{["value"] = 2555921, ["type"] = 4},
{["lv"] = 1081098257, ["offset"] = -20, ["type"] = 4},
{["lv"] = 2162688, ["offset"] = -16, ["type"] = 4},
{["lv"] = 1081100288, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1048578, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1073741825, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = -20, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%40"},
{["value"] = 1661550624, ["type"] = 4},
{["lv"] = 1074806840, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1245197, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = -8, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%50"},
{["value"] = 284033031, ["type"] = 4},
{["lv"] = 1074806835, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = -4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%55"},
{["value"] = 276037660, ["type"] = 4},
{["lv"] = 1804599296, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1670381569, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},
{["value"] = -1, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%60"},
{["value"] = 536889604, ["type"] = 4},
{["lv"] = 671105024, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = -8, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%70"},
{["value"] = 271384581, ["type"] = 4},
{["lv"] = 1081083909, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%75"},
{["value"] = 2195478, ["type"] = 4},
{["lv"] = 1081081878, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2298152, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1669333025, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2363688, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1669365795, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 4, ["type"] = 4},
{["value"] = 5, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%85"},
{["value"] = 287309830, ["type"] = 4},
{["lv"] = 1081608448, ["offset"] = 4, ["type"] = 4},
{["lv"] = 287440905, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%90"},
{["value"] = 3735564, ["type"] = 4},
{["lv"] = 1080033296, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八五五--[HR]➤%100"},
{["value"] = 4329537, ["type"] = 4},
{["lv"] = 1080033308, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -9, ["offset"] = 4, ["type"] = 4},

}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function c2()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1.8368781e-40;2.25048828125",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("八四五--[LC]➤%40")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.2652927e-40;-2.7610905e-39:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("八四五--[LC]➤%70")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('-1.46937635e-39;3.67346189e-40;2.0:97',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('40',gg.TYPE_FLOAT)
gg.toast('八四五--[LC]➤%100')
end

---黄瓜出品必是精品---

function c3()
qmnb = {
{["memory"] = 1048576},
{["name"] = "八三五--[LC]➤%40"},
{["value"] = -2147086191, ["type"] = 4},
{["lv"] = 1671233540, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4140, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1669365763, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八三五--[LC]➤%70"},
{["value"] = -2145513280, ["type"] = 4},
{["lv"] = 1670152221, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "八三五--[LC]➤%100"},
{["value"] = 1092616199, ["type"] = 4},
{["lv"] = 128, ["offset"] = 428, ["type"] = 4},
}
qmxg = {
{["value"] = 35, ["offset"] = 428, ["type"] = 4},

}
xqmnb(qmnb)
end

---黄瓜出品必是精品---

function c4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-8.3241613e-40", gg.TYPE_FLOAT)
gg.searchNumber("-8.3241613e-40", gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll("8.3241613e-40", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-6.488152e-40", gg.TYPE_FLOAT)
gg.searchNumber("-6.488152e-40", gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll("6.488152e-40", gg.TYPE_FLOAT)
gg.toast("防透闪部署➤%100")
end

---黄瓜出品必是精品--

function A6()
TD4 = gg.multiChoice({
'全枪无后--[E-全局]',
'全屏自瞄--[E-全局]',
'除草速降--[E-全局]',
'主页菜单--[E-返回]'},
nil,'2020年丶酒馆国服防封-酒馆出品必是精品')
if TD4 == nil then else
if TD4[1] == true then e1() end
if TD4[2] == true then e2() end
if TD4[3] == true then e3() end
if TD4[4] == true then TianDao() end
end
GLWW=-1
end

---黄瓜出品必是精品---

function e1()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("枪口防抖部➤%20")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖部署➤%40")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("枪口聚点部署➤%50")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪无后部署➤%70")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', 16)
gg.refineNumber('-1.1144502e28', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.clearResults()
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', 16)
gg.refineNumber('-1.1144502e28', 16)
gg.getResults(1)
gg.editAll('0', 16)
gg.toast('全枪秒切部署➤%80')
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(55)
gg.editAll("-9", gg.TYPE_FLOAT)
gg.toast("倍镜秒开部署➤%100")
end
 
---黄瓜出品必是精品---

function e2()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄部署➤%30")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("全图自瞄部署➤%60")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("全图自瞄部署➤%100")
end
 
---黄瓜出品必是精品---

function e3()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "跳伞加速部署➤%100"},
{["value"] = 55, ["type"] = 16},
{["lv"] = 30, ["offset"] = 8, ["type"] = 16},
{["lv"] = 36, ["offset"] = 12, ["type"] = 16},
{["lv"] = 6, ["offset"] = 16, ["type"] = 16},
{["lv"] = 55, ["offset"] = 20, ["type"] = 16},
{["lv"] = 1, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = -100, ["type"] = 16},
{["value"] = 999999, ["offset"] = -104, ["type"] = 16},
{["value"] = 999999, ["offset"] = -108, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.793662e-42;1.9189259e22;2.0", gg.TYPE_FLOAT)
gg.searchNumber("2", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("大厅除草部署➤%100")
end

---黄瓜出品必是精品---

function A7() 
TD2 = gg.multiChoice({
'服装美化--[F-大厅]',
'枪械美化--[F-大厅]',
'主页界面--[F-返回]'},
nil,'2020年丶黄瓜国服防封-必是精品') 
if TD2 == nil then else      
if TD2[1]==true then f1() end
if TD2[2]==true then f2() end
if TD2[3]==true then TianDao() end
end
GLWW=-1
end

---黄瓜出品必是精品---

function f1() 
qmnb = {
{["memory"] = 32},
{["name"] = "背包部署➤%100"},
{["value"] = 474009, ["type"] = 4},
{["lv"] = 2969, ["offset"] = 12, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1289, ["offset"] = 28, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 36, ["type"] = 4},
{["lv"] = 1290, ["offset"] = 44, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 52, ["type"] = 4},
}
qmxg = {
{["value"] = 501001046, ["offset"] = 20, ["type"] = 4},
{["value"] = 501002046, ["offset"] = 36, ["type"] = 4},
{["value"] = 501003046, ["offset"] = 52, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "头盔部署➤%100"},
{["value"] = 501009, ["type"] = 4},
{["lv"] = 1297, ["offset"] = 12, ["type"] = 4},
{["lv"] = 502001, ["offset"] = 20, ["type"] = 4},
{["lv"] = 2289, ["offset"] = 28, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 36, ["type"] = 4},
{["lv"] = 2290, ["offset"] = 44, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 52, ["type"] = 4},
}
qmxg = {
{["value"] = 502001034, ["offset"] = 20, ["type"] = 4},
{["value"] = 502002034, ["offset"] = 36, ["type"] = 4},
{["value"] = 502003034, ["offset"] = 52, ["type"] = 4},
}
xqmnb(qmnb)
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
gg.toast("美化部署➤%100")
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
gg.toast("玛莎美化➤%100")
end

---黄瓜出品必是精品---

function f2() 
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

---黄瓜出品必是精品---
function Exit()
local TD5 = gg.alert("确定退出脚本？\n您将只能退出游戏来关闭功能。","确认退出","使用帮助","获取基佬总群QQ")
if TD5 == nil then TianDao() end
if TD5 == 1 then
gg.clearResults()
gg.toast("已退出脚本")
print("🌟黄瓜防封，感谢使用🌟")
os.exit()
end
if TD5 == 2 then
gg.alert("🔰若有什么好意见可以找作者🔰")
end
if TD5 == 3 then
gg.copyText("694883575")
end
end

---黄瓜出品必是精品---

cs = '黄瓜'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
TianDao()
end
end

---黄瓜出品必是精品---

