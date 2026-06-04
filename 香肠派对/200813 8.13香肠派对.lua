function B()
SN =gg.multiChoice({
     "天线",
	 "背包",
	 "自慰隐身",
	 "机甲变身无冷却和机甲无限喷",
	 "无限资源(注：部分机型可能会无效果请见谅)",
	 "环境异常解决第一步",
	 "环境异常解决第二步",
	 "秒救人",
	 "圣剑",
	 "飞高高",
	 "抓拉钩",
	 "龙焰无CD",
	 "火球范围加免伤",
	 "变大蘑菇",
	 "加速(胆小别用)",
	 "内存防封",
	 "上路飞自调",
	 "枪皮肤(大厅或训练营开)",
	 "天空黑色",
	 "子弹穿墙",
	 "透视",
	 "遁地(人物必须站着)",
	 "无后",
	 "无限子弹",
	 "上色",
	 "人物范围",
	 "新天线",
	 "二段跳穿墙",
	 "锁头",
	 "子弹打击范围远,
	 "透视(麒麟专版)",
	 "退出脚本"
}, nil,"快猫易鹏制作")
if SN == nil then else
if SN[1] == true then a()  end
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
if SN[13] == true then m() end
if SN[14] == true then n() end
if SN[15] == true then o() end
if SN[16] == true then p() end
if SN[17] == true then q() end
if SN[18] == true then r() end
if SN[19] == true then s() end
if SN[20] == true then t() end
if SN[21] == true then u() end
if SN[22] == true then v() end
if SN[23] == true then w() end
if SN[24] == true then x() end
if SN[25] == true then z() end
if SN[26] == true then a1() end
if SN[27] == true then a2() end
if SN[28] == true then a3() end
if SN[29] == true then a4() end
if SN[30] == true then a5() end
if SN[31] == true then a6() end
if SN[32] == true then a7() end
end
XGCK=-1
end



function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end


function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end

function a()
gg.clearResults()
gg.setRanges(4+32)
gg.searchNumber('1.72448539734~1.72448551655',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll('9999',gg.TYPE_FLOAT)
gg.toast("天线开启成功")
end

function b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("150;20.0;15.0::",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("150", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(5)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("背包开启成功")
end

function c()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;9.0283548e-37;9.02825794e-37;9.02865255e-37;9.02861309e-37;-1.30940708e25;-1.30683878e21;-3.69511342e20;-9.38598081e22;-8.24338876e19;-1.22781529e23;-3.83692277e21:49",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.10000000149",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("自慰隐身开启成功")
end

function d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,077,936,128D;5;30;10;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("失败 注意 机甲上开并变身在使用一次")
else
gg.searchNumber("30;5",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = "-1"}})
end
gg.toast("机甲变身无冷却和无限喷开启成功")
gg.clearResults()
end
end

function e()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.alert("减少丢弃数量")
    gg.sleep(3000)
    gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.alert("增加丢弃数量")
    gg.sleep(3000)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.alert("减少丢弃数量")
    gg.sleep(3000)
    gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.alert("增加丢弃数量")
    gg.sleep(3000)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.alert("减少丢弃数量")
    gg.sleep(3000)
    gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-990", gg.TYPE_DWORD)
    gg.alert("无限资源开启成功")
end

function f()
os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/cache")
gg.toast("环境异常解决第一步开启成功")
end

function g()
os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/files")
gg.toast("环境异常解决第二步开启成功，请重启游戏")
end

function h()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("-1.0F;10.0F;-10.0F;1.0F:53", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(3479)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("秒救人开启成功")
end

function i()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0F;0.40000000596F;999.0F;0.0F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1.5", gg.TYPE_FLOAT)

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.77401280403;0.1;0.11190053821;0;0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1;0.11190053821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_FLOAT)

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.00235145935;0.76544839144;0.1;0.11909916252::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1;0.11909916252", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("圣剑开启成功")
end

function j()
 F = gg.alert("飞高高", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.4999999702;0.07999999821;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.999913", gg.TYPE_FLOAT)
    gg.toast("飞高高开启成功")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.999913", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.07999999821", gg.TYPE_FLOAT)
    gg.toast("飞高高关闭成功")
    gg.clearResults()
  end
end

function k()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1059145646;1109393408:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1109393408", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2139095040", gg.TYPE_DWORD)
gg.toast("抓拉钩开启成功")
gg.clearResults()
end

function l()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10.0F;3.6013371e-43F;400.0F:13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('10.0F;400',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast("龙焰无CD开启成功")
end

function m()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9.8090893e-45;1.0;2.0;20.0;10.0::199", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)

	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9.8090893e-45;1.0;2.0;20.0;10.0::199", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)

	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9.8090893e-45;1.0;2.0;20.0;10.0::199", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-10", gg.TYPE_DWORD)

	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("9.8090893e-45;1.0;2.0;20.0;10.0::199", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_DWORD)
	 gg.toast("火球开启成功")
	 gg.clearResults()
end

