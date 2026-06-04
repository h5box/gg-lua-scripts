function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx = Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if count > 0 then
    gg.toast("共搜索 " .. count .. " 条数据")
    do
      do
        for _FORV_8_, _FORV_9_ in ipairs(result) do
          _FORV_9_.isUseful = true
        end
      end
    end
    do
      do
        for _FORV_8_ = 2, #Search do
          local tmp = {}
          local num = Search[_FORV_8_]["副特征码"]
          if Search[_FORV_8_]["类型"] ~= nil then
            lx = Search[_FORV_8_]["类型"]
          else
            lx = Search[1]["类型"]
          end
          do
            do
              for _FORV_14_, _FORV_15_ in ipairs(result) do
                tmp[#tmp + 1] = {}
                tmp[#tmp].address = _FORV_15_.address + Search[_FORV_8_]["偏移"]
                tmp[#tmp].flags = lx
              end
            end
          end
          tmp = gg.getValues(tmp)
          do
            for _FORV_14_, _FORV_15_ in ipairs(tmp) do
              if tostring(_FORV_15_.value) ~= tostring(num) then
                result[_FORV_14_].isUseful = false
              end
            end
          end
        end
      end
    end
    do
      do
        for _FORV_8_, _FORV_9_ in ipairs(result) do
          if _FORV_9_.isUseful then
            data[#data + 1] = _FORV_9_.address
          end
        end
      end
    end
    if #data > 0 then
      local t = {}
      do
        do
          for _FORV_9_ = 1, #data do
            do
              for _FORV_13_, _FORV_14_ in ipairs(Write) do
                if _FORV_14_["类型"] ~= nil then
                  lx = _FORV_14_["类型"]
                else
                  lx = Search[1]["类型"]
                end
                t[#t + 1] = {}
                t[#t].address = data[_FORV_9_] + _FORV_14_["偏移"]
                t[#t].flags = lx
                if _FORV_14_["修改"] ~= nil and _FORV_14_["修改"] ~= false then
                  t[#t].value = _FORV_14_["修改"]
                  gg.setValues(t)
                  if _FORV_14_["冻结"] == true then
                    local item = {}
                    item[#item + 1] = t[#t]
                    item[#item].freeze = _FORV_14_["冻结"]
                    gg.addListItems(item)
                  end
                end
              end
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 " .. #t .. " 条数据")
    else
      gg.toast("未搜到数据！")
      return false
    end
  else
    gg.toast("未搜到数据！")
    return false
  end
end

function Main()
  menu = gg.choice({
    "稳定功能",
    "变态功能1",
    "变态功能2",
    "追捕功能",
    "青铜速刷",
    "无限游客",
    "改道具",
    "主动技能",
    "道具免费无CD",
    "退出"
  }, nil, os.date("反馈交流群1084694230 "))
  if menu == 1 then
    A()
  end
  if menu == 2 then
    B()
  end
  if menu == 3 then
    E()
  end
  if menu == 4 then
    K()
  end
  if menu == 5 then
    C()
  end
  if menu == 6 then
    D()
  end
  if menu == 7 then
    F()
  end
  if menu == 8 then
    H()
  end
  if menu == 9 then
    W()
  end
  if menu == 10 then
    Exit()
  end
  XGCK = -1
end

function A()
  menu1 = gg.multiChoice({
    "疾跑跳高无限时间(大厅)",
    "自调开锁速度(一局一开)",
    "黑暗透视(一局一开)",
    "1.5倍开锁",
    "2倍开锁",
    "3倍开锁",
    "秒开补给箱(一局一开)",
    "0.4疾跑微加速(大厅)",
    "0.5疾跑微加速(大厅)",
    "上帝视角(一局一开)",
    "透视(透草)(大厅)",
    "返回上一页"
  }, nil, os.date("配合端口全开不封 "))
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
      A8()
    end
    if menu1[9] == true then
      A9()
    end
    if menu1[10] == true then
      A10()
    end
    if menu1[11] == true then
      A11()
    end
    if menu1[12] == true then
      HOME()
    end
  end
  GLWW = -1
end

function B()
  menu1 = gg.multiChoice({
    "开锁无限金币(要避开完美)(大厅)(虚体金币)",
    "皮卡无限时间(大厅)",
    "针无限时间(大厅)",
    "1级火箭筒变3级火箭筒(大厅)",
    "1级火箭筒变3级冲锋枪(大厅)",
    "1级火箭筒变3级迫击炮(大厅)",
    "火箭筒无间隔(大厅)",
    "火箭筒秒杀(大厅)",
    "引力场无CD(大厅)",
    "手榴弹+血包无CD(大厅)",
    "秒开一切(一局一开)",
    "全屏救人(一局一开)",
    "范围开锁(一局一开)",
    "范围开门(一局一开)",
    "踩夹子加速(一局一开)",
    "全道具免费(大厅)",
    "boss全屏普攻(一局一开)",
    "返回上一页"
  }, nil, os.date("变态功能建议自建房开，封了别来找我"))
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
      B9()
    end
    if menu1[10] == true then
      B10()
    end
    if menu1[11] == true then
      B11()
    end
    if menu1[12] == true then
      B12()
    end
    if menu1[13] == true then
      B13()
    end
    if menu1[14] == true then
      B14()
    end
    if menu1[15] == true then
      B15()
    end
    if menu1[16] == true then
      B16()
    end
    if menu1[17] == true then
      B17()
    end
    if menu1[18] == true then
      HOME()
    end
  end
  GLWW = -1
end

function K()
  menu1 = gg.multiChoice({
    "疾跑无限时间(大厅)",
    "火箭筒间隔0.38(大厅)",
    "火箭筒改3级(大厅)",
    "透视(可透草)(大厅)",
    "黑暗透视(一局一开)",
    "无限夹子(大厅)",
    "无限传送(冷却好再开)",
    "返回上一页"
  }, nil, os.date("。。。。。。 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      K1()
    end
    if menu1[2] == true then
      K2()
    end
    if menu1[3] == true then
      K3()
    end
    if menu1[4] == true then
      K4()
    end
    if menu1[5] == true then
      K5()
    end
    if menu1[6] == true then
      K6()
    end
    if menu1[7] == true then
      K7()
    end
    if menu1[8] == true then
      HOME()
    end
  end
  GLWW = -1
end

function C()
  menu1 = gg.multiChoice({
    "疾跑跳高无限时间(大厅)",
    "疾跑4倍速(大厅)",
    "4倍速恢复(大厅)",
    "秒开一切(一局一开)",
    "黑暗透视(一局一开)",
    "返回上一页"
  }, nil, os.date("仅限青铜使用 "))
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
      HOME()
    end
  end
  GLWW = -1
end

function D()
  menu1 = gg.multiChoice({
    "好游快爆版本",
    "4399版本",
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
      HOME()
    end
  end
  GLWW = -1
end

function E()
  menu1 = gg.multiChoice({
    "皮卡3倍速(大厅)",
    "生命护盾2000(大厅)",
    "无条件加速(一局一开)",
    "百分百触发购物达人(大厅)",
    "百分百触发机关大师(大厅)",
    "百分百触发来抓我呀(大厅)",
    "锁血(一局一开)",
    "自走球冷却(大厅)",
    "酒桶范围(扔一个开)",
    "秒开锁(一局一开)",
    "充气垫全图(要十几秒)(放一个开)",
    "返回上一页"
  }, nil, os.date("变态功能建议自建房开，封了别来找我"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      E1()
    end
    if menu1[2] == true then
      E2()
    end
    if menu1[3] == true then
      E3()
    end
    if menu1[4] == true then
      E5()
    end
    if menu1[5] == true then
      E4()
    end
    if menu1[6] == true then
      E6()
    end
    if menu1[7] == true then
      E7()
    end
    if menu1[8] == true then
      E8()
    end
    if menu1[9] == true then
      E9()
    end
    if menu1[10] == true then
      E10()
    end
    if menu1[11] == true then
      E11()
    end
    if menu1[12] == true then
      HOME()
    end
  end
  GLWW = -1
end

function F()
  menu1 = gg.multiChoice({
    "疾跑改无限暴走(大厅)",
    "疾跑改无敌护盾(大厅)",
    "雷改针(大厅)",
    "雷改生命护盾(大厅)",
    "返回上一页"
  }, nil, os.date("改道具实战秒封 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      F1()
    end
    if menu1[2] == true then
      F2()
    end
    if menu1[3] == true then
      F3()
    end
    if menu1[4] == true then
      F4()
    end
    if menu1[5] == true then
      HOME()
    end
  end
  GLWW = -1
end

function H()
  menu1 = gg.multiChoice({
    "艾可技能全屏(一局一开)",
    "艾可技能秒杀(一局一开)",
    "艾可技能无限金币(一局一开)",
    "返回上一页"
  }, nil, os.date("实战封了别来找我 "))
  if menu1 == nil then
  else
    if menu1[1] == true then
      H1()
    end
    if menu1[2] == true then
      H2()
    end
    if menu1[3] == true then
      H3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  GLWW = -1
end

function W()
  menu1 = gg.multiChoice({
    "充气垫免费无CD(游戏)",
    "血包免费无CD(游戏)",
    "疾跑免费无CD(游戏)",
    "阻挡箱免费无CD(游戏)",
    "手雷免费无CD(游戏)",
    "返回上一页"
  }, nil, os.date("变态功能建议自建房开，封了别来找我"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      W1()
    end
    if menu1[2] == true then
      W2()
    end
    if menu1[3] == true then
      W3()
    end
    if menu1[4] == true then
      W4()
    end
    if menu1[5] == true then
      W5()
    end
    if menu1[6] == true then
      HOME()
    end
  end
  GLWW = -1
end

function A1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 4.300000190734863
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1.8216880036222622E-44
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 99999
    }
  }
  LongTao(tb1, tb2)
end

function A2()
  a = gg.prompt({
    "请输入要修改的数值(原速为1)"
  }, {
    [1] = 0
  }, {
    [1] = "number"
  })[1]
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2215520886178692E-38
    },
    {
      ["类型"] = 16,
      ["偏移"] = -28,
      ["副特征码"] = 3.2354159853256404E-40
    },
    {
      ["类型"] = 16,
      ["偏移"] = -12,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = a
    }
  }
  LongTao(tb1, tb2)
end

function A3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 230887
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 16.62690544128418
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 24,
      ["副特征码"] = 3.2354159853256404E-40
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function A4()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2215520886178692E-38
    },
    {
      ["类型"] = 16,
      ["偏移"] = -28,
      ["副特征码"] = 3.2354159853256404E-40
    },
    {
      ["类型"] = 16,
      ["偏移"] = -12,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1.5
    }
  }
  LongTao(tb1, tb2)
end

function A5()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2215520886178692E-38
    },
    {
      ["类型"] = 16,
      ["偏移"] = -28,
      ["副特征码"] = 3.2354159853256404E-40
    },
    {
      ["类型"] = 16,
      ["偏移"] = -12,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 2
    }
  }
  LongTao(tb1, tb2)
end

function A6()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2215520886178692E-38
    },
    {
      ["类型"] = 16,
      ["偏移"] = -28,
      ["副特征码"] = 3.2354159853256404E-40
    },
    {
      ["类型"] = 16,
      ["偏移"] = -12,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 3
    }
  }
  LongTao(tb1, tb2)
end

function A7()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 5
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.20000000298023224
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0.1
    }
  }
  LongTao(tb1, tb2)
end

function A8()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = -20,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0.4
    }
  }
  LongTao(tb1, tb2)
end

function A9()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = -20,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0.5
    }
  }
  LongTao(tb1, tb2)
end

function A10()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 12
    },
    {
      ["类型"] = 16,
      ["偏移"] = -88,
      ["副特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = -28,
      ["副特征码"] = 55.00000762939453
    },
    {
      ["类型"] = 16,
      ["偏移"] = -16,
      ["副特征码"] = 10
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 20
    }
  }
  LongTao(tb1, tb2)
end

function A11()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-99999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end

function B1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 444444
    },
    {
      ["类型"] = 4,
      ["偏移"] = 4,
      ["副特征码"] = 444424
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 16,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 20,
      ["副特征码"] = 444444
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 55555
    }
  }
  LongTao(tb1, tb2)
end

function B2()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 16
    },
    {
      ["类型"] = 4,
      ["偏移"] = -12,
      ["副特征码"] = 1011
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 101
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 99999
    }
  }
  LongTao(tb1, tb2)
