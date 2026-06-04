function Main()
  gg.toast("欢迎使用念哥哥脚本")
  menu = gg.choice({
    "稳定功能（挂拦截后包稳）",
    "半稳功能（看拦截➕演技的）",
    "变态功能一（建议自建房用，实战封号哟）",
    "火箭筒专区",
    "免费道具卡专区",
    "防封专区",
    "解封设备",
    "变态功能二(稳不稳看你洗没洗脸)",
    "退出脚本"
  }, nil, os.date("本脚本原创残念\n目前时间:\n%Y年/️%m月/%d日️\n%H:%M:%S"))
  if menu == 1 then
    A()
  end
  if menu == 2 then
    B()
  end
  if menu == 3 then
    C()
  end
  if menu == 4 then
    D()
  end
  if menu == 5 then
    E()
  end
  if menu == 6 then
    F()
  end
  if menu == 7 then
    G()
  end
  if menu == 8 then
    H()
  end
  if menu == 9 then
    Exit()
  end
  XGCK = -1
end

function A()
  gg.toast("欢迎来到稳定上分区")
  gg.alert("公告:本区为稳定上分的，如果加速开锁没有效果就重开一下，如果还是没效果就重启游戏")
  menu1 = gg.multiChoice({
    "1.8倍开锁（一局一开）",
    "2.8倍开锁（一局一开）",
    "3.0倍开锁（一局一开，快了就演一演）",
    "开锁自调版（开的太大封号别找我）",
    "透视（一局一开，）",
    "疾跑两倍速度（一般稳）",
    "返回上一页"
  }, nil, os.date("目前时间:\n%Y年/️%m月/%d日️\n%H:%M:%S"))
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
      a5()
    end
    if menu1[6] == true then
      a6()
    end
    if menu1[7] == true then
      HOME()
    end
  end
  GLWW = -1
end

function B()
  menu1 = gg.multiChoice({
    "无限金币虚拟（一局一开）",
    "无限金币实体（封号概率小）",
    "追捕者去护盾（大厅开）",
    "疾跑高跳30秒(大厅开)",
    "疾跑高跳无限(大厅开)",
    "返回上一页"
  }, nil, "需要好拦截才稳！")
  if menu1 == nil then
  else
    if menu1[1] == true then
      b1()
    end
    if menu1[2] == true then
      b2()
    end
    if menu1[3] == true then
      b3()
    end
    if menu1[4] == true then
      b4()
    end
    if menu1[5] == true then
      b5()
    end
    if menu1[6] == true then
      HOME()
    end
  end
  GLWW = -1
end

function C()
  menu1 = gg.multiChoice({
    "秒开锁🈲闭室",
    "4v1吸人",
    "8v2吸人",
    "手雷秒杀",
    "手雷全范围",
    "一级火箭筒改迫击炮三级",
    "迫击炮无间隔",
    "迫击炮全范围",
    "医疗包全范围",
    "倒地复活",
    "全屏开锁",
    "无限长度飞爪",
    "生命护盾无冷却［一局一开］",
    "4v1直接开门［一局一开］",
    "8v2直接开门［一局一开］",
    "疾跑超高速［高能预警］",
    "逃生全死［追捕用］",
    "追捕无限传送",
    "生命护盾无限时间",
    "生命护盾无限护盾值",
    "返回上一页"
  }, nil, "实战封号，封号别怪我🌚")
  if menu1 == nil then
  else
    if menu1[1] == true then
      c1()
    end
    if menu1[2] == true then
      c2()
    end
    if menu1[3] == true then
      c3()
    end
    if menu1[4] == true then
      c4()
    end
    if menu1[5] == true then
      c5()
    end
    if menu1[6] == true then
      c6()
    end
    if menu1[7] == true then
      c7()
    end
    if menu1[8] == true then
      c8()
    end
    if menu1[9] == true then
      c9()
    end
    if menu1[10] == true then
      c10()
    end
    if menu1[11] == true then
      c11()
    end
    if menu1[12] == true then
      c12()
    end
    if menu1[13] == true then
      c13()
    end
    if menu1[14] == true then
      c14()
    end
    if menu1[15] == true then
      c15()
    end
    if menu1[16] == true then
      c16()
    end
    if menu1[17] == true then
      c17()
    end
    if menu1[18] == true then
      c18()
    end
    if menu1[19] == true then
      c19()
    end
    if menu1[20] == true then
      c20()
    end
    if menu1[21] == true then
      HOME()
    end
  end
  GLWW = -1
