function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
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
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end

-----------------------------------------------------------------------------------------

function Main()
  SN = gg.multiChoice({
  "人车透视",
  "无后防抖",
  "人车上色",
  "全屏自瞄",
  "范围",
  "三倍视角",
  "吉普加速秒刹车",
  "近战自瞄",
  "退出脚本"
 }, nil, "山河远阔，人间烟火，无一是你无一不是你")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   Exit()
  end
end
  XGCK = -1
end


function a()
qmnb = {
{["memory"] = 1048576},
{["name"] = "马赛克"},
{["value"] = 1669660672, ["type"] = 4},
{["lv"] = 1669660689, ["offset"] = -40, ["type"] = 4},
{["lv"] = -2147483636, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 36, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "虚化"},
{["value"] = 1671790629, ["type"] = 4},
{["lv"] = 1670938662, ["offset"] = 8, ["type"] = 4},
{["lv"] = -2145644340, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 12, ["type"] = 4},

}
xqmnb(qmnb)
end




function b()
qmnb = {
{["memory"] = 16384},
{["name"] = "无后"},
{["value"] = 3.8023537e-36, ["type"] = 16},
{["lv"] = -5.7270163e27, ["offset"] = 124, ["type"] = 16},
{["lv"] = -2.786982e28, ["offset"] = 128, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 128, ["type"] = 16},

}
xqmnb(qmnb)
 qmnb = {
{["memory"] = 16384},
{["name"] = "防抖"},
{["value"] = -4.0163902e25, ["type"] = 16},
{["lv"] = -1.1144502e28, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 32, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防抖1"},
{["value"] = 8.5237615e-28, ["type"] = 16},
{["lv"] = -1.1144502e28, ["offset"] = 188, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 188, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "聚点"},
{["value"] = -6.1718715e27, ["type"] = 16},
{["lv"] = -5.7294418e27, ["offset"] = 4, ["type"] = 16},
{["lv"] = -1.1144502e28, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = 16, ["type"] = 16},

}
xqmnb(qmnb)
end


function c()
qmnb = {
{["memory"] = 1048576},
{["name"] = "人物绿色"},
{["value"] = 3.2749606e-40, ["type"] = 16},
{["lv"] = 2.046875, ["offset"] = 16, ["type"] = 16},
{["lv"] = 2, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 40, ["offset"] = 20, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "车辆上色"},
{["value"] = 102507, ["type"] = 4},
{["lv"] = 32770, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 5, ["offset"] = 32, ["type"] = 4},

}
xqmnb(qmnb)
end


function d()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全屏自瞄开启成功")
end



function e()
qmnb = {
{["memory"] = 32},
{["name"] = "范围"},
{["value"] = 9.20161819458, ["type"] = 16},
{["lv"] = 23, ["offset"] = 24, ["type"] = 16},
{["lv"] = 25, ["offset"] = 28, ["type"] = 16},
{["lv"] = 30.5, ["offset"] = 32, ["type"] = 16},
}
qmxg = {
{["value"] = 499, ["offset"] = 28, ["type"] = 16},
{["value"] = 499, ["offset"] = 32, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "范围"},
{["value"] = 90.4850692749, ["type"] = 16},
{["lv"] = 90.77570343018, ["offset"] = -384, ["type"] = 16},
{["lv"] = 16, ["offset"] = -372, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -372, ["type"] = 16},

}
xqmnb(qmnb)
end



function f()
qmnb = {
{["memory"] = 32},
{["name"] = "三倍视角"},
{["value"] = 3.3579315e-41, ["type"] = 16},
{["lv"] = 1, ["offset"] = 68, ["type"] = 16},
{["lv"] = 220, ["offset"] = 136, ["type"] = 16},
}
qmxg = {
{["value"] = 660, ["offset"] = 136, ["type"] = 16},

}
xqmnb(qmnb)
 end



function g()
qmnb = {
{["memory"] = 32},
{["name"] = "吉普加速"},
{["value"] = 0.76000005007, ["type"] = 16},
{["lv"] = 0.96078431606, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.74509805441, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 12, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16},
{["name"] = "秒刹车"},
{["value"] = 100, ["type"] = 16},
{["lv"] = 20, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 8, ["type"] = 16},

}
xqmnb(qmnb)
end



function h()
qmnb = {
{["memory"] = 16384},
{["name"] = "自瞄"},
{["value"] = -4.9605249e27, ["type"] = 16},
{["lv"] = -2.0291021e20, ["offset"] = 52, ["type"] = 16},
{["lv"] = 0.0001, ["offset"] = 68, ["type"] = 16},
}
qmxg = {
{["value"] = 999, ["offset"] = 68, ["type"] = 16},

}
xqmnb(qmnb)
end



function Exit()
print("满城烟雨玲小珑")
os.exit()
end
cs = "秋水共长天一色，落霞与孤鹜齐飞"



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









