function split(szFullString, szSeparator)
  local nFindStartIndex = 1 
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do 
    local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then 
      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break
    end 
    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1
  end
  return nSplitArray 
end
function xgxc(szpy, qmxg) 
  for x = 1, #(qmxg) do 
    xgpy = szpy + qmxg[x]
    ['offset'] xglx = qmxg[x]
    ['type'] xgsz = qmxg[x]
    ['value'] xgdj = qmxg[x]
    ['freeze'] if xgdj == nil or xgdj == '' then 
      gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
    else
      gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) 
    end
    xgsl = xgsl + 1 xgjg = true 
  end
end
function
  xqmnb(qmnb)
  gg.clearResults() 
  gg.setRanges(qmnb[1]
  ['memory']) gg.searchNumber(qmnb[3]
  ['value'], qmnb[3]
  ['type']) if gg.getResultCount() == 0 then 
    gg.toast(qmnb[2]['name'] .. '开启失败') 
  else
    gg.refineNumber(qmnb[3]
    ['value'], qmnb[3]
    ['type']) gg.refineNumber(qmnb[3]
    ['value'], qmnb[3]
    ['type']) gg.refineNumber(qmnb[3]
    ['value'], qmnb[3]
    ['type']) if gg.getResultCount() == 0 then 
      gg.toast(qmnb[2]['name'] .. '开启失败') 
    else
      sl = gg.getResults(999999) 
      sz = gg.getResultCount()
      xgsl = 0 if sz > 999999 then sz = 999999 
      end
      for i = 1, sz do pdsz = true for v = 4, #(qmnb) do 
          if pdsz == true then
            pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]
            ['offset'] pysz[1].flags = qmnb[v]
            ['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]
            ['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true pdsz = true
            else 
              pdjg = false pdsz = false
            end 
          end 
        end 
        if pdjg == true then 
          szpy = sl[i].address xgxc(szpy, qmxg)
        end 
      end 
      if xgjg == true then 
        gg.toast(qmnb[2]['name'] .. '开启成功,共修改' .. xgsl .. '条数据') 
      else
        gg.toast(qmnb[2]['name'] .. '开启失败') 
      end 
    end 
  end 
end
function Main0()
  SN = gg.choice({
    "麒麟710透视",
    "麒麟通用不冻结透视",
    "纯色红",
    "麒麟物资透",
    "去镜框",
    "载具透视",
    "团竞透视",
    "去镜框关闭",
    "普通写法麒麟710透视",
    "退出脚本"
  }, nil, "没有瞄准镜别开去镜框\n交流群928039372")
  if SN == nil then
  else
    if SN == 1 then
      a()
    end
    if SN == 2 then
      b()
    end
    if SN == 3 then
      c()
    end
    if SN == 4 then
      d()
      end
    if SN == 5 then
      e()
      end
    if SN == 6 then
      f()
      end
    if SN == 7 then
      g()
      end
    if SN == 8 then
      h()
      end
    if SN == 9 then
      i()
      end
    if SN == 10then
    Exit()
    end
  end
  FX1 = -1
end



function a()
qmnb = {
{["memory"] = 4},
{["name"] = "透视"},
{["value"] = 112, ["type"] = 4},
{["lv"] = 112, ["offset"] = 544, ["type"] = 4},
{["lv"] = 112, ["offset"] = 680, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1840, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1976, ["type"] = 4},
{["lv"] = 112, ["offset"] = 2112, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0, ["type"] = 4},
{["value"] = 4, ["offset"] = 544, ["type"] = 4},
{["value"] = 4, ["offset"] = 680, ["type"] = 4},
{["value"] = 4, ["offset"] = 1840, ["type"] = 4},
{["value"] = 4, ["offset"] = 1976, ["type"] = 4},
{["value"] = 4, ["offset"] = 2112, ["type"] = 4},
}
xqmnb(qmnb)
end
function b()
gg.setRanges(4)
gg.searchNumber("112;112;112;801112064;16;734003200;32;935329792;40;801112064;112;112;112:2113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("112",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("4",gg.TYPE_DWORD)
gg.toast("开启成功")
end
function c()
  qmnb = {
    {["memory"] = 4},
    {["name"] = "绿色一"},
    {["value"] = 801112064, ["type"] = 4},
    {["lv"] = 16, ["offset"] = 4, ["type"] = 4},
    {["lv"] = 734003200, ["offset"] = 8, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 26, ["offset"] = 4, ["type"] = 4},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "绿色2"},
    {["value"] = 801112064, ["type"] = 4},
    {["lv"] = 16, ["offset"] = 4, ["type"] = 4},
    {["lv"] = 734003200, ["offset"] = 8, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 26, ["offset"] = 4, ["type"] = 4},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "纯色过滤第一步"},
    {["value"] = 734003200, ["type"] = 4},
    {["lv"] = 32, ["offset"] = 4, ["type"] = 4},
    {["lv"] = 935329792, ["offset"] = 8, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 47, ["offset"] = 4, ["type"] = 4},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 4},
    {["name"] = "过滤中第2步"},
    {["value"] = 734003200, ["type"] = 4},
    {["lv"] = 32, ["offset"] = 4, ["type"] = 4},
    {["lv"] = 935329792, ["offset"] = 8, ["type"] = 4},
  }
  qmxg = {
    {["value"] = 47, ["offset"] = 4, ["type"] = 4},
  }
  xqmnb(qmnb)