end

function D()
  menu1 = gg.multiChoice({
    "火箭筒无冷却",
    "火箭筒秒杀",
    "火箭筒改13级皮肤",
    "返回上一页"
  }, nil, "实战也有概率封号，火箭筒无间隔看拦截和演技")
  if menu1 == nil then
  else
    if menu1[1] == true then
      d1()
    end
    if menu1[2] == true then
      d2()
    end
    if menu1[3] == true then
      d3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  GLWW = -1
end

function E()
  menu1 = gg.multiChoice({
    "疾跑免费",
    "高跳免费",
    "医疗箱免费",
    "皮卡免费",
    "飞爪免费",
    "手雷免费",
    "返回上一页"
  }, nil, "实战90%封号")
  if menu1 == nil then
  else
    if menu1[1] == true then
      e1()
    end
    if menu1[2] == true then
      e2()
    end
    if menu1[3] == true then
      e3()
    end
    if menu1[4] == true then
      e4()
    end
    if menu1[5] == true then
      e5()
    end
    if menu1[6] == true then
      e6()
    end
    if menu1[7] == true then
      HOME()
    end
  end
  GLWW = -1
end

function F()
  menu1 = gg.multiChoice({
    "防封第一步",
    "防封第二步",
    "返回上一页"
  }, nil, "配上拦截使用，只适合4399版本。开了这两个闪退的是手机问题，就别开了，不防举报")
  if menu1 == nil then
  else
    if menu1[1] == true then
      f1()
    end
    if menu1[2] == true then
      f2()
    end
    if menu1[3] == true then
      HOME()
    end
  end
  GLWW = -1
end

function G()
  menu1 = gg.multiChoice({
    "4399解封设备",
    "九游解封设备",
    "应用宝解封设备",
    "其他类型解封设备",
    "返回上一页"
  }, nil, "请在桌面或者其他地方开启此功能，必须清理游戏后台")
  if menu1 == nil then
  else
    if menu1[1] == true then
      g1()
    end
    if menu1[2] == true then
      g2()
    end
    if menu1[3] == true then
      g3()
    end
    if menu1[4] == true then
      g4()
    end
    if menu1[5] == true then
      HOME()
    end
  end
  GLWW = -1
end

function H()
  menu1 = gg.multiChoice({
    "治疗球无限时间",
    "治疗球无限血量",
    "治疗球范围增大",
    "无限夹子",
    "锁血",
    "侦查眼无限时间",
    "疾跑改护盾",
    "火箭筒改三级火箭筒(大厅开)",
    "返回上一页"
  }, nil, "不管是什么功能，请谨慎开启")
  if menu1 == nil then
  else
    if menu1[1] == true then
      h1()
    end
    if menu1[2] == true then
      h2()
    end
    if menu1[3] == true then
      h3()
    end
    if menu1[4] == true then
      h4()
    end
    if menu1[5] == true then
      h5()
    end
    if menu1[6] == true then
      h6()
    end
    if menu1[7] == true then
      h7()
    end
    if menu1[8] == true then
      h8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  GLWW = -1
end

function a1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("1.8倍开锁开启成功")
end

function a2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2.8", gg.TYPE_FLOAT)
  gg.toast("2.8倍开锁开启成功")
end

function a3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3.0", gg.TYPE_FLOAT)
  gg.toast("3.0倍开锁开启成功")
end

