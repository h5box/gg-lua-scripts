gg.alert("欢迎使用逃离塔科夫科技💗💗💗💗墨白                      部分源码来自清风（快猫二风）")
gg.alert("💗💗交流群：826908845💗💗群内有稳定端口，每日更新💗💗不强制加群💗💗")
gg.alert("啥也不是                        散会")
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
  SN = gg.choice({
    "透视功能",
    "上色功能",
    "范围",
    "其他功能(自测)",
    "退出脚本"
  }, nil, os.date("当前时间:%Y年%m月%d日 %H时 %M分 %S秒 %p            欢迎使用                    墨白＆清凨"))
  if SN == 1 then
    a()
  end
  if SN == 2 then
    b()
  end
  if SN == 3 then
    c()
  end
  if SN == 4 then
    d()
  end
  if SN == 5 then
    Exit()
  end
  XGCK = -1
end

function a()
  SN1 = gg.multiChoice({
    "665透视",
    "765透视",
    "435透视",
    "625透视",
    "659透视",
    "660透视",
    "820透视",
    "835透视",
    "845透色（绿）",
    "845透色(白)",
    "855透视(墨白自用)",
    "855透色",
    "855plus透视(上面的不能用用这个)",
    "865透视)",
    "麒麟655透色",
    "麒麟备用",
    "返回上一层"
  }, nil, "透视有些机型可能用不了，这个很正常")
  if SN1 == nil then
  else
    if SN1[1] == true then
      a1()
    end
    if SN1[2] == true then
      a2()
    end
    if SN1[3] == true then
      a3()
    end
    if SN1[4] == true then
      a4()
    end
    if SN1[5] == true then
      a5()
    end
    if SN1[6] == true then
      a6()
    end
    if SN1[7] == true then
      a7()
    end
    if SN1[8] == true then
      a8()
    end
    if SN1[9] == true then
      a9()
    end
    if SN1[10] == true then
      a10()
    end
    if SN1[11] == true then
      a11()
    end
    if SN1[12] == true then
      a12()
    end
    if SN1[13] == true then
      a13()
    end
    if SN1[14] == true then
      a14()
    end
    if SN1[15] == true then
      a15()
    end
    if SN1[16] == true then
      a16()
    end
    if SN1[17] == true then
      HOME()
    end
    GLWW = -1
  end
end

function a1()
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

function a2()
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
  gg.toast("765")
end

function a6()
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
  gg.toast("660透视")
end

function a3()
  gg.setRanges(1048576)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("600")
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a4()
  gg.setRanges(1048576)
  gg.searchNumber("3.7529575e-40;1.4571822e-40;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("2")
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a5()
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

function a7()
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

function a8()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("600")
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
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
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("1,194,328,072;2,053;-1,593,833,724;856,132;1,661,276,167", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1,593,833,724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("绿色")
  gg.clearResults()
end

function a10()
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
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("272,957,451;1,080,033,293;8,207;1,194,328,072;2,053", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8207", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("白色")
  gg.clearResults()
end

function a11()
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
  gg.toast("偷窥功能已开启")
end

function a13()
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
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("65,545D;196,617D;131,079", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196617", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("绿色")
end

function a14()
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

function a15()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.8678008e-17;1.6623694e-19;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("320")
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.toast("麒麟透色开启成功")
end

function a12()
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
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("65,545D;196,617D;131,079", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196617", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("绿色")
end

function a16()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2F;512::24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,619;2F;-1F::96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function b()
  SN1 = gg.multiChoice({
    "855上色合集",
    "865上色(红)",
    "435上色(红)",
    "返回上一层"
  }, nil, "有些机型不适用")
  if SN1 == nil then
  else
    if SN1[1] == true then
      b1()
    end
    if SN1[2] == true then
      b2()
    end
    if SN1[3] == true then
      b3()
    end
    if SN1[4] == true then
      HOME()
    end
    GLWW = -1
  end
end

function b1()
  SN1 = gg.multiChoice({
    "855上色(紫)",
    "855上色(红)",
    "855上色(蓝)",
    "855花里胡哨1",
    "855花里胡哨2",
    "855花里胡哨3",
    "返回上一层"
  }, nil, "单选")
  if SN1 == nil then
  else
    if SN1[1] == true then
      A()
    end
    if SN1[2] == true then
      B()
    end
    if SN1[3] == true then
      C()
    end
    if SN1[4] == true then
      D()
    end
    if SN1[5] == true then
      E()
    end
    if SN1[6] == true then
      F()
    end
    if SN1[7] == true then
      HOME()
    end
    GLWW = -1
  end
end

function A()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("262,148;1,075,333,392;1,048,580:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("紫色")
end

function B()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,224;671,219,719;1,076,887,552:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8224", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("红色")
end

function C()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("262,148;1,075,333,392;1,048,580;1,081,098,260;277,217,292;1,081,098,261:149", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,081,098,261", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("蓝色")
end

function D()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,224;1,194,332,179;1,194,363,163:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function E()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("262,148;1,075,333,392;1,048,580:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function F()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("262,148;1,075,333,392;1,048,580;1,081,098,260;277,217,292;1,081,098,261:149", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("538,968,074D;786,433D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_DWORD)
  gg.toast("红色开启")
end

function b3()
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

function c()
  SN1 = gg.multiChoice({
    "头范围",
    "身体范围",
    "范围联合",
    "返回上一层"
  }, nil, "第三个范围为头＋身体   看个人喜好选择")
  if SN1 == nil then
  else
    if SN1[1] == true then
      c1()
    end
    if SN1[2] == true then
      c2()
    end
    if SN1[3] == true then
      c3()
    end
    if SN1[4] == true then
      HOME()
    end
    GLWW = -1
  end
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
      value = 0.9,
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
      value = 0.8,
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
      value = 0.9,
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
      value = 0.8,
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
    {value = 0.18, type = 16},
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

function d()
  SN1 = gg.multiChoice({
    "除草",
    "人物天线(修复)",
    "微加速",
    "穿墙",
    "恢复穿墙",
    "开启爬墙",
    "关闭爬墙",
    "待添加",
    "返回上一层"
  }, nil, "功能不保证不封号，封号自负")
  if SN1 == nil then
  else
    if SN1[1] == true then
      d1()
    end
    if SN1[2] == true then
      d2()
    end
    if SN1[3] == true then
      d3()
    end
    if SN1[4] == true then
      d4()
    end
    if SN1[5] == true then
      d5()
    end
    if SN1[6] == true then
      d6()
    end
    if SN1[7] == true then
      d7()
    end
    if SN1[8] == true then
      d8()
    end
    if SN1[9] == true then
      HOME()
    end
    GWLL = -1
  end
end

function d1()
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

function d2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.65189313889", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-66", gg.TYPE_FLOAT)
  gg.toast("人物天线")
end

function d3()
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

function d4()
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

function d5()
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

function d6()
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

function d7()
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

print("脚本:\n墨白整合2.0\n版本:2.0\n脚本作者:墨白\n部分源码来自快猫二风\n群826908845\n")
function Exit()
  print("啥也不是")
  print("散会")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "这里可以改成你的QQ"
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