end

function B3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 5
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.4000000059604645
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 13
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 999999
    }
  }
  LongTao(tb1, tb2)
end

function B4()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = -124,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = -104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 148,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["副特征码"] = 100
    },
    {
      ["类型"] = 4,
      ["偏移"] = 208,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 228,
      ["副特征码"] = 500010
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["冻结"] = false,
      ["修改"] = 102
    }
  }
  LongTao(tb1, tb2)
end

function B5()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = -124,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = -104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 148,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["副特征码"] = 100
    },
    {
      ["类型"] = 4,
      ["偏移"] = 208,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 228,
      ["副特征码"] = 500010
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["冻结"] = false,
      ["修改"] = 132
    }
  }
  LongTao(tb1, tb2)
end

function B6()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = -124,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = -104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 148,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["副特征码"] = 100
    },
    {
      ["类型"] = 4,
      ["偏移"] = 208,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 228,
      ["副特征码"] = 500010
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["冻结"] = false,
      ["修改"] = 112
    }
  }
  LongTao(tb1, tb2)
end

function B7()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.100000023841858
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = -0.05999999865889549
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 13
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function B8()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3::", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2000", 16)
  gg.toast("火箭筒秒杀开启成功")
end

function B9()
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 3
    },
    {
      ["类型"] = 4,
      ["偏移"] = -384,
      ["副特征码"] = 1021
    },
    {
      ["类型"] = 4,
      ["偏移"] = -312,
      ["副特征码"] = 1021
    },
    {
      ["类型"] = 16,
      ["偏移"] = 72,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402484,
      ["副特征码"] = 3
    },
    {
      ["类型"] = 4,
      ["偏移"] = 402492,
      ["副特征码"] = 1021
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402588,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402692,
      ["副特征码"] = 3
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402796,
      ["副特征码"] = 3
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402900,
      ["副特征码"] = 3
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0.1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402484,
      ["冻结"] = false,
      ["修改"] = 0.1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402692,
      ["冻结"] = false,
      ["修改"] = 0.1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402796,
      ["冻结"] = false,
      ["修改"] = 0.1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 402900,
      ["冻结"] = false,
      ["修改"] = 0.1
    }
  }
  LongTao(tb1, tb2)
