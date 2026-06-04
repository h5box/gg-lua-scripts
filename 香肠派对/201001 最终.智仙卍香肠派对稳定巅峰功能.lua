function readValue(addr, type)
  local t = {}
  t[1] = {}
  t[1].address = addr
  t[1].flags = type
  t = gg.getValues(t)
  return tostring(t[1].value)
end

function Main0()
  ZXNB = gg.choice({
    "香肠派对环境异常解决问题第一步",
    "香肠派对环境异常解决问题第二步(开启后重启游戏)",
    "加特林不红",
    "天线",
    "全枪自动,想弄M16A4就弄成单点",
    "车辆功能",
    "全局加速",
    "无后座",
    "上帝视角",
    "防封",
    "人物上色",
    "呆呆龙火球CD0.5",
    "稳定锁头",
    "地面美化",
    "机甲CD0.5",
    "连跳穿墙",
    "爬墙",
    "🗺退出🗺智仙滴大家庭"
  }, nil, "智仙 智仙 智仙")
  if ZXNB == 1 then
    HS1()
  end
  if ZXNB == 2 then
    HS2()
  end
  if ZXNB == 3 then
    HS3()
  end
  if ZXNB == 4 then
    HS4()
  end
  if ZXNB == 5 then
    HS5()
  end
  if ZXNB == 6 then
    HS6()
  end
  if ZXNB == 7 then
    HS7()
  end
  if ZXNB == 8 then
    WH2()
  end
  if ZXNB == 9 then
    SD1()
  end
  if ZXNB == 10 then
    FF1()
  end
  if ZXNB == 11 then
    TX1()
  end
  if ZXNB == 12 then
    HQ1()
  end
  if ZXNB == 13 then
    ST9999999()
  end
  if ZXNB == 14 then
    MH9()
  end
  if ZXNB == 15 then
    KJ9()
  end
  if ZXNB == 16 then
    LT1()
  end
  if ZXNB == 17 then
    PQ9999979454545455656565646446461616134343464918186464373734151848457367582515424245454554455545454555()
  end
  if ZXNB == 18 then
    os.exit()
  end
  FX1 = 0
end

function HS1()
  os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/cache")
  gg.toast("开启成功\n时间:" .. os.sj .. "")
end

function HS2()
  os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/files")
  gg.toast("开启成功，请重启游戏")
end

function HS3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1128792064;100D;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("99999", gg.TYPE_DWORD)
  gg.toast("加特林不红")
end

function HS4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.setVisible(false)
  gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(350)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("天线")
  gg.clearResults()
  gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_ANONYMOUS)
  gg.searchNumber("1.16546607018", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("手臂天线")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.57410383224", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.toast("四角天线开启成功\n时间:" .. os.sj .. "")
end

function HS5()
  fw = gg.prompt({
    i = "手持输入目前枪械子弹(子弹数不能低于2)"
  }, {i = "2"})
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(""..fw.i..";0;0;1;1;1::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.toast("全抢自动")
end

function HS6()
  fw = gg.prompt({
    i = "吉普车/血量/汽油/:1230/4000\n蹦蹦车/血量/汽油/:1025/50000\n小棉羊/血量/汽油/:820/50000\n小飞碟/血量/汽油/:600/4000\n机甲/血量/汽油/:2000/8000\n呆呆龙/血量/汽油/:1600/8000\n\n有可能官方会修改数据所以有可能和谐\n\n都得是新车"
  }, {i = "1"})
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("" .. fw.i .. "", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.alert("现在请您消耗汽油或血量:如果你是锁油坐在车上移动一下")
  gg.sleep(9000)
  gg.searchFuzzy("0", gg.SIGN_FUZZY_LESS, gg.TYPE_FLOAT, 0, -1)
  info = gg.prompt({
    "[1~3200]可修改\n无封号风险"
  }, {
    [1] = "3199"
  }, {
    [1] = "number"
  })
  hm = info[1]
  revert = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for _FORV_4_, _FORV_5_ in ipairs(t) do
        if _FORV_5_.flags == gg.TYPE_FLOAT then
          _FORV_5_.value = hm
          _FORV_5_.freeze = true
        end
      end
    end
  end
  gg.addListItems(t)
  t = nil
end

function HS7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1.4", gg.TYPE_FLOAT)
  gg.toast("开启成功\n时间:" .. os.sj .. "")
end

function WH2()
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("无后座开启成功\n时间:" .. os.sj .. "")
end

function SD1()
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(32)
  gg.searchNumber("0.1~0.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.searchNumber("0.55000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.getResults(999)
  fw = gg.prompt({
    i = "上帝视角修改=🎮"
  }, {i = "2"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("开启成功\n时间:" .. os.sj .. "")
end

function FF1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD)
  gg.searchNumber("909391408", gg.TYPE_DWORD)
  gg.getResults(999)
  gg.editAll("1089886885", gg.TYPE_DWORD)
  gg.toast("系统防封开始成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("257;2131;0F~99999F;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0F~99999F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("脚本防封开启成功\n时间:" .. os.sj .. "")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1,121,714,176;1,114,112,000;-607,424,618:65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  io.open("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini", "w")
end

function TX1()
  F = gg.alert("两种人物上色", "蓝", "白")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("1.11841436e-19;1.15427246e10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_FLOAT)
    gg.toast("开启成功\n时间:" .. os.sj .. "")
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("1.11841436e-19;1.15427246e10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("99", gg.TYPE_FLOAT)
    gg.toast("开启成功\n时间:" .. os.sj .. "")
  end
end

function HQ1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("3.60133705e-43;10.0;400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("0.5", gg.TYPE_FLOAT)
  gg.toast("呆呆龙火球没有冷却开启成功\n时间:" .. os.sj .. "")
end

function ST9999999()
  qmnb = {
    {memory = 36},
    {
      name = "稳定锁头"
    },
    {value = 0.019999993965029716, type = 16},
    {
      lv = 3.4281246730216708E-9,
      offset = 4,
      type = 16
    },
    {
      lv = 0.34748032689094543,
      offset = 8,
      type = 16
    },
    {
      lv = 0.3499999940395355,
      offset = 12,
      type = 16
    },
    {
      lv = 0.35000020265579224,
      offset = 16,
      type = 16
    }
  }
  qmxg = {
    {
      value = 1,
      offset = 8,
      type = 16
    },
    {
      value = 1,
      offset = 12,
      type = 16
    },
    {
      value = 1.5,
      offset = 16,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function MH9()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.79615515e21F;659,497;1,669,464,072;1.89469565e-40F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,669,464,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1,669,464,076", gg.TYPE_DWORD)
  gg.toast("地面美化")
end

function KJ9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,077,936,128D;5;30;10;60", 16, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("5;30", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll("0.5", 16)
    gg.toast("机甲CD0.5开启成功\n时间:" .. os.sj .. "")
    gg.clearResults()
  end
end

function LT1()
  qmnb = {
    {memory = 32},
    {
      name = "连跳穿墙开启"
    },
    {value = 1067869798, type = 4},
    {
      lv = 1065353216,
      offset = -4,
      type = 4
    }
  }
  qmxg = {
    {
      value = -99,
      offset = -4,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function PQ9999979454545455656565646446461616134343464918186464373734151848457367582515424245454554455545454555()
  F = gg.alert("爬墙", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.toast("爬墙")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;50::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.07999999821", gg.TYPE_FLOAT)
    gg.toast("爬墙关闭")
    gg.clearResults()
  end
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
