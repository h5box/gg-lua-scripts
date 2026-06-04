gg.alert(os.date(" -------公告-----欢迎使用此脚本-\n脚本启动时间:\n%Y年%m月%d日%H时%M分%S秒"))
-------------------------------------------------------------请勿修改-----------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "浅鱼" .. xgsl .. "浅鱼") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."浅鱼") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."浅鱼") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "浅鱼" .. xgsl .. "浅鱼") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end AA="模板作者:浅鱼" function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("✨开启成功✨"..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("", false) return false end else gg.toast("") return false end end
---------------------------------------------------------------分界------------------------------------------------------------------------

bqt={"💷","💶","💴","💳","🧧","💰","💸","💎",}

function Main()
local sjbq= bqt[math.random(1,#bqt)]
SN =gg.multiChoice({
sjbq.."一键防闪"..sjbq,--1
sjbq.."一键防封"..sjbq,--2
sjbq.."无限赚钱"..sjbq,--3
sjbq.."逃追秒赢"..sjbq,--4
sjbq.."稳定上分"..sjbq,--5
sjbq.."逃追任务"..sjbq,--6
sjbq.."稳定功能"..sjbq,--7
sjbq.."特殊功能"..sjbq,--8
sjbq.."变态功能"..sjbq,--9
sjbq.."皮卡改物"..sjbq,--10
sjbq.."独家功能"..sjbq,--11
sjbq.."自调功能"..sjbq,--12
sjbq.."变态功能2"..sjbq,--13
sjbq.."12号脚本"..sjbq,--14
sjbq.."退出脚本"..sjbq,--15
 }, nil,os.date"作者QQ：3479118680")
  if SN == nil then
  else
  if SN[1] == true then
    a1()
  end
  if SN[2] == true then
   a2()
  end
   if SN[3] == true then
    a3()
  end
   if SN[4] == true then
    a4()
  end
   if SN[5] == true then
    a5()
  end
   if SN[6] == true then
    a6()
  end
   if SN[7] == true then
    a7()
  end
   if SN[8] == true then
    a8()
  end
   if SN[9] == true then
    a9()
  end
   if SN[10] == true then
    a10()
  end
   if SN[11] == true then
    a11()
  end
     if SN[12] == true then
    a12()
  end
       if SN[13] == true then
    a13()
  end
  if SN[14] == true then
    a14()
  end
  if SN[15] == true then
  gg.setVisible(true)
os.exit()   
  end
end
  XGCK = -1
end

------------------------------------------------------------------分界-------------------------------------------------------------------
function a1()
qmnb = {
{["memory"] = 16},
{["name"] = "防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end

------------------------------------------------------------------分界-------------------------------------------------------------------


function a2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("防封1开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("防封2开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("防封开启一局一开")
  gg.clearResults()
end

------------------------------------------------------------------分界-------------------------------------------------------------------

function a3()
menu1 = gg.multiChoice({
"4v1开锁无限赚钱",--1
"8v2开锁无限赚钱",--2
"️返回主页️",--3
}, nil, os.date("秒开锁，可以无限赚钱，稳定功能自建房专用，上分拉闸"))
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end


------------------------------------------------------------------分界---------------------------------------------------------------------

function a4()
menu1 = gg.multiChoice({
"逃生秒赢",--1
"追捕秒赢",--2
"️返回主页️",--3
}, nil, os.date("上分千万别用，用了自动退出不管我的事"))
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end


  function c1()
    nc_offset(getso("libil2cpp.so"),{{-476052414,4,0xBD26D4},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xBD26D8},})
    nc_offset(getso("libil2cpp.so"),{{-486537216,4,0xD45258},})
    nc_offset(getso("libil2cpp.so"),{{-301987312,4,0xD4525C},})
    nc_offset(getso("libil2cpp.so"),{{-289928512,4,0xD45260},})
    nc_offset(getso("libil2cpp.so"),{{-300938736,4,0xD45264},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD45268},})
    nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x19BC0BC},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BC0C0},})
    nc_offset(getso("libil2cpp.so"),{{-486539256,4,0x19BF114},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BF118},})
    nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1BA5284},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1BA5288},})
  end



  function c2()
    nc_offset(getso("libil2cpp.so"),{{-476052414,4,0xBD26D4},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xBD26D8},})
    nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xD45258},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD4525C},})
    nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x19BC0BC},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BC0C0},})
    nc_offset(getso("libil2cpp.so"),{{-476053484,4,0x19BE1BC},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BE1C0},})
    nc_offset(getso("libil2cpp.so"),{{-476053484,4,0x19BE76C},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BE770},})
    nc_offset(getso("libil2cpp.so"),{{-476053494,4,0x19BEE40},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BEE44},})
  end
  
  

------------------------------------------------------------------分界-------------------------------------------------------------------


