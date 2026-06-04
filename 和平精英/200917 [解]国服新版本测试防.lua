function edit(A0_68, A1_69)
  _om = A0_68[1].memory or A0_68[1][1]
  _ov = A0_68[3].value or A0_68[3][1]
  _on = A0_68[2].name or A0_68[2][1]
  _G.gg.clearResults()
  _G.gg.setRanges(_om)
  _G.gg.searchNumber(_ov, A0_68[3].type or A0_68[3][2])
  sz = _G.gg.getResultCount()
  if 1 > sz then
    _G.gg.toast(_on .. "开启失败")
  else
    sl = _G.gg.getResults(720)
    do
      do
        for _FORV_5_ = 1, sz do
          ist = true
          do
            do
              for _FORV_9_ = 4, #A0_68 do
                if ist == true and sl[_FORV_5_].value == _ov then
                  cd = {
                    {}
                  }
                  cd[1].address = sl[_FORV_5_].address + (A0_68[_FORV_9_].offset or A0_68[_FORV_9_][2])
                  cd[1].flags = A0_68[_FORV_9_].type or A0_68[_FORV_9_][3]
                  szpy = _G.gg.getValues(cd)
                  cdlv = A0_68[_FORV_9_].lv or A0_68[_FORV_9_][1]
                  cdv = szpy[1].value
                  if cdlv == cdv then
                    pdjg = true
                    ist = true
                  else
                    pdjg = false
                    ist = false
                  end
                end
              end
            end
          end
          if pdjg == true then
            szpy = sl[_FORV_5_].address
            do
              do
                for _FORV_9_ = 1, #A1_69 do
                  xgpy = szpy + (A1_69[_FORV_9_].offset or A1_69[_FORV_9_][2])
                  xglx = A1_69[_FORV_9_].type or A1_69[_FORV_9_][3]
                  xgsz = A1_69[_FORV_9_].value or A1_69[_FORV_9_][1]
                  xgdj = A1_69[_FORV_9_].freeze or A1_69[_FORV_9_][4]
                  xgsj = {
                    {
                      address = xgpy,
                      flags = xglx,
                      value = xgsz
                    }
                  }
                  if xgdj == true then
                    xgsj[1].freeze = xgdj
                    _G.gg.addListItems(xgsj)
                  else
                    _G.gg.setValues(xgsj)
                  end
                end
              end
            end
            xgjg = true
          end
        end
      end
    end
    if xgjg == true then
      _G.gg.toast(_on .. "开启成功")
    else
      _G.gg.toast(_on .. "开启失败")
    end
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

function split(A0_73, A1_74)
  local L2_75, L3_76, L4_77
  L2_75 = 1
  L3_76 = 1
  L4_77 = {}
  while true do
    if not string.find(A0_73, A1_74, L2_75) then
      L4_77[L3_76] = string.sub(A0_73, L2_75, string.len(A0_73))
      break
    end
    L4_77[L3_76] = string.sub(A0_73, L2_75, string.find(A0_73, A1_74, L2_75) - 1)
    L2_75 = string.find(A0_73, A1_74, L2_75) + string.len(A1_74)
    L3_76 = L3_76 + 1
  end
  return L4_77
end

function xgxc(A0_78, A1_79)
  local L2_80, L3_81, L4_82, L5_83
  L2_80 = 1
  L3_81 = #A1_79
  do
    do
      for _FORV_9_ = 1, #A1_79 do
        xgpy = A0_78 + A1_79[_FORV_9_].offset
        xglx = A1_79[_FORV_9_].type
        xgsz = A1_79[_FORV_9_].value
        xgdj = A1_79[_FORV_9_].freeze
        if xgdj == nil or xgdj == "" then
          _G.gg.setValues({
            [1] = {
              address = xgpy,
              flags = xglx,
              value = xgsz
            }
          })
        else
          _G.gg.addListItems({
            [1] = {
              address = xgpy,
              flags = xglx,
              freeze = xgdj,
              value = xgsz
            }
          })
        end
        xgsl = xgsl + 1
        xgjg = true
      end
    end
  end
end

