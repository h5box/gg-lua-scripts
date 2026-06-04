g = "○"
k = "●"
qxwh = g
nczm = g
zbtx = g
ymwd = g
qmdj = g
function yiyz_Main()
  SN = gg.choice({
    " 🐰打架🐰 ️",
    " 🐰人物🐰 ",
    " 🐰强化🐰 ️",
    " 🐰变态🐰 "," 🐰退出🐰"
  }, 2018)
  if SN == 1 then
    A()
  end
  if SN == 2 then
    B()
  end
  if SN == 3 then
    C()
  end
  if SN == 4 then
    D()
  end
  if SN == 5 then
    Exit()
  end
  XGCK = -1
end
function A()
  SN = gg.choice({
    " 🐰战斗🐰  ️",
    " 🐰路飞🐰  ️",
    " 🐰死锁自瞄🐰 ",
    " 🐰枪械秒换🐰  ",
    " 🐰群锁自瞄🐰  ",
    " 🐰akm秒杀🐰  ",
    " 🐰懒人一套🐰  ",
    " 🐰子弹穿🐰  "
  }, 2018)
  if SN == 1 then
    a1()
  end
  if SN == 2 then
    a2()
  end
  if SN == 3 then
    a3()
  end
  if SN == 4 then
    a4()
  end
  if SN == 5 then
    a5()
  end
  if SN == 6 then
    a6()
  end
  if SN == 7 then
    a7()
  end
  if SN == 8 then
    a8()
  end
  if SN == 8 then
    Exit()
  end
  XGCK = -1
end
function B()
  SN = gg.choice({
    " 🐰敌人天线🐰  ️" .. nczm,
    " 🐰视野人称🐰  ️",
    " 🐰夜视开🐰  ️",
    " 🐰夜视关🐰  ",
    " 🐰变黑天🐰  ",
    " 🐰变白天🐰  ",
    " 🐰头天线开🐰  ",
    " 🐰头天线关🐰  ",
    " 🐰循环天线🐰 ",
    " 🐰三色开🐰  "
  }, 2018)
  if SN == 1 then
    b1()
  end
  if SN == 2 then
    b2()
  end
  if SN == 3 then
    b3()
  end
  if SN == 4 then
    b4()
  end
  if SN == 5 then
    b5()
  end
  if SN == 6 then
    b6()
  end
  if SN == 7 then
    b7()
  end
  if SN == 8 then
    b8()
  end
  if SN == 9 then
    b9()
  end
  if SN == 10 then
    b10()
  end
  if SN == 11 then
    Exit()
  end
  XGCK = -1
end
function C()
  SN = gg.choice({
    " 🐰全图透视🐰  ",
    " 🐰房屋透视🐰  "
  }, 2018)
  if SN == 1 then
    c1()
  end
  if SN == 2 then
    c2()
  end
  if SN == 3 then
    Exit()
  end
  XGCK = -1
end
function D()
  SN = gg.choice({
    "实体加速🐰",
    "倒地开枪🐰",
    "大跳飞天🐰",
    "滑翔飞天🐰",
    "水上走🐰 ",
    "水下走🐰 ",
    "地下家🐰",
    "半身遁地🐰",
    "隐身🐰",
    "实体隐身🐰",
    "全图定怪🐰"
  }, 2018)
  if SN == 1 then
    d1()
  end
  if SN == 2 then
    d2()
  end
  if SN == 3 then
    d3()
  end
  if SN == 4 then
    d4()
  end
  if SN == 5 then
    d5()
  end
  if SN == 6 then
    d6()
  end
  if SN == 7 then
    d7()
  end
  if SN == 8 then
    d8()
  end
  if SN == 9 then
    d9()
  end
  if SN == 10 then
    d10()
  end
  if SN == 11 then
    d11()
  end
  if SN == 12 then
    Exit()
  end
  XGCK = -1
