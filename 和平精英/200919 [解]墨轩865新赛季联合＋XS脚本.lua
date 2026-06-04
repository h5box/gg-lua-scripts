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
      end
    end
  end
end

function Main()
  SN = gg.multiChoice({
    "联合透视",
    "偏移防闪",
    "联合绿色",
    "XS人物红色",
    "自瞄",
    "加速",
    "加速关",
    "XS无后",
    "退出脚本"
  }, nil, "墨轩865XS＋联合写法")
  if SN == nil then
  else
    if SN[1] == true then
      a()
    end
    if SN[2] == true then
      b()
    end
    if SN[3] == true then
      c()
    end
    if SN[4] == true then
      d()
    end
    if SN[5] == true then
      e()
    end
    if SN[6] == true then
      f()
    end
    if SN[7] == true then
      g()
    end
    if SN[8] == true then
      h()
    end
    if SN[9] == true then
      Exit()
    end
  end
  XGCK = -1
end

function a()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.19966423e-39;4.7223738e21;9.76354705e-41;4.77770728e21;2.0;1.66230255e-19;1.75067861e-39;4.72237718e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("透视第一步已开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.39125317e-19;2.38220739e-44;1.12020547e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246;0.00999999978::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("透视第二步已开启")
end

function b()
  qmnb = {
    {memory = 131072},
    {
      name = "房区防闪已开启"
    },
    {value = 4.7777107E21, type = 16},
    {
      lv = 7.0064923E-45,
      offset = 4,
      type = 16
    },
    {
      lv = 1.1202012E-19,
      offset = 8,
      type = 16
    },
    {
      lv = 1.1210388E-44,
      offset = 12,
      type = 16
    },
    {
      lv = 1.1202016E-19,
      offset = 16,
      type = 16
    },
    {
      lv = 3.7615819E-37,
      offset = 24,
      type = 16
    },
    {
      lv = 2,
      offset = 148,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99999,
      offset = 148,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 131072},
    {
      name = "山体防闪已开启"
    },
    {value = 6.50000238419, type = 16},
    {
      lv = -6.488152E-40,
      offset = 4,
      type = 16
    },
    {
      lv = 4.7592633E21,
      offset = 8,
      type = 16
    },
    {
      lv = 5.6051939E-45,
      offset = 12,
      type = 16
    },
    {
      lv = 1.1202011E-19,
      offset = 16,
      type = 16
    },
    {
      lv = 9.8090893E-45,
      offset = 20,
      type = 16
    },
    {
      lv = 1.1202015E-19,
      offset = 24,
      type = 16
    },
    {
      lv = 3.7615819E-37,
      offset = 32,
      type = 16
    },
    {
      lv = 2,
      offset = 148,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99999,
      offset = 148,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function c()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.38020729e21;2.04687523842;2.00000023842;2.046875;2.0;2.04687547684;2.00048875809;2.81418567e-40;2.37069513e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("绿色已开启")
end

function d()
  qmnb = {
    {memory = 131072},
    {
      name = "人物红色已开启"
    },
    {value = 1194347047, type = 4},
    {
      lv = 8196,
      offset = 4,
      type = 4
    },
    {
      lv = 1194347306,
      offset = 8,
      type = 4
    },
    {
      lv = 8200,
      offset = 12,
      type = 4
    },
    {
      lv = 1194380078,
      offset = 16,
      type = 4
    },
    {
      lv = 208,
      offset = 20,
      type = 4
    },
    {
      lv = 538974464,
      offset = 24,
      type = 4
    }
  }
  qmxg = {
    {
      value = 7,
      offset = 12,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function e()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1090519040", gg.TYPE_DWORD)
  gg.toast("强力自瞄开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("全图自瞄开启成功")
end

function f()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("加速已开启")
end

function g()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("加速已关闭")
end

function h()
  qmnb = {
    {memory = 8},
    {
      name = "无后已开启"
    },
    {value = -9.983932770753347E27, type = 16},
    {
      lv = -2.78698202667584E28,
      offset = 4,
      type = 16
    },
    {
      lv = -3.7444097189855772E28,
      offset = 8,
      type = 16
    },
    {
      lv = -1.1368836915718467E-13,
      offset = 12,
      type = 16
    },
    {
      lv = -5.90295866653701E21,
      offset = 16,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 8},
    {
      name = "防抖第一步已开启"
    },
    {value = -2.7240895498569823E28, type = 16},
    {
      lv = -2.8111605430681328E28,
      offset = 4,
      type = 16
    },
    {
      lv = -1476732160,
      offset = 8,
      type = 16
    },
    {
      lv = -3.7444097189855772E28,
      offset = 12,
      type = 16
    },
    {
      lv = -1.114450155758339E28,
      offset = 16,
      type = 16
    },
    {
      lv = -7.792117266637326E22,
      offset = 24,
      type = 16
    },
    {
      lv = -8.264141907971833E21,
      offset = 28,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 16,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 8},
    {
      name = "防抖第二步已开启"
    },
    {value = -2.656333398413989E21, type = 16},
    {
      lv = 1.8638965755821076E-20,
      offset = 4,
      type = 16
    },
    {
      lv = -1.114450155758339E28,
      offset = 8,
      type = 16
    },
    {
      lv = -2.0291020897675903E20,
      offset = 12,
      type = 16
    },
    {
      lv = -1.3094070792585325E25,
      offset = 20,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function Exit()
  print("墨轩工作室")
  os.exit()
end

cs = "墨轩制作"
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
