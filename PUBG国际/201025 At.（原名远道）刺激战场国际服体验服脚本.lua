function HOME()
  gg.alert(os.date("交流群：830700890\n现在时间是：\n%Y年%m月%d日%H时%M分%S秒\n\n请注意休息！合理娱乐！请勿沉迷！", "知道"))
  caidan = gg.choice({
    "🍃透视专区🍂",
    "🍃上色专区🍂",
    "🍃变态功能🍂",
    "结束脚本"
  }, nil, "At.（远道）稳定脚本")
  if caidan == 1 then
    tszq()
  end
  if caidan == 2 then
    sszq()
  end
  if caidan == 3 then
    ygss()
  end
  if caidan == 4 then
    jsjb()
  end
  HOMEDM = -1
end
function tszq()
  electives = gg.multiChoice({
    "🍎通用透视🍎",
    "🍎完美透视🍎",
    "🍎骁龙通用透视🍎",
    "🍎高清透视🍎",
    "🍎845透视🍎",
    "🍎845通用画质透视🍎",
    "🍎660透视🍎",
    "🍎625透视🍎",
    "🍎653透视🍎",
    "🍎710透视🍎",
    "🍎835完美透视🍎",
    "🍎835高清透视🍎",
    "🍎435流畅透视🍎",
    "🍎660完美透视🍎",
    "🍎透视防闪（出生岛）🍎",
    "返回主页"
  }, nil, "请大厅开启 按手机处理器开启")
  if electives == nil then
  else
    if electives[1] == true then
      a1()
    end
    if electives[2] == true then
      a2()
    end
    if electives[3] == true then
      a3()
    end
    if electives[4] == true then
      a4()
    end
    if electives[5] == true then
      a5()
    end
    if electives[6] == true then
      a6()
    end
    if electives[7] == true then
      a7()
    end
    if electives[8] == true then
      a8()
    end
    if electives[9] == true then
      a9()
    end
    if electives[10] == true then
      a10()
    end
    if electives[11] == true then
      a11()
    end
    if electives[12] == true then
      a12()
    end
    if electives[13] == true then
      a13()
    end
    if electives[14] == true then
      a14()
    end
    if electives[15] == true then
      a15()
    end
    if electives[16] == true then
      HOME()
    end
  end
end
function sszq()
  electives = gg.multiChoice({
    "🌹通用黑色🌹",
    "🌹通用白色🌹",
    "🌹人物红色🌹",
    "🌹人物深红🌹",
    "🌹人物青色🌹",
    "🌹人物绿色🌹",
    "🌹人物紫色🌹",
    "🌹人物蓝色🌹",
    "🌹人物深蓝🌹",
    "🌹人物黄色🌹",
    "🌹人物粉色🌹",
    "🌹人物百变🌹",
    "🌹人物蓝血🌹",
    "🌹人物闪光🌹",
    "🌹人物百变(845处理器专用流畅蓝/高清紫/HDR变色)🌹",
    "返回主页"
  }, nil, "上色均为流畅画质")
  if electives == nil then
  else
    if electives[1] == true then
      b1()
    end
    if electives[2] == true then
      b2()
    end
    if electives[3] == true then
      b3()
    end
    if electives[4] == true then
      b4()
    end
    if electives[5] == true then
      b5()
    end
    if electives[6] == true then
      b6()
    end
    if electives[7] == true then
      b7()
    end
    if electives[8] == true then
      b8()
    end
    if electives[9] == true then
      b9()
    end
    if electives[10] == true then
      b10()
    end
    if electives[16] == true then
      HOME()
    end
  end
end

