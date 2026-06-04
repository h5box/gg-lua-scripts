function addr(A0_0)
  local L1_1
  if A0_0 ~= nil and A0_0 ~= "0x0" then
    L1_1 = {}
    L1_1[1] = {address = A0_0, flags = 32}
    L1_1 = gg.getValues(L1_1)
    return L1_1
  else
    L1_1 = {
      {value = 0, address = 0}
    }
    return L1_1
  end
end

function read(A0_2, A1_3, A2_4)
  local L3_5
  if A2_4 == nil then
    A2_4 = 32
  end
  if A0_2 then
    L3_5 = A0_2[1]
    L3_5 = L3_5.address
    if L3_5 ~= nil then
      L3_5 = {}
      L3_5[1] = {
        address = A0_2[1].address + A1_3,
        flags = A2_4
      }
      L3_5 = gg.getValues(L3_5)
      return L3_5
    end
  else
    L3_5 = {
      {value = 0, address = 0}
    }
    return L3_5
  end
end

function readValue(A0_6, A1_7, A2_8)
  return (read(addr("0x" .. string.format("%#x", A0_6[1].value & 1099511627775)), A1_7, A2_8))
end

function moduaddr(A0_9, A1_10)
  return addr("0x" .. string.format("%#x", gg.getRangesList(A0_9)[1].start + A1_10 & 1099511627775))
end

sleep = 50
setmode = "强力"
mode = true
setaim = "开"
aim = true
function Main()
  menu1 = gg.choice({
    "开启脚本",
    "脚本设置",
    "退出脚本"
  }, nil, "作者:龙套   自瞄:" .. setaim .. "  模式:" .. setmode .. "  频率:" .. sleep)
  if menu1 == 1 then
    circulate(getaim(), gethreo())
  end
  if menu1 == 2 then
    set()
  end
  if menu1 == 3 then
    gg.clearList()
    gg.clearResults()
    os.exit()
  end
end

function set()
  menu = gg.choice({
    "自瞄:  " .. setaim,
    "频率:  " .. sleep,
    "模式:  " .. setmode
  }, nil, "自瞄仅支持2技能")
  if menu == nil then
    Main()
  end
  if menu == 1 then
    if setaim == "开" then
      setaim = "关"
      aim = false
    else
      setaim = "开"
      aim = true
    end
    Main()
  end
  if menu == 2 then
    v_value = gg.prompt({
      "输入你想要的预判距离：默认50"
    }, {
      [1] = "50"
    })
    if v_value == nil then
      gg.toast("取消")
    else
      sleep = v_value[1]
      if sleep > 0 then
        gg.toast("当前频率:" .. sleep)
      else
        gg.toast("不能小于1")
        sleep = 50
      end
    end
    Main()
  end
  if menu == 3 then
    if setmode == "强力" then
      mode = false
      setmode = "追踪"
    else
      mode = true
      setmode = "强力"
    end
    Main()
  end
end

function gethreo()
  local L0_11
  L0_11 = 0
  hero = {}
  pd = {}
  hy = {}
  jz = readValue(moduaddr("libGameCore.so", 63313512), 8)
  for _FORV_4_ = 1, 11 do
    if readValue(jz, 32 + _FORV_4_ * 16)[1].value == 0 then
      break
    end
    if readValue(readValue(readValue(jz, 32 + _FORV_4_ * 16), 88), 44, 4)[1].value ~= mydw or readValue(readValue(readValue(jz, 32 + _FORV_4_ * 16), 88), 32, 4)[1].value == myid then
      L0_11 = L0_11 + 1
      hero[L0_11] = {}
      hero[L0_11].add = readValue(readValue(jz, 32 + _FORV_4_ * 16), 88)
      hero[L0_11].id = readValue(hero[L0_11].add, 32, 4)[1].value
      hero[L0_11].dw = readValue(hero[L0_11].add, 44, 4)[1].value
      if hero[L0_11].id == myid and hero[L0_11].dw == mydw then
        me = L0_11
      end
      hero[L0_11].hp = readValue(readValue(hero[L0_11].add, 232), 248, 4)
      hero[L0_11].zh = readValue(readValue(readValue(hero[L0_11].add, 192), 248), 1092, 4)
      hero[L0_11].dz = read(hero[L0_11].zh, 2432, 4)
      hero[L0_11].pd = readValue(hero[L0_11].add, 328)
      hero[L0_11].hy = readValue(hero[L0_11].pd, 40, 4)
      pd[L0_11] = hero[L0_11].pd[1].value
      hy[L0_11] = hero[L0_11].hy[1].value
      getxy(L0_11)
    end
  end
  return L0_11