function a2()
gg.alert("必须在大厅开启")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("防封1开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("防封2开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("防封开启一局一开")
  gg.clearResults()
end

------------------------------------------------------------------分界-------------------------------------------------------------------


function a5()
menu1 = gg.multiChoice({
	"3.8倍移速",
	"开锁加速",
	"高跳",
	"概率开锁",
	"穿墙",
	"跳跃移动开物",
	"超级透视",
	"逃生秒赢",
	"追捕秒赢",
	"视野范围",
	"稳定奥博功能",
	"😀",
	"😀",
	"😀",
	"😀",
	"防封1",
	"防封2",
	"防封3",
	"防封4",
	"防封5",
	"防封6",
	"返回主页",
}, nil, os.date("源：YG，不算我抄吧"))
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
if menu1[16] == true then d16() end
if menu1[17] == true then d17() end
if menu1[18] == true then d18() end
if menu1[19] == true then d19() end
if menu1[20] == true then d20() end
if menu1[21] == true then d21() end
if menu1[22] == true then d22() end
if menu1[23] == true then HHNB() end
end
GLWW=-1
end

function d1()
qmnb = {
{["memory"] = 32},
{["name"] = "3.8倍移速[开启]"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d2()
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function d3()
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.900000095367432,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d4()
qmnb = {
{["memory"] = 32},
{["name"] = "概率"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function d5()
qmnb = {
{["memory"] = 32},
{["name"] = "穿墙"},
{["value"] = -10.0, ["type"] = 16},
{["lv"] = 49.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 999999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d6()--跳跃移动开物
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x159e290},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x159e294},})
end

function d7()--超级透视
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xD4EE1C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD4EE20},})
end	

  function d8()
    nc_offset(getso("libil2cpp.so"),{{-476052414,4,0xBD26D4},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xBD26D8},})
    nc_offset(getso("libil2cpp.so"),{{-486537216,4,0xD45258},})
    nc_offset(getso("libil2cpp.so"),{{-301987312,4,0xD4525C},})
    nc_offset(getso("libil2cpp.so"),{{-289928512,4,0xD45260},})
    nc_offset(getso("libil2cpp.so"),{{-300938736,4,0xD45264},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD45268},})
    nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x19BC0BC},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BC0C0},})
    nc_offset(getso("libil2cpp.so"),{{-486539256,4,0x19BF114},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BF118},})
    nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1BA5284},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1BA5288},})
  end



  function d9()
    nc_offset(getso("libil2cpp.so"),{{-476052414,4,0xBD26D4},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xBD26D8},})
    nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xD45258},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD4525C},})
    nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x19BC0BC},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BC0C0},})
    nc_offset(getso("libil2cpp.so"),{{-476053484,4,0x19BE1BC},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BE1C0},})
    nc_offset(getso("libil2cpp.so"),{{-476053484,4,0x19BE76C},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BE770},})
    nc_offset(getso("libil2cpp.so"),{{-476053494,4,0x19BEE40},})
    nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19BEE44},})
    gg.toast("作者借用秒赢追捕已开启")
  end
  
