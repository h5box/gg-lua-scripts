function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '修改成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '修改失败') end end end end
function Main()
  SN =gg.multiChoice({
  "❤（登陆界面开）",
  "❤大厅开",
  "❤人物上色(出生岛)",
  "❤高彷人物隐身(配合弹穿,开始需要先开镜,开好关镜)",
  "🅰3.5范围头",
  "❤3.5范围甲",
  "❤全图除草",
  "❣️人物天线(修改版)",
  "❤微加速",
  "❤子弹全穿",
  "❤射速连发",
  "❤敌人变大(飞机上开)",
  "❤秒下地",
  "🖤天空变黑",
  "退出脚本"
 }, nil, " （荒野行动脚本）基本操作方法简单")
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
   i()
  end
  if SN[10] == true then
   j()
  end
    if SN[11] == true then
   k()
  end
    if SN[12] == true then
   l()
  end
      if SN[13] == true then
   z()
  end
      if SN[14] == true then
   x()
  end
  if SN[15] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("1.1E;0.5E;0.01E;0.1E;3.5E;0.5E;0.8E;0.1E;1.1E;0.1E;0.01E;0.1E;0.1E;0.1E;0.2E;0.5E;1.0E;1.5E;1.0E;1.0E:529", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.1", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("999999",gg.TYPE_DOUBLE)
  gg.toast("防封1开启中")
end




function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.8;0.1;1.1;3.5',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() ==0 then
gg.clearResults()
gg.toast("内存防封开启失败")
gg.clearResults()
else
gg.searchNumber('0.1',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll('999999', gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast("防封\n防拉回开启成功")
gg.clearResults()
end end



function c()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4923D;-1;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.99900001287", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(800)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("上色开启成功")
end



function d()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4.9e-324E;1,060,439,284D;1; 0.00999999978;0.70710682869;0.0078125E;1,065,353,216D::330", gg.TYPE_FLOAT)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("1", gg.TYPE_FLOAT)
    t = gg.getResults(10)
    t[1].value = "3"
    t[1].freeze = true
    print("addListItems: ", gg.addListItems(t))
    gg.toast("开启")
      gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("4.9e-324;5;-0.26;1.65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3.6", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
  end
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,323.22839355469;0.15;8962D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
zlsj = gg.getResults(1)
ZL = {}
ZL[1] = {}
ZL[1].address = zlsj[1].address - 20
ZL[1].flags = gg.TYPE_DWORD
IDZL = gg.getValues(ZL)[1].value
gg.toast("范围锁头第一步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(IDZL .. ";0.15F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("3.5范围锁头开启成功")
gg.clearResults()
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.21999999881;1D;1;0.1::57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
zlsj = gg.getResults(5)
ZL = {}
ZL[1] = {}
ZL[1].address = zlsj[1].address - 32
ZL[1].flags = gg.TYPE_DWORD
IDZL = gg.getValues(ZL)[1].value
gg.toast("范围锁甲第一步开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(IDZL .. ";0.1F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("3.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("3.5范围锁甲开启成功")
gg.clearResults()
end



function g()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("80;1;10;5126;11::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("除草成功")
gg.clearResults()
end



function h()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("-0.02063599974;0.01885999925;0.00770800002;1::512", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3000)
gg.editAll("1377",gg.TYPE_FLOAT)
gg.toast(" 人物天线")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("0.99966001511;-0.02609699965;0.02609699965;-0.00132599997;0.01718400046;-0.00394200021;1::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3000)
gg.editAll("1377", gg.TYPE_FLOAT)
gg.toast("人物天线开启成功")
end 


function i()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('4.9e-324;3.14;1.6;1.57;0.2;7',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('7',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('7.8', gg.TYPE_DOUBLE)
  gg.toast("微加速开启成功")
end




function j()
qmnb = {
{["memory"] = 16},
{["name"] = "子弹全穿"},
{["value"] = 16842752, ["type"] = 4},
{["lv"] = 16842753, ["offset"] = 28, ["type"] = 4},
{["lv"] = 16777217, ["offset"] = 48, ["type"] = 4},
{["lv"] = 16777473, ["offset"] = 72, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 48, ["type"] = 4},

}
xqmnb(qmnb)gg.clearResults()
end

function k()
gg.clearResults()
  gg.alert('开启此功能勿开秒换弹夹 不然卡弹夹')
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber('-1,090,500,752D;-0.50109004974F;1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('6000', gg.TYPE_FLOAT)
  gg.toast('开启成功')
end

function l()
gg.clearResults()
gg.alert("敌人变大")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.4E;0F;1.875F;1E;1.75F;1.5E::85')
gg.searchNumber('1',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll('3', gg.TYPE_DOUBLE)
gg.toast("开启成功")
gg.clearResults()
end


function z()
gg.clearResults()
 gg.toast("落地后会自动关闭")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("15,341.375F;1.0e-6E;1,000.0E::80",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
    if gg.getResultCount() == 0 then
    gg.toast("秒落地开启失败")
  else
  gg.searchNumber("1000", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1)
  gg.editAll("277",gg.TYPE_DOUBLE)
  t = gg.getResults(1)
    for Qx, v in ipairs(t) do
    t[Qx].value = "277"
  end
  gg.addListItems(t)
   gg.toast("开始")
end
gg.sleep(16000)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("15,341.375F;1.0e-6E;277E::80", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
    if gg.getResultCount() == 0 then
    gg.toast("秒落还原失败")
  else
  gg.searchNumber("277", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1)
  gg.editAll("1000",gg.TYPE_DOUBLE)
  gg.toast("成功")
end
end

function x()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0F;0.75F;-1.5F;2.0F;1.04999995232F;-0.03999999911F;127.0F;0.00392156886F:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_FLOAT)
gg.toast("天黑开启")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0F;0.75F;0.63779997826F;2.14560008049F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-9999", gg.TYPE_FLOAT)
gg.toast("天黑开启")
end


function Exit()
print("荒野行动脚本")
os.exit()
end
cs = "使用记得反馈"



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









