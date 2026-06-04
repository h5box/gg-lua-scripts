function Main()
  SN = gg.multiChoice({
    "(帶爺)稳定加速",
    "(帶爺)加速下飞机",
    "(帶爺)大厅自瞄",
    "(帶爺)大厅防抖午后",
    "(帶爺)大厅范围",
    "(帶爺)局内天线",
    "(帶爺)全车加速",
    "(帶爺)联发科透视",
    "(帶爺)联发科大厅白色",
    "(帶爺)强锁头",
    "(帶爺)局内高蹦",
    "(帶爺)全局加速",
    "(帶爺)趴下路飞",
    "(帶爺)上帝视角",
    "(帶爺)吉普悬空",
    "(帶爺)超级圈圈",
    "(帶爺)通用上色",
    "(帶爺)透视没有测试",
    "(帶爺)多功能",
    "(帶爺)加速",
    "下到凡间"
  }, nil, "www.kjdao.cc")
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
      h()
    end
    if SN[9] == true then
      i()
    end
    if SN[10] == true then
      j()
    end
    if SN[11] == true then
      k()
    end
    if SN[12] == true then
      l()
    end
    if SN[13] == true then
      m()
    end
    if SN[14] == true then
      n()
    end
    if SN[15] == true then
      o()
    end
    if SN[16] == true then
      z()
    end
    if SN[17] == true then
      x()
    end
    if SN[18] == true then
      p()
    end
    if SN[19] == true then
      q()
    end
    if SN[20] == true then
      M()
    end
    if SN[21] == true then
      Exit()
    end
  end
  XGCK = -1
end

function a()
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
  gg.setRanges(32)
  gg.toast("您已被封号")
end

function b()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20,000.0F;750.0F;0.00050000002F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.00050000002", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.10000000149", gg.TYPE_FLOAT)
  gg.toast("您已被封号")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20,000.0F;750.0F;0.10000000149::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.00050000002", gg.TYPE_FLOAT)
  gg.toast("全局跳伞加速关闭成功")
end

