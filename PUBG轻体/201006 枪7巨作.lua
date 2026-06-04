
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
e7sj="220"
e1sj="25;30.5"
e9sj="55"
e8sj="8196"
function Main()
menu = gg.choice({
'轻体功能区',
'退出脚本'},
nil,'交流群：1103251295')
if menu == 1 then A() end
if menu == 2 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'无后',
'聚点',
'自定义视角',
'除草树',
'瞬间落地(飞机)',
'自定义红点倍数',
'SCAR-M416开火速度开',
'开火速度关',
'命中效果增强',
'吉普蹦蹦加速',
'加速关闭',
'子弹穿墙开',
'子弹穿墙关',
'98K瞬击',
'M24瞬击',
'AWM瞬击',
'全图除草',
'秒开倍镜开',
'秒开倍镜关',
'加速专区',
'加速恢复',
'吉普飞天(坐车)',
'轿车飞天(坐车)',
'骁龙4系列通用',
'人物上色',
'变态自瞄',
'天线',
'路飞',
'范围',
'返回'},
nil,'部分来源于网络')
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
if menu1[30] == true then HOME() end
end
GLWW=-1
end











function a1()
qmnb = {
{["memory"] = 8},
{["name"] = "全局午后"},
{["value"] = -6196952597921662448, ["type"] = 32},
{["lv"] = -1228926272664233280, ["offset"] = -4, ["type"] = 32},
}
qmxg = {
{["value"] = -1228926276669014016, ["offset"] = -4, ["type"] = 32},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖已成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖已成功")
end

function a2()
qmnb = {
{["memory"] = 8},
{["name"] = "全局聚点"},
{["value"] = -1288018490030810559, ["type"] = 32},
{["lv"] = -1292522025222927872, ["offset"] = 8, ["type"] = 32},
}
qmxg = {
{["value"] = -1387800268334956544, ["offset"] = 12, ["type"] = 32},
}
xqmnb(qmnb)
end

function a3()
menu3 = gg.choice({
    "视角修改",
    "视角还原",
    "返回"
  })
  if menu3 == 1 then
    op1()
  end
  if menu3 == 2 then
    op2()
  end
  if menu3 == 3 then
    HOME()
  end
  GLWW = -1   
end

function op1()
  st = gg.prompt({
    "上帝视角修改（正常为220  第一人称为-50）"
  }, {"600"})
  if st ~= nil then
 gg.clearResults()
 gg.setRanges(32)
 gg.searchNumber(e7sj..";25;178", 16, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber(e7sj, 16, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll(st[1], 16)
 e7sj=st[1]
 gg.toast("上帝视角修改成功")
  end
end

function op2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(e7sj..";25;178", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(e7sj, 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("220", 16)
  e7sj="220"
  gg.toast("上帝视角还原成功")
end



function a4()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1F;2,139,095,040D::20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("除草开启失败，开启除新草方案")
a17()
else
gg.searchNumber("1", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", 16)
gg.toast("除草树") 
end
end




function a5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=200000
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=200000
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=200000
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=200000
gg.setValues(setvalues)
gg.toast("瞬间落地已成功")
end
end
end
end
end




function a6()
menu2 = gg.choice({
    "红点倍数加深",
    "倍数还原",
    "返回"
  })
  if menu2 == 1 then
    sj1()
  end
  if menu2 == 2 then
    sj2()
  end
  if menu2 == 3 then
    HOME()
  end
  GLWW = -1   
end



function sj1()
  st = gg.prompt({
    "倍数加深（正常为55 改小变大 ）"
  }, {"600"})
  if st ~= nil then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber(e9sj..";60;1.9618179e-44", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(e9sj, 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(st[1], 16)
    e9sj=st[1]
    gg.toast("倍数修改成功")
  end
end



function sj2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(e9sj..";60;1.9618179e-44", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(e9sj, 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("55", 16)
  e9sj="55"
  gg.toast("还原成功")
end


function a7()
  gg.clearResults() 
  gg.setRanges(32) 
  gg.searchNumber("0.08600000292", 16, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(100) 
  gg.editAll("0.04600000292", 16) 
  gg.toast("M4射速已开启") 
  gg.clearResults() 
  gg.setRanges(32) 
  gg.searchNumber("0.09600000083", 16, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(100) 
  gg.editAll("0.05300000083", 16) 
  gg.toast("Scar射速已开启") 
end 


function a8()
gg.clearResults() 
gg.setRanges(32) 
gg.searchNumber("0.04600000292", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100) 
gg.editAll("0.08600000292", 16) 
gg.toast("M4射速已关闭") 
gg.clearResults() 
gg.setRanges(32) 
gg.searchNumber("0.05300000083", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100) 
gg.editAll("0.09600000083", 16) 
gg.toast("Scar射速已关闭") 
end 


function a9()
gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10;45", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1009)
    gg.editAll("9999", 16)
    gg.toast("击杀特效")
end


function a10()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("50;5;0.01::", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.30", 16)
  gg.toast("全车加速已开启")
end

function a11()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("50;5;-0.3::", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.3", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", 16)
  gg.toast("全车加速以成功关闭")
end




function a12()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("1.0e-7;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.toast("子弹穿墙注入完毕")
end



function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("1.0e-7;1;-10", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-10", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("2", 16)
  gg.toast("退出注入")
end


function a14()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("76000;1.89999997616;1.70000004768", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.89999997616;1.70000004768", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.toast("98k加快射速开启成功")
end



function a15()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("79000;1.79999995232;1.70000004768", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.toast("M24加快射数开启成功")
end

function a16()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("91,000.0F;2.29999995232F;1.79999995232F:512", 16, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("2.29999995232F;1.79999995232F:512", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.toast("AWM秒射开启成功")
end

function a17()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("4,590,068,740,425,724,723",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("4,590,068,742,429,853,100",32)
qmnb = {
{["memory"] = 16384},
{["name"] = "全图除草"},
{["value"] = -2123974960349970432, ["type"] = 32},
{["lv"] = -1.3620439e28, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast('全图除草已成功')
end

function a18()
qmnb = {
{["memory"] = 32},
{["name"] = ""},
{["value"] = 4575657222461362012, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = 4575657224647475200, ["offset"] = 0, ["type"] = 32},
}
xqmnb(qmnb)
end


function a19()
qmnb = {
{["memory"] = 32},
{["name"] = ""},
{["value"] = 4575657222461362012, ["type"] = 32},
{["lv"] = 1065353216, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = 4575657222461362012, ["offset"] = 0, ["type"] = 32},
}
xqmnb(qmnb)
end

--function a20()
--gg.clearResults()
--gg.setRanges(8)
--gg.searchNumber("-1,296,621,004,581,303,606", 32,false,gg.SIGN_EQUAL,0, -1)
--gg.getResults(10)
--gg.editAll("-1,296,621,008,567,926,784",32)
--gg.clearResults()
--gg.setRanges(32)
--gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::", 16,false,gg.SIGN_EQUAL,0, -1)
--gg.searchNumber("1", 16,false,gg.SIGN_EQUAL,0,-1)
--gg.getResults(1000)
--gg.editAll("3",16)
--gg.toast("开启成功")
--end
function a20()
menu6 = gg.choice({
    "加速自动开启",
    "一键防拉回",
    "加速源码复制手动修改",
    "返回"},
nil,'A内存F类改善1 改3 手动速度快')
  if menu6 == 1 then
    op4()
  end
   if menu6 == 2 then
    op6()
    end
  if menu6 == 3 then
    op5()
  end
  if menu6 == 4 then
    A()
end
GLWW = -1   
end

function op4()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1,296,621,004,581,303,606", 32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,296,621,008,567,926,784",32)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::", 16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", 16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("3",16)
gg.toast("开启成功")
end

function op5()
gg.copyText('50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::')
end
 
function op6()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1,296,621,004,581,303,606", 32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1,296,621,008,567,926,784",32)
end
function a21()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;3F;1,065,353,216D::", 16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", 16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",16)
gg.toast("开启成功")
end
function a22()
gg.toast("来源国体众生 开启较久请耐心等待")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("45F;15F;20F;2500F", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", 16)
  gg.clearResults()
  gg.toast("吉普飞天")
end

function a23()
gg.toast("来源国体众生 开启较久请耐心等待")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.72727274895;0.34377467632;1::9", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;16;49;22050::13", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", 19, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("500", 16)
  gg.clearResults()
  gg.toast("轿车飞天")
  end


function a24()
qmnb = {
{["memory"] = 1048576 | 131072},
{["name"] = "偏移透视"},
{["value"] = 537151744, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 116, ["type"] = 4},
}
qmxg = {
{["value"] = 1123024896, ["offset"] = 116, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576 | 131072},
{["name"] = "马赛克"},
{["value"] = -2146888784, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 72, ["type"] = 4},
}
qmxg = {
{["value"] = 1123024896, ["offset"] = 72, ["type"] = 4},
}
xqmnb(qmnb)
end

function a25()
qmnb = {
{["memory"] = 1048576 | 131072},
{["name"] = "靓仔"},
{["value"] = 271515653, ["type"] = 4},
{["lv"] = 8196, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1194380040, ["offset"] = 12, ["type"] = 4},
{["lv"] = 278139027, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 2, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end
function a26()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber('-528,482,303;-308,344,315;-309,323,264;-476,053,504;-290,186,560;-286,131,696;-1,023,410,175:25',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-476,053,504',4,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-476,053,503',4)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("360;0.0001;1478828288", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", 16)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1905726136855492093", 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-1905726136855492092", 32)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11)
gg.editAll("-1901891198902075392", 32)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("2015175168", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",16)
--gg.clearResults()
--gg.setRanges(8)
--gg.searchNumber("0.0001;1478828288::", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.getResults(100)
--gg.editAll("180", 16)
qmnb = {
{["memory"] = 8},
{["name"] = "持枪圈圈"},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
gg.toast("持枪圈圈注入完毕")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("360;0.0001;1478828288", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", 16)
--gg.clearResults()
--gg.setRanges(8)
--gg.searchNumber("0.0001;1478828288::", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.searchNumber("0.0001", 16, false, gg.SIGN_EQUAL, 0, -1)
--gg.getResults(100)
--gg.editAll("180", 16)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("2015175168", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
qmnb = {
{["memory"] = 8},
{["value"] = -3.8256458e28, ["type"] = 16},
{["lv"] = -3.7444097e28, ["offset"] = 8, ["type"] = 16},
{["lv"] = -2.8053577e28, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = 16},
}
gg.toast("全屏自瞄成功")
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("2015175168", 16,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0",16)
gg.toast("近战自瞄")
end
function a27()
gg.clearResults() 
gg.setRanges(32) 
gg.searchNumber("0.9378669858F;1.0F;0.61365610361F::55", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("1", 16, false, 536870912, 0, -1) 
gg.getResults(100) 
gg.editAll("9999", 16) 
gg.toast("开启成功") 
end
function a28()
gg.clearResults() 
gg.setRanges(32) 
gg.searchNumber("2,810,246,175,001,347,936", 32, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(30) 
gg.editAll("2,810,246,172,909,699,072", 32) 
gg.toast("真伤路飞开启成功") 
end

function a29()
menu2 = gg.choice({
    "范围修改",
    "范围还原",
    "返回首页"
  })


  if menu2 == 1 then
    ys1()
  end
  if menu2 == 2 then
    ys2()
  end
  if menu2 == 3 then
    HOME()
  end
  GLWW = -1
  

    

end




function ys1()
  st = gg.prompt({
    "范围大小修改数值"
  }, {"450"})
  if st ~= nil then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("9.201618;"..e1sj, 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(e1sj, 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll(st[1], 16)
    e1sj=st[1]
    gg.toast("头部范围更改成功")
  end
end

function ys2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("9.201618;"..e1sj, 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(e1sj, 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30.5", 16)
  e1sj="30.5"
  gg.toast("注入范围还原成功")
end



function Exit()
print("交流群：1103251295")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '交流群：1103251295'
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



----------------------------分割线----------------------------
function D() bb ={} if bb == gx1 then else   gxjb={} if gxjb==1 then  goto exit else if gxjb==2 then  gg.fullName = gg.getFile() gg.path = gg.fullName:gsub("[^/]+$","") gg.name = gg.fullName:match ("[^/]+$") gg.randomName = "" gg.outPath = gg.path file = gg.outPath .. "[XEY]" .. gg.name .. gg.randomName .. ""                os.remove(gg.getFile(),"w")             gg.outFile = io.open(file, "w")       gg.outFile:write(gg.makeRequest(gx2).content)    gg.outFile:close()            goto exit else goto exit end end end while(true) do end ::exit:: FGCFYGFDGGD={XEYAFVGJBG} end D() 
----------------------------防反编译----------------------------
bb ={} if bb == gx1 then else   gxjb={} if gxjb==1 then  goto exit else if gxjb==2 then  gg.fullName = gg.getFile() gg.path = gg.fullName:gsub("[^/]+$","") gg.name = gg.fullName:match ("[^/]+$") gg.randomName = "" gg.outPath = gg.path file = gg.outPath .. "[XEY]" .. gg.name .. gg.randomName .. ""                os.remove(gg.getFile(),"w")             gg.outFile = io.open(file, "w")       gg.outFile:write(gg.makeRequest(gx2).content)    gg.outFile:close()            goto exit else goto exit end end end while(true) do end ::exit:: 
----------------------------防跳过更多----------------------------
if string.gsub(string.gsub(io.open("/data/user/0/"..string.match(gg.EXT_FILES_DIR,"data/(.-)/").."/shared_prefs/"..string.match(gg.EXT_FILES_DIR,"data/(.-)/").."_preferences.xml"):read("*a") , "-", "") , tostring(string.char(34)), ""):match("history-sticked") ~=nil then  gg.alert("脚本：检测到您非法启动脚本")  os.exit() end
----------------------------防狗TC拦截器----------------------------
local file=io.input(gg.FILES_DIR:sub(1,-6).."shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"):read("*a") local a1=file:gsub(tostring(string.char(34)), "")  local b1=a1:match(string.char(104,105,115,116,111,114,121,37,45).."0"..string.char(62,40,46,45,41,60)) if b1~=gg.getFile() then while true do  gg.alert("小鳄鱼：检测到您有拦截行为") os.exit() end end 
----------------------------防反编译防拦截----------------------------
function LS(content)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end assert(type(content)=="") local temp={} local result={} local i=1 local ends=0 for i=1, #lines do if string.find(lines[i],"") then table.insert(temp,lines[i]) ends=ends+1 elseif string.find(lines[i],"") or string.find(lines[i],"") or string.find(lines[i],"") then ends=ends+1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end elseif string.find(lines[i],"") then ends=ends-1 if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end if ends==0 and #temp~=0 then table.insert(result,temp) temp={} end else if #temp==0 then table.insert(result,lines[i]) else table.insert(temp,lines[i]) end end end return result end function Split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function GetAssignment(content) return string.match(content,"") end function isSetGlobals(content) if string.find(content,"") then return true end if string.find(content,"") then return false end return false end function FilteSpec(content) local spec="" for ia=1,string.len(spec) do local suba=""..string.sub(spec,ia,ia) content=(string.gsub(content,""..string.sub(spec,ia,ia),suba)) end return content end function Replace(content,locals) if isSetGlobals(content) then return content end local _i=0 local _v=0 for _i,_v in pairs(locals) do content=(string.gsub(content,_i,FilteSpec(tostring(_v)))) end return content end function process(flines) local spots={} local funnames={} local result="" for i=1, #flines do if type(flines[i])=="" then if flines[i]~="" then name,value=GetAssignment(flines[i]) if name~=nil then if string.find(value,"") then spots[name]=nil result=result..flines[i].."" else spots[name]=Replace(value,spots) end elseif string.find(flines[i],"") then result=result..flines[i].."" local localss=string.match(flines[i],"") local tlocals=Split(localss,",") for j=1,#tlocals do spots[string.match(tlocals[j],"")]="" end else result=result..(Replace(flines[i],spots)).."" end end elseif type(flines[i]=="") then if i~=#flines then if flines[i][1]~=nil and type(flines[i][1]=="") then local funspot=string.match(flines[i][1],"") local funname= string.match(flines[i+1],""..funspot.."") if funname~=nil then flines[i][1]=(string.gsub(flines[i][1],funspot,FilteSpec(funname))) flines[i+1]="" end result=result..process(flines[i]).."" end end end end return result end function raw(s) for w in string.gmatch(s, "") do s=string.gsub(s,""..w,string.char(w),1) end return s end function LO(ina,out)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end file=io.open(ina,"") script=file:read("") file:close() lines=Split(script,"") flines=LS(lines) unraw=process(flines) file=io.open(out,"") file:write(unraw) file:close() final=raw(unraw) file=io.open(out,"") file:write(final) file:close() end function LOO(ina)  local _FOR_=function() return _FOR_ end local _ENV=function() return _ENV end local _UPVALUE0_=function() return _UPVALUE0_ end LO(ina,ina) end  ggg = {} for k, v in pairs(gg) do   ggg[k] = v end
----------------------------防修改器拦截（检测更多）----------------------------
b="/data/user/0/" a=gg.EXT_FILES_DIR c="/shared_prefs/" d="_preferences.xml" e=string.match(a,"data/(.-)/") t=io.open(b..e..c..e..d):read("*a") x=string.gsub(t, "-", "") m=string.gsub(x, tostring(string.char(34)), ""):match("history0>(.-)<") if m~=gg.getFile() then gg.alert("脚本：检测到您非法启动脚本")  os.exit() end 
----------------------------全方面防函数拦截----------------------------
function XEY() local SSS = function(code) local res = ""   for i in ipairs(code) do res = res..string.char(code[i]) end  return res end if tostring(_ENV.gg):match(SSS({229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134})) then while(true) do   gg.alert("脚本：检测到您非法启动脚本")     os.exit() end else   for k in(tostring(_ENV):gmatch(SSS({229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134}))) do     if k ~= gg.getFile() then while(true) do       gg.alert("脚本：检测到您非法启动脚本")       os.exit() end 	end   end end  if debug.traceback == nil or gg.getFile == nil then while(true) do  gg.alert("脚本：检测到您非法启动脚本")   os.exit() end end for j in tostring(debug.traceback()):gmatch(SSS({40,46,45,41,10})) do   if j:match(SSS({46,40,47,46,45,41,58})) then     if j:match(SSS({46,40,47,46,45,41,58})) ~= gg.getFile() then while(true) do       gg.alert("脚本：检测到您非法启动脚本")       os.exit() end     end   end end local f = io.open(gg.FILES_DIR:match("^(.*/)([^/]*)$").."shared_prefs/"..gg.PACKAGE.."_preferences.xml", "r") if not f then while(true) do   gg.alert("脚本：检测到您非法启动脚本")   os.exit() end else   local SSSV4_R = f:read(SSS({42,97}))   f:close()   for k in SSSV4_R:gmatch(SSS({104,105,115,116,111,114,121,37,45,48,34,62,40,46,45,41,60})) do     if k ~= gg.getFile() then while(true) do       gg.alert("脚本：检测到您非法启动脚本")       os.exit() end     end   end end end
----------------------------防SSH，SR拦截器----------------------------
local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "S")      local level = 1    for i = 2,2 do   load(" Skr ")  end     local ogg=1   while true do     local info = debug.getinfo(level, "Sl")   if not info or  string.format("%s",   info.short_src, info.currentline)==  gg.getFile()then break end   os.exit()   end    log = string.rep("    ",976999)     local GGinfo = debug.getinfo(gg.getFile, "S")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")       local GGinfo = debug.getinfo(gg.getFile, "Sl")     local GGinfo = debug.getinfo(gg.getFile, "Sl")  while true do       local info = debug.getinfo(gg.getFile, "Sl")  if  (string.format("%s",  info.short_src, info.currentline))== "getFile" then break end  os.exit()  end 
----------------------------修改器拦截刷文件----------------------------
function AA(bytes,result1,result2) for i=1,15000 do local bytesa=load(bytes) end end function BB() local dataArr={'40000','0000000'} for index,value in pairs(dataArr) do bytes =  tonumber(value) AA(bytes,result1,result2) end end BB()
----------------------------分割线----------------------------
function hook()    if gg.getFile() ~= string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134)))) then    while true do      print((string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))))))      print(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))      load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()      load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()      os.exit()      for abb = 1, 100000 do  load("LuaR\000\000\004\004\004\b\000\025�\000\000\000\000\000\000\000\000\000\001\002\000\000\000\005\000@\000\006\000@@\a\000\000�A\001\000@\029\000�\000\031\000\000\000\003\004\000\000\000\003gg\000\004\000\000\000\006toast\000\004\000\000\000\025XEYXEY\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000", (math.random(10000, 99999)))    end  end   end  end  if 0 < #string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21) then   while true do      print((string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21)))      print(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))    load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()    load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()      os.exit()    for abbb = 1, 100000 do        load("LuaR\000\000\004\004\004\b\000\025�\000\000\000\000\000\000\000\000\000\001\002\000\000\000\005\000@\000\006\000@@\a\000\000�A\001\000@\029\000�\000\031\000\000\000\003\004\000\000\000\003gg\000\004\000\000\000\006toast\000\004\000\000\000\025XEYXEY\000\000\000\000\000\000\000\000\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000", (math.random(10000, 99999)))    end    end  end  for i = 1, 0 do    print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)  for ii = 1, 1 do    print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)    for iii = 1, 2 do      print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)      for iiii = 1, 3 do        print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)        for iiiii = 1, 4 do          print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)          for iiiiii = 1, 5 do            print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)            for iiiiiii = 1, 6 do              print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)              for iiiiiiii = 1, 7 do                print(i + ii + iii + iiii + iiii + iiiii + iiiiii + iiiiiii + iiiiiiii)                end            end          end        end      end    end    end   end   function hook()    if gg.getFile() ~= string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134)))) then    while true do      print((string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))))))      print(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))      load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()      load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()      os.exit()      for abb = 1, 100000 do  load("LuaR\000\000\004\004\004\b\000\025�\000\000\000\000\000\000\000\000\000\001\002\000\000\000\005\000@\000\006\000@@\a\000\000�A\001\000@\029\000�\000\031\000\000\000\003\004\000\000\000\003gg\000\004\000\000\000\006toast\000\004\000\000\000\025ZPXEY\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000", (math.random(10000, 99999)))    end  end   end  end  if 0 < #string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21) then  while true do    print((string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21)))    print(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))    load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()    load(string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134))()    os.exit()    for abbb = 1, 100000 do      load("LuaR\000\000\004\004\004\b\000\025�\000\000\000\000\000\000\000\000\000\001\002\000\000\000\005\000@\000\006\000@@\a\000\000�A\001\000@\029\000�\000\031\000\000\000\003\004\000\000\000\003gg\000\004\000\000\000\006toast\000\004\000\000\000\025XEY\000\000\000\000\000\000\000\000\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000", (math.random(10000, 99999)))    end  end  end   
----------------------------卡顿防御----------------------------
hunxiao1=string.rep("X",99999) hunxiao=string.rep(hunxiao1,10) for i=1,1 do gg.searchNumber(hunxiao..hunxiao..hunxiao..hunxiao,gg.TYPE_DWORD) end FILE = gg.getFile() file = io.open(gg.getFile():gsub("/[^/]+$", "") .. "/[Ohook]" .. gg.getFile():gsub(gg.getFile():gsub("/[^/]+$", "") .. "/", "") .. ".log", "r") if file ~= nil then file:close() os.remove(gg.getFile():gsub("/[^/]+$", "") .. "/[Ohook]" .. gg.getFile():gsub(gg.getFile():gsub("/[^/]+$", "") .. "/", "") .. ".lua") os.exit() alert() end   XEY ="" i=""  print(i) for i=1,1 do end i=""function hook()   if gg.getFile() ~= string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134)))) then     while true do print((string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134)))))) print("")     load(" ")     load("") print("")  os.exit() for _FORV_3_ = 1, 1 do   load("XEY", (math.random(10000, 99999))) end     end   end end if 0 < #string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21) then   while true do     print((string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21)))     print("")     load(" ")     load("")  os.exit()     for _FORV_3_ = 1, 1 do load("XEY", (math.random(10000, 99999)))     end   end end 
----------------------------分割线----------------------------






