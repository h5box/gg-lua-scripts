function Main0()
  SN = gg.choice({
    "阿巴巴"
  }, nil, "")
  if SN == 1 then
    Main1()
  end
  FX1 = 0
end

function Main1()
  SN = gg.multiChoice({
    "防封1号",
    "防封2号",
    "全局加速",
    "结束脚本"
  }, nil, "")
  if SN[1] == true then
    HS2()
  end
  if SN[2] == true then
    HS3()
  end
  if SN[3] == true then
    HS4()
  end
  if SN[4] == true then
    HS5()
  end
  FX1 = 0
end

function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("943;011;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("－1", gg.TYPE_DWORD)
gg.toast("完美")
end

function HS3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20559", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12345", gg.TYPE_DWORD)
gg.toast("世界")
end

function HS4()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.14177720249~0.15;14,818,1 64D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.147777003", gg.TYPE_FLOAT)
gg.toast("加速植入成功")
end

function HS5()
  os.exit()
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
