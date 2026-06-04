function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find
    (szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] =
      string.sub(szFullString, nFindStartIndex, string.len
      (szFullString))
      break end
    nSplitArray[nSplitIndex] = string.sub
    (szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len
    (szSeparator)
    nSplitIndex = nSplitIndex + 1 end return
  nSplitArray end
function xgxc(szpy, qmxg)
  for x = 1, #(qmxg) do
    xgpy = szpy + qmxg[x]["offset"]
    xglx = qmxg[x]["type"]
    xgsz = qmxg[x]["value"]
    xgdj = qmxg[x]["freeze"]
    if xgdj == nil or xgdj == "" then
      gg.setValues({[1]
        = {address = xgpy, flags = xglx, value = xgsz}})
     else
      gg.addListItems({[1]
        = {address = xgpy, flags = xglx,
          freeze = xgdj, value = xgsz}}) end
    xgsl = xgsl + 1 xgjg = true end end
function xqmnb(qmnb)
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
            pysz = {} pysz[1]
            = {} pysz[1].address
            = sl[i].address + qmnb[v]["offset"] pysz[1].flags
            = qmnb[v]["type"]
            szpy = gg.getValues(pysz)
            pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd
            = split(pdpd, ";") tzszpd
            = szpd[1] pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true pdsz = true else
              pdjg = false pdsz = false end end end if
          pdjg == true then szpy
          = sl[i].address xgxc(szpy, qmxg) end end
      if xgjg == true then
        gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")
       else
        gg.toast(qmnb[2]["name"] .. "开启失败")
      end
    end
  end
end
gg.alert("刷物品教程：首先开启伪OP功能，改创造，然后把复活图腾拿到副手里，这时候开启刷物品功能，开启成功后把副手里的东西拿出来2次即可")
function Main()
  SN = gg.choice({
    "花雨庭加速踏空",
    "成员改伪OP",
    "访客改伪OP",
    "超级穿墙开（花雨庭可用）",
    "超级飞行开（花雨庭可用）",
    "超级穿墙关",
    "超级飞行关",
    "飞行权限开（花雨庭不可用）",
    "刷基岩",
    "刷屏障",
    "刷隐形基岩",
    "刷命令方块",
    "刷地狱传送门",
    "刷末地传送门",
    "刷末地折跃门",
    "退出程序"
  }, nil, "mwh辅助（我的世界专用）")
  if SN==1 then
    a1()
  end
  if SN==2 then
    a2()
  end
  if SN==3 then
    a3()
  end
  if SN==4 then
    a4()
  end
  if SN==5 then
    a5()
  end
  if SN==6 then
    cqgb()
  end
  if SN==7 then
    fxgb()
  end
  if SN==8 then
    a6()
  end
  if SN==9 then
    a7()
  end
  if SN==10 then
    a8()
  end
  if SN==11 then
    a9()
  end
  if SN==12 then
    a10()
  end
  if SN==13 then
    a11()
  end
  if SN==14 then
    a12()
  end
  if SN==15 then
    a13()
  end
  if SN==16 then
    Exit()
  end
  FX1=0
end

function a1()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("2.3510607e-38;0.25;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.3510607e-38}})
  end
  gg.toast("已开启50%")
  gg.clearResults()
  gg.searchNumber('0.1;0;3.4028235e38;0.1;1.1011996e36::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll('0.2', gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value =2139030018}})
  end
  gg.toast("开启成功")
  gg.clearResults()
end

function a3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2139029504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2139029504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value =2139030018}})
  end
  gg.toast("开启成功")
  gg.clearResults()
end

function a4()
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="超级穿墙"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function a5()
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="超级飞行"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x138, ["type"] = 1, ["freeze"]=true}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function a6()
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="飞行权限"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x144, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function fxgb()
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="超级飞行关"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =0, ["offset"] = 0x138, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function cqgb()
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="超级穿墙关"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =0, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end

function a7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("7", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function a8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-161", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function a9()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("95", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function a10()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("137", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function a11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("90", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function a12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("116", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function a13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("209", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function Exit()
  os.exit()
end
cs = "1"


while true do
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main()
  end
end