function d10()
qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function d11()
qmnb = {
{["memory"] = 32},
{["name"] = "减少逃生血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -20, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -24, ["type"] = 16},
}
qmxg={
{["value"] = 1, ["offset"] = -20, ["type"] = 16},
{["value"] = 1, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "机械之心范围+伤害＋免费"},
{["value"] = 3.799999952316284, ["type"] = 16},
{["lv"] = 3.0,["offset"] =-20, ["type"] = 16},
}
qmxg = {
{["value"] = 99,["offset"] =-20, ["type"] = 16},
{["value"] = 1,["offset"] =68, ["type"] = 16},
{["value"] = 0,["offset"] =-0x8C, ["type"] = 4},
}
xqmnb(qmnb)
end

function d12()
gg.alert("必须在大厅开启")
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,060,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,359,296", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,097,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,621,440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8,650,752", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4,194,304", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,835,008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("Xa锁定成功\n自动清理代码")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(8)
end




function d13()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1572864;6291456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1572864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1572864;6291456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6291456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("内部逃跑防开启成功")
gg.clearResults()

end



function d14()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("21,530,208", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
end





function d15()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("79,560,711", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封")
	 gg.clearResults()
end




function d16()
 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.6533968e33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("防检测")
	 gg.clearResults()
end


------------------------------------------------------------------分界-------------------------------------------------------------------

function a6()--完成任务
qc=gg.alert("秒完成任务","逃生","追捕")
if qc==1 then 
qmnb = {
{["memory"] = 32},
{["name"] = "独家逃生任务完成"},
{["value"] = 27023, ["type"] = 4},
{["lv"] = 5, ["offset"] = 20, ["type"] = 4},
{["lv"] = 30, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = -984, ["type"] = 4},
{["value"] = 9999, ["offset"] = -912, ["type"] = 4},
{["value"] = 9999, ["offset"] = -840, ["type"] = 4},
{["value"] = 9999, ["offset"] = -768, ["type"] = 4},
{["value"] = 9999, ["offset"] = -696, ["type"] = 4},
{["value"] = 9999, ["offset"] = -624, ["type"] = 4},
{["value"] = 9999, ["offset"] = -552, ["type"] = 4},
{["value"] = 9999, ["offset"] = -480, ["type"] = 4},
{["value"] = 9999, ["offset"] = -408, ["type"] = 4},
{["value"] = 9999, ["offset"] = -336, ["type"] = 4},
{["value"] = 9999, ["offset"] = -264, ["type"] = 4},
{["value"] = 9999, ["offset"] = -192, ["type"] = 4},
{["value"] = 9999, ["offset"] = -120, ["type"] = 4},
{["value"] = 9999, ["offset"] = -48, ["type"] = 4},
{["value"] = 9999, ["offset"] = 24, ["type"] = 4},
{["value"] = 9999, ["offset"] = 96, ["type"] = 4},
{["value"] = 9999, ["offset"] = 168, ["type"] = 4},
{["value"] = 9999, ["offset"] = 240, ["type"] = 4},
{["value"] = 9999, ["offset"] = 312, ["type"] = 4},
{["value"] = 9999, ["offset"] = 384, ["type"] = 4},
{["value"] = 9999, ["offset"] = 456, ["type"] = 4},
{["value"] = 9999, ["offset"] = 528, ["type"] = 4},
{["value"] = 9999, ["offset"] = 600, ["type"] = 4},
{["value"] = 9999, ["offset"] = 672, ["type"] = 4},
{["value"] = 9999, ["offset"] = -1092, ["type"] = 4},
{["value"] = 9999, ["offset"] = -1020, ["type"] = 4},
{["value"] = 9999, ["offset"] = -984, ["type"] = 4},
{["value"] = 9999, ["offset"] = -912, ["type"] = 4},
{["value"] = 9999, ["offset"] = -840, ["type"] = 4},
{["value"] = 9999, ["offset"] = -768, ["type"] = 4},
{["value"] = 9999, ["offset"] = -696, ["type"] = 4},
{["value"] = 9999, ["offset"] = -624, ["type"] = 4},
{["value"] = 9999, ["offset"] = -552, ["type"] = 4},
{["value"] = 9999, ["offset"] = -480, ["type"] = 4},
{["value"] = 9999, ["offset"] = -408, ["type"] = 4},
{["value"] = 9999, ["offset"] = -336, ["type"] = 4},
{["value"] = 9999, ["offset"] = -264, ["type"] = 4},
{["value"] = 9999, ["offset"] = -192, ["type"] = 4},
{["value"] = 9999, ["offset"] = -120, ["type"] = 4},
{["value"] = 9999, ["offset"] = -48, ["type"] = 4},
{["value"] = 9999, ["offset"] = 24, ["type"] = 4},
{["value"] = 9999, ["offset"] = 96, ["type"] = 4},
{["value"] = 9999, ["offset"] = 168, ["type"] = 4},
{["value"] = 9999, ["offset"] = 240, ["type"] = 4},
}
xqmnb(qmnb)
end   
if qc==2 then 
qmnb = {
{["memory"] = 32},
{["name"] = "独家追捕任务完成"},
{["value"] = 27042, ["type"] = 4},
{["lv"] = 10, ["offset"] = 20, ["type"] = 4},
{["lv"] = 100, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = -768, ["type"] = 4},
{["value"] = 9999, ["offset"] = -696, ["type"] = 4},
{["value"] = 9999, ["offset"] = -624, ["type"] = 4},
{["value"] = 9999, ["offset"] = -552, ["type"] = 4},
{["value"] = 9999, ["offset"] = -480, ["type"] = 4},
{["value"] = 9999, ["offset"] = -408, ["type"] = 4},
{["value"] = 9999, ["offset"] = -336, ["type"] = 4},
{["value"] = 9999, ["offset"] = -264, ["type"] = 4},
{["value"] = 9999, ["offset"] = -192, ["type"] = 4},
}
xqmnb(qmnb)
end
end

function Exit()
os.exit()
end
cs = ""


------------------------------------------------------------------分界-------------------------------------------------------------------

function a7()
menu1 = gg.multiChoice({
"逃生秒赢",
"逃生秒赢[360]",
"三倍开锁[通用]",
"人物加速[通用]",
"完美开锁[通用]",
"人物明透[通用]",
"范围锁门[通用]",
"️返回主页️",
}, nil, os.date("稳定功能,上榜拉闸"))
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end





function e1()
nc_offset(getso("libil2cpp.so"),{{-476052413,4,0xb83ba8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xb83bac},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd7030c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70310},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xd73364},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd73368},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xdd5758},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xdd575c},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b2db28},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b2db2c},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x187951C},})
end

function e2()
nc_offset(getso("libil2cpp.so"),{{-476052413,4,0xb83b98},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xb83b9c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd702fc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd70300},})
nc_offset(getso("libil2cpp.so"),{{-476053484,4,0xd73354},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd73358},})
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0xdd570c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xdd5710},})
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1b2d9c8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b2d9cc},})
nc_offset(getso("libil2cpp.so"),{{0,4,0x187942C},})
end

