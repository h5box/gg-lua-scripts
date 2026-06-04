



  function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function yiyz_yiyz_Main()
    SN = gg.choice({
      "【人物透视区】",
      "【自瞄无后区】",
      "【拆家飞天区】",
      " 退出",
    }, nil,"憨批（顾辞）科技欢迎使用更新更多科技和科技更新加680932214，科技最新版欢迎加群。群里不断更新二改死妈仔")
    if SN == 1 then A() end
    if SN == 2 then B() end
    if SN == 3 then C() end
    if SN == 4 then Exit() end
    XGCK = -1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function A()
    menu1 = gg.multiChoice({
      "顾辞人物天线（开启天线）",
      "顾辞人物天线（恢复正常）",
      "顾辞人物巨人（容易击中）",
      "顾辞人物路飞（蹲下开镜）",
      "顾辞夜视打开（晚上开启）",
      "顾辞夜视关闭（白天关闭）",
      "顾辞全图黑天（配合夜视）",
      "返回菜单",
    }, nil,"顾辞科技挑战全网最稳！")
    if menu1 == nil then else
      if menu1[1] == true then A1() end
      if menu1[2] == true then A2() end
      if menu1[3] == true then A3() end
      if menu1[4] == true then A4() end
      if menu1[5] == true then A5() end
      if menu1[6] == true then A6() end
      if menu1[7] == true then A7() end
      if menu1[8] == true then HOME() end
    end
    GLWW=-1
  end
  

  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function B()
    menu2 = gg.multiChoice({
      "内存强锁自瞄（顾辞独家）",
      "【手枪】无后 瞬击 秒换弹（28号更新）",
      "【SMG】无后 瞬击 秒换弹（28号更新）",
      "【UZI】无后 瞬击 秒换弹",
      "【改冲】无后 瞬击 秒换弹",
      "【半自】无后 瞬击 秒换弹",
      "【AKM】无后 瞬击 秒换弹（空壳）",
      "【QBZ】无后 瞬击 秒换弹",
      "【M 4】无后 瞬击 秒换弹",
      "【k31 m24】无后 瞬击 秒换弹",
      "顾辞稳定小范围远距离瞄头打好使搭配倍镜",
      "返回菜单",
    }, nil,"顾辞科技提醒：所有功能皆稳定！是内存自瞄{自瞄不是全屏各有各的好处")

    
    if menu2 == nil then else
      if menu2[1] == true then B1() end
      if menu2[2] == true then B2() end
      if menu2[3] == true then B3() end
      if menu2[4] == true then B4() end
      if menu2[5] == true then B5() end
      if menu2[6] == true then B6() end
      if menu2[7] == true then B7() end
      if menu2[8] == true then B8() end
      if menu2[9] == true then B9() end
      if menu2[10] == true then B10() end
      if menu2[11] == true then B11() end
      if menu2[12] == true then HOME() end
    end
    GLWW=-1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function C()
    menu3 = gg.multiChoice({
      "房屋透视 【开】",
      "房屋透视 【关】 ",
      "人物飞天 【一】",
      "人物飞天 【二】",
      "远程爆破 【开】",
      "在物品里 【开】",
      "地下建家 【开】",
      "返回菜单-更新了会在群 通知哦",
    }, nil,"顾辞提醒：飞天和地下建家开启不能蹲下哦会原地暴毙！")


    if menu3 == nil then else
      if menu3[1] == true then C1() end
      if menu3[2] == true then C2() end
      if menu3[3] == true then C3() end
      if menu3[4] == true then C4() end
      if menu3[5] == true then C5() end
      if menu3[6] == true then C6() end
      if menu3[7] == true then C7() end
      if menu3[8] == true then HOME() end
    end
    GLWW=-1
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function A1()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.16947640479", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.REGION_C_BSS)
    gg.clearResults()
    gg.toast("人物天线 - 开启成功有的人没天线请重开")
  end
  
  function A2()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("-9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.16947640479", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.16947640479", gg.TYPE_FLOAT)
    gg.toast("人物天线 - 已恢复ok了")
    gg.clearResults()
    gg.clearList()
  end
  
  function A3()
    gg.clearResults()
	gg.clearResults()
	gg.setRanges(16384)
	gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll("4.1", gg.TYPE_FLOAT)
	gg.toast("小巨人 - 开启成功快去杀人吧宝贝")
	gg.clearResults()
  end
  
  function A4()
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-0.31400001049;0.02710000053;-0.09340000153;-0.02099999972", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("-0.31400001049",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10000)
  gg.editAll("-3.2135418",gg.TYPE_FLOAT)
  gg.toast("实体路飞开启成功，下蹲开启快去杀人吧宝贝")
  gg.clearResults()
end
  
  function A5()
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{0.0549999997, -4},{0.04044999927, -8}}, {{2,-4,false}},
    gg.REGION_C_BSS, ("夜视开启中快去杀人吧宝贝"))
    gg.clearList()
    gg.toast("高亮 - 开启成功快去杀人吧宝贝")
  end
  
  function A6()
    gg.setRanges(16384)
    SearchWrite({{-2.7859868E28, 0},{2, -4},{0.04044999927, -8}}, {{0.0549999997,-4,false}},
    gg.REGION_C_BSS, ("关闭夜视中快去杀人吧宝贝"))
    gg.clearList()
    gg.toast("高亮 - 已关闭")
  end
  
  function A7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{24.0, 0}, {1.0,-36},{1.0, -32},{1.0, -32},{1.210721873176642E-42,-8},}
  local tb2 = {{0,0,false},}
  SearchWrite(tb1, tb2, dataType)
  gg.clearResults()
  gg.clearList("全图黑天 - 开启成功快去杀人吧宝贝")
  end
  
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function B1()

  gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("注入代码中")
  gg.clearResults()
