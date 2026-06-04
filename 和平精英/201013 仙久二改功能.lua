
function edit(A0_13, A1_14)
  _om = A0_13[1].memory or A0_13[1][1]
  _ov = A0_13[3].value or A0_13[3][1]
  _on = A0_13[2].name or A0_13[2][1]
  gg.clearResults()
  gg.setRanges(_om)
  gg.searchNumber(_ov, A0_13[3].type or A0_13[3][2])
  sz = gg.getResultCount()
  if 1 > sz then
    gg.toast(_on .. "开启成功")
  else
    sl = gg.getResults(720)
    for _FORV_5_ = 1, sz do
      ist = true
      for _FORV_9_ = 4, #A0_13 do
        if ist == true and sl[_FORV_5_].value == _ov then
          cd = {
            {}
          }
          cd[1].address = sl[_FORV_5_].address + (A0_13[_FORV_9_].offset or A0_13[_FORV_9_][2])
          cd[1].flags = A0_13[_FORV_9_].type or A0_13[_FORV_9_][3]
          szpy = gg.getValues(cd)
          cdlv = A0_13[_FORV_9_].lv or A0_13[_FORV_9_][1]
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
      if pdjg == true then
        szpy = sl[_FORV_5_].address
        for _FORV_9_ = 1, #A1_14 do
          xgpy = szpy + (A1_14[_FORV_9_].offset or A1_14[_FORV_9_][2])
          xglx = A1_14[_FORV_9_].type or A1_14[_FORV_9_][3]
          xgsz = A1_14[_FORV_9_].value or A1_14[_FORV_9_][1]
          xgdj = A1_14[_FORV_9_].freeze or A1_14[_FORV_9_][4]
          xgsj = {
            {
              address = xgpy,
              flags = xglx,
              value = xgsz
            }
          }
          if xgdj == true then
            xgsj[1].freeze = xgdj
            gg.addListItems(xgsj)
          else
            gg.setValues(xgsj)
          end
        end
        xgjg = true
      end
    end
    if xgjg == true then
      gg.toast(_on .. "开启成功")
    else
      gg.toast(_on .. "开启成功")
    end
  end
end

