
function Main0()
  SN = gg.choice({
    "稳定功能（普通上分功能）",
    "变态功能（想封号的试试）",
    "火箭筒功能（尼玛青铜追击炮？）",
    "防封（防不住变态）",
    "退出脚本（狗东西）"
  }, nil, "🔴日开留名🔴:☠️Xy野格☠️到此一游\nXy野格交流群QQ1045210295")
  if SN == 1 then
    Main1()
  end
  if SN == 2 then
    Main2()
  end
  if SN == 3 then
    Main3()
  end
  if SN == 4 then
    Main4()
  end
  if SN == 5 then
    HS33()
  end
  FX1 = 0
  FX2 = 0
end

function Main1()
  SN = gg.multiChoice({
    "范围开锁＋救人",
    "秒开锁",
    "穿墙",
    "隐身",
    "疾跑10倍",
    "疾跑无限",
    "加速（微加速不用疾跑）",
    "返回"
  }, nil, "江南大帅比\n🔴日开留名🔴:☠️Xy野格☠️到此一游\nXy野格交流群QQ1045210295")
  if SN[1] == true then
    HS6()
  end
  if SN[2] == true then
    HS7()
  end
  if SN[3] == true then
    HS24()
  end
  if SN[4] == true then
    HS9()
  end
  if SN[5] == true then
    HS10()
  end
  if SN[6] == true then
    HS11()
  end
  if SN[7] == true then
    HS12()
  end
  if SN[8] == true then
    HS29()
  end
  FX1 = 0
  FX2 = 0
end

function HS6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("全屏开机救人开启成功")
  gg.clearResults()
end

function HS7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66.89824676514", gg.TYPE_FLOAT)
  gg.toast("全东西秒开开启成功")
  gg.clearResults()
end

function HS24()
  gg.clearResults()
  gg.setRanges(1)
  gg.searchNumber("1;0.05000000075;2.3694278e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("穿墙开启成功")
  gg.clearResults()
end

function HS9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("105;201;500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("105;201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_DWORD)
  gg.toast("隐身开启成功")
  gg.clearResults()
end

function HS10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("疾跑加速10倍开启成功")
  gg.clearResults()
end

function HS11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.toast("疾跑无限时间开启成功")
  gg.clearResults()
end

function HS12()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("230887D;5.69346046448::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("230887", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5000000", gg.TYPE_DWORD)
  gg.toast("加速开启成功")
  gg.clearResults()
end

function HS29()
  Main0()
end

function Main2()
  SN = gg.multiChoice({
    "上帝视角（游戏里搜索）",
    "火箭筒秒杀",
    "倒地复活",
    "手雷范围",
    "手雷秒杀",
    "返回"
  }, nil, "江南大帅比\n🔴日开留名🔴:☠️Xy野格☠️到此一游\nXy野格交流群QQ1045210295")
  if SN[1] == true then
    HS20()
  end
  if SN[2] == true then
    HS13()
  end
  if SN[3] == true then
    HS14()
  end
  if SN[4] == true then
    HS22()
  end
  if SN[5] == true then
    HS23()
  end
  if SN[6] == true then
    HS30()
  end
  FX1 = 0
  FX2 = 0
end

function HS20()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.30000001192F;55.00000762939F;10.0F;12.0F::81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启成功")
  gg.clearResults()
end

function HS13()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("火箭筒秒杀已开启")
  gg.clearResults()
end

function HS14()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("倒地复活开启成功")
  gg.clearResults()
end

function HS22()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50000", gg.TYPE_FLOAT)
  gg.toast("手雷全屏范围开启成功")
  gg.clearResults()
end

function HS23()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("手雷秒杀开启成功")
  gg.clearResults()
end

function HS30()
  Main0()
end

function Main3()
  SN = gg.multiChoice({
    "火箭筒改火箭筒3级",
    "火箭筒改冲锋枪3级",
    "火箭筒改追击炮3级",
    "返回"
  }, nil, "江南大帅比\n🔴日开留名🔴:☠️Xy野格☠️到此一游\nXy野格交流群QQ1045210295")
  if SN[1] == true then
    HS16()
  end
  if SN[2] == true then
    HS17()
  end
  if SN[3] == true then
    HS18()
  end
  if SN[4] == true then
    HS31()
  end
  FX1 = 0
  FX2 = 0
end

function HS16()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("102", gg.TYPE_DWORD)
  gg.toast("火箭筒改火箭筒3级开启成功")
  gg.clearResults()
end

function HS17()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("132", gg.TYPE_DWORD)
  gg.toast("火箭筒还冲锋枪3级开启成功")
  gg.clearResults()
end

function HS18()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("112", gg.TYPE_DWORD)
  gg.toast("火箭筒改追击炮3级开启成功")
  gg.clearResults()
end

function HS31()
  Main0()
end

function Main4()
  SN = gg.multiChoice({
    "防封1",
    "防封2",
    "防封3",
    "返回"
  }, nil, "江南大帅比\n🔴日开留名🔴:☠️Xy野格☠️到此一游\nXy野格交流群QQ1045210295")
  if SN[1] == true then
    HS25()
  end
  if SN[2] == true then
    HS26()
  end
  if SN[3] == true then
    HS27()
  end
  if SN[4] == true then
    HS32()
  end
  FX1 = 0
  FX2 = 0
end

function HS25()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("防封1开启成功")
  gg.clearResults()
end

function HS26()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("防封2开启成功")
  gg.clearResults()
end

function HS27()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("防封开启一局一开")
  gg.clearResults()
end

function HS32()
  Main0()
end

function HS33()
  os.exit()
end

while true do
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end