local Name="自瞄10%"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
local tp2 = {{0, 0x11C, true},}
local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(32)
  gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("死锁20%")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast('自瞄40%')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast('自瞄80%')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast('自瞄100% 开启成功快去杀人吧宝贝！')
  end
  
  
  
  
  function B2()
    gg.setRanges(32)
    SearchWrite({{600, 116},{-1, 120},{83, 104}}, {{480,116,false}},
    gg.REGION_C_BSS, ("手枪射速加快快去杀人吧宝贝"))
    gg.clearList()
    SearchWrite({{18, 212},{15, 224},{3, 240}}, {{0.01,224,false}},
    gg.REGION_C_BSS, ("手枪无后快去杀人吧宝贝"))
    gg.clearList()
    SearchWrite({{6, 40},{300, 52},{-0.5, 64}}, {{1000000000,52,false}},
    gg.REGION_C_BSS, ("手枪瞬击快去杀人吧宝贝"))
    gg.clearList()
    gg.toast("手枪 - 全开成功快去杀人吧宝贝")
  end
  
  function B3()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("4,525,216,907,494,477,005Q;4,575,657,222,462,033,101Q;4,539,628,425,454,813,184Q;4,539,628,425,446,424,576Q;4,546,834,186,568,204,288Q;4,768,186,106,537,154,970Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("500000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("864D;2::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.1", gg.TYPE_FLOAT)
    gg.toast("SMG无后瞬击秒换弹快去杀人吧宝贝")
  end
  
  function B4()
    gg.setRanges(32)
    SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
    gg.REGION_C_BSS, ("乌兹无后快去杀人吧宝贝"))
    gg.clearList()
    SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
    gg.REGION_C_BSS, ("乌兹瞬击快去杀人吧宝贝"))
    gg.clearList()
    SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
    gg.REGION_C_BSS, ("乌兹射速加快快去杀人吧宝贝"))
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
    gg.REGION_C_BSS, ("乌兹射速加快快去杀人吧宝贝"))
    gg.clearList()
    gg.toast("UZI - 全开成功快去杀人吧宝贝")
  end
  
  function B5()
        gg.setRanges(32)
    SearchWrite({
      {40, 3908},
      {7, 3920},
      {15, 3932}
    }, {
      {
        0.00999999978,
        3920,
        true
      }
    }, gg.REGION_C_BSS, "改冲无后快去杀人吧宝贝")
    gg.clearList()
    SearchWrite({
      {-0.20000000298, 0},
      {1, -8},
      {360, -12}
    }, {
      {
        1.0E19,
        -12,
        false
      }
    }, gg.REGION_C_BSS, "改冲瞬击快去杀人吧宝贝")
    gg.clearList()
    SearchWrite({
      {290, 132},
      {100, 136},
      {80, 144}
    }, {
      {
        60,
        144,
        false
      }
    }, gg.REGION_C_BSS, "改冲射速加快快去杀人吧宝贝")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.76666688919, 88},
      {1.2107219E-42, 80}
    }, {
      {
        0.00999999978,
        88,
        true
      }
    }, gg.REGION_C_BSS, "改冲秒换弹快去杀人吧宝贝")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("", gg.TYPE_FLOAT)
    gg.toast("改装冲锋 - 全开成功快去杀人吧宝贝")
    gg.clearResults()
  end
  
  function B6()
    gg.setRanges(32)
    SearchWrite({
      {10, 64},
      {0.10000000149, 20},
      {5, 80}
    }, {
      {
        0.00999999978,
        64,
        false
      }
    }, gg.REGION_C_BSS, "半自动无后快去杀人吧宝贝")
    gg.clearList()
    SearchWrite({
      {-0.60000002384, 32},
      {480, 20},
      {80, 4}
    }, {
      {
        480,
        20,
        true
      }
    }, gg.REGION_C_BSS, "半自动瞬击快去杀人吧宝贝")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("864D;2.16666674614::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.16666674614", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("0.1", gg.TYPE_FLOAT)
    gg.toast("半自动步枪 - 全开成功快去杀人吧宝贝")
    gg.clearResults()
  end
  
  function B7()
    gg.setRanges(32)
    SearchWrite({
      {-20, 64},
      {5, 48},
      {10, 32}
    }, {
      {
        0.00999999978,
        32,
        false
      }
    }, gg.REGION_C_BSS, "AK无后快去杀人吧宝贝")
    gg.clearList()
    SearchWrite({
      {480, 228},
      {1, 232},
      {0.375, 248}
    }, {
      {
        1000000000,
        228,
        false
      }
    }, gg.REGION_C_BSS, "AK瞬击快去杀人吧宝贝")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.16666674614, 152},
      {1.2107219E-42, 144}
    }, {
      {
        0.00999999978,
        152,
        true
      }
    }, gg.REGION_C_BSS, "AK秒换弹%50")
    gg.clearList()
    SearchWrite({
      {2.66666674614, 24},
      {1.2107219E-42, 16}
    }, {
      {
        0.00999999978,
        24,
        false
      }
    }, gg.REGION_C_BSS, "AK秒换弹%100")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("", gg.TYPE_FLOAT)
    gg.toast("AKM - 全开成功快去杀人吧宝贝")
    gg.clearResults()
  end
  
  function B8()
    gg.setRanges(32)
    SearchWrite({
      {0.10000000149, 36},
      {6, 80},
      {4, 96}
    }, {
      {
        0.00999999978,
        80,
        false
      }
    }, gg.REGION_C_BSS, "QBZ无后快去杀人吧宝贝")
    gg.clearList()
    SearchWrite({
      {0.375, 0},
      {540, -20},
      {-0.5, -8}
    }, {
      {
        1000000000,
        -20,
        false
      }
    }, gg.REGION_C_BSS, "QBZ瞬击快去杀人吧宝贝")
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({
      {2.90000009537, 152},
      {1.2107219E-42, 144}
    }, {
      {
        0.00999999978,
        152,
        false
      }
    }, gg.REGION_C_BSS, "QBZ秒换弹%50")
    gg.clearList()
    SearchWrite({
      {2.03333353996, 216},
      {1.2107219E-42, 208}
    }, {
      {
        0.00999999978,
        216,
        false
      }
    }, gg.REGION_C_BSS, "QBZ秒换弹%100")
    gg.clearList()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("", gg.TYPE_FLOAT)
    gg.toast("QBZ - 全开成功")
    gg.clearResults()
  end
  
  function B9()