end

function py(A0_12)
  local L1_13
  L1_13 = hero
  L1_13 = L1_13[A0_12]
  L1_13 = L1_13.hy
  L1_13 = L1_13[1]
  L1_13 = L1_13.value
  if L1_13 == 0 then
    L1_13 = 0
    return L1_13
  else
    L1_13 = 16
    return L1_13
  end
end

function getxy(A0_14)
  local L1_15
  L1_15 = hero
  L1_15 = L1_15[A0_14]
  L1_15.x = readValue(readValue(hero[A0_14].pd, 16), py(A0_14), 4)
  L1_15 = hero
  L1_15 = L1_15[A0_14]
  L1_15.y = readValue(readValue(hero[A0_14].pd, 16), py(A0_14) + 8, 4)
end

function getaim()
  myid = read(readValue(readValue(readValue(readValue(readValue(moduaddr("libil2cpp.so", 170763016), 160), 0), 16), 24), 40), 340, 4)[1].value
  mydw = read(readValue(readValue(readValue(readValue(readValue(moduaddr("libil2cpp.so", 170763016), 160), 0), 16), 24), 40), 356, 4)[1].value
  zm = readValue(readValue(readValue(readValue(readValue(readValue(readValue(readValue(readValue(moduaddr("libil2cpp.so", 170763016), 160), 0), 16), 24), 40), 64), 48), 176), 0)
  jl = read(zm, 228, 4)[1].value
  return mydw == 1 and 1 or -1
end

function circulate(A0_16, A1_17)
  local L2_18, L3_19, L4_20, L5_21, L6_22
  L2_18 = 0
  L3_19 = temp
  L4_20 = id
  L5_21 = hp
  L6_22 = distan
  L6_22 = {}
  hc = {}
  xytable = {}
  while true do
    gg.sleep(sleep)
    if gg.isVisible(true) then
      gg.setVisible(false)
      Main()
    end
    hc = {}
    xytable = {}
    for _FORV_11_ = 1, A1_17 do
      hero[_FORV_11_].hp = gg.getValues(hero[_FORV_11_].hp)
      hero[_FORV_11_].pd = gg.getValues(hero[_FORV_11_].pd)
      hero[_FORV_11_].hy = gg.getValues(hero[_FORV_11_].hy)
      hero[_FORV_11_].x = gg.getValues(hero[_FORV_11_].x)
      hero[_FORV_11_].y = gg.getValues(hero[_FORV_11_].y)
      if pd[_FORV_11_] ~= hero[_FORV_11_].pd[1].value or hy[_FORV_11_] ~= hero[_FORV_11_].hy[1].value then
        gethreo()
      end
      xytable[_FORV_11_] = {}
      xytable[_FORV_11_][1] = hero[_FORV_11_].x[1].value
      xytable[_FORV_11_][2] = hero[_FORV_11_].y[1].value
      xytable[_FORV_11_][3] = os.clock()
      if ({
        ["id"] = _FORV_11_,
        ["hp"] = hero[_FORV_11_].hp[1].value
      }).hp ~= 0 and me ~= _FORV_11_ then
        table.insert({}, {
          ["id"] = _FORV_11_,
          ["hp"] = hero[_FORV_11_].hp[1].value
        })
      end
    end
    if aim then
      table.sort({}, hpsort)
      for _FORV_12_, _FORV_13_ in pairs({}) do
        v = _FORV_13_.id
        distan = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
        if distan <= jl and gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
          prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + distan / 64000)
          ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
          ax = ax * 1
          ay = ay * 1
          freezexy(ax, ay)
          break
        end
      end
      if true == false then
        unfreeze()
      end
      gg.hist = xytable
    else
      unfreeze()
    end
  end