function SearchWrite(A0_15, A1_16, A2_17)
  gg.clearResults()
  gg.setVisible(false)
  gg.searchNumber(A0_15[1][1], A2_17)
  gg.clearResults()
  if gg.getResultCount() > 0 then
    for _FORV_10_, _FORV_11_ in ipairs((gg.getResults((gg.getResultCount())))) do
      _FORV_11_.isUseful = true
    end
    for _FORV_10_ = 2, #A0_15 do
      for _FORV_17_, _FORV_18_ in ipairs((gg.getResults((gg.getResultCount())))) do
        ;({})[#{}].address = _FORV_18_.address + (A0_15[_FORV_10_][2] - A0_15[1][2])
        ;({})[#{}].flags = _FORV_18_.flags
      end
      for _FORV_17_, _FORV_18_ in ipairs((gg.getValues({}))) do
        if tostring(_FORV_18_.value) ~= tostring(A0_15[_FORV_10_][1]) then
          gg.getResults((gg.getResultCount()))[_FORV_17_].isUseful = false
        end
      end
    end
    for _FORV_10_, _FORV_11_ in ipairs((gg.getResults((gg.getResultCount())))) do
    end
    if 0 < #{} then
      gg.toast("搜索到" .. #{} .. "条数据")
      for _FORV_12_ = 1, #{} do
        for _FORV_16_, _FORV_17_ in ipairs(A1_16) do
          offset = _FORV_17_[2] - A0_15[1][2]
          ;({})[#{}].address = ({})[_FORV_12_] + offset
          ;({})[#{}].flags = A2_17
          ;({})[#{}].value = _FORV_17_[1]
          if _FORV_17_[3] == true then
            ;({})[#{}].freeze = true
            gg.addListItems({})
          end
        end
      end
      gg.setValues({})
      gg.toast("已修改" .. #{} .. "条数据")
      gg.addListItems({})
    else
      gg.toast("not found", false)
      return false
    end
  else
    gg.toast("Not Found")
    return false
  end
end

function split(A0_18, A1_19)
  local L2_20, L3_21, L4_22
  L2_20 = 1
  L3_21 = 1
  L4_22 = {}
  while true do
    if not string.find(A0_18, A1_19, L2_20) then
      L4_22[L3_21] = string.sub(A0_18, L2_20, string.len(A0_18))
      break
    end
    L4_22[L3_21] = string.sub(A0_18, L2_20, string.find(A0_18, A1_19, L2_20) - 1)
    L2_20 = string.find(A0_18, A1_19, L2_20) + string.len(A1_19)
    L3_21 = L3_21 + 1
  end
  return L4_22
end

function xgxc(A0_23, A1_24)
  local L2_25, L3_26, L4_27, L5_28
  L2_25 = 1
  L3_26 = #A1_24
  for _FORV_5_ = 1, #A1_24 do
    xgpy = A0_23 + A1_24[_FORV_5_].offset
    xglx = A1_24[_FORV_5_].type
    xgsz = A1_24[_FORV_5_].value
    xgdj = A1_24[_FORV_5_].freeze
    if xgdj == nil or xgdj == "" then
      gg.setValues({
        [1] = {
          address = xgpy,
          flags = xglx,
          value = xgsz
        }
      })
    else
      gg.addListItems({
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

function xqmnb(A0_29)
  gg.clearResults()
  gg.setRanges(A0_29[1].memory)
  gg.searchNumber(A0_29[3].value, A0_29[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(A0_29[2].name .. "开启成功")
  else
    gg.refineNumber(A0_29[3].value, A0_29[3].type)
    gg.refineNumber(A0_29[3].value, A0_29[3].type)
    gg.refineNumber(A0_29[3].value, A0_29[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(A0_29[2].name .. "开启成功")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      for _FORV_4_ = 1, sz do
        pdsz = true
        for _FORV_8_ = 4, #A0_29 do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[_FORV_4_].address + A0_29[_FORV_8_].offset
            pysz[1].flags = A0_29[_FORV_8_].type
            szpy = gg.getValues(pysz)
            pdpd = A0_29[_FORV_8_].lv .. ";" .. szpy[1].value
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
        end
      end
      if xgjg == true then
        gg.toast(A0_29[2].name .. "开启成功,共修改" .. xgsl .. "条数据")
      else
        gg.toast(A0_29[2].name .. "开启成功")
      end
    end
  end
end

function ZBY(A0_30, A1_31)
  gg.setVisible(false)
  gg.clearResults()
  qmnbv = A0_30[3].value or A0_30[3][1]
  qmnbt = A0_30[3].type or A0_30[3][2]
  qmnbn = A0_30[2].name or A0_30[2][1]
  gg.setRanges(A0_30[1].memory or A0_30[1][1])
  gg.searchNumber(qmnbv, qmnbt)
  gg.refineNumber(qmnbv, qmnbt)
  sz = gg.getResultCount()
  if sz == 0 then
    gg.toast(qmnbn .. "开启失败")
  else
    sl = gg.getResults(999999)
    for _FORV_5_ = 1, sz do
      pdsz = true
      for _FORV_9_ = 4, #A0_30 do
        if pdsz == true then
          pysz = {
            {}
          }
          pysz[1].address = sl[_FORV_5_].address + (A0_30[_FORV_9_].offset or A0_30[_FORV_9_][2])
          pysz[1].flags = A0_30[_FORV_9_].type or A0_30[_FORV_9_][3]
          szpy = gg.getValues(pysz)
          tzszpd = tostring(A0_30[_FORV_9_].lv or A0_30[_FORV_9_][1]):gsub(",", "")
          pyszpd = tostring(szpy[1].value):gsub(",", "")
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
        szpy = sl[_FORV_5_].address
        for _FORV_9_ = 1, #A1_31 do
          xgsz = A1_31[_FORV_9_].value or A1_31[_FORV_9_][1]
          xgpy = szpy + (A1_31[_FORV_9_].offset or A1_31[_FORV_9_][2])
          xglx = A1_31[_FORV_9_].type or A1_31[_FORV_9_][3]
          xgdj = A1_31[_FORV_9_].freeze or A1_31[_FORV_9_][4]
          xg = {
            {
              address = xgpy,
              flags = xglx,
              value = xgsz
            }
          }
          if xgdj == true then
            xg[1].freeze = xgdj
            gg.addListItems(xg)
          else
            gg.setValues(xg)
          end
        end
        xgjg = true
      end
    end
    if xgjg == true then
      gg.toast(qmnbn .. "开启成功")
    else
      gg.alert(qmnbn .. "开启失败")
    end
  end
end

function Main()
  menu = gg.multiChoice({
    "仙久定制QQ2792126337",
    "开3次防封",
    "屠杀功能",
    "退出脚本"
  }, nil, "仙久牛逼就完事")
  if menu == nil then
  else
    if menu[1] == true then
      A()
    end
    if menu[2] == true then
      QQ()
    end
    if menu[3] == true then
      JJ()
    end
    if menu[4] == true then
      Exit()
    end
  end
  XGCK = -1
end

function A()
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(999)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 16384
      }
    })
  end
end

function QQ()
  qs = gg.multiChoice({
    "出生岛防封1",
    "出生岛防封2",
    "出生岛防封3",
    "退出脚本"
  }, nil, "全局防，温馨提示:(修改器隐藏23,旁路模式选择没有，防可以多开几遍，因为担心会漏值，期间请勿切屏)")
  if qs == nil then
  else
    if qs[1] == true then
      q1()
    end
    if qs[2] == true then
      q2()
    end
    if qs[3] == true then
      q4()
    end
    if qs[4] == true then
      Main()
    end
  end
  XGCK = -1
end

function q1()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("16384;32768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_5_.flags == gg.TYPE_DWORD then
      _FORV_5_.value = "-1"
      _FORV_5_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1310737;18812:", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("18812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_5_, _FORV_6_ in ipairs((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_6_.flags == gg.TYPE_DWORD then
      _FORV_6_.value = "-1"
      _FORV_6_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_6_, _FORV_7_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_7_.flags == gg.TYPE_DWORD then
      _FORV_7_.value = "0"
      _FORV_7_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("17441", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_7_, _FORV_8_ in ipairs((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_8_.flags == gg.TYPE_DWORD then
      _FORV_8_.value = "0"
      _FORV_8_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_8_, _FORV_9_ in ipairs((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_9_.flags == gg.TYPE_DWORD then
      _FORV_9_.value = "0"
      _FORV_9_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_9_, _FORV_10_ in ipairs((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_10_.flags == gg.TYPE_DWORD then
      _FORV_10_.value = "0"
      _FORV_10_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(6000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_10_, _FORV_11_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_11_.flags == gg.TYPE_DWORD then
      _FORV_11_.value = "1777777"
      _FORV_11_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_11_, _FORV_12_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_12_.flags == gg.TYPE_DWORD then
      _FORV_12_.value = "0"
      _FORV_12_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_12_, _FORV_13_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_13_.flags == gg.TYPE_DWORD then
      _FORV_13_.value = "0"
      _FORV_13_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_13_, _FORV_14_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_14_.flags == gg.TYPE_DWORD then
      _FORV_14_.value = "0"
      _FORV_14_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
end

function q2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("1777666;1777777", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_5_.flags == gg.TYPE_DWORD then
      _FORV_5_.value = "16384"
      _FORV_5_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
end

function q3()
  local L0_32, L1_33
end

function q4()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("4096;16384;262144:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_5_.flags == gg.TYPE_DWORD then
      _FORV_5_.value = "0"
      _FORV_5_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("131072;262144;16384:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("131072;262144;16384:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_5_, _FORV_6_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_6_.flags == gg.TYPE_DWORD then
      _FORV_6_.value = "0"
      _FORV_6_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("10652;10248;167772161:2273", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10652;10248;167772161:2273", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_6_, _FORV_7_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_7_.flags == gg.TYPE_DWORD then
      _FORV_7_.value = "0"
      _FORV_7_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("65,536;30001;4,096;16,718;12,337;8,630:10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("65,536;30001;4,096;16,718;12,337;8,630:10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_7_, _FORV_8_ in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_8_.flags == gg.TYPE_DWORD then
      _FORV_8_.value = "0"
      _FORV_8_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1432512876;1932407877;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_8_, _FORV_9_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_9_.flags == gg.TYPE_DWORD then
      _FORV_9_.value = "-1"
      _FORV_9_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("20480;10240;67,043,328:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_9_, _FORV_10_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_10_.flags == gg.TYPE_DWORD then
      _FORV_10_.value = "0"
      _FORV_10_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("2131;10240:1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_10_, _FORV_11_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_11_.flags == gg.TYPE_DWORD then
      _FORV_11_.value = "0"
      _FORV_11_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("1042;10240:1024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_11_, _FORV_12_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_12_.flags == gg.TYPE_DWORD then
      _FORV_12_.value = "0"
      _FORV_12_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.searchNumber("2131;67109377~67109633;8000~300000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8000~300000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_12_, _FORV_13_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_13_.flags == gg.TYPE_DWORD then
      _FORV_13_.value = "-1"
      _FORV_13_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2,162,688;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("2,162,688;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_13_, _FORV_14_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_14_.flags == gg.TYPE_DWORD then
      _FORV_14_.value = "0"
      _FORV_14_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("66086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("66086", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_14_, _FORV_15_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_15_.flags == gg.TYPE_DWORD then
      _FORV_15_.value = "0"
      _FORV_15_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
  for _FORV_15_, _FORV_16_ in ipairs((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil))) do
    if _FORV_16_.flags == gg.TYPE_DWORD then
      _FORV_16_.value = "0"
      _FORV_16_.freeze = true
    end
  end
  gg.addListItems((gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.toast("全防开启完毕")
end

function JJ()
  SN = gg.multiChoice({
    "无后聚点防抖瞬击(单开次功能配合鸡腿稳定上榜)",
    "人物变大",
    "加速伤害(山谷，月兔不拉回)",
    "关闭加速",
    "全屏自瞄",
    "仙久独家范围",
    "微加速超级跳",
    "返回主页"
  }, nil, " 配合全防使用 ")
  if SN == nil then
  else
    if SN[1] == true then
      a1()
    end
    if SN[2] == true then
      a2()
    end
    if SN[3] == true then
      a3()
    end
    if SN[4] == true then
      a4()
    end
    if SN[5] == true then
      a5()
    end
    if SN[6] == true then
      a6()
    end
    if SN[7] == true then
      a7()
    end
    if SN[8] == true then
      Main()
    end
  end
  XGCK = -1
end

function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-3.7444097e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无后座开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("防抖开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("完美防抖开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.toast("聚点开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("CFDA7DEEr;5002DDE5r;010010E3r;7D00001Ar;FE05A0E3r;FF1D0FE3r;100184E5r::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("CFDA7DEEr", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("(瞬击)迷人一键屠杀已开启")
end

function a2()
  qmnb = {
    {memory = 32},
    {name = "变大"},
    {value = 2121728, type = 4},
    {
      lv = -1028653056,
      offset = 176,
      type = 4
    }
  }
  qmxg = {
    {
      value = 1.2,
      offset = 192,
      type = 16
    },
    {
      value = 1.2,
      offset = 196,
      type = 16
    },
    {
      value = 1.2,
      offset = 200,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function a3()
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
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~120000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.toast("全枪伤害开启成功")
end

function a4()
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

function a5()
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

function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.15017700195;15:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("35", gg.TYPE_FLOAT)
  gg.toast("已开启百分之55")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("35", gg.TYPE_FLOAT)
  gg.toast("已开启百分之75")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.20000004768;1.09375", 16, false, 536870912, 0, -1)
  gg.searchNumber("3.20000004768;1.09375", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0", 16)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.toast("迷人独家范围部署➤%100")
end

function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.13", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1526231e27;-1.0070975e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-5", gg.TYPE_FLOAT)
  gg.toast("微加速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-305132800;-409010176;-509587455;-442564256;-443547640;-444334072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-305132800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("加速跳远")
end

function Exit()
  print("仙久")
  os.exit()
end

cs = "仙"
while true do
  if gg[(function(A0_34)
    A0_34 = A0_34:gsub(" ", "")
    return (A0_34:gsub("..", function(A0_35)
      return string.char(tonumber(A0_35, 16) - 69)
    end
    ))
  end
  )("AE B8 9B AE B8 AE A7 B1 AA")](true) then
    XGCK = 1
    gg[(function(A0_36)
      A0_36 = A0_36:gsub(" ", "")
      return (A0_36:gsub("..", function(A0_37)
        return string.char(tonumber(A0_37, 16) - 69)
      end
      ))
    end
    )("B8 AA B9 9B AE B8 AE A7 B1 AA")](false)
  end
  gg[(function(A0_38)
    A0_38 = A0_38:gsub(" ", "")
    return (A0_38:gsub("..", function(A0_39)
      return string.char(tonumber(A0_39, 16) - 69)
    end
    ))
  end
  )("A8 B1 AA A6 B7 97 AA B8 BA B1 B9 B8")]()
  if XGCK == 1 then
    Main()
  end
end