end

function B10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("111D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("血包+雷CD开启成功")
end

function B11()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 30
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.20000000298023224
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1.2999999523162842
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["副特征码"] = 1.2999999523162842
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function B12()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2999999523162842
    },
    {
      ["类型"] = 16,
      ["偏移"] = -8,
      ["副特征码"] = 0.75
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 0.20000000298023224
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 1.2999999523162842
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 16,
      ["副特征码"] = 100
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 500
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["冻结"] = false,
      ["修改"] = 500
    }
  }
  LongTao(tb1, tb2)
end

function B13()
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2999999523162842
    },
    {
      ["类型"] = 16,
      ["偏移"] = -8,
      ["副特征码"] = 30
    },
    {
      ["类型"] = 16,
      ["偏移"] = -16,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 9999
    }
  }
  LongTao(tb1, tb2)
end

function B14()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2999999523162842
    },
    {
      ["类型"] = 16,
      ["偏移"] = -8,
      ["副特征码"] = 8
    },
    {
      ["类型"] = 16,
      ["偏移"] = -16,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 9999
    }
  }
  LongTao(tb1, tb2)
end

function B15()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = -0.75
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 6
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 2
    }
  }
  LongTao(tb1, tb2)
end

function B16()
  gg.setRanges(32)
  gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("全道具免费开启成功")