function a4()
  input4 = gg.prompt({
    "输入你要修改的倍速，稳定的范围是1到3之间"
  }, {
    [1] = 3
  }, {
    [1] = "number"
  })
  gg.toast("加载数据中...")
  gg.setRanges(32)
  gg.searchNumber("1D;4;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(input4[1], gg.TYPE_FLOAT)
  gg.toast("加载完成")
  gg.clearResults()
end

function a5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;8.0;1,082,467,303D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("透视开启成功")
end

function a6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("疾跑加速开启成功鸭")
  gg.clearResults()
end

function b1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("70F;444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.toast("无限金币开启成功")
  gg.clearResults()
end

function b2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("20;20;20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function b3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("追捕者去除护盾")
  gg.clearResults()
end

function b4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("疾跑30秒开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("跳高30秒开启成功")
  gg.clearResults()
end

function b5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("疾跑无限秒开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("跳高无限秒开启成功")
  gg.clearResults()
end

function c1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66.89824676514", gg.TYPE_FLOAT)
  gg.toast("秒开钥匙禁闭室开启成功")
  gg.clearResults()
end

function c2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4v1吸人开启成功")
  gg.clearResults()
end

function c3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8v2吸人开启成功")
  gg.clearResults()
end

function c4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;0.2;33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("手雷秒杀开启成功")
  gg.clearResults()
end

function c5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50000", gg.TYPE_FLOAT)
  gg.toast("手榴弹全屏范围开启成功")
  gg.clearResults()
end

function c6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("112", gg.TYPE_DWORD)
  gg.toast("火箭筒改追击炮3级开启成功")
  gg.clearResults()
end

function c7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("追击炮无间隔开启成功")
  gg.clearResults()
end

function c8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66000", gg.TYPE_FLOAT)
  gg.toast("迫击炮全范围开启成功")
  gg.clearResults()
end

function c9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("12000", gg.TYPE_FLOAT)
  gg.toast("医疗箱全屏范围开启成功")
  gg.clearResults()
end

function c10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("倒地复活开启成功")
  gg.clearResults()
end

function c11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;0.2;1.3;1.3;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("全屏开锁成功鸭")
  gg.clearResults()
end

function c12()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10;10;6.69999980927::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50000", gg.TYPE_FLOAT)
  gg.toast("飞爪长度开启成功")
  gg.clearResults()
end

function c13()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1007D;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("生命护盾无冷却修改成功")
  gg.clearResults()
end

function c14()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;0.2;1.3;1.3;1;256D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4v1直接开门开启成功")
end

function c15()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("45;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8v2直接开门开启成功")
end

function c16()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("疾跑加速开启成功")
  gg.clearResults()
end

function c17()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-66.89824676514", gg.TYPE_FLOAT)
  gg.toast("秒死开启成功")
end

function c18()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
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
            value = 0
          }
        })
      end
    end
  end
  gg.toast("追捕者无限传送开启成功")
  gg.clearResults()
end

function c19()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("112.0;4.0;30.0;3.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("112", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2000", gg.TYPE_FLOAT)
  gg.toast("生命护盾无限血开启成功")
  gg.clearResults()
end

function c20()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("300D;256D;206D;1.5;200F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("生命护盾无限时间开启成功")
  gg.clearResults()
end

function d1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("火箭筒无间隔开启成功")
  gg.clearResults()
end

function d2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("火箭筒秒杀开启成功")
  gg.clearResults()
end

function d3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("600286", gg.TYPE_DWORD)
  gg.toast("火箭筒改火焰龙头鲨开启成功")
  gg.clearResults()
end

function e1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500001;100;200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("疾跑免费开启成功")
  gg.clearResults()
end

function e2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500006;105;201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("高跳免费开启成功")
  gg.clearResults()
end

function e3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500005;104;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("免费医疗包开启成功")
  gg.clearResults()
end

function e4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500002;101;111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("皮卡免费开启成功")
  gg.clearResults()
end

function e5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500500;112;801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("飞爪免费开启成功")
  gg.clearResults()
end

function e6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500004;103;400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("手雷免费开启成功")
  gg.clearResults()
end

function f1()
  gg.clearResults()
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("防封开启％10.")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启％20")
  gg.toast("防封开启％40")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除检测中％50")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("内存防封％60")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = "0"
          }
        })
      end
    end
  end
  gg.toast("内存检测正在删除％90")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = "0"
          }
        })
      end
    end
  end
  gg.toast("％100防封开启成功！")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("防封第一步开启成功")
