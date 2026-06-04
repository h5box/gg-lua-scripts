function Main0()
  SN = gg.choice({
    "",
    "球 球 大 作 战 视 野 扩 大 1 倍",
    "球 球 大 作 战 视 野 扩 大 2 倍",
    "球 球 大 作 战 视 野 扩 大 3 倍",
    "球 球 大 作 战 视 野 扩 大 4 倍",
    "球 球 大 作 战 视 野 扩 大 5 倍",
    "球 球 大 作 战 视 野 扩 大 6 倍",
    "如果没效果请重新开游戏",
    "点击退出"
  }, nil, "")
  if SN == 1 then
    Main4()
  end
  if SN == 2 then
    HS5()
  end
  if SN == 3 then
    HS8()
  end
  if SN == 4 then
    HS9()
  end
  if SN == 5 then
    HS10()
  end
  if SN == 6 then
    HS11()
  end
  if SN == 7 then
    HS12()
  end
  if SN == 8 then
    HS7()
  end
  if SN == 9 then
    HS6()
  end
  FX = 0
end
function Main4()
  SN = gg.multiChoice({}, nil, "")
  FX = 0
end
function HS5()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1
      }
    })
  end
  gg.toast("开始成功")
  gg.clearResults()
end
function HS8()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("如果开始失败重新开游戏")
  gg.clearResults()
end
function HS9()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 3
      }
    })
  end
  gg.toast("如果开始失败重新开游戏")
  gg.clearResults()
end
function HS10()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 4
      }
    })
  end
  gg.toast("如果开始失败重开游戏")
  gg.clearResults()
end
function HS11()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 5
      }
    })
  end
  gg.toast("如果开始失败重开游戏")
  gg.clearResults()
end
function HS12()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 6
      }
    })
  end
  gg.toast("如果开始失败重开游戏")
  gg.clearResults()
end
function HS7()
  Main0()
end
function HS6()
  os.exit()
end
Main0()