end

function B17()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 2
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 90
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 1.600000023841858
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 5
    },
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["副特征码"] = 0.20000000298023224
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 200
    }
  }
  LongTao(tb1, tb2)
end

function C1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 4.300000190734863
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1.8216880036222622E-44
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 99999
    }
  }
  LongTao(tb1, tb2)
end

function C2()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = -20,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 4
    }
  }
  LongTao(tb1, tb2)
end

function C3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 4
    },
    {
      ["类型"] = 16,
      ["偏移"] = -20,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0.3
    }
  }
  LongTao(tb1, tb2)
end

function C4()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 30
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.20000000298023224
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1.2999999523162842
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["副特征码"] = 1.2999999523162842
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function C5()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 230887
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 16.62690544128418
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 24,
      ["副特征码"] = 3.2354159853256404E-40
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function D1()
  WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function D2()
  WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function E1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = -16,
      ["副特征码"] = 1003
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.009999999776482582
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 13
    },
    {
      ["类型"] = 4,
      ["偏移"] = 96,
      ["副特征码"] = 13
    },
    {
      ["类型"] = 4,
      ["偏移"] = 184,
      ["副特征码"] = 13
    },
    {
      ["类型"] = 4,
      ["偏移"] = 272,
      ["副特征码"] = 13
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 3
    }
  }
  LongTao(tb1, tb2)