function ygss()
  electives = gg.multiChoice({
    "🔥跳跃翻墙🔥",
    "🔥天线宝宝🔥",
    "🔥强力自瞄🔥",
    "🔥范围伤害🔥",
    "🔥持枪无后🔥",
    "🔥枪械防抖🔥",
    "🔥蹲下路飞🔥",
    "🔥趴下路飞🔥",
    "🔥高跳防摔🔥",
    "🔥s12k聚点🔥",
    "🔥美化蓝血🔥",
    "🔥天空黑色🔥",
    "🔥单板除草🔥",
    "🔥吉普浮空🔥",
    "🔥全车加速🔥",
    "返回主页"
  }, nil, "At提示:变态功能请低调使用")
  if electives == nil then
  else
    if electives[1] == true then
      d1()
    end
    if electives[2] == true then
      d2()
    end
    if electives[3] == true then
      d3()
    end
    if electives[4] == true then
      d4()
    end
    if electives[5] == true then
      d5()
    end
    if electives[6] == true then
      d6()
    end
    if electives[7] == true then
      d7()
    end
    if electives[8] == true then
      d8()
    end
    if electives[9] == true then
      d9()
    end
    if electives[10] == true then
      d10()
    end
    if electives[11] == true then
      d11()
    end
    if electives[12] == true then
      d12()
    end
    if electives[13] == true then
      d13()
    end
    if electives[14] == true then
      d14()
    end
    if electives[15] == true then
      d15()
    end
    if electives[16] == true then
      HOME()
    end
  end
end

function a1()
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7961574e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("通用透视开启成功")
end
function a2()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7961574e21;2;5.6896623e-29;3.7615819e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.7615819e-37;4.8699472e21;2;1.3912525e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("完美透视开启成功")
  end 
