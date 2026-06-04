
------------------------------------

--苍天已死,
--黄天当立。
--岁在甲子，
--天下大吉。

------------------------------------


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




-----------------------------------------------------------------------------------------

function Main()
  SN =gg.multiChoice({
  "♛大厅无后(全局)",
  "♛大厅防抖(全局)",
  "♛大厅自瞄(全局)",
  "♛大厅聚点(全局)",
  "♛大厅范围(全局)",
  "♛大厅除草(全局)",
  "♛落地高跳(一局一开)",
  "♛落地功能一键开启(一局一开)",
  "♛路飞持枪(一局一开)",
  "♛吉普加速",
  "♛上帝模式",
  "♛地皮上色",
  "♞均衡上色",
  "♞通用上色",
  "♞高清上色",
  "♞屏幕上色",
  "♞两倍加速",
  "♞子弹穿墙",
  "♞待更新",
  "♞待更新",
  "♞待更新",
  "✔待更新",
  "✔待更新",
  "✔待更新",
  "✘退出脚本(感谢)"
 }, nil, "作者:包子 欢迎加入开黑QQ群:113221700")
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
    x()
  end
  if SN[9] == true then
    a1()
  end
  if SN[10] == true then
    a2()
  end
  if SN[11] == true then
    a3()
  end
  if SN[12] == true then
    a4()
  end
  if SN[13] == true then
    a5()
  end
  if SN[14] == true then
    a6()
  end
  if SN[15] == true then
    a7()
  end
  if SN[16] == true then
    a8()
  end
  if SN[17] == true then
    a9()
  end
  if SN[18] == true then
    b1()
  end
  if SN[19] == true then
    b2()
  end
  if SN[20] == true then
    b3()
  end
  if SN[21] == true then
    b4()
  end
  if SN[22] == true then
    b5()
  end
  if SN[23] == true then
    b6()
  end
  if SN[24] == true then
    b7()
  end
  if SN[25] == true then
   Exit()
  end
end
  XGCK = -1
end


function a()
     gg.clearResults()
     
gg.setRanges(gg.REGION_C_DATA)
     gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     
gg.getResults(1)
     gg.editAll('0', gg.TYPE_FLOAT)
     gg.toast("无后座开启成功")
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启一半")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('全局镜防抖已开启（不支持关闭）')
end


function c()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("50%")
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1901891198734303227", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", gg.TYPE_QWORD)
gg.toast("70%")
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1901891198734303227", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", gg.TYPE_QWORD)
gg.toast("提示:自瞄值入成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("自瞄开启成功")
end


function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-5.72943947e27;-1.42393328e28::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5.72943947e27;-1.42393328e28::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪聚点开启成功")
end



function e()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.4850692749F;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("范围打击开启成功！")
end




function f()
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "已开启,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
    qmnb = {
    {["memory"] = gg.REGION_ANONYMOUS},
    {["name"] = "大厅仅除草"},
    {["value"] = 29806, ["type"] = gg.TYPE_DWORD},
    {["lv"] = 7630437, ["offset"] = 40, ["type"] = gg.TYPE_DWORD},
    {["lv"] = 1633907556, ["offset"] = 64, ["type"] = gg.TYPE_DWORD},}
  qmxg = {{["value"] = 1936942449, ["offset"] =140 , ["type"] = gg.TYPE_DWORD}, }
  xqmnb(qmnb)
  gg.toast("大厅除草已开启(不支持关闭)")
end



function g()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("2750", gg.TYPE_FLOAT)
  gg.toast("高跳防摔已开启.")
       gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("3.5032462e-44F;10.0F;40F;45.0F",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
     gg.searchNumber("10",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
     gg.getResults(100)
     gg.editAll("9999",gg.TYPE_FLOAT)
     gg.toast("跳跃翻墙开启成功")
end



function x()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-8.3358201e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-8.3358201e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.toast("50%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("537,071,648A;537,149,454A;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("透视开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("通用放闪开启成功")
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1194330629, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194363656, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
     gg.clearResults()
     gg.setRanges(gg.REGION_CODE_APP)
     gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(2)
     gg.editAll("1998", gg.TYPE_FLOAT)
     gg.toast("鸡腿自瞄开启成功")
       gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(30)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast('骨灰盒子天线已开启 全局有效')
     	 gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(10)
     gg.editAll("300", gg.TYPE_FLOAT)
     gg.toast("范围伤害第一步开启成功")
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResultCount()
     gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(10)
     gg.editAll("300", gg.TYPE_FLOAT)
     gg.toast("范围伤害第二步开启成功")
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("-1000", gg.TYPE_FLOAT)
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("-1000", gg.TYPE_FLOAT)
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("-1000", gg.TYPE_FLOAT)
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("-1000", gg.TYPE_FLOAT)
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("-1000", gg.TYPE_FLOAT)
     gg.toast("全身范围开启成功")
       gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("16123", gg.TYPE_FLOAT)
  gg.toast("脖子天线已开启")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("-9999999", gg.TYPE_FLOAT)
gg.toast("地下天线开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("M416成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("AKM成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("M16A4成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("M762成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("M24成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("98k成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("900000", gg.TYPE_FLOAT)
gg.toast("AWM成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("VSS瞬击开启成功")
    gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("0.05499718338;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("88996", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("6.95975875854", gg.TYPE_FLOAT)
  gg.toast("5.56子弹天线已开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("7.1689529418945", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.4779739379883", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("3,005,0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("0.73620933294296", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.searchNumber("5.26217222214", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.34858703613", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("3.10485887527", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("3级+8倍天线已开启")
end


function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38787841797;0.53869867325;0.61770325899;13.27982902527:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("280", gg.TYPE_FLOAT)
  gg.toast("下蹲路飞已开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("18.38614463806;0.53446578979", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("230", gg.TYPE_FLOAT)
  gg.toast("趴下路飞已开启")
end


function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("吉普加速开启成功")
end



function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("600", gg.TYPE_FLOAT)
  gg.toast("上帝模式已开启")
end


function a4()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1194346761, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194347275, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function a5()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 536889864, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194380047, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function a6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("538,968,080A;538,968,081A;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("开启成功")
end


function a7()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1081081861, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194380048, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function a8()
qmnb = {
{["memory"] = 1048576},
{["name"] = "上色"},
{["value"] = 2, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = -2124414974, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end


function a9()
     gg.clearResults()
     gg.setRanges(gg.REGION_ANONYMOUS)
     gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(500)
     gg.editAll("1.123", gg.TYPE_FLOAT)
     gg.toast("人物2倍加速开启成功")
end


function b1()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-10", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("子弹穿墙已开启")
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('814313567D;2F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("子弹穿墙开启")
end
  
  
function b2()

end



function b3()

end



function b4()

end



function b5()

end



function b6()

end



function b7()

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