end

function E2()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 112
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 4
    },
    {
      ["类型"] = 16,
      ["偏移"] = 88,
      ["副特征码"] = 30
    },
    {
      ["类型"] = 16,
      ["偏移"] = 92,
      ["副特征码"] = 3
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 2000
    }
  }
  LongTao(tb1, tb2)
end

function E3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 5.693460464477539
    },
    {
      ["类型"] = 16,
      ["偏移"] = -8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 3.2354159853256404E-40
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 8
    }
  }
  LongTao(tb1, tb2)
end

function E4()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 0.029999999329447746
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.05000000074505806
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0.07500000298023224
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["副特征码"] = 0.125
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["冻结"] = false,
      ["修改"] = 1
    }
  }
  LongTao(tb1, tb2)
end

function E5()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 0.15000000596046448
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.20000000298023224
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["副特征码"] = 0.5
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["冻结"] = false,
      ["修改"] = 1
    }
  }
  LongTao(tb1, tb2)
end

function E6()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 0.10000000149011612
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.15000000596046448
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0.25
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["副特征码"] = 0.4000000059604645
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["冻结"] = false,
      ["修改"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["冻结"] = false,
      ["修改"] = 1
    }
  }
  LongTao(tb1, tb2)
end

function E7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2F;1.5F;1,092,616,192D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("第一步开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("100F;1.5F;1,092,616,192D::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1092616192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("不死之身")
  gg.clearResults()
end

function E8()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 3
    },
    {
      ["类型"] = 4,
      ["偏移"] = -12,
      ["副特征码"] = 901
    },
    {
      ["类型"] = 4,
      ["偏移"] = -4,
      ["副特征码"] = 13
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 1016
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function E9()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 2
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 30
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = -1.3648152052958551E-11
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 200
    }
  }
  LongTao(tb1, tb2)
