function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Main0()
SN = gg.choice({
	 "积分赛改时间秒胜利",
	 "积分赛改伤害完胜[推荐]",
	 "修行之路秒胜利",
	 "自定义忍者普攻伤害",
	 "退出脚本",
}, nil, "随缘更新●低调使用")
if SN==1 then
	 HS4()
end
if SN==2 then
	 HS5()
end
if SN==3 then
	 HS6()
end
if SN==4 then
	 HS7()
end
if SN==5 then
	 HS8()
end
FX1=0
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;360;50000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.isVisible(true) then
gg.setVisible(false)
end
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("修改完毕")
	 gg.clearResults()
end

function HS5()
gg.clearResults()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "小佐助大招秒杀开启成功。"},
{["value"] = 900036451, ["type"] = gg.TYPE_DWORD},
{["lv"] = 39, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
{["lv"] = 4, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = -4, ["offset"] = 88, ["type"] = gg.TYPE_DWORD},
{["value"] = 99, ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
if gg.isVisible(true) then
gg.setVisible(false)
end
gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("800001~800399;999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 if gg.isVisible(true) then
gg.setVisible(false)
end
	 gg.searchNumber("800001~800399", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(20000)
	 gg.editAll("330003", gg.TYPE_DWORD)
	 gg.toast("修改完成")
	 gg.clearResults()
end

function HS7()
     tm = gg.prompt({
    "设置想改的忍者(三位数)",
    "设置想改的伤害倍率(1~∞，推荐5低调伤害)"
  }, {
    "",
    "",
    "",
    ""
  }, {
    "txet",
    "txet"
  })
     if tm == nil then
     gg.toast("您未输入忍者代码")
     else
	 local dz = "90"..tm[1].."0101"
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "自定义忍者无限奥义+奥义秒杀"},
{["value"] = dz, ["type"] = gg.TYPE_DWORD},
{["lv"] = 4, ["offset"] = 4, ["type"] = gg.TYPE_DWORD},
}
qmxg = {
{["value"] = tm[2], ["offset"] = 96, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
if gg.isVisible(true) then
gg.setVisible(false)
end
end
gg.clearResults()
end

function HS8()
	 os.exit()
	 gg.clearResults()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end