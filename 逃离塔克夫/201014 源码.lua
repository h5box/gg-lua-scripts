
function split(A0_3, A1_4)
  local L2_5, L3_6, L4_7
  L2_5 = 1
  L3_6 = 1
  L4_7 = {}
  while true do
    if not string.find(A0_3, A1_4, L2_5) then
      L4_7[L3_6] = string.sub(A0_3, L2_5, string.len(A0_3))
      break
    end
    L4_7[L3_6] = string.sub(A0_3, L2_5, string.find(A0_3, A1_4, L2_5) - 1)
    L2_5 = string.find(A0_3, A1_4, L2_5) + string.len(A1_4)
    L3_6 = L3_6 + 1
  end
  return L4_7
end

function xgxc(A0_8, A1_9)
  local L2_10, L3_11, L4_12, L5_13
  L2_10 = 1
  L3_11 = #A1_9
  for _FORV_5_ = 1, #A1_9 do
    xgpy = A0_8 + A1_9[_FORV_5_].offset
    xglx = A1_9[_FORV_5_].type
    xgsz = A1_9[_FORV_5_].value
    gg.setValues({
      [1] = {
        address = xgpy,
        flags = xglx,
        value = xgsz
      }
    })
    xgsl = xgsl + 1
  end
end

function xqmnb(A0_14)
  gg.clearResults()
  gg.setRanges(A0_14[1].memory)
  gg.searchNumber(A0_14[3].value, A0_14[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(A0_14[2].name .. "开启失败")
  else
    gg.refineNumber(A0_14[3].value, A0_14[3].type)
    gg.refineNumber(A0_14[3].value, A0_14[3].type)
    gg.refineNumber(A0_14[3].value, A0_14[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(A0_14[2].name .. "开启失败")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      for _FORV_4_ = 1, sz do
        pdsz = true
        for _FORV_8_ = 4, #A0_14 do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[_FORV_4_].address + A0_14[_FORV_8_].offset
            pysz[1].flags = A0_14[_FORV_8_].type
            szpy = gg.getValues(pysz)
            pdpd = A0_14[_FORV_8_].lv .. ";" .. szpy[1].value
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
          xgjg = true
        end
      end
      if xgjg == true then
        gg.toast(A0_14[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(A0_14[2].name .. "开启失败")
      end
    end
  end
end

function SearchWrite(A0_15, A1_16, A2_17, A3_18)
  local L4_19, L5_20, L6_21
  L4_19 = {}
  L5_20 = {}
  L6_21 = {}
  L6_21["主特征码"] = A0_15[1][1]
  L6_21["类型"] = A2_17
  table.insert(L4_19, 1, L6_21)
  for _FORV_10_ = 2, #A0_15 do
    table.insert(L4_19, _FORV_10_, {
      ["副特征码"] = A0_15[_FORV_10_][1],
      ["偏移"] = A0_15[_FORV_10_][2]
    })
  end
  for _FORV_10_ = 1, #A1_16 do
    if A1_16[_FORV_10_][2] ~= nil then
      table.insert(L5_20, _FORV_10_, {
        ["修改"] = A1_16[_FORV_10_][1],
        ["偏移"] = A1_16[_FORV_10_][2]
      })
    else
      table.insert(L5_20, _FORV_10_, {
        ["修改"] = false,
        ["偏移"] = A1_16[_FORV_10_][1]
      })
    end
  end
  LongTao(L4_19, L5_20)
end

function LongTao(A0_22, A1_23)
  gg.clearResults()
  gg.setVisible(false)
  lx = A0_22[1]["类型"]
  gg.searchNumber(A0_22[1]["主特征码"], lx)
  gg.clearResults()
  if gg.getResultCount() > 0 then
    gg.toast("共搜索 " .. gg.getResultCount() .. " 条数据")
    for _FORV_8_, _FORV_9_ in ipairs((gg.getResults((gg.getResultCount())))) do
      _FORV_9_.isUseful = true
    end
    for _FORV_8_ = 2, #A0_22 do
      if A0_22[_FORV_8_]["类型"] ~= nil then
        lx = A0_22[_FORV_8_]["类型"]
      else
        lx = A0_22[1]["类型"]
      end
      for _FORV_14_, _FORV_15_ in ipairs((gg.getResults((gg.getResultCount())))) do
        ;({})[#{}].address = _FORV_15_.address + A0_22[_FORV_8_]["偏移"]
        ;({})[#{}].flags = lx
      end
      for _FORV_14_, _FORV_15_ in ipairs((gg.getValues({}))) do
        if tostring(_FORV_15_.value) ~= tostring(A0_22[_FORV_8_]["副特征码"]) then
          gg.getResults((gg.getResultCount()))[_FORV_14_].isUseful = false
        end
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs((gg.getResults((gg.getResultCount())))) do
    end
    if 0 < #{} then
      for _FORV_9_ = 1, #{} do
        for _FORV_13_, _FORV_14_ in ipairs(A1_23) do
          if _FORV_14_["类型"] ~= nil then
            lx = _FORV_14_["类型"]
          else
            lx = A0_22[1]["类型"]
          end
          ;({})[#{}].address = ({})[_FORV_9_] + _FORV_14_["偏移"]
          ;({})[#{}].flags = lx
          if _FORV_14_["修改"] ~= nil and _FORV_14_["修改"] ~= false then
            ;({})[#{}].value = _FORV_14_["修改"]
            gg.setValues({})
            if _FORV_14_["冻结"] == true then
              ;({})[#{}].freeze = _FORV_14_["冻结"]
              gg.addListItems({})
            end
          end
        end
      end
      gg.loadResults({})
      gg.toast("共偏移 " .. #{} .. " 条数据")
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
    "透视😛",
    "上色😍",
    "变态功能🧐",
    "退出脚本"
  }, 2018, "解密团队群:926063343")
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
    Exit()
  end
  XGCK = -1
end

function A()
  menu1 = gg.multiChoice({
    "660马赛克",
    "660透视",
    "665透视",
    "625马赛克",
    "625透视",
    "无透视",
    "无透视",
    "无透视",
    "845透视",
    "865马赛克",
    "865透视",
    "855透视",
    "敬请期待",
    "敬请期待",
    "敬请期待",
    "返回上一页"
  }, nil, "画质调最低")
  if menu1 == nil then
  else
    if menu1[1] == true then
      a1()
    end
    if menu1[2] == true then
      a2()
    end
    if menu1[3] == true then
      a3()
    end
    if menu1[4] == true then
      a4()
    end
    if menu1[5] == true then
      a5()
    end
    if menu1[6] == true then
      a6()
    end
    if menu1[7] == true then
      a7()
    end
    if menu1[8] == true then
      a8()
    end
    if menu1[9] == true then
      a9()
    end
    if menu1[10] == true then
      a10()
    end
    if menu1[11] == true then
      a11()
    end
    if menu1[12] == true then
      a12()
    end
    if menu1[13] == true then
      a13()
    end
    if menu1[14] == true then
      a14()
    end
    if menu1[15] == true then
      a15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function B()
  menu1 = gg.multiChoice({
    "全图黑",
    "无上色",
    "855上色",
    "625上色第一步",
    "625上色第二步",
    "返回上一页"
  }, nil, "不保证都可以用")
  if menu1 == nil then
  else
    if menu1[1] == true then
      b1()
    end
    if menu1[2] == true then
      b2()
    end
    if menu1[3] == true then
      b3()
    end
    if menu1[4] == true then
      b4()
    end
    if menu1[5] == true then
      HOME()
    end
  end
  GLWW = -1
end

function C()
  menu1 = gg.multiChoice({
    "全身范围自测",
    "头部范围",
    "身体范围",
    "待添加",
    "除草",
    "天线",
    "微加速",
    "人物穿墙",
    "恢复穿墙",
    "无用功能",
    "开启爬墙",
    "关闭爬墙",
    "路飞自测",
    "关闭路飞",
    "待添加",
    "枪械午后(稳定)",
    "防抖",
    "待添加",
    "返回上一页"
  }, nil, "推荐使用身体范围，其他自测")
  if menu1 == nil then
  else
    if menu1[1] == true then
      c1()
    end
    if menu1[2] == true then
      c2()
    end
    if menu1[3] == true then
      c3()
    end
    if menu1[4] == true then
      c4()
    end
    if menu1[5] == true then
      c5()
    end
    if menu1[6] == true then
      c6()
    end
    if menu1[7] == true then
      c7()
    end
    if menu1[8] == true then
      c8()
    end
    if menu1[9] == true then
      c9()
    end
    if menu1[10] == true then
      c10()
    end
    if menu1[11] == true then
      c11()
    end
    if menu1[12] == true then
      c12()
    end
    if menu1[13] == true then
      c13()
    end
    if menu1[14] == true then
      c14()
    end
    if menu1[15] == true then
      c15()
    end
    if menu1[16] == true then
      c16()
    end
    if menu1[17] == true then
      c17()
    end
    if menu1[18] == true then
      c18()
    end
    if menu1[19] == true then
      HOME()
    end
  end
  GLWW = -1
end

function a1()
  gg.setRanges(1048576)
  gg.searchNumber("3.7615819e-37F;4.7961557e21F;-4.6713686e-40F;1.4570701e-40F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("成功％50")
  Exit()
end

function a2()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("0.000021F;1.6623047e-19F;0.0000135F;0.0000058F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("成功")
end

function a3()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2.0F;1.6623025e-19F;1.4012985e-45F;1.2578442e-19F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("马赛克成功")
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2.0F;3.75000476837F;2.2420775e-44F;1.1205016e-19F;2.2420775e- 44F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("透视成功")
end

function a4()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2.8345605e-40;4.7408149e21;3.7529716e-40;4.7408155e21;4.6713826e-40;4.740816e21;1.9163737e-40;4.7408138e21;2.8345465e-40;4.7223676e21;3.7529575e-40;4.7223682e21;4.6713686e-40;4.7223687e21;1.4571822e-40;4.7223693e21;-4.6715928e-40;4.7961557e21;3.7615819e-37;2.0:161", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a5()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("3.25000023842;-1.93654964e-39;4.79731764e21;1.47422326e-25;1.97795213e22;7.96918437e-42;3.87548828125;3.87548828125;7.54951657e-15;1.79366203e-42;-1.02855798e-38;1.13648548e-28;2.86780276e-17;2.26870221e-42;1.39125278e-19;1.66289773e-19;3.76158192e-37;2.0;-1.0;9.99999997e-7:189", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功    两点零五分追封")
end

function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;1.66230242e-19;7.17464814e-43:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;1.66230242e-19;7.17464814e-43:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;-1.0;9.99999997e-7:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;1.37754505e-39;2.25000214577:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;1.37754505e-39;2.25000214577;2.0;-1.0;1.0:805", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;-1.0;9.99999997e-7:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;-1.0;1.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("765透视开启成功")
end

function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.26870221e-42;1.39125368e-19;1.66289773e-19;1.66236937e-19;3.76158192e-37;2.0;9.99999997e-7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("820透视开启成功①")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.45718225e-40F;4.7223693e21F;-4.67159277e-40F;4.79615571e21F;3.76158192e-37F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("820透视开启成功②")
end

function a8()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("600")
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("835透视开启成功")
  gg.clearResults()
end

function a9()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("5.3905149e-41;4.75926e21;-4.2038954e-45;5.0359623e21;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-4.2038954e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5444", gg.TYPE_FLOAT)
  gg.toast("偏移马赛克")
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2.2970084e-41;6.50000286102;-2.0283851e-39;4.7788715e21;7.9691844e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-2.0283851e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5444", gg.TYPE_FLOAT)
  gg.toast("偏移透明化")
end

function a10()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;1.4012985e-45;1.2282293e-19:357", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.toast("偷窥功能已开启")
  qmnb = {
    {memory = 1048576},
    {name = "透视"},
    {value = 2, type = 16},
    {
      lv = 0,
      offset = 28,
      type = 16
    },
    {
      lv = 3.4799999E-7,
      offset = 44,
      type = 16
    }
  }
  qmxg = {
    {
      value = 120,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("855透视开启成功")
end

function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.56918523e-39;4.75926898e21;4.75925997e21;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("第一步成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.12050248e-19;1.39125304e-19;1.39125485e-19;1.66236988e-19;1.66236872e-19;3.76158192e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("透视开启成功")
end

function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a14()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a15()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function b1()
  qmnb = {
    {memory = 4},
    {name = "全图黑"},
    {value = 6500, type = 16},
    {
      lv = 300,
      offset = 140,
      type = 16
    },
    {
      lv = 8000,
      offset = 160,
      type = 16
    },
    {
      lv = 0.30000001192092896,
      offset = 280,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0.7,
      offset = 20,
      type = 16
    },
    {
      value = 0.7,
      offset = 52,
      type = 16
    },
    {
      value = -9999999999,
      offset = 232,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function b2()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("1,194,328,072;2,053;-1,593,833,724;856,132;1,661,276,167", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1,593,833,724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("绿色")
  gg.clearResults()
end

function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("538,968,074D;786,433D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("865红色开启")
end

function c1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("全身范围")
  gg.clearResults()
end

function c2()
  local L0_24
  L0_24 = {0.96}
  qmnb = {
    {memory = 4},
    {
      name = "头部范围"
    },
    {value = 0.14, type = 16},
    {
      lv = 62,
      offset = -1,
      type = 1
    }
  }
  qmxg = {
    {
      value = 0.2,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c3()
  qmnb = {
    {memory = 4},
    {
      name = "身体范围"
    },
    {value = 0.08, type = 16},
    {
      lv = 0,
      offset = -4,
      type = 4
    },
    {
      lv = 0,
      offset = -12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0.8,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c4()
  local L0_25
  L0_25 = {0.96}
  qmnb = {
    {memory = 4},
    {
      name = "头部范围"
    },
    {value = 0.14, type = 16},
    {
      lv = 62,
      offset = -1,
      type = 1
    }
  }
  qmxg = {
    {
      value = 0.7,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {
      name = "身体范围"
    },
    {value = 0.08, type = 16},
    {
      lv = 0,
      offset = -4,
      type = 4
    },
    {
      lv = 0,
      offset = -12,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0.7,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c5()
  qmnb = {
    {memory = 4},
    {name = "除草"},
    {value = 16777474, type = 4},
    {
      lv = 0,
      offset = 8,
      type = 4
    },
    {
      lv = 1,
      offset = 12,
      type = 4
    },
    {
      lv = 0,
      offset = 28,
      type = 4
    },
    {
      lv = 0,
      offset = 40,
      type = 4
    },
    {
      lv = 3,
      offset = 44,
      type = 4
    },
    {
      lv = 0,
      offset = 60,
      type = 4
    },
    {
      lv = 5126,
      offset = 68,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 96,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function c6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-66", gg.TYPE_FLOAT)
  gg.toast("人物天线")
end

function c7()
  qmnb = {
    {memory = 4},
    {name = "加速"},
    {value = 2.390625, type = 16},
    {
      lv = 1.75,
      offset = -120,
      type = 16
    },
    {
      lv = 2.3125,
      offset = -24,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1.879,
      offset = -48,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("10;0.4;0.25::44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-0.004567", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function c9()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-0.004567", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.004567", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.4", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function c10()
  gg.setRanges(4)
  qmnb = {
    {memory = 4},
    {
      name = "脱离穿墙卡死"
    },
    {value = -0.006000000052154064, type = 16},
    {
      lv = 0.10000000149011612,
      offset = 8,
      type = 16
    },
    {
      lv = 0.25,
      offset = 12,
      type = 16
    }
  }
  qmxg = {
    {
      value = -5.8125,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.qjccn(8000)
  qmnb = {
    {memory = 4},
    {
      name = "脱离穿墙卡死"
    },
    {value = -5.8125, type = 16},
    {
      lv = 0.10000000149011612,
      offset = 8,
      type = 16
    },
    {
      lv = 0.25,
      offset = 12,
      type = 16
    }
  }
  qmxg = {
    {
      value = -0.006,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c11()
  qmnb = {
    {memory = 4},
    {name = "爬墙"},
    {value = 0.8888888955116272, type = 16},
    {
      lv = 0.6216099858283997,
      offset = -520,
      type = 16
    },
    {
      lv = 0.009999999776482582,
      offset = -516,
      type = 16
    },
    {
      lv = 10,
      offset = -4,
      type = 16
    },
    {
      lv = 0.10000000149011612,
      offset = 40,
      type = 16
    },
    {
      lv = 0.25,
      offset = 44,
      type = 16
    }
  }
  qmxg = {
    {
      value = var,
      offset = -512,
      type = 16
    }
  }
  xqmnb(qmnb)
  b22()
end

function c12()
  qmnb = {
    {memory = 4},
    {
      name = "关闭爬墙"
    },
    {value = 0.8888888955116272, type = 16},
    {
      lv = 0.6216099858283997,
      offset = -520,
      type = 16
    },
    {
      lv = 0.009999999776482582,
      offset = -516,
      type = 16
    },
    {
      lv = 0.6216099858283997,
      offset = -168,
      type = 16
    },
    {
      lv = 0.009999999776482582,
      offset = -164,
      type = 16
    },
    {
      lv = 10,
      offset = -4,
      type = 16
    },
    {
      lv = 0.10000000149011612,
      offset = 40,
      type = 16
    },
    {
      lv = 0.25,
      offset = 44,
      type = 16
    },
    {
      lv = 0.8999999761581421,
      offset = 48,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0.3,
      offset = -512,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c13()
  qmnb = {
    {memory = 4},
    {name = "路飞"},
    {value = 1.484, type = 64},
    {
      lv = 3.7779337E-314,
      offset = -8,
      type = 64
    },
    {
      lv = 3.7779337E-314,
      offset = 8,
      type = 64
    }
  }
  qmxg = {
    {
      value = 8,
      offset = 0,
      type = 64
    }
  }
  xqmnb(qmnb)
end

function c14()
  qmnb = {
    {memory = 4},
    {
      name = "路飞关闭"
    },
    {value = -0.12, type = 64},
    {
      lv = 8,
      offset = 16,
      type = 64
    },
    {
      lv = -0.12,
      offset = 32,
      type = 64
    }
  }
  qmxg = {
    {
      value = 1.484,
      offset = 16,
      type = 64
    }
  }
  xqmnb(qmnb)
end

function c15()
  qmnb = {
    {memory = 4},
    {
      name = "路飞关闭"
    },
    {value = -99, type = 64},
    {
      lv = 8,
      offset = 16,
      type = 64
    },
    {
      lv = -99,
      offset = 32,
      type = 64
    }
  }
  qmxg = {
    {
      value = -9,
      offset = 16,
      type = 64
    }
  }
  xqmnb(qmnb)
end

function c16()
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
        value = 9999999
      }
    })
  end
  gg.toast("枪械午后开启成功")
  gg.clearResults()
end

function c17()
  qmnb = {
    {memory = 4},
    {name = "防抖"},
    {value = 2.350989E-38, type = 16},
    {
      lv = 1.6675452E-43,
      offset = -12,
      type = 16
    },
    {
      lv = 2.8025969E-45,
      offset = 4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 4,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c18()
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("变大开启成功")
end

function Exit()
  print("解密团队群:926063343")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "qq群删除"
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