function xqmnb(A0_84)
  _G.gg.clearResults()
  _G.gg.setRanges(A0_84[1].memory)
  _G.gg.searchNumber(A0_84[3].value, A0_84[3].type)
  if _G.gg.getResultCount() == 0 then
    _G.gg.toast(A0_84[2].name .. "开启失败")
  else
    _G.gg.refineNumber(A0_84[3].value, A0_84[3].type)
    _G.gg.refineNumber(A0_84[3].value, A0_84[3].type)
    _G.gg.refineNumber(A0_84[3].value, A0_84[3].type)
    if _G.gg.getResultCount() == 0 then
      _G.gg.toast(A0_84[2].name .. "开启失败")
    else
      sl = _G.gg.getResults(999999)
      sz = _G.gg.getResultCount()
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
                for _FORV_8_ = 4, #A0_84 do
                  if pdsz == true then
                    pysz = {}
                    pysz[1] = {}
                    pysz[1].address = sl[_FORV_4_].address + A0_84[_FORV_8_].offset
                    pysz[1].flags = A0_84[_FORV_8_].type
                    szpy = _G.gg.getValues(pysz)
                    pdpd = A0_84[_FORV_8_].lv .. ";" .. szpy[1].value
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
            end
          end
        end
      end
      if xgjg == true then
        _G.gg.toast(A0_84[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        _G.gg.toast(A0_84[2].name .. "开启失败")
      end
    end
  end
end

function yiyz_Main()
  menu = _G.gg.multiChoice({
    "腾讯界面1",
    "腾讯界面2",
    "重连大厅开启",
    "大厅执行1",
    "大厅防封2",
    "大厅防3","退出"
  }, nil, "浮梦出品，浮梦粉丝群1057525825")
  if menu == nil then
  else
    if menu[1] == true then
      S1()
    end
    if menu[2] == true then
      S2()
    end
    if menu[3] == true then
      S3()
    end
    if menu[4] == true then
      S4()
    end
    if menu[5] == true then
      S5()
    end
    if menu[6] == true then
      ss()
    end
    if menu[7] == true then
      os.exit()
    end
  end
  XGCK = -1
end

function S1()
  _G.gg.setRanges(16384)
  SearchWrite({
    {1179403647, 0},
    {65793, 4},
    {2621443, 16},
    {541856, 32},
    {83886592, 36},
    {2097204, 40}
  }, {
    {
      -1,
      4,
      true
    }
  }, 4)
  SearchWrite({
    {32, 0},
    {131072, 4},
    {131074, 8},
    {65538, 12},
    {65538, 16},
    {131074, 20},
    {65538, 24},
    {65538, 48},
    {65538, 52},
    {131072, 176}
  }, {
    {
      0,
      12,
      true
    },
    {
      0,
      16,
      true
    },
    {
      0,
      24,
      true
    },
    {
      0,
      48,
      true
    },
    {
      0,
      52,
      true
    }
  }, 4)
  SearchWrite({
    {65793, 0},
    {95377, 128},
    {688945, 408},
    {689053, 440},
    {688911, 456},
    {689071, 488},
    {689001, 520},
    {689027, 936}
  }, {
    {
      0,
      0,
      true
    },
    {
      0,
      128,
      true
    },
    {
      0,
      408,
      true
    },
    {
      0,
      440,
      true
    },
    {
      0,
      456,
      true
    },
    {
      0,
      488,
      true
    },
    {
      0,
      520,
      true
    },
    {
      0,
      936,
      true
    }
  }, 4)
  _G.gg.toast("正在执行！已耗时" .. os.clock() - os.clock() .. "s")
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("11822", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("1,179,403,647;65,793;1,685,382,481", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("65793", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("1,179,403,647;65,793;60,904;1,685,382,481", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("60904", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("65,537;65,538;131,074", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("65538", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("1,937,339,183;65,537;1,617,827,958", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("65537", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("65,536;65,537;65,537", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("65536", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("65,537;65,540;65,537;65,537", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("65540", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("131,073;65,537;131,074", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("131074", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_CODE_APP)
  _G.gg.searchNumber("65,538;131,073;131,074", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("131073", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.toast("")
end

function S2()
  qmnb = {
    {
      memory = _G.gg.REGION_CODE_APP
    },
    {name = ""},
    {
      value = 131074,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 65537,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 131074,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 65538,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD
    },
    {
      value = 0,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      value = 0,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      value = 0,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_CODE_APP
    },
    {name = "防封"},
    {
      value = 131073,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 65537,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 65537,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 65538,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD
    },
    {
      value = 0,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 16384, type = 4},
    {
      lv = 16384,
      offset = 8,
      type = 4
    },
    {
      lv = 16384,
      offset = 16,
      type = 4
    },
    {
      lv = 16384,
      offset = 32,
      type = 4
    },
    {
      lv = 16384,
      offset = 56,
      type = 4
    },
    {
      lv = 16384,
      offset = 64,
      type = 4
    },
    {
      lv = 16384,
      offset = 72,
      type = 4
    },
    {
      lv = 16384,
      offset = 80,
      type = 4
    },
    {
      lv = 16384,
      offset = 96,
      type = 4
    },
    {
      lv = 16384,
      offset = 104,
      type = 4
    },
    {
      lv = 16384,
      offset = 112,
      type = 4
    },
    {
      lv = 16384,
      offset = 120,
      type = 4
    },
    {
      lv = 16384,
      offset = 136,
      type = 4
    },
    {
      lv = 16384,
      offset = 168,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 8,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 16,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 32,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 56,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 64,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 72,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 80,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 96,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 104,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 112,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 120,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 136,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 168,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  _G.gg.toast("执行")
end

function S3()
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 1432512876,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 1932407877,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = -24,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 73730,
      offset = -24,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 16384,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 16,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 20,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 5120,
      offset = 100,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 70012,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 4,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 8,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 12,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 16,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 20,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 48,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 504,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 70012,
      offset = 508,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 70012,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 16,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 5120,
      offset = 96,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 65538,
      offset = 504,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 70012,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 70012,
      offset = 16,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 5120,
      offset = 96,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 16384,
      offset = -4,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 2,
      offset = 500,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 16384,
      offset = 504,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 16384,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 2,
      offset = -4,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 4,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 8,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 16384,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 12,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = 16,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 4,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 8,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 12,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 16,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 10240,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 2131,
      offset = 40,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 1042, type = 4},
    {
      lv = 10240,
      offset = 220,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 220,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = "16"},
    {value = 131586, type = 4},
    {
      lv = 0,
      offset = -4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 11194, type = 4},
    {
      lv = 11195,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 66562,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 33554432,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 197377,
      offset = 8,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 8,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  _G.gg.sleep(2000)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 131586, type = 4},
    {
      lv = 0,
      offset = -4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 1638406, type = 4},
    {
      lv = 67109377,
      offset = 40,
      type = 4
    }
  }
  qmxg = {
    {
      value = 73730,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 73730,
      offset = 40,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 2062, type = 4},
    {
      lv = 692868,
      offset = 4,
      type = 4
    },
    {
      lv = 2063,
      offset = 8,
      type = 4
    },
    {
      lv = 692868,
      offset = 12,
      type = 4
    },
    {
      lv = 2064,
      offset = 16,
      type = 4
    },
    {
      lv = 692876,
      offset = 20,
      type = 4
    },
    {
      lv = 2065,
      offset = 24,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 4,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 8,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 12,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 16,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 20,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 24,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 11194, type = 4},
    {
      lv = 11195,
      offset = 4,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 262144, type = 4},
    {
      lv = 16384,
      offset = 168,
      type = 4
    },
    {
      lv = 16384,
      offset = 372,
      type = 4
    },
    {
      lv = 131074,
      offset = 480,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 168,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 372,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 480,
      type = 4,
      freeze = true
    }
  }
  qmnb = {
    {memory = 8},
    {name = ""},
    {value = 1024, type = 4},
    {
      lv = 131073,
      offset = 156,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 156,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 8},
    {name = ""},
    {value = 1024, type = 4},
    {
      lv = 131073,
      offset = 80,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 80,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 262144, type = 4},
    {
      lv = 16384,
      offset = 168,
      type = 4
    },
    {
      lv = 16384,
      offset = 372,
      type = 4
    },
    {
      lv = 131074,
      offset = 480,
      type = 4
    }
  }
  xqmnb(qmnb)
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 168,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 372,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 480,
      type = 4,
      freeze = true
    }
  }
  qmnb = {
    {memory = 8},
    {name = ""},
    {value = 1024, type = 4},
    {
      lv = 131073,
      offset = 156,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 156,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 2062, type = 4},
    {
      lv = 692868,
      offset = 4,
      type = 4
    },
    {
      lv = 2063,
      offset = 8,
      type = 4
    },
    {
      lv = 692868,
      offset = 12,
      type = 4
    },
    {
      lv = 2064,
      offset = 16,
      type = 4
    },
    {
      lv = 692876,
      offset = 20,
      type = 4
    },
    {
      lv = 2065,
      offset = 24,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 4,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 8,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 12,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 16,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 20,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 24,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 8},
    {name = ""},
    {value = 1024, type = 4},
    {
      lv = 131073,
      offset = 80,
      type = 4
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = 0,
      offset = 80,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = "         "},
    {
      value = 196864,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16842753,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 4864,
      offset = 352,
      type = _G.gg.TYPE_WORD
    }
  }
  qmxg = {
    {
      value = 65538,
      offset = 252,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 65538,
      offset = 760,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  _G.gg.sleep(10000)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = "         "},
    {
      value = 10240,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 257,
      offset = 28,
      type = _G.gg.TYPE_WORD
    },
    {
      lv = 2131,
      offset = 40,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 328,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 10240,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 2131,
      offset = 40,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 0,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 0,
      offset = 4,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 1042,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 10240,
      offset = 220,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 0,
      offset = 220,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {name = ""},
    {
      value = 862348033,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16384,
      offset = -4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 1667393900,
      offset = 20,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 7303982,
      offset = 24,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 73730,
      offset = -4,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  _G.gg.sleep(2000)
  qmnb = {
    {
      memory = _G.gg.REGION_C_ALLOC
    },
    {
      name = "大厅防封"
    },
    {
      value = 196864,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 16842753,
      offset = 4,
      type = _G.gg.TYPE_DWORD
    },
    {
      lv = 4864,
      offset = 352,
      type = _G.gg.TYPE_DWORD
    }
  }
  qmxg = {
    {
      value = 65538,
      offset = 252,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    },
    {
      value = 16384,
      offset = 760,
      type = _G.gg.TYPE_DWORD,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 134914, type = 4},
    {
      lv = 70658,
      offset = 96,
      type = 4
    },
    {
      lv = 131330,
      offset = 128,
      type = 4
    },
    {
      lv = 133634,
      offset = 256,
      type = 4
    },
    {
      lv = 134914,
      offset = 288,
      type = 4
    },
    {
      lv = 133378,
      offset = 384,
      type = 4
    },
    {
      lv = 134914,
      offset = 416,
      type = 4
    },
    {
      lv = 134658,
      offset = 512,
      type = 4
    },
    {
      lv = 134914,
      offset = 608,
      type = 4
    }
  }
  qmxg = {
    {
      value = -1,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 96,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 128,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 256,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 288,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 384,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 416,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 512,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 608,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 4},
    {name = ""},
    {value = 134914, type = 4},
    {
      lv = 134658,
      offset = 96,
      type = 4
    },
    {
      lv = 134914,
      offset = 192,
      type = 4
    },
    {
      lv = 70658,
      offset = 384,
      type = 4
    },
    {
      lv = 131330,
      offset = 416,
      type = 4
    },
    {
      lv = 12547,
      offset = 512,
      type = 4
    },
    {
      lv = 131586,
      offset = 544,
      type = 4
    },
    {
      lv = 131842,
      offset = 608,
      type = 4
    },
    {
      lv = 132098,
      offset = 640,
      type = 4
    },
    {
      lv = 134658,
      offset = 768,
      type = 4
    }
  }
  qmxg = {
    {
      value = -1,
      offset = 0,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 96,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 192,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 384,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 416,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 512,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 544,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 608,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 640,
      type = 4,
      freeze = true
    },
    {
      value = -1,
      offset = 768,
      type = 4,
      freeze = true
    }
  }
  xqmnb(qmnb)
  _G.gg.toast("执行�")
end

function S4()
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("196864;16842753::5", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("196864", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 196864
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("196864;16842753::5", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("16842753", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 16842753
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("16384;16384;16384;16384;16384;16384::21", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 790528
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("790528;790528;790528;790528;790528;790528;16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 70012
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("66562;197377::13", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("66562;197377::13", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("10240;2131", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("1042;10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("10240;12288::33", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("8388608;268441600;16384;65535~65539:65536", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("268441600;16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("1,024D;131,072,500D;1,024D:13", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("12547;131586", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("12547;131586", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("1~3;16384;16384;16384::13", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("10422", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("10422", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("16384;16384;16384;16384;16384::21", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  _G.gg.clearResults()
  _G.gg.searchNumber("20480;10240;67,043,328:100", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.searchNumber("66562;197377::13", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("66562;197377", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "-1"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.searchNumber("2131;10240:1024", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.searchNumber("1042;10240:1024", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("10240", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "0"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.searchNumber("131330;16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("16384", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "-1"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.clearResults()
  _G.gg.searchNumber("2131;67109377~67109633;8000~300000", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.refineNumber("8000~300000", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  revert = _G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_3_, _FORV_4_ in ipairs((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_4_.flags == _G.gg.TYPE_DWORD then
          _FORV_4_.value = "-1"
          _FORV_4_.freeze = true
        end
      end
    end
  end
  _G.gg.addListItems((_G.gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  _G.gg.toast("")
end

function S5()
  _G.gg.clearResults()
  _G.gg.setRanges(_G.gg.REGION_C_ALLOC)
  _G.gg.searchNumber("786,434D;790,528D;790,528D;790,528D;790,528D;790,528D;65,538D", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  _G.gg.searchNumber("65538", _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  jg = _G.gg.getResults(99999)
  sl = _G.gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        _G.gg.addListItems({
          [1] = {
            address = dzy,
            flags = _G.gg.TYPE_DWORD,
            freeze = true,
            value = 16384
          }
        })
        _G.gg.toast("")
      end
    end
  end
end

function ss()
  _G.gg.toast("交流群704651999")
  os.exit()
end

while true do
  if _G.gg.isVisible(true) then
    XGCK = 1
    _G.gg.setVisible(false)
  end
  _G.gg.clearResults()
  if XGCK == 1 then
    yiyz_Main()
  end
end
