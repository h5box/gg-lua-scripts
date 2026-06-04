function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xsgnb(sgnb) gg.clearResults() gg.setRanges(sgnb[1]["memory"]) gg.searchNumber(sgnb[3]["value"], sgnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(sgnb[2]["name"] .. "开启失败") else gg.refineNumber(sgnb[3]["value"], sgnb[3]["type"]) gg.refineNumber(sgnb[3]["value"], sgnb[3]["type"]) gg.refineNumber(sgnb[3]["value"], sgnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(sgnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(sgnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + sgnb[v]["offset"] pysz[1].flags = sgnb[v]["type"] szpy = gg.getValues(pysz) pdpd = sgnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(sgnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(sgnb[2]["name"] .. "开启失败") end end end end
function Main()
SN = gg.multiChoice({
"超级范围",
"高挑防摔",
"完美透视",
"透视防闪",
"大厅午后防抖",
"地图变暗",
"秒开倍镜",
"全屏自瞄",
"头部范围",
"845绿色",
"全抢瞬击",
"大厅除草",
"人物加速不拉回",
"人物加速关闭",
"加速枪伤害",
"退出脚本"
}, nil, "交流Q群457675350")
if SN == nil then else
if SN[1] == true then a() end
if SN[2] == true then b() end
if SN[3] == true then c() end
if SN[4] == true then e() end
if SN[5] == true then f() end
if SN[6] == true then g() end
if SN[7] == true then h() end
if SN[8] == true then i() end
if SN[9] == true then j() end
if SN[10] == true then k() end
if SN[11] == true then A() end
if SN[12] == true then B() end
if SN[13] == true then C() end
if SN[14] == true then a1() end
if SN[15] == true then a2() end
if SN[16] == true then Exit() end
end XGCK = -1 end



function a()
sgnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "超级范围"},
{["value"] = 23, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 28, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 9.20161819458, ["offset"] = -28, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 300, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 300, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
}
xsgnb(sgnb)
end



function b()
sgnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "高挑防摔"},
{["value"] = 443, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 45, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 2000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 4, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
xsgnb(sgnb)
end

function c()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2.7610905e-39",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.7610905e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6444",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1.8368781e-40",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1.8368781e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6444",gg.TYPE_FLOAT)
gg.toast("完美透视")
end


function e()
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
gg.toast("透视防闪开启成功")
end


function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.786982e28;-3.7444097e28;-1.1368837e-13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.7444097e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后座开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("完美防抖开启成功🌴")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('90', gg.TYPE_FLOAT)
gg.toast("大厅聚点开启成功🌴")
end

function g()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.1400000006;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1400000006", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.5", gg.TYPE_FLOAT)
gg.toast("地图变暗成功")
end

function h()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("准心聚点🌹")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(55)
  gg.editAll("-9", gg.TYPE_FLOAT)
  gg.toast("秒开倍镜开启成功🌹")
  gg.clearResults()
gg.searchNumber("0.83333331347;1;0.83333331347::321", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.83333331347", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.000001", gg.TYPE_FLOAT)
gg.toast("秒切枪开启成功🌹")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.83333331347F;1.0F;0.83333331347F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.83333331347F;1.0F;0.83333331347F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.83333331347F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(8)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("捡枪开启成功🌹")
end

function i()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1090519040", gg.TYPE_DWORD)
gg.toast("强力自瞄开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("全图自瞄开启成功")
end


function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("230", gg.TYPE_FLOAT)
gg.toast("头部范围开启成功")
end

function k()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.00048875809;2;2.8141857e-40",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("4",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function A() 
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M416瞬击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500")
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AKM瞬击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M16A4瞬击开启成功")
end

function B()
 gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("10000;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("除草开启成功")
end


function C()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回开启")
end
 
 
function a1()
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
  gg.toast("全局加速不拉回已关闭")
end

function a2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M416伤害开启成功")
     gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("SC伤害开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500")
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AKM伤害开启成功")
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