end

function E10()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.2215520886178692E-38
    },
    {
      ["类型"] = 16,
      ["偏移"] = -28,
      ["副特征码"] = 3.2354159853256404E-40
    },
    {
      ["类型"] = 16,
      ["偏移"] = -12,
      ["副特征码"] = 0
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 999
    }
  }
  LongTao(tb1, tb2)
end

function E11()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = -16,
      ["副特征码"] = 0.699999988079071
    },
    {
      ["类型"] = 16,
      ["偏移"] = -12,
      ["副特征码"] = 20
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 0.3199999928474426
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1.401298464324817E-45
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 999
    }
  }
  LongTao(tb1, tb2)
end

function F1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 103
    },
    {
      ["类型"] = 4,
      ["偏移"] = -12,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = -4,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 16,
      ["副特征码"] = -1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 20,
      ["副特征码"] = 100
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 111
    }
  }
  LongTao(tb1, tb2)
end

function F2()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 103
    },
    {
      ["类型"] = 4,
      ["偏移"] = -12,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = -4,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 16,
      ["副特征码"] = -1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 20,
      ["副特征码"] = 100
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 300
    }
  }
  LongTao(tb1, tb2)
end

function F3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 1002
    },
    {
      ["类型"] = 4,
      ["偏移"] = -60,
      ["副特征码"] = 103
    },
    {
      ["类型"] = 4,
      ["偏移"] = -20,
      ["副特征码"] = 400
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 1011
    }
  }
  LongTao(tb1, tb2)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 103
    },
    {
      ["类型"] = 4,
      ["偏移"] = 40,
      ["副特征码"] = 400
    },
    {
      ["类型"] = 4,
      ["偏移"] = 60,
      ["副特征码"] = 1011
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 110
    }
  }
  LongTao(tb1, tb2)
end

function F4()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 500004
    },
    {
      ["类型"] = 4,
      ["偏移"] = -40,
      ["副特征码"] = 400
    },
    {
      ["类型"] = 4,
      ["偏移"] = -20,
      ["副特征码"] = 1002
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = -40,
      ["冻结"] = false,
      ["修改"] = 500
    }
  }
  LongTao(tb1, tb2)
end

function H1()
  gg.setRanges(32)
  gg.searchNumber("2.5;50", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200", 16)
  gg.toast("技能全屏开启成功")
end

function H2()
  gg.setRanges(32)
  gg.searchNumber("2.5;50", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", 16)
  gg.toast("技能秒杀开启成功")
end

function H3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 80
    },
    {
      ["类型"] = 4,
      ["偏移"] = 100,
      ["副特征码"] = 403
    },
    {
      ["类型"] = 16,
      ["偏移"] = 104,
      ["副特征码"] = 3.5
    },
    {
      ["类型"] = 16,
      ["偏移"] = 108,
      ["副特征码"] = 50
    },
    {
      ["类型"] = 4,
      ["偏移"] = 332,
      ["副特征码"] = 403
    },
    {
      ["类型"] = 16,
      ["偏移"] = 336,
      ["副特征码"] = 3.5
    },
    {
      ["类型"] = 16,
      ["偏移"] = 340,
      ["副特征码"] = 50
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = -80000
    }
  }
  LongTao(tb1, tb2)
end

function K1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 4.300000190734863
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0.30000001192092896
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 1.8216880036222622E-44
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 99999
    }
  }
  LongTao(tb1, tb2)
end

function K2()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 1.100000023841858
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = -0.05999999865889549
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 13
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0.38
    }
  }
  LongTao(tb1, tb2)
end

function K3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = -124,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = -104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 104,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 148,
      ["副特征码"] = 200
    },
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["副特征码"] = 100
    },
    {
      ["类型"] = 4,
      ["偏移"] = 208,
      ["副特征码"] = 1008
    },
    {
      ["类型"] = 4,
      ["偏移"] = 228,
      ["副特征码"] = 500010
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 188,
      ["冻结"] = false,
      ["修改"] = 102
    }
  }
  LongTao(tb1, tb2)
