function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--指针配置不懂勿动
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end
--仿Xs配置不懂勿动
function Main()
menu = gg.choice({
'故💚美化1区',
'故💛美化2区',
'故💜美化3区',
'故💙美化4区',
'主功能名称5',
'退出脚本'},
2018,'是挂三分毒')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end













function A()
menu1 = gg.multiChoice({
  "AK     青龙",--1
  "AK     甜心宝贝",--2
  "AK     炫紫旋律",--3
  "AK     蓝色",--4
  "AK     白色",--5
  "AK     星之信仰",--6
  "M416   粉",--7
  "M416  五爪金龙",--8
  "M416  白色",--9
  "M416  魔法学院",--10
  "M416 仓鼠灰灰",--11
  "M416 蓝罗小黑",--12
  "M416 粉罗小黑",--13
  "M416 不知道叫啥",--14
  "M16A4 魔法学院",--15
  "M16A4 麻辣小龙虾",--16
  "M16A4 蓝色",--17
  "S",--18
  "S       火箭少女",--19
  "S       金色",--20
  "S       甜蜜誓言",--21
  "S       蓝色的",--22
  "S       还是蓝色的",--23
  "狗      貌似浪漫波比",--24
  "狗      好像是幻影",--25
  "狗      蓝色罗小黑",--26
  "AUG    魔法学院",--27
  "AUG    红色",--28
  "AUG    紫色",--29
  "Q       带金色",--30
  "Q       粉罗小黑",--31
  "Q       白色加金色",--32
  "M762   红色",--33
  "M762   甜蜜誓言",--34
  "M762   小黄鸭",--35
  "M762   蓝色加金色",--36
  "G36C   金色",--37
  "还没有呢",--38
  "还没有呢",--39
  "还没有呢",--40
  "返回上一页"},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then a17() end
if menu1[18] == true then a18() end
if menu1[19] == true then a19() end
if menu1[20] == true then a20() end
if menu1[21] == true then a21() end
if menu1[22] == true then a22() end
if menu1[23] == true then a23() end
if menu1[24] == true then a24() end
if menu1[25] == true then a25() end
if menu1[26] == true then a26() end
if menu1[27] == true then a27() end
if menu1[28] == true then a28() end
if menu1[29] == true then a29() end
if menu1[30] == true then a30() end
if menu1[31] == true then a31() end
if menu1[32] == true then a32() end
if menu1[33] == true then a33() end
if menu1[34] == true then a34() end
if menu1[35] == true then a35() end
if menu1[36] == true then a36() end
if menu1[37] == true then a37() end
if menu1[38] == true then a38() end
if menu1[39] == true then a39() end
if menu1[40] == true then a40() end
if menu1[41] == true then HOME() end
end
GLWW=-1
end






function a1()
qmnb = {
{["memory"] = 32},
{["name"] = "AKM"},
{["value"] = 101001, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101001007, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a2()
qmnb = {
{["memory"] = 32},
{["name"] = "AKM"},
{["value"] = 101001, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101001018, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416红点"},
{["value"] = 203001, ["type"] = 4},
{["lv"] = 6, ["offset"] = 8, ["type"] = 4},
{["lv"] = 6, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100101811, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100101814, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a3()
qmnb = {
{["memory"] = 32},
{["name"] = "AKM"},
{["value"] = 101001, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101001032, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416红点"},
{["value"] = 203001, ["type"] = 4},
{["lv"] = 6, ["offset"] = 8, ["type"] = 4},
{["lv"] = 6, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100103211, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100103214, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a4()
qmnb = {
{["memory"] = 32},
{["name"] = "AKM"},
{["value"] = 101001, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101001029, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)

end


function a5()
qmnb = {
{["memory"] = 32},
{["name"] = "AKM"},
{["value"] = 101001, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101001013, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a6()
qmnb = {
{["memory"] = 32},
{["name"] = "AKM"},
{["value"] = 101001, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8401, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101001025, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004001, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a8()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004025, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416基瞄"},
{["value"] = 203008, ["type"] = 4},
{["lv"] = 9, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402503, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416红点"},
{["value"] = 203001, ["type"] = 4},
{["lv"] = 6, ["offset"] = 8, ["type"] = 4},
{["lv"] = 6, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402511, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416三倍"},
{["value"] = 203014, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402514, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402515, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416枪托"},
{["value"] = 205005, ["type"] = 4},
{["lv"] = 9, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 45, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402521, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a9()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004028, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416枪托"},
{["value"] = 205005, ["type"] = 4},
{["lv"] = 9, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 45, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402821, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416基瞄"},
{["value"] = 203008, ["type"] = 4},
{["lv"] = 9, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402803, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416红点"},
{["value"] = 203001, ["type"] = 4},
{["lv"] = 6, ["offset"] = 8, ["type"] = 4},
{["lv"] = 6, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402811, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416三倍"},
{["value"] = 203014, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402814, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100402815, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a10()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004030, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a11()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004031, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a12()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004032, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a13()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004033, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a14()
qmnb = {
{["memory"] = 32},
{["name"] = "M416"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8404, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101004034, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a15()
qmnb = {
{["memory"] = 32},
{["name"] = "M16A4"},
{["value"] = 101002, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8402, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101002012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a16()
qmnb = {
{["memory"] = 32},
{["name"] = "M16A4"},
{["value"] = 101002, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8402, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101002015, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a17()
qmnb = {
{["memory"] = 32},
{["name"] = "M16A4"},
{["value"] = 101002, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8402, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101002016, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a18()
qmnb = {
{["memory"] = 32},
{["name"] = "S"},
{["value"] = 101003, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 10100308, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a19()
qmnb = {
{["memory"] = 32},
{["name"] = "S"},
{["value"] = 101003, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101003022, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416红点"},
{["value"] = 203001, ["type"] = 4},
{["lv"] = 6, ["offset"] = 8, ["type"] = 4},
{["lv"] = 6, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100302011, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416三倍"},
{["value"] = 203014, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100302014, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "m416四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 100302015, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a20()
qmnb = {
{["memory"] = 32},
{["name"] = "S"},
{["value"] = 101003, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101003023, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a21()
qmnb = {
{["memory"] = 32},
{["name"] = "S"},
{["value"] = 101003, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101003024, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a22()
qmnb = {
{["memory"] = 32},
{["name"] = "S"},
{["value"] = 101003, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101003026, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a23()
qmnb = {
{["memory"] = 32},
{["name"] = "S"},
{["value"] = 101003, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8403, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101003027, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a24()
qmnb = {
{["memory"] = 32},
{["name"] = "狗"},
{["value"] = 101005, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8900, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101005007, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a25()
qmnb = {
{["memory"] = 32},
{["name"] = "狗"},
{["value"] = 101005, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8900, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101005010, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a26()
qmnb = {
{["memory"] = 32},
{["name"] = "狗"},
{["value"] = 101005, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8900, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101005012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a27()
qmnb = {
{["memory"] = 32},
{["name"] = "A"},
{["value"] = 101006, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101006010, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a28()
qmnb = {
{["memory"] = 32},
{["name"] = "A"},
{["value"] = 101006, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101006012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a29()
qmnb = {
{["memory"] = 32},
{["name"] = "A"},
{["value"] = 101006, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101006013, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a30()
qmnb = {
{["memory"] = 32},
{["name"] = "Q"},
{["value"] = 101007, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101007003, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function a31()
qmnb = {
{["memory"] = 32},
{["name"] = "Q"},
{["value"] = 101007, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101007005, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function a32()
qmnb = {
{["memory"] = 32},
{["name"] = "Q"},
{["value"] = 101007, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101007006, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a33()
qmnb = {
{["memory"] = 32},
{["name"] = "M762"},
{["value"] = 101008, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101008001, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a34()
qmnb = {
{["memory"] = 32},
{["name"] = "M762"},
{["value"] = 101008, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101008016, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function a35()
qmnb = {
{["memory"] = 32},
{["name"] = "M762"},
{["value"] = 101008, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101008017, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a36()
qmnb = {
{["memory"] = 32},
{["name"] = "M762"},
{["value"] = 101008, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8901, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101008018, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function a37()
qmnb = {
{["memory"] = 32},
{["name"] = "G36C"},
{["value"] = 101010, ["type"] = 4},
{["lv"] = 101, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8406, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 101010004, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end





function a38()

end



function a39()

end



function a40()

end






function B()
menu1 = gg.multiChoice({
  "UZI     紫色",--1
  "UZI     魔法学院",--2
  "UZI     金色",--3
  "UMP45 橙色",--4
  "UMP45 粉色",--5
  "UMP45 蓝色",--6
  "UMP45 紫色",--7
  "Ve     龙虾",--8
  "Ve     蓝",--9
  "汤姆逊 紫",--10
  "野牛   小黄鸭",--11
  "野牛   紫色",--12
  "大菠萝",--13
  "大菠萝  红",--14
  "大菠萝  紫",--15
  "大菠萝  蓝",--16
  "大盘鸡  小黄鸭",--17
  "大盘鸡  蓝色",--18
  "大盘鸡       ",--19
  "返回上一页"},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then b15() end
if menu1[16] == true then b16() end
if menu1[17] == true then b17() end
if menu1[18] == true then b18() end
if menu1[19] == true then b19() end
if menu1[20] == true then HOME() end
end
GLWW=-1
end



function b1()
qmnb = {
{["memory"] = 32},
{["name"] = "UZI"},
{["value"] = 102001, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8301, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102001011, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b2()
qmnb = {
{["memory"] = 32},
{["name"] = "UZI"},
{["value"] = 102001, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8301, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102001012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function b3()
qmnb = {
{["memory"] = 32},
{["name"] = "UZI"},
{["value"] = 102001, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8301, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102001014, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b4()
qmnb = {
{["memory"] = 32},
{["name"] = "UMP45"},
{["value"] = 102002, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8302, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102002002, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function b5()
qmnb = {
{["memory"] = 32},
{["name"] = "UMP45"},
{["value"] = 102002, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8302, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102002003, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function b6()
qmnb = {
{["memory"] = 32},
{["name"] = "UMP45"},
{["value"] = 102002, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8302, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102002019, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b7()
qmnb = {
{["memory"] = 32},
{["name"] = "UMP45"},
{["value"] = 102002, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8302, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102002022, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b8()
qmnb = {
{["memory"] = 32},
{["name"] = "Ve"},
{["value"] = 102003, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8303, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102003009, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b9()
qmnb = {
{["memory"] = 32},
{["name"] = "Ve"},
{["value"] = 102003, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8303, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102003010, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function b10()
qmnb = {
{["memory"] = 32},
{["name"] = "汤姆逊"},
{["value"] = 102004, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8304, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102004009, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b11()
qmnb = {
{["memory"] = 32},
{["name"] = "野牛"},
{["value"] = 102005, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8305, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102005002, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function b12()
qmnb = {
{["memory"] = 32},
{["name"] = "野牛"},
{["value"] = 102005, ["type"] = 4},
{["lv"] = 102, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8305, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 102005003, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b13()
qmnb = {
{["memory"] = 32},
{["name"] = "大菠萝"},
{["value"] = 105001, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8904, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105001002, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b14()
qmnb = {
{["memory"] = 32},
{["name"] = "大菠萝"},
{["value"] = 105001, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8904, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105001003, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function b15()
qmnb = {
{["memory"] = 32},
{["name"] = "大菠萝"},
{["value"] = 105001, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8904, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105001005, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b16()
qmnb = {
{["memory"] = 32},
{["name"] = "大菠萝"},
{["value"] = 105001, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8904, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105001008, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end






function b17()
qmnb = {
{["memory"] = 32},
{["name"] = "大盘鸡"},
{["value"] = 105002, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8406, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105002001, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end




function b18()
qmnb = {
{["memory"] = 32},
{["name"] = "大盘鸡"},
{["value"] = 105002, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8406, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105002005, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function b19()
qmnb = {
{["memory"] = 32},
{["name"] = "大盘鸡"},
{["value"] = 105002, ["type"] = 4},
{["lv"] = 105, ["offset"] = 20, ["type"] = 4},
{["lv"] = 20, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8406, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 105002006, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end









function C()
menu1 = gg.multiChoice({
  "M24罗小黑",--1
  "M24星之信仰",--2
  "98k     紫色",--3
  "98K     黑色",--4
  "98K     蓝色加金",--5
  "98K     红色",--6
  "SKS   紫色",--7
  "USS   蓝色",--8
  "mini14 龙虾",--9
  "S686    魔法学院",--10
  "S686    星之信仰",--11
  "S686    罗小黑",--12
  "S686    蓝色加金",--13
  "还没有呢",--14
  "还没有呢",---15
  "返回上一页"},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end











function c1()
qmnb = {
{["memory"] = 32},
{["name"] = "m24"},
{["value"] = 103002, ["type"] = 4},
{["lv"] = 103, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8902, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103002009, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function c2()
qmnb = {
{["memory"] = 32},
{["name"] = "m24"},
{["value"] = 103002, ["type"] = 4},
{["lv"] = 103, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8902, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103002012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300201011, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "六倍"},
{["value"] = 203015, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300201012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "八倍美化"},
{["value"] = 203005, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300201013, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function c3()
qmnb = {
{["memory"] = 32},
{["name"] = "98k"},
{["value"] = 103001, ["type"] = 4},
{["lv"] = 103, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8501, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103001017, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function c4()
qmnb = {
{["memory"] = 32},
{["name"] = "98k"},
{["value"] = 103001, ["type"] = 4},
{["lv"] = 103, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8501, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103001020, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function c5()
qmnb = {
{["memory"] = 32},
{["name"] = "98k"},
{["value"] = 103001, ["type"] = 4},
{["lv"] = 103, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8501, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103001022, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function c6()
qmnb = {
{["memory"] = 32},
{["name"] = "98k"},
{["value"] = 103001, ["type"] = 4},
{["lv"] = 103, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8501, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103001025, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300102511, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "六倍"},
{["value"] = 203015, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300102512, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end





function c7()
qmnb = {
{["memory"] = 32},
{["name"] = "SKS"},
{["value"] = 103004, ["type"] = 4},
{["lv"] = 109, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8504, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103004013, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "四倍"},
{["value"] = 203004, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300401311, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "六倍"},
{["value"] = 203015, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300401312, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "八倍美化"},
{["value"] = 203005, ["type"] = 4},
{["lv"] = 7, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 16, ["type"] = 4},
{["lv"] = 31, ["offset"] = 20, ["type"] = 4},
}
qmxg = {
{["value"] = 300401313, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function c8()
qmnb = {
{["memory"] = 32},
{["name"] = "VSS"},
{["value"] = 103005, ["type"] = 4},
{["lv"] = 109, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8505, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103005009, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function c9()
qmnb = {
{["memory"] = 32},
{["name"] = "mini14"},
{["value"] = 103006, ["type"] = 4},
{["lv"] = 109, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8506, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 103006016, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function c10()
qmnb = {
{["memory"] = 32},
{["name"] = "S686"},
{["value"] = 104001, ["type"] = 4},
{["lv"] = 104, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 104001009, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function c11()
qmnb = {
{["memory"] = 32},
{["name"] = "S686"},
{["value"] = 104001, ["type"] = 4},
{["lv"] = 104, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 104001010, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function c12()
qmnb = {
{["memory"] = 32},
{["name"] = "S686"},
{["value"] = 104001, ["type"] = 4},
{["lv"] = 104, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 104001011, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function c13()
qmnb = {
{["memory"] = 32},
{["name"] = "S686"},
{["value"] = 104001, ["type"] = 4},
{["lv"] = 104, ["offset"] = 20, ["type"] = 4},
{["lv"] = 18, ["offset"] = 48, ["type"] = 4},
{["lv"] = 65537, ["offset"] = 52, ["type"] = 4},
{["lv"] = 8201, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 104001012, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end



function c14()

end

function c15()

end



function D()
menu1 = gg.multiChoice({
"背包美化头",
'背包美化衣服',
'是个头盔',
'小白衣美化衣服',
'背包黄色狗029',
'菠萝头007',
'愤怒的小鸟009',
'熊猫头012',
'黄色狗021',
'头盔红色马尾045',
'背包紫色小恐龙041',
'背包浪漫波比043',
'背包仓鼠灰灰047',
'背包小黄鸭066',
'背包罗小黑070',
'返回上一页'},
nil,'食用说明，首先美化头盔背包都必须要有一个头盔或背包不然无效，美化后可以通过扔头盔或背包重新拾取刷新，每还一个头盔或背包都得重来前面的操作，因为特征码原因貌似不能穿衣服不然无效')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end





function d1()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 401349, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end

function d2()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 403694, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end



function d3()
qmnb = {
{["memory"] = 32},
{["name"] = "黑鲨"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 502003014, ["offset"] = 384, ["type"] = 4},
}
xqmnb(qmnb)
end


function d4()
qmnb = {
{["memory"] = 32},
{["name"] = "衣服吧"},
{["value"] = 403251, ["type"] = 4},
{["lv"] = 17, ["offset"] = 8, ["type"] = 4},
{["lv"] = 4, ["offset"] = 16, ["type"] = 4},
{["lv"] = 403, ["offset"] = 20, ["type"] = 4},
{["lv"] = 520, ["offset"] = 60, ["type"] = 4},
}
qmxg = {
{["value"] = 403409, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end


function d5()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 501003029, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end



function d6()
qmnb = {
{["memory"] = 32},
{["name"] = "黑鲨"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 502003007, ["offset"] = 384, ["type"] = 4},
}
xqmnb(qmnb)
end



function d7()
qmnb = {
{["memory"] = 32},
{["name"] = "黑鲨"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 502003009, ["offset"] = 384, ["type"] = 4},
}
xqmnb(qmnb)
end



function d8()
qmnb = {
{["memory"] = 32},
{["name"] = "黑鲨"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 502003012, ["offset"] = 384, ["type"] = 4},
}
xqmnb(qmnb)
end



function d9()
qmnb = {
{["memory"] = 32},
{["name"] = "黑鲨"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 502003021, ["offset"] = 384, ["type"] = 4},
}
xqmnb(qmnb)
end



function d10()
qmnb = {
{["memory"] = 32},
{["name"] = "黑鲨"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 502003045, ["offset"] = 384, ["type"] = 4},
}
xqmnb(qmnb)
end



function d11()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 501003041, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end



function d12()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 501003043, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end



function d13()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 501003047, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end



function d14()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 501003066, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end



function d15()
qmnb = {
{["memory"] = 32},
{["name"] = "噜啦噜啦嘞"},
{["value"] = 401993, ["type"] = 4},
{["lv"] = 403251, ["offset"] = 192, ["type"] = 4},
{["lv"] = 404007, ["offset"] = 240, ["type"] = 4},
{["lv"] = 405011, ["offset"] = 288, ["type"] = 4},
}
qmxg = {
{["value"] = 501003070, ["offset"] = 336, ["type"] = 4},
}
xqmnb(qmnb)
end





function E()
menu1 = gg.multiChoice({
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
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then e13() end
if menu1[14] == true then e14() end
if menu1[15] == true then e15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end







function e1()

end



function e2()

end



function e3()

end



function e4()

end



function e5()

end



function e6()

end



function e7()

end



function e8()

end



function e9()

end



function e10()

end



function e11()

end



function e12()

end



function e13()

end



function e14()

end



function e15()

end



function Exit()
print("故")
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










