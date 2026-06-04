function Main0()
  SN = gg.choice({
    "1.极限攻速",
    "2.怪物不攻击(秘境打一下怪开)",
    "3.怪物不攻击",
    "4.全屏攻击(秘境开起，到boss关闭)",
    "5.全屏关",
    "6.其他功能",
    "7.关闭部分功能(里面选择)",
    "8.攻速改小(极限攻速没用用这个)",
    "退出脚本"
  }, nil, "因为以前买的号被别人找回了，所以群被解散")
  if SN == 1 then
    a1()
  end
  if SN == 2 then
    a2()
  end
  if SN == 3 then
    a3()
  end
  if SN == 4 then
    a4()
  end
  if SN == 5 then
    a5()
  end
  if SN == 6 then
    Main1()
  end
  if SN == 7 then
    Main2()
  end
  if SN == 8 then
    a6()
  end
  if SN == 9 then
    ed()
  end
  XGCK = -1
end

function a1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1f;99999f:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
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
  gg.toast("攻速开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function a2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("33554432D;1000F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
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
  gg.toast("怪物不攻击开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function a3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1000F;536,870,913D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
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
  gg.toast("怪物不攻击开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function a4()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.1874648e-38F;0.0001F::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 50
      }
    })
  end
  gg.toast("全屏攻击开启，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function a5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1.1874648e-38F;50.0F:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.0E-4
      }
    })
  end
  gg.toast("全屏攻击恢复，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function a6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0f;99999f:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0.3
      }
    })
  end
  gg.toast("攻速改小开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function ed()
  os.exit()
end

function Main2()
  S = gg.choice({
    "1.加速关",
    "返回主页"
  }, nil, "关闭功能界面")
  if S == 1 then
    KB1()
  end
  if S == 2 then
    KB4()
  end
  XGCK = -1
end

function KB1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2.333F;1051372203D;1028443341D:20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.333", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1
      }
    })
  end
  gg.toast("加速关闭，共修改" .. sl .. "条数据")
  gg.clearResults()
end

function KB4()
  Main0()
end

function Main1()
  SN1 = gg.multiChoice({
    "1.技能无CD(蛤蟆那里让技能CD一下开)",
    "2.技能无蓝耗(蛤蟆那里消耗一点蓝开)",
    "3.人物穿墙",
    "4.全局加速",
    "5.秘境无敌(雪地图被打一下开)",
    "返回主页"
  }, nil, "群956679143，欢迎大家，里面有办法防闪退过检测和增伤")
  if SN == nil then
  else
    if SN1[1] == true then
      KK1()
    end
    if SN1[2] == true then
      KK2()
    end
    if SN1[3] == true then
      KK3()
    end
    if SN1[4] == true then
      KK4()
    end
    if SN1[5] == true then
      KK5()
    end
    if SN1[6] == true then
      Main0()
    end
  end
  XGCK = -1
end

function KK1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("240D;1F;972D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
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
  gg.toast("技能冷却开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function KK2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("172D;1F;5316D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = -30
      }
    })
  end
  gg.toast("无蓝耗开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function KK3()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.0001f;100000f;8,677,612D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1
      }
    })
  end
  gg.toast("穿墙开启，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function KK4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1F;1051372203D;1028443341D::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2.333
      }
    })
  end
  gg.toast("加速开启，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function KK5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3448D;1F;58D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
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
  gg.toast("秘境无敌开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function Exit()
  print("群号956679143")
  os.exit()
end

cs = ""
while true do
  if gg[(function(A0_6)
    A0_6 = A0_6:gsub(" ", "")
    return (A0_6:gsub("..", function(A0_7)
      return string.char(tonumber(A0_7, 16) - 76)
    end
    ))
  end
  )("B5 BF A2 B5 BF B5 AE B8 B1")](true) then
    XGCK = 1
    gg[(function(A0_8)
      A0_8 = A0_8:gsub(" ", "")
      return (A0_8:gsub("..", function(A0_9)
        return string.char(tonumber(A0_9, 16) - 76)
      end
      ))
    end
    )("BF B1 C0 A2 B5 BF B5 AE B8 B1")](false)
  end
  gg[(function(A0_10)
    A0_10 = A0_10:gsub(" ", "")
    return (A0_10:gsub("..", function(A0_11)
      return string.char(tonumber(A0_11, 16) - 76)
    end
    ))
  end
  )("AF B8 B1 AD BE 9E B1 BF C1 B8 C0 BF")]()
  if XGCK == 1 then
    Main0()
  end
end
