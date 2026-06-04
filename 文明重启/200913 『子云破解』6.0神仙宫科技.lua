
    gg.alert[[san遗产包括：
诸位大佬稀有物品
San毕生所学
Sam的指令教学
一些市面没泛滥的东西
有意的联系QQ：3172742993]]
    function xqmnb(A0_47)
      gg.clearResults()
      gg.setRanges(A0_47[1].memory)
      gg.searchNumber(A0_47[3].value, A0_47[3].type)
      if gg.getResultCount() == 0 then
        gg.toast(A0_47[2].name .. "开启失败")
      else
        gg.refineNumber(A0_47[3].value, A0_47[3].type)
        gg.refineNumber(A0_47[3].value, A0_47[3].type)
        gg.refineNumber(A0_47[3].value, A0_47[3].type)
        if gg.getResultCount() == 0 then
          gg.toast(A0_47[2].name .. "开启失败")
        else
          sl = gg.getResults(999999)
          sz = gg.getResultCount()
          xgsl = 0
          if 999999 < sz then
            sz = 999999
          end
          for _FORV_4_ = 1, sz do
            pdsz = true
            for _FORV_8_ = 4, #A0_47 do
              if pdsz == true then
                pysz = {}
                pysz[1] = {}
                pysz[1].address = sl[_FORV_4_].address + A0_47[_FORV_8_].offset
                pysz[1].flags = A0_47[_FORV_8_].type
                szpy = gg.getValues(pysz)
                pdpd = A0_47[_FORV_8_].lv .. ";" .. szpy[1].value
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
            gg.toast(A0_47[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
          else
            gg.toast(A0_47[2].name .. "开启失败")
          end
        end
      end
    end
    
    function SearchWrite(A0_48, A1_49, A2_50)
      local L3_51, L4_52, L5_53, L6_54, L7_55, L8_56, L9_57, L10_58, L11_59, L12_60, L13_61, L14_62, L15_63, L16_64, L17_65, L18_66, L19_67, L20_68, L21_69
    end
    
    function yiyz_yiyz_Main()
      menu = gg.choice({
        "☆☆❤常用专区☆",
        "☆☆❤枪械专区☆",
        "☆☆❤死锁专区☆",
        "☆☆❤上色专区☆",
        "☆☆❤娱乐专区☆",
        "☆☆❤拆家专区☆",
        "☆☆❤路飞专区☆",
        "☆☆❤超稳专区☆",
        "☆☆❤循环专区☆",
        "☆☆❤测试功能请勿使用☆",
        "☆退出脚本☆"
      }, nil, "☆❤神仙宫科技群垃圾东西一被破解，直接踢人那种☆子云破解❤")
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
        E()
      end
      if menu == 6 then
        F()
      end
      if menu == 7 then
        G()
      end
      if menu == 8 then
        H()
      end
      if menu == 9 then
        I()
      end
      if menu == 10 then
        J()
      end
      if menu == 11 then
        Exit()
      end
      XGCK = -1
    end
    
    function A()
      menu1 = gg.multiChoice({
        "天线开启",
        "天线关闭",
        "人物透视",
        "刷新天线",
        "神仙宫防封",
        "趴下加速（开启）",
        "趴下加速（关闭）",
        "人物遁地（测试）",
        "人物高亮（测试）",
        "一键白天（测试）",
        "一键黑天（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
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
          HOME()
        end
      end
      GLWW = -1
    end
    
    function B()
      menu1 = gg.multiChoice({
        "全枪无后",
        "SMG秒换",
        "UZI秒换",
        "改装秒换",
        "半自动秒换",
        "AK秒换",
        "QBZ秒换",
        "M4秒换",
        "狙击全开（测试）",
        "全枪三倍速（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
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
          b5()
        end
        if menu1[6] == true then
          b6()
        end
        if menu1[7] == true then
          b7()
        end
        if menu1[8] == true then
          b8()
        end
        if menu1[9] == true then
          b9()
        end
        if menu1[10] == true then
          b10()
        end
        if menu1[11] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function C()
      menu1 = gg.multiChoice({
        "增强跳跃（开启）",
        "增强跳跃（关闭）",
        "死锁注入（测试）",
        "全屏自瞄（测试）",
        "☆❤独家枪秒开镜（测试）",
        "☆❤小子弹追踪开启（测试）",
        "☆❤小子弹追踪关闭（测试）",
        "☆❤260米全屏自瞄（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤ ")
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
          HOME()
        end
      end
      GLWW = -1
    end
    
    function D()
      menu1 = gg.multiChoice({
        "地皮白光（测试）",
        "树皮白光（测试）",
        "炫酷黑（测试）",
        "除草开启（测试）",
        "水上行走（测试）",
        "骁龙探敌（测试）",
        "☆❤全网独家新版小巨人（测试）",
        "动物放大（测试）",
        "地下建家(测试)",
        "浮空建筑(测试)",
        "水下行走开启（测试）",
        "水下行走关闭（测试）",
        "人物黑色(联发科测试)",
        "人物白色(联发科测试)",
        "地皮变黑（测试）",
        "麒麟上色（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
      if menu1 == nil then
      else
        if menu1[1] == true then
          d1()
        end
        if menu1[2] == true then
          d2()
        end
        if menu1[3] == true then
          d3()
        end
        if menu1[4] == true then
          d4()
        end
        if menu1[5] == true then
          d5()
        end
        if menu1[6] == true then
          d6()
        end
        if menu1[7] == true then
          d7()
        end
        if menu1[8] == true then
          d8()
        end
        if menu1[9] == true then
          d9()
        end
        if menu1[10] == true then
          d10()
        end
        if menu1[11] == true then
          d11()
        end
        if menu1[12] == true then
          d12()
        end
        if menu1[13] == true then
          d13()
        end
        if menu1[14] == true then
          d14()
        end
        if menu1[15] == true then
          d15()
        end
        if menu1[16] == true then
          d16()
        end
        if menu1[17] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function E()
      menu1 = gg.multiChoice({
        "加速挖矿(测试)",
        "假滑翔翼（稳定）",
        "房屋天线[开启]（测试）",
        "房屋天线[关闭]（测试）",
        "全图透视[开启]（测试）",
        "全图透视[关闭]（测试）",
        "☆❤三段跳[开启]（测试）",
        "☆❤三段跳[关闭]（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
      if menu1 == nil then
      else
        if menu1[1] == true then
          e1()
        end
        if menu1[2] == true then
          e2()
        end
        if menu1[3] == true then
          e3()
        end
        if menu1[4] == true then
          e4()
        end
        if menu1[5] == true then
          e5()
        end
        if menu1[6] == true then
          e6()
        end
        if menu1[7] == true then
          e7()
        end
        if menu1[8] == true then
          e8()
        end
        if menu1[9] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function F()
      menu1 = gg.multiChoice({
        "隔墙吸弹[开启]（测试）",
        "落下防摔（测试）",
        "隔墙吸子弹[关闭]（测试）",
        "子弹穿石墙(测试)",
        "变数穿墙（测试）",
        "视角变小（测试）",
        "昼夜交换（测试）",
        "大范围(测试)",
        "遁地第一步（测试）",
        "遁地第二步（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
      if menu1 == nil then
      else
        if menu1[1] == true then
          f1()
        end
        if menu1[2] == true then
          f2()
        end
        if menu1[3] == true then
          f3()
        end
        if menu1[4] == true then
          f4()
        end
        if menu1[5] == true then
          f5()
        end
        if menu1[6] == true then
          f6()
        end
        if menu1[7] == true then
          f7()
        end
        if menu1[8] == true then
          f8()
        end
        if menu1[9] == true then
          f9()
        end
        if menu1[10] == true then
          f10()
        end
        if menu1[11] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function G()
      menu1 = gg.multiChoice({
        "男角色冲锋开镜路飞（测试）",
        "男角色步狙开镜路飞（测试）",
        "女角色冲锋开镜路飞（测试）",
        "女角色步狙开镜路飞（测试）",
        "人体站立路飞（测试）",
        "基瞄路飞（稳定）",
        "带镜路飞（稳定）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
      if menu1 == nil then
      else
        if menu1[1] == true then
          g1()
        end
        if menu1[2] == true then
          g2()
        end
        if menu1[3] == true then
          g3()
        end
        if menu1[4] == true then
          g4()
        end
        if menu1[5] == true then
          g5()
        end
        if menu1[6] == true then
          g6()
        end
        if menu1[7] == true then
          g7()
        end
        if menu1[8] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function H()
      menu1 = gg.multiChoice({
        "☆❤独家自瞄（测试）",
        "通天路（测试）",
        "通天关（测试）",
        "☆❤新版瞄八倍镜开（测试）",
        "☆❤新版瞄八倍镜关（测试）",
        "☆❤新版RPG瞬爆（测试）",
        "☆❤新版天空漂移（测试）",
        "☆❤仿xs内存自瞄（测试）",
        "☆❤新版实体穿天花板（测试）",
        "☆❤独家画质提高（测试）",
        "☆❤独家断网穿墙（测试）",
        "☆❤独家半遁天花板（测试）",
        "☆❤独家自瞄(测试版)",
        "☆❤独家瞬击一套（测试）",
        "☆❤独家人物无拉回加速(需要手动变数测试)",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
      if menu1 == nil then
      else
        if menu1[1] == true then
          h1()
        end
        if menu1[2] == true then
          h2()
        end
        if menu1[3] == true then
          h3()
        end
        if menu1[4] == true then
          h4()
        end
        if menu1[5] == true then
          h5()
        end
        if menu1[6] == true then
          h6()
        end
        if menu1[7] == true then
          h7()
        end
        if menu1[8] == true then
          h8()
        end
        if menu1[9] == true then
          h9()
        end
        if menu1[10] == true then
          h10()
        end
        if menu1[11] == true then
          h11()
        end
        if menu1[12] == true then
          h12()
        end
        if menu1[13] == true then
          h13()
        end
        if menu1[14] == true then
          h14()
        end
        if menu1[15] == true then
          h15()
        end
        if menu1[16] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function I()
      menu1 = gg.multiChoice({
        "☆❤循环天线（稳定）",
        "☆❤循环中程范围(测试)",
        "☆❤循环脚部范围(测试)",
        "☆❤循环小范围（测试）",
        "☆❤循环范围刀（测试）",
        "返回上一页"
      }, nil, "☆❤神仙宫科技☆❤")
      if menu1 == nil then
      else
        if menu1[1] == true then
          i1()
        end
        if menu1[2] == true then
          i2()
        end
        if menu1[3] == true then
          i3()
        end
        if menu1[4] == true then
          i4()
        end
        if menu1[5] == true then
          i5()
        end
        if menu1[6] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function J()
      gg.jiaqun("a9XB53sl6EYmws69eCaRZE96_Pog6kMF")
    end
    
    function a1()
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
      gg.clearResults()
      gg.toast("天线开两次效果更好")
    end
    
    function a2()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("-9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.16947640479", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.16947640479", gg.TYPE_FLOAT)
      gg.toast("☆❤天线关闭")
      gg.clearResults()
      gg.clearList()
    end
    
    function a3()
      gg.clearResults()
      gg.setRanges(131072)
      gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0", gg.REGION_C_BSS)
      gg.toast("☆❤透视开启完毕")
      gg.clearResults()
    end
    
    function a4()
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
      }, gg.REGION_C_BSS, "  蓝色天线开启中  ")
      gg.clearList()
      gg.toast("  请晚上开启  ")
      gg.setRanges(4)
      gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("-9999", gg.REGION_C_BSS)
      gg.clearResults()
      gg.toast("  刷新天线  ")
      gg.setRanges(131072)
      gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0", gg.REGION_C_BSS)
      gg.clearResults()
      gg.toast("  蓝色天线开启成功  ")
    end
    
    function a5()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.clearResults()
      gg.searchNumber("0.9123", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("防封注入25%")
      gg.searchNumber("0.9123", gg.TYPE_DPUBLE, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("防封注入50%")
      gg.getResults(100)
      gg.editAll("0.722", gg.TYPE_DOUBLE)
      gg.toast("防封注入65%")
      gg.clearResults()
      gg.searchNumber("46", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("防封注入70%")
      gg.searchNumber("46", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("防封注入85%")
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_DWORD)
      gg.toast("防封注入100%")
      gg.clearResults()
      gg.toast("防封注入成功")
    end
    
    function a6()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-7.4975935e19;-1.0239434e32;-2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-11", gg.TYPE_FLOAT)
      gg.toast("趴下加速开启成功")
    end
    
    function a7()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-7.4975935e19;-1.0239434e32;-11:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-2", gg.TYPE_FLOAT)
      gg.toast("趴下加速关闭")
    end
    
    function a8()
      gg.alert("请配合夜视使用")
      gg.setRanges(4)
      gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("-9999", gg.REGION_C_BSS)
      gg.clearResults()
      gg.toast("刷新天线")
      gg.setRanges(131072)
      gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0", gg.REGION_C_BSS)
      gg.clearResults()
      gg.toast("开启成功")
    end
    
    function a9()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.04044999927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.04044999927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("人物高光50%")
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.0549999997F;-2.78598679e28F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.0549999997", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999999)
      gg.editAll("1.3", gg.TYPE_FLOAT)
      gg.toast("☆❤人物高光100%")
    end
    
    function a10()
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
      }, gg.REGION_C_BSS, "夜视开启中")
      gg.clearList()
      gg.toast("☆❤独家夜视仪 - 开启成功")
    end
    
    function a11()
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
      }, gg.REGION_C_BSS, "关闭夜视")
      gg.clearList()
      gg.toast("夜视仪关闭")
    end
    
    function b1()
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("4;1;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("全枪无后座开启成功")
    end
    
    function b2()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("4,525,216,907,494,477,005Q;4,575,657,222,462,033,101Q;4,539,628,425,454,813,184Q;4,539,628,425,446,424,576Q;4,546,834,186,568,204,288Q;4,768,186,106,537,154,970Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0", gg.TYPE_QWORD)
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("864D;2::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.1", gg.TYPE_FLOAT)
      gg.toast("  ️SMG开启成功️  ")
    end
    
    function b3()
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
    end
    
    function b4()
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
    
    function b5()
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
    
    function b6()
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
    
    function b7()
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
    
    function b8()
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
    
    function b9()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.2107219e-42;3.1333334446;5.49309e-43::57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("3.1333334446", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.1", gg.TYPE_FLOAT)
      gg.toast("秒换开启成功")
    end
    
    function b10()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99999)
      gg.editAll("99999", gg.TYPE_FLOAT)
      gg.toast("开启成功")
      gg.clearResults()
    end
    
    function c1()
      gg.setRanges(4)
      SearchWrite({
        {1.04000091553, 0},
        {1, -8},
        {0.15000000596, 8}
      }, {
        {
          0.2,
          0,
          true
        }
      }, gg.TYPE_FLOAT, "增高距离")
      SearchWrite({
        {1.03999900818, 0},
        {1, -8},
        {0.15000000596, 8}
      }, {
        {
          0.2,
          0,
          true
        }
      }, gg.TYPE_FLOAT, "增强跳跃")
      gg.toast("开启成功")
    end
    
    function c2()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("增强跳跃关闭")
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
      }, gg.TYPE_FLOAT, "☆关闭")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("", gg.TYPE_FLOAT)
      gg.toast("☆增强关闭")
    end
    
    function c3()
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
      }, gg.TYPE_FLOAT, "锁死注入")
      gg.clearList()
    end
    
    function c4()
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
      }, gg.TYPE_FLOAT, "增强自瞄开启中")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(16384)
      SearchWrite({
        {
          "0.00048828148",
          3192202712
        },
        {
          "-128.00001525879",
          3192205124
        },
        {
          "128.37501525879",
          3192205132
        }
      }, {
        {
          "0",
          3192205352,
          true
        }
      }, gg.TYPE_FLOAT, "注入死锁")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(16384)
      SearchWrite({
        {
          "0.00048828148",
          3192202712
        },
        {
          "-128.00001525879",
          3192205124
        },
        {
          "128.37501525879",
          3192205132
        }
      }, {
        {
          "10",
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
      gg.toast("全屏死锁开启成功")
    end
    
    function c5()
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
          "9",
          3483543696,
          true
        }
      }, gg.TYPE_FLOAT, "温馨提示:秒开镜")
    end
    
    function c6()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("60F;0.02999999933F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1", gg.TYPE_FLOAT)
      gg.toast("☆❤独家追踪已开启")
      gg.clearResults()
    end
    
    function c7()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("60F;0.02999999933F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1", gg.TYPE_FLOAT)
      gg.toast("追踪已关闭")
      gg.clearResults()
    end
    
    function c8()
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
      }, gg.TYPE_FLOAT, "自瞄")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(16384)
      SearchWrite({
        {
          "0.00048828148",
          3192202712
        },
        {
          "-128.00001525879",
          3192205124
        },
        {
          "128.37501525879",
          3192205132
        }
      }, {
        {
          "0",
          3192205352,
          true
        }
      }, gg.TYPE_FLOAT, "自瞄")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(16384)
      SearchWrite({
        {
          "0.00048828148",
          3192202712
        },
        {
          "-128.00001525879",
          3192205124
        },
        {
          "128.37501525879",
          3192205132
        }
      }, {
        {
          "10",
          3192205712,
          true
        }
      }, gg.TYPE_FLOAT, "自瞄")
      gg.clearList()
    end
    
    function d1()
      gg.clearResults()
      gg.setRanges(bit32.bxor(gg.REGION_BAD, gg.REGION_VIDEO))
      gg.searchNumber("2.1523944e-41;1.6263036e-19;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("99", gg.TYPE_FLOAT)
      gg.toast("开启成功")
      gg.clearResults()
    end
    
    function d2()
      gg.clearResults()
      gg.setRanges(bit32.bxor(gg.REGION_BAD, gg.REGION_VIDEO))
      gg.searchNumber("1.880791e-37;7.0064923e-45;1.118084e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("99", gg.TYPE_FLOAT)
      gg.toast("开启成功")
      gg.clearResults()
    end
    
    function d3()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("2;-1;1;0.00001;1.0e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-999", gg.TYPE_FLOAT)
      gg.toast("50%")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("2.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-1", gg.TYPE_FLOAT)
      gg.toast("人物黑100%")
    end
    
    function d4()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("3.7314056e-40", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(3)
      gg.editAll("0", 16)
      gg.toast("☆❤除草已开启")
    end
    
    function d5()
      gg.toast("请将冻结间隔设置为0")
      gg.setRanges(4)
      SearchWrite({
        {-1.0E32, 0},
        {1.03999996185, -24},
        {0, 4}
      }, {
        {
          0.345,
          -8,
          true
        }
      }, gg.TYPE_FLOAT, "☆❤水上行走第一步")
      SearchWrite({
        {-1.0E32, 0},
        {1.04000091553, -24},
        {0, 4}
      }, {
        {
          0.345,
          -8,
          true
        }
      }, gg.TYPE_FLOAT, "☆❤水上行走第二步")
      gg.toast("☆❤水上行走开启成功")
    end
    
    function d6()
      qmnb = {
        {memory = 4},
        {
          name = "人物天线"
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
      qmnb = {
        {memory = 1048576},
        {
          name = "人物透视"
        },
        {value = 4.9621764E21, type = 16},
        {
          lv = 2.8133309E-40,
          offset = 100,
          type = 16
        },
        {
          lv = -7.3468453E-39,
          offset = 200,
          type = 16
        }
      }
      qmxg = {
        {
          value = 0,
          offset = 0,
          type = 16
        },
        {
          value = 0,
          offset = 100,
          type = 16
        },
        {
          value = 0,
          offset = 200,
          type = 16
        }
      }
      xqmnb(qmnb)
      qmnb = {
        {memory = 1048576},
        {
          name = "人物彩色"
        },
        {value = 0.30004882812, type = 16},
        {
          lv = 0.58984375,
          offset = 4,
          type = 16
        },
        {
          lv = 0.10998535156,
          offset = 8,
          type = 16
        },
        {
          lv = 1,
          offset = 12,
          type = 16
        },
        {
          lv = 0,
          offset = 16,
          type = 16
        },
        {
          lv = 2,
          offset = 20,
          type = 16
        }
      }
      qmxg = {
        {
          value = 999,
          offset = 0,
          type = 16
        },
        {
          value = 999,
          offset = 4,
          type = 16
        },
        {
          value = 999,
          offset = 8,
          type = 16
        },
        {
          value = 999,
          offset = 12,
          type = 16
        },
        {
          value = 999,
          offset = 16,
          type = 16
        },
        {
          value = 999,
          offset = 20,
          type = 16
        }
      }
      xqmnb(qmnb)
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
      }, gg.TYPE_FLOAT)
      gg.setRanges(1048576)
      gg.searchNumber("3.4897587e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.searchNumber("1,669,499,405", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0", gg.TYPE_DWORD)
      gg.clearResults()
    end
    
    function d7()
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("7", gg.TYPE_FLOAT)
      gg.toast("50%")
      gg.setRanges(32)
      gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("7", gg.TYPE_FLOAT)
      gg.toast("100%")
      gg.alert("☆❤小巨人开启成功")
    end
    
    function d8()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-​2.0;2.0;2.0;-2.9687729e21;0.00195311802", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("8", gg.TYPE_FLOAT)
      gg.toast("动物变大开启成功")
    end
    
    function d9()
      xx()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(800)
      gg.editAll("1.96", gg.TYPE_FLOAT)
      gg.toast("地下建家")
    end
    
    function d10()
      gg.clearResults()
      gg.searchNumber("1,073,741,824D;1,120,403,456D;3.6734198e-40", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("3.6734198e-40", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.toast("浮空建筑开启成功")
      gg.toast("没效果多开")
      gg.clearResults()
    end
    
    function d11()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-999", gg.TYPE_FLOAT)
      gg.toast("水下行走已开启")
      gg.clearResults()
    end
    
    function d12()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;-999F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("150", gg.TYPE_FLOAT)
      gg.toast("水下行走已关闭")
      gg.clearResults()
    end
    
    function d13()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("4.1230549e-29;2.3658034e21;1.8509651e-12;2;5.6051939e-45;1.0863238e-19;8.2652087e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("50", gg.TYPE_FLOAT)
      gg.toast("开启成功")
    end
    
    function d14()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("4.1230549e-29;2.3658034e21;1.8509651e-12;2;5.6051939e-45;1.0863238e-19;8.2652087e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500", gg.TYPE_FLOAT)
      gg.toast("开启成功")
    end
    
    function d15()
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("5.99357008e-10F;3.62951755524F;1.62630365e-19F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-999", gg.TYPE_FLOAT)
      gg.toast("地皮变黑")
    end
    
    function d16()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("2;-1;1;0.00001;1.0e-7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-999", gg.TYPE_FLOAT)
      gg.toast("开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1000)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("麒麟上色")
      gg.clearResults()
      gg.clearList()
    end
    
    function e1()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(3)
      gg.editAll("0.1492135418", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("3.3157794", gg.TYPE_FLOAT)
      gg.toast("加速挖矿开启")
    end
    
    function e2()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("滑翔翼开启中")
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("1", gg.TYPE_FLOAT)
      gg.toast("滑翔翼开启中")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if sl > 10 then
        sl = 10
      end
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 0.5
          }
        })
      end
      gg.toast("滑翔翼开启成功")
    end
    
    function e3()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822639525;4.0;0.74931889772;0.36428490281:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("木墙天线开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822684228;4.0;-0.14822591841;4.0:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("石墙天线开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("铁墙天线开启成功")
    end
    
    function e4()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822639525;4.0;0.74931889772;0.36428490281:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4", gg.TYPE_FLOAT)
      gg.toast("木墙天线关闭成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822684228;4.0;-0.14822591841;4.0:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4", gg.TYPE_FLOAT)
      gg.toast("石头天线开启关闭")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4", gg.TYPE_FLOAT)
      gg.toast("铁墙天线关闭成功")
    end
    
    function e5()
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("10.123", gg.REGION_C_BSS)
      gg.toast("☆❤透视开启完毕")
      gg.clearResults()
    end
    
    function e6()
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0.81399995089", gg.REGION_C_BSS)
      gg.toast("☆❤透视关闭")
      gg.clearResults()
    end
    
    function e7()
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
      gg.toast("☆❤高跳开启成功")
    end
    
    function e8()
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
      gg.toast("☆❤三段跳打开")
    end
    
    function e9()
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
      gg.toast("☆❤三段跳关闭")
    end
    
    function f1()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
      gg.toast("隔墙吸子弹50%")
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("隔墙吸子弹100%")
    end
    
    function f2()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("防摔已开启")
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
      }, gg.TYPE_FLOAT, "☆❤防摔")
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("", gg.TYPE_FLOAT)
      gg.toast("☆❤防摔")
    end
    
    function f3()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1.0e32", gg.TYPE_FLOAT)
      gg.toast("隔墙吸子弹已关闭")
      gg.clearResults()
    end
    
    function f4()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("16,261W;25W;161W;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.getResultsCount()
      gg.toast("子弹穿墙")
    end
    
    function f5()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
      gg.toast("变数穿墙50%")
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("变数穿墙开启成功")
    end
    
    function f6()
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber("5.99357008e-10F;3.62951755524F;1.62630365e-19F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("-999", gg.TYPE_FLOAT)
      gg.toast("地皮变黑")
    end
    
    function f7()
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.toast("蚁人视角已开启")
    end
    
    function f8()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.21072187e-42;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.toast("  开启成功  ")
      gg.clearResults()
    end
    
    function f9()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.09000000100~0.09000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.09000000100~0.09000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1.5", gg.TYPE_FLOAT)
      gg.setVisible(false)
      gg.toast("范围开启成功")
      d3()
    end
    
    function f10()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("修改数值", gg.TYPE_FLOAT)
      gg.toast("开启成功")
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("16,261W;25W;161W  ;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("2.222222", gg.TYPE_FLOAT)
      gg.toast("遁地第一步开启成功")
    end
    
    function f11()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("16,261W;25W;161W;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2.222222", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItemsX({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 1.1
          }
        })
      end
      gg.toast("无伤遁地开启成功")
    end
    
    function g1()
      gg.setRanges(gg.REGION_C_ALLOC)
      SearchWrite({
        {
          "0.7646817565",
          40032
        },
        {
          "0.01543602347",
          40020
        },
        {
          "0.00419999985",
          39924
        },
        {
          "0.0423987098",
          39892
        },
        {
          "0.20759369433",
          39888
        }
      }, {
        {
          "-1.8",
          40160,
          true
        }
      }, gg.TYPE_FLOAT, "温馨提示:冲锋")
      gg.toast("开启成功")
    end
    
    function g2()
      gg.setRanges(gg.REGION_C_ALLOC)
      SearchWrite({
        {
          "0.7646817565",
          17824
        },
        {
          "0.01543602347",
          17812
        },
        {
          "0.00419999985",
          17716
        },
        {
          "0.93055015802",
          17692
        },
        {
          "0.02710000053",
          17668
        }
      }, {
        {
          "-1.8",
          17952,
          true
        }
      }, gg.TYPE_FLOAT, "温馨提示:步狙")
      gg.toast("开启成功")
    end
    
    function g3()
      gg.clearResults(gg.REGION_C_ALLOC)
      SearchWrite({
        {
          "0.7646933198",
          672
        },
        {
          "0.01543602347",
          660
        },
        {
          "0.00419999985",
          564
        },
        {
          "0.93497157097",
          540
        },
        {
          "0.0423987098",
          532
        }
      }, {
        {
          "-1.8",
          800,
          true
        }
      }, gg.TYPE_FLOAT, "温馨提示:手冲")
      gg.toast("开启成功")
    end
    
    function g4()
      gg.clearResults(gg.REGION_C_ALLOC)
      SearchWrite({
        {
          "0.7646933198",
          10784
        },
        {
          "0.01543602347",
          10772
        },
        {
          "0.00419999985",
          10676
        },
        {
          "0.93055015802",
          10652
        },
        {
          "0.22708784044",
          10640
        }
      }, {
        {
          "-1.8",
          10912,
          true
        }
      }, gg.TYPE_FLOAT, "温馨提示:步狙")
      gg.toast("开启成功")
    end
    
    function g5()
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("1.85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
            value = 6
          }
        })
      end
      gg.toast("☆❤路飞开启成功")
      gg.clearResults()
    end
    
    function g6()
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
        {"1.8", 3483543708}
      }, gg.TYPE_FLOAT, "温馨提示:机瞄路飞")
    end
    
    function g7()
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
        {"-1.8", 3482826900}
      }, gg.TYPE_FLOAT, "温馨提示:带镜路飞")
    end
    
    function h1()
      gg.setRanges(16384)
      gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.00010002004", gg.TYPE_FLOAT)
      gg.toast("自瞄注入中")
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
      }, gg.TYPE_FLOAT, "自瞄循环开启中")
      gg.clearList()
      gg.setRanges(32)
      gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("0.11078428477", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.11000000000~0.11000090000", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.11000000000~0.11000090000", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.188", 16)
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.06000000000~0.06000090000", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.06000000000~0.06000090000", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.188", 16)
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.05000000000~0.05000090000", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.05000000000~0.05000090000", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.188", 16)
      gg.toast("自瞄开启成功")
    end
    
    function h2()
      local L0_70, L1_71
    end
    
    function h3()
      local L0_72, L1_73
    end
    
    function h4()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {"400", 3000264620},
        {"-360", 3000264676},
        {"360", 3000264680},
        {"80", 3000264672},
        {"-70", 3000264668}
      }, {
        {
          8,
          3000264692,
          true
        }
      }, gg.TYPE_FLOAT, "倍镜开启")
      gg.clearList()
    end
    
    function h5()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {"400", 3000264620},
        {"-360", 3000264676},
        {"360", 3000264680},
        {"80", 3000264672},
        {"-70", 3000264668}
      }, {
        {
          "56",
          3000264692,
          true
        }
      }, gg.TYPE_FLOAT, "关闭放大")
      gg.clearList()
    end
    
    function h6()
      gg.setRanges(gg.REGION_ANONYMOUS)
      SearchWrite({
        {"278.0", 2894449036}
      }, {
        {"9999", 2894448988}
      }, gg.TYPE_FLOAT, "炮筒瞬爆")
    end
    
    function h7()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("开启成功")
    end
    
    function h8()
      qmnb = {
        {memory = 32768},
        {
          name = "锁死自瞄"
        },
        {
          value = tonumber("-509595641"),
          type = 4
        },
        {
          lv = tonumber("-443719676"),
          offset = 4,
          type = 4
        },
        {
          lv = tonumber("-309491200"),
          offset = 8,
          type = 4
        },
        {
          lv = tonumber("-346666891"),
          offset = 12,
          type = 4
        }
      }
      qmxg = {
        {
          value = tonumber("0"),
          offset = 8,
          type = 4
        }
      }
      xqmnb(qmnb)
    end
    
    function h9()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("16,261W;25W;161W;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10000)
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
            value = 1.5
          }
        })
      end
      gg.toast("爬下卡进天花板里下线不成功多试几次")
      gg.clearResults()
      os.exit()
    end
    
    function h10()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_SYS)
      gg.searchNumber("1;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("99", gg.TYPE_FLOAT)
      gg.toast("☆❤独家极限画质")
      gg.clearResults()
    end
    
    function h11()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
      gg.toast("☆❤独家段网穿已开启，请断网")
      gg.clearResults()
      gg.clearList()
    end
    
    function h12()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("16,261W;25W;161W;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1.55", gg.TYPE_FLOAT)
      gg.toast("☆❤半遁天花板开启成功")
    end
    
    function h13()
      gg.setRanges(16384)
      gg.searchNumber("9953,2710,795", 4, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.08817642000995", 16)
      gg.toast("注入死锁中.......")
      gg.searchNumber("4.8828148E-4", 16, false, gg.SIGN_EQUAL, 0, -1)
      Name = "自瞄"
      gg.setRanges(8)
      SearchWrite({
        {9.819133540166275E-26, 0},
        {-5.696554925989424E20, -12}
      }, {
        {-5.6965553E20, -12}
      }, 16, Name)
    end
    
    function h14()
      gg.setRanges(32)
      gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("SMG冲锋枪瞬击开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("667F;300F;100F;75F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("改装瞬击开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("qbz瞬击开启成功")
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("ak瞬击开启成功")
      gg.clearResults()
    end
    
    function h15()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("5.0;6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("6.8", gg.TYPE_FLOAT)
      gg.toast(" ☆❤人物加速无拉回 ")
      gg.clearResults()
    end
    
    function i1()
      gg.alert("  ☆❤循环测试拦截范围️  ")
      while true do
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
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function i2()
      gg.alert("  ☆❤循独家中程范围️  ")
      while true do
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.4516384", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.4516384", gg.TYPE_FLOAT)
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function i3()
      gg.alert("  ☆❤循环腿部范围️  ")
      while true do
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.16000000000~0.160000900000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.16000000000~0.160000900000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.013000000", gg.TYPE_FLOAT)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.16000000000~0.160000900000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.16000000000~0.160000900000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.013000000", gg.TYPE_FLOAT)
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function i4()
      gg.alert("☆❤小范围开始循环，打开脚本即可中断")
      while true do
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.199999999", 16)
        gg.toast("稳定小范围循环中")
        gg.searchNumber("0.07000000100~0.07000000900", 16, false, gg.SIGN_EQUAL, 0, -1)
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function i5()
      gg.alert("  ☆❤循环范围刀️  ")
      while true do
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll("4.5", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll("4.5", gg.TYPE_FLOAT)
        if gg.isVisible(true) then
          break
        end
      end
    end
    
    function Exit()
      print("    ️☆❤神仙宫科技，群948360953")
      gg.jiaqun("a9XB53sl6EYmws69eCaRZE96_Pog6kMF")
      os.exit()
    end
    
    function HOME()
      lw = 1
      yiyz_yiyz_Main()
    end
    
    sj = os.date("神仙宫")
    while true do
      if gg.isVisible(true) then
        XGCK = 1
        gg.setVisible(false)
      end
      gg.clearResults()
      if XGCK == 1 then
        yiyz_yiyz_Main()
      end
    end