function e3()
qmnb = {
{["memory"] = 32},
{["name"] = "三倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function e4()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "人物加速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function e5()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function e6()
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "人物明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function e7()
fastsearch({{1.2999999523162842, 16, 32}, {1.2999999523162842, 4, 16}, {1.0, 8, 16}}, {{5, 0, 16, false}, {5, 4, 16, false}})
end


------------------------------------------------------------------分界-------------------------------------------------------------------

function a8()
menu1 = gg.multiChoice({
"解锁人物皮肤",
"解锁模式",
"解锁道具皮肤",
"解锁道具",
"解锁道具风格",
"全皮肤",
"修改段位",
"️返回主页️",
}, nil, os.date("不知道能不能用"))
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then f7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function f1()--角色全皮肤
qc=gg.alert("解锁角色全皮肤","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xe8c6e8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xe8c6ec},})
end     
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xe8c6e8},})
nc_offset(getso("libil2cpp.so"),{{-494030820,4,0xe8c6ec},})
end
end

function f2()--解锁模式
qc=gg.alert("解锁自建房","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x19c26fc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19c2700},})
end     
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382,908,176,4,0x19c26fc},})
nc_offset(getso("libil2cpp.so"),{{-494,030,832,4,0x19c2700},})
end
end

function f3()--道具皮肤
qc=gg.alert("解锁全皮肤","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x19065e0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19065e4},})
end     
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0x19065e0},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0x19065e4},})
end
end

function f4()--解锁道具
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x18f6c48},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x18f6c4c},})
end

function f5()--解锁风格
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x19069cc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19069d0},})
end

function f6()--全角色
qc=gg.alert("全角色","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xe9be08},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xe9be0c},})
end     
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xe9be08},})
nc_offset(getso("libil2cpp.so"),{{-494030820,4,0xe9be0c},})
end
end

function f7()--修改段位
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-36,4,false}},4,32,"开启成功")
readWrite({{false,900001,0,4,nil,nil},{910001,4,4},{0,8,4}},{{99999,-44,4,false}},4,32,"开启成功")
end


------------------------------------------------------------------分界-------------------------------------------------------------------

function a9()
menu1 = gg.multiChoice({
"道具等级[大厅]",
"血包范围[局内]",
"手雷范围[局内]",
"飞爪速度[局内]",
"飞爪全屏[局内]",
"治疗无敌[局内]",
"时光范围[局内]",
"针改无敌[局内]",
"时光改buff[局内]",
"恢复血包",
"血包改艾可技能",
"血包改隐身",
"️返回主页️",
}, nil, os.date("自测，肯定不稳定"))
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then g4() end
if menu1[5] == true then g5() end
if menu1[6] == true then g6() end
if menu1[7] == true then g7() end
if menu1[8] == true then g8() end
if menu1[9] == true then g9() end
if menu1[10] == true then g10() end
if menu1[11] == true then g11() end
if menu1[12] == true then g12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end

------------------------------------------------------------------分界-------------------------------------------------------------------

function g1()
	gg.clearResults()
	gg.setRanges(gg.REGION_ANONYMOUS)
	gg.searchNumber("501900;1~30;1~13;1~13;1~13;1~13;1~13;1~13::400", gg.TYPE_DWORD)
	gg.getResults(100000)
	zm = gg.prompt({
		i = "请输入你想要改的道具等级"
	}, {i = ""})
	gg.editAll(zm.i, gg.TYPE_DWORD)
	gg.toast("重新查看即可")
end

function g2()
fastsearch({{-0.25, 16, 32}, {200.0, 24, 16}, {1.2000000476837158, 32, 16}, {3.0, 36, 16}, {0.20000000298023224, 40, 16}}, {{3, 32, 16, false}})
end

function g3()
fastsearch({{-0.25, 16, 32}, {1000.0, 24, 16}, {2.0, 32, 16}, {2.5, 36, 16}, {0.20000000298023224, 40, 16}}, {{3, 32, 16, false}})
end

function g4()
gg.setRanges(32)
--速度
local tb1={ 
{["类型"] =  16 ,["主特征码"] =  10.0 } , 
{["类型"]=  16  ,["偏移"]=  4  ,["副特征码"]= 4.0},
{["类型"]=  16  ,["偏移"]=  8  ,["副特征码"]= 0.6000000238418579},
}

 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] =  9999  } , 
} LongTao(tb1, tb2)
end

function g5()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] =  6.699999809265137 } , 
{["类型"]=  16  ,["偏移"]=  -8  ,["副特征码"]= 0.699999988079071},
}

 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] =  9999  } , 
} LongTao(tb1, tb2)
end

function g6()
gg.setRanges(32)
local tb1={ 
{["类型"] =  16 ,["主特征码"] =  24.0 } , 
{["类型"]=  16  ,["偏移"]=  4  ,["副特征码"]=  8.0},
{["类型"]=  16  ,["偏移"]=  -4  ,["副特征码"]=  0.30000001192092896},
}

 local tb2={ 
 {["类型"] =  16 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] = -99  } , 
} LongTao(tb1, tb2)
end

