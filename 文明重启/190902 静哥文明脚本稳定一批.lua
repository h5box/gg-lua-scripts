--By Only SSTool

function Main()
  menu = gg.choice({
    "😂基础功能😂",
    "😂抄家功能😂",
    "😂枪械功能😂",
    "退出脚本"
  }, nil, "大家好，欢迎加入交流群870139389感谢你的加入~")
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
    Exit()
  end
  XGCK = -1
end
function A()
  menu1 = gg.multiChoice({
    "人物踏空",
    "关闭踏空",
    "天线第一步",
    "天线第二步",
    "开启微加速",
    "关闭微加速",
    "开启水下行走",
    "关闭水下行走",
    "返回上一页"
  }, nil, "基础功能区")
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
      a7()
    end
    if menu1[8] == true then
      a8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  GLWW = -1
end
function B()
  menu1 = gg.multiChoice({
    "近距离透视",
    "关闭近透视",
    "中距离透视",
    "关闭中透视",
    "远距离透视",
    "关闭远透视",
    "开启远程放置",
    "关闭远程放置",
    "返回上一页"
  }, nil, "抄家功能区")
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
      b6()
    end
    if menu1[7] == true then
      b7()
    end
    if menu1[8] == true then
      b8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  GLWW = -1
end
function C()
  menu1 = gg.multiChoice({
    "SMG冲锋枪无后",
    "SMG冲锋枪瞬击",
    "famas改装枪无后",
    "开发中",
    "QBZ步枪无后",
    "QBZ步枪瞬击",
    "AKM步枪无后",
    "AKM步枪瞬击",
    "返回上一页"
  }, nil, "枪械功能区")
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
      HOME()
    end
  end
  GLWW = -1
end
function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("踏空已开启")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 0.95
      }
    })
  end
  gg.toast("已增强效果，并为您自动退出")
  Exit()
end
function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.05", gg.TYPE_FLOAT)
  gg.toast("踏空已关闭")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;0.95F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.95F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 1.04
      }
    })
  end
  gg.toast("已关闭增强")
end
function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479;3.6013371e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("第一步开启成功")
  gg.clearResults()
end
function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.16947640479;3.6013371e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("第二步开启成功")
  gg.clearResults()
end
function a5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7.555", gg.TYPE_FLOAT)
  gg.toast("微加速已开启")
end
function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7.555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6.3", gg.TYPE_FLOAT)
  gg.toast("微加速已关闭")
end
function a7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("水下行走已开启")
  gg.clearResults()
end
function a8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;-999F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("水下行走已关闭")
  gg.clearResults()
end
function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("贴墙透视开启")
end
function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;10::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.2", gg.TYPE_FLOAT)
  gg.toast("贴墙透视关闭")
end
function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("中距离透视开启")
end
function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;30::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.2", gg.TYPE_FLOAT)
  gg.toast("中距离透视关闭")
end
function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("80", gg.TYPE_FLOAT)
  gg.toast("远距离透视开启")
end
function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;80::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.2", gg.TYPE_FLOAT)
  gg.toast("远距离透视关闭")
end
function b7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("12;0;15;38.3750038147", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("远程放置已开启")
  gg.clearResults()
end
function b8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("999;0;15;38.3750038147", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("12", gg.TYPE_FLOAT)
  gg.toast("远程放置已关闭")
  gg.clearResults()
end
function c1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("SMG冲锋枪无后座开启成功")
end
function c2()
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.toast("SMG冲锋枪瞬击开启成功")
  gg.clearResults()
end
function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.30000001192;0.20000000298;25.0;65.0;238.0;625.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3;0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("FAMAS改装枪无后开启成功")
end
function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("修改数值", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function c5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.89999997616;0.20000000298;1;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("qbz无后座开启成功")
end
function c6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("qbz瞬击开启成功")
end
function c7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480;0.20000000298;1;0.60000002384;526::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.20000000298;1;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("ak无后开启成功")
end
function c8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("ak瞬击开启成功")
  gg.clearResults()
end
function Exit()
  print("感谢你的加入持续更新最好的脚本")
  os.exit()
end
function HOME()
  lw = 1
  Main()
end
cs = "静哥"
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


--We are the tender love in the world.

--By Only SSTool
