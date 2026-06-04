function split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
      break
    end
    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
    nFindStartIndex = nFindLastIndex + string.len(szSeparator)
    nSplitIndex = nSplitIndex + 1
  end
  return nSplitArray
end

function xgxc(szpy, qmxg)
  do
    do
      for _FORV_5_ = 1, #qmxg do
        xgpy = szpy + qmxg[_FORV_5_].offset
        xglx = qmxg[_FORV_5_].type
        xgsz = qmxg[_FORV_5_].value
        xgdj = qmxg[_FORV_5_].freeze
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
  end
end

function xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(qmnb[1].memory)
  gg.searchNumber(qmnb[3].value, qmnb[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(qmnb[2].name .. "开启成功")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "开启成功")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      do
        do
          for _FORV_4_ = 1, sz do
            pdsz = true
            do
              do
                for _FORV_8_ = 4, #qmnb do
                  if pdsz == true then
                    pysz = {}
                    pysz[1] = {}
                    pysz[1].address = sl[_FORV_4_].address + qmnb[_FORV_8_].offset
                    pysz[1].flags = qmnb[_FORV_8_].type
                    szpy = gg.getValues(pysz)
                    pdpd = qmnb[_FORV_8_].lv .. ";" .. szpy[1].value
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
              end
            end
            if pdjg == true then
              szpy = sl[_FORV_4_].address
              xgxc(szpy, qmxg)
            end
          end
        end
      end
      if xgjg == true then
        gg.toast(qmnb[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(qmnb[2].name .. "开启失败")
      end
    end
  end
end

function Main()
  SN = gg.choice({
    "改分改米",
    "降魔秒杀",
    "无限巅峰",
    "坐骑属性",
    "角色瞬移",
    "娱乐专区",
    "退出脚本"
  }, nil, "作者星语QQ:3082608651         ")
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
      A5()
    end
    if SN == 6 then
      A6()
    end
    if SN == 7 then
      Exit()
    end
  end
  XGCK = -1
end

function A1()
  WC = gg.multiChoice({
    "自定义结算分",
    "自定义开局距离",
    "局内锁分(局内无分)",
    "游戏秒死",
    "自定义游戏速度",
    "自定义排位改板块",
    "表现分改分",
    "全模式无敌",
    "全模式瞬移",
    "全模式遁地",
    "全模式改冒险",
    "过新手",
    "返回主页"
  }, nil, "作者星语QQ:3082608651        ")
  if WC == nil then
  else
    if WC[1] == true then
      a()
    end
    if WC[2] == true then
      b()
    end
    if WC[3] == true then
      c()
    end
    if WC[4] == true then
      d()
    end
    if WC[5] == true then
      e()
    end
    if WC[6] == true then
      f()
    end
    if WC[7] == true then
      g()
    end
    if WC[8] == true then
      h()
    end
    if WC[9] == true then
      t()
    end
    if WC[10] == true then
      i()
    end
    if WC[11] == true then
      j()
    end
    if WC[12] == true then
      k()
    end
    if WC[13] == true then
      NB()
    end
    XGCK = -1
  end
end

function A2()
  FW = gg.multiChoice({
    "降魔秒杀{1-6}",
    "降魔秒杀{7-10}",
    "自定义降魔排位秒杀",
    "返回主页"
  }, nil, "作者星语QQ:3082608651         ")
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
      NB()
    end
    XGCK = -1
  end
end

function A3()
  FW = gg.multiChoice({
    "无限巅峰",
    "无限超级奖励",
    "天空城冲刺加速",
    "返回主页"
  }, nil, "作者星语QQ:3082608651         ")
  if FW == nil then
  else
    if FW[1] == true then
      o()
    end
    if FW[2] == true then
      p()
    end
    if FW[3] == true then
      NB()
    end
    XGCK = -1
  end
end

function A4()
  FW = gg.multiChoice({
    "坐骑经典属性",
    "坐骑多人属性",
    "返回主页"
  }, nil, "作者星语QQ:3082608651         ")
  if FW == nil then
  else
    if FW[1] == true then
      r()
    end
    if FW[2] == true then
      s()
    end
    if FW[3] == true then
      NB()
    end
    XGCK = -1
  end
end

function A5()
  FW = gg.multiChoice({
    "洛神瞬移",
    "卡牌瞬移",
    "瞬移无效",
    "金蝉子瞬移",
    "返回主页"
  }, nil, "作者星语QQ:3082608651         ")
  if FW == nil then
  else
    if FW[1] == true then
      Ys1()
    end
    if FW[2] == true then
      Ys2()
    end
    if FW[3] == true then
      Ys3()
    end
    if FW[4] == true then
      Ys4()
    end
    if FW[5] == true then
      NB()
    end
    XGCK = -1
  end
end

function A6()
  FW = gg.multiChoice({
    "俱乐部改坐骑人物",
    "返回主页"
  }, nil, "作者星语QQ:3082608651         ")
  if FW == nil then
  else
    if FW[1] == true then
      Sd()
    end
    if FW[2] == true then
      NB()
    end
    XGCK = -1
  end
end

function Ys1()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("778", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("洛神瞬移开启成功")
end

function Ys2()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("964", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("卡牌瞬移开启成功")
end

function Ys3()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("F70", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("小音瞬移开启成功")
end

function Ys4()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("C68", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("金蝉子瞬移开启成功")
end

function a()
  local data = gg.prompt({
    "请输入你修改的结算倍数\n结算分"
  }, {""}, {"number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 37},
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
        offset = -16,
        type = 16
      },
      {
        value = data[1],
        offset = -12,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function b()
  local data = gg.prompt({
    "改米根据自己需求调整\n改米距离{默认205,改-0.14恢复}"
  }, {"205"}, {"number"})
  if data == nil or data == "" then
  else
    qmnb = {
      {memory = 16392},
      {
        name = "距离改米"
      },
      {value = 9.14037281E-39, type = 16},
      {
        lv = 9.14070912E-39,
        offset = 4,
        type = 16
      }
    }
    qmxg = {
      {
        value = data[1],
        offset = -4,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function c()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("62C", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("局内零分开启成功")
end

function d()
  QX = gg.alert("两个功能不能同时开始\n", "下蹲秒死", "开局秒死", "返回上一页")
  if QX == nil then
  else
    if QX == 1 then
      d1()
    end
    if QX == 2 then
      d2()
    end
    if QX == 3 then
      ER()
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

function d2()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.89999997616;300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("开局秒死开启成功")
  gg.clearResults()
end

function e()
  local data = gg.prompt({
    "游戏速度\n{默认0.0015,也就是1.5倍速度.多人微调}"
  }, {"0.003"}, {"number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 16392},
      {
        name = "游戏速度"
      },
      {value = 1.77268179E-38, type = 16},
      {
        lv = 1.77148508E-38,
        offset = 4,
        type = 16
      }
    }
    qmxg = {
      {
        value = data[1],
        offset = -4,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function f()
  local data = gg.prompt({
    "请输入你修改的板块;\n1是经典,2是夺分,3是竞速,4是生存,5是降魔\n排位改板块"
  }, {""}, {"number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 37},
      {
        name = "排位改板块"
      },
      {value = 12336, type = 4},
      {
        lv = 12336,
        offset = 284,
        type = 4
      }
    }
    qmxg = {
      {
        value = data[1],
        offset = 412,
        type = 4,
        freeze = true
      }
    }
    xqmnb(qmnb)
  end
end

function g()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("5A8", 4294967295, 16)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("表现分改分开启成功")
end

function h()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("-1;800;30;150", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", 16, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  do
    do
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
        gg.toast("无敌开启成功")
      end
    end
  end
end

function i()
  gg.clearResults()
  gg.setRanges(16392)
  gg.searchNumber("0.35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("遁地开启成功")
  gg.clearResults()
end

function t()
  local data = gg.prompt({
    "全模式瞬移\n全模式瞬移{默认20,改0.4恢复}"
  }, {"20"}, {"number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 16392},
      {
        name = "全模式瞬移"
      },
      {value = 1200, type = 16},
      {
        lv = 0.40000000596,
        offset = 4,
        type = 16
      }
    }
    qmxg = {
      {
        value = data[1],
        offset = 4,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function j()
  qmnb = {
    {memory = 37},
    {
      name = "全模式改冒险"
    },
    {value = 218, type = 4},
    {
      lv = 217,
      offset = 16,
      type = 4
    },
    {
      lv = 218,
      offset = 32,
      type = 4
    },
    {
      lv = 219,
      offset = 48,
      type = 4
    },
    {
      lv = 220,
      offset = 64,
      type = 4
    },
    {
      lv = 221,
      offset = 80,
      type = 4
    },
    {
      lv = 222,
      offset = 96,
      type = 4
    },
    {
      lv = 223,
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

function k()
  qmnb = {
    {memory = 37},
    {
      name = "跳过新手任务"
    },
    {value = 188, type = 4},
    {
      lv = 86400,
      offset = 16,
      type = 4
    }
  }
  qmxg = {
    {
      value = 16,
      offset = -266,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function l()
  qmnb = {
    {memory = 37},
    {
      name = "降魔秒杀[1-6]"
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
      offset = 320,
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
      name = "降魔秒杀[7-10]"
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
  local data = gg.prompt({
    "请输入你修改的秒杀效率\n降魔秒杀{默认500,可以自己调整}"
  }, {"500"}, {"number"})
  if data == nil or data == "" then
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
        offset = 168,
        type = 4
      },
      {
        lv = 7200,
        offset = 192,
        type = 4
      },
      {
        lv = 8400,
        offset = 256,
        type = 4
      },
      {
        lv = 10000,
        offset = 320,
        type = 4
      },
      {
        lv = 11600,
        offset = 384,
        type = 4
      },
      {
        lv = 13200,
        offset = 448,
        type = 4
      },
      {
        lv = 14800,
        offset = 512,
        type = 4
      }
    }
    qmxg = {
      {
        value = data[1],
        offset = 0,
        type = 4
      },
      {
        value = data[1],
        offset = 64,
        type = 4
      },
      {
        value = data[1],
        offset = 128,
        type = 4
      },
      {
        value = data[1],
        offset = 168,
        type = 4
      },
      {
        value = data[1],
        offset = 192,
        type = 4
      },
      {
        value = data[1],
        offset = 256,
        type = 4
      },
      {
        value = data[1],
        offset = 320,
        type = 4
      },
      {
        value = data[1],
        offset = 384,
        type = 4
      },
      {
        value = data[1],
        offset = 448,
        type = 4
      },
      {
        value = data[1],
        offset = 512,
        type = 4
      }
    }
    xqmnb(qmnb)
  end
end

function o()
  QX = gg.alert("两个功能不能同时开始\n", "恢复数据", "无限巅峰", "返回上一页")
  if QX == nil then
  else
    if QX == 1 then
      o2()
    end
    if QX == 2 then
      o1()
    end
    if QX == 3 then
      ER()
    end
    XGCK = -1
  end
end

function o1()
  gg.clearResults()
  gg.setRanges(37)
  gg.searchNumber("2369;1;3::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2369", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无限巅峰开启成功")
  gg.clearResults()
end

function o2()
  gg.clearResults()
  gg.setRanges(37)
  gg.searchNumber("2369;0;1;3::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9900)
  gg.editAll("2369", gg.TYPE_FLOAT)
  gg.toast("无限巅峰恢复成功")
  gg.clearResults()
end

function p()
  local data = gg.prompt({
    "天空冲刺加速\n{默认4500,改1200恢复}"
  }, {"4500"}, {"number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 16392},
      {
        name = "天空城冲刺加速"
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
        value = data[1],
        offset = 8,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function r()
  local data = gg.prompt({
    "请输入你想修改的坐骑属性，自己调整\n表现分加成",
    "金币加成"
  }, {"", ""}, {"number", "number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 37},
      {
        name = "坐骑经典属性"
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
        value = data[1],
        offset = 176,
        type = 16
      },
      {
        value = 0,
        offset = 180,
        type = 16
      },
      {
        value = data[2],
        offset = 184,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function s()
  local data = gg.prompt({
    "看自己装备改的合适的\n最大速度",
    "加速能力",
    "超级冲刺",
    "能量累积"
  }, {
    "500",
    "100",
    "100",
    "1000"
  }, {
    "number",
    "number",
    "number",
    "number"
  })
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 37},
      {
        name = "坐骑多人属性"
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
        value = data[1],
        offset = 204,
        type = 16
      },
      {
        value = 0,
        offset = 208,
        type = 16
      },
      {
        value = data[2],
        offset = 212,
        type = 16
      },
      {
        value = 0,
        offset = 216,
        type = 16
      },
      {
        value = data[3],
        offset = 220,
        type = 16
      },
      {
        value = 0,
        offset = 224,
        type = 16
      },
      {
        value = data[4],
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

function Sd()
  local data = gg.prompt({
    "请输入你修改的坐骑人物默认大黄鸭\n坐骑人物"
  }, {"7028"}, {"number"})
  if data == nil or data == "" then
    Main()
  else
    qmnb = {
      {memory = 37},
      {
        name = "改俱乐部"
      },
      {value = -374307099, type = 4},
      {
        lv = 7018,
        offset = -12,
        type = 4
      }
    }
    qmxg = {
      {
        value = data[1],
        offset = -4,
        type = 4
      }
    }
    xqmnb(qmnb)
  end
end

function ER()
  A1()
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