function g7()
fastsearch({{131072.0, 16, 32}, {3.0, -64, 16}, {66, 4, 4}}, {{780, -64, 16, false}, {68, 4, 4, false}})
end

function g8()
qmnb = {
{["memory"] = 32},
{["name"] = "针改无敌"},
{["value"] = 108, ["type"] = 4},
{["lv"] = 1120403456,["offset"] =4, ["type"] = 4},
{["lv"] = 10,["offset"] =8, ["type"] = 4},
{["lv"] = 0,["offset"] =12, ["type"] = 4},
}
qmxg = {
{["value"] = 107,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end

function g9()
m=gg.prompt({"请输入要改的buff代码(输入在此处,下面的框不用管)",[[追捕无敌107
boss无敌300
boss吸血301
疾跑103
跳高102
针攻速108
暴走111
护盾206]]})
fastsearch({{2100000000,16,32},{547, -0x4, 4}},{{m[1], -0x4, 4}})
end

function g10()
qmnb = {
{["memory"] = 32},
{["name"] = "恢复血包"},
{["value"] = 875573550, ["type"] = 4},
{["lv"] = 200,["offset"] =0x4, ["type"] = 4},
{["lv"] = 0,["offset"] =0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 401,["offset"] =0xC, ["type"] = 4,["freeze"] = false},
}
xqmnb(qmnb)
end

function g11()
qmnb = {
{["memory"] = 32},
{["name"] = "血包改艾可技能"},
{["value"] = 875573550, ["type"] = 4},
{["lv"] = 200,["offset"] =0x4, ["type"] = 4},
{["lv"] = 0,["offset"] =0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 10003,["offset"] =0xC, ["type"] = 4,["freeze"] = false},
}
xqmnb(qmnb)
end

function g12()
qmnb = {
{["memory"] = 32},
{["name"] = "血包改隐身"},
{["value"] = 875573550, ["type"] = 4},
{["lv"] = 200,["offset"] =0x4, ["type"] = 4},
{["lv"] = 0,["offset"] =0x8, ["type"] = 4},
}
qmxg = {
{["value"] = 1015,["offset"] =0xC, ["type"] = 4,["freeze"] = false},
}
xqmnb(qmnb)
end

------------------------------------------------------------------分界-------------------------------------------------------------------

function a10()
menu1 = gg.multiChoice({
"皮卡改霸王龙",
"皮卡改苍龙",
"皮卡改迅猛龙",
"皮卡改剑龙",
"皮卡改三角龙",
"皮卡改翼龙",
"霸王龙攻击无间隔加伤害和范围",
"剑龙攻击无间隔",
"三角龙攻击无间隔加伤害",
"️返回主页️",
}, nil, os.date("泛滥了"))
if menu1 == nil then else
if menu1[1] == true then h1() end
if menu1[2] == true then h2() end
if menu1[3] == true then h3() end
if menu1[4] == true then h4() end
if menu1[5] == true then h5() end
if menu1[6] == true then h6() end
if menu1[7] == true then h7() end
if menu1[8] == true then h8() end
if menu1[9] == true then h9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end


------------------------------------------------------------------分界-------------------------------------------------------------------
  function h1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500014", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500015", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500013", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500012", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500011", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500010", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,077,936,128;99;1;1,077,936,128:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,077,936,128;99;1,077,936,128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;9999999;1,232,348,144", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,088,421,888;20;1;1,065,353,216:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,088,421,888", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function h9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1,069,547,520;35;1;1,065,353,216:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,069,547,520;35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;999999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

------------------------------------------------------------------分界-------------------------------------------------------------------


function a11()
menu1 = gg.multiChoice({
"皮卡改奥特曼",--1
"奥特曼无限激光无限时间",--2
"️返回主页️",--3
}, nil, os.date("不会封号，自建房、打排位都能用必须使用原版皮卡，先开第一个，过段时间再开第二个"))
if menu1 == nil then else
if menu1[1] == true then i1() end
if menu1[2] == true then i2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

------------------------------------------------------------------分界-------------------------------------------------------------------

function i1()
gg.setRanges(32)
gg.clearResults()
gg.searchNumber(500002,4)
gg.getResults(500)
b=gg.editAll(50050001,4)
gg.toast("修改了"..b.."条地址")
end


function i2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("12;16;3::9",16)
gg.searchNumber(3,16)
h=gg.getResults(5000)
for ho=1,#h do
gg.addListItems({{address=h[ho].address+0x50,flags=4,value=1,freeze=true}})
gg.addListItems({{address=h[ho].address+0x70,flags=16,value=999,freeze=true}})
end
end

------------------------------------------------------------------分界-------------------------------------------------------------------
function a12()
menu1 = gg.multiChoice({
"★开锁[自调]★",
"★移速[自调]★",
"★高跳[自调]★",
"★视野范围[自调]★",
"★全局加速[开启][自调]★",
"★医疗箱范围[自调]★",
"★手榴弹范围[自调]★",
"★手榴弹伤害[自调]★",
"★自身血量[自调]★",
"★开补给箱夹子速度[自调]★",
"★部分武器连发[开启][自调]★",
"️☆返回主页️☆",
}, nil, os.date("直接搬运😁😁"))
if menu1 == nil then else
if menu1[1] == true then k1() end
if menu1[2] == true then k2() end
if menu1[3] == true then k3() end
if menu1[4] == true then k4() end
if menu1[5] == true then k5() end
if menu1[6] == true then k6() end
if menu1[7] == true then k7() end
if menu1[8] == true then k8() end
if menu1[9] == true then k9() end
if menu1[10] == true then k10() end
if menu1[11] == true then k11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function k1()--开锁[自调]
local fy=gg.prompt({"开锁[自调]"}, {[1] = 3}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function k2()--移速[自调]
local fy=gg.prompt({"移速[自调]"}, {[1] = 3.8}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function k3()--高跳[自调]
local fy=gg.prompt({"高跳[自调]"}, {[1] = 6.8}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function k4()--视野范围[自调]
local fy=gg.prompt({"视野范围[自调]"}, {[1] = 15}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 10.0,["offset"] =-0x14, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function k5()--全局加速[开启][自调]
local fy=gg.prompt({"全局加速[开启][自调]"}, {[1] = 1.2}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 4},
{["name"] = "全局加速[开启]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end



function k6()--医疗箱范围[自调]
local fy=gg.prompt({"医疗箱范围[自调]"}, {[1] = 1.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function k7()--手榴弹范围[自调]
local fy=gg.prompt({"手榴弹范围[自调]"}, {[1] = 2.3}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function k8()--手榴弹伤害[自调]
local fy=gg.prompt({"手榴弹伤害[自调]"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end



function k9()--自身血量[自调]
local fy=gg.prompt({"自身血量[自调]"}, {[1] = 1200}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "自身血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-20, ["type"] = 16},
{["value"] = fy[1],["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end



function k10()--开补给箱夹子速度[自调]
local fy=gg.prompt({"开补给箱夹子速度[自调]"}, {[1] = 1}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开补给箱夹子速度"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 5.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end



function k11()--部分武器连发[开启][自调]
local fy=gg.prompt({"部分武器连发[开启][自调]"}, {[1] = 100}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[开启]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end


function Exit()
os.exit()
end
cs = ""

------------------------------------------------------------------分界-------------------------------------------------------------------

function a13()
menu1 = gg.multiChoice({
"锁金币",
"锁道具",
"移动开物",
"攻🐔吸血",
"反弹伤害",
"火箭筒改100发子弹",
"无间隔",
"锁子弹",
"道具无CD",
"杀队友",
"免费购物",
"不死",
"倒地丢道具",
"超级移速",
"已删除此功能",
"武器秒杀",
"锁定变身",
"裁判模式",
"直接开门",
"无后座",
"全武器间隔",
"子弹穿墙",
"无视架子",
"无限金币",
"追捕救人",
"无视buff",
"秒开三锁",
"全图踩架",
"亮透",
"丝血不死",
"a内存全武器无间隔",
"吸人",
"共享透视",
"开门秒逃",
"武器射速",
"开炮加速",
"额外伤害",
"️返回主页️",
}, nil, os.date("泛滥了，不稳定，大部分功能大厅开，太肝了"))
if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then j9() end
if menu1[10] == true then j10() end
if menu1[11] == true then j11() end
if menu1[12] == true then j12() end
if menu1[13] == true then j13() end
if menu1[14] == true then j14() end
if menu1[15] == true then j15() end
if menu1[16] == true then j16() end
if menu1[17] == true then j17() end
if menu1[18] == true then j18() end
if menu1[19] == true then j19() end
if menu1[20] == true then j20() end
if menu1[21] == true then j21() end
if menu1[22] == true then j22() end
if menu1[23] == true then j23() end
if menu1[24] == true then j24() end
if menu1[25] == true then j25() end
if menu1[26] == true then j26() end
if menu1[27] == true then j27() end
if menu1[28] == true then j28() end
if menu1[29] == true then j29() end
if menu1[30] == true then j30() end
if menu1[31] == true then j31() end
if menu1[32] == true then j32() end
if menu1[33] == true then j33() end
if menu1[34] == true then j34() end
if menu1[35] == true then j35() end
if menu1[36] == true then j36() end
if menu1[37] == true then j37() end
if menu1[38] == true then HOME() end
end
GLWW=-1
end

------------------------------------------------------------------分界-------------------------------------------------------------------
function j1()--锁金币
qc=gg.alert("锁金币","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd3e60c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd3e610},})
end     
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0xd3e60c},})
nc_offset(getso("libil2cpp.so"),{{-494030820,4,0xd3e610},})
end
end

function j2()--锁道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1b7fd8c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1b7fd90},})
end

function j3()--移动开物
qc=gg.alert("移动开物","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x11b8170},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x11b8174},})
end
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382906384,4,0x11b8170},})
nc_offset(getso("libil2cpp.so"),{{-494030820,4,0x11b8174},})
end
end

function j4()--攻击吸血
nc_offset(getso("libil2cpp.so"),{{-476052411,4,0x179fb1c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179fb20},})
end

function j5()--反弹伤害
nc_offset(getso("libil2cpp.so"),{{-482082700,4,0x17a040c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17a0410},})
end

function j6()--基扯改子弹
qc=gg.alert("武器子弹100","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053404,4,0x155b6d0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x155b6d4},})
end
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x155b6d0},})
nc_offset(getso("libil2cpp.so"),{{-494030824,4,0x155b6d4},})
end
end

function j7()--无间隔
qc=gg.alert("超级无间隔","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x179F960},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179F964},})
end
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x179F960},})
nc_offset(getso("libil2cpp.so"),{{-494030824,4,0x179F964},})
end
end

function j8()--锁子弹
qc=gg.alert("超级锁弹夹","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x155e698},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x155e69c},})
end     
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x155e698},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x155e69c},})
end
end

function j9()--道具无CD
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xed471c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xed4720},})
end

