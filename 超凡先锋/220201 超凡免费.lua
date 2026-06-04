function Main()
  WC = gg.choice({
    "『进入无敌』",
    "『退出脚本』"
  }, nil, "脚本作者:自闭 超级牛逼 市面上大部分脚本 感谢GuQiran的技术支持 当前时间:") 
  if WC == 1 then
    cxk()
  end
  if WC == 2 then
    Exit()
  end
  XGCK = -1
end

function cxk()
  Dahl = gg.choice({
    "『战斗专区』",
    "『封号专区』",
    "『kjdao.cc』"
  }, nil, "自闭定制版 欢迎使用")
  if Dahl == 1 then
    cxk3()
  end
  if Dahl == 2 then
    cxk2()
  end
  if Dahl == 10 then
    Exit()
  end
  XGCK = -1
end

function cxk3()
  vk = gg.choice({
    "◎循环小范围",
    "◎循环子弹追踪",
    "◎无后(大厅开)",
    "◎加速(大厅开)",
    "『返回』"
  }, nil, "乖崽重制版 欢迎使用 当前时间:")
  if vk == 1 then
    c()
  end
  if vk == 2 then
    f()
  end
  if vk == 3 then
    g()
  end
  if vk == 4 then
    h()
  end
  if vk == 5 then
    cxk()
  end
  XGCK = -1
end

function cxk2()
  tt = gg.choice({
    "◎穿墙开启",
    "◎穿墙关闭",
    "◎遁地开启（建议别开）",
    "◎遁地关闭（建议别开）",
    "◎人物天线",
    "『返回』"
  }, nil, "自闭定制版 欢迎使用 当前时间:")
  if tt == 1 then
    k()
  end
  if tt == 2 then
    w()
  end
  if tt == 3 then
    o()
  end
  if tt == 4 then
    t()
  end
  if tt == 5 then
    tx()
  end
  if tt == 6 then
    cxk()
  end
  XGCK = 1
end

function c()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(150)
  gg.editAll("50", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("小范围")
  c()
end

function f()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(150)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.sleep(2000)
  f()
end

function g()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("700", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("700", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DOUBLE,
        freeze = true,
        value = 0
      }
    })
  end
  gg.toast("✔无后开启成功✔")
  gg.clearResults()
end

function h()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.3E;1.3E;0.7E;0.7E;0.8E;0.8E;0.8E:145", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DOUBLE,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("✔全方向加速开启成功✔")
  gg.clearResults()
end

function k()
  qmnb = {
    {memory = 4},
    {
      name = "开启穿墙"
    },
    {value = 1063489081, type = 4},
    {
      lv = 1092616192,
      offset = -4,
      type = 4
    },
    {
      lv = 1067030938,
      offset = 36,
      type = 4
    },
    {
      lv = 1050253722,
      offset = 40,
      type = 4
    },
    {
      lv = 1063675494,
      offset = 48,
      type = 4
    }
  }
  qmxg = {
    {
      value = -1147835379,
      offset = 32,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function w()
  gg.sleep(2000)
  qmnb = {
    {memory = 4},
    {
      name = "关闭穿墙"
    },
    {value = 1063489081, type = 4},
    {
      lv = 1092616192,
      offset = -4,
      type = 4
    },
    {
      lv = 1067030938,
      offset = 36,
      type = 4
    },
    {
      lv = 1050253722,
      offset = 40,
      type = 4
    },
    {
      lv = 1063675494,
      offset = 48,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1050253722,
      offset = 32,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function o()
  qmnb = {
    {memory = 4},
    {name = "遁地"},
    {value = 3.207297995686531E-4, type = 64},
    {
      lv = 0.7071068286895752,
      offset = 4,
      type = 16
    },
    {
      lv = 0.7071068286895752,
      offset = 8,
      type = 16
    },
    {
      lv = 0.0078125,
      offset = 12,
      type = 64
    },
    {
      lv = 1,
      offset = 16,
      type = 16
    },
    {
      lv = 1.1875975178554654E-4,
      offset = 20,
      type = 64
    },
    {
      lv = 0.6216099858283997,
      offset = 24,
      type = 16
    },
    {
      lv = 0.009999999776482582,
      offset = 28,
      type = 16
    },
    {
      lv = 0.0078125,
      offset = 44,
      type = 64
    },
    {
      lv = 1,
      offset = 48,
      type = 16
    }
  }
  qmxg = {
    {
      value = 8,
      offset = 16,
      type = 16,
      freeze = true
    }
  }
  xqmnb(qmnb)
end

function t()
  qmnb = {
    {memory = 4},
    {name = "关闭"},
    {value = 3.207297995686531E-4, type = 64},
    {
      lv = 131072,
      offset = 12,
      type = 64
    }
  }
  qmxg = {
    {
      value = 1,
      offset = 16,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function tx()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.62258672714", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.62258672714", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_4_ = 1, sl do
    dzy = jg[_FORV_4_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = -1.0E32
      }
    })
  end
  gg.toast("开启耗时:" .. os.clock() - os.clock() .. "s")
  gg.clearResults()
  gg.clearList()
end

function Exit()
  print("###")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "祝你稳定上分"
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
