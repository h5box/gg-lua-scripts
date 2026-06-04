function SearchWrite(A0_9, A1_10, A2_11)
  local L3_12, L4_13, L5_14, L6_15, L7_16, L8_17, L9_18, L10_19, L11_20, L12_21, L13_22, L14_23, L15_24, L16_25, L17_26, L18_27, L19_28, L20_29, L21_30
end

function Main()
  SN = gg.multiChoice({
    "隐身[全局]【游戏开】【死亡/退出生效】",
    "小刀/生化/猎手范围[全局]【游戏中拿着小刀开】",
    "高跳[全局]【游戏开】【切枪/死亡/退出生效】",
    "爬墙【单局】【游戏开】",
    "贴墙透视[全局]【游戏开】",
    "自改伤害[全局]【游戏开】",
    "范围追踪【单局】【游戏开】",
    "飞天【单局】【游戏开】",
    "自改移速[全局]【游戏开】【死亡/退出生效】",
    "无限新手手榴弹【游戏开启】【拿着手雷开启】【全局】",
    "【其他功能】",
    "退出脚本"
  }, nil, "")
  if SN == nil then
  else
    if SN[1] == true then
      aaa()
    end
    if SN[2] == true then
      bbb()
    end
    if SN[3] == true then
      ccc()
    end
    if SN[4] == true then
      ddd()
    end
    if SN[5] == true then
      eee()
    end
    if SN[6] == true then
      fff()
    end
    if SN[7] == true then
      ggg()
    end
    if SN[8] == true then
      h()
    end
    if SN[9] == true then
      y()
    end
    if SN[10] == true then
      p()
    end
    if SN[11] == true then
      AAA()
    end
    if SN[12] == true then
      Exit()
    end
  end
  XGCK = -1
end

function aaa()
  ss = gg.prompt({
    "【-999是隐身无敌】【改3是1000血量，不会隐身】:"
  }, {
    [1] = "-999"
  })
  if ss == nil then
    gg.toast("你还没输入数值")
  else
    M = ss[1] * 1 - 1 + 1
    gg.setRanges(4)
    SearchWrite({
      {9.999999747378752E-5, 0},
      {9.999999747378752E-5, 16},
      {1, 32},
      {9.999999747378752E-5, 40}
    }, {
      {
        M,
        24
      }
    }, 16)
  end
end

function bbb()
  gg.setRanges(4)
  SearchWrite({
    {1.399999976158142, 0},
    {0.0010000000474974513, -8},
    {0.10000000149011612, 8}
  }, {
    {10, -8}
  }, 16)
  gg.setRanges(4)
  SearchWrite({
    {0.0010000000474974513, 0},
    {1.401298464324817E-45, 32}
  }, {
    {100, 0}
  }, 16)
end

function ccc()
  gg.setRanges(4)
  SearchWrite({
    {0.0010000000474974513, 0},
    {0.30000001192092896, 8},
    {0.5199999809265137, 16},
    {0.10000000149011612, 24}
  }, {
    {1, 24}
  }, 16)
end

function ddd()
  gg.setRanges(4)
  SearchWrite({
    {0.4000000059604645, 0},
    {0.10000000149011612, 4}
  }, {
    {5, 4}
  }, 16)
end

function eee()
  ss = gg.prompt({
    "就1.5就行了:"
  }, {
    [1] = "1.5"
  })
  if ss == nil then
    gg.toast("你还没输入数值")
  else
    M = ss[1] * 1 - 1 + 1
    gg.setRanges(4)
    SearchWrite({
      {5, 0},
      {60, 4},
      {1000, 12}
    }, {
      {
        M,
        8
      }
    }, 16)
  end
end

function fff()
  ss = gg.prompt({
    "建议改5～20之间，改太高没有伤害:"
  }, {
    [1] = "5"
  })
  if ss == nil then
    gg.toast("你还没输入数值")
  else
    M = ss[1] * 1 - 1 + 1
    gg.toast("设定为:" .. ss[1] .. "")
    gg.setRanges(4)
    SearchWrite({
      {150000, 0},
      {150000, 16}
    }, {
      {
        M,
        24
      }
    }, 16)
  end
