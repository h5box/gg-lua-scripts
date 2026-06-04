gg.searchNumber, Searchnumber = Searchnumber, gg.searchNumber
function gg.searchNumber(a, b, c, d, e, f)
  gg.setVisible(false)
  if not search_e then
    search_e = string.char(0, 0, 0, 0, 0, 0, 0)
    do
      for _FORV_9_ = 1, 22 do
        search_e = search_e .. search_e
      end
    end
  end
  gg.getResults(1)
  gg.editAll(search_e, 4)
  local s, j = {}, {}
  do
    do
      for _FORV_11_ = 1, 50 do
        j[_FORV_11_] = math.random(1, 2140000000)
        s[j[_FORV_11_]] = {
          address = _FORV_11_,
          flags = 4,
          temp = search_e
        }
      end
    end
  end
  local timegg = os.clock() + os.time()
  s = gg.getValues(s)
  local dateinit = os.clock() + os.time()
  do
    do
      for _FORV_13_ = 1, 50 do
        while s[j[_FORV_13_]].value ~= 0 or dateinit - timegg > 2.1 do
          gg.clearResults()
          os.exit()
        end
      end
    end
  end
  Searchnumber(a, b, c, d, e, f)
  gg.getResults(0)
  gg.editAll(search_e, 4)
  while gg.isVisible(true) do
    gg.clearResults()
    os.exit()
  end
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
      gg.toast("搜索9" .. #data .. "条9")
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
      gg.toast("开启失败", false)
      return false
    end
  else
    gg.toast("开启失败")
    return false
  end
end

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
        gg.toast(qmnb[2].name .. "开启成功,共修改" .. xgsl .. "条ΔΘ")
      else
        gg.toast(qmnb[2].name .. "开启失败")
      end
    end
  end
end

function Fxs(Search, Write, Neicun, Mingcg, Shuzhiliang)
  gg.clearResults()
  gg.setRanges(Neicun)
  gg.setVisible(false)
  gg.searchNumber(Search[1][1], Search[1][3])
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  local base = Search[1][2]
  if count > 0 then
    do
      do
        for _FORV_12_, _FORV_13_ in ipairs(result) do
          _FORV_13_.isUseful = true
        end
      end
    end
    do
      do
        for _FORV_12_ = 2, #Search do
          local tmp = {}
          local offset = Search[_FORV_12_][2] - base
          local num = Search[_FORV_12_][1]
          do
            do
              for _FORV_19_, _FORV_20_ in ipairs(result) do
                tmp[#tmp + 1] = {}
                tmp[#tmp].address = _FORV_20_.address + offset
                tmp[#tmp].flags = Search[_FORV_12_][3]
              end
            end
          end
          tmp = gg.getValues(tmp)
          do
            for _FORV_19_, _FORV_20_ in ipairs(tmp) do
              if tostring(_FORV_20_.value) ~= tostring(num) then
                result[_FORV_19_].isUseful = false
              end
            end
          end
        end
      end
    end
    do
      do
        for _FORV_12_, _FORV_13_ in ipairs(result) do
          if _FORV_13_.isUseful then
            data[#data + 1] = _FORV_13_.address
          end
        end
      end
    end
    if #data > 0 then
      gg.toast(Mingcg .. "搜索到" .. #data .. "条数据")
      local t = {}
      local base = Search[1][2]
      if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then
      else
        Shuzhiliang = #data
      end
      do
        do
          for _FORV_14_ = 1, Shuzhiliang do
            do
              for _FORV_18_, _FORV_19_ in ipairs(Write) do
                offset = _FORV_19_[2] - base
                t[#t + 1] = {}
                t[#t].address = data[_FORV_14_] + offset
                t[#t].flags = _FORV_19_[3]
                t[#t].value = _FORV_19_[1]
                if _FORV_19_[4] == true then
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
      gg.toast(Mingcg .. "已修改" .. #t .. "条数据")
      gg.addListItems(t)
    else
      gg.toast(Mingcg .. "开启失败", false)
      return false
    end
  else
    gg.toast("搜索失败")
    return false
  end
end

function Main()
  menu = gg.choice({
    "大厅防封",
    "透视功能",
    "大厅功能",
    "范围功能",
    "落地功能",
    "加速功能",
    "娱乐功能",
    "变态功能",
    "麒麟专区",
    "自瞄专区",
    "退出脚本"
  }, nil, os.date("当前时间:%Y年-%m月-%d日 %H时 %M分 %S秒 ✨啸天✨啸天制作禁止倒卖啸天QQ群:774618417"))
  if menu == 1 then
    K()
  end
  if menu == 2 then
    A()
  end
  if menu == 3 then
    B()
  end
  if menu == 4 then
    C()
  end
  if menu == 5 then
    D()
  end
  if menu == 6 then
    E()
  end
  if menu == 7 then
    F()
  end
  if menu == 8 then
    L()
  end
  if menu == 9 then
    N()
  end
  if menu == 10 then
    X()
  end
  if menu == 11 then
    Exit()
  end
  XGCK = -1
end

function A()
  menu = gg.multiChoice({
    "855透色",
    "845透色",
    "835透色",
    "710透色",
    "660透色",
    "625透色",
    "615透色",
    "450透色",
    "通用上色(8200)",
    "联发科p70透色",
    "联发科p60透视",
    "通用防闪",
    "联发科p22透色",
    "联发科p23透色",
    "联发科p10透视",
    "返回"
  }, nil, "透色专区")
  if menu == nil then
  else
    if menu[1] == true then
      a1()
    end
    if menu[2] == true then
      a2()
    end
    if menu[3] == true then
      a3()
    end
    if menu[4] == true then
      a4()
    end
    if menu[5] == true then
      a5()
    end
    if menu[6] == true then
      a6()
    end
    if menu[7] == true then
      a7()
    end
    if menu[8] == true then
      a8()
    end
    if menu[9] == true then
      a9()
    end
    if menu[10] == true then
      a10()
    end
    if menu[11] == true then
      a11()
    end
    if menu[12] == true then
      a12()
    end
    if menu[13] == true then
      a13()
    end
    if menu[14] == true then
      a14()
    end
    if menu[15] == true then
      a15()
    end
    if menu[16] == true then
      HOME()
    end
  end
  LW1 = 0
  LW2 = 0
end

function B()
  menu = gg.multiChoice({
    "全机型白色(通用)",
    "全机型黑色(通用)",
    "全机型白嫖色",
    "午后防抖聚点(全局)",
    "除草除树",
    "除雾",
    "天线",
    "大厅舜鸡",
    "杀猪子弹",
    "啸天原创天线",
    "秒落地(出生岛)",
    "返回"
  }, nil, "功能")
  if menu == nil then
  else
    if menu[1] == true then
      b1()
    end
    if menu[2] == true then
      b2()
    end
    if menu[3] == true then
      b3()
    end
    if menu[4] == true then
      b4()
    end
    if menu[5] == true then
      b5()
    end
    if menu[6] == true then
      b6()
    end
    if menu[7] == true then
      b7()
    end
    if menu[8] == true then
      b8()
    end
    if menu[9] == true then
      b9()
    end
    if menu[10] == true then
      b10()
    end
    if menu[11] == true then
      b11()
    end
    if menu[12] == true then
      HOME()
    end
  end
  LW1 = 0
  LW2 = 0
end

function C()
  menu = gg.multiChoice({
    "头部真伤范围(全局)",
    "诛仙超级大范围(持枪)",
    "变态全身真伤范围(持枪)",
    "超级范围伤害",
    "最新真伤大范围",
    "头部追踪范围",
    "超级无敌头部范围",
    "范围拾取",
    "超级头部范围(全局)",
    "大范围",
    "全身范围",
    "诸神范围(全局)",
    "自改范围",
    "香蕉君增伤",
    "返回"
  }, nil, "范围专区")
  if menu == nil then
  else
    if menu[1] == true then
      c1()
    end
    if menu[2] == true then
      c2()
    end
    if menu[3] == true then
      c3()
    end
    if menu[4] == true then
      c4()
    end
    if menu[5] == true then
      c5()
    end
    if menu[6] == true then
      c6()
    end
    if menu[7] == true then
      c7()
    end
    if menu[8] == true then
      c8()
    end
    if menu[9] == true then
      c9()
    end
    if menu[10] == true then
      c10()
    end
    if menu[11] == true then
      c11()
    end
    if menu[12] == true then
      c12()
    end
    if menu[13] == true then
      c13()
    end
    if menu[14] == true then
      c14()
    end
    if menu[15] == true then
      HOME()
    end
  end
  GLWW = -1
end

function D()
  menu = gg.multiChoice({
    "地线",
    "上帝视角",
    "击杀特效",
    "准星加大",
    "旋转陀螺",
    "全屏准星",
    "秒开倍镜",
    "盒子天线",
    "蹲下右手路飞",
    "返回"
  }, nil, "功能")
  if menu == nil then
  else
    if menu[1] == true then
      d1()
    end
    if menu[2] == true then
      d2()
    end
    if menu[3] == true then
      d3()
    end
    if menu[4] == true then
      d4()
    end
    if menu[5] == true then
      d5()
    end
    if menu[6] == true then
      d6()
    end
    if menu[7] == true then
      d7()
    end
    if menu[8] == true then
      d8()
    end
    if menu[9] == true then
      d9()
    end
    if menu[10] == true then
      HOME()
    end
  end
  LW1 = 0
  LW2 = 0
end

function E()
  menu1 = gg.multiChoice({
    "全局加速开",
    "全局加速关闭",
    "全局加速修复伤害",
    "人物加速开",
    "人物加速关",
    "人物微加速",
    "返回上一页"
  }, nil, "加速专区")
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
      HOME()
    end
  end
  GLWW = -1
end

function F()
  menu1 = gg.multiChoice({
    "子弹穿墙",
    "微高跳",
    "头盔变大",
    "汽车锁油",
    "全车秒刹车",
    "蚁人",
    "虚体巨人",
    "手机振动",
    "返回上一页"
  }, nil, "娱乐专区")
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
    if menu1[7] == true then
      g8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  GLWW = -1
end

function K()
  menu1 = gg.choice({
    "防十年",
    "防禁网",
    "防十年备用",
    "防禁网备用",
    "防内存(半成品)",
    "防路飞防封",
    "返回上一页"
  }, nil, "主防和备用防只能开其中的一个")
  if menu1 == 1 then
    k5()
  end
  if menu1 == 2 then
    k6()
  end
  if menu1 == 3 then
    k1()
  end
  if menu1 == 4 then
    k2()
  end
  if menu1 == 5 then
    k3()
  end
  if menu1 == 6 then
    k4()
  end
  if menu1 == 7 then
    HOME()
  end
  GLWW = -1
end

function L()
  menu1 = gg.choice({
    "上帝视角",
    "变态全除",
    "单狙连狙",
    "右手路飞",
    "巨人模式(无伤害)",
    "屠城准心",
    "地图变暗",
    "护甲增加",
    "车辆(全车全开)",
    "枪械防抖",
    "单狙变连狙",
    "返回上一页"
  }, nil, "车辆是全车加速")
  if menu1 == 1 then
    l1()
  end
  if menu1 == 2 then
    l2()
  end
  if menu1 == 3 then
    l3()
  end
  if menu1 == 4 then
    l4()
  end
  if menu1 == 5 then
    l5()
  end
  if menu1 == 6 then
    l6()
  end
  if menu1 == 7 then
    l7()
  end
  if menu1 == 8 then
    l8()
  end
  if menu1 == 9 then
    l9()
  end
  if menu1 == 10 then
    l10()
  end
  if menu1 == 11 then
    l11()
  end
  if menu1 == 12 then
    HOME()
  end
  GLWW = -1
end

function N()
  menu1 = gg.multiChoice({
    "麒麟980透视",
    "麒麟通用透视",
    "麒麟六系列透视",
    "麒麟通用红",
    "麒麟通用绿",
    "麒麟通用防闪",
    "麒麟710透色",
    "麒麟去除胸罩",
    "麒麟通用上色",
    "去胸罩备用",
    "透视名字(聚乐园)",
    "返回上一页"
  }, nil, "麒麟专区麒麟710的数据比较大开启比较慢等待即可")
  if menu1 == nil then
  else
    if menu1[1] == true then
      m1()
    end
    if menu1[2] == true then
      m2()
    end
    if menu1[3] == true then
      m3()
    end
    if menu1[4] == true then
      m4()
    end
    if menu1[5] == true then
      m5()
    end
    if menu1[6] == true then
      m6()
    end
    if menu1[7] == true then
      n1()
    end
    if menu1[8] == true then
      n2()
    end
    if menu1[9] == true then
      m9()
    end
    if menu1[10] == true then
      m10()
    end
    if menu1[11] == true then
      m11()
    end
    if menu1[12] == true then
      HOME()
    end
  end
  GLWW = -1
end

function X()
  menu1 = gg.choice({
    "变态自瞄",
    "仓库锁头",
    "锁头自瞄",
    "开枪自瞄",
    "全屏自瞄",
    "返回上一页"
  }, nil, "自瞄只能开一个不能开多个")
  if menu1 == 1 then
    x1()
  end
  if menu1 == 2 then
    x2()
  end
  if menu1 == 3 then
    x3()
  end
  if menu1 == 4 then
    x4()
  end
  if menu1 == 5 then
    x5()
  end
  if menu1 == 6 then
    HOME()
  end
  GLWW = -1
end

function a1()
  Name = "流畅透视"
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {-1.6815581571897805E-44, 0},
    {4.925287423079891E21, -28},
    {4.906834486556694E21, -4}
  }
  local tb2 = {
    {5444, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {-2.5774194758203506E-39, 0},
    {6.087445810522475E21, -20},
    {6.105893117546138E21, -12},
    {5.626278334579643E21, -4}
  }
  local tb2 = {
    {5444, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  Name = "流畅上色"
  gg.setRanges(1048576)
  local dataType = 4
  local tb1 = {
    {8201, 0},
    {1661173789, -28},
    {1661239325, -12},
    {1194344481, -4}
  }
  local tb2 = {
    {7, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 4
  local tb1 = {
    {8201, 0},
    {738344998, -32},
    {2494642, -24}
  }
  local tb2 = {
    {7, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 4
  local tb1 = {
    {8200, 0},
    {1080033310, -12},
    {2031640, -8},
    {1080033304, -4}
  }
  local tb2 = {
    {7, 0}
  }
  SearchWrite(tb1, tb2, dataType)
end

function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("马赛克开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("透明化开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end

function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("835完美透视开启成功")
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end

function a4()
  gg.setRanges(1048576)
  local dataType = 16
  local Name = "模糊"
  local tb1 = {
    {3.75000405312, 0},
    {4.9252807E21, 8},
    {4.9068345E21, 16}
  }
  local tb2 = {
    {5444, 20}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local Name = "透明"
  local tb1 = {
    {5.6262676E21, 0},
    {6.0874458E21, 8},
    {6.1058931E21, 16}
  }
  local tb2 = {
    {5444, 28}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {1.1202017189786658E-19, -132},
    {3.76158192263132E-37, -124}
  }
  local tb2 = {
    {99999, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {1.1202010727438122E-19, -132},
    {9.80908925027372E-45, -128},
    {1.1202014604847243E-19, -124},
    {255, -8}
  }
  local tb2 = {
    {99999, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("671,236,113D;1,074,794,496D;8,201D;1,194,379,812D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("绿色上色")
end

function a5()
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {-5.5695588E-40, 0},
    {4.7408149E21, -4}
  }
  local tb2 = {
    {5444, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {-2.5774027E-39, 0},
    {5.6262783E21, -4}
  }
  local tb2 = {
    {5444, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {1.1202017189786658E-19, -132},
    {3.76158192263132E-37, -124}
  }
  local tb2 = {
    {99999, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {1.1202010727438122E-19, -132},
    {9.80908925027372E-45, -128},
    {1.1202014604847243E-19, -124},
    {255, -8}
  }
  local tb2 = {
    {99999, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 4
  local tb1 = {
    {8200, 0},
    {1661304844, -4}
  }
  local tb2 = {
    {6, 0}
  }
  SearchWrite(tb1, tb2, dataType)
end

function a6()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  local dataType = gg.TYPE_FLOAT
  Name = "马赛克"
  local tb1 = {
    {4.814603E21, 9420},
    {4.7408149E21, 9412}
  }
  local tb2 = {
    {9999, 9416}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("马赛克开启成功，正在开启透明码.................")
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  local dataType = gg.TYPE_FLOAT
  Name = "透明码"
  local tb1 = {
    {5.1466568E21, 18404},
    {5.6262783E21, 18396}
  }
  local tb2 = {
    {5444, 18400}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("透视开启成功")
  gg.setRanges(1048576 or 131072)
  local tb1 = {
    {
      tonumber("-1.7632431e-38"),
      tonumber("0")
    },
    {
      tonumber("-1.7632429e-38"),
      tonumber("-16")
    },
    {
      tonumber("4.5920551e-41"),
      tonumber("12")
    },
    {
      tonumber("4.5919149e-41"),
      tonumber("-4")
    }
  }
  local tb2 = {
    {
      tonumber("4.594157e-41"),
      tonumber("-4")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
end

function a7()
  gg.setRanges(1)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {3.1529215E-43, -4},
    {3.1669345E-43, 20},
    {3.1809475E-43, 44},
    {3.1949605E-43, 68}
  }
  local tb2 = {
    {120, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {4.4841551E-44, -4},
    {4.6242849E-44, 20}
  }
  local tb2 = {
    {129, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1)
  local dataType = 16
  local tb1 = {
    {2, 0},
    {3.1809475E-43, -4},
    {3.1949605E-43, 20}
  }
  local tb2 = {
    {125, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  Name = "615上色"
  gg.setRanges(1048576)
  local dataType = 4
  local search = {
    {8204, 0},
    {1669660674, -4}
  }
  local modify = {
    {11, 0}
  }
  SearchWrite(search, modify, dataType)
end

function a8()
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {-5.5695588E-40, 0},
    {4.814603E21, 4}
  }
  local tb2 = {
    {6444, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(1048576)
  local dataType = 16
  local tb1 = {
    {-2.5774027E-39, 0},
    {5.1466568E21, 4}
  }
  local tb2 = {
    {6444, 0}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("通用防闪开启成功")
  qmnb = {
    {memory = 1048576},
    {
      name = "吉利服补色"
    },
    {value = 8200, type = 4},
    {
      lv = 1669726218,
      offset = -4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 6,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  gg.setRanges(1048576)
  local dataType = 4
  local tb1 = {
    {8200, 0},
    {1194380045, 4}
  }
  local tb2 = {
    {7, 0}
  }
  SearchWrite(tb1, tb2, dataType)
end

function a9()
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end

function a10()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.793662e-43F;1.4012985e-45F;0.5F;360.0F;0.5F;776.0F:121", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(20)
  sl = gg.getResultCount()
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 2
          }
        })
      end
    end
  end
  gg.toast("透视联发科 P70")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.toast("联发科红色上色，正在进行中")
end

function a11()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.8530377e-34;1.2960464e-38;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;5.1567783e-43;1.4012985e-45;2.8025969e-45;0.5:289", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 2
  var[1].freeze = true
  var[2].value = 2
  var[2].freeze = true
  gg.addListItems(var)
  gg.clearResults()
  gg.toast("联发科P60透视")
end

function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("344", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("2", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56;48;16::32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_4_, _FORV_5_ in ipairs(t) do
        if _FORV_5_.flags == gg.TYPE_FLOAT then
          _FORV_5_.value = 80
          _FORV_5_.freeze = true
        end
      end
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearResults()
  gg.toast("君かげさがじくぇぉ透视开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("23;76;44;77;45;78:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("41", gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end

function a14()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("344", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("2", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56;48;16::32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function a15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("304D;328D;328D;64D;3,552D:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("64", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("61", gg.TYPE_DWORD)
  local t = gg.getResults(10)
  do
    do
      for _FORV_4_, _FORV_5_ in ipairs(t) do
        t[_FORV_4_].value = "61"
        t[_FORV_4_].freeze = true
      end
    end
  end
  gg.addListItems(t)
  gg.toast("透视成功")
end

function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-5.1210619E-18;1:20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("通用白色开启成功")
end

function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-100", gg.TYPE_FLOAT)
  gg.toast("通用黑色开启成功")
end

function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.7615819e-37;6.4459729e-44;0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("白嫖色开启")
end

function b4()
  qmnb = {
    {
      memory = gg.REGION_CODE_APP
    },
    {
      name = "全局午后"
    },
    {
      value = -2.9756183E20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -9.9839328E27,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -2.9766999E20,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -1.1149337E28,
      offset = 8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 8,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  Name = "超级无后"
  gg.setRanges(16384)
  SearchWrite({
    {-6.171954133480088E27, 0},
    {-2.78698202667584E28, -12},
    {-3.7444097189855772E28, -8},
    {-1.1368873507541788E-13, -4}
  }, {
    {0, -12}
  }, 16, Name)
  qmnb = {
    {memory = 16384},
    {
      name = "防抖开启中"
    },
    {value = -1476732160, type = 16},
    {
      lv = -3.7444097189855772E28,
      offset = 4,
      type = 16
    },
    {
      lv = -1.114450155758339E28,
      offset = 8,
      type = 16
    },
    {
      lv = 128,
      offset = 12,
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
    {memory = 16384},
    {
      name = "全枪防抖开启成功"
    },
    {value = -6.154945350000412E27, type = 16},
    {
      lv = -2.656333398413989E21,
      offset = 4,
      type = 16
    },
    {
      lv = -1.114450155758339E28,
      offset = 12,
      type = 16
    },
    {
      lv = 0,
      offset = 20,
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
    {memory = 16384},
    {
      name = "全局聚点"
    },
    {
      value = -1.2382423887994E28,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -1.4239332766331E28,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -1.1144501557583E28,
      offset = 8,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -1.8331474059342E27,
      offset = 12,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 90,
      offset = 8,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end

function b5()
  gg.setRanges(16384)
  local dataType = gg.TYPE_FLOAT
  Name = "除草除树"
  local tb1 = {
    {2.5514489E-20, 12000}
  }
  local tb2 = {
    {-1.2537316E28, 12268}
  }
  SearchWrite(tb1, tb2, dataType)
end

function b6()
  Name = "除雾"
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {-1.3620439E28, 0},
    {-2.3805859E21, -4},
    {-1.3978205E24, 4}
  }
  local modify = {
    {0, 0}
  }
  SearchWrite(search, modify, dataType)
end

function b7()
  qmnb = {
    {memory = 32},
    {name = "50%"},
    {
      value = tonumber("88.50576019287"),
      type = 16
    },
    {
      lv = tonumber("87.27782440186"),
      offset = tonumber("4"),
      type = 16
    },
    {
      lv = tonumber("-100.91194152832"),
      offset = tonumber("8"),
      type = 16
    },
    {
      lv = tonumber("1"),
      offset = tonumber("12"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("1.96875"),
      offset = tonumber("0"),
      type = 16
    },
    {
      value = tonumber("1.96875"),
      offset = tonumber("4"),
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "100%"},
    {
      value = tonumber("1.96875"),
      type = 16
    },
    {
      lv = tonumber("1.96875"),
      offset = tonumber("4"),
      type = 16
    },
    {
      lv = tonumber("-100.91194152832"),
      offset = tonumber("8"),
      type = 16
    },
    {
      lv = tonumber("1"),
      offset = tonumber("12"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("999"),
      offset = tonumber("12"),
      type = 16
    }
  }
  xqmnb(qmnb)
end

function b8()
  Name = "全枪瞬击"
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {-1.4278110478704994E28, 0},
    {8.562694393506966E-26, -12},
    {1.8175359108152E-27, -8}
  }
  local modify = {
    {-1.427802E28, 0}
  }
  SearchWrite(search, modify, dataType)
end

function b9()
  Name = "杀猪子弹"
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {-1.2516236E23, 0}
  }
  local modify = {
    {-1.98130876E28, 8},
    {-2.78596955E28, 16}
  }
  SearchWrite(search, modify, dataType, Name)
end

function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("啸天原创天线开启成功")
end

function b11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1024", 16)
  resultCounts = gg.getResultsCount()
  _UPVALUE1_ = gg.getResults(resultCounts)
  do
    do
      for _FORV_3_ = 1, resultCounts do
        values = {}
        values[1] = {}
        values[1].address = _UPVALUE1_[_FORV_3_].address - 4
        values[1].flags = 16
        values = gg.getValues(values)
        if values[1].value == 5000 then
          values = {}
          values[1] = {}
          values[1].address = _UPVALUE1_[_FORV_3_].address - 8
          values[1].flags = 16
          values = gg.getValues(values)
          if values[1].value == 3000 then
            values = {}
            values[1] = {}
            values[1].address = _UPVALUE1_[_FORV_3_].address - 12
            values[1].flags = 16
            values = gg.getValues(values)
            if values[1].value == 0.5 then
              setvalues = {}
              setvalues[1] = {}
              setvalues[1].address = _UPVALUE1_[_FORV_3_].address
              setvalues[1].flags = 16
              setvalues[1].value = 200000
              setvalues[2] = {}
              setvalues[2].address = _UPVALUE1_[_FORV_3_].address - 4
              setvalues[2].flags = 16
              setvalues[2].value = 200000
              setvalues[3] = {}
              setvalues[3].address = _UPVALUE1_[_FORV_3_].address - 8
              setvalues[3].flags = 16
              setvalues[3].value = 200000
              setvalues[4] = {}
              setvalues[4].address = _UPVALUE1_[_FORV_3_].address - 12
              setvalues[4].flags = 16
              setvalues[4].value = 200000
              gg.setValues(setvalues)
              gg.toast("秒落地开启成功")
            end
          end
        end
      end
    end
  end
end

function c1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("真伤头部范围开启成功")
end

function c2()
  gg.setRanges(32)
  local tb1 = {
    {
      tonumber("16"),
      tonumber("-4")
    },
    {
      tonumber("26"),
      tonumber("0")
    },
    {
      tonumber("-86.45767974854"),
      tonumber("-12")
    }
  }
  local tb2 = {
    {
      tonumber("99"),
      tonumber("0")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
  gg.toast("✨10%✨")
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {name = "✨20%✨"},
    {
      value = tonumber("9.20161819458"),
      type = gg.TYPE_FLOAT
    },
    {
      lv = tonumber("25"),
      offset = tonumber("28"),
      type = gg.TYPE_FLOAT
    },
    {
      lv = tonumber("30.5"),
      offset = tonumber("32"),
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = tonumber("240"),
      offset = tonumber("28"),
      type = gg.TYPE_FLOAT
    },
    {
      value = tonumber("240"),
      offset = tonumber("32"),
      type = gg.TYPE_FLOAT
    }
  }
  gg.toast("✨30%✨")
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨40%✨")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨50%✨")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨60%✨")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨70%✨")
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("✨80%✨")
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.toast("✨90%✨")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;27;2D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15;27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000000", gg.TYPE_FLOAT)
  gg.toast("✨100%✨")
  gg.toast("✨诛仙超大范围✨")
end

function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.toast("10%")
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("20%")
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("40%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("60%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("70%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("80%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("90%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.toast("变态全身真伤范围开启成功")
end

function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-92.2311706543;16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("16;26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-200", gg.TYPE_FLOAT)
  gg.toast("超级范围伤害开启成功")
end

function c5()
  qmnb = {
    {memory = 16384},
    {
      name = "头部范围"
    },
    {value = 1.4708926E-37, type = 16},
    {
      lv = 0.10000000149,
      offset = 8,
      type = 16
    }
  }
  qmxg = {
    {
      value = 80,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "真伤范围"
    },
    {
      value = 9.203507E-5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 25,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 30.5,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 400,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      value = 400,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end

function c6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("12.66705417633;28;15;26:5120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("330", gg.TYPE_FLOAT)
  gg.toast("头部范围追踪开启成功")
end

function c7()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.10000000149F;64.50088500977F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("80", gg.TYPE_FLOAT)
  gg.toast("超级无敌头部范围开启成功")
end

function c8()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {
    {200, 32064},
    {7.5279292E-24, 32004}
  }
  local tb2 = {
    {300, 32064}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("范围拾取开启成功")
end

function c9()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {
    {25, 26508},
    {9.203507E-5, 26728},
    {-1.31859207153, 26724},
    {9.20161819458, 26720}
  }
  local tb2 = {
    {699, 26732}
  }
  SearchWrite(tb1, tb2, dataType)
  local tb1 = {
    {30.5, 26752},
    {9.203507E-5, 26728},
    {-1.31859207153, 26724},
    {9.20161819458, 26720}
  }
  local tb2 = {
    {
      699,
      26752,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("头部范围已开启")
end

function c10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("正在开启第二步")
  gg.clearResults()
  gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("140", gg.TYPE_FLOAT)
  gg.toast("大范围开启成功")
end

function c11()
  gg.setRanges(32)
  local dataType = 16
  local Name = "头部范围"
  local tb1 = {
    {9.203507E-5, 0},
    {25, 20},
    {30.5, 24}
  }
  local tb2 = {
    {295, 20},
    {295, 24}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = 16
  local Name = "身体范围"
  local tb1 = {
    {-88.66608428955, 0},
    {16, 4},
    {26, 8}
  }
  local tb2 = {
    {-430, 8}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = 16
  local Name = "身体范围2"
  local tb1 = {
    {-88.73961639404, 0},
    {18, 4},
    {28, 8}
  }
  local tb2 = {
    {-530, 8}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = 16
  local Name = "全身范围"
  local tb1 = {
    {69.5, 0},
    {33, -4},
    {35, -8}
  }
  local tb2 = {
    {270, 0},
    {130, -4}
  }
  SearchWrite(tb1, tb2, dataType)
end

function c12()
  Fxs({
    {
      23,
      0,
      16
    },
    {
      25,
      4,
      16
    },
    {
      30.5,
      8,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      430,
      4,
      16
    },
    {
      430,
      8,
      16
    }
  }, 32, "✨20%✨")
  gg.clearResults()
  Fxs({
    {
      10,
      0,
      16
    },
    {
      35,
      24,
      16
    },
    {
      33,
      28,
      16
    },
    {
      69.5,
      32,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      24,
      16
    },
    {
      -430,
      28,
      16
    },
    {
      -430,
      32,
      16
    }
  }, 32, "✨30%✨")
  gg.clearResults()
  Fxs({
    {
      40,
      0,
      16
    },
    {
      33,
      4,
      16
    },
    {
      69.5,
      8,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      4,
      16
    },
    {
      -430,
      8,
      16
    }
  }, 32, "✨40%✨")
  gg.clearResults()
  Fxs({
    {
      16,
      0,
      16
    },
    {
      26,
      4,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      4,
      16
    }
  }, 32, "✨50%✨")
  gg.clearResults()
  Fxs({
    {
      18,
      0,
      16
    },
    {
      28,
      4,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      4,
      16
    }
  }, 32, "✨60%✨")
  gg.clearResults()
  Fxs({
    {
      45,
      0,
      16
    },
    {
      15,
      -8,
      16
    },
    {
      30,
      -4,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      -8,
      16
    },
    {
      -430,
      -4,
      16
    }
  }, 32, "✨70%✨")
  gg.clearResults()
  Fxs({
    {
      8,
      0,
      16
    },
    {
      15,
      4,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      4,
      16
    }
  }, 32, "✨80✨")
  gg.clearResults()
  Fxs({
    {
      18,
      0,
      16
    },
    {
      27.25,
      4,
      16
    }
  }, {
    {
      -430,
      0,
      16
    },
    {
      -430,
      4,
      16
    }
  }, 32, "✨90%✨")
  gg.clearResults()
  Fxs({
    {
      18.38787841797,
      0,
      16
    },
    {
      0.53869867325,
      4,
      16
    },
    {
      -3.42231750488,
      8,
      16
    }
  }, {
    {
      135,
      0,
      16
    }
  }, 32, "✨100%✨")
  gg.setRanges(gg.REGION_C_BSS)
  gg.toast("✨诸神级范围开启成功✨")
end

function c13()
  st = gg.prompt({
    "输入范围大小："
  }, {"300"})
  if st ~= nil then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1000)
    gg.editAll(st[1], gg.TYPE_FLOAT)
    gg.toast("超大范围开启成功")
  end
end

function c14()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君增伤🍌")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君独家追踪范围开启成功🍌")
end

function d1()
  Name = "地线1"
  gg.setRanges(32)
  local tb1 = {
    {
      tonumber("-1.68741369247"),
      tonumber("0")
    },
    {
      tonumber("0.33067199588"),
      tonumber("12")
    }
  }
  local tb2 = {
    {
      tonumber("-999999999"),
      tonumber("0")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
end

function d2()
  Name = "上帝视角"
  gg.setRanges(32)
  local tb1 = {
    {
      tonumber("3.3579315e-41"),
      tonumber("-136")
    },
    {
      tonumber("3.6025982e-41"),
      tonumber("-128")
    }
  }
  local tb2 = {
    {
      tonumber("2000"),
      tonumber("0")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
end

function d3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("击杀特效")
end

function d4()
  Name = "准星变大"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {16, 0},
    {4, -4},
    {8, 4}
  }
  local modify = {
    {120, 0}
  }
  SearchWrite(search, modify, dataType)
end

function d5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-2.3798068e21;0;-6.0775835e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("旋转陀螺开启")
end

function d6()
  Name = "全屏准星"
  gg.setRanges(16384)
  local dataType = 4
  local search = {
    {-486534859, 0},
    {-481230848, 172},
    {-481230847, 536},
    {-308299093, 2444}
  }
  local modify = {
    {0, 172},
    {0, 536},
    {0, 2444}
  }
  SearchWrite(search, modify, dataType)
end

function d7()
  Name = "秒开倍镜"
  gg.setRanges(32)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {
    {0.37999999523, 60128},
    {6.16031837463, 60116},
    {6.1603140831, 60108}
  }
  local tb2 = {
    {0, 60128}
  }
  SearchWrite(tb1, tb2, dataType)
end

function d8()
  Name = "盒子天线"
  gg.setRanges(1048576)
  local dataType = 16
  local search = {
    {14.79005432129, 0}
  }
  local modify = {
    {999999, 0}
  }
  SearchWrite(search, modify, dataType)
end

function d9()
  Name = "下蹲右手路飞"
  gg.setRanges(32)
  local dataType = gg.TYPE_QWORD
  local search = {
    {4548109841269983232, 0}
  }
  local modify = {
    {4548109841324179456, 0}
  }
  SearchWrite(search, modify, dataType)
end

function f1()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
  gg.setRanges(32)
  gg.toast("开启成功")
end

function f2()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,296,744,149,883,614,555", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
  gg.toast("关闭成功")
end

function f3()
  Name = "M416伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {88000, 0}
  }
  local modify = {
    {35000, 0}
  }
  SearchWrite(search, modify, dataType)
  Name = "QBZ，SC伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {87000, 0}
  }
  local modify = {
    {35000, 0}
  }
  SearchWrite(search, modify, dataType)
  Name = "AKM，大盘鸡伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {71500, 0}
  }
  local modify = {
    {350000, 0}
  }
  SearchWrite(search, modify, dataType)
  Name = "M716伤害"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {68000, 0}
  }
  local modify = {
    {35000, 0}
  }
  SearchWrite(search, modify, dataType)
end

function f4()
  gg.setRanges(16384)
  local tb1 = {
    {
      tonumber("6.1630904e-33"),
      tonumber("-4")
    },
    {
      tonumber("-9.9839328e27"),
      tonumber("4")
    },
    {
      tonumber("-1.0070975e28"),
      tonumber("16")
    }
  }
  local tb2 = {
    {
      tonumber("0"),
      tonumber("0")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(16384)
  local tb1 = {
    {
      tonumber("-1.0530367e28"),
      tonumber("-12")
    },
    {
      tonumber("-5.8454586e27"),
      tonumber("-8")
    },
    {
      tonumber("-2.7860151e28"),
      tonumber("0")
    },
    {
      tonumber("-3.7444097e28"),
      tonumber("4")
    },
    {
      tonumber("-2.793752e28"),
      tonumber("296")
    }
  }
  local tb2 = {
    {
      tonumber("0"),
      tonumber("0")
    },
    {
      tonumber("0"),
      tonumber("4")
    },
    {
      tonumber("0"),
      tonumber("296")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "加速开启中"
    },
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 2.3,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.setRanges(16384)
  local dataType = gg.TYPE_FLOAT
  Name = "趴下加速"
  local tb1 = {
    {-2.19893566E22, 14340}
  }
  local tb2 = {
    {-1.11446527E28, 14368}
  }
  SearchWrite(tb1, tb2, dataType)
end

function f5()
  gg.setRanges(16384)
  local tb1 = {
    {
      tonumber("6.1630904e-33"),
      tonumber("-4")
    },
    {
      tonumber("-9.9839328e27"),
      tonumber("4")
    },
    {
      tonumber("-1.0070975e28"),
      tonumber("16")
    }
  }
  local tb2 = {
    {
      tonumber("-6.1526231e27"),
      tonumber("0")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(16384)
  local tb1 = {
    {
      tonumber("-1.0530367e28"),
      tonumber("-12")
    },
    {
      tonumber("-5.8454586e27"),
      tonumber("-8")
    },
    {
      tonumber("0"),
      tonumber("0")
    },
    {
      tonumber("0"),
      tonumber("4")
    },
    {
      tonumber("0"),
      tonumber("296")
    }
  }
  local tb2 = {
    {
      tonumber("-2.7860151e28"),
      tonumber("0")
    },
    {
      tonumber("-3.7444097e28"),
      tonumber("4")
    },
    {
      tonumber("-2.793752e28"),
      tonumber("296")
    }
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "加速关闭中"
    },
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.toast("加速关闭中")
end

function f6()
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "人物微加速"
    },
    {
      value = 5.0000002E-4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.40000000596,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.0E-4,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1.08,
      offset = -12,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end

function g1()
  gg.setRanges(gg.REGION_C_BSS)
  gg.clearResults()
  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("子弹穿墙开启成功")
end

function g2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("843", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("高跳以开启")
end

function g3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287;87.27782440186;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("头盔变大开启")
end

function g4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("-999", 16)
  gg.toast("汽车锁油")
end

function g5()
  Name = "秒刹车"
  gg.setRanges(16)
  local dataType = 16
  local search = {
    {20, 0},
    {100, -8}
  }
  local modify = {
    {999999, 0}
  }
  SearchWrite(search, modify, dataType)
end

function g6()
  gg.alert("屏幕抖动属于正常现象")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_FLOAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("蚁人开启成功")
end

function g7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("实体巨人开启成功")
end

function g8()
  Name = "手机振动"
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {1.5909194E-36, 0},
    {0.30000001192, 4}
  }
  local modify = {
    {0, 4}
  }
  SearchWrite(search, modify, dataType)
end

function k1()
  gg.toast("正在开启.....")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", 16, false, 536870912, 0, -1)
  if gg.getResultCount() == 0 then
    gg.alert("搜索失败，重新运行游戏")
    gg.processKill()
    exit()
  else
    gg.searchNumber("2.2958874e-41", 16, false, 536870912, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    do
      for _FORV_3_ = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 4,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 8,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 12,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 16,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 0,
            flags = 4,
            freeze = true,
            value = 70086
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address + 64,
            flags = 4,
            freeze = true,
            value = 0
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address - 128,
            flags = 4,
            freeze = true,
            value = 177777
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[_FORV_3_].address - 132,
            flags = 4,
            freeze = true,
            value = 177777
          }
        })
        gg.toast("防十年开启成功")
        gg.toast("开启防举报")
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.2F;1.8F:9::1", 64, false, 536870912, 0, -1)
        gg.searchNumber("1.1F;1.4F:3::1", 64, false, 536870912, 0, -1)
        gg.searchNumber("1.1D;1.4D:2::10", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
        gg.getResults(100)
        gg.searchNumber("1.2F;1.8F:9::1", 64, false, 536870912, 0, -1)
        gg.searchNumber("1.1F;1.4F:3::1", 64, false, 536870912, 0, -1)
        gg.searchNumber("1.1D;1.4D:2::10", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
        gg.getResults(100)
        gg.searchNumber("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("5001", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.6", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.7", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.clearResults()
        gg.searchNumber("1.5;0.4::60", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.searchNumber("1.5", 64, false, 536870912, 0, -1)
        gg.getResults(10)
        gg.editAll("5", 64)
        gg.editAll("9", 64)
        gg.editAll("4.66", 64)
        gg.editAll("5.5", 64)
        gg.clearResults()
        gg.toast("开启新值防十年")
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("0.00000268536;6.66435296e-10", 16)
        gg.getResults(999)
        gg.editAll("7.69856500626", 16)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("909391408", 4)
        gg.getResults(999)
        gg.editAll("1089886885", 4)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("67109377", 4)
        gg.getResults(50000)
        gg.editAll("0", 4)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F;2.52466305e-29F:13", 16, false, 536870912, 0, -1)
        gg.searchNumber("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F", 16, false, 536870912, 0, -1)
        gg.editAll("0", 16)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("0.00000268536;6.66435296e-10", 16)
        gg.getResults(999)
        gg.editAll("7.69856500626", 16)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("909391408", 4)
        gg.getResults(999)
        gg.editAll("1089886885", 4)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.5047707e-36", 16)
        gg.getResults(50000)
        gg.editAll("0", 16)
        gg.clearResults()
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1.50472478e-36", 16)
        gg.getResults(50000)
        gg.editAll("0", 16)
        gg.clearResults()
        gg.searchNumber("131586", 4, false, 536870912, 0, -1)
        gg.getResults(15000)
        gg.editAll("0", 4)
        gg.clearResults()
        gg.searchNumber("12547", 4, false, 536870912, 0, -1)
        gg.getResults(15000)
        gg.editAll("0", 4)
        gg.clearResults()
        gg.setRanges(4)
        gg.searchNumber("1D;4,736D;-945,406,912D;65,535D;0D;-1,073,741,824D;1,150,199,959D;1,118,291,034D;1,752,132,736D;-393,244,672D:37", 4, false, 536870912, 0, -1)
        jg = gg.getResults(100)
        sl = gg.getResultCount()
        if 100 < sl then
          sl = 100
        end
        do
          do
            for _FORV_7_ = 1, sl do
              dzy = jg[_FORV_7_].address
              gg.addListItems({
                [1] = {
                  address = dzy,
                  flags = 16,
                  freeze = true,
                  value = -1
                }
              })
            end
          end
        end
        gg.toast("新值防封开启成功")
        gg.clearResults()
        gg.toast("过检测中........")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
        os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
        os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
        os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
        gg.toast("开启成功！开始奔放")
      end
    end
  end
end

function k2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.5584387e28", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.5584387e28", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.toast("结算防追封开启成功")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
end

function k3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.toast("正在开启")
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    do
      do
        for _FORV_3_ = 1, n do
          gg.addListItems({
            [1] = {
              address = jz[_FORV_3_].address + 100,
              flags = 4,
              freeze = true,
              value = 4451
            }
          })
        end
      end
    end
    gg.toast("开启成功")
  else
    gg.toast("开启失败")
  end
end

function k4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("18.38787841797", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38787841797", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", 16)
  gg.toast("修复下蹲路飞开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5.82142114639", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5.82142114639", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", 16)
  gg.toast("站立向前路飞开启成功")
end

function k5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("18812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(99999)
  sl = gg.getResultCount()
  if 99999 < sl then
    sl = 99999
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -1
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("10,249", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10,249", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(99999)
  sl = gg.getResultCount()
  if 99999 < sl then
    sl = 99999
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -1
          }
        })
      end
    end
  end
  gg.toast("开启成功")
end

function k6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67,109,633;67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(99999)
  sl = gg.getResultCount()
  if 99999 < sl then
    sl = 99999
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -1
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(99999)
  sl = gg.getResultCount()
  if 99999 < sl then
    sl = 99999
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -1
          }
        })
      end
    end
  end
  gg.toast("防封开启成功")
end

function l1()
  F = gg.alert("提示:\n觉得上帝视角很麻烦的话可以关闭", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("220;178;15 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(300)
    gg.editAll("530", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("上帝视角开启成功")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("530;178;15 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("530", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(300)
    gg.editAll("220", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("上帝视角关闭成功")
  end
end

function l2()
  F = gg.alert("提示:\n如果透视到人的话，就要立刻关上，这个功能是黑色天空2", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("000A90ED1C3400E3r", 32, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("000000001C3400E3r", 32)
    gg.toast("变态全除已成功")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("-2,089,612,932,236,181,504", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-2,089,612,928,250,541,568", gg.TYPE_QWORD)
    gg.toast("变态全除已关闭成功")
  end
end

function l3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("76000;1.89999997616;1.70000004768", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.89999997616;1.70000004768", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("98k连射开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("98k瞬击成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("79000;1.79999995232;1.70000004768", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("M24连射开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("M24瞬击成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("91,000.0F;2.29999995232F;1.79999995232F:512", 16, false, 536870912, 0, -1)
  gg.searchNumber("2.29999995232F;1.79999995232F:512", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("AWM连射开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("AWM瞬击成功")
end

function l4()
  qmnb = {
    {memory = 32},
    {
      name = "值站右手路飞"
    },
    {value = -2.83384513855, type = 16},
    {
      lv = 5.82142114639,
      offset = -4,
      type = 16
    },
    {
      lv = 0.19047555327,
      offset = 4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 80,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function l5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("实体巨人")
end

function l6()
  qmnb = {
    {memory = 32},
    {
      name = "全屏屠心"
    },
    {value = 16, type = 16},
    {
      lv = 4,
      offset = -4,
      type = 16
    },
    {
      lv = 8,
      offset = 4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 669,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function l7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.1400000006;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1400000006", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.5", gg.TYPE_FLOAT)
  gg.toast("地图变暗成功")
end

function l8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.0F;0.6;0.1;0.125F::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.toast("加强护甲——开启成功")
end

function l9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  gg.editAll("100.241295", 16)
  gg.clearResults()
  gg.toast("吉普加速")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车加速")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("吉普飞天")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.72727274895;0.34377467632;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;16;49;22050::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车飞天")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹦蹦加速")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("摩托车加速")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("-999", 16)
  gg.toast("汽车锁油")
  gg.toast("")
  qmnb = {
    {
      memory = gg.REGION_C_BSS
    },
    {
      name = "全车秒刹车"
    },
    {
      value = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 100,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 9999,
      offset = 0,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  Name = "车浮空"
  gg.setRanges(16384)
  SearchWrite({
    {-5.139455925665468E27, 0},
    {-7.583908064996921E27, 4},
    {-5.112866641183671E27, 8},
    {-1.2793503529145021E28, 12},
    {-7.600827713809233E27, 16},
    {-7.600830074992474E27, 20},
    {-7.593578290962217E27, 24}
  }, {
    {0, 0}
  }, 16, Name)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj = "1"
  gg.toast("全车加速已开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  g10sj = "0"
  gg.toast("全车加速已关闭")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end

function l10()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.9244102e12;7.3983547e31::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.9244102e12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(11)
  gg.editAll("3.9244102e11", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全局手部防抖已开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.0062189E22;3.9928675E24;3.9413961E12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7.0062189e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(111)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全局镜防抖已开启")
end

function l11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("76000;1.89999997616;1.70000004768", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.89999997616;1.70000004768", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("98k连射开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("98k瞬击成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("79000;1.79999995232;1.70000004768", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("M24连射开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("M24瞬击成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("91,000.0F;2.29999995232F;1.79999995232F:512", 16, false, 536870912, 0, -1)
  gg.searchNumber("2.29999995232F;1.79999995232F:512", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("AWM连射开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("AWM瞬击成功")
end

function n1()
  qmnb = {
    {memory = 4},
    {
      name = "完美透视1"
    },
    {value = 112, type = 4},
    {
      lv = 0,
      offset = -4,
      type = 4
    },
    {
      lv = 344,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 4,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {
      name = "完美透视2"
    },
    {value = 112, type = 4},
    {
      lv = 0,
      offset = -4,
      type = 4
    },
    {
      lv = 0,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 4,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function n2()
  qmnb = {
    {memory = 4},
    {name = "去胸罩"},
    {value = 16, type = 4},
    {
      lv = 801112064,
      offset = -4,
      type = 4
    },
    {
      lv = 734003200,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 24,
      offset = 0,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function m1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("112;256;128;2848;352;32;384;16;2848;336;16;272;332;352;368;384;388;392;396;400;404;468;784;734,003,200;64;16;4095;4095;4095;4095;4095;112:6477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("4", gg.TYPE_DWORD)
  gg.toast("980透视开启成功")
end

function m2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.12103877e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
            value = 2
          }
        })
      end
    end
  end
  gg.toast("透视成功")
  gg.clearResults()
end

function m3()
  qmnb = {
    {memory = 4},
    {
      name = "麒麟6系列透视"
    },
    {value = 0.5, type = 16},
    {
      lv = 268,
      offset = 4,
      type = 16
    },
    {
      lv = 268,
      offset = 8,
      type = 16
    },
    {
      lv = 480,
      offset = 12,
      type = 16
    },
    {
      lv = 0.5,
      offset = 16,
      type = 16
    },
    {
      lv = 480,
      offset = 20,
      type = 16
    },
    {
      lv = 1.00000011921,
      offset = 24,
      type = 16
    },
    {
      lv = 1.00000011921,
      offset = 28,
      type = 16
    },
    {
      lv = 2.569395E-10,
      offset = 64,
      type = 16
    },
    {
      lv = 8.785885E-5,
      offset = 68,
      type = 16
    },
    {
      lv = 0.65723782778,
      offset = 72,
      type = 16
    },
    {
      lv = 14.57730102539,
      offset = 76,
      type = 16
    },
    {
      lv = 4.1242075E-4,
      offset = 80,
      type = 16
    },
    {
      lv = 0.02505219355,
      offset = 84,
      type = 16
    },
    {
      lv = 6.75781E-5,
      offset = 88,
      type = 16
    },
    {
      lv = 0.00782599207,
      offset = 92,
      type = 16
    },
    {
      lv = 0.00782405864,
      offset = 96,
      type = 16
    },
    {
      lv = 0.00782680511,
      offset = 100,
      type = 16
    },
    {
      lv = 1.3813413E-16,
      offset = 112,
      type = 16
    },
    {
      lv = 2.1466491E-41,
      offset = 116,
      type = 16
    },
    {
      lv = 7.6824924E21,
      offset = 128,
      type = 16
    },
    {
      lv = 0.00783725083,
      offset = 132,
      type = 16
    },
    {
      lv = 0.00782680511,
      offset = 144,
      type = 16
    },
    {
      lv = 1.7506422E-41,
      offset = 148,
      type = 16
    },
    {
      lv = 0.0078125,
      offset = 156,
      type = 16
    },
    {
      lv = 0.04523181915,
      offset = 160,
      type = 16
    },
    {
      lv = 1.9202086E-7,
      offset = 164,
      type = 16
    },
    {
      lv = 0.04523181915,
      offset = 168,
      type = 16
    },
    {
      lv = 1.6606788E-41,
      offset = 172,
      type = 16
    },
    {
      lv = 0.00782680511,
      offset = 200,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 16,
      freeze = true
    }
  }
  xqmnb(qmnb)
end

function m4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16;32;40::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("26", gg.TYPE_DWORD)
  gg.toast("红色第一步成功")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("26;32;40::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("42", gg.TYPE_DWORD)
  gg.toast("红色开启成功")
end

function m5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16;32;40::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("28", gg.TYPE_DWORD)
  gg.toast("绿色第一步成功")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("28;32;40::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("45", gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end

function m6()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
            value = 0
          }
        })
      end
    end
  end
  gg.toast("防闪开启成功")
  gg.clearResults()
end

function m7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("白色开启成功")
end

function m8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("黑色开启成功")
end

function m9()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3,152,519,739,159,347,240", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("288888", gg.TYPE_QWORD)
  gg.toast("去胸罩开启成功")
  gg.clearResults()
end

function m10()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16D;32D;40D::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16;32;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("26;36", gg.TYPE_DWORD)
  gg.toast("黄色开启成功")
  gg.clearResults()
end

function m11()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("720576352751714304", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
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
            flags = gg.TYPE_QWORD,
            freeze = true,
            value = 720576352751714304
          }
        })
      end
    end
  end
  gg.toast("透视开启成功")
  gg.clearResults()
end

function x1()
  Name = "持枪自瞄"
  gg.setRanges(16384)
  SearchWrite({
    {-1.2573531344941352E23, 0},
    {-9.90656151829801E27, -40}
  }, {
    {-9.9066194E27, -40}
  }, 16, Name)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("持枪自瞄")
  Name = "开火自瞄"
  gg.setRanges(16384)
  SearchWrite({
    {5.819133540166275E-26, 0},
    {-3.696554925989424E20, -12}
  }, {
    {-3.6965553E20, -12}
  }, 16, Name)
  Name = "开火自瞄"
  gg.setRanges(16384)
  SearchWrite({
    {2.641425091258327E29, 0},
    {1.8526925134222195E28, -104}
  }, {
    {-3.6965553E20, -104}
  }, 16, Name)
  Name = "趴下照锁"
  SearchWrite({
    {-1905867063313810944, 0}
  }, {
    {-1324327739884306432, -12}
  }, 32)
  Name = "全图距离"
  gg.setRanges(16384)
  SearchWrite({
    {-2.952560267547818E20, 0},
    {-3.8685626227668134E25, 8}
  }, {
    {-9.9066182E27, 0},
    {-9.9066182E27, 4},
    {-9.9066182E27, -4}
  }, 16, Name)
  Name = "全图距离"
  gg.setRanges(16384)
  SearchWrite({
    {4.387686491826876E31, 0},
    {1.9938161152173576E-19, -92}
  }, {
    {-9.9066182E27, -92}
  }, 16, Name)
  Name = "频率自瞄"
  gg.setRanges(16384)
  SearchWrite({
    {4.5422619231892774E30, 0},
    {15149272399872, -44}
  }, {
    {-9.9839906E27, -44}
  }, 16, Name)
  Name = "近远自瞄"
  gg.setRanges(16384)
  SearchWrite({
    {9.999999747378752E-5, 0},
    {360, -12},
    {-360, -8},
    {180, -4},
    {-1.0153182385499395E28, 8}
  }, {
    {9999, 0}
  }, 16, Name)
  gg.toast("开启成功")
end

function x2()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1,903,878,029,645,852,271;-2,188,696,617,083,723,770;-1,246,077,898,151,949,759:97", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1,246,077,898,151,949,759", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("-1,246,077,898,151,949,749", gg.TYPE_QWORD)
  gg.toast("仓库锁头已开启")
end

function x3()
  gg.setRanges(16384)
  SearchWrite({
    {"360", "-12"},
    {"0.0001", "0"},
    {"1478828288", "84"}
  }, {
    {"99999", "0"}
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {3.5, 3296},
    {1, 3300},
    {1, 3304},
    {1, 3308},
    {1, 3312},
    {0.5, 3316},
    {0.5, 3324},
    {200, 3348},
    {20, 3352},
    {20, 3364}
  }, {
    {999999999, 3296},
    {999999999, 3300},
    {999999999, 3304},
    {999999999, 3308},
    {999999999, 3312},
    {999999999, 3316},
    {999999999, 3324},
    {999999999, 3348},
    {999999999, 3352},
    {999999999, 3364}
  }, 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("哲学锁头开启成功")
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("25")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("50")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("75")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("100")
  gg.toast("锁头开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({
    {"360", "-12"},
    {"0.0001", "0"},
    {"1478828288", "84"}
  }, {
    {"99999", "0"}
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {3.5, 3296},
    {1, 3300},
    {1, 3304},
    {1, 3308},
    {1, 3312},
    {0.5, 3316},
    {0.5, 3324},
    {200, 3348},
    {20, 3352},
    {20, 3364}
  }, {
    {999999999, 3296},
    {999999999, 3300},
    {999999999, 3304},
    {999999999, 3308},
    {999999999, 3312},
    {999999999, 3316},
    {999999999, 3324},
    {999999999, 3348},
    {999999999, 3352},
    {999999999, 3364}
  }, 16)
  gg.toast("子弹锁头")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-8.3527253e22;-5.4561862e27;-5.9075698e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.4561862e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("自瞄开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360.0;0.0001;-1.0153182e28:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("自瞄锁身开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("-1.0e10", gg.TYPE_FLOAT)
  gg.toast("自瞄锁头开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("25")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("50")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("75")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("100")
  gg.toast("锁头开启成功")
end

function x4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("暴力开枪自瞄开启成功")
end

function x5()
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "内存自瞄"
    },
    {
      value = 3.5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 2.20000004768,
      offset = -44,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.5,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.10000000149,
      offset = 24,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.5,
      offset = 28,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.80000001192,
      offset = 32,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 0.80000001192,
      offset = 36,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 200,
      offset = 52,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 20,
      offset = 56,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 100,
      offset = 60,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 99999,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      value = 99999,
      offset = 8,
      type = gg.TYPE_FLOAT
    },
    {
      value = 99999,
      offset = 12,
      type = gg.TYPE_FLOAT
    },
    {
      value = 99999,
      offset = 16,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.setRanges(16384)
  local tb1 = {
    {"360", "-12"},
    {"0.0001", "0"},
    {"1478828288", "84"}
  }
  local tb2 = {
    {"99999", "0"}
  }
  local dataType = 16
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(32)
  local dataType = 16
  local tb1 = {
    {3.5, 3296},
    {1, 3300},
    {1, 3304},
    {1, 3308},
    {1, 3312},
    {0.5, 3316},
    {0.5, 3324},
    {200, 3348},
    {20, 3352},
    {20, 3364}
  }
  local tb2 = {
    {999999999, 3296},
    {999999999, 3300},
    {999999999, 3304},
    {999999999, 3308},
    {999999999, 3312},
    {999999999, 3316},
    {999999999, 3324},
    {999999999, 3348},
    {999999999, 3352},
    {999999999, 3364}
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {-1.555965707145412E26, 0}
  }
  local modify = {
    {-3.86856308E25, 92}
  }
  SearchWrite(search, modify, dataType, Name)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("180", gg.TYPE_FLOAT)
  gg.toast("内存自瞄已成功")
end

function Exit()
  print("啸天牛逼此脚本是啸天一人完成没有什么联合什么的不要上当受骗")
  os.exit()
end

function HOME()
  kele0 = 1
  Main()
end

cs = "我太难了"
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
