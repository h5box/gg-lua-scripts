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
          xgjg = true
        end
      end
      if xgjg == true then
        gg.toast(A0_11[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(A0_11[2].name .. "开启失败")
        print(A0_11[2].name .. "开启失败")
      end
    end
  end
end

DWORD = gg.TYPE_DWORD
DOUBLE = gg.TYPE_DOUBLE
FLOAT = gg.TYPE_FLOAT
WORD = gg.TYPE_WORD
BYTE = gg.TYPE_BYTE
XOR = gg.TYPE_XOR
QWORD = gg.TYPE_QWORD
function Main()
  menu = gg.choice({
    "透视专区",
    "上色专区",
    "其他功能",
    "退出脚本"
  }, 2018, "必须挂端口，要不然5分钟必封\n反馈群:994341082!")
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
    "435透视",
    "625透视",
    "659透视",
    "660透视",
    "665透视",
    "765透视",
    "820透视",
    "835透视",
    "845透视",
    "855透视",
    "855plus透视",
    "865透视",
    "敬请期待",
    "敬请期待",
    "敬请期待",
    "返回上一页"
  }, nil, "不保证都可以用，你们可以自己测试一下，我660就可以用820的透\n自己随便试试")
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
    "435上色(红)",
    "845上色(绿)",
    "855上色(红)",
    "855plus上色(绿)",
    "865上色(红)",
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
    "头部范围",
    "身体范围",
    "范围联合",
    "局内除草",
    "局内天线",
    "微加速",
    "人物穿墙",
    "恢复穿墙",
    "开启爬墙",
    "关闭爬墙",
    "范围拾取",
    "倒退加速",
    "枪械午后(危)",
    "枪械射速(危)",
    "开镜路飞(危)",
    "人物变大(危)",
    "返回上一页"
  }, nil, "这些容易封，尽量开天线除草就行了\n群内有端口")
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
      HOME()
    end
  end
  GLWW = -1
end

function a1()
  gg.setRanges(1048576)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("600")
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("435透视开启成功")
end

function a2()
  gg.setRanges(1048576)
  gg.searchNumber("3.7529575e-40;1.4571822e-40;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("2")
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("625透视开启成功")
end

function a3()
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
  gg.toast("659透视开启成功")
end

function a4()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("1.47896308e-25F;1.45718225e-40F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("成功％50")
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("1.66289773e-19F;1.66236937e-19F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("3.87610054016F;3.76158192e-37F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("9", gg.TYPE_FLOAT)
  gg.toast("660透视开启成功")
end

function a5()
  qmnb = {
    {
      memory = gg.REGION_VIDEO
    },
    {
      name = "透视完成"
    },
    {
      value = 24576.0078125,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.1202039E-19,
      offset = 1112,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0,
      offset = 1116,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 3.7615819E-37,
      offset = 1120,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0,
      offset = 1124,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 120,
      offset = 4,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_VIDEO
    },
    {
      name = "资源完成"
    },
    {
      value = 1.6623694E-19,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0,
      offset = 12,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0,
      offset = 28,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0,
      offset = 32,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 120,
      offset = 36,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
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
  gg.searchNumber("2.0;1.40129846e-45;1.25784419e-19:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("118", gg.TYPE_FLOAT)
  gg.toast("神奇的马赛克")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.12867231e-19;1.96181785e-44;2.0:2549", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("118", gg.TYPE_FLOAT)
  gg.toast("855透视开启成功")
end

function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1619D;2F;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2D;24,576.0078125F;2F;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
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
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,224;671,219,719;1,076,887,552:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8224", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("855红色")
end

function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("65,545D;196,617D;131,079", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196617", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("855plus绿色")
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
  local L0_12
  L0_12 = {0.96}
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
end

function c2()
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

function c3()
  local L0_13
  L0_13 = {0.96}
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

function c4()
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

function c5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-66", gg.TYPE_FLOAT)
  gg.toast("人物天线")
end

function c6()
  qmnb = {
    {memory = 4},
    {name = "微加速"},
    {value = 7.9272687E-39, type = 16},
    {
      lv = 1.875,
      offset = 56,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1.95,
      offset = 56,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("10;0.4;0.25", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("0.4", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = FLOAT,
          freeze = true,
          value = "-0.004567"
        }
      })
    end
    gg.toast("穿墙开启成功")
    gg.clearResults()
  end
end

function c8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-0.004567", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("-0.004567", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = FLOAT,
          freeze = true,
          value = "0.4"
        }
      })
    end
    gg.toast("穿墙恢复开启成功")
    gg.clearResults()
  end
end

function c9()
  qmnb = {
    {memory = 4},
    {
      name = "开启爬墙"
    },
    {value = 0.6216099858283997, type = 16},
    {
      lv = 0.009999999776482582,
      offset = 4,
      type = 16
    },
    {
      lv = 1.2000000476837158,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 5.5,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c10()
  qmnb = {
    {memory = 4},
    {
      name = "关闭爬墙"
    },
    {value = 0.6216099858283997, type = 16},
    {
      lv = 0.009999999776482582,
      offset = 4,
      type = 16
    },
    {
      lv = 5.5,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0.3,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c11()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5D;0E;1F;2F::45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(510)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("范围拾取成功")
end

function c12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", 64)
  gg.toast("倒退加速成功")
end

function c13()
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
  gg.toast("枪械午后开启成功")
  gg.clearResults()
end

function c14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.625", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", 16)
  gg.toast("枪械射速开启成功")
end

function c15()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.484;0.284;0.924", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.484;0.284;0.924", 64, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", 64)
  gg.toast("开镜路飞(危)搜索成功")
end

function c16()
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("257D;26,512W;0.0078125E;1F;16,256W;0.0078125E;16,256W", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("变大开启成功")
end

function Exit()
  print("反馈群:994341082!")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "这里可以填QQ"
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