function n()
    F = gg.alert('变大蘑菇套装', '变大5倍', '无限时间', '血量变大')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('2.5F;0.47999998927F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('2.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('5', gg.TYPE_FLOAT)
      gg.toast('变大5倍开启成功')
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('60.0F;0.47999998927F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('60', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('3600', gg.TYPE_FLOAT)
      gg.toast('无限时间开启成功')
    elseif F == 3 then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('100.0F;0.47999998927F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('999', gg.TYPE_FLOAT)
      gg.toast('血量超大开启成功')
    end
end

function o()
 gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1F;-1F;2,139,095,040D::20", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(2000)
gg.editAll("1.3",gg.TYPE_FLOAT)
gg.toast("加速开启成功")
gg.clearResults()
end

function p()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('686,889,944;686,890,050:5',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 0,}})
end
gg.toast("开启成功")
end

function q()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.34999999404;0.2;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "30"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调上路飞开启成功")
  gg.clearResults()
end

function r()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('642',gg.TYPE_DWORD)
gg.toast("M416-小丑开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425389',gg.TYPE_DWORD)
gg.toast("M16A4-心跳时间开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('867',gg.TYPE_DWORD)
gg.toast("AKM-虎威开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425391',gg.TYPE_DWORD)
gg.toast("AUG-白龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425388',gg.TYPE_DWORD)
gg.toast("AWM-火尖枪开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979834',gg.TYPE_DWORD)
gg.toast("QBZ-撕裂开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979839',gg.TYPE_DWORD)
gg.toast("M24-游侠开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('469762130',gg.TYPE_DWORD)
gg.toast("Groza-银河开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('637534247',gg.TYPE_DWORD)
gg.toast("爆炸弓-觅心猎手开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('869',gg.TYPE_DWORD)
gg.toast("SKS-电玩开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('617',gg.TYPE_DWORD)
gg.toast("MK14-力量开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979836',gg.TYPE_DWORD)
gg.toast("DP-28-坚守开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979841',gg.TYPE_DWORD)
gg.toast("RGP-龙炎开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('234881251',gg.TYPE_DWORD)
gg.toast("SCAR-L-珍妮开启成功")
end

function s()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;1,194,363,394D;0D;1,280D;5D;-1,597,960,448D;1,812,070,403D;1,342,703,619D;271,618,083D;1,661,044,739D;270,532,611D;1,080,559,619D;196,608D;1,080,035,584D;196,610D;1,080,035,330D;270,794,752D;1,080,560,131D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-99", gg.TYPE_DWORD)
gg.toast("天空黑色开启成功/n天黑了快去玩")
gg.clearResults()
end

function t()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(40)--设置修改前200个代码
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("子弹穿墙开启成功")
gg.clearResults()
end
end

function u()
F = gg.alert("透视", "(开启)", "(关闭)")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.69999998808;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.69999998808", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("9.99999997e-7", gg.TYPE_FLOAT)
    gg.toast("开启成功")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.69999998808/", gg.TYPE_FLOAT)
    gg.toast("关闭成功")
    gg.clearResults()
  end
end

function v()
gg.alert("开的时候不要乱动\n提前准备好胶囊")
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.07999999821;0.5;1;1.5::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    do
      for _FORV_3_ = 1, n do
        gg.setValues({
          [1] = {
            address = jz[_FORV_3_].address + 54,
            flags = gg.TYPE_FLOAT,
            value = "2.82080483437"
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.95", gg.TYPE_FLOAT)
  gg.toast("站着遁地开启成功")
end


function w()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("无后座开启成功")
end



function x()
gg.clearResults()
gg.setRanges(32)
  fw = gg.prompt({ i = "输入你现在的子弹" }, {i = ""})
gg.searchNumber(fw.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("开几枪")
gg.sleep(4000)
  fl = gg.prompt({ p = "输入你现在的子弹数量" }, {p = ""})
gg.searchNumber(fl.p,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("请再打几枪")
gg.sleep(4000)
  fd = gg.prompt({ k = "输入你现在的子弹数量" }, {k = ""})
gg.searchNumber(fd.k,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
local t =gg.getResults(15)
for i, v in ipairs(t)do
t[i].value ="9999"
t[i].freeze =true
end
gg.addListItems(t)
gg.toast("修改成功")
end



function z()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.11841436e-19;1.15427246e10:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.15427246e10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1428711", gg.TYPE_FLOAT)
gg.toast("上色开启成功")
gg.clearResults()
end


function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("0;0;0;1~30;1~30;1~30;1~30;0;0;0;1::41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1~30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "2.5"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("人物范围开启成功,大厅恢复")
  gg.clearResults()
end


function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(350)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("天线")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
 revert = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = "3.4E+38"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.processResume()
gg.toast("蹦蹦车天线")
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber('1.16546607018', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('手臂天线')
gg.clearResults()
end




function a3()
qmnb = {
{[LXJM('TZWJJBSZKSGGTZDXAQJY','6D656D6F7279')] = 32},
{[LXJM('HFLLUCZKZCKVQMYSVJXD','6E616D65')] = LXJM('MGCMLSWLMMKDEBVXUHDF','E8BF9EE8B7B3E7A9BFE5A299E5BC80E590AF')},
{[LXJM('YHYDDZHYEYCPJKAVTQZD','76616C7565')] = 1067869798, [LXJM('RABUSMQTMGBMVWNVPQDJ','74797065')] = 4},
{[LXJM('ACQEGPXROKEFOXOEYTJX','6C76')] = 1065353216, [LXJM('MMHKUQKUOXBYGBDVCKDY','6F6666736574')] = -4, [LXJM('JNRSCMBZKNPDJOLKLFGF','74797065')] = 4},
}
qmxg = {
{[LXJM('JRXDXHNWRMHLHMFVRFGP','76616C7565')] = -99, [LXJM('POYNMUPEXXNGLGNMQHXH','6F6666736574')] = -4, [LXJM('WUUPBBMWCBUKHWVJQJTT','74797065')] = 4},
}
xqmnb(qmnb)
end



function a4()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("锁头开启成功")
	 gg.clearResults()
end


function a5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("子弹打击范围远开启成功")
	 gg.clearResults()
end


function a6()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.40129846e-45F;4.25994733e-43F;3.58732407e-43F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("透视开启成功")
	 gg.clearResults()
end



function a7()
os.exit()
end




while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    B()
  end
end