function c()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("88.15017700195;15:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("范围伤害已成功开启45%%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("范围伤害已成功开启65%%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("头部范围伤害开启成功")
  gg.clearResults()
end

function d()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("午后:您已被封号")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("您已被封号")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("您已被封号")
end

function e()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("1,324,366,404", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,324,366,404", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(80)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("自瞄:您已被封号")
end

function f()
  gg.toast("二岁半")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", 16, false, 536870912, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", 16, false, 536870912, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", 16)
  gg.clearResults()
  gg.toast("天线:您已被封号")
end

function g()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.toast("帶爺提示☞全车加速开启成功")
end

function h()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("0.5;0.5;5.5101298e-40;0.27913400531;0.56855899096;0.5:469", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 30
      }
    })
  end
  gg.toast("您已被封号")
  gg.clearResults()
end

function i()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("15", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("联发科白色上色成功")
  gg.alert("进入游戏有效果")
end

function j()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.toast("全屏自瞄锁头:您已被封号")
end

function k()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("2500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("高挑防摔:您已被封号")
end

function l()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12000;268;480;3.78922605515", 16, false, 536870912, 0, -1)
  gg.searchNumber("3.78922605515", 16, false, 536870912, 0, -1)
  gg.getResults(10)
  gg.editAll("999", 16)
  gg.searchNumber("3.78922605515", 16, false, 536870912, 0, -1)
  gg.getResults(5)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("20000;750;0.0001;0.0005\000", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.0005", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", 16)
  gg.toast("Fast Parachute activated!")
end

function m()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("18.38614463806;0.53446578979", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("趴下路飞:您已被封号")
end

function n()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.toast("上帝视角:您已被封号")
end

function o()
  gg.setRanges(32)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.74509805441", 16, false, 536870912, 0, -1)
  gg.getResults(9999)
  gg.editAll("88888", 16)
  gg.toast("吉普加速:您已被封号")
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
  gg.editAll("550", gg.TYPE_FLOAT)
  gg.toast("吉普浮空:您已被封号")
end

function z()
  gg.setRanges(gg.REGION_C_DATA)
  Name = "拿枪圈透"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {2.6253293E-27, 27356}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "拿枪锁人"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {-5.9029587E21, 20848}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "开枪锁人"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {-3.6965553E20, 33132}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "趴下照锁"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {-3.8685631E25, 26328}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "超强判断"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {1.6615352E35, 31288}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "全图距离"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {1.6615352E35, 26196}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "270℃范围"
  SearchWrite({
    {-5.8056102E26, 22732}
  }, {
    {1.6615352E35, 30820}
  }, gg.TYPE_FLOAT)
end

function x()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("15", gg.TYPE_FLOAT)
  gg.toast("人物白色:您已被封号")
end

function p()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.9
      }
    })
  end
  gg.toast("流畅透视:您已被封号")
end

function q()
  menu = gg.multiChoice({
    "855透色",
    "845透色",
    "835透色",
    "710透色",
    "660透色",
    "625透色",
    "615透色",
    "450透色",
    "通用上色",
    "联发科p70透色",
    "联发科p60透视",
    "vivo手机透色",
    "通用防闪",
    "联发科p23透色",
    "联发科p10透视",
    "麒麟通用透视",
    "联发科通用透视",
    "圈圈透视",
    "多功能",
    "返回"
  }, nil, "我屌你妈的")
  if menu == nil then
  else
    if menu[1] == true then
      a1()
    end
    if menu[2] == true then
      a2()
    end
    if menu[3] == true then
      a3()
    end
    if menu[4] == true then
      a4()
    end
    if menu[5] == true then
      a5()
    end
    if menu[6] == true then
      a6()
    end
    if menu[7] == true then
      a7()
    end
    if menu[8] == true then
      a8()
    end
    if menu[9] == true then
      a9()
    end
    if menu[10] == true then
      a10()
    end
    if menu[11] == true then
      a11()
    end
    if menu[12] == true then
      a12()
    end
    if menu[13] == true then
      a13()
    end
    if menu[14] == true then
      a14()
    end
    if menu[15] == true then
      a15()
    end
    if menu[16] == true then
      a16()
    end
    if menu[17] == true then
      a17()
    end
    if menu[18] == true then
      a18()
    end
    if menu[19] == true then
      a19()
    end
    if menu[20] == true then
      Exit()
    end
  end
  LW1 = 0
  LW2 = 0
end

function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.0;5.552493e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.88667484e-43;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.08862829e-28;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("防闪开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  a1sj = "130"
  gg.toast("防闪已开启")
  SearchWrite({
    {8200, 0},
    {1638425, -8},
    {1080033307, -4}
  }, {
    {7, 0}
  }, 4)
  gg.toast("红色上色成功")
end

function a2()
  qmnb = {
    {
      memory = gg.REGION_VIDEO
    },
    {name = "845透视1"},
    {
      value = tonumber("5.4049168e21"),
      type = tonumber("16")
    },
    {
      lv = tonumber("1.3912565e-19"),
      offset = tonumber("8"),
      type = 16
    },
    {
      lv = tonumber("2"),
      offset = tonumber("12"),
      type = 16
    },
    {
      lv = tonumber("1.6623113e-19"),
      offset = tonumber("16"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("120"),
      offset = tonumber("12"),
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_VIDEO
    },
    {name = "845透视2"},
    {
      value = tonumber("1.1202056e-19"),
      type = tonumber("16")
    },
    {
      lv = tonumber("3.9236357e-44"),
      offset = tonumber("-4"),
      type = 16
    },
    {
      lv = tonumber("2"),
      offset = tonumber("108"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("120"),
      offset = tonumber("108"),
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.setRanges(gg.REGION_VIDEO)
  SearchWrite({
    {
      tonumber("1194344475"),
      tonumber("-4")
    },
    {
      tonumber("8201"),
      tonumber("0")
    },
    {
      tonumber("1194379806"),
      tonumber("4")
    },
    {
      tonumber("1661767680"),
      tonumber("12")
    }
  }, {
    {
      tonumber("7"),
      tonumber("0")
    },
    {
      tonumber("7"),
      tonumber("-8")
    }
  }, 4)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end

function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("835完美透视开启成功")
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end

function a4()
  qmnb = {
    {
      memory = gg.REGION_VIDEO
    },
    {
      name = "人物马赛克"
    },
    {
      value = 3.75000405312,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 4.9252807E21,
      offset = 8,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 4.9068345E21,
      offset = 16,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 5444,
      offset = 20,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_VIDEO
    },
    {
      name = "人物透视开启成功"
    },
    {
      value = 5.6262676E21,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 6.0874458E21,
      offset = 8,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 6.1058931E21,
      offset = 16,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 5444,
      offset = 28,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end

function a5()
  local L0_117
  L0_117 = gg
  L0_117 = L0_117.TYPE_FLOAT
  SearchWrite({
    {2, 17668},
    {-5.5695588E-40, 17608},
    {4.7408149E21, 17604}
  }, {
    {60, 17668}
  }, L0_117)
  SearchWrite({
    {2, 26880},
    {4.8699466E21, 26468},
    {5.3495659E21, 26460}
  }, {
    {
      60,
      26880,
      false
    }
  }, L0_117)
  gg.toast("开启成功")
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
  gg.setRanges(gg.REGION_VIDEO)
end

function a6()
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
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.8189894e-12;3;4.75926e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.toast("人物红色开启成功")
end

function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,660,944,904D;134,217,808D;196,608D;537,985,029D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(13)
  gg.editAll("196620", gg.TYPE_DWORD)
  gg.toast("蓝色开启成功")
  gg.setRanges(1)
  SearchWrite({
    {2, 0},
    {3.1529215E-43, -4},
    {3.1669345E-43, 20},
    {3.1809475E-43, 44},
    {3.1949605E-43, 68}
  }, {
    {120, 0}
  }, 16)
  gg.setRanges(1)
  SearchWrite({
    {2, 0},
    {4.4841551E-44, -4},
    {4.6242849E-44, 20}
  }, {
    {129, 0}
  }, 16)
  gg.setRanges(1)
  SearchWrite({
    {2, 0},
    {3.1809475E-43, -4},
    {3.1949605E-43, 20}
  }, {
    {125, 0}
  }, 16)
end

function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.9242857e21F;1.0F;2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1.9327361e10F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.6896617e-29F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("75%")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;1.0F;2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("450透视开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,080,033,283D;1,080,035,849D;1,080,033,292D;8,200D;1,194,380,045D;1,661,239,308D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("红色开启成功")
end

function a9()
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end

function a10()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.793662e-43F;1.4012985e-45F;0.5F;360.0F;0.5F;776.0F:121", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(20)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("透视联发科 P70")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.toast("联发科红色上色，正在进行中")
end

function a11()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.8530377e-34;1.2960464e-38;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;5.1567783e-43;1.4012985e-45;2.8025969e-45;0.5:289", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 2
  var[1].freeze = true
  var[2].value = 2
  var[2].freeze = true
  gg.addListItems(var)
  gg.clearResults()
  gg.toast("Wallhack Mediatek P60 ")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("802,824,192;48;937,041,920;40;736,370,688;32;802,824,192;48;802,824,192;16;802,824,192;2;2::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("p60红色")
end

function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00100000078;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140624;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00100000078;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("黄色开启成功")
end

function a13()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("通用透视开启成功")
end

function a14()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("344", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("2", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("56;48;16::32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function a15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("304D;328D;328D;64D;3,552D:100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("64", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("61", gg.TYPE_DWORD)
  for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(10))) do
    gg.getResults(10)[_FORV_4_].value = "61"
    gg.getResults(10)[_FORV_4_].freeze = true
  end
  gg.addListItems((gg.getResults(10)))
  gg.toast("透视成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function a16()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.9
      }
    })
  end
  gg.toast("应该可以  透视开启成功")
end

function a17()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.12103877e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end

function a18()
  local L0_118
  L0_118 = gg
  L0_118 = L0_118.TYPE_FLOAT
  Name = "拿枪圈透"
  SearchWrite({
    {-5.8053394E26, 9820}
  }, {
    {2.6253293E-27, 10972}
  }, L0_118)
end

function a19()
  menu = gg.multiChoice({
    "1白色上色(通用)",
    "2黑色上色(通用)",
    "3无后防抖聚点除草(大厅开)",
    "4黑天除雾(落地开)",
    "5天线地线",
    "6除草除树",
    "7全局加速开启",
    "8m4ak伤害",
    "9全局加速关闭",
    "10全身大范围(大厅)",
    "11全屏自瞄(落地/大厅)",
    "12锁头(落地)",
    "13全屏磁性自瞄(落地持枪开)",
    "14不拉回加速",
    "15关不拉回加速",
    "16新全屏锁头(落地开)",
    "17上帝视角(落地开)",
    "18瞬鸡增伤",
    "19全屏击杀特效",
    "20一键美化(大厅)",
    "21秒开倍镜",
    "22散弹枪聚点",
    "23近战自瞄",
    "24超强自瞄(大厅)",
    "返回"
  }, nil, "国体脚本")
  if menu == nil then
  else
    if menu[1] == true then
      b1()
    end
    if menu[2] == true then
      b2()
    end
    if menu[3] == true then
      b3()
    end
    if menu[4] == true then
      b4()
    end
    if menu[5] == true then
      b5()
    end
    if menu[6] == true then
      b6()
    end
    if menu[7] == true then
      b7()
    end
    if menu[8] == true then
      b8()
    end
    if menu[9] == true then
      b9()
    end
    if menu[10] == true then
      b10()
    end
    if menu[11] == true then
      b11()
    end
    if menu[12] == true then
      b12()
    end
    if menu[13] == true then
      b13()
    end
    if menu[14] == true then
      b14()
    end
    if menu[15] == true then
      b15()
    end
    if menu[16] == true then
      b16()
    end
    if menu[17] == true then
      b17()
    end
    if menu[18] == true then
      b18()
    end
    if menu[19] == true then
      b19()
    end
    if menu[20] == true then
      b20()
    end
    if menu[21] == true then
      b21()
    end
    if menu[22] == true then
      b22()
    end
    if menu[23] == true then
      b23()
    end
    if menu[24] == true then
      b24()
    end
    if menu[25] == true then
      HOME()
    end
  end
  LW1 = 0
  LW2 = 0
end

function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("15", gg.TYPE_FLOAT)
  gg.toast("人物白色已开启")
end

function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.toast("通用黑色开启成功")
end

function b3()
  gg.toast("正在开启，请稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1550321e27;-5.7270139e27;-2.786982e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-2.786982e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.4850692749F;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("范围无后封号成功")
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("29806"),
      tonumber("-140")
    },
    {
      tonumber("7630437"),
      tonumber("-100")
    },
    {
      tonumber("1633907556"),
      tonumber("-76")
    },
    {
      tonumber("7632240"),
      tonumber("0")
    }
  }, {
    {
      tonumber("1936942449"),
      tonumber("0")
    }
  }, 4)
  gg.toast("除草开启成功")
end

function b4()
  gg.setRanges(32)
  gg.searchNumber("28992425112437505", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28992425112437505", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(510)
  gg.editAll("0", gg.TYPE_QWORD)
  gg.toast("天空黑色开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.3805679e21;-1.3620439e28;-1.3978205e24:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.3620439e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("天气除雾开启成功")
end

function b5()
  qmnb = {
    {memory = 32},
    {name = "50%"},
    {
      value = tonumber("88.50576019287"),
      type = 16
    },
    {
      lv = tonumber("87.27782440186"),
      offset = tonumber("4"),
      type = 16
    },
    {
      lv = tonumber("-100.91194152832"),
      offset = tonumber("8"),
      type = 16
    },
    {
      lv = tonumber("1"),
      offset = tonumber("12"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("1.96875"),
      offset = tonumber("0"),
      type = 16
    },
    {
      value = tonumber("1.96875"),
      offset = tonumber("4"),
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "100%"},
    {
      value = tonumber("1.96875"),
      type = 16
    },
    {
      lv = tonumber("1.96875"),
      offset = tonumber("4"),
      type = 16
    },
    {
      lv = tonumber("-100.91194152832"),
      offset = tonumber("8"),
      type = 16
    },
    {
      lv = tonumber("1"),
      offset = tonumber("12"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("999"),
      offset = tonumber("12"),
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("-1.68741369247"),
      tonumber("0")
    },
    {
      tonumber("0.33067199588"),
      tonumber("12")
    }
  }, {
    {
      tonumber("-999999999"),
      tonumber("0")
    }
  }, 16)
  gg.toast("地线开启成功")
end

function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-443727872D;-335544449D:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-335544449", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end

function b7()
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
  gg.toast("全局加速不拉回开启")
end

function b8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M416伤害开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("SC伤害开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500")
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AKM伤害开启成功")
end

function b9()
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
  gg.toast("全局加速不拉回已关闭")
end

function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("147", gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("147", gg.TYPE_FLOAT)
  gg.toast("新版范围开启成功 ")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("全身大范围开启成功")
end

function b11()
  gg.clearResults()
  gg.setRanges(8)
  gg.setRanges(8)
  gg.searchNumber("360;0.0001;1478828288", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", 16)
  gg.clearResults()
  gg.toast(" Aimbot Super ")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999999999", 16)
  gg.clearResults()
  gg.toast(" Aimbot Sniper ")
  gg.clearResults()
  gg.searchNumber("3.5;1;0.5;200;20::", 16, false, 536870912, 0, -1)
  gg.searchNumber("1", 16, false, 536870912, 0, -1)
  gg.getResults(600)
  gg.editAll("999", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("-88.82363891602F;15.0F;1", 16)
  gg.searchNumber("1", 16)
  gg.getResults(2000)
  gg.editAll("20000000000000", 16)
  gg.clearResults()
  gg.toast(" Ultra Aimbot ")
  gg.setRanges(16384)
  gg.searchNumber("0.0001;360.0;0.0;1,478,828.616.0", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
  gg.getResults(2)
  gg.editAll("5000", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber(35000, 16)
  gg.searchNumber(35000, 16)
  gg.getResults(20)
  gg.toast(" Aimlock ")
  gg.clearResults()
  gg.setRanges(32)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;53;30;1::", 16)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;1::", 16)
  gg.getResults(200)
  gg.editAll("1.4012985e-45", 16)
  gg.toast(" Anti Shake ")
end

function b12()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("250", gg.TYPE_FLOAT)
  gg.toast("Auto HeadShot 99% activated!")
end

function b13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6.0;2.0;1.0::99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("101", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-88.82363891602F;15.0F;1", gg.TYPE_FLOAT)
  gg.searchNumber("1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("20000000000000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("全屏磁性自瞄")
end

function b14()
  gg.setRanges(8)
  SearchWrite({
    {
      "6.1630904e-33",
      "-4"
    },
    {
      "-9.9839328e27",
      "4"
    },
    {
      "-1.0070975e28",
      "16"
    }
  }, {
    {"0", "0"}
  }, 16)
  gg.setRanges(8)
  SearchWrite({
    {
      "-1.0530367e28",
      "-12"
    },
    {
      "-5.8454586e27",
      "-8"
    },
    {
      "-2.7860151e28",
      "0"
    },
    {
      "-3.7444097e28",
      "4"
    },
    {
      "-2.793752e28",
      "296"
    }
  }, {
    {"0", "0"},
    {"0", "4"},
    {"0", "296"}
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {"-980", "-364"},
    {"800000", "-308"},
    {
      "1.4125089e-40",
      "80"
    }
  }, {
    {"1.2", "0"},
    {"1.2", "4"},
    {"1.2", "8"}
  }, 16)
  gg.toast("加速开启成功")
end

function b15()
  gg.setRanges(8)
  SearchWrite({
    {
      "6.1630904e-33",
      "-4"
    },
    {
      "-9.9839328e27",
      "4"
    },
    {
      "-1.0070975e28",
      "16"
    }
  }, {
    {
      "-6.1526231e27",
      "0"
    }
  }, 16)
  gg.setRanges(8)
  SearchWrite({
    {
      "-1.0530367e28",
      "-12"
    },
    {
      "-5.8454586e27",
      "-8"
    },
    {"0", "0"},
    {"0", "4"},
    {"0", "296"}
  }, {
    {
      "-2.7860151e28",
      "0"
    },
    {
      "-3.7444097e28",
      "4"
    },
    {
      "-2.793752e28",
      "296"
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {"-980", "-364"},
    {"800000", "-308"},
    {
      "1.4125089e-40",
      "80"
    }
  }, {
    {"1", "0"},
    {"1", "4"},
    {"1", "8"}
  }, 16)
  gg.toast("加速关闭成功")
end

function b16()
  gg.alert("落地持枪开")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("25%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
  gg.getResults(300)
  gg.setVisible(false)
  gg.editAll("-1.0e10", 16)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.5;1;200;20::999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5;1;200;20::959", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200000000000", gg.TYPE_FLOAT)
  gg.toast("75%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.toast("全屏开启成功")
  gg.setRanges(32)
  Name = "牛逼:"
  SearchWrite({
    {3.5, 3296},
    {1, 3300},
    {1, 3304},
    {1, 3308},
    {1, 3312},
    {0.5, 3316},
    {0.5, 3324},
    {200, 3348},
    {20, 3352},
    {20, 3364}
  }, {
    {999999999, 3296},
    {999999999, 3300},
    {999999999, 3304},
    {999999999, 3308},
    {999999999, 3312},
    {999999999, 3316},
    {999999999, 3324},
    {999999999, 3348},
    {999999999, 3352},
    {999999999, 3364}
  }, 16)
  gg.toast("优化成功")
end

function b17()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220.0:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2200", gg.TYPE_FLOAT)
  gg.toast("上帝视角")
end

function b18()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000292", gg.TYPE_FLOAT)
  gg.toast("M4射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.02600000083", gg.TYPE_FLOAT)
  gg.toast("Scar射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.00100000005", gg.TYPE_FLOAT)
  gg.toast("AK射速开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("25%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("75%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("100%")
end

function b19()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("Kill Players X ✔")
end

function b20()
  gg.setRanges(32)
  SearchWrite({
    {10100100, 0},
    {101001, 12}
  }, {
    {101001002, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10100100, 0},
    {101001, -12}
  }, {
    {101001002, 0}
  }, 4)
  gg.toast("ak黑金成功")
  gg.setRanges(32)
  SearchWrite({
    {10100300, 0},
    {101003, 12}
  }, {
    {101003001, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10100300, 0},
    {101003, -12}
  }, {
    {101003001, 0}
  }, 4)
  gg.toast("SC黑金成功")
  gg.setRanges(32)
  SearchWrite({
    {10100400, 0},
    {101004, 12}
  }, {
    {101004001, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10100400, 0},
    {101004, -12}
  }, {
    {101004001, 0}
  }, 4)
  gg.toast("M416樱花成功")
  gg.setRanges(32)
  SearchWrite({
    {10300100, 0},
    {103001, 12}
  }, {
    {103001001, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10300100, 0},
    {103001, -12}
  }, {
    {103001001, 0}
  }, 4)
  gg.toast("98k拼色成功")
  gg.setRanges(32)
  SearchWrite({
    {10100200, 0},
    {101002, 12}
  }, {
    {101002002, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10100200, 0},
    {101002, -12}
  }, {
    {101002002, 0}
  }, 4)
  gg.toast("M16A4夏日成功")
  gg.setRanges(32)
  SearchWrite({
    {10200100, 0},
    {102001, 12}
  }, {
    {102001001, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10200100, 0},
    {102001, -12}
  }, {
    {102001001, 0}
  }, 4)
  gg.toast("UZI美化成功")
  gg.setRanges(32)
  SearchWrite({
    {10200400, 0},
    {102004, 12}
  }, {
    {102004001, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10200400, 0},
    {102004, -12}
  }, {
    {102004001, 0}
  }, 4)
  gg.toast("汤姆逊美化成功")
  gg.setRanges(32)
  SearchWrite({
    {10200200, 0},
    {102002, 12}
  }, {
    {102002001, 0}
  }, 4)
  gg.setRanges(32)
  SearchWrite({
    {10200200, 0},
    {102002, -12}
  }, {
    {102002001, 0}
  }, 4)
  gg.toast("up9美化成功")
end

function b21()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(55)
  gg.editAll("-9", gg.TYPE_FLOAT)
  gg.toast("秒开倍镜开启成功")
end

function b22()
  gg.alert("请卸掉枪口")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.79999995232;1.79999995232;4;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("35000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("300000", gg.TYPE_FLOAT)
  gg.toast("S12K聚点开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4.2038954e-45;12.0;18.0;3.5;1.1509145e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12.0;18.0;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.39999997616;1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("S1897聚点")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4.2038954e-45;12.0;18.0;3.5;1.1509145e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12.0;18.0;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.39999997616;1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;1.5;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("S686聚点")
end

function b23()
  gg.clearResults()
  qmnb = {
    {
      memory = gg.REGION_C_DATA
    },
    {
      name = "锁甲自瞄"
    },
    {
      value = -5.4827808E27,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -2.8488793E28,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -1.2464639E28,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = -2.7270195E28,
      offset = 8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 0,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      value = 0,
      offset = 0,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("360;0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("超级自瞄开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.07", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("自瞄")
end

function b24()
  gg.setRanges(gg.REGION_C_DATA)
  Name = "拿枪锁人"
  SearchWrite({
    {7.514758E-36, 20700}
  }, {
    {-5.9029587E21, 20848}
  }, gg.TYPE_FLOAT)
  Name = "锁定频率"
  SearchWrite({
    {7.514758E-36, 20700}
  }, {
    {-9.9839906E27, 24276}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "开枪锁人"
  SearchWrite({
    {7.514758E-36, 20700}
  }, {
    {-3.6965553E20, 33132}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "趴下照锁"
  SearchWrite({
    {7.514758E-36, 20700}
  }, {
    {-1.2811725E23, 26336}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "全图距离"
  SearchWrite({
    {7.514758E-36, 20700}
  }, {
    {-9.9066182E27, 26324}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_C_DATA)
  Name = "270℃范围"
  SearchWrite({
    {7.514758E-36, 20700}
  }, {
    {-2.7395468E28, 30808}
  }, gg.TYPE_FLOAT)
end

function M()
  menu1 = gg.multiChoice({
    "加速第1步",
    "第2步",
    "第1步关闭",
    "第2步关闭",
    "第3步",
    "第3步关闭",
    "加速开启",
    "加速关闭",
    "超强加速",
    "超强加速关",
    "返回上一页"
  }, nil, "决赛圈拉回还是不拉回并没有测试好")
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
      f10()
    end
    if menu[11] == true then
      HOME()
    end
  end
  LW1 = 0
  LW2 = 0
end

function f1()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1228926273201366461", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1228926273126264269", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1585267068834414592", gg.TYPE_QWORD)
  gg.toast("开启成功")
end

function f2()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1328550408728725571", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1328550408578138112", gg.TYPE_QWORD)
  gg.toast("开启成功")
end

function f3()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1228926273126264269", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1228926273201366461", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1296744153870237696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-1296744149883614555", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1585267068834414592", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1585267064848315881", gg.TYPE_QWORD)
  gg.toast("关闭成功")
end

function f4()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-1328550408578138112", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1328550408728725571", gg.TYPE_QWORD)
  gg.toast("关闭成功")
end

function f5()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-3.4127096e20;-8.7955589e22:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-8.7955589e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function f6()
  gg.clearResults()
  gg.setRanges(8)
  gg.searchNumber("-3.4127096e20;0:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-8.7955589e22", gg.TYPE_FLOAT)
  gg.toast("关闭成功")
end

function f7()
  gg.setRanges(8)
  SearchWrite({
    {
      tonumber("6.1630904e-33"),
      tonumber("-4")
    },
    {
      tonumber("-9.9839328e27"),
      tonumber("4")
    },
    {
      tonumber("-1.0070975e28"),
      tonumber("16")
    }
  }, {
    {
      tonumber("0"),
      tonumber("0")
    }
  }, 16)
  gg.setRanges(8)
  SearchWrite({
    {
      tonumber("-1.0530367e28"),
      tonumber("-12")
    },
    {
      tonumber("-5.8454586e27"),
      tonumber("-8")
    },
    {
      tonumber("-2.7860151e28"),
      tonumber("0")
    },
    {
      tonumber("-3.7444097e28"),
      tonumber("4")
    },
    {
      tonumber("-2.793752e28"),
      tonumber("296")
    }
  }, {
    {
      tonumber("0"),
      tonumber("0")
    },
    {
      tonumber("0"),
      tonumber("4")
    },
    {
      tonumber("0"),
      tonumber("296")
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("-980"),
      tonumber("-364")
    },
    {
      tonumber("800000"),
      tonumber("-308")
    },
    {
      tonumber("1.4125089e-40"),
      tonumber("80")
    }
  }, {
    {
      tonumber("1.335"),
      tonumber("0")
    },
    {
      tonumber("1.335"),
      tonumber("4")
    },
    {
      tonumber("1.335"),
      tonumber("8")
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("-980"),
      tonumber("-364")
    },
    {
      tonumber("800000"),
      tonumber("-308")
    },
    {
      tonumber("1.4125089e-40"),
      tonumber("80")
    }
  }, {
    {
      tonumber("1.2"),
      tonumber("0")
    },
    {
      tonumber("1.2"),
      tonumber("4")
    },
    {
      tonumber("1.2"),
      tonumber("8")
    }
  }, 16)
end

function f8()
  gg.setRanges(8)
  SearchWrite({
    {
      tonumber("6.1630904e-33"),
      tonumber("-4")
    },
    {
      tonumber("-9.9839328e27"),
      tonumber("4")
    },
    {
      tonumber("-1.0070975e28"),
      tonumber("16")
    }
  }, {
    {
      tonumber("-6.1526231e27"),
      tonumber("0")
    }
  }, 16)
  gg.setRanges(8)
  SearchWrite({
    {
      tonumber("-1.0530367e28"),
      tonumber("-12")
    },
    {
      tonumber("-5.8454586e27"),
      tonumber("-8")
    },
    {
      tonumber("0"),
      tonumber("0")
    },
    {
      tonumber("0"),
      tonumber("4")
    },
    {
      tonumber("0"),
      tonumber("296")
    }
  }, {
    {
      tonumber("-2.7860151e28"),
      tonumber("0")
    },
    {
      tonumber("-3.7444097e28"),
      tonumber("4")
    },
    {
      tonumber("-2.793752e28"),
      tonumber("296")
    }
  }, 16)
  gg.setRanges(32)
  SearchWrite({
    {
      tonumber("-980"),
      tonumber("-364")
    },
    {
      tonumber("800000"),
      tonumber("-308")
    },
    {
      tonumber("1.4125089e-40"),
      tonumber("80")
    }
  }, {
    {
      tonumber("1"),
      tonumber("0")
    },
    {
      tonumber("1"),
      tonumber("4")
    },
    {
      tonumber("1"),
      tonumber("8")
    }
  }, 16)
end

function f9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.07", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("加速第一步开启")
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
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1.3", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("加速第二部开启")
end

function f10()
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
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.3;1.3;1.3;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("加速关闭")
end

function Exit()
  print("#")
  os.exit()
end

cs = "#"
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
