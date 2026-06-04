
    
    xgxc = L0_3990
    function L0_3990(A0_4125)
      gg.clearResults()
      gg.setRanges(A0_4125[1].memory)
      gg.searchNumber(A0_4125[3].value, A0_4125[3].type)
      if gg.getResultCount() == 0 then
        gg.toast(A0_4125[2].name .. "开启失败")
      else
        gg.refineNumber(A0_4125[3].value, A0_4125[3].type)
        gg.refineNumber(A0_4125[3].value, A0_4125[3].type)
        gg.refineNumber(A0_4125[3].value, A0_4125[3].type)
        if gg.getResultCount() == 0 then
          gg.toast(A0_4125[2].name .. "开启失败")
        else
          sl = gg.getResults(999999)
          sz = gg.getResultCount()
          xgsl = 0
          if 999999 < sz then
            sz = 999999
          end
          for _FORV_4_ = 1, sz do
            pdsz = true
            for _FORV_8_ = 4, #A0_4125 do
              if pdsz == true then
                pysz = {}
                pysz[1] = {}
                pysz[1].address = sl[_FORV_4_].address + A0_4125[_FORV_8_].offset
                pysz[1].flags = A0_4125[_FORV_8_].type
                szpy = gg.getValues(pysz)
                pdpd = A0_4125[_FORV_8_].lv .. Key5(L0_3353.s5) .. szpy[1].value
                szpd = split(pdpd, Key6(L0_3353.s6))
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
            gg.toast(A0_4125[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
          else
            gg.toast(A0_4125[2].name .. "开启失败")
          end
        end
      end
    end
    
    xqmnb = L0_3990
    function L0_3990(A0_4126, A1_4127, A2_4128)
      local L3_4129, L4_4130, L5_4131, L6_4132, L7_4133, L8_4134, L9_4135, L10_4136, L11_4137, L12_4138, L13_4139, L14_4140, L15_4141, L16_4142, L17_4143, L18_4144, L19_4145, L20_4146, L21_4147
    end
    
    SearchWrite = L0_3990
    L0_3990 = "⟬开启⟭"
    L1_3991 = "⟬关闭⟭"
    L2_3992 = L0_3990
    L3_3993 = L0_3990
    L4_3994 = L0_3990
    L5_3995 = L0_3990
    L6_3996 = L0_3990
    L7_3997 = L0_3990
    L8_3998 = L0_3990
    L9_3999 = L0_3990
    L10_4000 = L0_3990
    L11_4001 = L0_3990
    function yiyz_Main()
      menu = gg.choice({
        "️花花打架",
        "花花人物️",
        "花花修仙",
        "花花备用区域",
        "退出脚本"
      }, nil, "【花花q群欢迎你的使用】")
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
      XGCK = -1
    end
    
    function A()
      menu1 = gg.multiChoice({
        "① 独家自瞄",
        "② 定制自瞄",
        "③ 专用自瞄",
        "④ 枪械全开",
        "⑤ 持枪路飞",
        "⑥ 人物8倍",
        "⑦ 人物小巨人",
        "⑧ 人物加速",
        "⑨ 花花范围刀",
        "⑩ 子弹变速瞬击",
        "☣︎  返回主界面️"
      }, nil, "【花花内部群】")
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
          HOME()
        end
      end
      GLWW = -1
    end
    
    function B()
      menu2 = gg.multiChoice({
        "①  人物天线选择",
        "②️  人物透视选择",
        "③  房屋透视选择",
        "④️  全服找家选择",
        "⑤  独家纯白选择",
        "⑥️  独家黑夜选择",
        "⑦  激战小范围开",
        "⑧  狂暴大范围开",
        "⑨  独家除草开启",
        "⑩  独家循环天线",
        "⑪  独家夜视选择",
        "⑫  迷你视角开启",
        "☣︎  返回总界面"
      }, nil, "【花花最帅】")
      if menu2 == nil then
      else
        if menu2[1] == true then
          b1()
        end
        if menu2[2] == true then
          b2()
        end
        if menu2[3] == true then
          b3()
        end
        if menu2[4] == true then
          b4()
        end
        if menu2[5] == true then
          b5()
        end
        if menu2[6] == true then
          b6()
        end
        if menu2[7] == true then
          b7()
        end
        if menu2[8] == true then
          b8()
        end
        if menu2[9] == true then
          b9()
        end
        if menu2[10] == true then
          b10()
        end
        if menu2[11] == true then
          b11()
        end
        if menu2[11] == true then
          b12()
        end
        if menu2[13] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function C()
      menu3 = gg.multiChoice({
        "①  独家穿墙选择",
        "②  通天路选择区",
        "③  独家飞天选择",
        "④  强制建筑选择",
        "⑤  独家鬼跳选择",
        "⑥  锁血反伤开启",
        "⑦  无视炮台开启",
        "⑧  物理隐身开启",
        "⑨  地图优化开启",
        "⑩  极品画质开启",
        "⑪  全图透视选择",
        "⑫  独家遁地选择",
        "☣︎  返回总界面️"
      }, nil, "【花花QQ群感谢你的使用】")
      if menu3 == nil then
      else
        if menu3[1] == true then
          c1()
        end
        if menu3[2] == true then
          c2()
        end
        if menu3[3] == true then
          c3()
        end
        if menu3[4] == true then
          c4()
        end
        if menu3[5] == true then
          c5()
        end
        if menu3[6] == true then
          c6()
        end
        if menu3[7] == true then
          c7()
        end
        if menu3[8] == true then
          c8()
        end
        if menu3[9] == true then
          c9()
        end
        if menu3[10] == true then
          c10()
        end
        if menu3[11] == true then
          c11()
        end
        if menu3[12] == true then
          c12()
        end
        if menu3[13] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function D()
      menu4 = gg.multiChoice({
        "①  手枪瞬击无后秒换弹",
        "②️  乌兹瞬击无后秒换弹",
        "③  冲锋瞬击无后秒换弹",
        "④️  改装瞬击无后秒换弹",
        "⑤  半自瞬击无后秒换弹",
        "⑥️  akm瞬击无后秒换弹",
        "⑦  QbZ瞬击无后秒换弹",
        "⑧  m4a瞬击无后秒换弹",
        "⑨  m24瞬击无后秒换弹",
        "⑩  炮筒瞬击无后秒换弹",
        "☣︎  返回总界面"
      }, nil, "【花花QQ群】")
      if menu4 == nil then
      else
        if menu4[1] == true then
          d1()
        end
        if menu4[2] == true then
          d2()
        end
        if menu4[3] == true then
          d3()
        end
        if menu4[4] == true then
          d4()
        end
        if menu4[5] == true then
          d5()
        end
        if menu4[6] == true then
          d6()
        end
        if menu4[7] == true then
          d7()
        end
        if menu4[8] == true then
          d8()
        end
        if menu4[9] == true then
          d9()
        end
        if menu4[10] == true then
          d10()
        end
        if menu4[11] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function a1()
      F = gg.alert("【全屏自瞄适合单挑‖内存适合群架】", "内存自瞄", "全屏自瞄")
      if F == 1 then
        gg.setRanges(16384)
        gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key7(L0_3353.s7), gg.TYPE_FLOAT)
        gg.toast("注入内存自瞄中.......")
        gg.clearResults()
        SearchWrite({
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "内存自瞄开启中")
        gg.clearList()
        gg.clearResults()
        gg.setRanges(16384)
        SearchWrite({
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "内存自瞄开启中")
        gg.clearList()
        gg.toast("内存自瞄开启")
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(16384)
        SearchWrite({
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "注入自瞄指针")
        gg.clearList()
        gg.clearResults()
        gg.setRanges(16384)
        SearchWrite({
          {
            Key8(L0_3353.s8),
            3192202712
          },
          {
            Key9(L0_3353.s9),
            3192205124
          },
          {
            Key10(L0_3353.s10),
            3192205132
          }
        }, {
          {
            Key11(L0_3353.s11),
            3192205352,
            true
          }
        }, gg.TYPE_FLOAT, "注入死锁")
        gg.clearList()
        gg.clearResults()
        gg.setRanges(16384)
        SearchWrite({
          {
            Key12(L0_3353.s12),
            3192202712
          },
          {
            Key13(L0_3353.s13),
            3192205124
          },
          {
            Key14(L0_3353.s14),
            3192205132
          }
        }, {
          {
            Key15(L0_3353.s15),
            3192205712,
            true
          }
        }, gg.TYPE_FLOAT, "注入全屏死锁")
        gg.clearList()
        gg.clearResults()
        SearchWrite({
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "自瞄开启中")
        gg.clearList()
        SearchWrite({
          {-16017.12, 43153},
          {0.0999999978, 5524}
        }, {
          {
            0.999999978,
            5524,
            false
          }
        }, gg.TYPE_FLOAT, "自瞄")
        gg.clearList()
        gg.toast("全屏死锁开启成功")
      end
    end
    
    function a2()
      F = gg.alert("【花花打造全网最强最稳】", "内存自瞄", "全屏自瞄")
      if F == 1 then
        gg.setRanges(16384)
        gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key16(L0_3353.s16), gg.TYPE_FLOAT)
        gg.toast("自瞄开启中....")
        gg.clearResults()
        SearchWrite({
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "自瞄10%")
        gg.clearList()
        gg.setRanges(16384)
        SearchWrite({
          {-128.00001525879, 2884},
          {4.8828148E-4, 524},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "自瞄10%")
        gg.clearResults()
        gg.clearList()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key17(L0_3353.s17), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key18(L0_3353.s18), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll(Key19(L0_3353.s19), gg.TYPE_FLOAT)
        gg.toast("自瞄40%")
        gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key20(L0_3353.s20), gg.TYPE_FLOAT)
        gg.toast("自瞄60%")
        gg.clearResults()
        gg.searchNumber(Key21(L0_3353.s21), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.clearResults()
        gg.setRanges(16384)
        gg.toast("自瞄80%")
        SearchWrite({
          {-16017.12, 43153},
          {0.0999999978, 5524}
        }, {
          {
            0.999999978,
            5524,
            false
          }
        }, gg.REGION_C_BSS, "自瞄算法")
        gg.clearList()
        gg.setRanges(16)
        gg.searchNumber(Key22(L0_3353.s22), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key23(L0_3353.s23), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key24(L0_3353.s24), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.getResultsCount()
        gg.addListItems({
          [1] = {
            address = 3515858776,
            flags = 16,
            freeze = true,
            value = 0.01
          }
        })
        gg.toast("自瞄%100")
      elseif F == 2 then
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key25(L0_3353.s25), gg.TYPE_FLOAT)
        gg.toast("独家诛仙自瞄启动中")
        gg.clearResults()
        gg.clearList()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key26(L0_3353.s26), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll("", gg.TYPE_FLOAT)
        gg.toast("自瞄已启动10%")
        gg.clearResults()
        gg.toast("自瞄已启动20%")
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key27(L0_3353.s27), gg.TYPE_FLOAT)
        gg.toast("自瞄已启动30%")
        gg.clearResults()
        gg.searchNumber(4.8828148E-4, gg.TYPE_FLOAT)
        gg.getResultCount()
        gg.getResults(0)
        gg.clearResults()
        gg.toast("自瞄已启动40%")
        gg.clearList()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key28(L0_3353.s28), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll("", gg.TYPE_FLOAT)
        gg.toast("自瞄已启动50%")
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key29(L0_3353.s29), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key30(L0_3353.s30), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key31(L0_3353.s31), gg.TYPE_FLOAT)
        gg.toast("自瞄已启动60%")
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key32(L0_3353.s32), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key33(L0_3353.s33), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key34(L0_3353.s34), gg.TYPE_FLOAT)
        gg.toast("自瞄已启动70%")
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key35(L0_3353.s35), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key36(L0_3353.s36), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key37(L0_3353.s37), gg.TYPE_FLOAT)
        gg.toast("自瞄已启动80%️")
        gg.setRanges(16384)
        gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key38(L0_3353.s38), gg.TYPE_FLOAT)
        gg.toast("自瞄已启动90%")
        gg.clearResults()
        SearchWrite({
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }, {
          {
            0,
            284,
            true
          }
        }, gg.TYPE_FLOAT, "自瞄")
        gg.clearList()
        gg.setRanges(32)
        gg.searchNumber(Key39(L0_3353.s39), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key40(L0_3353.s40), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key41(L0_3353.s41), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key42(L0_3353.s42), gg.TYPE_FLOAT)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key43(L0_3353.s43), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key44(L0_3353.s44), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key45(L0_3353.s45), gg.TYPE_FLOAT)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key46(L0_3353.s46), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key47(L0_3353.s47), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key48(L0_3353.s48), gg.TYPE_FLOAT)
        gg.toast("自瞄已启动完毕")
        gg.clearResults()
      end
    end
    
    function a3()
      local L0_4148, L1_4149, L2_4150, L3_4151, L4_4152, L5_4153, L6_4154, L7_4155, L8_4156, L9_4157, L10_4158, L11_4159, L12_4160, L13_4161, L14_4162, L15_4163, L16_4164, L17_4165, L18_4166, L19_4167, L20_4168, L21_4169, L22_4170, L23_4171, L24_4172, L25_4173, L26_4174, L27_4175, L28_4176, L29_4177, L30_4178, L31_4179, L32_4180, L33_4181, L34_4182, L35_4183, L36_4184, L37_4185, L38_4186, L39_4187, L40_4188, L41_4189, L42_4190, L43_4191, L44_4192, L45_4193, L46_4194, L47_4195, L48_4196, L49_4197, L50_4198, L51_4199, L52_4200, L53_4201, L54_4202, L55_4203, L56_4204, L57_4205
    end
    
    function a4()
      F = gg.alert("【🚩定制开启较慢‖独家开启较快】", "定制全开", "独家全开")
      if F == 1 then
        gg.setRanges(32)
        SearchWrite({
          {40, 3908},
          {7, 3920},
          {15, 3932}
        }, {
          {
            0.00999999978,
            3920,
            true
          }
        }, gg.REGION_C_BSS, "双持无后")
        gg.clearList()
        SearchWrite({
          {-0.20000000298, 0},
          {1, -8},
          {360, -12}
        }, {
          {
            1.0E19,
            -12,
            false
          }
        }, gg.REGION_C_BSS, "双持瞬击")
        gg.clearList()
        SearchWrite({
          {290, 132},
          {100, 136},
          {80, 144}
        }, {
          {
            60,
            144,
            false
          }
        }, gg.REGION_C_BSS, "双持射速加快")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.76666688919, 88},
          {1.2107219E-42, 80}
        }, {
          {
            0.00999999978,
            88,
            true
          }
        }, gg.REGION_C_BSS, "双持射速加快")
        gg.clearList()
        gg.toast("双持开启成功")
        qmnb = {
          {memory = 32},
          {name = "SMG无后"},
          {
            value = tonumber(Key164(L0_3353.s164)),
            type = 16
          },
          {
            lv = tonumber(Key165(L0_3353.s165)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key166(L0_3353.s166)),
            offset = 12,
            type = 16
          },
          {
            lv = tonumber(Key167(L0_3353.s167)),
            offset = 16,
            type = 16
          },
          {
            lv = tonumber(Key168(L0_3353.s168)),
            offset = 20,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key169(L0_3353.s169)),
            offset = 12,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 32},
          {name = "SMG瞬击"},
          {
            value = tonumber(Key170(L0_3353.s170)),
            type = 16
          },
          {
            lv = tonumber(Key171(L0_3353.s171)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key172(L0_3353.s172)),
            offset = 8,
            type = 16
          },
          {
            lv = tonumber(Key173(L0_3353.s173)),
            offset = 20,
            type = 16
          },
          {
            lv = tonumber(Key174(L0_3353.s174)),
            offset = 60,
            type = 16
          },
          {
            lv = tonumber(Key175(L0_3353.s175)),
            offset = 64,
            type = 16
          },
          {
            lv = tonumber(Key176(L0_3353.s176)),
            offset = 68,
            type = 16
          },
          {
            lv = tonumber(Key177(L0_3353.s177)),
            offset = 72,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key178(L0_3353.s178)),
            offset = 20,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 4},
          {
            name = "SMG秒换弹50%"
          },
          {
            value = tonumber(Key179(L0_3353.s179)),
            type = 16
          },
          {
            lv = tonumber(Key180(L0_3353.s180)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key181(L0_3353.s181)),
            offset = 24,
            type = 16
          },
          {
            lv = tonumber(Key182(L0_3353.s182)),
            offset = 136,
            type = 16
          },
          {
            lv = tonumber(Key183(L0_3353.s183)),
            offset = 156,
            type = 16
          },
          {
            lv = tonumber(Key184(L0_3353.s184)),
            offset = 160,
            type = 16
          },
          {
            lv = tonumber(Key185(L0_3353.s185)),
            offset = 164,
            type = 16
          },
          {
            lv = tonumber(Key186(L0_3353.s186)),
            offset = 212,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key187(L0_3353.s187)),
            offset = 164,
            type = 16
          }
        }
        xqmnb(qmnb)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key188(L0_3353.s188), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key189(L0_3353.s189), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999999)
        gg.editAll(Key190(L0_3353.s190), gg.TYPE_FLOAT)
        gg.toast("SMG秒换弹开启成功")
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key191(L0_3353.s191), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key192(L0_3353.s192), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key193(L0_3353.s193), gg.TYPE_FLOAT)
        gg.setRanges(32)
        SearchWrite({
          {40, 3908},
          {7, 3920},
          {15, 3932}
        }, {
          {
            0.00999999978,
            3920,
            true
          }
        }, gg.REGION_C_BSS, "uzi无后")
        gg.clearList()
        SearchWrite({
          {-0.20000000298, 0},
          {1, -8},
          {360, -12}
        }, {
          {
            1.0E19,
            -12,
            false
          }
        }, gg.REGION_C_BSS, "uzi瞬击")
        gg.clearList()
        SearchWrite({
          {290, 132},
          {100, 136},
          {80, 144}
        }, {
          {
            60,
            144,
            false
          }
        }, gg.REGION_C_BSS, "uzi射速加快")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.76666688919, 88},
          {1.2107219E-42, 80}
        }, {
          {
            0.00999999978,
            88,
            true
          }
        }, gg.REGION_C_BSS, "uzi射速加快")
        gg.clearList()
        gg.toast("UZI开启成功")
        qmnb = {
          {memory = 32},
          {
            name = "改装无后"
          },
          {
            value = tonumber(Key194(L0_3353.s194)),
            type = 16
          },
          {
            lv = tonumber(Key195(L0_3353.s195)),
            offset = 12,
            type = 16
          },
          {
            lv = tonumber(Key196(L0_3353.s196)),
            offset = 24,
            type = 16
          },
          {
            lv = tonumber(Key197(L0_3353.s197)),
            offset = 28,
            type = 16
          },
          {
            lv = tonumber(Key198(L0_3353.s198)),
            offset = 32,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key199(L0_3353.s199)),
            offset = 28,
            type = 16
          },
          {
            value = tonumber(Key200(L0_3353.s200)),
            offset = 32,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 32},
          {
            name = "改装瞬击"
          },
          {
            value = tonumber(Key201(L0_3353.s201)),
            type = 16
          },
          {
            lv = tonumber(Key202(L0_3353.s202)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key203(L0_3353.s203)),
            offset = 16,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key204(L0_3353.s204)),
            offset = 16,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 4},
          {
            name = "改装秒换弹"
          },
          {
            value = tonumber(Key205(L0_3353.s205)),
            type = 16
          },
          {
            lv = tonumber(Key206(L0_3353.s206)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key207(L0_3353.s207)),
            offset = 8,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key208(L0_3353.s208)),
            offset = 8,
            type = 16
          }
        }
        xqmnb(qmnb)
        gg.setRanges(32)
        SearchWrite({
          {40, 3908},
          {7, 3920},
          {15, 3932}
        }, {
          {
            0.00999999978,
            3920,
            true
          }
        }, gg.REGION_C_BSS, "改装无后")
        gg.clearList()
        SearchWrite({
          {290, 132},
          {100, 136},
          {80, 144}
        }, {
          {
            60,
            144,
            false
          }
        }, gg.REGION_C_BSS, "改装射速加快")
        gg.clearList()
        qmnb = {
          {memory = 32},
          {
            name = "半自动无后"
          },
          {
            value = tonumber(Key209(L0_3353.s209)),
            type = 16
          },
          {
            lv = tonumber(Key210(L0_3353.s210)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key211(L0_3353.s211)),
            offset = 12,
            type = 16
          },
          {
            lv = tonumber(Key212(L0_3353.s212)),
            offset = 16,
            type = 16
          },
          {
            lv = tonumber(Key213(L0_3353.s213)),
            offset = 20,
            type = 16
          },
          {
            lv = tonumber(Key214(L0_3353.s214)),
            offset = 24,
            type = 16
          },
          {
            lv = tonumber(Key215(L0_3353.s215)),
            offset = 28,
            type = 16
          },
          {
            lv = tonumber(Key216(L0_3353.s216)),
            offset = 32,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key217(L0_3353.s217)),
            offset = 16,
            type = 16
          },
          {
            value = tonumber(Key218(L0_3353.s218)),
            offset = 20,
            type = 16
          }
        }
        xqmnb(qmnb)
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key219(L0_3353.s219), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key220(L0_3353.s220), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999999)
        gg.editAll(Key221(L0_3353.s221), gg.TYPE_FLOAT)
        gg.toast("半自动瞬击开启成功")
        gg.clearResults()
        qmnb = {
          {memory = 4},
          {
            name = "半自动秒换弹50%"
          },
          {
            value = tonumber(Key222(L0_3353.s222)),
            type = 16
          },
          {
            lv = tonumber(Key223(L0_3353.s223)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key224(L0_3353.s224)),
            offset = 8,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key225(L0_3353.s225)),
            offset = 8,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 4},
          {
            name = "半动秒换弹100%"
          },
          {
            value = tonumber(Key226(L0_3353.s226)),
            type = 16
          },
          {
            lv = tonumber(Key227(L0_3353.s227)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key228(L0_3353.s228)),
            offset = 8,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key229(L0_3353.s229)),
            offset = 8,
            type = 16
          }
        }
        xqmnb(qmnb)
        gg.setRanges(32)
        SearchWrite({
          {10, 64},
          {0.10000000149, 20},
          {5, 80}
        }, {
          {
            0.00999999978,
            64,
            false
          }
        }, gg.REGION_C_BSS, "半自动无后")
        qmnb = {
          {memory = 32},
          {name = "AKM无后"},
          {
            value = tonumber(Key230(L0_3353.s230)),
            type = 16
          },
          {
            lv = tonumber(Key231(L0_3353.s231)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key232(L0_3353.s232)),
            offset = 8,
            type = 16
          },
          {
            lv = tonumber(Key233(L0_3353.s233)),
            offset = 12,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key234(L0_3353.s234)),
            offset = 4,
            type = 16
          },
          {
            value = tonumber(Key235(L0_3353.s235)),
            offset = 8,
            type = 16
          },
          {
            value = tonumber(Key236(L0_3353.s236)),
            offset = 12,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 32},
          {name = "AKM瞬击"},
          {
            value = tonumber(Key237(L0_3353.s237)),
            type = 16
          },
          {
            lv = tonumber(Key238(L0_3353.s238)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key239(L0_3353.s239)),
            offset = 16,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key240(L0_3353.s240)),
            offset = 16,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 4},
          {
            name = "AKM秒换弹50%"
          },
          {
            value = tonumber(Key241(L0_3353.s241)),
            type = 16
          },
          {
            lv = tonumber(Key242(L0_3353.s242)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key243(L0_3353.s243)),
            offset = 8,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key244(L0_3353.s244)),
            offset = 8,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 4},
          {
            name = "AKM秒换弹100%"
          },
          {
            value = tonumber(Key245(L0_3353.s245)),
            type = 16
          },
          {
            lv = tonumber(Key246(L0_3353.s246)),
            offset = 4,
            type = 16
          },
          {
            lv = tonumber(Key247(L0_3353.s247)),
            offset = 8,
            type = 16
          }
        }
        qmxg = {
          {
            value = tonumber(Key248(L0_3353.s248)),
            offset = 8,
            type = 16
          }
        }
        xqmnb(qmnb)
        gg.setRanges(32)
        SearchWrite({
          {-20, 64},
          {5, 48},
          {10, 32}
        }, {
          {
            0.00999999978,
            32,
            false
          }
        }, gg.REGION_C_BSS, "AK无后子")
        gg.clearList()
        SearchWrite({
          {480, 228},
          {1, 232},
          {0.375, 248}
        }, {
          {
            1000000000,
            228,
            false
          }
        }, gg.REGION_C_BSS, "AK瞬击")
        gg.setRanges(gg.REGION_ANONYMOUS)
        SearchWrite({
          {0.10000000149, 36},
          {6, 80},
          {4, 96}
        }, {
          {
            0.00999999978,
            80,
            false
          }
        }, gg.TYPE_FLOAT)
        gg.setRanges(gg.REGION_ANONYMOUS)
        SearchWrite({
          {0.375, 0},
          {540, -20},
          {-0.5, -8}
        }, {
          {
            1000000000,
            -20,
            false
          }
        }, gg.TYPE_FLOAT)
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.90000009537, 152},
          {1.2107219E-42, 144}
        }, {
          {
            0.00999999978,
            152,
            false
          }
        }, gg.TYPE_FLOAT)
        gg.clearList()
        gg.clearResults()
        SearchWrite({
          {2.03333353996, 216},
          {1.2107219E-42, 208}
        }, {
          {
            0.00999999978,
            216,
            false
          }
        }, gg.TYPE_FLOAT)
        gg.clearList()
        gg.clearResults()
        gg.toast("QBZ开启成功")
        gg.setRanges(32)
        SearchWrite({
          {0.10000000149, 36},
          {6, 80},
          {4, 96}
        }, {
          {
            0.00999999978,
            80,
            false
          }
        }, gg.REGION_C_BSS, "M4无后")
        gg.clearList()
        SearchWrite({
          {0.375, 0},
          {540, -20},
          {-0.5, -8}
        }, {
          {
            1000000000,
            -20,
            false
          }
        }, gg.REGION_C_BSS, "M4瞬击")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.16666674614, 152},
          {1.2107219E-42, 144}
        }, {
          {
            0.00999999978,
            152,
            true
          }
        }, gg.REGION_C_BSS, "M4秒换弹%50")
        gg.clearList()
        SearchWrite({
          {2.66666674614, 24},
          {1.2107219E-42, 16}
        }, {
          {
            0.00999999978,
            24,
            false
          }
        }, gg.REGION_C_BSS, "M4秒换弹%100")
        gg.clearList()
        gg.toast("M4开启成功")
      elseif F == 2 then
        gg.clearResults(gg.REGION_C_ALLOC)
        SearchWrite({
          {
            Key249(L0_3353.s249),
            51956
          },
          {
            Key250(L0_3353.s250),
            51948
          },
          {
            Key251(L0_3353.s251),
            51932
          }
        }, {
          {
            Key252(L0_3353.s252),
            52120
          }
        }, gg.TYPE_FLOAT, "sam")
        gg.clearResults(gg.REGION_C_ALLOC)
        SearchWrite({
          {
            Key253(L0_3353.s253),
            2623993208
          },
          {
            Key254(L0_3353.s254),
            2623993204
          },
          {
            Key255(L0_3353.s255),
            2623993200
          }
        }, {
          {
            Key256(L0_3353.s256),
            2623993368
          }
        }, gg.TYPE_FLOAT, "uzi")
        gg.setRanges(32)
        SearchWrite({
          {40, 3908},
          {7, 3920},
          {15, 3932}
        }, {
          {
            0.00999999978,
            3920,
            false
          }
        }, gg.REGION_C_BSS, "SMG无后")
        gg.clearList()
        SearchWrite({
          {300, 0},
          {1, 4}
        }, {
          {
            1000000000,
            0,
            false
          }
        }, gg.REGION_C_BSS, "SMG瞬击")
        gg.clearList()
        gg.setRanges(32)
        SearchWrite({
          {40, 3908},
          {7, 3920},
          {15, 3932}
        }, {
          {
            0.00999999978,
            3920,
            true
          }
        }, gg.REGION_C_BSS, "乌兹无后")
        gg.clearList()
        SearchWrite({
          {-0.20000000298, 0},
          {1, -8},
          {360, -12}
        }, {
          {
            1.0E19,
            -12,
            false
          }
        }, gg.REGION_C_BSS, "乌兹瞬击")
        gg.clearList()
        SearchWrite({
          {290, 132},
          {100, 136},
          {80, 144}
        }, {
          {
            60,
            144,
            false
          }
        }, gg.REGION_C_BSS, "乌兹射速加快")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.76666688919, 88},
          {1.2107219E-42, 80}
        }, {
          {
            0.00999999978,
            88,
            true
          }
        }, gg.REGION_C_BSS, "乌兹射速加快")
        gg.clearList()
        gg.toast("UZI开启成功")
        gg.setRanges(32)
        SearchWrite({
          {40, 3908},
          {7, 3920},
          {15, 3932}
        }, {
          {
            0.00999999978,
            3920,
            true
          }
        }, gg.REGION_C_BSS, "改装无后")
        gg.clearList()
        SearchWrite({
          {-0.20000000298, 0},
          {1, -8},
          {360, -12}
        }, {
          {
            1.0E19,
            -12,
            false
          }
        }, gg.REGION_C_BSS, "改装瞬击")
        gg.clearList()
        SearchWrite({
          {290, 132},
          {100, 136},
          {80, 144}
        }, {
          {
            60,
            144,
            false
          }
        }, gg.REGION_C_BSS, "改装射速加快")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.76666688919, 88},
          {1.2107219E-42, 80}
        }, {
          {
            0.00999999978,
            88,
            true
          }
        }, gg.REGION_C_BSS, "改装秒换弹")
        gg.clearList()
        gg.clearResults(gg.REGION_C_ALLOC)
        SearchWrite({
          {
            Key257(L0_3353.s257),
            2610968528
          },
          {
            Key258(L0_3353.s258),
            2610968376
          },
          {
            Key259(L0_3353.s259),
            2610968372
          }
        }, {
          {
            Key260(L0_3353.s260),
            2610968536
          }
        }, gg.TYPE_FLOAT, "温馨提示:半自动秒换")
        gg.setRanges(32)
        SearchWrite({
          {10, 64},
          {0.10000000149, 20},
          {5, 80}
        }, {
          {
            0.00999999978,
            64,
            false
          }
        }, gg.REGION_C_BSS, "半自动无后")
        gg.clearList()
        SearchWrite({
          {-0.60000002384, 32},
          {480, 20},
          {80, 4}
        }, {
          {
            480,
            20,
            true
          }
        }, gg.REGION_C_BSS, "半自动瞬击")
        gg.clearList()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("864D<2.16666674614::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key261(L0_3353.s261), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll(Key262(L0_3353.s262), gg.TYPE_FLOAT)
        gg.toast("半自动无后瞬击秒换弹开启成功")
        gg.clearResults()
        gg.setRanges(32)
        SearchWrite({
          {-20, 64},
          {5, 48},
          {10, 32}
        }, {
          {
            0.00999999978,
            32,
            false
          }
        }, gg.REGION_C_BSS, "AK无后")
        gg.clearList()
        SearchWrite({
          {480, 228},
          {1, 232},
          {0.375, 248}
        }, {
          {
            1000000000,
            228,
            false
          }
        }, gg.REGION_C_BSS, "AK瞬击")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.16666674614, 152},
          {1.2107219E-42, 144}
        }, {
          {
            0.00999999978,
            152,
            true
          }
        }, gg.REGION_C_BSS, "AK秒换弹%50")
        gg.clearList()
        SearchWrite({
          {2.66666674614, 24},
          {1.2107219E-42, 16}
        }, {
          {
            0.00999999978,
            24,
            false
          }
        }, gg.REGION_C_BSS, "AK秒换弹%100")
        gg.clearList()
        gg.setRanges(32)
        SearchWrite({
          {0.10000000149, 36},
          {6, 80},
          {4, 96}
        }, {
          {
            0.00999999978,
            80,
            false
          }
        }, gg.REGION_C_BSS, "QBZ无后")
        gg.clearList()
        SearchWrite({
          {0.375, 0},
          {540, -20},
          {-0.5, -8}
        }, {
          {
            1000000000,
            -20,
            false
          }
        }, gg.REGION_C_BSS, "QBZ瞬击")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.90000009537, 152},
          {1.2107219E-42, 144}
        }, {
          {
            0.00999999978,
            152,
            false
          }
        }, gg.REGION_C_BSS, "QBZ秒换弹%50")
        gg.clearList()
        SearchWrite({
          {2.03333353996, 216},
          {1.2107219E-42, 208}
        }, {
          {
            0.00999999978,
            216,
            false
          }
        }, gg.REGION_C_BSS, "QBZ秒换弹%100")
        gg.clearList()
        gg.setRanges(32)
        SearchWrite({
          {-20, 64},
          {5, 48},
          {10, 32}
        }, {
          {
            0.00999999978,
            32,
            false
          }
        }, gg.REGION_C_BSS, "M4无后")
        gg.clearList()
        SearchWrite({
          {480, 228},
          {1, 232},
          {0.375, 248}
        }, {
          {
            1000000000,
            228,
            false
          }
        }, gg.REGION_C_BSS, "M4瞬击")
        gg.clearList()
        gg.setRanges(4)
        SearchWrite({
          {2.16666674614, 152},
          {1.2107219E-42, 144}
        }, {
          {
            0.00999999978,
            152,
            true
          }
        }, gg.REGION_C_BSS, "M4秒换弹%50")
        gg.clearList()
        SearchWrite({
          {2.66666674614, 24},
          {1.2107219E-42, 16}
        }, {
          {
            0.00999999978,
            24,
            false
          }
        }, gg.REGION_C_BSS, "M4秒换弹%100")
        gg.clearList()
      end
    end
    
    function a5()
      F = gg.alert("【花花用心打造全网最强最稳】", "倍镜路飞", "机瞄路飞")
      if F == 1 then
        gg.setRanges(gg.REGION_ANONYMOUS)
        SearchWrite({
          {
            Key263(L0_3353.s263),
            3482826840
          },
          {
            Key264(L0_3353.s264),
            3482826836
          },
          {
            Key265(L0_3353.s265),
            3482826800
          }
        }, {
          {
            Key266(L0_3353.s266),
            3482826900
          }
        }, gg.TYPE_FLOAT, "倍镜路飞开启成功")
      elseif F == 2 then
        gg.setRanges(gg.REGION_ANONYMOUS)
        SearchWrite({
          {
            Key267(L0_3353.s267),
            3483543640
          },
          {
            Key268(L0_3353.s268),
            3483543636
          },
          {
            Key269(L0_3353.s269),
            3483543600
          }
        }, {
          {
            Key270(L0_3353.s270),
            3483543708
          }
        }, gg.TYPE_FLOAT, "机瞄路飞开启成功")
      end
    end
    
    function a6()
      F = gg.alert("【🚩花花用心打造全网最强最稳】", "关闭千米打击", "开启千米打击")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        SearchWrite({
          {
            Key271(L0_3353.s271),
            3000264620
          },
          {
            Key272(L0_3353.s272),
            3000264676
          },
          {
            Key273(L0_3353.s273),
            3000264680
          },
          {
            Key274(L0_3353.s274),
            3000264672
          },
          {
            Key275(L0_3353.s275),
            3000264668
          }
        }, {
          {
            Key276(L0_3353.s276),
            3000264692,
            true
          }
        }, gg.TYPE_FLOAT, "千米打击关闭成功")
        gg.clearList()
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        SearchWrite({
          {
            Key277(L0_3353.s277),
            3000264620
          },
          {
            Key278(L0_3353.s278),
            3000264676
          },
          {
            Key279(L0_3353.s279),
            3000264680
          },
          {
            Key280(L0_3353.s280),
            3000264672
          },
          {
            Key281(L0_3353.s281),
            3000264668
          }
        }, {
          {
            8,
            3000264692,
            true
          }
        }, gg.TYPE_FLOAT, "千米打击开启成功")
        gg.clearList()
      end
    end
    
    function a7()
      F = gg.alert("【🚩花花用心打造全网最强最稳】", "实体小巨人", "实体大巨人")
      if F == 1 then
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key282(L0_3353.s282), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key283(L0_3353.s283), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key284(L0_3353.s284), gg.TYPE_FLOAT)
        gg.toast("花花实体小巨人已开启")
      elseif F == 2 then
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(16384)
        gg.searchNumber(Key285(L0_3353.s285), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key286(L0_3353.s286), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key287(L0_3353.s287), gg.TYPE_FLOAT)
        gg.toast("50%")
        gg.setRanges(32)
        gg.searchNumber(Key288(L0_3353.s288), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key289(L0_3353.s289), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key290(L0_3353.s290), gg.TYPE_FLOAT)
        gg.toast("100%")
        gg.alert("实体大巨人开启成功")
      end
    end
    
    function a8()
      F = gg.alert("【花花用心打造全网最强最稳】", "倒地加速", "人物加速")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key291(L0_3353.s291), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key292(L0_3353.s292), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key293(L0_3353.s293), gg.TYPE_FLOAT)
        gg.toast("倒地加速开启成功")
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key294(L0_3353.s294), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key295(L0_3353.s295), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10)
        gg.editAll(Key296(L0_3353.s296), gg.TYPE_FLOAT)
        gg.toast(" 人物加速开启成功 ")
        gg.clearResults()
      end
    end
    
    function a9()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber(Key297(L0_3353.s297), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key298(L0_3353.s298), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll(Key299(L0_3353.s299), gg.TYPE_FLOAT)
      gg.clearResults()
      a9()
    end
    
    function a10()
      F = gg.alert("【花花用心打造全网最强最稳】", "子弹瞬击", "射速加快")
      if F == 1 then
        gg.setRanges(32)
        gg.searchNumber(Key300(L0_3353.s300), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key301(L0_3353.s301), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key302(L0_3353.s302), gg.TYPE_FLOAT)
        gg.toast("SMG冲锋枪瞬击开启成功")
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key303(L0_3353.s303), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key304(L0_3353.s304), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key305(L0_3353.s305), gg.TYPE_FLOAT)
        gg.toast("改装瞬击开启成功")
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key306(L0_3353.s306), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key307(L0_3353.s307), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(20)
        gg.editAll(Key308(L0_3353.s308), gg.TYPE_FLOAT)
        gg.toast("qbz瞬击开启成功")
        gg.clearResults()
        gg.setRanges(32)
        gg.searchNumber(Key309(L0_3353.s309), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key310(L0_3353.s310), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key311(L0_3353.s311), gg.TYPE_FLOAT)
        gg.toast("ak瞬击开启成功")
        gg.clearResults()
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.searchNumber(Key312(L0_3353.s312), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key313(L0_3353.s313), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll(Key314(L0_3353.s314), gg.TYPE_FLOAT)
        gg.toast("射速加快开启成功")
        gg.clearResults()
      end
    end
    
    function b1()
      F = gg.alert("【超清天线即开即用‖蓝透坐标配合黑夜效果更佳】", "蓝透坐标", "超清天线")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key315(L0_3353.s315), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key316(L0_3353.s316), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999999)
        gg.editAll(Key317(L0_3353.s317), gg.TYPE_FLOAT)
        gg.toast("花花蓝色透开启中")
        gg.setRanges(131072)
        gg.searchNumber(Key318(L0_3353.s318), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key319(L0_3353.s319), gg.REGION_C_BSS)
        gg.toast("花花蓝色透开启中")
        gg.clearResults()
        gg.setRanges(131072)
        gg.searchNumber(Key320(L0_3353.s320), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key321(L0_3353.s321), gg.REGION_C_BSS)
        gg.clearResults()
        gg.toast("独家蓝透开启中")
        gg.setRanges(16384)
        SearchWrite({
          {-2.7859868E28, 0},
          {0.0549999997, -4},
          {0.04044999927, -8}
        }, {
          {
            2,
            -4,
            false
          }
        }, gg.REGION_C_BSS, "蓝色透视开启成功")
        gg.clearList()
        gg.toast("500米蓝色天线开启")
      elseif F == 2 then
        qmnb = {
          {memory = 4},
          {
            name = "超清天线开启中"
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
        gg.toast("独家超清天线开启")
      end
    end
    
    function b2()
      F = gg.alert("【独家透视只透视活物‖定制透视透视范围:人物，载具，地图透等】", "独家透视", "定制透视")
      if F == 1 then
        gg.setRanges(131072)
        gg.searchNumber(Key322(L0_3353.s322), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key323(L0_3353.s323), gg.REGION_C_BSS)
        gg.clearResults()
        gg.toast("独家透视开启成功")
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(131072)
        gg.searchNumber(Key324(L0_3353.s324), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.getResults(100)
        gg.editAll(Key325(L0_3353.s325), 16)
        gg.clearResults()
        gg.setRanges(131072)
        SearchWrite({
          {-150, 8836},
          {-30, 8832},
          {0.00999999978, 8840}
        }, {
          {
            0,
            8840,
            false
          }
        }, 16)
        gg.setRanges(131072)
        gg.searchNumber(Key326(L0_3353.s326), 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key327(L0_3353.s327), 16)
        gg.clearResults()
        gg.searchNumber("1,669,499,405", 4, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key328(L0_3353.s328), 4)
        gg.clearResults()
        gg.toast("定制透视已开启")
      end
    end
    
    function b3()
      F = gg.alert("【花花用心打造全网最强最稳】", "房屋透视关闭", "房屋透视开启")
      if F == 1 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(131072)
        gg.searchNumber(Key329(L0_3353.s329), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.searchNumber(Key330(L0_3353.s330), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.getResults(1)
        gg.editAll(Key331(L0_3353.s331), 16)
        gg.clearResults()
        gg.toast("房屋透视已开启")
      elseif F == 2 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(131072)
        gg.searchNumber(Key332(L0_3353.s332), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.searchNumber(Key333(L0_3353.s333), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.getResults(1)
        gg.editAll(Key334(L0_3353.s334), 16)
        gg.clearResults()
        gg.toast("房屋透视已关闭")
      end
    end
    
    function b4()
      F = gg.alert("【花花用心打造全网最强最稳】", "全服找家关闭", "全服找家开启")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key335(L0_3353.s335), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key336(L0_3353.s336), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key337(L0_3353.s337), gg.TYPE_FLOAT)
        gg.toast("木墙天线关闭成功")
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key338(L0_3353.s338), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key339(L0_3353.s339), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key340(L0_3353.s340), gg.TYPE_FLOAT)
        gg.toast("石头天线开启关闭")
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key341(L0_3353.s341), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key342(L0_3353.s342), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key343(L0_3353.s343), gg.TYPE_FLOAT)
        gg.toast("铁墙天线关闭成功")
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key344(L0_3353.s344), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key345(L0_3353.s345), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key346(L0_3353.s346), gg.TYPE_FLOAT)
        gg.toast("木墙天线开启成功")
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key347(L0_3353.s347), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key348(L0_3353.s348), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key349(L0_3353.s349), gg.TYPE_FLOAT)
        gg.toast("石墙天线开启成功")
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key350(L0_3353.s350), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key351(L0_3353.s351), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key352(L0_3353.s352), gg.TYPE_FLOAT)
        gg.toast("铁墙天线开启成功")
      end
    end
    
    function b5()
      F = gg.alert("【花花用心打造全网最强最稳】", "通用纯白", "麒麟纯白")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_BAD)
        gg.searchNumber(Key353(L0_3353.s353), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key354(L0_3353.s354), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key355(L0_3353.s355), gg.TYPE_FLOAT)
        gg.toast("花花纯白通用版开启成功")
        gg.clearResults()
        gg.clearList()
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key356(L0_3353.s356), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key357(L0_3353.s357), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000)
        gg.editAll(Key358(L0_3353.s358), gg.TYPE_FLOAT)
        gg.toast("花花麒麟专用上色开启成功")
        gg.clearList()
      end
    end
    
    function b6()
      F = gg.alert("【花花用心打造全网最强最稳】", "高光模式", "黑夜模式")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key359(L0_3353.s359), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key360(L0_3353.s360), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999999)
        gg.editAll(Key361(L0_3353.s361), gg.TYPE_FLOAT)
        gg.toast("人物高光开启中")
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key362(L0_3353.s362), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key363(L0_3353.s363), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999999)
        gg.editAll(Key364(L0_3353.s364), gg.TYPE_FLOAT)
        gg.toast("人物高光开启成功")
      elseif F == 2 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber(Key365(L0_3353.s365), 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key366(L0_3353.s366), 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1)
        gg.editAll(Key367(L0_3353.s367), 16)
        gg.toast("黑夜模式开启成功")
      end
    end
    
    function b7()
      gg.alert("花花稳定小范围循环中")
      while true do
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key368(L0_3353.s368), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key369(L0_3353.s369), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key370(L0_3353.s370), gg.TYPE_FLOAT)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key371(L0_3353.s371), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key372(L0_3353.s372), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key373(L0_3353.s373), gg.TYPE_FLOAT)
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function b8()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber(Key374(L0_3353.s374), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key375(L0_3353.s375), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll(Key376(L0_3353.s376), gg.TYPE_FLOAT)
      gg.setVisible(false)
      gg.toast("大范围开启成功")
    end
    
    function b9()
      gg.setRanges(131072)
      gg.clearResults()
      gg.searchNumber(Key377(L0_3353.s377), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(3)
      gg.editAll(Key378(L0_3353.s378), gg.TYPE_FLOAT)
      gg.toast("花花独家除草已开启")
      gg.clearResults()
    end
    
    function b10()
      gg.alert("花花定制版循环防失效天线")
      while true do
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber(Key379(L0_3353.s379), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key380(L0_3353.s380), gg.REGION_C_BSS)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber(Key381(L0_3353.s381), gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key382(L0_3353.s382), gg.REGION_C_BSS)
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function b11()
      F = gg.alert("【花花用心打造全网最强最稳】", "关闭夜视", "开启夜视")
      if F == 1 then
        gg.setRanges(16384)
        SearchWrite({
          {-2.7859868E28, 0},
          {2, -4},
          {0.04044999927, -8}
        }, {
          {
            0.0549999997,
            -4,
            false
          }
        }, gg.REGION_C_BSS, "夜视关闭成功")
        gg.clearList()
        gg.toast("夜视关闭")
      elseif F == 2 then
        gg.setRanges(16384)
        SearchWrite({
          {-2.7859868E28, 0},
          {0.0549999997, -4},
          {0.04044999927, -8}
        }, {
          {
            2,
            -4,
            false
          }
        }, gg.REGION_C_BSS, "夜视开启成功")
        gg.clearList()
        gg.toast("夜视开启")
      end
    end
    
    function b12()
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber(Key383(L0_3353.s383), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key384(L0_3353.s384), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll(Key385(L0_3353.s385), gg.TYPE_FLOAT)
      gg.toast("花花迷你视角已开启")
    end
    
    function c1()
      F = gg.alert("【灵魂出窍需要断网或者变速进行穿家‖实体穿墙开启即可穿】", "灵魂出窍", "实体穿墙")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber(Key386(L0_3353.s386), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key387(L0_3353.s387), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
              value = 8
            }
          })
        end
        gg.toast("花花新灵魂出窍开启成功")
        gg.clearResults()
        gg.clearList()
      elseif F == 2 then
        AL("花花独家穿墙无需断网即可穿家")
        QL()
        NC(4)
        CZ(Key388(L0_3353.s388), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        CZ(Key389(L0_3353.s389), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        jg = FW(100)
        sl = FWW()
        if 100 < sl then
          sl = 100
        end
        for _FORV_3_ = 1, sl do
          dzy = jg[_FORV_3_].address
          gg.addListItems({
            [1] = {
              address = dzy,
              flags = FLOAT,
              freeze = true,
              value = 8
            }
          })
        end
        TS("正在开启穿墙中")
        QL()
        QL()
        NC(CA)
        CZ(Key390(L0_3353.s390), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        CZ(Key391(L0_3353.s391), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        FW(20)
        EA(Key392(L0_3353.s392), FLOAT)
        QL()
        TS("正在开启穿墙中")
        QL()
        NC(XA)
        CZ(Key393(L0_3353.s393), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        CZ(Key394(L0_3353.s394), FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        FW(100)
        EA(Key395(L0_3353.s395), FLOAT)
        TS("实体穿墙开启成功")
      end
    end
    
    function c2()
      F = gg.alert("【先建一块地基然后开启通天路，开启后在建一块地基台阶，然后关闭通天路即可】", "关闭通天路", "开启通天路")
      if F == 1 then
        gg.setRanges(16)
        SearchWrite({
          {999, 0},
          {0.13333334028720856, 52},
          {0.1725490242242813, 56}
        }, {
          {1, 0}
        }, 16)
      elseif F == 2 then
        gg.setRanges(16)
        SearchWrite({
          {1, 0},
          {0.13333334028720856, 52},
          {0.1725490242242813, 56}
        }, {
          {999, 0}
        }, 16)
      end
    end
    
    function c3()
      F = gg.alert("【花花用心打造全网最强最稳】", "变速飞天", "新版飞天")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key396(L0_3353.s396), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key397(L0_3353.s397), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key398(L0_3353.s398), gg.TYPE_FLOAT)
        gg.toast("飞天开启中")
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key399(L0_3353.s399), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key400(L0_3353.s400), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1)
        gg.editAll(Key401(L0_3353.s401), gg.TYPE_FLOAT)
        gg.toast("注入飞天")
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(Key402(L0_3353.s402), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key403(L0_3353.s403), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        gg.searchNumber(Key404(L0_3353.s404), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key405(L0_3353.s405), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
          gg.searchNumber(Key406(L0_3353.s406), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
          gg.searchNumber(Key407(L0_3353.s407), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
          gg.getResults(100)
          gg.editAll(Key408(L0_3353.s408), gg.TYPE_FLOAT)
          gg.toast("100%")
        end
        gg.toast("飞天开启成功")
      end
    end
    
    function c4()
      F = gg.alert("【花花用心打造全网最强最稳】", "地下建家", "浮空建家")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber(Key409(L0_3353.s409), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key410(L0_3353.s410), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll(Key411(L0_3353.s411), gg.TYPE_FLOAT)
        gg.toast("地下建家开启成功")
      elseif F == 2 then
        gg.clearResults()
        gg.searchNumber(Key412(L0_3353.s412), 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key413(L0_3353.s413), 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.toast("浮空建筑开启成功")
        gg.toast("如果没效果多开几次")
        gg.clearResults()
      end
    end
    
    function c5()
      F = gg.alert("【花花用心打造全网最强最稳】", "鬼跳关闭", "鬼跳开启")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(16384)
        SearchWrite({
          {-3.8685732E25, 19100},
          {0.10000000149, 19104},
          {1.00999999046, 19120}
        }, {
          {
            1,
            19104,
            false
          }
        }, gg.TYPE_FLOAT, "三段跳关闭")
        gg.clearResults()
        gg.toast("花花独家鬼跳关闭成功")
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(16384)
        SearchWrite({
          {-3.8685732E25, 19100},
          {1, 19104},
          {1.00999999046, 19120}
        }, {
          {
            0.10000000149,
            19104,
            false
          }
        }, gg.TYPE_FLOAT, "三段跳")
        gg.clearList()
        gg.toast("花花独家鬼跳开启成功")
      end
    end
    
    function c6()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber(Key414(L0_3353.s414), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key415(L0_3353.s415), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll(Key416(L0_3353.s416), gg.TYPE_FLOAT)
      gg.toast("花花锁血开启成功")
      gg.alert("花花反伤开启成功")
    end
    
    function c7()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber(Key417(L0_3353.s417), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key418(L0_3353.s418), gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100000)
      gg.editAll(Key419(L0_3353.s419), gg.TYPE_DWORD)
      gg.toast("无视炮台开启成功")
    end
    
    function c8()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber(Key420(L0_3353.s420), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key421(L0_3353.s421), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll(Key422(L0_3353.s422), gg.TYPE_FLOAT)
      gg.toast("找个不死的地方遁地开路飞")
      gg.alert("硬核物理隐身")
    end
    
    function c9()
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber(Key423(L0_3353.s423), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key424(L0_3353.s424), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll(Key425(L0_3353.s425), gg.TYPE_FLOAT)
      gg.toast("已优化雾霾")
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("0.00999999978<12.92000007629<0.00313080009::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.00999999978<12.92000007629<0.00313080009::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll(Key426(L0_3353.s426), gg.TYPE_FLOAT)
      gg.toast("已优化太阳光照")
    end
    
    function c10()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_SYS)
      gg.searchNumber(Key427(L0_3353.s427), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key428(L0_3353.s428), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll(Key429(L0_3353.s429), gg.TYPE_FLOAT)
      gg.toast("独家极品画质")
      gg.clearResults()
    end
    
    function c11()
      F = gg.alert("【花花用心打造全网最强】", "透视开启", "透视关闭")
      if F == 1 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(16384)
        gg.searchNumber(Key430(L0_3353.s430), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.getResults(100)
        gg.editAll(Key431(L0_3353.s431), 16)
        gg.clearResults()
        gg.toast("全图透视已开启")
      elseif F == 2 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(16384)
        gg.searchNumber(Key432(L0_3353.s432), 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
        gg.getResults(100)
        gg.editAll(Key433(L0_3353.s433), 16)
        gg.clearResults()
        gg.toast("全图透视已关闭")
      end
    end
    
    function c12()
      F = gg.alert("【花花用心打造全网最强】", "遁地开启", "遁地关闭")
      if F == 1 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber(Key434(L0_3353.s434), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(Key435(L0_3353.s435), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll(Key436(L0_3353.s436), gg.TYPE_FLOAT)
        gg.toast("遁地开启成功")
      elseif F == 2 then
        gg.clearList()
        gg.clearResults()
        gg.toast("遁地已关闭")
      end
    end
    
    function d1()
      gg.setRanges(32)
      SearchWrite({
        {600, 116},
        {-1, 120},
        {83, 104}
      }, {
        {
          480,
          116,
          false
        }
      }, gg.REGION_C_BSS, "手枪射速加快")
      gg.clearList()
      SearchWrite({
        {18, 212},
        {15, 224},
        {3, 240}
      }, {
        {
          0.01,
          224,
          false
        }
      }, gg.REGION_C_BSS, "手枪无后")
      gg.clearList()
      SearchWrite({
        {6, 40},
        {300, 52},
        {-0.5, 64}
      }, {
        {
          1000000000,
          52,
          false
        }
      }, gg.REGION_C_BSS, "手枪瞬击")
      gg.clearList()
      gg.toast("手枪全开成功")
    end
    
    function d2()
      gg.setRanges(32)
      SearchWrite({
        {40, 3908},
        {7, 3920},
        {15, 3932}
      }, {
        {
          0.00999999978,
          3920,
          true
        }
      }, gg.REGION_C_BSS, "乌兹无后")
      gg.clearList()
      SearchWrite({
        {-0.20000000298, 0},
        {1, -8},
        {360, -12}
      }, {
        {
          1.0E19,
          -12,
          false
        }
      }, gg.REGION_C_BSS, "乌兹瞬击")
      gg.clearList()
      SearchWrite({
        {290, 132},
        {100, 136},
        {80, 144}
      }, {
        {
          60,
          144,
          false
        }
      }, gg.REGION_C_BSS, "乌兹射速加快")
      gg.clearList()
      gg.setRanges(4)
      SearchWrite({
        {2.76666688919, 88},
        {1.2107219E-42, 80}
      }, {
        {
          0.00999999978,
          88,
          true
        }
      }, gg.REGION_C_BSS, "乌兹射速加快")
      gg.clearList()
      gg.toast("UZI开启成功")
    end
    
    function d3()
      qmnb = {
        {memory = 32},
        {name = "SMG无后"},
        {
          value = tonumber(Key437(L0_3353.s437)),
          type = 16
        },
        {
          lv = tonumber(Key438(L0_3353.s438)),
          offset = 4,
          type = 16
        },
        {
          lv = tonumber(Key439(L0_3353.s439)),
          offset = 12,
          type = 16
        },
        {
          lv = tonumber(Key440(L0_3353.s440)),
          offset = 16,
          type = 16
        },
        {
          lv = tonumber(Key441(L0_3353.s441)),
          offset = 20,
          type = 16
        }
      }
      qmxg = {
        {
          value = tonumber(Key442(L0_3353.s442)),
          offset = 12,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 32},
        {name = "SMG瞬击"},
        {
          value = tonumber(Key443(L0_3353.s443)),
          type = 16
        },
        {
          lv = tonumber(Key444(L0_3353.s444)),
          offset = 4,
          type = 16
        },
        {
          lv = tonumber(Key445(L0_3353.s445)),
          offset = 8,
          type = 16
        },
        {
          lv = tonumber(Key446(L0_3353.s446)),
          offset = 20,
          type = 16
        },
        {
          lv = tonumber(Key447(L0_3353.s447)),
          offset = 60,
          type = 16
        },
        {
          lv = tonumber(Key448(L0_3353.s448)),
          offset = 64,
          type = 16
        },
        {
          lv = tonumber(Key449(L0_3353.s449)),
          offset = 68,
          type = 16
        },
        {
          lv = tonumber(Key450(L0_3353.s450)),
          offset = 72,
          type = 16
        }
      }
      qmxg = {
        {
          value = tonumber(Key451(L0_3353.s451)),
          offset = 20,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 4},
        {
          name = "SMG秒换弹50%"
        },
        {
          value = tonumber(Key452(L0_3353.s452)),
          type = 16
        },
        {
          lv = tonumber(Key453(L0_3353.s453)),
          offset = 4,
          type = 16
        },
        {
          lv = tonumber(Key454(L0_3353.s454)),
          offset = 24,
          type = 16
        },
        {
          lv = tonumber(Key455(L0_3353.s455)),
          offset = 136,
          type = 16
        },
        {
          lv = tonumber(Key456(L0_3353.s456)),
          offset = 156,
          type = 16
        },
        {
          lv = tonumber(Key457(L0_3353.s457)),
          offset = 160,
          type = 16
        },
        {
          lv = tonumber(Key458(L0_3353.s458)),
          offset = 164,
          type = 16
        },
        {
          lv = tonumber(Key459(L0_3353.s459)),
          offset = 212,
          type = 16
        }
      }
      qmxg = {
        {
          value = tonumber(Key460(L0_3353.s460)),
          offset = 164,
          type = 16
        }
      }
      xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber(Key461(L0_3353.s461), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key462(L0_3353.s462), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999999)
      gg.editAll(Key463(L0_3353.s463), gg.TYPE_FLOAT)
      gg.toast("SMG秒换弹开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber(Key464(L0_3353.s464), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key465(L0_3353.s465), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll(Key466(L0_3353.s466), gg.TYPE_FLOAT)
      gg.setRanges(32)
      SearchWrite({
        {40, 3908},
        {7, 3920},
        {15, 3932}
      }, {
        {
          0.00999999978,
          3920,
          true
        }
      }, gg.REGION_C_BSS, "乌兹无后")
      gg.clearList()
      SearchWrite({
        {-0.20000000298, 0},
        {1, -8},
        {360, -12}
      }, {
        {
          1.0E19,
          -12,
          false
        }
      }, gg.REGION_C_BSS, "乌兹瞬击")
      gg.clearList()
      SearchWrite({
        {290, 132},
        {100, 136},
        {80, 144}
      }, {
        {
          60,
          144,
          false
        }
      }, gg.REGION_C_BSS, "乌兹射速加快")
      gg.clearList()
      gg.setRanges(4)
      SearchWrite({
        {2.76666688919, 88},
        {1.2107219E-42, 80}
      }, {
        {
          0.00999999978,
          88,
          true
        }
      }, gg.REGION_C_BSS, "乌兹射速加快")
      gg.clearList()
      gg.toast("UZI开启成功")
    end
    
    function d4()
      gg.setRanges(32)
      SearchWrite({
        {40, 3908},
        {7, 3920},
        {15, 3932}
      }, {
        {
          0.00999999978,
          3920,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(32)
      SearchWrite({
        {-0.20000000298, 0},
        {1, -8},
        {360, -12}
      }, {
        {
          1.0E19,
          -12,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {2.76666688919, 88},
        {1.2107219E-42, 80}
      }, {
        {
          0.00999999978,
          88,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.toast("改装开启成功")
    end
    
    function d5()
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {2.16666674614, 152},
        {1.2107219E-42, 144}
      }, {
        {
          0.00999999978,
          152,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {10, 64},
        {0.10000000149, 20},
        {5, 80}
      }, {
        {
          0.00999999978,
          64,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.setRanges(32)
      SearchWrite({
        {-0.60000002384, 32},
        {480, 20},
        {80, 4}
      }, {
        {
          1000000,
          20,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.toast("半自动开启成功")
    end
    
    function d6()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {30, 212},
        {10, 224},
        {13, 236}
      }, {
        {
          0.00999999978,
          224,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {2.16666674614, 152},
        {1.2107219E-42, 144}
      }, {
        {
          0.00999999978,
          152,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      SearchWrite({
        {2.66666674614, 24},
        {1.2107219E-42, 16}
      }, {
        {
          0.00999999978,
          24,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.toast("AKM开启成功")
    end
    
    function d7()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {0.10000000149, 36},
        {6, 80},
        {4, 96}
      }, {
        {
          0.00999999978,
          80,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {0.375, 0},
        {540, -20},
        {-0.5, -8}
      }, {
        {
          1000000000,
          -20,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.setRanges(4)
      SearchWrite({
        {2.90000009537, 152},
        {1.2107219E-42, 144}
      }, {
        {
          0.00999999978,
          152,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      SearchWrite({
        {2.03333353996, 216},
        {1.2107219E-42, 208}
      }, {
        {
          0.00999999978,
          216,
          false
        }
      }, gg.TYPE_FLOAT)
      gg.clearList()
      gg.clearResults()
      gg.toast("QBZ开启成功")
    end
    
    function d8()
      gg.setRanges(32)
      SearchWrite({
        {0.10000000149, 36},
        {6, 80},
        {4, 96}
      }, {
        {
          0.00999999978,
          80,
          false
        }
      }, gg.REGION_C_BSS, "M4无后")
      gg.clearList()
      SearchWrite({
        {0.375, 0},
        {540, -20},
        {-0.5, -8}
      }, {
        {
          1000000000,
          -20,
          false
        }
      }, gg.REGION_C_BSS, "M4瞬击")
      gg.clearList()
      gg.setRanges(4)
      SearchWrite({
        {2.16666674614, 152},
        {1.2107219E-42, 144}
      }, {
        {
          0.00999999978,
          152,
          true
        }
      }, gg.REGION_C_BSS, "M4秒换弹%50")
      gg.clearList()
      SearchWrite({
        {2.66666674614, 24},
        {1.2107219E-42, 16}
      }, {
        {
          0.00999999978,
          24,
          false
        }
      }, gg.REGION_C_BSS, "M4秒换弹%100")
      gg.clearList()
      gg.toast("M4开启成功")
    end
    
    function d9()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber(Key467(L0_3353.s467), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(Key468(L0_3353.s468), gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll(Key469(L0_3353.s469), gg.TYPE_FLOAT)
      gg.toast("秒换开启成功")
    end
    
    function d10()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {
          Key470(L0_3353.s470),
          2894449036
        }
      }, {
        {
          Key471(L0_3353.s471),
          2894448988
        }
      }, gg.TYPE_FLOAT, "火箭筒瞬爆")
    end
    
    function Exit()
      print("花花内部QQ群")
      os.exit()
    end
    
    function HOME()
      lw = 1
      yiyz_Main()
    end
    
    while true do
      if gg.isVisible(true) then
        XGCK = 1
        gg.setVisible(false)
      end
      gg.clearList()
      gg.clearResults()
      if XGCK == 1 then
        yiyz_Main()
      end
    end
  
