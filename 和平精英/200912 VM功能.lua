

---------功能首页(这里可以写你的主功能代码)-------
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
local test=gg.getRangesList('libUE4.so')
if test[1]==nil then gg.alert("启动失败，没有找到libUE4.so\n请尝试游戏内启动") os.exit() end
so=test[1].start
function yiyz_Main()
  SN = gg.multiChoice({
  "全枪无后子弹聚点(大厅开启)",
  "全枪防抖(大厅开启)",
  "全图除草(大厅开启)",
  "范围打击(大厅开启)",
  "全枪瞬击(大厅开启)",
  "全屏自瞄(大厅开启)",
  "一秒落地(大厅开启)",
  "人物地线(落地开启)",
  "跳伞飞天(开伞开启)",
  "载具加速(车上开启)",
  "上帝视角(落地开启)",
  "⚠️人物锁血+人物加速(落地满血开启)—⚠️不能上车下水⚠️独家功能",
"退出"
 }, nil, os.date "请务必配合VM全防脚本使用！")
    if SN == nil then  else
  if SN[1] == true then a() end
  if SN[2] == true then b() end
  if SN[3] == true then c() end
  if SN[4] == true then d() end
  if SN[5] == true then e() end
  if SN[6] == true then f() end
  if SN[7] == true then g() end
  if SN[8] == true then h() end
  if SN[9] == true then i() end
  if SN[10] == true then j() end
  if SN[11] == true then k() end
  if SN[12] == true then l() end
  if SN[13] == true then
  Exit() end end XGCK = -1 end
function a()
py3=0x1AACB1C
setvalue(so+py3,4,0)
gg.toast("无后开启完成")
end
function b()
py=0x37B4EF0
setvalue(so+py,4,0)
py2=0x112CAC8
setvalue(so+py2,4,0)
gg.toast("防抖开启完成")
end
function c()
py4=0x2357210
setvalue(so+py4,4,0)
gg.toast("除草开启完成")
end
function d()
py5=0x3779358
setvalue(so+py5,16,55)
gg.toast("范围开启完成")
end
function e()
py6=0x3420DE4
setvalue(so+py6,4,0)
gg.toast("瞬击开启完成")
end
function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("-1.0e10", gg.TYPE_FLOAT)
gg.toast("全屏自瞄开启成功")
end
function g()
qmnb = {
{["memory"] = 32},
{["name"] = "一秒落地"},
{["value"] = 3000.0, ["type"] = 16},
{["lv"] = 5000.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1024.0, ["offset"] = 8, ["type"] = 16},}
qmxg = {
{["value"] = 999999.0, ["offset"] = 0, ["type"] = 16},
{["value"] = 999999.0, ["offset"] = 4, ["type"] = 16},
{["value"] = 999999.0, ["offset"] = 8, ["type"] = 16},}
xqmnb(qmnb)
end
function h()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast("地线开启成功")
end
function i()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0.5;3000;5000;600:: ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1;600:: ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1;-9999", gg.TYPE_FLOAT)
	 gg.toast("跳伞飞天开启成功")
	 gg.clearResults()
end
function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1.123", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("车辆加速开启成功")
end
function k()
gg.clearResults()    
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("350", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启")
  end
function l()
    gg.clearResults()
    gg.searchNumber("1.0F;0.6;0.1;0.125::55", 16, false, 536870912, 0, -1)
    gg.searchNumber("1", 16, false, 536870912, 0, -1)
    gg.getResults(200)
    gg.editAll("99", 16)
    gg.toast("加速+锁血,不能上车，不能下水")
end
function Exit()
print(" ")
os.exit()
end
cs = " "



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    yiyz_Main()
  end
end