end
function a1()
  F = gg.alert("【Sharpshooters welcome your use】", "枪械无后" .. qxwh, "叼毛别点" .. nczm, "千米打击" .. qmdj)
  if F == 1 then
    gg.alert("🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰🐰")
    if qxwh == "○" then
      qxwh = k
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 300, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 320, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 1000000,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 710, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 1000000,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 360, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 830, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 790, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {
          name = " "
        },
        {value = 735, type = 16},
        {
          lv = 4,
          offset = 16,
          type = 16
        },
        {
          lv = 4,
          offset = 24,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = -148,
          type = 16
        },
        {
          value = 0,
          offset = -144,
          type = 16
        },
        {
          value = 0,
          offset = -140,
          type = 16
        },
        {
          value = 0,
          offset = -120,
          type = 16
        },
        {
          value = 9999999,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 16,
          type = 16
        },
        {
          value = 0,
          offset = 24,
          type = 16
        }
      }
      xqmnb(qmnb)
    elseif qxwh == "●" then
      qxwh = g
      gg.toast("不支持关闭")
    end
  elseif F == 2 then
    if nczm == "○" then
      nczm = k
      qmnb = {
        {memory = 16384},
        {
          name = "自瞄"
        },
        {value = 8.3453106E22, type = 16},
        {
          lv = -5.4755273E27,
          offset = 4,
          type = 16
        }
      }
      qmxg = {
        {
          value = 1.49E-9,
          offset = 4,
          type = 16
        }
      }
      xqmnb(qmnb)
    elseif nczm == "●" then
      nczm = g
      gg.toast("暂不支持关闭")
    end
  elseif F == 3 then
    if qmdj == "○" then
      qmdj = k
      qmnb = {
        {memory = 32},
        {
          name = "30%八倍镜补丁"
        },
        {value = 45, type = 16},
        {
          lv = 360,
          offset = 8,
          type = 16
        },
        {
          lv = -360,
          offset = 4,
          type = 16
        }
      }
      qmxg = {
        {
          value = 46.666,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("45", gg.TYPE_FLOAT, 138 > 795, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("5.1577", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("50%")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("48", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("48", gg.TYPE_FLOAT, -797 > 809, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("5.1588", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("100%")
      gg.clearList()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("49", gg.TYPE_FLOAT, -47 > 747, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("5.1599", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("内部防封注入")
      gg.clearList()
    elseif qmdj == "●" then
      qmdj = g
      gg.clearResults()
      qmnb = {
        {memory = 32},
        {
          name = "30%八倍镜补丁"
        },
        {value = 46.666, type = 16},
        {
          lv = 360,
          offset = 8,
          type = 16
        },
        {
          lv = -360,
          offset = 4,
          type = 16
        }
      }
      qmxg = {
        {
          value = 45,
          offset = 0,
          type = 16
        }
      }
      xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("5.1577", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("5.1577", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("45", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("50%")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("5.1588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("5.1588", gg.TYPE_FLOAT, -15 > 425, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("48", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("100%")
      gg.clearList()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("5.1599", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("5.1599", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("49", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("内部防封注入")
      gg.clearList()
    end
  end
end
function a2()
  F = gg.alert("【 如果开启无效果请重启后在开启即可 】", "倍镜路飞", "机瞄路飞", "新版路飞")
  if F == 1 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    SearchWrite({
      {
        "0.10000000149",
        3482826840
      },
      {
        "0.20000000298",
        3482826836
      },
      {
        "3.99000000954",
        3482826800
      }
    }, {
      {
        "-1.8",
        3482826900
      }
    }, gg.TYPE_FLOAT, "倍镜路飞开启成功")
  elseif F == 2 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    SearchWrite({
      {
        "0.10000000149",
        3483543640
      },
      {
        "0.20000000298",
        3483543636
      },
      {
        "3.99000000954",
        3483543600
      }
    }, {
      {
        "1.8",
        3483543708
      }
    }, gg.TYPE_FLOAT, "机瞄路飞开启成功")
  elseif F == 3 then
    qmnb = {
      {memory = 4},
      {
        name = "路飞"
      },
      {value = 0.00419999985, type = 16},
      {
        lv = 0.02710000053,
        offset = -12,
        type = 16
      },
      {
        lv = -0.09340000153,
        offset = -4,
        type = 16
      }
    }
    qmxg = {
      {
        value = -3,
        offset = -4,
        type = 16
      }
    }
    xqmnb(qmnb)
    gg.toast("路飞开启成功")
  end
end
function a3()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("开启磁性自瞄")
end
function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.90000009537;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.90000009537", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启中️  ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.03333353996;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.03333353996", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启中️  ")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00999999978;0;1;0.00899999961::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast(" 秒换开启中 ")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.66666674614;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.66666674614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启中️  ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;1.2331426e-42;2.16666674614;5.49309e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.16666674614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("  秒换开启成功️  ")
end
function a5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("自瞄")
end
function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;35;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("735;30;110", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("735", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("95;101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
end
function a7()
  F = gg.alert("提示一:独家无后聚点瞬击", "🐰兔子独家无后", "🐰兔子换弹加速", "🐰兔子子弹加速")
  if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    SearchWrite({
      {-0.10000000149, 0},
      {1.20000004768, 108}
    }, {
      {
        1,
        -12,
        false
      },
      {
        1,
        -16,
        false
      },
      {
        1,
        -20,
        false
      },
      {
        1.0E-4,
        4,
        false
      },
      {
        1.0E-4,
        8,
        false
      },
      {
        1.0E-4,
        144,
        false
      },
      {
        1.0E-4,
        148,
        false
      },
      {
        1.0E-4,
        152,
        false
      },
      {
        1.0E-4,
        156,
        false
      },
      {
        1.0E-4,
        172,
        false
      },
      {
        1.0E-4,
        428,
        false
      },
      {
        1.0E-4,
        432,
        false
      },
      {
        1.0E-4,
        436,
        false
      },
      {
        1.0E-4,
        452,
        false
      },
      {
        1.0E-4,
        456,
        false
      },
      {
        1.0E-4,
        592,
        false
      },
      {
        1.0E-4,
        596,
        false
      },
      {
        1.0E-4,
        600,
        false
      },
      {
        1.0E-4,
        604,
        false
      },
      {
        1.0E-4,
        620,
        false
      }
    }, 16)
  elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    SearchWrite({
      {
        -cao4,
        0
      },
      {7.8472714E-44, -24},
      {0, 36}
    }, {
      {
        0.1,
        40,
        false
      },
      {
        0.1,
        44,
        false
      },
      {
        0.1,
        48,
        false
      },
      {
        0.1,
        52,
        false
      },
      {
        1.0E19,
        128,
        false
      },
      {
        40,
        196,
        false
      },
      {
        200,
        192,
        false
      }
    }, 16)
    SearchWrite({
      {
        -cao4,
        0
      },
      {8.9683102E-44, -24},
      {0, 36}
    }, {
      {
        0.1,
        40,
        false
      },
      {
        0.1,
        44,
        false
      },
      {
        0.1,
        48,
        false
      },
      {
        0.1,
        52,
        false
      },
      {
        1.0E19,
        128,
        false
      },
      {
        40,
        196,
        false
      },
      {
        200,
        192,
        false
      }
    }, 16)
    SearchWrite({
      {-1.0E19, 0},
      {1, -12},
      {2000, 40}
    }, {
      {
        10000,
        0,
        false
      },
      {
        1500,
        64,
        false
      },
      {
        -1,
        68,
        false
      }
    }, 16)
    SearchWrite({
      {-1.0E19, 0},
      {20, -12},
      {80, 40}
    }, {
      {
        -100,
        64,
        false
      }
    }, 16)
    gg.setRanges(4)
    SearchWrite({
      {xx6, 0},
      {1063425514, -156},
      {1019625236, -152},
      {-1125603554, -160},
      {-1090519040, -144}
    }, {
      {
        1,
        8,
        false
      }
    }, gg.TYPE_DWORD)
    SearchWrite({
      {xx6, 0},
      {1063415448, -156}
    }, {
      {
        1,
        8,
        false
      }
    }, gg.TYPE_DWORD)
    SearchWrite({
      {xx6, 0},
      {1077237078, 8}
    }, {
      {
        1,
        8,
        false
      }
    }, gg.TYPE_DWORD)
    SearchWrite({
      {xx6, 0},
      {1076957458, 8}
    }, {
      {
        1,
        8,
        false
      }
    }, gg.TYPE_DWORD)
  elseif F == 3 then
    gg.setRanges(16384)
    gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("900000000", 4)
    gg.toast("子弹加速已开启️")
    gg.clearResults()
  end
end
function a8()
  gg.setRanges(4)
  for _FORV_3_ = 1, 1 do
    if gg.isVisible(true) then
      gg.setRanges(4)
      SearchWrite({
        {
          "5.303",
          0
        },
        {
          "7",
          -16
        },
        {
          "8",
          32
        }
      }, {
        {
          "10",
          16
        }
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {
          "10",
          0
        },
        {
          "7",
          -16
        },
        {
          "8",
          32
        }
      }, {
        {
          "10",
          16
        }
      }, 16)
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {
          "9.098",
          0
        },
        {
          "7",
          -16
        },
        {
          "8",
          32
        }
      }, {
        {
          "10",
          16
        }
      }, 16)
      gg.clearResults()
            return
    end
    for _FORV_7_ = 1, 1 do
      if gg.isVisible(true) then
        gg.setRanges(4)
        SearchWrite({
          {
            "5.303",
            0
          },
          {
            "7",
            -16
          },
          {
            "8",
            32
          }
        }, {
          {
            "10",
            16
          }
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {
            "10",
            0
          },
          {
            "7",
            -16
          },
          {
            "8",
            32
          }
        }, {
          {
            "10",
            16
          }
        }, 16)
        gg.clearResults()
        gg.setRanges(4)
        SearchWrite({
          {
            "9.098",
            0
          },
          {
            "7",
            -16
          },
          {
            "8",
            32
          }
        }, {
          {
            "10",
            16
          }
        }, 16)
        gg.clearResults()
                return
      end
      SearchWrite({
        {
          "30",
          0
        },
        {
          "7",
          -16
        },
        {
          "8",
          32
        }
      }, {
        {
          "0.5",
          16
        }
      }, 16)
      gg.clearResults()
      gg.setRanges(string["rep"](99, 450000))
      gg.setRanges(16444)
      for _FORV_11_ = 1, 1 do
        if gg.isVisible(true) then
          gg.setRanges(4)
          SearchWrite({
            {
              "5.303",
              0
            },
            {
              "7",
              -16
            },
            {
              "8",
              32
            }
          }, {
            {
              "10",
              16
            }
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {
              "10",
              0
            },
            {
              "7",
              -16
            },
            {
              "8",
              32
            }
          }, {
            {
              "10",
              16
            }
          }, 16)
          gg.clearResults()
          gg.setRanges(4)
          SearchWrite({
            {
              "9.098",
              0
            },
            {
              "7",
              -16
            },
            {
              "8",
              32
            }
          }, {
            {
              "10",
              16
            }
          }, 16)
          gg.clearResults()
                    return
        end
        for _FORV_15_ = 1, 1 do
          if gg.isVisible(true) then
            gg.setRanges(4)
            SearchWrite({
              {
                "5.30Ⅰ3",
                0
              },
              {
                "7",
                -16
              },
              {
                "8",
                32
              }
            }, {
              {
                "10",
                16
              }
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {
                "10",
                0
              },
              {
                "7",
                -16
              },
              {
                "8",
                32
              }
            }, {
              {
                "10",
                16
              }
            }, 16)
            gg.clearResults()
            gg.setRanges(4)
            SearchWrite({
              {
                "9.098",
                0
              },
              {
                "7",
                -16
              },
              {
                "8",
                32
              }
            }, {
              {
                "10",
                16
              }
            }, 16)
            gg.clearResults()
                        return
          end
          SearchWrite({
            {
              "1Ⅰ0000",
              0
            },
            {
              "10000",
              12
            },
            {
              "100",
              4
            }
          }, {
            {
              "0",
              16
            }
          }, 84)
          gg.setRanges(4)
          for _FORV_19_ = 1, 1 do
            if gg.isVisible(true) then
              gg.setRanges(4)
              SearchWrite({
                {
                  "5.303",
                  0
                },
                {
                  "7",
                  -16
                },
                {
                  "8",
                  32
                }
              }, {
                {
                  "10",
                  16
                }
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {
                  "10",
                  0
                },
                {
                  "7",
                  -16
                },
                {
                  "8",
                  32
                }
              }, {
                {
                  "10",
                  16
                }
              }, 16)
              gg.clearResults()
              gg.setRanges(4)
              SearchWrite({
                {
                  "9.098",
                  0
                },
                {
                  "7",
                  -16
                },
                {
                  "8",
                  32
                }
              }, {
                {
                  "10",
                  16
                }
              }, 16)
              gg.clearResults()
                            return
            end
            for _FORV_23_ = 1, 1 do
              if gg.isVisible(true) then
                gg.setRanges(4)
                SearchWrite({
                  {
                    "5.303",
                    0
                  },
                  {
                    "7",
                    -16
                  },
                  {
                    "8",
                    32
                  }
                }, {
                  {
                    "10",
                    16
                  }
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {
                    "10",
                    0
                  },
                  {
                    "7",
                    -16
                  },
                  {
                    "8",
                    32
                  }
                }, {
                  {
                    "10",
                    16
                  }
                }, 16)
                gg.clearResults()
                gg.setRanges(4)
                SearchWrite({
                  {
                    "9.098",
                    0
                  },
                  {
                    "7",
                    -16
                  },
                  {
                    "8",
                    32
                  }
                }, {
                  {
                    "10",
                    16
                  }
                }, 16)
                gg.clearResults()
                                return
              end
              SearchWrite({
                {
                  "21.08",
                  0
                },
                {
                  "7",
                  -16
                },
                {
                  "8",
                  32
                }
              }, {
                {
                  "1.1",
                  16
                }
              }, 16)
              gg.clearResults()
            end
          end
        end
      end
    end
  end
end
function b1()
  if zbtx == "○" then
    zbtx = k
    qmnb = {
      {memory = 4},
      {
        name = "写入坐标参数"
      },
      {value = -0.98553425074, type = 16},
      {
        lv = 1.42252E-6,
        offset = -16,
        type = 16
      },
      {
        lv = -1,
        offset = -12,
        type = 16
      },
      {
        lv = 1,
        offset = -24,
        type = 16
      },
      {
        lv = -0.98553425074,
        offset = 12,
        type = 16
      },
      {
        lv = 1.5811675787,
        offset = 28,
        type = 16
      }
    }
    qmxg = {
      {
        value = -999999,
        offset = 0,
        type = 16
      },
      {
        value = -999999,
        offset = -12,
        type = 16
      },
      {
        value = -999999,
        offset = 12,
        type = 16
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {memory = 16384},
      {
        name = "注入天线补丁"
      },
      {value = 51, type = 16},
      {
        lv = 225,
        offset = 4,
        type = 16
      },
      {
        lv = 1225,
        offset = 8,
        type = 16
      }
    }
    qmxg = {
      {
        value = 0.1577,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
  elseif zbtx == "●" then
    zbtx = g
    qmnb = {
      {memory = 4},
      {
        name = "移除坐标参数"
      },
      {value = -999999, type = 16},
      {
        lv = 1.42252E-6,
        offset = -16,
        type = 16
      },
      {
        lv = -999999,
        offset = -12,
        type = 16
      },
      {
        lv = 1,
        offset = -24,
        type = 16
      },
      {
        lv = -999999,
        offset = 12,
        type = 16
      },
      {
        lv = 1.5811675787,
        offset = 28,
        type = 16
      }
    }
    qmxg = {
      {
        value = -0.98553425074,
        offset = 0,
        type = 16
      },
      {
        value = -1,
        offset = -12,
        type = 16
      },
      {
        value = -0.98553425074,
        offset = 12,
        type = 16
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {memory = 16384},
      {
        name = "删除天线补丁"
      },
      {value = 0.1577, type = 16},
      {
        lv = 225,
        offset = 4,
        type = 16
      },
      {
        lv = 1225,
        offset = 8,
        type = 16
      }
    }
    qmxg = {
      {
        value = 51,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end
function b2()
  F = gg.alert("【 Sharpshooters welcome your use 】", "迷你视角", "趴下视野")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_FLOAT)
    gg.toast("迷你视野已开启")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.20000000298F;1.29999995232F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("9", gg.TYPE_FLOAT)
    gg.toast("趴下视野扩大开启成功")
    gg.clearResults()
  end
end
function b3()
  gg.setRanges(16384)
  SearchWrite({
    {
      "-2.7859868E28",
      0
    },
    {
      "0.0549999997",
      -4
    },
    {
      "0.04044999927",
      -8
    }
  }, {
    {
      "2",
      -4,
      false
    }
  }, gg.REGION_C_BSS)
  gg.clearList()
end
function b4()
  gg.setRanges(16384)
  SearchWrite({
    {
      "-2.7859868E28",
      0
    },
    {
      "2",
      -4
    },
    {
      "0.04044999927",
      -8
    }
  }, {
    {
      "0.0549999997",
      -4,
      false
    }
  }, gg.REGION_C_BSS)
  gg.clearList()
end
function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("120", gg.TYPE_FLOAT)
end
function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.21072187e-42;120::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("20", gg.TYPE_FLOAT)
end
function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("-999999", gg.TYPE_FLOAT)
end
function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("0.16947640479", gg.TYPE_FLOAT)
end
function b9()
  F = gg.alert("【 Sharpshooters welcome your use 】", "手指天线", "高清天线", "循环天线")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("2.3234016e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.3234016e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.toast("开启成功")
  elseif F == 2 then
    qmnb = {
      {memory = 4},
      {
        name = "天线开启"
      },
      {value = 0.16947640478610992, type = 16},
      {
        lv = -0.16947640478610992,
        offset = 20,
        type = 16
      }
    }
    qmxg = {
      {
        value = 999,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
    gg.toast("高清天线开启")
  elseif F == 3 then
    gg.clearList()
    gg.clearResults()
    DWT()
  end
end
function DWT()
  gg.alert("  循环天线开启成功 ")
  repeat
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
  until gg.isVisible(true)
end
function b10()
  F = gg.alert("本功能仅骁龙使用;麒麟上色已和谐!", "【兔子🐰蓝色】", "【兔子🐰红色】", "【兔子🐰蓝绿】")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.3981491e21;3.7615819e-37;16.0;-12.0;3.0;2.0;-1.0;-2.0;-0.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("兔子🐰蓝色")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.3981491e21;3.7615819e-37;16.0;-12.0;3.0;2.0;-1.0;-2.0;-0.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.toast("兔子🐰红色")
    gg.clearResults()
  elseif F == 3 then
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("2.3981491e21;3.7615819e-37;16.0;-12.0;3.0;2.0;-1.0;-2.0;-0.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("兔子🐰蓝绿")
    gg.clearResults()
  end
end
function c1()
  F = gg.alert("【 Sharpshooters welcome your use 】", "开启", "关闭")
  if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("0.81399995089", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", 16)
    gg.clearResults()
    gg.toast("全图透视已开启")
  elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(100)
    gg.editAll("0.81399995089", 16)
    gg.clearResults()
    gg.toast("全图透视已关闭")
  end
end
function c2()
  F = gg.alert("【 Sharpshooters welcome your use 】", "开启", "关闭")
  if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("1.12020366e-19;5.6051939e-45:5", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.searchNumber("5.6051939e-45", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.toast("房屋透视已开启")
  elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber("7.0064923e-45;1.12020366e-19;0::9", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.searchNumber("0", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
    gg.getResults(1)
    gg.editAll("5.6051939e-45", 16)
    gg.clearResults()
    gg.toast("房屋透视已关闭")
  end
end
function d1()
  if stjs == gngb then
    stjs = gnkq
    gg.setRanges(16384)
    SearchWrite({
      {0.50352632999, 0},
      {-3.1514847E24, 8}
    }, {
      {
        0.149123456,
        12,
        false
      }
    }, 16)
    gg.toast("兔子🐰实体加速已开启")
  elseif gnkq then
    gg.setRanges(16384)
    gg.toast("兔子🐰实体加速已关闭")
    stjs = gngb
  end
end
function d2()
  gg.setRanges(32)
  gg.toast("兔子🐰倒地开枪已开启")
end
function d3()
  gg.alert("人物飞天说明:\n必须找到房子开启降落在天花板上面，不要飞的太高会死，降落时要降落在地基上否则会死！禁止蹲下负责会死【注意不要降落在地上只能降落在人物建筑上】请点修改器|已上房子赶快点关闭修改器|不能飞高|不能打开其他功能|重新打开脚本即可关闭|")
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("\230\179\168\229\133\165\233\163\158\229\164\169")
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0.37698
      }
    })
  end
  gg.toast("请点修改器|已上房子赶快点关闭修改器|不能飞高|不能打开其他功能|重新打开脚本即可关闭|")
end
function d4()
  F = gg.alert("【疯兔子🐰用心打造全网最强最稳】", "变速飞天", "新版飞天")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("\233\163\158\229\164\169\229\188\128\229\144\175\228\184\173")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.toast("注入飞天")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 0.95
        }
      })
    end
    gg.toast("变速控制高低")
    Exit()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 0.37698
        }
      })
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("100%")
    end
    gg.toast("飞天开启成功")
  end
end
function d5()
  if ssxz == gngb then
    ssxz = gnkq
    gg.alert("提示一:抢货轮 必备功能\n提示二:水边开启 出水请关闭 否则会死")
    gg.setRanges(4)
    SearchWrite({
      {1.0E32, 0},
      {49, 20},
      {999, 32}
    }, {
      {
        0.37,
        -8,
        true
      }
    }, 16)
    gg.setRanges(16384)
    SearchWrite({
      {0.50291442871, 0},
      {1, 4},
      {1.00999999046, 28}
    }, {
      {
        0.10000000149,
        4,
        false
      }
    }, 16)
    gg.toast("兔子🐰水上行走已开启")
  elseif gnkq then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    SearchWrite({
      {0.50291442871, 0},
      {0.10000000149, 4},
      {1.00999999046, 28}
    }, {
      {
        1,
        4,
        false
      }
    }, 16)
    gg.toast("水上行走已关闭")
    ssxz = gngb
  end
end
function d6()
  if sxxz == gngb then
    sxxz = gnkq
    gg.setRanges(4)
    SearchWrite({
      {-10000.001953125, 0},
      {10000, -4},
      {0.009999999776482582, -16},
      {1, -32}
    }, {
      {
        0,
        -4,
        false
      }
    }, 16)
    gg.toast("兔子🐰水下行走已开启")
  elseif gnkq then
    gg.setRanges(4)
    SearchWrite({
      {-10000.001953125, 0},
      {0, -4},
      {0.009999999776482582, -16},
      {1, -32}
    }, {
      {
        10000,
        -4,
        false
      }
    }, 16)
    gg.toast("兔子🐰水下行走已关闭")
    sxxz = gngb
  end
end
function d7()
  F = gg.alert("【兔子🐰地下建家大厅开启|三段跳地下建家配合】", "地下建家" .. DJM, "三段跳跳" .. ZJY)
  if F == 1 then
    XDV()
  elseif F == 2 then
    ZZZ()
  end
end
function XDV()
  if KG[19] == 0 then
    gg.clearList()
    gg.alert("大厅开启")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(800)
    gg.editAll("1.96", gg.TYPE_FLOAT)
    gg.toast("地下家")
    gg.toast("地下建家|大厅开启|找高点建家")
    DJM1()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.96", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("2", gg.TYPE_FLOAT)
    gg.toast("关闭成功")
    DJM2()
  end
end
function ZZZ()
  if KG[16] == 0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    SearchWrite({
      {3.8685732E25, 19100},
      {1, 19104},
      {1.00999999046, 19120}
    }, {
      {
        0.10000000149,
        19104,
        false
      }
    }, 16)
    gg.toast("连跳已开启")
    ZJY1()
  else
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    SearchWrite({
      {3.8685732E25, 19100},
      {0.10000000149, 19104},
      {1.00999999046, 19120}
    }, {
      {
        1,
        19104,
        false
      }
    }, 16)
    gg.toast("连跳已关闭")
    ZJY2()
  end
end
function d8()
  if KG[10] == 0 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("16,261W;25W;161W  ;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2.222222", gg.TYPE_FLOAT)
    gg.toast("遁地开启成功")
    DD1()
  else
    gg.clearList()
    gg.clearResults()
    gg.toast("遁地已关闭")
    DD2()
  end
end
function d1()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("1.9", gg.TYPE_FLOAT)
  gg.toast("找个不死的地方遁地开路飞")
  gg.alert("硬核物理隐身")
end
function d9()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("1.9", gg.TYPE_FLOAT)
  gg.toast("找个不死的地方遁地开路飞")
  gg.alert("硬核物理隐身")
end
function d10()
  F = gg.alert(" 【隐身教程：\n 人物隐身：\n  需要任意载具配合开启\n  点击乘坐，在车上开启第一步\n  开启成功后，点击下车，然后开启第二步即可隐身\n\n  注：请在人物可视范围内开启，距离过远无效", "  第一步", "  第二步")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("16", gg.TYPE_DWORD)
    gg.toast("第一步成功")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("17", gg.TYPE_DWORD)
    gg.toast("第二步成功")
  end
end
function b11()
  F = gg.alert("  教程：\n  游戏里开启第一步，开启成功后，返回大厅，重新进游戏，然后开始第二步即可定怪\n\n  注：无效果换号即可", "  第一步", "  第二步")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("16", gg.TYPE_DWORD)
    gg.toast("第一步成功")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("17", gg.TYPE_DWORD)
    gg.toast("第二步成功")
  end
end
function Exit()
  print(" Sharpshooters welcome your use ")
  os.exit()
end
cs = "309490246"

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