end

function ggg()
  gg.setRanges(4)
  SearchWrite({
    {0.5, 0},
    {0.15000000596046448, 4}
  }, {
    {100000, 8}
  }, 16)
  gg.setRanges(4)
  SearchWrite({
    {0.30000001192092896, 0},
    {0.4000000059604645, 4},
    {0.5, 8}
  }, {
    {111111, 4},
    {111111, 8}
  }, 16)
end

function h()
  gg.setRanges(4)
  SearchWrite({
    {0.10000000149011612, 0},
    {1.401298464324817E-45, -12},
    {0.4000000059604645, -4}
  }, {
    {30, -4}
  }, 16)
end

function y()
  ss = gg.prompt({
    "建议改0.1~0.3之间'':"
  }, {
    [1] = "0.1"
  })
  if ss == nil then
    gg.toast("你还没输入数值")
  else
    M = ss[1] * 1 - 1 + 1
    gg.setRanges(4)
    SearchWrite({
      {9.999999747378752E-5, 0},
      {9.999999747378752E-5, 40}
    }, {
      {
        M,
        16
      }
    }, 16)
  end
end

function p()
  ss = gg.prompt({
    "输入你想要数默认:"
  }, {
    [1] = "88888888"
  })
  if ss == nil then
    gg.toast("你还没输入数值")
  else
    M = ss[1] * 1 - 1 + 1
    gg.setRanges(32)
    SearchWrite({
      {900, 0},
      {200, 4},
      {7000, 8},
      {2500, 12},
      {1500, 16}
    }, {
      {
        M,
        24
      }
    }, 4)
  end
end

function SearchWrite(A0_31, A1_32, A2_33)
  local L3_34, L4_35, L5_36, L6_37, L7_38, L8_39, L9_40, L10_41, L11_42, L12_43, L13_44, L14_45, L15_46, L16_47, L17_48, L18_49, L19_50, L20_51, L21_52
end

function AAA()
  SN = gg.multiChoice({
    "锁头【单局】【游戏开】",
    "穿墙【开】【全局】【游戏开】",
    "穿墙【关】【全局】【游戏开】",
    "瞎子锁头【游戏开】【单局】",
    "手枪改龙炮【大厅】【全局】【1】",
    "龙炮攻击子弹数量【大厅】【全局】【2】",
    "龙炮高伤【大厅】【全局】【3】",
    "返回"
  }, nil, "")
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
      Main()
    end
  end
  XGCK = -1
end

function a()
  gg.setRanges(4)
  gg.searchNumber("0.18000000715", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("锁头修改成功")
  gg.clearResults()
end

function b()
  gg.setRanges(4)
  gg.searchNumber("1053609165D;1036831949D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1036831949", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1936831949", gg.TYPE_DWORD)
  gg.toast("穿墙修改成功")
  gg.clearResults()
end

function c()
  gg.setRanges(4)
  gg.searchNumber("1053609165D;1936831949D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1936831949", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1036831949", gg.TYPE_DWORD)
  gg.toast("穿墙关闭成功")
  gg.clearResults()
end

function d()
  gg.setRanges(4)
  gg.searchNumber("1068540886", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("瞎子锁头修改成功")
  gg.clearResults()
end

function e()
  gg.setRanges(32)
  gg.searchNumber("10101011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10309241", gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end

function f()
  gg.setRanges(32)
  gg.searchNumber("5;13;13;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_DWORD)
  gg.toast("掉帧炮")
  gg.clearResults()
end

function g()
  gg.setRanges(32)
  gg.searchNumber("950;600;500;13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("950", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("40800", gg.TYPE_DWORD)
  gg.toast("修改完成")
  gg.clearResults()
end

function Exit()
  print("")
  os.exit()
end

cs = ""
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
