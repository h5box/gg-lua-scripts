
function DZSH()
menu = gg.multiChoice({
"1.最新人物透视(靶场开启)",
"2.最新人物白色(必须先开透视靶场开启)",
"3.实体变大(靶场开启)",
"4.全局加速(落地开启)",
"5.范围拾取(落地开启)",
"6.人物穿墙(落地开启)",
"7.固定除草(落地开启)",
"8.爬墙无阻(落地开启)",
"9.飞行加速(大厅开启)",
"10.开镜全除(靶场开启)",
"退出脚本"},nil,"凉凉，支持我的粉丝专用\n是挂三分毒\n大吉大利把把吃鸡"..sj)
   if menu == nil then
  else
    if menu[1] == true then
      HZ1()
    end
    if menu[2] == true then
      HZ2()
      end
      if menu[3] == true then
      HZ3()
      end
      if menu[4] == true then
      HZ4()
      end
      if menu[5] == true then
      HZ5()
      end
      if menu[6] == true then
      HZ6()
      end
      if menu[7] == true then
      HZ7()
      end
      if menu[8] == true then
      HZ8()
      end
      if menu[9] == true then
      HZ9()
      end
      if menu[10] == true then
      HZ10()
      end
     if menu[11] == true then
      HZ11()
      end
  end
    PD1 = 0
end
function HZ1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("854D;1.3912543e-19F;1.6623683e-19F;2.0F::250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n最新人物透视开启成功\n温馨提示祝你游戏愉快")
end

function HZ2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("120F;-1F;0.75F;0.24899999797F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.24899999797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(40)
gg.editAll("666", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("凉凉\n上色第一步开启成功\n温馨提示祝你游戏愉快")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("120F;-1F;0.75F;666F;0.99900001287F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.99900001287", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(45)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n最新人物白色开启成功\n温馨提示祝你游戏愉快")
gg.clearResults()
end

function HZ3()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("10D;1;1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("4",gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n实体变大开启成功\n温馨提示祝你游戏愉快")
end

function HZ4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;1D;1D;1D;1D;1D;1.875;1D;1.9375;1D;1.03499996662::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.9", gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n全局加速开启成功\n温馨提示祝你游戏愉快")
end

function HZ5()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP+gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
gg.searchNumber('5D;0E;1F;2E;2F::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('5.6', gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n范围拾取开启成功\n温馨提示祝你游戏愉快")
end

function HZ6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1D;10F;0.40000000596;1F;0.25F;1D;2D;3D;4D;5D;6D;7D;8D;9D;10D;11D;12D;13D;14D::500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.40000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("-0.025", gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n人物穿墙开启成功\n温馨提示祝你游戏愉快")
end

function HZ7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4.2038954e-45F;1.4012985e-44F;2.2420775e-44F;5.6051939e-45F;1.1210388e-43F::100h", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.2420775e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20) 
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n固定除草开启成功\n温馨提示祝你游戏愉快")
end

function HZ8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('2D;1D;0.62160998583F;0.01F;0.2F;4.9e-324E::350',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('0.20000000298',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll('50', gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n爬墙无阻开启成功\n温馨提示祝你游戏愉快")
end

function HZ9()
gg.clearResults()
gg.searchNumber('1.90625F;1.4012985e-45F;1D;1;1.875F::40', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('666666666', gg.TYPE_DOUBLE)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n飞行加速开启成功\n温馨提示祝你游戏愉快")
end

function HZ10()
gg.clearResults()
gg.setRanges (gg.REGION_CODE_APP)
gg.searchNumber("170,126,797D;21,205,322D;1F::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('6000',gg.TYPE_FLOAT)
gg.clearResults()
gg.copyText("凉凉送给你")
gg.toast("凉凉\n开镜全除开启成功\n温馨提示祝你游戏愉快")
end

function HZ11()
os.exit() 
end

while true do
sj = os.date("\n%c")
  if gg.isVisible(true) then
    PD1 = nil
    gg.setVisible(false)
  end
  if PD1 == nil then
    DZSH()
  end
end
