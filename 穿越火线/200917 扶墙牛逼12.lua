function L1_1()
  menu = gg.choice({
    "🔰扶墙改🔰",
    "加速 开/关",
    "扶墙大厅范围 开关",
    "射速加快 开/关",
    "扶墙透视 开/关",
    "自瞄",
    "高跳",
    "所有武器无后",
    "锁头",
    "踏空",
    "巨人",
    "聚点",
    "一键巨人+透视",
    "退出脚本"
  }, nil, "所有功能内存选择默认即可辅助会自动更改内存！\n如果你设置的内存不是默认，可能会出现一些问题还有免费辅助不要二改")
  if menu == 1 then
    a()
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
    G()
  end
  if menu == 9 then
    H()
  end
  if menu == 10 then
    I()
  end
  if menu == 11 then
    J()
  end
  if menu == 12 then
    K()
  end
  if menu == 13 then
    L()
  end
  if menu == 14 then
    Exit()
  end
  XGCK = -1
end
Main = L1_1
function L1_1()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1023D;1;1;1;1;1;1;0.78::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1023D;1::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("巨人开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1008981770;1148846080;2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("110340", gg.TYPE_DWORD)
  gg.toast("透视开启成功")
end
L = L1_1
function L1_1()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1065353216;1036831949;1077936128;1036831949;1077936128;1045220557;1084227584;1069547520", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(100000)
  gg.editAll("3212836864", gg.TYPE_DWORD)
  gg.processResume()
  gg.toast("聚点开启成功，如果无效果则会下局生效！")
end
K = L1_1
function L1_1()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1023D;1::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("巨人开启成功")
end
J = L1_1
function L1_1()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("-0.03999999911;0.079999999821;0.5;0.30000001192;1.4012985E-45:40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("1.821688e-44", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("踏空开启成功")
end
I = L1_1
function L1_1()
  gg.processResume()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1058642330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("1062339920", gg.TYPE_DWORD)
  gg.processResume()
  gg.toast("锁头开启成功")
end
H = L1_1
function L1_1()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.toast("过保护成功")
end
a = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1000.0F;1.0F;1000.0F;1.0F::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("无后开启成功")
end
G = L1_1
function L1_1()
  menu1 = gg.multiChoice({
    "大佬加速",
    "扶墙加速",
    "和谐加速",
    "关闭加速",
    "返回上一页"
  }, nil, "游戏内开启，死一次开一次，每一局开一次\n注意:关闭加速是关闭拉回加速！\n警告:开了微加速就别开拉回加速了，可能会闪退！\n开了拉回加速没有关闭拉回加速也不要开微加速，可能会闪退")
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
      HOME()
    end
  end
  GLWW = -1
end
A = L1_1
function L1_1()
  menu1 = gg.multiChoice({
    "开启范围",
    "关闭范围",
    "返回上一页"
  }, nil, "范围使用方法:\n大厅开启\n除新年广场有空气墙，其他地图全部完美运行!")
  if menu1 == nil then
  else
    if menu1[1] == true then
      b1()
    end
    if menu1[2] == true then
      b2()
    end
    if menu1[3] == true then
      HOME()
    end
  end
  GLWW = -1
end
B = L1_1
function L1_1()
  menu1 = gg.multiChoice({
    "开启射速",
    "关闭射速",
    "返回上一页"
  }, nil, "扶墙QQ:1210620877")
  if menu1 == nil then
  else
    if menu1[1] == true then
      c1()
    end
    if menu1[2] == true then
      c2()
    end
    if menu1[3] == true then
      HOME()
    end
  end
  GLWW = -1
end
C = L1_1
function L1_1()
  menu1 = gg.multiChoice({
    "开启透视",
    "关闭透视",
    "返回上一页"
  }, nil, "一局一开")
  if menu1 == nil then
  else
    if menu1[1] == true then
      d1()
    end
    if menu1[2] == true then
      d2()
    end
    if menu1[3] == true then
      HOME()
    end
  end
  GLWW = -1
end
D = L1_1
function L1_1()
  gg.clearResults()
  gg.searchNumber("0.87999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99990)
  gg.editAll("3.2", gg.TYPE_FLOAT)
  gg.toast("自瞄开启成功")
end
E = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("4.68580007553;0.60000002384;2.79999995232;10::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.processResume()
  gg.searchNumber("2.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("大佬加速开启成功")
  os.exit()
end
a1 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("4.68580007553;0.60000002384;2.79999995232;10::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("2.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("微加速开启成功")
end
a2 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("1077097267", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("1090324736", gg.TYPE_DWORD)
  gg.processResume()
  gg.toast("拉回加速开启成功")
end
a3 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1090324736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("1077097267", gg.TYPE_DWORD)
  gg.processResume()
  gg.toast("拉回加速关闭成功")
end
a4 = L1_1
function L1_1()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2;0.00001;90;90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.00001F;-382,908,368;-498,216,936;-509,587,456;-509,591,551::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(909)
  gg.editAll("12", gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
end
b1 = L1_1
function L1_1()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2;1.5;90;90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.00001", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2.7F;-382,908,368;-498,216,936;-509,587,456;-509,591,551::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(909)
  gg.editAll("0.00001", gg.TYPE_FLOAT)
  gg.toast("范围关闭成功")
end
b2 = L1_1
function L1_1()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".5F;1.0F;1000.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("1.2", gg.TYPE_FLOAT)
  gg.toast("射速开启成功")
end
c1 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".5F;3.4e38F;1000.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("射速关闭成功")
end
c2 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1008981770;1148846080;2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("110340", gg.TYPE_DWORD)
  gg.toast("透视开启成功")
end
d1 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1008981770;1148846080;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("2048", gg.TYPE_DWORD)
  gg.toast("透视关闭成功")
end
d2 = L1_1
function L1_1()
  menu1 = gg.multiChoice({
    "0.2倍高跳",
    "1.5倍高跳",
    "2倍高跳",
    "2.5倍高跳",
    "3倍高跳",
    "3.5倍高跳",
    "4倍高跳",
    "4.5倍高跳",
    "5倍高跳",
    "返回上一页"
  }, nil, "扶墙")
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
      HOME()
    end
  end
  GLWW = -1
end
F = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0.2", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("0.2倍高跳开启成功")
end
f1 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("1.5倍高跳开启成功")
end
f2 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("2倍高跳开启成功")
end
f3 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("2.5", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("2.5倍高跳开启成功")
end
f4 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("3倍高跳开启成功")
end
f5 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("3.5", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("3.5倍高跳开启成功")
end
f6 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("4倍高跳开启成功")
end
f7 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("4.5", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("4.5倍高跳开启成功")
end
f8 = L1_1
function L1_1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("5倍高跳开启成功")
end
f9 = L1_1
function L1_1()
   print("好好学习，天天向上")
  os.exit()
end
cs = "扶墙"
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
