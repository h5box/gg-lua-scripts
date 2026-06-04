function Main()
  menu = gg.choice({
    '进入發呆逃跑脚本',
    '后期会更新(点了也没用)',
    '退出發呆神仙脚本'},
  2020,'QQ号2598487063 快猫ID20503109')
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then Exit() end
  XGCK=-1
end



function A()
  menu1 = gg.multiChoice({
    '秒开钥匙🔑',
    '跳高无限',
    '疾跑无限',
    '火箭筒无间隔',
    '倒地复活',
    '秒开逃生门',
    '秒开全部',
    '迫击炮无间隔',
    '火箭筒秒杀',
    '视野二倍',
    '返回上一页'},
  nil,'快猫ID20503109')
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[3] == true then a3() end
    if menu1[4] == true then a4() end
    if menu1[5] == true then a5() end
    if menu1[6] == true then a6() end
    if menu1[7] == true then a7() end
    if menu1[8] == true then a8() end
    if menu1[9] == true then a9() end
    if menu1[10] == true then a10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function B()
  menu1 = gg.multiChoice({
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '后期会更',
    '返回主页'},
  nil,'QQ号2598487063')
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then b7() end
    if menu1[8] == true then b8() end
    if menu1[9] == true then b9() end
    if menu1[10] == true then b10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function a1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;1;256D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("秒开钥匙开启成功")
  gg.clearResults()
end




function a2()
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("跳高无限时间开启成功")
  gg.clearResults()
end



function a3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.toast("疾跑无限时间开启成功")
  gg.clearResults()
end



function a4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("火箭筒无间隔开启成功")
  gg.clearResults()
end




function a5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("倒地复活开启成功")
  gg.clearResults()
end




function a6()
  gg.clearResults()gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("-90;1D;256D;8;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("秒开逃生门开启成功")
  gg.clearResults()
end



function a7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66.89824676514", gg.TYPE_FLOAT)
  gg.toast("全东西秒开开启成功")
end



function a8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("追击炮无间隔开启成功")
  gg.clearResults()

end



function a9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("火箭筒秒杀开启成功")
  gg.clearResults()
end



function a10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("24", gg.TYPE_FLOAT)
  gg.toast("视野二倍开启成功")
  gg.clearResults()
end



function b1()

  gg.toast("开启成功")
end



function b2()

  gg.toast("开启成功")
end



function b3()

  gg.toast("开启成功")
end



function b4()

  gg.toast("开启成功")
end



function b5()

  gg.toast("开启成功")
end



function b6()

  gg.toast("开启成功")
end



function b7()

  gg.toast("开启成功")
end



function b8()

  gg.toast("开启成功")
end



function b9()

  gg.toast("开启成功")
end



function b10()

  gg.toast("开启成功")
end



function Exit()
  print("这里是退出脚本后的提示文字")
  os.exit()
end



function HOME()
  lw=1
  Main()
end



cs = '这里可以填QQ'
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    Main()
  end
end










