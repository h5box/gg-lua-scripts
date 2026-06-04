gg.alert("冷熙制作，封号与我无关")
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
    xgdj = A1_6[_FORV_5_].freeze
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
  SN = gg.choice({
    "经典模式CD",
    "炫飞模式CD",
    "多人模式CD",
    "退出脚本"
  }, 2018, "全模式减cd，代码自己找")
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
    Exit()
  end
  XGCK = -1
end

function a()
  if gg.prompt({
    "下方填角色代码\n友情提示艾伦无效"
  }, {"8519  "}, {"number"}) == nil or gg.prompt({
    "下方填角色代码\n友情提示艾伦无效"
  }, {"8519  "}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 4},
      {
        name = "无限技能"
      },
      {
        value = gg.prompt({
          "下方填角色代码\n友情提示艾伦无效"
        }, {"8519  "}, {"number"})[1],
        type = 4
      },
      {
        lv = 130,
        offset = -8,
        type = 4
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
        offset = 8,
        type = 16
      },
      {
        value = 0,
        offset = 12,
        type = 16
      },
      {
        value = 20,
        offset = 16,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function b()
  if gg.prompt({
    "下方填角色代码\n友情提示艾伦无效"
  }, {"8519  "}, {"number"}) == nil or gg.prompt({
    "下方填角色代码\n友情提示艾伦无效"
  }, {"8519  "}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 4},
      {
        name = "无限技能"
      },
      {
        value = gg.prompt({
          "下方填角色代码\n友情提示艾伦无效"
        }, {"8519  "}, {"number"})[1],
        type = 4
      },
      {
        lv = 130,
        offset = -8,
        type = 4
      }
    }
    qmxg = {
      {
        value = 0,
        offset = 14,
        type = 16
      },
      {
        value = 0,
        offset = 18,
        type = 16
      },
      {
        value = 0,
        offset = 22,
        type = 16
      },
      {
        value = 20,
        offset = 26,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function c()
  if gg.prompt({
    "下方填角色代码\n友情提示艾伦无效"
  }, {"8519  "}, {"number"}) == nil or gg.prompt({
    "下方填角色代码\n友情提示艾伦无效"
  }, {"8519  "}, {"number"}) == "" then
    Main()
  else
    qmnb = {
      {memory = 4},
      {
        name = "无限技能"
      },
      {
        value = gg.prompt({
          "下方填角色代码\n友情提示艾伦无效"
        }, {"8519  "}, {"number"})[1],
        type = 4
      },
      {
        lv = 130,
        offset = -8,
        type = 4
      }
    }
    qmxg = {
      {
        value = 0,
        offset = 36,
        type = 16
      },
      {
        value = 0,
        offset = 40,
        type = 16
      },
      {
        value = 0,
        offset = 44,
        type = 16
      },
      {
        value = 20,
        offset = 48,
        type = 16
      }
    }
    xqmnb(qmnb)
  end
end

function Exit()
  print("反馈群:79067830")
  os.exit()
end

cs = "反馈群:79067830"
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
function HOME()
  Main()
end

function Exit()
  print("༺奥利给༻")
  os.exit()
end

cs = "反馈群:79067830"
cs = "奥利给"
while true do
  sj = os.date([[

%c]])
  if gg.isVisible(true) then
    PD1 = nil
    gg.setVisible(false)
  end
  if PD1 == nil then
    Main()
  end
end
