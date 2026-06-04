function Main()
  SN =gg.multiChoice({
  "女天线",
  "范围头",
  "人物微加速",
  "人物变大(开第一人称)",
"视角拉高",
"子弹全穿(容易封号)",
    "退出脚本"
 }, nil, " 自己使用  荒野行动反馈664164612")
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
   f()
  end  if SN[6] == true then
   o()
  end
  if SN[7] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("0.16361199319F;0.00892399997F;0.00191600004F;1.0F;1.58346726e-43F:165", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("修改成功")
	 gg.clearResults()
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;0.15;8962D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
zlsj = gg.getResults(1)
ZL = {}
ZL[1] = {}
ZL[1].address = zlsj[1].address - 20
ZL[1].flags = gg.TYPE_DWORD
IDZL = gg.getValues(ZL)[1].value
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(IDZL .. ";0.15F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1500)
gg.editAll("3.8", gg.TYPE_FLOAT)
gg.toast("范围成功")
gg.clearResults()
end



function c()
 gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('4.9e-324;3.14;1.6;1.57;0.2;7',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('7',gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0,-1)
  gg.getResults(5)
  gg.editAll('7.85', gg.TYPE_DOUBLE)
  gg.toast("微加速开启成功")
	 gg.clearResults()
 end


function d()
gg.clearResults()
gg.setRanges (gg.REGION_C_BSS)
gg.searchNumber('1D;10D;2D;1D;1;1;1::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(5)
gg.editAll('5',gg.TYPE_FLOAT)
gg.toast('成功')
end



function f()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
  gg.searchNumber("0.3E;1.3E;-0.26E;4.9e-324E;1.65E", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("5.5", gg.TYPE_DOUBLE)
  gg.toast("开启成功")
end

function o()
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


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast(qmnb[2]['name'] .. '修改失败') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]['name'] .. '修改成功,共修改' .. xgsl .. '条数据') else gg.toast(qmnb[2]['name'] .. '修改失败') end end end end


function Exit()
print("荒野行动脚本")
os.exit()
end
cs = "荒野行动"



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









