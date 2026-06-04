gg.toast('冷熙制作，封号与冷熙无关')
function split(A0_0, A1_1)
  local L2_2, L3_3, L4_4
  L2_2 = 1
  L3_3 = 1
  L4_4 = {}
  while true do
    if not string.find(A0_0, A1_1, L2_2) then
      L4_4[L3_3] = string.sub(A0_0, L2_2, string.len(A0_0))
      break
    end
    L4_4[L3_3] = string.sub(A0_0, L2_2, string.find(A0_0, A1_1, L2_2) - 1)
    L2_2 = string.find(A0_0, A1_1, L2_2) + string.len(A1_1)
    L3_3 = L3_3 + 1
  end
  return L4_4
end

function xgxc(A0_5, A1_6)
  local L2_7, L3_8, L4_9, L5_10
  L2_7 = 1
  L3_8 = #A1_6
  for _FORV_5_ = 1, #A1_6 do
    xgpy = A0_5 + A1_6[_FORV_5_].offset
    xglx = A1_6[_FORV_5_].type
    xgsz = A1_6[_FORV_5_].value
    xgdj = A1_6[_FORV_5_].freeze
    if xgdj == nil or xgdj == "" then
      gg.setValues({
        [1] = {
          address = xgpy,
          flags = xglx,
          value = xgsz
        }
      })
    else
      gg.addListItems({
        [1] = {
          address = xgpy,
          flags = xglx,
          freeze = xgdj,
          value = xgsz
        }
      })
    end
    xgsl = xgsl + 1
    xgjg = true
  end
end

