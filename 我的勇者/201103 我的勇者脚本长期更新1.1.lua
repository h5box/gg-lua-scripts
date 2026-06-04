
function Main0()
  SN = gg.choice({
    "1.极限攻速",
    "2.怪物不攻击(秘境遇怪开)",
    "3.全屏攻击(秘境开起，到boss关闭)",
    "4.全屏关",
    "5.✨其他功能(里面选择)",
    "6.❌关闭部分功能(里面选择)",
    "7.攻速改小(极限攻速用不了的武器用)",
    "退出脚本"
  }, nil, "主页面哟")
  if SN == 1 then
    a1()
  end
  if SN == 2 then
    a2()
  end
  if SN == 3 then
    a4()
  end
  if SN == 4 then
    a5()
  end
  if SN == 5 then
    Main1()
  end
  if SN == 6 then
    Main2()
  end
  if SN == 7 then
    a6()
  end
  if SN == 8 then
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
  gg.searchNumber("1000F;536,870,913D;33554432D;1000F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
  if gg.prompt({
    [1] = "当前攻速(默认为1,开了极限为0)",
    [2] = "修改攻速(必须小于1，0最快，太快可能射不出子弹)"
  }) == nil then
    Main0()
  end
  gg.searchNumber("" .. gg.prompt({
    [1] = "当前攻速(默认为1,开了极限为0)",
    [2] = "修改攻速(必须小于1，0最快，太快可能射不出子弹)"
  })[1] .. "f;99999f:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("" .. gg.prompt({
    [1] = "当前攻速(默认为1,开了极限为0)",
    [2] = "修改攻速(必须小于1，0最快，太快可能射不出子弹)"
  })[1] .. "", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 0
  end
  for _FORV_4_ = 1, sl do
    dzy = jg[_FORV_4_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = gg.prompt({
          [1] = "当前攻速(默认为1,开了极限为0)",
          [2] = "修改攻速(必须小于1，0最快，太快可能射不出子弹)"
        })[2],
        name = "攻速(1)"
      }
    })
  end
  gg.toast("自定义攻速成功，当前为:" .. gg.prompt({
    [1] = "当前攻速(默认为1,开了极限为0)",
    [2] = "修改攻速(必须小于1，0最快，太快可能射不出子弹)"
  })[2] .. "。  共修改" .. sl .. "条数据")
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
    KB2()
  end
  if S == 4 then
    KB3()
  end
  if S == 4 then
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
    "1.技能无CD(让技能CD一下开)",
    "2.技能无蓝耗",
    "3.人物穿墙(理论任何地方)",
    "4.全局加速(理论任何地方)",
    "5.无限buff时长＋无敌(小心负面buff，中了负面直接回主城)",
    "6.秘境无敌(冰地图怪物打一下主城开,可以免陷阱伤害)",
    "返回主页"
  }, nil, "其他功能界面,群号956679143")
  if SN1 == nil then
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
      KK6()
    end
    if SN1[7] == true then
      Main0()
    end
  end
  XGCK = -1
end

function KK1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("240D;1F;940D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
  gg.searchNumber("172D;1F;5348D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
  gg.searchNumber("18D;0.001F::53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 1000
      }
    })
  end
  gg.toast("Buff无限时长+无敌开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function KK6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3408D;1F;56D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 0,
        name = "秘境无敌(1)"
      }
    })
  end
  gg.toast("秘境无敌开启成功，共修改" .. sl .. "条数据")
  gg.clearResults()
  Main0()
end

function Exit()
  print("956679143")
  os.exit()
end

cs = ""
while true do
  if gg[(function(A0_6)
    A0_6 = A0_6:gsub(" ", "")
    return (A0_6:gsub("..", function(A0_7)
      return string.char(tonumber(A0_7, 16) - 40)
    end
    ))
  end
  )("91 9B 7E 91 9B 91 8A 94 8D")](true) then
    XGCK = 1
    gg[(function(A0_8)
      A0_8 = A0_8:gsub(" ", "")
      return (A0_8:gsub("..", function(A0_9)
        return string.char(tonumber(A0_9, 16) - 40)
      end
      ))
    end
    )("9B 8D 9C 7E 91 9B 91 8A 94 8D")](false)
  end
  gg[(function(A0_10)
    A0_10 = A0_10:gsub(" ", "")
    return (A0_10:gsub("..", function(A0_11)
      return string.char(tonumber(A0_11, 16) - 40)
    end
    ))
  end
  )("8B 94 8D 89 9A 7A 8D 9B 9D 94 9C 9B")]()
  if XGCK == 1 then
    Main0()
  end
end