gg.setRanges(32)
    SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
    gg.REGION_C_BSS, ("M4无后"))
    gg.clearList()
    SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
    gg.REGION_C_BSS, ("M4瞬击"))
    gg.clearList()
    gg.setRanges(4)
    SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
    gg.REGION_C_BSS, ("M4秒换弹%50"))
    gg.clearList()
    SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
    gg.REGION_C_BSS, ("M4秒换弹%100"))
    gg.clearList()
    gg.toast("M4全 - 开成功快去杀人吧宝贝")
gg.toast()
end

  function B10()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('1.2107219e-42;3.1333334446;5.49309e-43::57', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('3.1333334446', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(999)
    gg.editAll("0.1",gg.TYPE_FLOAT)
    gg.toast("M24秒换弹 - 开启成功快去杀人吧宝贝")
  end

  function B11()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.2", gg.TYPE_FLOAT)
gg.setVisible(false)
gg.toast("牛逼小范围 - 开启成功快去杀人吧宝贝")
end


  
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function C1()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", gg.REGION_C_BSS)
    gg.toast("房屋透视 - 开启成功快去杀人吧宝贝")
    gg.clearResults()
  end
  function C2()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.81399995089", gg.REGION_C_BSS)
    gg.toast("透视透视 - 已恢复")
    gg.clearResults()
  end
  function C3()
    gg.clearResults()
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
	gg.getResults(100)
	gg.editAll('999',gg.TYPE_FLOAT)
	gg.toast('飞天第一步成功还有一步呢')
  end


  function C4()
    gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1)
  gg.editAll("1",gg.TYPE_FLOAT)
  gg.toast("注入飞天")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
  dzy=jg[i].address
  gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.95}})
  end
  gg.toast("人物飞天 - 开启成功，变速控制高低长按修改器悬浮窗哦")
  Exit()
  end
  
  
  function C5()
    gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("12;0;15;38.3750038147", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("远程爆破加油")
gg.toast("开启成功快去杀人吧宝贝")
  end



function C6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
	 end
	 gg.toast("隔墙吸子弹50%")
	 gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("隔墙吸子弹 - 开启成功")
end

function C7()
gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2.5", gg.TYPE_FLOAT)
    gg.toast("开启成功，请进入游戏加油")
  end
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------
  function Exit()
    os.exit()
  end
  function HOME()
    lw=1
    yiyz_yiyz_Main()
  end
  sj = os.date("%c")
  ---------------------------------------------------------------------------------------------------------------ARAN---------------------------------------------------------------------------------------------------------------          


  while(true)do
    if gg.isVisible(true) then
      XGCK=1
      gg.setVisible(false)
    end
    gg.clearResults()
    if XGCK==1 then
      yiyz_yiyz_Main()
    end
  end




function yiyz_maine()
  while true do
    if gg.isVisible(true) then
      XGCK = 1
      gg.setVisible(false)
    end
    gg.clearResults()
    if XGCK == 1 then
      yiyz_main()
    end
  end
end