end

function f2()
  gg.toast("获取文件中(不是删手机重要文件)")
  gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(32)
  gg.sleep(1500)
  gg.toast("获取成功,封号文件名为game_log.txt")
  os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
  gg.sleep(800)
  gg.toast("删除封号残留文件成功")
  gg.sleep(500)
  gg.toast("获取追封文件中")
  gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(32)
  os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
  gg.toast("获取成功,已删除追封文件")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  gg.toast("全网新防封开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("防封开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("1小时封号文件已删除")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("一天封号文件已删除")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("七天封号文件删除")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("10年封号文件已删除")
  gg.clearResults()
  gg.sleep(800)
  gg.toast("防封第二步开启成功")
end

function g1()
  WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function g2()
  WJ1 = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
  ID1 = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID1 == nil then
    gg.alert("您选择了取消")
  else
    if ID1[1] == "" then
      gg.alert("不能输入为空")
      os.exit()
    end
    io.open(WJ1, "w"):write(ID1[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function g3()
  WJ2 = "/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
  ID2 = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID2 == nil then
    gg.alert("您选择了取消")
  else
    if ID2[1] == "" then
      gg.alert("不能输入为空")
      os.exit()
    end
    io.open(WJ2, "w"):write(ID2[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function g4()
  BW = gg.getTargetPackage()
  BM = gg.prompt({
    [1] = "请输入应用包名"
  }, {
    [1] = BW
  }, {
    [1] = "text"
  })
  if BM == nil then
    gg.toast("您选择了取消")
  else
    WJ9 = "/storage/emulated/0/Android/data/" .. BM[1] .. "/files/VirtualUniqueDeviceID.txt"
    lqc = io.open(WJ9, "r")
    if lqc == nil then
      gg.alert("解封失败\n目标文件不存在")
    else
      ID3 = gg.prompt({
        [1] = "请随机输入一串数字"
      }, {
        [1] = ""
      }, {
        [1] = "text"
      })
      if ID3 == nil then
        gg.toast("您选择了取消")
        os.exit()
      end
      if ID3[1] == "" then
        gg.alert("不能输入为空")
        os.exit()
      end
      io.open(WJ9, "w"):write(ID3[1]):close()
      gg.alert("解封成功\n请登录游客账号或其他账号")
    end
  end
end

function h1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("168;6;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("治疗球无限时间开启成功")
  gg.clearResults()
end

function h2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("治疗球无限血开启成功")
  gg.clearResults()
end

function h3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("168;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("治疗球范围增大开启成功")
  gg.clearResults()
end

function h4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("110", gg.TYPE_DWORD)
  gg.toast("无限夹子第一步开启完毕")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无限架子开启成功")
  gg.clearResults()
end

function h5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("50;10.0;0.5:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("锁血开启成功")
  gg.clearResults()
end

function h6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("112.0;4.0;30.0;3.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("侦查眼无限时间开启成功")
  gg.clearResults()
end

function h7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;103D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_DWORD)
  gg.toast("疾跑改护盾开启成功")
  gg.clearResults()
end

function h8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("200;100;1008::81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("102", gg.TYPE_DWORD)
  gg.toast("火箭筒改三级火箭筒开启成功")
  gg.clearResults()
end

function Exit()
  print("欢迎使用念哥哥逃跑脚本，欢迎下次使用，谢谢!")
  os.exit()
end

function HOME()
  lw = 1
  Main()
end

cs = "无联系方式"
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