function j10()--杀队友
qc=gg.alert("猎杀队友","开启","关闭")
if qc==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("65797968;-382,907,376;-494,030,840::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382907376;-494030840", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-476053503;-516948194", gg.TYPE_DWORD)
	 gg.toast("猎杀队友")
	 gg.clearResults()
end  
if qc==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("65797968;-476053503;-516948194::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-476053503;-516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382907376;-494030840", gg.TYPE_DWORD)
	 gg.toast("猎杀队友")
	 gg.clearResults()
end
end

function j11()--免费购物
qc=gg.alert("超级免费购物","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xD2D1DC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD2D1E0},})
end     
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908176,4,0xD2D1DC},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0xD2D1E0},})
end
end

function j12()--不死
qc=gg.alert("超级不死","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x179e638},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179e63c},})
end
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382907408,4,0x179e638},})
nc_offset(getso("libil2cpp.so"),{{-494030824,4,0x179e63c},})
end
end

function j13()--倒地丢道具
qc=gg.alert("倒地复活","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xEC8BCC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xEC8BD0},})
end
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382907280,4,0xEC8BCC},})
nc_offset(getso("libil2cpp.so"),{{-494030832,4,0xEC8BD0},})
end
end

function j14()--超级移速
qc=gg.alert("超级移速","开启","关闭")
if qc==1 then
nc_offset(getso("libil2cpp.so"),{{-476052417,4,0x179f8bc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179f8c0},})
end     
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x179f8bc},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x179f8c0},})
end
end