function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("1.9327361e10;4.8146041e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("121", gg.TYPE_FLOAT)
  gg.toast("加载透视30%")
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("1.1202042e-19;3.7615819e-37;2.0;-127::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("121", gg.TYPE_FLOAT)
  gg.toast("加载透视60%")
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("-5.5695588e-40;4.814603e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("121", gg.TYPE_FLOAT)
  gg.toast("加载透视90%")
  gg.setRanges(gg.REGION_BAD)
  gg.setRanges(gg.REGION_BAD)
  gg.clearResults()
  gg.searchNumber("2.718519e-43;1.5414283e-44;3.7615819e-37;2;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("121", gg.TYPE_FLOAT)
  gg.toast("通用透视开启成功")  
end
function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.0F;1.6623164e-19F;3.6734353e-39F;1.6643301e10F;3.8571063e-39F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.3912525e-19F;5.465064e-44F;1.1202042e-19F;3.7615819e-37F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.0F;1.6623075e-19F;9.2194229e-41F;7.2303579e-15F;2.37549686432F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.3912556e-19F;1.5414283e-44F;1.1202057e-19F;3.7615819e-37F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.0F;-1.0F;0.04000854492F;0.11999511719F;-0.02749633789F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("高清透视开启成功")
end

function a5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast(" 845流畅透视开启成功")
end
function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2.0;1.6623075e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("❤")
  gg.clearResults()
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2.0;1.6623054e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("♥")
  gg.clearResults()
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3312335e-43F;1.391256e-19F;2.0F;1.6623108e-19F;9.2194229e-41F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912537e-19F;3.7615819e-37F;2.0F;-1.0F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.4028356e-29F;2.25000452995F;2.0F;1.6623054e-19F;7.1054282e-15F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("845通用画质透视开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("845完美透视开启成功")
end
function a7()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("防封代码已注入")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("骁龙660透视开启成功")
end

function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("625透视开启成功")
  
end
function a9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00999999978;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00999999978;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("完美透视开启成功")
  
end
function a10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("透视正在开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("75％")
  gg.toast("710透视开启成功")
  
end
function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("835完美透视开启成功")
  
end
function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("4.7408155e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("2.25000190735;3.75055122375;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("3.25000596046;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.setVisible(false)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("835透视开启成功")
  gg.toast(os.date("现在时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("435透视开启成功")
  
end
function a14()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("65,536D;1.8945555e-40F;2.8130226e-40F;5.8013756e-42F;3.7615819e-37F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("256D;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D; 2.718519e-43F; 3.7615819e-37F;2.0F; -1.0F; 1.0F; -127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("660完美透视开启成功")
  
end
function a15()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("房屋闪烁修复成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("透视防闪开启成功")
  
end
function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.toast("通用黑色开启成功")
  
end
function b2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.05499718338;-2.7282562e-20;1;257D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("通用白色开启成功，千辰提示提示:  进游戏有效果")
end
function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.8189894e-12;3;4.75926e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.toast("人物红色开启成功")
  
end
function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("人物深色开启成功")
  
end
function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8200;1194380042;196615;196617;262151;393219;69685;69689::404", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.toast("人物青色开启成功")
end
function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.50048899651;2.814536e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.50048899651", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("人物绿色开启成功")
end

function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2057", gg.TYPE_DWORD)
  gg.toast("人物紫色开启成功")
end
function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-1.4693707e-39F;1;2;3.2737415e-40F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("人物蓝色开启成功") 
end
function b9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-2,146,959,358;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6666", gg.TYPE_DWORD)
  gg.toast("人物深蓝色开启成功") 
end
function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("256;8200;13::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("人物黄色开启成功")
end
function b11()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
  gg.toast("人物粉色开启成功")
  
end
function b12()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("671,088,640", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("671,088,640", gg.TYPE_DWORD, false)
  gg.searchAddress("3E0", 4294967295)
  gg.getResults(10)
  gg.editAll("-242", gg.TYPE_DWORD)
  gg.toast("人物百变开启成功")
  
end
function b13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("444", gg.TYPE_FLOAT)
  gg.toast("人物蓝血开启成功")
  
end
function b14()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.50048899651;2.814536e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.50048899651", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("4", gg.TYPE_FLOAT)
  gg.toast("人物闪光开启成功")
  
end
function b15()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("256;8200;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.toast("人物百变开启成功")
end

function d1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("跳跃翻墙开启成功")
end


function d2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(7)
  gg.editAll("1.96875", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.96875F;1.96875F;-100.91194152832;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("天线宝宝开启成功")
end

function d3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;30;0.3;0.3;80;25;220::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.03", gg.TYPE_FLOAT)
  gg.toast("自瞄第一步开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("36;1065353216;50528513;1203982336:", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1,090,999,900", gg.TYPE_DWORD)
  gg.toast("强力自瞄开启成功")
end

function d4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("280", gg.TYPE_FLOAT)
gg.toast("范围伤害开启成功")
end

function d5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,084,227,584D;1D;0.64999997616F;1.2520827e-32F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2520827e-32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.4012985e-43", gg.TYPE_FLOAT)
  gg.toast("持枪无后开启成功")
end

function d6()
   gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("枪械防抖开启成功")
end

function d7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.53869867324829;13.279829025269;-0.004204273223877;23.525857925415::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.004204273223877", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-330", gg.TYPE_FLOAT)
  gg.toast("蹲下路飞开启成功\n蹲下开镜有效果")
end

function d8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.searchNumber("18.38614463806;0.53446578979", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("240", gg.TYPE_FLOAT)
gg.toast("趴下路飞开启成功\n趴下开镜有效果")
end

function d9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("1;35;443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("3",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("3;35;443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("443",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("2500",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0;0.05",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("1000",gg.TYPE_FLOAT)
gg.toast("加速高跳防摔开启成功")
end

function d10()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.79999995232;1.79999995232;4;1.09375::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("S12K聚点开启成功")
end
 
 function d11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("444", gg.TYPE_FLOAT)
gg.toast("美化蓝血开启成功")
end

function d12()
gg.clearResults()
  gg.alert("仅绝地海岛地图有效")
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999", gg.TYPE_FLOAT)
  gg.toast("天空黑色开启成功")
end

function d13()
gg.clearResults()
  gg.searchNumber("8;1.2;1.2;0.8;1.5;0.8;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("单板除草开启成功")
end

function d14()
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
  gg.toast("吉普浮空开启成功")
end

function d15()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.toast("全车加速开启成功")
end

function jsjb()
  gg.alert("免费脚本更新群830700890", "复制群号")
  gg.copyText("830700890")
  os.exit()
end
while true do
  if gg.isVisible(true) then
    HOMEDM = 1
    gg.setVisible(false)
  end
  if HOMEDM == 1 then
    HOME()
  end
end