function xqmnb(A0_11)
  gg.clearResults()
  gg.setRanges(A0_11[1].memory)
  gg.searchNumber(A0_11[3].value, A0_11[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(A0_11[2].name .. "开启失败")
  else
    gg.refineNumber(A0_11[3].value, A0_11[3].type)
    gg.refineNumber(A0_11[3].value, A0_11[3].type)
    gg.refineNumber(A0_11[3].value, A0_11[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(A0_11[2].name .. "开启失败")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      for _FORV_4_ = 1, sz do
        pdsz = true
        for _FORV_8_ = 4, #A0_11 do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[_FORV_4_].address + A0_11[_FORV_8_].offset
            pysz[1].flags = A0_11[_FORV_8_].type
            szpy = gg.getValues(pysz)
            pdpd = A0_11[_FORV_8_].lv .. ";" .. szpy[1].value
            szpd = split(pdpd, ";")
            tzszpd = szpd[1]
            pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true
              pdsz = true
            else
              pdjg = false
              pdsz = false
            end
          end
        end
        if pdjg == true then
          szpy = sl[_FORV_4_].address
          xgxc(szpy, qmxg)
        end
      end
      if xgjg == true then
        gg.toast(A0_11[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(A0_11[2].name .. "开启失败")
      end
    end
  end
end

function Main()
  SN = gg.choice({
    "【🌺全模式专区🌺】",
    "【♥降魔秒杀专区♥】",
    "【♦坐骑属性专区♦】",
    "【☀竞速排位双赢☀】",
    "【🍎️退出脚本🍎】"
  }, nil, "      脚本由冷熙制作，封号与冷熙无关")
  if SN == nil then
  else
    if SN == 1 then
      A1()
    end
    if SN == 2 then
      A2()
    end
    if SN == 3 then
      A3()
    end
    if SN == 4 then
      A4()
    end
    if SN == 5 then
      Exit()
    end
  end
  XGCK = -1
end

function A1()
  WC = gg.multiChoice({
    "结算倍分",
    "局内0分(锁分🔒)",
    "局内加分",
    "全模式无敌",
    "超级奖励加米",
    "天空之城冲刺加速",------柠檬解
    "下蹲秒死",
    "全模式改冒险",
    "下蹲遁地",------柠檬解
    "自定义开局加米",
    "开局秒死",
    "返回主菜单"
  }, nil, "此脚本全部功能免费,请勿上当受骗")-----柠檬解
  if WC == nil then
  else
    if WC[1] == true then
      a()
    end
    if WC[2] == true then
      c()
    end
    if WC[3] == true then
      g()
    end
    if WC[4] == true then
      h()
    end
    if WC[5] == true then
      i()
    end
    if WC[6] == true then
      q()
    end
    if WC[7] == true then
      d1()
    end
    if WC[8] == true then
      j()
    end
    if WC[9] == true then
      j3()
    end
    if WC[10] == true then
      j4()
    end
    if WC[11] == true then
      j5()
    end
    if WC[12] == true then
      ER()
    end
    XGCK = -1
  end
end

function A2()
  FW = gg.multiChoice({
    "降魔秒杀{1-6关}",
    "降魔秒杀{7-10关}",
    "自定义降魔排位秒杀",
    "降魔无限时间",
    "返回主页"
  }, nil, "注意:由于降魔无限时间修改的数据比较多,请耐心等待十秒左右,待他提示开启成功即可")
  if FW == nil then
  else
    if FW[1] == true then
      l()
    end
    if FW[2] == true then
      m()
    end
    if FW[3] == true then
      n()
    end
    if FW[4] == true then
      n99()
    end
    if FW[5] == true then
      NB()
    end
    XGCK = -1
  end
end

function a()
  if gg.prompt({
    "请输入你要修改的结算倍数"
  }, {""}, {"number"}) == nil or gg.prompt({
    "请输入你要修改的结算倍数"
  }, {""}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 36},
      {
        name = "结算翻倍"
      },
      {value = 643, type = 4},
      {
        lv = 1,
        offset = 4,
        type = 4
      },
      {
        lv = 3,
        offset = 8,
        type = 4
      }
    }
    qmxg = {
      {
        value = 0,
        offset = -28,
        type = 16
      },
      {
        value = gg.prompt({
          "请输入你要修改的结算倍数"
        }, {""}, {"number"})[1],
        offset = -32,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function j5()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.89999997616;300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("开局秒死开启成功")
  gg.clearResults()
end

function c()
  qmnb = {
    {memory = 16392},
    {
      name = "局内锁分🔒"
    },
    {value = 1.2715461E-38, type = 16},
    {
      lv = 1.2715427E-38,
      offset = 4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = -4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function g()
  qmnb = {
    {memory = 16392},
    {
      name = "局内加分"
    },
    {value = 1.2715461E-38, type = 16},
    {
      lv = 1.2715427E-38,
      offset = 4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function h()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("-1;800;30;150", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", 16, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = 16,
        freeze = true,
        value = 1
      }
    })
    gg.toast("全模式无敌开启成功")
  end
end

function A3()
  FW = gg.multiChoice({
    "经典模式坐骑属性",
    "多人模式坐骑属性",
    "返回主页"
  }, nil, "")
  if FW == nil then
  else
    if FW[1] == true then
      q30()
    end
    if FW[2] == true then
      q31()
    end
    if FW[3] == true then
      NB()
    end
    XGCK = -1
  end
end

function l()
  qmnb = {
    {memory = 37},
    {
      name = "降魔秒杀[1-6关]"
    },
    {value = 3000, type = 4},
    {
      lv = 4500,
      offset = 64,
      type = 4
    },
    {
      lv = 6000,
      offset = 128,
      type = 4
    },
    {
      lv = 7500,
      offset = 192,
      type = 4
    },
    {
      lv = 9000,
      offset = 256,
      type = 4
    },
    {
      lv = 10500,
      offset = 320,------柠檬解
      type = 4
    }
  }
  qmxg = {
    {
      value = 100,
      offset = 0,
      type = 4
    },
    {
      value = 100,
      offset = 64,
      type = 4
    },
    {
      value = 100,
      offset = 128,
      type = 4
    },
    {
      value = 100,
      offset = 192,
      type = 4
    },
    {
      value = 100,
      offset = 256,
      type = 4
    },
    {
      value = 100,
      offset = 320,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function m()
  qmnb = {
    {memory = 37},
    {
      name = "降魔秒杀[7-10关]"
    },
    {value = 12500, type = 4},
    {
      lv = 14500,
      offset = 64,
      type = 4
    },
    {
      lv = 16500,
      offset = 128,
      type = 4
    },
    {
      lv = 18500,
      offset = 192,
      type = 4
    }
  }
  qmxg = {
    {
      value = 100,
      offset = 0,
      type = 4
    },
    {
      value = 100,
      offset = 64,
      type = 4
    },
    {
      value = 100,
      offset = 128,
      type = 4
    },
    {
      value = 100,
      offset = 192,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function n()
  if gg.prompt({
    "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
  }, {"1500"}, {"number"}) == nil or gg.prompt({
    "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
  }, {"1500"}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 37},
      {
        name = "降魔{排位秒杀}"
      },
      {value = 2400, type = 4},
      {
        lv = 3600,
        offset = 64,
        type = 4
      },
      {
        lv = 4800,
        offset = 128,
        type = 4
      },
      {
        lv = 6000,
        offset = 192,
        type = 4
      },
      {
        lv = 7200,
        offset = 256,
        type = 4
      },
      {
        lv = 8400,
        offset = 320,
        type = 4
      },
      {
        lv = 10000,
        offset = 384,
        type = 4
      },
      {
        lv = 11600,
        offset = 448,
        type = 4
      },
      {
        lv = 13200,
        offset = 512,
        type = 4
      },
      {
        lv = 14800,
        offset = 576,
        type = 4
      }
    }
    qmxg = {
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 0,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 64,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 128,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 192,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 256,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 320,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 384,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 448,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 512,
        type = 4
      },
      {
        value = gg.prompt({
          "请输入你要改成的boss血量\n注意:你输入的是boss的血量\n数值越大越稳,推荐大家使用1500"
        }, {"1500"}, {"number"})[1],
        offset = 576,
        type = 4
      }
    }
    xqmnb(qmnb)
  end
end

function A4()
  FW = gg.multiChoice({
    "竞速排位双赢",
    "返回主页"
  }, nil, "此脚本全部功能免费,请勿上当受骗\n此功能必须等对面跑完才能结算\n不管输赢都加星")
  if FW == nil then
  else
    if FW[1] == true then
      q90()
    end
    if FW[2] == true then
      NB()
    end
    XGCK = -1
  end
end

function d1()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("-1", gg.TYPE_FLOAT)
  gg.toast("下蹲秒死开启成功")
  gg.clearResults()
end

function j3()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("下蹲遁地开启成功")
  gg.clearResults()
end

function j()
  qmnb = {
    {memory = 36},
    {
      name = "全模式改冒险"
    },
    {value = 218, type = 4},
    {
      lv = 219,
      offset = 16,
      type = 4
    },
    {
      lv = 220,
      offset = 32,
      type = 4
    },
    {
      lv = 221,
      offset = 48,
      type = 4
    },
    {
      lv = 222,
      offset = 64,
      type = 4
    },
    {
      lv = 223,
      offset = 80,
      type = 4
    },
    {
      lv = 224,
      offset = 96,
      type = 4
    },
    {
      lv = 225,
      offset = 112,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -16,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
end

function q30()
  if gg.prompt({
    "输入要修改的坐骑属性\n表现分加成",
    "金币加成"
  }, {"100", "100"}, {"number", "number"}) == nil or gg.prompt({
    "输入要修改的坐骑属性\n表现分加成",
    "金币加成"
  }, {"100", "100"}, {"number", "number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 45},
      {
        name = "经典模式坐骑属性"
      },
      {value = 5761, type = 4},
      {
        lv = 5758,
        offset = 128,
        type = 4
      }
    }
    qmxg = {
      {
        value = 0,
        offset = 172,
        type = 16
      },
      {
        value = gg.prompt({
          "输入要修改的坐骑属性\n表现分加成",
          "金币加成"
        }, {"100", "100"}, {"number", "number"})[1],
        offset = 176,
        type = 16
      },
      {
        value = 0,
        offset = 180,
        type = 16
      },
      {
        value = gg.prompt({
          "输入要修改的坐骑属性\n表现分加成",
          "金币加成"
        }, {"100", "100"}, {"number", "number"})[2],
        offset = 184,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function q31()
  if gg.prompt({
    "根据自己的装备调试,太快了容易异常,稳定自测\n最大速度",
    "加速能力",
    "超级冲刺",
    "能量累积"
  }, {
    "800",
    "90",
    "90",
    "90"
  }, {
    "number",
    "number",
    "number",
    "number"
  }) == nil or gg.prompt({
    "根据自己的装备调试,太快了容易异常,稳定自测\n最大速度",
    "加速能力",
    "超级冲刺",
    "能量累积"
  }, {
    "800",
    "90",
    "90",
    "90"
  }, {
    "number",
    "number",
    "number",
    "number"
  }) == "" then
    Main()
  else
    qmnb = {
      {memory = 45},
      {
        name = "多人模式坐骑属性"
      },
      {value = 5761, type = 4},
      {
        lv = 5758,
        offset = 128,
        type = 4
      }
    }
    qmxg = {
      {
        value = gg.prompt({
          "根据自己的装备调试,太快了容易异常,稳定自测\n最大速度",
          "加速能力",
          "超级冲刺",
          "能量累积"
        }, {
          "800",
          "90",
          "90",
          "90"
        }, {
          "number",
          "number",
          "number",
          "number"
        })[1],
        offset = 204,
        type = 16
      },
      {
        value = 0,
        offset = 208,
        type = 16
      },
      {
        value = gg.prompt({
          "根据自己的装备调试,太快了容易异常,稳定自测\n最大速度",
          "加速能力",
          "超级冲刺",
          "能量累积"
        }, {
          "800",
          "90",
          "90",
          "90"
        }, {
          "number",
          "number",
          "number",
          "number"
        })[2],
        offset = 212,
        type = 16
      },
      {
        value = 0,
        offset = 216,
        type = 16
      },
      {
        value = gg.prompt({
          "根据自己的装备调试,太快了容易异常,稳定自测\n最大速度",
          "加速能力",
          "超级冲刺",
          "能量累积"
        }, {
          "800",
          "90",
          "90",
          "90"
        }, {
          "number",
          "number",
          "number",
          "number"
        })[3],
        offset = 220,
        type = 16
      },
      {
        value = 0,
        offset = 224,
        type = 16
      },
      {
        value = gg.prompt({
          "根据自己的装备调试,太快了容易异常,稳定自测\n最大速度",
          "加速能力",
          "超级冲刺",
          "能量累积"
        }, {
          "800",
          "90",
          "90",
          "90"
        }, {
          "number",
          "number",
          "number",
          "number"
        })[4],
        offset = 228,
        type = 16
      },
      {
        value = 0,
        offset = 232,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function q90()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("62C", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(12)
  gg.searchNumber("2369;1;3::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2369", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("排位双赢开启成功")
  gg.clearResults()
end

function i()
  if gg.prompt({
    "💖超级奖励加米💖\n💖请输入要改成的值💖\n💖改0.4恢复💖"
  }, {"20"}, {"number"}) == nil or gg.prompt({
    "💖超级奖励加米💖\n💖请输入要改成的值💖\n💖改0.4恢复💖"
  }, {"20"}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 16392},
      {
        name = "超级奖励加米"
      },
      {value = 1.1573021E-38, type = 16},
      {
        lv = 1.1535237E-38,
        offset = 4,
        type = 16
      }
    }
    qmxg = {
      {
        value = gg.prompt({
          "💖超级奖励加米💖\n💖请输入要改成的值💖\n💖改0.4恢复💖"
        }, {"20"}, {"number"})[1],
        offset = -4,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function j4()
  if gg.prompt({
    "💖自定义开局加米💖\n💖请输入要改成的值💖\n💖改-0.14恢复💖"
  }, {""}, {"number"}) == nil or gg.prompt({
    "💖自定义开局加米💖\n💖请输入要改成的值💖\n💖改-0.14恢复💖"
  }, {""}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 16392},
      {
        name = "自定义开局加米"
      },
      {value = 9.8913903E-39, type = 16},
      {
        lv = 9.8917322E-39,
        offset = 4,
        type = 16
      }
    }
    qmxg = {
      {
        value = gg.prompt({
          "💖自定义开局加米💖\n💖请输入要改成的值💖\n💖改-0.14恢复💖"
        }, {""}, {"number"})[1],
        offset = -4,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function q()
  if gg.prompt({
    "天空之城冲刺加速\n{默认4000}"
  }, {"4000"}, {"number"}) == nil or gg.prompt({
    "天空之城冲刺加速\n{默认4000}"
  }, {"4000"}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 16392},
      {
        name = "天空之城冲刺加速"
      },
      {value = 1500, type = 16},
      {
        lv = 2500,
        offset = 4,
        type = 16
      }
    }
    qmxg = {
      {
        value = gg.prompt({
          "天空之城冲刺加速\n{默认4000}"
        }, {"4000"}, {"number"})[1],
        offset = 8,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function n99()
  qmnb = {
    {memory = 44},
    {
      name = "降魔无限时间"
    },
    {value = 120, type = 16},
    {
      lv = 7.0064923E-45,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 9999999999,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function ER()
  Main()
end

function NB()
  Main()
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