end

function K4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-99999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end

function K5()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 230887
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 16.62690544128418
    },
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 16,
      ["偏移"] = 24,
      ["副特征码"] = 3.2354159853256404E-40
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 12,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function K6()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 103
    },
    {
      ["类型"] = 4,
      ["偏移"] = -4,
      ["副特征码"] = 3
    },
    {
      ["类型"] = 4,
      ["偏移"] = 4,
      ["副特征码"] = 104
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["副特征码"] = 105
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 110
    },
    {
      ["类型"] = 4,
      ["偏移"] = 4,
      ["冻结"] = false,
      ["修改"] = 110
    },
    {
      ["类型"] = 4,
      ["偏移"] = 8,
      ["冻结"] = false,
      ["修改"] = 110
    }
  }
  LongTao(tb1, tb2)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 150
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 120
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 60
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["冻结"] = false,
      ["修改"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function K7()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 16,
      ["主特征码"] = 15
    },
    {
      ["类型"] = 16,
      ["偏移"] = -4,
      ["副特征码"] = 1.5
    },
    {
      ["类型"] = 16,
      ["偏移"] = 4,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 16,
      ["偏移"] = 12,
      ["副特征码"] = 15
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 8,
      ["冻结"] = true,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function W1()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 120
    },
    {
      ["类型"] = 4,
      ["偏移"] = 40,
      ["副特征码"] = 1005
    },
    {
      ["类型"] = 4,
      ["偏移"] = 60,
      ["副特征码"] = 1023
    },
    {
      ["类型"] = 4,
      ["偏移"] = 80,
      ["副特征码"] = 501300
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function W2()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 104
    },
    {
      ["类型"] = 4,
      ["偏移"] = 40,
      ["副特征码"] = 401
    },
    {
      ["类型"] = 4,
      ["偏移"] = 80,
      ["副特征码"] = 500005
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function W3()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 100
    },
    {
      ["类型"] = 4,
      ["偏移"] = -24,
      ["副特征码"] = 500002
    },
    {
      ["类型"] = 4,
      ["偏移"] = 4,
      ["副特征码"] = 0
    },
    {
      ["类型"] = 4,
      ["偏移"] = 16,
      ["副特征码"] = 444444
    },
    {
      ["类型"] = 4,
      ["偏移"] = 20,
      ["副特征码"] = 444492
    },
    {
      ["类型"] = 4,
      ["偏移"] = 24,
      ["副特征码"] = 1
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function W4()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 1009
    },
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["副特征码"] = 1
    },
    {
      ["类型"] = 4,
      ["偏移"] = 24,
      ["副特征码"] = 13
    },
    {
      ["类型"] = 4,
      ["偏移"] = 36,
      ["副特征码"] = 20
    },
    {
      ["类型"] = 4,
      ["偏移"] = 40,
      ["副特征码"] = 1
    }
  }
  local tb2 = {
    {
      ["类型"] = 16,
      ["偏移"] = 16,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function W5()
  gg.setRanges(32)
  local tb1 = {
    {
      ["类型"] = 4,
      ["主特征码"] = 103
    },
    {
      ["类型"] = 4,
      ["偏移"] = 40,
      ["副特征码"] = 400
    },
    {
      ["类型"] = 4,
      ["偏移"] = 80,
      ["副特征码"] = 500004
    }
  }
  local tb2 = {
    {
      ["类型"] = 4,
      ["偏移"] = 0,
      ["冻结"] = false,
      ["修改"] = 0
    }
  }
  LongTao(tb1, tb2)
end

function Exit()
  gg.alert("使用愉快，此脚本完全免费，如果你是买来的那么恭喜你被骗了")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "狂沙"
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