end

function readmem(A0_23, A1_24)
  local L2_25
  L2_25 = {}
  L2_25[1] = {}
  L2_25[1].address = A0_23
  L2_25[1].flags = A1_24
  L2_25 = gg.getValues(L2_25)
  return L2_25[1].value
end

function freezexy(A0_26, A1_27)
  local L2_28, L3_29
  L2_28 = {}
  L3_29 = zm
  L3_29 = L3_29[1]
  L3_29 = L3_29.address
  L2_28[1] = {}
  L2_28[1].address = L3_29 + 112
  L2_28[1].flags = gg.TYPE_FLOAT
  L2_28[1].value = A0_26
  L2_28[1].freeze = true
  L2_28[2] = {}
  L2_28[2].address = L3_29 + 120
  L2_28[2].flags = gg.TYPE_FLOAT
  L2_28[2].value = A1_27
  L2_28[2].freeze = true
  L2_28[3] = {}
  L2_28[3].address = L3_29 + 180
  L2_28[3].flags = gg.TYPE_FLOAT
  L2_28[3].value = A0_26
  L2_28[3].freeze = mode
  L2_28[4] = {}
  L2_28[4].address = L3_29 + 188
  L2_28[4].flags = gg.TYPE_FLOAT
  L2_28[4].value = A1_27
  L2_28[4].freeze = mode
  gg.addListItems(L2_28)
end

function unfreeze()
  local L0_30, L1_31
  L0_30 = {}
  L1_31 = zm
  L1_31 = L1_31[1]
  L1_31 = L1_31.address
  L0_30[1] = {}
  L0_30[1].address = L1_31 + 112
  L0_30[1].flags = gg.TYPE_FLOAT
  L0_30[1].freeze = false
  L0_30[2] = {}
  L0_30[2].flags = gg.TYPE_FLOAT
  L0_30[2].address = L1_31 + 120
  L0_30[2].freeze = false
  L0_30[3] = {}
  L0_30[3].address = L1_31 + 180
  L0_30[3].flags = gg.TYPE_FLOAT
  L0_30[3].freeze = false
  L0_30[4] = {}
  L0_30[4].address = L1_31 + 188
  L0_30[4].flags = gg.TYPE_FLOAT
  L0_30[4].freeze = false
  gg.addListItems(L0_30)
end

function getdistance(A0_32, A1_33, A2_34, A3_35)
  return math.sqrt(math.pow(A3_35 - A1_33, 2) + math.pow(A2_34 - A0_32, 2))
end

function preload(A0_36, A1_37, A2_38)
  local L3_39, L4_40, L5_41, L6_42, L7_43, L8_44, L9_45, L10_46
  L3_39, L4_40, L5_41, L6_42, L7_43, L8_44, L9_45, L10_46 = nil, nil, nil, nil, nil, nil, nil, nil
  if A0_36[1] == A1_37[1] and A0_36[2] == A1_37[2] then
    return A0_36[1], A0_36[2]
  end
  L3_39 = getdistance(A0_36[1], A0_36[2], A1_37[1], A1_37[2])
  L4_40 = A1_37[3] - A0_36[3]
  L5_41 = L3_39 / L4_40
  L6_42 = L5_41 * A2_38
  L7_43 = L6_42 + L3_39
  L8_44 = L7_43 / L3_39
  L9_45 = (A1_37[1] - A0_36[1]) * L8_44
  L10_46 = (A1_37[2] - A0_36[2]) * L8_44
  return A1_37[1] + L9_45, A1_37[2] + L10_46
end

function getqt(A0_47, A1_48)
  return A0_47 / math.sqrt(A0_47 * A0_47 + A1_48 * A1_48), A1_48 / math.sqrt(A0_47 * A0_47 + A1_48 * A1_48)
end

function hpsort(A0_49, A1_50)
  return A0_49.hp <= A1_50.hp
end

while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    Main()
  end
end