function j15()--武器秒杀
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x17a3218},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17a321c},})
end


function j17()--无限变身时间
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x15c5f7c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x15c5f80},})
end

function j18()--裁判模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x19b86bc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19b86c0},})
end

function j19()--直接开门
qc=gg.alert("强制开启逃生门","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1BA5284},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1BA5288},})
end
if qc==2 then 
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0x1BA5284},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0x1BA5288},})
end
end

function j20()--无后
qc=gg.alert("超级无后座","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{1,16,0x15652E8},})
end     
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{0.001,16,0x15652E8},})
end
end

function j21()--全武器间隔
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x155b65c},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x155b660},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x1568558},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x156855c},})
end

function j22()--子弹穿墙
nc_offset(getso("libil2cpp.so"),{{-476052416,4,0x15641bc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x15641c0},})
end

function j23()--无视架子
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x179ff34},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179ff38},})
end     

function j24()--无限金币
nc_offset(getso("libil2cpp.so"),{{-471858942,4,0xed4c64},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xed4c68},})
end     

function j25()--追捕救人
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x19bc590},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19bc594},})
end

function j26()--无视buff
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x179e124},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179e128},})
end     

function j27()--秒开三锁
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x179e124},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x179e128},})
end     

function j28()--全图踩架
qc=gg.alert("全图踩架","开启","关闭")
if qc==1 then 
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("74732764;-382907280;-494030832::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-382907280;-494030832", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-476053503;-516948194", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end  
if qc==2 then  
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("74732764;-476053503;-516948194::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-476053503;-516948194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-382907280;-494030832", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
end

function j29()--亮透
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x12e11dc},})
end

function j30()--丝血不死
qc=gg.alert("丝血不死","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xd4ec98},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4ec9c},})
end     
if qc==2 then 
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd4ec98},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0xd4ec9c},})
end
end

function j31()--a内存全武器无间隔
local t = {"libil2cpp.so", "Cd"}
local tt = {0x1FC648, 0x5C, 0x120, 0x84, 0x5C}
local ttt = S_Pointer(t, tt)
gg.addListItems({{address = ttt, flags = 4, value = 0, freeze = true}})
end

function j32()--吸人
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1398950},})
end

function j33()--共享透视
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x19c10cc},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x19c10d0},})
end

