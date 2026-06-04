function split(szFullString,szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString,szSeparator,nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString,nFindStartIndex,string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString,nFindStartIndex,nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy,qmxg) for x = 1,#(qmxg) do xgpy = szpy + qmxg[x][ "offset "] xglx = qmxg[x][ "type "] xgsz = qmxg[x][ "value "] xgdj = qmxg[x][ "freeze "] if xgdj == nil or xgdj ==  " " then gg.setValues({[1] = {address = xgpy,flags = xglx,value = xgsz}}) else gg.addListItems({[1] = {address = xgpy,flags = xglx,freeze = xgdj,value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1][ "memory "]) gg.searchNumber(qmnb[3][ "value "],qmnb[3][ "type "]) if gg.getResultCount() == 0 then gg.toast(qmnb[2][ "name "] ..  "失败 ") else gg.refineNumber(qmnb[3][ "value "],qmnb[3][ "type "]) gg.refineNumber(qmnb[3][ "value "],qmnb[3][ "type "]) gg.refineNumber(qmnb[3][ "value "],qmnb[3][ "type "]) if gg.getResultCount() == 0 then gg.toast(qmnb[2][ "name "] ..  "失败 ") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1,sz do pdsz = true for v = 4,#(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v][ "offset "] pysz[1].flags = qmnb[v][ "type "] szpy = gg.getValues(pysz) pdpd = qmnb[v][ "lv "] ..  "; " .. szpy[1].value szpd = split(pdpd, "; ") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy,qmxg) end end if xgjg == true then gg.toast(qmnb[2][ "name "] ..  "成功 ") else gg.toast(qmnb[2][ "name "] ..  "失败 ") end end end end

function Main()
SN = gg.multiChoice({
 "没什么卵用的功能(卡机) ",
  "子弹加射速加防抖加连击(稳定)此功能需要一局一开 ",
  "牛13透(你不能用用了也开不了) ",
  "大头儿子(巨人) ",
  "管理没手(防封) ",
  "退出脚本 ",
  "我是管理的爷爷(防卡退) "
},nil, "小垃圾版本免费")
if SN == nil then else
if SN[1] == true then aa3() end
if SN[2] == true then aa() end
if SN[3] == true then aa2() end
if SN[4] == true then aa1() end
if SN[5] == true then h1() end
if SN[6] == true then Exit() end
end XGCK = -1 end

function aa()
qmnb = {
{[ "memory "] = gg.REGION_ANONYMOUS },
{[ "name "] =  "全枪"},
{[ "value "] = 1011129254,[ "type "] = gg.TYPE_DWORD},
--{[ "lv "] = 1243472,[ "offset "] = -16,[ "type "] = gg.TYPE_DWORD},
{[ "lv "] = 0,[ "offset "] =  -28,[ "type "] = gg.TYPE_DWORD},
}
qmxg = {
{[ "value "] = 888,[ "offset "] = -48,[ "type "] = gg.TYPE_DWORD,[ "freeze "] = no},--子弹数量
{[ "value "] = 1,[ "offset "] = -24,[ "type "] = gg.TYPE_DWORD,[ "freeze "] = no},--连击
{[ "value "] = 0.1,[ "offset "] = -68,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = no},--射速
{[ "value "] = 0,[ "offset "] = 28,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = no},--防抖
}
xqmnb(qmnb)
end

function aa1()
qmnb = {
{[ "memory "] = gg.REGION_C_BSS },
{[ "name "] =  "全枪"},
{[ "value "] = 1049652922,[ "type "] = gg.TYPE_DWORD},
{[ "lv "] = 1056582172,[ "offset "] =  4,[ "type "] = gg.TYPE_DWORD},
}
qmxg = {
{[ "value "] = 1.2,[ "offset "] = 180,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = no},
{[ "value "] = 1.2,[ "offset "] = 184,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = no},
{[ "value "] = 1.2,[ "offset "] = 188,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = no},
}
xqmnb(qmnb)
end

function aa2()
qmnb = {
{[ "memory "] = gg.REGION_VIDEO },
{[ "name "] =  "透视"},
{[ "value "] = 537067523,[ "type "] = gg.TYPE_DWORD},
{[ "lv "] = 1177550851,[ "offset "] = 4,[ "type "] = gg.TYPE_DWORD},
}
qmxg = {
{[ "value "] = 120,[ "offset "] = 1412,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = no},
}
xqmnb(qmnb)
end
function aa3()
qmnb = {
{[ "memory "] = gg.REGION_ANONYMOUS },
{[ "name "] =  "加速"},
{[ "value "] = 1093654282,[ "type "] = gg.TYPE_DWORD},
{[ "lv "] = 974790,[ "offset "] = -448,[ "type "] = gg.TYPE_DWORD},
}
qmxg = {
{[ "value "] =3,[ "offset "] = -340,[ "type "] = gg.TYPE_FLOAT,[ "freeze "] = true},
}
xqmnb(qmnb)
end

function h1()
  gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber(";70c72a6abf80b928", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	 gg.getResults(100)
	 gg.editAll(";我嫩爹", gg.TYPE_WORD)
	 gg.toast("成功")
	 gg.clearResults()
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









