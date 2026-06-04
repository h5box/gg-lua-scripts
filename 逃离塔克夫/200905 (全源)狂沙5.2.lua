
--孤  交流群：1098560224

function HOME()
  menu = gg.choice({
    "透视合集",
    "上色合集",
    "配合防封",
    "必封功能",
    "退出"
  }, nil, os.date("反馈交流群1098560224 "))
  if menu == 1 then
    A()
  end
  if menu == 2 then
    B()
  end
  if menu == 3 then
    C()
  end
  if menu == 4 then
    D()
  end
  if menu == 5 then
    Exit()
  end
  FX1 = 0
end

function A()
  menu1 = gg.multiChoice({
    "骁龙435透视",
    "骁龙625透视",
    "骁龙659透视",
    "骁龙820透视",
    "骁龙835透视",
    "骁龙845透视",
    "骁龙855透视",
    "返回上一页"
  }, nil, os.date("当前时间:%Y年-%m月-%d日 %H时 %M分 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      A1()
    end
    if menu1[2] == true then
      A2()
    end
    if menu1[3] == true then
      A3()
    end
    if menu1[4] == true then
      A4()
    end
    if menu1[5] == true then
      A5()
    end
    if menu1[6] == true then
      A6()
    end
    if menu1[7] == true then
      A7()
    end
    if menu1[8] == true then
      HOME()
    end
  end
FX1 = 0
end

function A1()
  gg.setRanges(1048576)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("600")
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function A2()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("-4.67159277e-40;4.79615571e21; 3.76158192e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.searchNumber("1.66236937e-19;3.76158192e-37;2.0;9.99999997e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function A3()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1654D;1655D;1655D;2;-1.0;1.0:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("118", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("118.1", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("118.2", gg.TYPE_FLOAT)
  gg.toast("855透视开启成功")
end

function A4()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.26870221e-42;1.39125368e-19;1.66289773e-19;1.66236937e-19;3.76158192e-37;2.0;9.99999997e-7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("透视1成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.45718225e-40F;4.7223693e21F;-4.67159277e-40F;4.79615571e21F;3.76158192e-37F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("透视2成功")
end

function A5()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("600")
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("我爱中国!")
  gg.clearResults()
end

function A6()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.1011433e-19;24,576.0078125;2.0;1.6623025e-19;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.6628977e-19;1.6623694e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("执行完成")
  gg.clearResults()
end

function A7()
  qmnb = {
    {memory = 1048576},
    {name = "透视"},
    {value = 3.673461885273578E-40, type = 16},
    {
      lv = 2,
      offset = 56,
      type = 16
    },
    {
      lv = 1.120201589731695E-19,
      offset = 84,
      type = 16
    },
    {
      lv = 1.1202017189786658E-19,
      offset = 92,
      type = 16
    },
    {
      lv = 1.1202018482256365E-19,
      offset = 100,
      type = 16
    }
  }
  qmxg = {
    {
      value = 118,
      offset = 56,
      type = 16
    },
    {
      value = 118,
      offset = 10616,
      type = 16
    },
    {
      value = 1000,
      offset = 10640,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function B()
  menu1 = gg.multiChoice({
    "人物红色",
    "人物浅蓝",
    "人物深蓝",
    "人物白色",
    "人物黄色",
    "人物紫色",
    "花里胡哨1",
    "花里胡哨2",
    "返回上一页"
  }, nil, os.date("当前时间:%Y年-%m月-%d日 %H时 %M分 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      B1()
    end
    if menu1[2] == true then
      B2()
    end
    if menu1[3] == true then
      B3()
    end
    if menu1[4] == true then
      B4()
    end
    if menu1[5] == true then
      B5()
    end
    if menu1[6] == true then
      B6()
    end
    if menu1[7] == true then
      B7()
    end
    if menu1[8] == true then
      B8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  FX1 = 0
end

function B1()
  gg.setRanges(1048576)
  LongTao({
    {
      ["类型"] = 4,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = -8,
      ["副特征码"] = 32771
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 50331648
    }
  }, {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 6
    }
  })
end

function B2()
  gg.setRanges(1048576)
  LongTao({
    {
      ["类型"] = 4,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = -8,
      ["副特征码"] = 32771
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 50331648
    }
  }, {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 3
    }
  })
end

function B3()
  gg.setRanges(1048576)
  LongTao({
    {
      ["类型"] = 4,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = -8,
      ["副特征码"] = 32771
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 50331648
    }
  }, {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 2
    }
  })
end

function B4()
  gg.setRanges(1048576)
  LongTao({
    {
      ["类型"] = 4,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = -8,
      ["副特征码"] = 32771
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 50331648
    }
  }, {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 4
    }
  })
end

function B5()
  gg.setRanges(1048576)
  LongTao({
    {
      ["类型"] = 4,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = -8,
      ["副特征码"] = 32771
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 50331648
    }
  }, {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 5
    }
  })
end

function B6()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("262,148;1,075,333,392;1,048,580:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("紫色")
end

function B7()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,224;1,194,332,179;1,194,363,163:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function B8()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("262,148;1,075,333,392;1,048,580:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function C()
  menu1 = gg.multiChoice({
    "(新)小范围①(不刮痧)",
    "(旧)小范围(0.08)(不刮痧)",
    "头部范围(不刮痧)",
    "上帝视角",
    "全图除草",
    "人物爬墙",
    "人物变大",
    "穿墙(蹲下开启)",
    "穿墙恢复",
    "范围拾取",
    "倒退加速",
    "返回上一页"
  }, nil, os.date("当前时间:%Y年-%m月-%d日 %H时 %M分 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      C1()
    end
    if menu1[2] == true then
      C2()
    end
    if menu1[3] == true then
      C3()
    end
    if menu1[4] == true then
      C4()
    end
    if menu1[5] == true then
      C5()
    end
    if menu1[6] == true then
      C6()
    end
    if menu1[7] == true then
      C7()
    end
    if menu1[8] == true then
      C8()
    end
    if menu1[9] == true then
      C9()
    end
    if menu1[10] == true then
      C10()
    end
    if menu1[11] == true then
      C11()
    end
    if menu1[12] == true then
      HOME()
    end
  end
  FX1 = 0
end

function C1()
  gg.setRanges(4)
  LongTao({
    {
      ["类型"] = 16,
      ["主特征码"] = 0.14
    },
    {
      ["类型"] = 1,
      ["偏移"] = -1,
      ["副特征码"] = 62
    }
  }, {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1.3
    }
  })
  gg.setRanges(4)
  LongTao({
    {
      ["类型"] = 16,
      ["主特征码"] = 0.18
    },
    {
      ["类型"] = 4,
      ["偏移"] = -4,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = -12,
      ["副特征码"] = 0
    }
  }, {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1.3
    }
  })
end

function C2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function C3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.88", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function C4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.89999997616;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.89999997616;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2.5
      }
    })
  end
  gg.toast("视角开启成功")
  gg.clearResults()
end

function C5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("10;5126;3;11:", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 4)
  gg.toast("搜索成功")
end

function C6()
  gg.setRanges(4)
  SearchWrite({
    {0.6216099858283997, 0},
    {0.009999999776482582, 4},
    {0.30000001192092896, 8}
  }, {
    {5, 8}
  }, 16)
end

function C7()
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("变大开启成功")
end

function C8()
  gg.setRanges(4)
  LongTao({
    {
      ["类型"] = 16,
      ["主特征码"] = 0.6000000238418579
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 0.4000000059604645
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.10000000149011612
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0.25
    }
  }, {
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["冻结"] = false,
      ["修改"] = -0.004567
    }
  })
end

function C9()
  gg.setRanges(4)
  LongTao({
    {
      ["类型"] = 16,
      ["主特征码"] = 0.6000000238418579
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = -0.004567
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.10000000149011612
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0.25
    }
  }, {
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["冻结"] = false,
      ["修改"] = 0.4000000059604645
    }
  })
end

function C10()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5D;0E;1F;2F::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(510)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("成功")
end

function C11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", 64)
  gg.toast("加速成功")
end

function D()
  menu1 = gg.multiChoice({
    "枪械午后",
    "枪械射速",
    "开镜路飞",
    "返回上一页"
  }, nil, os.date("当前时间:%Y年-%m月-%d日 %H时 %M分 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      D1()
    end
   if menu1[2] == true then
      D2()
    end
    if menu1[3] == true then
      D3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  FX1 = 0
end

function D1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2D;700E;4.18359375;10E;1D", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.18359375", 16, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0
      }
    })
  end
  gg.toast("午后开启成功")
  gg.clearResults()
end

function D2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", 16)
  gg.toast("开启成功")
end

function D3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.484;0.284;0.924", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.484;0.284;0.924", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", 64)
  gg.toast("搜索成功")
end

function Exit()
  gg.alert("使用愉快，此脚本完全免费，如果你是买来的那么恭喜你被骗了")
  os.exit()
end

while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    HOME()
  end
end