function j34()--开门秒逃
qc=gg.alert("开门秒逃","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0xd4e5d4},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xd4e5d8},})
end     
if qc==2 then
nc_offset(getso("libil2cpp.so"),{{-382908368,4,0xd4e5d4},})
nc_offset(getso("libil2cpp.so"),{{-494030840,4,0xd4e5d8},})
end
end

function j35()--武器射速
qc=gg.alert("武器射速","开启","关闭")
if qc==1 then 
nc_offset(getso("libil2cpp.so"),{{10,16,0x1b707e0},})
end     
if qc==2 then  
nc_offset(getso("libil2cpp.so"),{{0,16,0x1b707e0},})
end
end


function j36()--开炮加速
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x17a292c},})
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x17a2930},})
end

function j37()--额外伤害
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x10c397c},})
end

------------------------------------------------------------------分界-------------------------------------------------------------------

function a14()
menu1 = gg.multiChoice({
	 "防闪",--1
	 "无间隔 (大厅开)",--2
	 "锁子弹 (大厅开)",--3
	 "暗透视 (大厅开)",--4
	 "3倍开锁",--5
	 "完美开锁",--6
	 "秒开锁(刷青铜开)",--7
	 "道具无冷却 (大厅开)",--8
	 "免费购买 (大厅开)",--9
	 "死亡扔东西 (大厅开)",--10
	 "解锁道具皮肤 (大厅开)",--11
	 "解锁模式 (大厅开)",--12
	 "角色全皮 (大厅开)",--13
	 "皮卡改霸王龙",--14
	 "延迟 开",--15
	 "延迟 关",--16
	 "迪迦奥特曼技能9999",--17
	 "二级火箭筒9999连发",--18
	 "手雷全屏",--19
	 "10亿钻石",--20
	 "1级改999级",--21
	 "回到主页",--22
}, nil,("12号公告，无间隔只能稳到钻石，此脚本永久免费"))
if menu1 == nil then else
if menu1[1] == true then l1() end
if menu1[2] == true then l2() end
if menu1[3] == true then l3() end
if menu1[4] == true then l4() end
if menu1[5] == true then l5() end
if menu1[6] == true then l6() end
if menu1[7] == true then l7() end
if menu1[8] == true then l8() end
if menu1[9] == true then l9() end
if menu1[10] == true then l10() end
if menu1[11] == true then l11() end
if menu1[12] == true then l12() end
if menu1[13] == true then l13() end
if menu1[14] == true then l14() end
if menu1[15] == true then l15() end
if menu1[16] == true then l16() end
if menu1[17] == true then l17() end
if menu1[18] == true then l18() end
if menu1[19] == true then l19() end
if menu1[20] == true then l20() end
if menu1[21] == true then l21() end
if menu1[22] == true then HOME() end
end
GLWW=-1
end

----------------------------------------------------------------分界-------------------------------------------------------------------


function l1()--防闪
gg.alert("记得快手关注一下12号")
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("842084353", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999999", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("842084353", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999999", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("842084353", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999999", gg.TYPE_DWORD)
gg.toast("防闪开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function l2()--无间隔
nc_offset(getso("libil2cpp.so"),{{-476052716,4,0x1745B0C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1745B10},})
end

function l3()--锁子弹
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x153AD74},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x153AD78},})
end

function l4()--超级透视
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xD89E6C},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xD89E70},})
end

function l5()--3倍锁
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function l6()--完美开锁
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function l7()--秒开一切[逃]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("5", FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
end

function l8()--道具无CD
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xE2C1B0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xE2C1B4},})
end

function l9()--免费购物
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xE2C874},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xE2C878},})
end

function l10()--倒地丢道具
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xE209EC},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xE209F0},})
end

function l11()--道具皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x18AED84},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x18AED88},})
end

function l12()--解锁模式
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0xDA4580},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xDA4584},})
end

function l13()--角色全皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x16A34A0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x16A34A4},})
end

function l14()
gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70500014", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function l15()--延迟[开启]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("666", FLOAT)
gg.toast("延迟开启成功")
gg.clearResults()
end
end

function l16()--延迟[关闭]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("666", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1000", FLOAT)
gg.toast("延迟关闭成功")
gg.clearResults()
end
end

function l17()
gg.setRanges(32)
gg.clearResults()
gg.searchNumber("12;1.5;3;1.5",16)
gg.searchNumber(12,16)
q=gg.getResults(500)
for k=1,#q do
gg.addListItems({{address=q[k].address+0x58,flags=4,value=100,freeze=true}})
end

end

function l18()--部分武器100连发
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器100连发"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

function l19()
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹微范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 999,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function l20()
mx= gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})
  if mx == nil then else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.searchNumber( mx[1] , gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    if gg.getResultCount() >= 300 then gg.alert("修改不了了.你账号有风险")os.exit()end
    gg.getResults(100)
    gg.editAll("999999999",gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
    gg.toast("修改成功")
    gg.clearResults()
  end
end

function l21()--1级改9999级
gg.alert("所有道具必须是初始皮肤")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end



----------------------------------------------------------------分界-------------------------------------------------------------------

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

