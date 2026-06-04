

local _KY, jldz, jmzj = function(mtz, mzj)
  do
    do
      for _FORV_5_ = 1, 10 do
        mtz = mtz:gsub(mzj[_FORV_5_], _FORV_5_ - 1)
      end
    end
  end
  return mtz
end
, {}, {}
do
  do
    for _FORV_6_ = 1, 10 do
      jmzj[_FORV_6_] = debug.getinfo(_KY)[string.char(115, 111, 117, 114, 99, 101)]:sub(_FORV_6_, _FORV_6_)
    end
  end
end
function KYXG(DZ, XGSJ, GNM, JLDZ)
  local t = {}
  do
    do
      for _FORV_8_ = 1, #DZ do
        do
          for _FORV_12_, _FORV_13_ in ipairs(XGSJ) do
            offset = _FORV_13_[1] * 4
            t[#t + 1] = {}
            t[#t].address = DZ[_FORV_8_] + offset
            t[#t].flags = _FORV_13_[2]
            t[#t].value = _FORV_13_[3]
            if _FORV_13_[4] == true then
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
  gg.toast("开启成功")
end

function KY_ZZ(NCLX, SSSJ, XGSJ, GNM)
  gg.setVisible(false)
  if jldz[NCLX[4]] == nil then
    gg.clearResults()
    gg.setRanges(NCLX[1])
    gg.searchNumber(NCLX[2], NCLX[3])
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {}
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
          for _FORV_10_ = 1, #SSSJ do
            local tmp = {}
            local offset = _KY(SSSJ[_FORV_10_][1], jmzj) * 4
            local num = _KY(SSSJ[_FORV_10_][2], jmzj)
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
                if _FORV_18_.value ~= num then
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
      if data[1] == nil then
        gg.toast("开启成功")
      elseif NCLX[4] ~= false then
        jldz[NCLX[4]] = data
        KYXG(data, XGSJ, GNM, "已记录")
      else
        KYXG(data, XGSJ, GNM, "搜索到")
      end
    else
      gg.toast("开启失败")
    end
  else
    KYXG(jldz[NCLX[4]], XGSJ, GNM, "调用到")
  end
end

function SearchWrite(Search, Write, Type)
  gg.clearResults()
  gg.setVisible(false)
  gg.searchNumber(Search[1][1] * -1, Type)
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
      gg.toast("注入成功")
    else
      return false
    end
  else
    return false
  end
end

function SearchWriteohnb(Search, Write, Ohnb)
  gg.clearResults()
  gg.setVisible(false)
  SH_searchNumber(Search[1][1], Ohnb)
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
      gg.toast("修改" .. #data .. "条数据.开启成功")
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
                t[#t].flags = Ohnb
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
      gg.toast("搜索0条数据.修改失败", false)
      return false
    end
  else
    gg.toast("搜索0条数据.修改失败")
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
    gg.toast(qmnb[2].name .. "注入失败")
  else
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    gg.refineNumber(qmnb[3].value, qmnb[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(qmnb[2].name .. "注入失败")
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
        gg.toast(qmnb[2].name .. "注入成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(qmnb[2].name .. "注入失败")
      end
    end
  end
end

gg.alert("💘如需要高级版，＋q1923093205💘")
function Main5()
  menu4 = gg.choice({
    "💘人物专区💘",
    "💘枪械专区💘",
    "💘拆家专区💘",
    "💘BT专区💘",
    "💘功能类💘"
  }, nil, "")
  if menu4 == 1 then
    Main6()
  end
  if menu4 == 2 then
    Main7()
  end
  if menu4 == 3 then
    Main8()
  end
  if menu4 == 4 then
    Main9()
  end
  if menu4 == 5 then
    Main90()
  end
  XGCK = -1
end

function Main9()
  menu5 = gg.choice({
    "💘循环天线💘",
    "💘水下开车/行走💘",
    "💘实体隐身💘",
    "💘如需要高级版＋q1923093205💘"
  }, nil, "")
  if menu5 == 1 then
    N1()
  end
  if menu5 == 2 then
    N4()
  end
  if menu5 == 3 then
    N3()
  end
  if menu5 == 4 then
    N4()
  end
  XGCK = -1
end

function N4()
  F = gg.alert("💘水下开车💘", "💘开启💘", "💘关闭💘")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("💘水下行走开启💘")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("10000", gg.TYPE_FLOAT)
    gg.toast("💘关闭水下行走💘")
  end
end

function N4()
  F = gg.alert("  💘教程💘：\n  💘游戏里开启第一步，开启成功后，返回大厅，重新进游戏，然后开始第二步即可定怪💘\n\n  💘注：无效果换号即可💘", "  💘第一步💘", "  💘第二步💘")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("16", gg.TYPE_DWORD)
    gg.toast("💘第一步成功💘")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("17", gg.TYPE_DWORD)
    gg.toast("💘第二步成功💘")
  end
end

function N1()
  gg.clearResults()
  if gg.isVisible() == true then
  else
    qmnb = {
      {memory = 4},
      {name = "天线"},
      {value = 0.16947640478610992, type = 16},
      {
        lv = -0.16947640478610992,
        offset = 20,
        type = 16
      }
    }
    qmxg = {
      {
        value = -999,
        offset = 0,
        type = 16
      }
    }
    xqmnb(qmnb)
    if gg.isVisible() == true then
    else
      N1()
    end
  end
end

function N2()
  gg.clearResults()
  gg.setRanges(32)
  SearchWrite({
    {-1111490560, 6584},
    {0, 6588},
    {0, 6596}
  }, {
    {
      1084410514,
      6584,
      false
    }
  }, 4)
  gg.clearResults()
  gg.setRanges(32)
  gg.toast("30%")
  SearchWrite({
    {-1110704128, 36264},
    {0, 36256},
    {0, 36268}
  }, {
    {
      1084410514,
      36264,
      false
    }
  }, 4)
  gg.toast("80%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
  L45_493278 = gg.getResults(100)
  L50_493283 = gg.getResultCount()
  if 100 < L50_493283 then
    L50_493283 = 100
  end
  do
    do
      for _FORV_3_ = 1, L50_493283 do
        L54_493286 = L45_493278[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = L54_493286,
            flags = 16,
            freeze = true,
            value = 5
          }
        })
      end
    end
  end
  gg.toast("💘小毅💘")
  gg.clearResults()
end

function N3()
  F = gg.alert(" 💘隐身教程💘：\n 💘人物隐身💘：\n  💘需要任意载具配合开启💘\n  💘点击乘坐，在车上开启第一步💘\n  💘开启成功后，点击下车，然后开启第二步即可隐身💘\n\n  💘注：请在人物可视范围内开启，距离过远无效💘", "  💘第一步💘", "  💘第二步💘")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("17D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("16", gg.TYPE_DWORD)
    gg.toast("第一步成功")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("16D;65537;65636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("17", gg.TYPE_DWORD)
    gg.toast("第二步成功")
  end
end

function Main6()
  menu1 = gg.choice({
    "💘角色天线＋骁龙蓝💘",
    "💘全处理器上色💘",
    "💘第五人称💘",
    "💘半透视(最低画质)💘",
    "💘倒地加速💘",
    "💘如需要高级版＋q1923093205💘"
  }, nil, "")
  if menu1 == 1 then
    A1()
  end
  if menu1 == 2 then
    A4()
  end
  if menu1 == 3 then
    A3()
  end
  if menu1 == 4 then
    A2()
  end
  if menu1 == 5 then
    m1()
  end
  if menu1 == 6 then
    C4()
  end
  XGCK = -1
end

function A4()
  local a = gg.prompt({
    "💘全处理器上色💘💘输入【999】为人物白色💘\n💘输入【-999】为人物黑色💘"
  }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1]
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2;-1;3;0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll(a, gg.TYPE_FLOAT)
    gg.toast("开启成功")
  end
end

function Main7()
  menu2 = gg.choice({
    "💘全枪无后💘",
    "💘全枪射速💘",
    "💘内存自瞄💘",
    "💘机瞄路飞💘",
    "💘带镜路飞💘",
    "💘机瞄八倍💘",
    "💘如需要高级版＋q1923093205💘"
  }, nil, "")
  if menu2 == 1 then
    A9()
  end
  if menu2 == 2 then
    Q1()
  end
  if menu2 == 3 then
    M12()
  end
  if menu2 == 4 then
    A10()
  end
  if menu2 == 5 then
    A11()
  end
  if menu2 == 6 then
    N2()
  end
  if menu2 == 7 then
    C3()
  end
  XGCK = -1
end

function Main8()
  menu3 = gg.choice({
    "💘浮空建筑💘",
    "💘建筑框透💘",
    "💘建筑全透💘",
    "💘建筑定位💘",
    "💘如需要高级版＋q1923093205💘"
  }, nil, "")
  if menu3 == 1 then
    A8()
  end
  if menu3 == 2 then
    A7()
  end
  if menu3 == 3 then
    A6()
  end
  if menu3 == 4 then
    A5()
  end
  if menu3 == 5 then
    Main5()
  end
  XGCK = -1
end

function Q1()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("940000000", 4)
  gg.toast("全抢射速已开启️")
  gg.clearResults()
end

function Main90()
  menu7 = gg.choice({
    "💘人物天线💘",
    "💘地图变化(最低画质)💘",
    "💘第五人称💘",
    "💘人物高光💘",
    "💘建筑定位💘",
    "💘建筑透视💘",
    "💘建筑框透💘",
    "💘强制建筑(GM同款)💘",
    "💘枪械无后💘",
    "💘机瞄路飞💘",
    "💘带镜路飞💘",
    "💘近战范围(禁枪)💘",
    "💘子弹穿墙(事先建建筑)💘",
    "💘子弹穿墙关💘",
    "💘一秒五刀💘",
    "💘范围刀💘",
    "💘如需要高级版＋q1923093205💘"
  }, nil, "")
  if menu7 == 1 then
    A1()
  end
  if menu7 == 2 then
    A2()
  end
  if menu7 == 3 then
    A3()
  end
  if menu7 == 4 then
    A4()
  end
  if menu7 == 5 then
    A5()
  end
  if menu7 == 6 then
    A6()
  end
  if menu7 == 7 then
    A7()
  end
  if menu7 == 8 then
    A8()
  end
  if menu7 == 9 then
    A9()
  end
  if menu7 == 10 then
    A10()
  end
  if menu7 == 11 then
    A11()
  end
  if menu7 == 12 then
    A12()
  end
  if menu7 == 13 then
    C1()
  end
  if menu7 == 14 then
    C2()
  end
  if menu7 == 15 then
    B1()
  end
  if menu7 == 16 then
    B2()
  end
  if menu7 == 17 then
    Main5()
  end
  XGCK = -1
end

function A15()
  B1()
  B2()
  B3()
end

function A16()
  B4()
end

function m1()
  F = gg.alert("💘倒地加速开关选择💘", "开", "关")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.4975935e19;-1.0239434e32;-2.0:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-11", gg.TYPE_FLOAT)
    gg.toast(" 倒地加速开启成功️  ")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-7.4975935e19;-1.0239434e32;-11:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-2", gg.TYPE_FLOAT)
    gg.toast(" 倒地加速关闭成功️  ")
  end
end

function A14()
  xx1 = 4
  xx2 = 3.7
  xx3 = 7.6
  xx4 = 2.8
  cao1 = xx1 - xx4
  cao2 = cao1 + xx4
  cao3 = xx2 - xx3
  cao4 = cao3 + 4
  cao5 = xx1 - 1
  xx6 = cao2 * -216
  gg.clearList()
  gg.clearResults()
  gg.setRanges(32)
  local dataType = 16
  local tb1 = {
    {
      -cao4,
      0
    },
    {7.8472714E-44, -24},
    {0, 36}
  }
  local tb2 = {
    {
      0.1,
      40,
      false
    },
    {
      0.1,
      44,
      false
    },
    {
      0.1,
      48,
      false
    },
    {
      0.1,
      52,
      false
    },
    {
      1.0E19,
      128,
      false
    },
    {
      40,
      196,
      false
    },
    {
      200,
      192,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  local dataType = 16
  local tb1 = {
    {
      -cao4,
      0
    },
    {8.9683102E-44, -24},
    {0, 36}
  }
  local tb2 = {
    {
      0.1,
      40,
      false
    },
    {
      0.1,
      44,
      false
    },
    {
      0.1,
      48,
      false
    },
    {
      0.1,
      52,
      false
    },
    {
      1.0E19,
      128,
      false
    },
    {
      40,
      196,
      false
    },
    {
      200,
      192,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  local dataType = 16
  local tb1 = {
    {-1.0E19, 0},
    {1, -12},
    {2000, 40}
  }
  local tb2 = {
    {
      10000,
      0,
      false
    },
    {
      1500,
      64,
      false
    },
    {
      -1,
      68,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  local dataType = 16
  local tb1 = {
    {-1.0E19, 0},
    {20, -12},
    {80, 40}
  }
  local tb2 = {
    {
      -100,
      64,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(4)
  local dataType = gg.TYPE_DWORD
  local tb1 = {
    {
      xx6,
      0
    },
    {1063425514, -156},
    {1019625236, -152},
    {-1125603554, -160},
    {-1090519040, -144}
  }
  local tb2 = {
    {
      1,
      8,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  local dataType = gg.TYPE_DWORD
  local tb1 = {
    {
      xx6,
      0
    },
    {1063415448, -156}
  }
  local tb2 = {
    {
      1,
      8,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  local dataType = gg.TYPE_DWORD
  local tb1 = {
    {
      xx6,
      0
    },
    {1077237078, 8}
  }
  local tb2 = {
    {
      1,
      8,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  local dataType = gg.TYPE_DWORD
  local tb1 = {
    {
      xx6,
      0
    },
    {1076957458, 8}
  }
  local tb2 = {
    {
      1,
      8,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  gg.toast("全枪秒换")
  gg.clearList()
  gg.clearResults()
end

function B1()
  SearchWrite({
    {-1.2107219E-42, 0},
    {0.90000003576, 8}
  }, {
    {
      0.48,
      4,
      false
    }
  }, 16)
  gg.clearResults()
  SearchWrite({
    {-1.2107219E-42, 0},
    {-2, 12},
    {5.49309E-43, 56}
  }, {
    {
      0.48,
      4,
      false
    },
    {
      0.90000003576,
      8,
      false
    }
  }, 16)
  gg.toast("💘一秒五刀💘")
end

function B2()
  gg.alert("  💘小毅十米范围刀💘  ")
  while true do
    gg.searchNumber("0.1099999993~0.1099999994", 16, false, 536870912, 0, -1)
    gg.searchNumber("0.1099999993~0.1099999994", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("5", 16)
    gg.searchNumber("0.1099999993~0.1099999994", 16, false, 536870912, 0, -1)
    gg.searchNumber("0.1099999993~0.1099999994", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("5", 16)
    if gg.isVisible(true) then
      break
    end
  end
end

function B3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.5;1.5;40;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999999)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("镜头固定")
end

function B4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("95;101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("射速增加")
end

function A13()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.60000002384F;0.73000001907F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("60%")
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
  gg.toast("100%")
end

function M12()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.34999999404;-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.47552727e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("自瞄")
end

function B0()
  F = gg.alert("【GM工具登陆界面开】", "GM工具", "防止拉回【暂未开放】")
  if F == 1 then
    gg.setRanges(32)
    local dataOhnb = 4
    local tb1 = {
      {16777216, 0},
      {0, -48}
    }
    local tb2 = {
      {
        1,
        -48,
        true
      }
    }
    SearchWriteohnb(tb1, tb2, dataOhnb)
    gg.clearList()
  elseif F == 2 then
    gg.alert("暂未开启")
  end
end

function A10()
  F = gg.alert("【请选择机瞄路飞模式】", "向上路飞", "向下路飞")
  if F == 1 then
    AS()
  elseif F == 2 then
    AX()
  end
end

function AS()
  F = gg.alert("【向上机瞄路飞选择】", "开启", "关闭")
  if F == 1 then
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "17",
        "16",
        "1.8"
      }
    }, "机瞄路飞")
    gg.clearList()
  elseif F == 2 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "17",
        "16",
        "0"
      }
    }, "机瞄路飞")
    gg.clearList()
  end
end

function AX()
  F = gg.alert("【向下机瞄路飞选择】", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "17",
        "16",
        "-1.8"
      }
    }, "机瞄路飞")
    gg.clearList()
  elseif F == 2 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "17",
        "16",
        "0"
      }
    }, "机瞄路飞")
    gg.clearList()
  end
end

function A11()
  F = gg.alert("【请选择带镜路飞模式】", "向上路飞", "向下路飞")
  if F == 1 then
    ASS()
  elseif F == 2 then
    AXX()
  end
end

function ASS()
  F = gg.alert("【向上带镜路飞模式】", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "15",
        "16",
        "-1.8"
      }
    }, "带镜路飞")
    gg.clearList()
  elseif F == 2 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "15",
        "16",
        "0"
      }
    }, "带镜路飞")
    gg.clearList()
  end
end

function AXX()
  F = gg.alert("【向下带镜路飞模式】", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "15",
        "16",
        "1.8"
      }
    }, "带镜路飞")
    gg.clearList()
  elseif F == 2 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "15",
        "16",
        "0"
      }
    }, "带镜路飞")
    gg.clearList()
  end
end

function A1()
  gg.clearResults()
  qmnb = {
    {memory = 4},
    {name = "天线"},
    {value = 0.16947640478610992, type = 16},
    {
      lv = -0.16947640478610992,
      offset = 20,
      type = 16
    }
  }
  qmxg = {
    {
      value = -999,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("-12.0;-1.0;-2.0;-0.03999999911;-0.9599609375:41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.3981491e21;3.7615819e-37;16.0;-12.0;3.0;2.0;-1.0;-2.0;-0.0:141", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("骁龙蓝色")
  gg.clearResults()
end

function A2()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2.8133309e-40", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setRanges(131072)
  local dataType = 16
  local tb1 = {
    {-150, 8836},
    {-30, 8832},
    {0.00999999978, 8840}
  }
  local tb2 = {
    {
      0,
      8840,
      false
    }
  }
  SearchWrite(tb1, tb2, dataType)
  gg.setRanges(131072)
  gg.searchNumber("3.4897587e-39", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.searchNumber("1,669,499,405", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", 4)
  gg.clearResults()
  gg.toast("地图优化")
end

function A3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.70000004768;1.85000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_FLOAT)
  gg.toast("  人称视角已开启️  ")
end

function A12()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  if gg.isVisible() == true then
  else
    gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.isVisible() == true then
    else
      gg.searchNumber("0.1099999993~0.1099999994", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      if gg.isVisible() == true then
      else
        gg.editAll("4.5", gg.TYPE_FLOAT)
        gg.clearResults()
        A12()
      end
    end
  end
end

function A9()
  gg.clearResults()
  KY_ZZ({
    "32",
    "1067869798",
    "4",
    false
  }, {
    {"-13", "1067030938"}
  }, {
    {
      "-2",
      "16",
      "0"
    },
    {
      "-3",
      "16",
      "0"
    },
    {
      "-4",
      "16",
      "0"
    },
    {
      "3",
      "16",
      "0"
    },
    {
      "32",
      "16",
      "0"
    },
    {
      "34",
      "16",
      "0"
    }
  }, "全枪无后")
  KY_ZZ({
    "32",
    "1114636288",
    "4",
    false
  }, {
    {"-2", "1067030938"},
    {"6", "1045220557"}
  }, {
    {
      "7",
      "16",
      "0"
    },
    {
      "8",
      "16",
      "0"
    },
    {
      "9",
      "16",
      "0"
    },
    {
      "14",
      "16",
      "0"
    },
    {
      "43",
      "16",
      "0"
    }
  }, "全枪无后")
  KY_ZZ({
    "32",
    "1067869798",
    "4",
    false
  }, {
    {"-5", "1050253722"},
    {"-13", "1067030930"}
  }, {
    {
      "-8",
      "16",
      "9999"
    }
  }, "全枪无后")
  gg.clearResults()
  gg.clearResults()
  KY_ZZ({
    "16384",
    "-335545378",
    "4",
    false
  }, {
    {"-13", "-232747263"}
  }, {
    {
      "-4",
      "16",
      "0"
    }
  }, "自瞄死锁")
  gg.clearList()
  A14()
end

function A5()
  F = gg.alert("【建筑定位天线】", "开启", "关闭")
  if F == 1 then
    gg.alert("本功能联发科，麒麟无效")
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
  elseif F == 2 then
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
end

function A6()
  F = gg.alert("【建筑物资透视】", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", gg.REGION_C_BSS)
    gg.toast("房屋透视开启完毕")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.81399995089", gg.REGION_C_BSS)
    gg.toast("透视关闭")
    gg.clearResults()
  end
end

function A8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2;3.6734198e-40��", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("6.6734198e-40", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("强制建筑开启成功")
end

function A7()
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
  gg.clearResults()
  gg.clearList()
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
  gg.clearResults()
  gg.clearList()
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
  gg.clearResults()
  gg.clearList()
end

function C1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;53;4;9;1;66;583", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("78", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("67", gg.TYPE_FLOAT)
end

function C2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("25;53;4;9;1;66;53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("78", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("67", gg.TYPE_FLOAT)
end

function C3()
  gg.setRanges(32)
  gg.searchNumber("300", 16)
  gg.toast(" 💘开启成功💘")
  gg.searchNumber("320", 16)
  gg.toast(" 💘开启成功💘")
  gg.setRanges(32)
  gg.searchNumber("710", 16)
  gg.toast(" 💘开启成功💘")
  gg.setRanges(32)
  gg.searchNumber("360", 16)
  gg.toast(" 💘开启成功💘")
  gg.setRanges(32)
  gg.searchNumber("830", 16)
  gg.toast(" 💘开启成功💘")
  gg.setRanges(32)
  gg.searchNumber("790", 16)
  gg.toast(" 💘开启成功💘")
  gg.setRanges(32)
  gg.searchNumber("735", 16)
  gg.toast(" 💘开启成功💘")
end

function C4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.60000002384F;0.73000001907F", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.60000002384", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.toast("💘30%💘")
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.05", 16, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.editAll("1", 16)
  gg.setRanges(4)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.03~1.042", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.toast("💘100%💘")
  gg.toast("💘小毅NB💘")
end

cs = ""
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main5()
  end
end
