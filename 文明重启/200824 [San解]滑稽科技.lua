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
      end
    end
    
    function xqmnb(qmnb)
      gg.clearResults()
      gg.setRanges(qmnb[1].memory)
      gg.searchNumber(qmnb[3].value, qmnb[3].type)
      if gg.getResultCount() == 0 then
        gg.toast(qmnb[2].name .. "开启失败")
      else
        gg.refineNumber(qmnb[3].value, qmnb[3].type)
        gg.refineNumber(qmnb[3].value, qmnb[3].type)
        gg.refineNumber(qmnb[3].value, qmnb[3].type)
        if gg.getResultCount() == 0 then
          gg.toast(qmnb[2].name .. "开启失败")
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
                  xgjg = true
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
    
    function xqmnb(A0_66)
      gg.clearResults()
      gg.setRanges(A0_66[1].memory)
      gg.searchNumber(A0_66[3].value, A0_66[3].type)
      if gg.getResultCount() == 0 then
        gg.toast(A0_66[2].name .. "开启失败")
      else
        gg.refineNumber(A0_66[3].value, A0_66[3].type)
        gg.refineNumber(A0_66[3].value, A0_66[3].type)
        gg.refineNumber(A0_66[3].value, A0_66[3].type)
        if gg.getResultCount() == 0 then
          gg.toast(A0_66[2].name .. "开启失败")
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
                    for _FORV_8_ = 4, #A0_66 do
                      if pdsz == true then
                        pysz = {}
                        pysz[1] = {}
                        pysz[1].address = sl[_FORV_4_].address + A0_66[_FORV_8_].offset
                        pysz[1].flags = A0_66[_FORV_8_].type
                        szpy = gg.getValues(pysz)
                        pdpd = A0_66[_FORV_8_].lv .. ";" .. szpy[1].value
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
                  xgjg = true
                end
              end
            end
          end
          if xgjg == true then
            gg.toast(A0_66[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
          else
            gg.toast(A0_66[2].name .. "开启失败")
          end
        end
      end
    end
    
    function SearchWrite(A0_67, A1_68, A2_69)
      local L3_70, L4_71, L5_72, L6_73, L7_74, L8_75, L9_76, L10_77, L11_78, L12_79, L13_80, L14_81, L15_82, L16_83, L17_84, L18_85, L19_86, L20_87, L21_88
    end
    
    function SearchWrite(Search, Write, Type)
      gg.clearResults()
      gg.setVisible(false)
      gg.searchNumber(Search[1][1], Type)
      local count = gg.getResultCount()
      local result = gg.getResults(count)
      gg.clearResults()
      local data = {}
      local base = Search[1][2]
      if count > 0 then
        do
          do
            for _FORV_10_, _FORV_11_ in ipairs(result) do
              _FORV_11_.isUseful = true
            end
          end
        end
        do
          do
            for _FORV_10_ = 2, #Search do
              local tmp = {}
              local offset = Search[_FORV_10_][2] - base
              local num = Search[_FORV_10_][1]
              do
                do
                  for _FORV_17_, _FORV_18_ in ipairs(result) do
                    tmp[#tmp + 1] = {}
                    tmp[#tmp].address = _FORV_18_.address + offset
                    tmp[#tmp].flags = _FORV_18_.flags
                  end
                end
              end
              tmp = gg.getValues(tmp)
              do
                for _FORV_17_, _FORV_18_ in ipairs(tmp) do
                  if tostring(_FORV_18_.value) ~= tostring(num) then
                    result[_FORV_17_].isUseful = false
                  end
                end
              end
            end
          end
        end
        do
          do
            for _FORV_10_, _FORV_11_ in ipairs(result) do
              if _FORV_11_.isUseful then
                data[#data + 1] = _FORV_11_.address
              end
            end
          end
        end
        if #data > 0 then
          gg.toast("搜索到" .. #data .. "条数据")
          local t = {}
          local base = Search[1][2]
          do
            do
              for _FORV_12_ = 1, #data do
                do
                  for _FORV_16_, _FORV_17_ in ipairs(Write) do
                    offset = _FORV_17_[2] - base
                    t[#t + 1] = {}
                    t[#t].address = data[_FORV_12_] + offset
                    t[#t].flags = Type
                    t[#t].value = _FORV_17_[1]
                    if _FORV_17_[3] == true then
                      local item = {}
                      item[#item + 1] = t[#t]
                      item[#item].freeze = true
                      gg.addListItems(item)
                    end
                  end
                end
              end
            end
          end
          gg.setValues(t)
        else
          gg.toast("not found", false)
          return false
        end
      else
        gg.toast("Not Found")
        return false
      end
    end
    
    gg.alert("️️🔱请先打开隐藏游戏2，3 守护3🔱")
    gg.alert("🔱滑稽科技🔱")
    gg.toast("欢迎使用滑稽科技☞科技认准滑稽滑稽")
    function yiyz_yiyz_Main()
      menu = gg.choice({
        "🔱打架专区ฅฅ",
        "🔱无后专区ฅฅ",
        "🔱人物专区ฅฅ",
        "🔱变态专区ฅฅ",
        "🔱实体炸领ฅฅ",
        "🔱懒人一键ฅฅ",
        "🔱加群反馈ฅฅ",
        "⚠退出<滑稽>️️"
      }, nil, "ฅฅ滑稽科技\n离开滑稽时间:" )
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
        L()
      end
      if menu == 6 then
        H()
      end
      if menu == 7 then
        E()
      end
      if menu == 8 then
        Exit()
      end
      XGCK = -1
    end
    
    function A()
      menu1 = gg.multiChoice({
        "🔱强力自瞄丫ʚ稳ɞ",
        "🔱强路飞专区ʚ稳ɞ",
        "🔱稳定范围刀ʚ稳ɞ",
        "🔱稳定枪范围ʚ危ɞ",
        "🔱百发百中啊ʚ危ɞ",
        "🔱枪械射速快ʚ稳ɞ",
        "🔱实体小巨人ʚ危ɞ",
        "🔱带镜八倍镜ʚ危ɞ",
        "🔱瞬间秒开镜ʚ稳ɞ",
        "🔱无拉回加速ʚ危ɞ",
        "🔱基瞄八倍镜ʚ危ɞ",
        "💓返回上一页️"
      }, nil, "滑稽科技️")
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
      menu2 = gg.multiChoice({
        "🔱双持全开️ʚ稳ɞ",
        "🔱冲锋全开ʚ稳ɞ",
        "🔱改装全开ʚ稳ɞ️",
        "🔱半自全开ʚ稳ɞ",
        "🔱akm全开ʚ稳ɞ",
        "🔱QBz全开ʚ稳ɞ️",
        "🔱M14全开ʚ稳ɞ️",
        "🔱三倍️射速ʚ稳ɞ",
        "🔱火箭筒瞬爆ʚ稳ɞ",
        "返回上一页️"
      }, nil, "滑稽科技")
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
          HOME()
        end
      end
      GLWW = -1
    end
    
    function C()
      menu3 = gg.multiChoice({
        "🔱人物天线ʚ稳ɞ",
        "🔱刷新天线ʚ稳ɞ",
        "🔱人物透视ʚ稳ɞ",
        "🔱人物夜视开ʚ稳ɞ",
        "🔱人物夜视关ʚ稳ɞ",
        "🔱人物银白ʚ稳ɞ",
        "🔱全图黑夜ʚ稳ɞ",
        "🔱第五人称ʚ稳ɞ",
        "🔱人物迷彩ʚ稳ɞ",
        "🔱人物反伤ʚ危ɞ",
        "🔱伤害穿透ʚ危ɞ",
        "🔱倒地加速开<稳",
        "🔱倒地加速关ʚ稳ɞ",
        "返回上一页️"
      }, nil, "如果靠近敌人天线消失请刷新人物坐标️")
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
          c13()
        end
        if menu3[14] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function D()
      menu4 = gg.multiChoice({
        "🔱滑稽|出窍<禁>",
        "🔱地下|建家",
        "🔱倍镜|路飞",
        "🔱新半|遁地",
        "🔱独家|防摔",
        "🔱无视|炮台",
        "🔱子弹|穿墙️",
        "🔱房屋|透视",
        "🔱关闭|房屋",
        "🔱水下|行走",
        "🔱水下|行走关",
        "🔱机瞄|路飞",
        "🔱房屋|天线",
        "🔱房屋|天线关",
        "🔱调速|穿墙",
        "🔱范围|追踪",
        "🔱范围|追踪",
        "🔱人物|飞天",
        "🔱快速|挖矿",
        "🔱高跳|开启",
        "🔱高跳|关闭",
        "🔱实体|穿墙初始",
        "🔱实体|穿墙",
        "🔱人物|消失初始",
        "🔱人物|消失",
        "🔱强制|建造",
        "🔱一步|升天",
        "🔱透视墙壁",
        "返回上一页️"
      }, nil, "人物穿墙前请先在大厅初始化，再进入游戏里面开启实体穿墙，携带两个油炸即可完成爆破")
      if menu4 == nil then
      else
        if menu4[1] == true then
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
          d11()
        end
        if menu4[12] == true then
          d12()
        end
        if menu4[13] == true then
          d13()
        end
        if menu4[14] == true then
          d14()
        end
        if menu4[15] == true then
          d15()
        end
        if menu4[16] == true then
          d16()
        end
        if menu4[17] == true then
          d17()
        end
        if menu4[18] == true then
          d18()
        end
        if menu4[19] == true then
          d19()
        end
        if menu4[20] == true then
          d20()
        end
        if menu4[21] == true then
          d21()
        end
        if menu4[22] == true then
          d22()
        end
        if menu4[23] == true then
          d23()
        end
        if menu4[24] == true then
          d24()
        end
        if menu4[25] == true then
          d25()
        end
        if menu4[26] == true then
          qzjz()
        end
        if menu4[27] == true then
          ybdt()
        end
        if menu4[28] == true then
          tsqb()
        end
        if menu4[29] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function L()
      menu3 = gg.multiChoice({
        "🔱实体炸领一",
        "🔱实体炸领二",
        "返回上一页️"
      }, nil, "货轮开启")
      if menu3 == nil then
      else
        if menu3[1] == true then
          l1()
        end
        if menu3[2] == true then
          l2()
        end
        if menu3[3] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function H()
      gg.setRanges(16384)
      gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.00010002004", gg.TYPE_FLOAT)
      gg.toast("自瞄注入中")
      gg.clearResults()
      local Name = "自瞄循环开启中"
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {4.8828148E-4, 524},
        {-128.00001525879, 2884},
        {128.37501525879, 2892}
      }
      local tp2 = {
        {
          0,
          284,
          true
        }
      }
      local tb2 = {
        {
          128.37501525879,
          2884,
          false
        },
        {
          -128.00001525879,
          2892,
          false
        }
      }
      SearchWrite(tb1, tp2, dataType, Name)
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
      gg.toast("成功")
      qmnb = {
        {memory = 131072},
        {name = ""},
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
      gg.toast("骁龙彩色上色开启成功")
    end
    
    function l1()
      F = gg.alert("ɢᵒᵒᵈ✩⡱上货轮开启", "开启", "关闭")
      if F == 1 then
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(9999)
        gg.editAll("0", gg.TYPE_FLOAT)
        gg.toast("OK")
      elseif F == 2 then
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(9999)
        gg.editAll("10000", gg.TYPE_FLOAT)
        gg.toast("关闭")
      end
    end
    
    function l2()
      F = gg.alert("ɢᵒᵒᵈ✩⡱吆西", "开启", "关闭")
      if F == 1 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(4)
        local dataType = 16
        local tb1 = {
          {1.0E32, 0},
          {49, 20},
          {999, 32}
        }
        local tb2 = {
          {
            0.37,
            -8,
            true
          }
        }
        SearchWrite(tb1, tb2, dataType)
        gg.setRanges(16384)
        local dataType = 16
        local tb1 = {
          {3.8685732E25, 0},
          {1.00999999046, 20}
        }
        local tb2 = {
          {
            0.06,
            4,
            false
          }
        }
        SearchWrite(tb1, tb2, dataType)
      elseif F == 2 then
        gg.clearList()
        gg.clearResults()
        gg.setRanges(16384)
        local dataType = 16
        local tb1 = {
          {3.8685732E25, 0},
          {1.00999999046, 20}
        }
        local tb2 = {
          {
            1,
            4,
            false
          }
        }
        SearchWrite(tb1, tb2, dataType)
        gg.clearList()
        gg.toast("水上行走已关闭")
      end
    end
    
    function E()
      gg.jiaqun("a9XB53sl6EYmws69eCaRZE96_Pog6kMF")
    end
    
    function a1()
      F = gg.alert("ɢᵒᵒᵈ✩⡱请用新版自瞄，范围自瞄目测稳定封号人丑", "新版自瞄", "范围自瞄")
      if F == 1 then
        gg.setRanges(16384)
        gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.00010002004", gg.TYPE_FLOAT)
        gg.toast("自瞄注入中")
        gg.clearResults()
        local Name = "自瞄循环开启中"
        local dataType = gg.TYPE_FLOAT
        local tb1 = {
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }
        local tp2 = {
          {
            0,
            284,
            true
          }
        }
        local tb2 = {
          {
            128.37501525879,
            2884,
            false
          },
          {
            -128.00001525879,
            2892,
            false
          }
        }
        SearchWrite(tb1, tp2, dataType, Name)
        gg.clearList()
        gg.toast("内存自瞄已开启")
      elseif F == 2 then
        gg.setRanges(16384)
        gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999)
        gg.editAll("0.00010002004", gg.TYPE_FLOAT)
        gg.toast("自瞄注入中")
        gg.clearResults()
        local Name = "自瞄循环开启中"
        local dataType = gg.TYPE_FLOAT
        local tb1 = {
          {4.8828148E-4, 524},
          {-128.00001525879, 2884},
          {128.37501525879, 2892}
        }
        local tp2 = {
          {
            0,
            284,
            true
          }
        }
        local tb2 = {
          {
            128.37501525879,
            2884,
            false
          },
          {
            -128.00001525879,
            2892,
            false
          }
        }
        SearchWrite(tb1, tp2, dataType, Name)
        gg.clearList()
        cw1()
      end
    end
    
    function a2()
      Z = gg.alert("ɢᵒᵒᵈ✩⡱蹲下开镜即可", "基苗路飞", "开镜路飞")
      if Z == 1 then
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
      elseif Z == 2 then
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
    end
    
    function a3()
      menu3 = gg.multiChoice({
        "滑稽小范围刀",
        "滑稽大范围刀",
        "返回上一页️"
      }, nil, "小范围可以用大的不建议")
      if menu1 == nil then
      else
        if menu3[1] == true then
          ba1()
        end
        if menu3[2] == true then
          ba2()
        end
        if menu3[3] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function a4()
      menu4 = gg.multiChoice({
        "稳定小范围️",
        "团战小范围️",
        "独家大范围️",
        "返回上一页"
      }, nil, "小范围都是稳定的")
      if menu4 == nil then
      else
        if menu4[1] == true then
          cw1()
        end
        if menu4[2] == true then
          cw2()
        end
        if menu4[3] == true then
          cw3()
        end
        if menu4[4] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function a5()
      menu5 = gg.multiChoice({
        "开️️",
        "关️️",
        "返回上一页️"
      }, nil, "配合好可以百发百中")
      if menu5 == nil then
      else
        if menu5[1] == true then
          ko1()
        end
        if menu5[2] == true then
          ko2()
        end
        if menu5[3] == true then
          HOME()
        end
      end
      GLWW = -1
    end
    
    function da3()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.2", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.06000001356", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.06000001356", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.2", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.2", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.04000000000~0.04000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.04000000000~0.04000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.2", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.1600000000~0.16000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.1600000000~0.16000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("0.2", gg.TYPE_FLOAT)
      gg.toast("全枪爆头1开启成功")
    end
    
    function ca3()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.08000000100~0.08000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.08000000100~0.08000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0.19", gg.TYPE_FLOAT)
      gg.toast("全枪爆头开启成功")
    end
    
    function ba1()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.clearResults()
      ba1()
    end
    
    function ba2()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.toast("循环大范围刀循环中")
      gg.clearResults()
    end
    
    function cw1()
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      local dataType = 4
      if gg.isVisible() == true then
      else
        local tb1 = {
          {-196616, 84},
          {1042536205, 200}
        }
        if gg.isVisible() == true then
        else
          local tb2 = {
            {
              1056454581,
              200,
              true
            },
            {
              0,
              196,
              true
            }
          }
          SearchWrite(tb1, tb2, dataType)
          gg.clearList()
          local dataType = 4
          if gg.isVisible() == true then
          else
            local tb1 = {
              {-196616, 84},
              {1042536207, 200}
            }
            if gg.isVisible() == true then
            else
              local tb2 = {
                {
                  1056454581,
                  200,
                  true
                },
                {
                  0,
                  196,
                  true
                }
              }
              SearchWrite(tb1, tb2, dataType)
              gg.clearList()
              local dataType = 4
              if gg.isVisible() == true then
              else
                local tb1 = {
                  {-196616, 84},
                  {1042536203, 200}
                }
                if gg.isVisible() == true then
                else
                  local tb2 = {
                    {
                      1056454581,
                      200,
                      true
                    },
                    {
                      0,
                      196,
                      true
                    }
                  }
                  SearchWrite(tb1, tb2, dataType)
                  gg.clearList()
                  local dataType = 4
                  if gg.isVisible() == true then
                  else
                    local tb1 = {
                      {-196616, 84},
                      {1042536198, 200}
                    }
                    if gg.isVisible() == true then
                    else
                      local tb2 = {
                        {
                          1056454581,
                          200,
                          true
                        },
                        {
                          0,
                          196,
                          true
                        }
                      }
                      SearchWrite(tb1, tb2, dataType)
                      gg.clearList()
                      local dataType = 4
                      if gg.isVisible() == true then
                      else
                        local tb1 = {
                          {-196616, 84},
                          {1042536201, 200}
                        }
                        if gg.isVisible() == true then
                        else
                          local tb2 = {
                            {
                              1056454581,
                              200,
                              true
                            },
                            {
                              0,
                              196,
                              true
                            }
                          }
                          SearchWrite(tb1, tb2, dataType)
                          gg.clearList()
                          local dataType = 4
                          if gg.isVisible() == true then
                          else
                            local tb1 = {
                              {-196616, 84},
                              {1042536199, 200}
                            }
                            if gg.isVisible() == true then
                            else
                              local tb2 = {
                                {
                                  1056454581,
                                  200,
                                  true
                                },
                                {
                                  0,
                                  196,
                                  true
                                }
                              }
                              SearchWrite(tb1, tb2, dataType)
                              gg.clearList()
                              local dataType = 4
                              if gg.isVisible() == true then
                              else
                                local tb1 = {
                                  {-196616, 84},
                                  {1042536210, 200}
                                }
                                if gg.isVisible() == true then
                                else
                                  local tb2 = {
                                    {
                                      1056454581,
                                      200,
                                      true
                                    },
                                    {
                                      0,
                                      196,
                                      true
                                    }
                                  }
                                  SearchWrite(tb1, tb2, dataType)
                                  gg.clearList()
                                  local dataType = 4
                                  if gg.isVisible() == true then
                                  else
                                    local tb1 = {
                                      {-196616, 84},
                                      {1042536200, 200}
                                    }
                                    if gg.isVisible() == true then
                                    else
                                      local tb2 = {
                                        {
                                          1056454581,
                                          200,
                                          true
                                        },
                                        {
                                          0,
                                          196,
                                          true
                                        }
                                      }
                                      SearchWrite(tb1, tb2, dataType)
                                      gg.clearList()
                                      local dataType = 4
                                      if gg.isVisible() == true then
                                      else
                                        local tb1 = {
                                          {-196616, 84},
                                          {1042536211, 200}
                                        }
                                        if gg.isVisible() == true then
                                        else
                                          local tb2 = {
                                            {
                                              1056454581,
                                              200,
                                              true
                                            },
                                            {
                                              0,
                                              196,
                                              true
                                            }
                                          }
                                          SearchWrite(tb1, tb2, dataType)
                                          gg.clearList()
                                          local dataType = 4
                                          if gg.isVisible() == true then
                                          else
                                            local tb1 = {
                                              {-196616, 84},
                                              {1042536206, 200}
                                            }
                                            if gg.isVisible() == true then
                                            else
                                              local tb2 = {
                                                {
                                                  1056454581,
                                                  200,
                                                  true
                                                },
                                                {
                                                  0,
                                                  196,
                                                  true
                                                }
                                              }
                                              SearchWrite(tb1, tb2, dataType)
                                              gg.clearList()
                                              cw1()
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    
    function cw2()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.08000000100~0.08000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.08000000100~0.08000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0.19", gg.TYPE_FLOAT)
      gg.toast("团战小范围已开启")
    end
    
    function cw3()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("10", gg.TYPE_FLOAT)
      gg.toast("独家大范围已开启")
      cw3()
    end
    
    function ko1()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local Name = "新版千里眼开启成功"
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {"400", 3000264620},
        {"-360", 3000264676},
        {"360", 3000264680},
        {"80", 3000264672},
        {"-70", 3000264668}
      }
      local tp2 = {
        {
          8,
          3000264692,
          true
        }
      }
      SearchWrite(tb1, tp2, dataType, Name)
      gg.clearList()
    end
    
    function ko2()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local Name = "千里眼关闭成功"
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {"400", 3000264620},
        {"-360", 3000264676},
        {"360", 3000264680},
        {"80", 3000264672},
        {"-70", 3000264668}
      }
      local tp2 = {
        {
          "56",
          3000264692,
          true
        }
      }
      SearchWrite(tb1, tp2, dataType, Name)
      gg.clearList()
    end
    
    function a6()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99999)
      gg.editAll("99999", gg.TYPE_FLOAT)
      gg.toast("射速加快开启成功")
      gg.clearResults()
    end
    
    function a7()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4.1", gg.TYPE_FLOAT)
      gg.toast("实体巨人已开启")
    end
    
    function a8()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("31.1111125946", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("31.1111125946", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
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
            gg.editAll("8", gg.TYPE_FLOAT)
          end
        end
      end
    end
    
    function a9()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local Name = "瞬间秒开镜"
      local tb1 = {
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
      }
      local tb2 = {
        {
          "9",
          3483543696,
          true
        }
      }
      local dataType = gg.TYPE_FLOAT
      SearchWrite(tb1, tb2, dataType, Name)
    end
    
    function a10()
      V = gg.alert("ɢᵒᵒᵈ✩⡱趴下加速", "加速开启", "加速关闭")
      if V == 1 then
        gg.clearResults()
        gg.setRanges(16384)
        gg.searchNumber("0.14177720249;1.7031426e-38;1.7031398e-38:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(9999)
        gg.editAll("0.18", gg.TYPE_FLOAT)
        gg.toast("加速开启")
      elseif V == 2 then
        gg.clearResults()
        gg.setRanges(16384)
        gg.searchNumber("0.18;1.7031426e-38;1.7031398e-38:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(9999)
        gg.editAll("0.14177720249", gg.TYPE_FLOAT)
        gg.toast("关闭加速")
      end
    end
    
    function a11()
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("31.1111125946", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("31.1111125946", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
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
        end
      end
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
    
    function b1()
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
    
    function b3()
      gg.setRanges(32)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {40, 3908},
        {7, 3920},
        {15, 3932}
      }
      local tb2 = {
        {
          0.00999999978,
          3920,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(32)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {-0.20000000298, 0},
        {1, -8},
        {360, -12}
      }
      local tb2 = {
        {
          1.0E19,
          -12,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {2.76666688919, 88},
        {1.2107219E-42, 80}
      }
      local tb2 = {
        {
          0.00999999978,
          88,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.toast("改装开启成功")
    end
    
    function b4()
      gg.clearResults()
      gg.setRanges(4)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {2.16666674614, 152},
        {1.2107219E-42, 144}
      }
      local tb2 = {
        {
          0.00999999978,
          152,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {10, 64},
        {0.10000000149, 20},
        {5, 80}
      }
      local tb2 = {
        {
          0.00999999978,
          64,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.setRanges(32)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {-0.60000002384, 32},
        {480, 20},
        {80, 4}
      }
      local tb2 = {
        {
          1000000,
          20,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.toast("半自动开启成功")
    end
    
    function b5()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {30, 212},
        {10, 224},
        {13, 236}
      }
      local tb2 = {
        {
          0.00999999978,
          224,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {2.16666674614, 152},
        {1.2107219E-42, 144}
      }
      local tb2 = {
        {
          0.00999999978,
          152,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(4)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {2.66666674614, 24},
        {1.2107219E-42, 16}
      }
      local tb2 = {
        {
          0.00999999978,
          24,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.toast("AKM开启成功")
    end
    
    function b6()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {0.10000000149, 36},
        {6, 80},
        {4, 96}
      }
      local tb2 = {
        {
          0.00999999978,
          80,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.setRanges(gg.REGION_ANONYMOUS)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {0.375, 0},
        {540, -20},
        {-0.5, -8}
      }
      local tb2 = {
        {
          1000000000,
          -20,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.setRanges(4)
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {2.90000009537, 152},
        {1.2107219E-42, 144}
      }
      local tb2 = {
        {
          0.00999999978,
          152,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {2.03333353996, 216},
        {1.2107219E-42, 208}
      }
      local tb2 = {
        {
          0.00999999978,
          216,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType)
      gg.clearList()
      gg.clearResults()
      gg.toast("QBZ开启成功")
    end
    
    function b7()
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
    
    function b8()
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
    
    function b9()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local Name = "火箭筒瞬爆"
      local tb1 = {
        {"278.0", 2894449036}
      }
      local tb2 = {
        {"9999", 2894448988}
      }
      local dataType = gg.TYPE_FLOAT
      SearchWrite(tb1, tb2, dataType, Name)
    end
    
    function c1()
      O = gg.alert("ɢᵒᵒᵈ✩⡱天线", "开启天线", "蓝色天线")
      if O == 1 then
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
        gg.toast("成功")
      elseif O == 2 then
        gg.setRanges(131072)
        gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll("0", gg.REGION_C_BSS)
        gg.toast("蓝透开启中")
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(999999)
        gg.editAll("-999999", gg.TYPE_FLOAT)
        gg.toast("蓝透开启中")
        gg.setRanges(131072)
        gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
        gg.getResults(100)
        gg.editAll("0", gg.REGION_C_BSS)
        gg.toast("蓝透开启中")
        gg.clearResults()
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
        }, gg.REGION_C_BSS, "蓝透开启成功")
        gg.clearList()
        gg.toast("500米蓝透天线开启成功")
      end
    end
    
    function c2()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999999)
      gg.editAll("-999999", gg.TYPE_FLOAT)
      gg.toast("天线坐标刷新成功")
    end
    
    function c3()
      gg.setRanges(131072)
      gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("0", gg.REGION_C_BSS)
      gg.toast("人物透视开启成功")
      gg.clearResults()
    end
    
    function c4()
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
    
    function c5()
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
    end
    
    function c6()
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
      gg.toast("上色")
      gg.clearResults()
      gg.clearList()
    end
    
    function c7()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.21072187e-42;24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(99)
      gg.editAll("120", gg.TYPE_FLOAT)
      gg.toast("黑夜开启成功")
      gg.clearResults()
    end
    
    function c8()
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.toast("第五人格已开启")
    end
    
    function c9()
      qmnb = {
        {memory = 131072},
        {name = ""},
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
      gg.toast("骁龙彩色上色开启成功")
    end
    
    function c10()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("1.9", gg.TYPE_FLOAT)
      gg.toast("走到天上就能反伤了")
      gg.alert("走到天上就能反伤了nb")
    end
    
    function c11()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local Name = "    开启成功️    "
      local tb1 = {
        {
          "0.10000000149",
          3678935128
        },
        {
          "0.20000000298",
          3678935124
        },
        {
          "3.99000000954",
          3678935088
        }
      }
      local tb2 = {
        {
          "-2.5",
          3678935200,
          true
        }
      }
      local dataType = gg.TYPE_FLOAT
      SearchWrite(tb1, tb2, dataType, Name)
    end
    
    function c12()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("7", gg.TYPE_FLOAT)
      gg.toast("独家倒地加速开启成功")
    end
    
    function c13()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("2", gg.TYPE_FLOAT)
      gg.toast("独家倒地加速关闭成功")
    end
    
    function d1()
      gg.clearResults(99999)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("15D;1D;84000D:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10000)
      gg.editAll("14", gg.TYPE_DWORD)
      gg.toast("开启中")
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
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
        end
      end
      gg.toast("实体穿墙开启成功")
      gg.clearResults()
      gg.clearList()
    end
    
    function d2()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("-7.1591722e24;-2.9687729e21;2;1;-1.3093038e25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("1.7", gg.TYPE_FLOAT)
      gg.toast("地下建家")
      gg.alert("自我解脱找个不死的地方建家")
    end
    
    function d3()
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
      }, gg.TYPE_FLOAT, "倍镜路飞已开启")
    end
    
    function d4()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("修改数值", gg.TYPE_FLOAT)
      gg.toast("注入成功")
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("16,261W;25W;161W  ;1W;1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("2.222222", gg.TYPE_FLOAT)
      gg.toast("半遁地开启成功")
    end
    
    function d5()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("防摔已开启")
      gg.setRanges(16384)
      local Name = "防摔"
      local dataType = gg.TYPE_FLOAT
      local tb1 = {
        {-3.8685732E25, 19100},
        {1, 19104},
        {1.00999999046, 19120}
      }
      local tb2 = {
        {
          0.10000000149,
          19104,
          false
        }
      }
      SearchWrite(tb1, tb2, dataType, Name)
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll("", gg.TYPE_FLOAT)
      gg.toast("防摔")
    end
    
    function d6()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
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
        end
      end
      gg.toast("注入隔墙吸子弹50%")
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("注入成功")
    end
    
    function d7()
      gg.setRanges(gg.REGION_ANONYMOUS)
      local Name = "橡胶人路飞开启成功请开镜"
      local tb1 = {
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
      }
      local tb2 = {
        {"1.8", 3483543708}
      }
      local dataType = gg.TYPE_FLOAT
      SearchWrite(tb1, tb2, dataType, Name)
    end
    
    function d8()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.81399995089", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("10.123", gg.TYPE_FLOAT)
      gg.toast("房屋透视开启成功")
      gg.setRanges(gg.REGION_CODE_APP)
      gg.setVisible(false)
      gg.clearList()
    end
    
    function d9()
      gg.clearResults()
      gg.setRanges(16384)
      gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
      gg.getResults(100)
      gg.editAll("0.81399995089", 16)
      gg.toast("房屋透视关闭成功")
      gg.clearResults()
    end
    
    function d10()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("水下行走开启")
    end
    
    function d11()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("10000", gg.TYPE_FLOAT)
      gg.toast("关闭水下行走")
    end
    
    function d12()
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
      }, gg.TYPE_FLOAT, "独家机瞄路飞开启成功")
    end
    
    function d13()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822639525;4.0;0.74931889772;0.36428490281:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("木墙坐标开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822684228;4.0;-0.14822591841;4.0:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("石墙坐标开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("铁墙坐标开启成功")
    end
    
    function d14()
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822639525;4.0;0.74931889772;0.36428490281:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4", gg.TYPE_FLOAT)
      gg.toast("木墙坐标关闭成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.14822684228;4.0;-0.14822591841;4.0:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4", gg.TYPE_FLOAT)
      gg.toast("石头坐标开启关闭")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("4", gg.TYPE_FLOAT)
      gg.toast("铁墙坐标关闭成功")
    end
    
    function d15()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
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
        end
      end
      gg.toast("变速穿墙开启中")
      gg.clearResults()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("5", gg.TYPE_FLOAT)
      gg.clearResults()
      gg.toast("变速穿墙开启成功")
    end
    
    function d16()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("60F;0.02999999933F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1", gg.TYPE_FLOAT)
      gg.toast("独家百发百中模式已开启")
      gg.clearResults()
    end
    
    function d17()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("60F;0.02999999933F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("1", gg.TYPE_FLOAT)
      gg.toast("百发百中模式已关闭")
      gg.clearResults()
    end
    
    function ybdt()
      F = gg.alert("先建一块地基然后开启通天路，开启后在建一块地基台阶，然后关闭通天路即可，开启后可能导致脚本重启", "关闭通天路", "开启通天路")
      if F == 1 then
        gg.setRanges(16)
        local dataType = 16
        local tb1 = {
          {999, 0},
          {0.13333334028720856, 52},
          {0.1725490242242813, 56}
        }
        local tb2 = {
          {1, 0}
        }
        SearchWrite(tb1, tb2, dataType)
      elseif F == 2 then
        gg.setRanges(16)
        local dataType = 16
        local tb1 = {
          {1, 0},
          {0.13333334028720856, 52},
          {0.1725490242242813, 56}
        }
        local tb2 = {
          {999, 0}
        }
        SearchWrite(tb1, tb2, dataType)
      end
    end
    
    function qxjz()
      gg.clearResults()
      gg.searchNumber("1,073,741,824D;1,120,403,456D;3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      sl = gg.getResultCount()
      if sl > 100 then
        sl = 100
      end
      do
        do
          for _FORV_3_ = 1, sl do
            dzy = jg[_FORV_3_].address
            gg.addListItems({
              [1] = {
                address = dzy,
                flags = gg.TYPE_FLOAT,
                freeze = true,
                value = 5.0734198E-40
              }
            })
          end
        end
      end
      qxjz()
    end
    
    function d19()
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
      gg.toast("快速挖矿开启")
    end
    
    function d20()
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
      gg.toast("独家高跳开启成功")
    end
    
    function d21()
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
      gg.toast("独家高跳关闭成功")
    end
    
    function d22()
      gg.clearResults(99999)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("16D;84,000D;65,537D::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10000)
      gg.editAll("15", gg.TYPE_DWORD)
      gg.toast("初始化成功🏆")
    end
    
    function d23()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
          for _FORV_3_ = 1, sl do
            dzy = jg[_FORV_3_].address
            gg.addListItems({
              [1] = {
                address = dzy,
                flags = gg.TYPE_FLOAT,
                freeze = true,
                value = 9.4
              }
            })
          end
        end
      end
      gg.toast("实体穿墙成功，请携带两个油桶炸家")
      gg.clearResults()
      gg.clearList()
    end
    
    function d24()
      gg.clearResults(99999)
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("16D;84,000D;65,537D::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10000)
      gg.editAll("15", gg.TYPE_DWORD)
      gg.toast("实体隐身第一步开启成功")
    end
    
    function tsqb()
      F = gg.alert("滑稽科技", "木墙透视", "石墙透视", "铁墙透视")
      if F == 1 then
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.032023508101701736, type = 16},
          {
            lv = 3.799999952316284,
            offset = 4,
            type = 16
          },
          {
            lv = 3.799999952316284,
            offset = 36,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 4,
            type = 16
          },
          {
            value = 0,
            offset = 36,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.03202327340841293, type = 16},
          {
            lv = 3.799999952316284,
            offset = 4,
            type = 16
          },
          {
            lv = 3.799999952316284,
            offset = 36,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 4,
            type = 16
          },
          {
            value = 0,
            offset = 36,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.007704700343310833, type = 16},
          {
            lv = 20,
            offset = -24,
            type = 16
          },
          {
            lv = -2,
            offset = 8,
            type = 16
          },
          {
            lv = -2,
            offset = 70,
            type = 16
          },
          {
            lv = 2,
            offset = 72,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -24,
            type = 16
          },
          {
            value = 0,
            offset = 40,
            type = 16
          },
          {
            value = 0,
            offset = 72,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.1500033140182495, type = 16},
          {
            lv = -2,
            offset = -36,
            type = 16
          },
          {
            lv = -2,
            offset = -4,
            type = 16
          },
          {
            lv = -2,
            offset = 28,
            type = 16
          },
          {
            lv = 2,
            offset = 60,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -36,
            type = 16
          },
          {
            value = 0,
            offset = -4,
            type = 16
          },
          {
            value = 0,
            offset = 28,
            type = 16
          },
          {
            value = 0,
            offset = 60,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.14999663829803467, type = 16},
          {
            lv = 2,
            offset = -4,
            type = 16
          },
          {
            lv = -2,
            offset = 28,
            type = 16
          },
          {
            lv = -2,
            offset = 60,
            type = 16
          },
          {
            lv = 2,
            offset = 92,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -4,
            type = 16
          },
          {
            value = 0,
            offset = 28,
            type = 16
          },
          {
            value = 0,
            offset = 60,
            type = 16
          },
          {
            value = 0,
            offset = 92,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.002076801611110568, type = 16},
          {
            lv = 3.799999952316284,
            offset = -16,
            type = 16
          },
          {
            lv = 3.799999952316284,
            offset = 48,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -16,
            type = 16
          },
          {
            value = 0,
            offset = 48,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.002076801611110568, type = 16},
          {
            lv = 3.799999952316284,
            offset = 16,
            type = 16
          },
          {
            lv = 3.799999952316284,
            offset = 80,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 16,
            type = 16
          },
          {
            value = 0,
            offset = 80,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.41978082060813904, type = 16},
          {
            lv = 3.799999952316284,
            offset = 16,
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
          {memory = 131072},
          {name = ""},
          {value = 0.013329435139894485, type = 16},
          {
            lv = 3.799999952316284,
            offset = 12,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 12,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.7060922980308533, type = 16},
          {
            lv = -2,
            offset = -148,
            type = 16
          },
          {
            lv = 2,
            offset = -116,
            type = 16
          },
          {
            lv = 2,
            offset = -84,
            type = 16
          },
          {
            lv = -2,
            offset = -52,
            type = 16
          },
          {
            lv = -2,
            offset = -20,
            type = 16
          },
          {
            lv = 2.000000476837158,
            offset = 12,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -148,
            type = 16
          },
          {
            value = 0,
            offset = -116,
            type = 16
          },
          {
            value = 0,
            offset = -84,
            type = 16
          },
          {
            value = 0,
            offset = -52,
            type = 16
          },
          {
            value = 0,
            offset = -20,
            type = 16
          },
          {
            value = 0,
            offset = 12,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.7060521841049194, type = 16},
          {
            lv = -2,
            offset = -80,
            type = 16
          },
          {
            lv = 2,
            offset = -48,
            type = 16
          },
          {
            lv = 2,
            offset = -16,
            type = 16
          },
          {
            lv = -2,
            offset = 16,
            type = 16
          },
          {
            lv = -2,
            offset = 48,
            type = 16
          },
          {
            lv = 2.000000476837158,
            offset = 80,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -80,
            type = 16
          },
          {
            value = 0,
            offset = -48,
            type = 16
          },
          {
            value = 0,
            offset = -16,
            type = 16
          },
          {
            value = 0,
            offset = 16,
            type = 16
          },
          {
            value = 0,
            offset = 40,
            type = 16
          },
          {
            value = 0,
            offset = 80,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.014859022572636604, type = 16},
          {
            lv = 1.8001794815063477,
            offset = 12,
            type = 16
          },
          {
            lv = 1.8001794815063477,
            offset = 44,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 12,
            type = 16
          },
          {
            value = 0,
            offset = 44,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.014859022572636604, type = 16},
          {
            lv = 1.8001794815063477,
            offset = -52,
            type = 16
          },
          {
            lv = 1.8001794815063477,
            offset = 12,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -52,
            type = 16
          },
          {
            value = 0,
            offset = 12,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.02272883802652359, type = 16},
          {
            lv = 2.736318588256836,
            offset = 12,
            type = 16
          },
          {
            lv = 2.736318349838257,
            offset = 44,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 12,
            type = 16
          },
          {
            value = 0,
            offset = 44,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.02272883802652359, type = 16},
          {
            lv = 2.736318588256836,
            offset = 12,
            type = 16
          },
          {
            lv = 2.736318349838257,
            offset = 46,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 12,
            type = 16
          },
          {
            value = 0,
            offset = 76,
            type = 16
          }
        }
        xqmnb(qmnb)
        dx5 = dx2
        gg.toast("木墙透视已开启")
      elseif F == 2 then
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.6826953887939453, type = 16},
          {
            lv = 2,
            offset = -24,
            type = 16
          },
          {
            lv = 2,
            offset = 16,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -24,
            type = 16
          },
          {
            value = 0,
            offset = 16,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.6826953887939453, type = 16},
          {
            lv = 2,
            offset = -24,
            type = 16
          },
          {
            lv = 2,
            offset = 16,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -24,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.682696521282196, type = 16},
          {
            lv = 2,
            offset = -24,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -24,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.6827419400215149, type = 16},
          {
            lv = -2,
            offset = -144,
            type = 16
          },
          {
            lv = -2,
            offset = -64,
            type = 16
          },
          {
            lv = -2,
            offset = 16,
            type = 16
          },
          {
            lv = -2,
            offset = 96,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -144,
            type = 16
          },
          {
            value = 0,
            offset = -64,
            type = 16
          },
          {
            value = 0,
            offset = 16,
            type = 16
          },
          {
            value = 0,
            offset = 96,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.6827935576438904, type = 16},
          {
            lv = 2,
            offset = -216,
            type = 16
          },
          {
            lv = 2,
            offset = -96,
            type = 16
          },
          {
            lv = 2,
            offset = -16,
            type = 16
          },
          {
            lv = 2,
            offset = 24,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -216,
            type = 16
          },
          {
            value = 0,
            offset = -96,
            type = 16
          },
          {
            value = 0,
            offset = -16,
            type = 16
          },
          {
            value = 0,
            offset = 24,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.6828041672706604, type = 16},
          {
            lv = 2,
            offset = 24,
            type = 16
          },
          {
            lv = 2,
            offset = 96,
            type = 16
          },
          {
            lv = 2,
            offset = 104,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 24,
            type = 16
          },
          {
            value = 0,
            offset = 96,
            type = 16
          },
          {
            value = 0,
            offset = 104,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.6828030347824097, type = 16},
          {
            lv = 2,
            offset = -16,
            type = 16
          },
          {
            lv = 2,
            offset = 64,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -64,
            type = 16
          },
          {
            value = 0,
            offset = 64,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.8979434967041016, type = 16},
          {
            lv = -2,
            offset = -120,
            type = 16
          },
          {
            lv = 2,
            offset = -88,
            type = 16
          },
          {
            lv = -2,
            offset = -56,
            type = 16
          },
          {
            lv = 2,
            offset = -24,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -120,
            type = 16
          },
          {
            value = 0,
            offset = -88,
            type = 16
          },
          {
            value = 0,
            offset = -56,
            type = 16
          },
          {
            value = 0,
            offset = -24,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.9821171760559082, type = 16},
          {
            lv = -1.9338666200637817,
            offset = -24,
            type = 16
          },
          {
            lv = 1.933866262435913,
            offset = -16,
            type = 16
          },
          {
            lv = 1.9338666200637817,
            offset = 8,
            type = 16
          },
          {
            lv = 1.9338666200637817,
            offset = 16,
            type = 16
          },
          {
            lv = -1.9338667392730713,
            offset = 24,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -24,
            type = 16
          },
          {
            value = 0,
            offset = -16,
            type = 16
          },
          {
            value = 0,
            offset = 8,
            type = 16
          },
          {
            value = 0,
            offset = 16,
            type = 16
          },
          {
            value = 0,
            offset = 24,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.018658097833395004, type = 16},
          {
            lv = 1.9338665008544922,
            offset = 4,
            type = 16
          },
          {
            lv = 1.9338665008544922,
            offset = 12,
            type = 16
          },
          {
            lv = 1.9338667392730713,
            offset = 20,
            type = 16
          },
          {
            lv = 1.9338665008544922,
            offset = 44,
            type = 16
          },
          {
            lv = -1.9338668584823608,
            offset = 60,
            type = 16
          },
          {
            lv = 1.9338668584823608,
            offset = 100,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 4,
            type = 16
          },
          {
            value = 0,
            offset = 12,
            type = 16
          },
          {
            value = 0,
            offset = 20,
            type = 16
          },
          {
            value = 0,
            offset = 44,
            type = 16
          },
          {
            value = 0,
            offset = 60,
            type = 16
          },
          {
            value = 0,
            offset = 100,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.08303508162498474, type = 16},
          {
            lv = 1.9338666200637817,
            offset = 16,
            type = 16
          },
          {
            lv = -1.9338666200637817,
            offset = 56,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 16,
            type = 16
          },
          {
            value = 0,
            offset = 56,
            type = 16
          }
        }
        xqmnb(qmnb)
        dx5 = dx2
        gg.toast("石墙透视已开启")
      elseif F == 3 then
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.12962867319583893, type = 16},
          {
            lv = 1.6046782732009888,
            offset = 28,
            type = 16
          },
          {
            lv = 1.6046782732009888,
            offset = 100,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 28,
            type = 16
          },
          {
            value = 0,
            offset = 100,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.12962867319583893, type = 16},
          {
            lv = 1.6046782732009888,
            offset = -20,
            type = 16
          },
          {
            lv = 1.6046782732009888,
            offset = 4,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -20,
            type = 16
          },
          {
            value = 0,
            offset = 4,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.15298263728618622, type = 16},
          {
            lv = 1.3940107822418213,
            offset = -4,
            type = 16
          },
          {
            lv = 1.3940107822418213,
            offset = 20,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -4,
            type = 16
          },
          {
            value = 0,
            offset = 20,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.1057068407535553, type = 16},
          {
            lv = 2.178743600845337,
            offset = 4,
            type = 16
          },
          {
            lv = 2.178743600845337,
            offset = 28,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = 4,
            type = 16
          },
          {
            value = 0,
            offset = 28,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.17565540969371796, type = 16},
          {
            lv = 2.178743600845337,
            offset = -20,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -20,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.19516216218471527, type = 16},
          {
            lv = 2.115550994873047,
            offset = -20,
            type = 16
          },
          {
            lv = 2.115550994873047,
            offset = 52,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -20,
            type = 16
          },
          {
            value = 0,
            offset = 53,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.17744342982769012, type = 16},
          {
            lv = 2.0771946907043457,
            offset = 4,
            type = 16
          }
        }
        qmxg = {
          {
            value = 4,
            offset = 4,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = -0.21184007823467255, type = 16},
          {
            lv = 2.1394925117492676,
            offset = 4,
            type = 16
          }
        }
        qmxg = {
          {
            value = 4,
            offset = 4,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 1.2077791464015598E-41, type = 16},
          {
            lv = 1.3940107822418213,
            offset = -16,
            type = 16
          },
          {
            lv = 1.3940107822418213,
            offset = 8,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -16,
            type = 16
          },
          {
            value = 0,
            offset = 8,
            type = 16
          }
        }
        xqmnb(qmnb)
        qmnb = {
          {memory = 131072},
          {name = ""},
          {value = 0.8982726335525513, type = 16},
          {
            lv = 2.1371371746063232,
            offset = -8,
            type = 16
          },
          {
            lv = 2.0411479473114014,
            offset = 16,
            type = 16
          }
        }
        qmxg = {
          {
            value = 0,
            offset = -8,
            type = 16
          },
          {
            value = 0,
            offset = 16,
            type = 16
          }
        }
        xqmnb(qmnb)
        dx5 = dx2
        gg.toast("铁墙透视已开启")
      end
    end
    
    function d25()
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if 100 < sl then
        sl = 100
      end
      do
        do
          for _FORV_3_ = 1, sl do
            dzy = jg[_FORV_3_].address
            gg.addListItems({
              [1] = {
                address = dzy,
                flags = gg.TYPE_FLOAT,
                freeze = true,
                value = 9.4
              }
            })
          end
        end
      end
      gg.toast("实体隐身第二步开启成功")
      gg.clearResults()
      gg.clearList()
    end
    
    function d18()
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("999", gg.TYPE_FLOAT)
      gg.toast("新版飞天.")
      gg.clearResults()
      gg.setRanges(gg.REGION_CODE_APP)
      gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(1)
      gg.editAll("1", gg.TYPE_FLOAT)
      gg.toast("新版飞天...")
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      jg = gg.getResults(100)
      sl = gg.getResultCount()
      if sl > 10 then
        sl = 10
      end
      do
        do
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
        end
      end
      gg.toast("新版飞天开启成功")
    end
    
    function Exit()
      print(" 滑稽 ️")
      os.exit()
    end
    
    function HOME()
      lw = 1
      yiyz_yiyz_Main()
    end
    
    sj = os.date("%c")
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