end
function e()
qmnb = {
{["memory"] = 4},
{["name"] = "去镜框透视"},
{["value"] = 112, ["type"] = 4},
{["lv"] = 112, ["offset"] = 536, ["type"] = 4},
{["lv"] = 112, ["offset"] = 672, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1840, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1976, ["type"] = 4},
{["lv"] = 112, ["offset"] = 2112, ["type"] = 4},
}
qmxg = {
{["value"] = 8, ["offset"] = 0, ["type"] = 4},
{["value"] = 8, ["offset"] = 536, ["type"] = 4},
{["value"] = 8, ["offset"] = 672, ["type"] = 4},
{["value"] = 8, ["offset"] = 1840, ["type"] = 4},
{["value"] = 8, ["offset"] = 1976, ["type"] = 4},
{["value"] = 8, ["offset"] = 2112, ["type"] = 4},
}
xqmnb(qmnb)
end
function d()
gg.clearResults(4)
gg.searchNumber("0.5F;0.5F;12,000.0F;0.00003F;2.8025969e-45F;1.4012985e-45F;1.4012985e-45F:105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
	if v.flags == gg.TYPE_FLOAT then
		v.value = "2"
		v.freeze = true
	end
	end
function f()
qmnb = {
{["memory"] = 4},
{["name"] = "载具透视"},
{["value"] = 112, ["type"] = 4},
{["lv"] = 112, ["offset"] = 552, ["type"] = 4},
{["lv"] = 112, ["offset"] = 688, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1824, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1960, ["type"] = 4},
{["lv"] = 112, ["offset"] = 2096, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0, ["type"] = 4},
{["value"] = 4, ["offset"] = 552, ["type"] = 4},
{["value"] = 4, ["offset"] = 688, ["type"] = 4},
{["value"] = 4, ["offset"] = 1824, ["type"] = 4},
{["value"] = 4, ["offset"] = 1960, ["type"] = 4},
{["value"] = 4, ["offset"] = 2096, ["type"] = 4},
}
xqmnb(qmnb)
end
function g()
qmnb = {
{["memory"] = 4},
{["name"] = "团竞透视"},
{["value"] = 112, ["type"] = 4},
{["lv"] = 112, ["offset"] = 424, ["type"] = 4},
{["lv"] = 112, ["offset"] = 560, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1720, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1856, ["type"] = 4},
{["lv"] = 112, ["offset"] = 1992, ["type"] = 4},
}
qmxg = {
{["value"] = 4, ["offset"] = 0, ["type"] = 4},
{["value"] = 4, ["offset"] = 424, ["type"] = 4},
{["value"] = 4, ["offset"] = 560, ["type"] = 4},
{["value"] = 4, ["offset"] = 1720, ["type"] = 4},
{["value"] = 4, ["offset"] = 1856, ["type"] = 4},
{["value"] = 4, ["offset"] = 1992, ["type"] = 4},
}
xqmnb(qmnb)
end
function h()
qmnb = {
{["memory"] = 4},
{["name"] = "去镜框透视关闭"},
{["value"] = 8, ["type"] = 4},
{["lv"] = 8, ["offset"] = 536, ["type"] = 4},
{["lv"] = 8, ["offset"] = 672, ["type"] = 4},
{["lv"] = 8, ["offset"] = 1840, ["type"] = 4},
{["lv"] = 8, ["offset"] = 1976, ["type"] = 4},
{["lv"] = 8, ["offset"] = 2112, ["type"] = 4},
}
qmxg = {
{["value"] = 112, ["offset"] = 0, ["type"] = 4},
{["value"] = 112, ["offset"] = 536, ["type"] = 4},
{["value"] = 112, ["offset"] = 672, ["type"] = 4},
{["value"] = 112, ["offset"] = 1840, ["type"] = 4},
{["value"] = 112, ["offset"] = 1976, ["type"] = 4},
{["value"] = 112, ["offset"] = 2112, ["type"] = 4},
}
xqmnb(qmnb)
end
function i()
gg.clearResults(4)
gg.searchNumber("112D;112D;112D;398695424D;0D;394264577D;0D;801112064D;0D;801112064D;16D;734003200D;32D;935329792D;40D;801112064D;48D;0D;-1615402752D;935329792D;40D;734003200D;32D;801112064D;48D;801112064D;16D;801112064D;112D;112D;112D:2113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("4",gg.TYPE_DWORD)
gg.toast("开启成功")
end
function Exit()
  print("嘤嘤嘤～")
  os.exit()
end
cs = "嘤嘤嘤～"
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
end
end