function Main()
  menu = gg.choice({
    "💗王者荣耀【视角提高】💗",
    "💗王者荣耀【铭文属性】💗",
    "💗王者荣耀【全图透视】💗",
    "💗王者荣耀【无限大招】💗",
    "💗王者荣耀【装备属性】💗",
    "💗王者荣耀【二招秒杀】💗",
    "💗野馬游戏5215876💗"
  }, nil, "💗野馬游戏5215876💗")
  if menu == 1 then
    A1(klztd)
  end
  if menu == 2 then
    A2(klztd)
  end
  if menu == 3 then
    A3(klztd)
  end
  if menu == 4 then
    A4(klztd)
  end
  if menu == 5 then
    A5(klztd)
  end
  if menu == 6 then
    A6(klztd)
  end
  if menu == 7 then
    A7(klztd)
  end
  Qjctx = -1
end
function A1()
 menu = gg.choice({
    "🍑王者荣耀【视角×3.0倍】🍑",
    "🍑王者荣耀【视角×2.0倍】🍑",
    "🍑王者荣耀【视角×1.5倍】🍑",
    "🍑王者荣耀【视角×1.2倍】🍑",
    "🍑野馬游戏5215876--返回菜单🍑"
  }, nil, "王者荣耀辅助：视角功能有部分手机无效果")
  if menu == 1 then
    B1(klztd)
  end
  if menu == 2 then
    B2(klztd)
  end
  if menu == 3 then
    B3(klztd)
  end
  if menu == 4 then
    B4(klztd)
  end
  if menu == 5 then
    Main(klztd)
  end
  Qjctx = -1
end
function B4(klztd)
  gg.clearResults()
  gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1.2", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("视角1.2倍开启成功")
end
function B3(klztd)
  gg.clearResults()
  gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("-1.5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("视角1.5倍开启成功")
end
function B2(klztd)
  gg.clearResults()
  gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-2", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("视角2.0倍开启成功")
end
function B1(klztd)
  gg.clearResults()
  gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-3", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("视角3.0倍开启成功")
end
function A2()
  menu = gg.choice({
    "🍏王者荣耀【铭文：圣人修改】🍏",
    "🍏王者荣耀【铭文：传承修改】🍏",
    "🍏王者荣耀【铭文：宿命修改】🍏",
    "🍏王者荣耀【铭文：凶兆修改】🍏",
    "🍏【返回菜单】🍏"
  }, nil, "王者荣耀辅助：更多功能请静待更新！")
  if menu == 1 then
    C1(klztd)
  end
  if menu == 2 then
    C2(klztd)
  end
  if menu == 3 then
    C3(klztd)
  end
  if menu == 4 then
    C4(klztd)
  end
  if menu == 5 then
    Main(klztd)
  end
  Qjctx = -1
end
function C1(klztd)
  gg.clearResults()
  gg.searchNumber("1600;800;2;530::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("530", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("666666", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function C2(klztd)
  gg.clearResults()
  gg.searchNumber("1600;800;1;320::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("320", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("666666", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function C3(klztd)
  gg.clearResults()
  gg.searchNumber("1600;800;18;10000;3370;3;230::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3370;230", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("666666", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function C4(klztd)
  gg.clearResults()
  gg.searchNumber("1600;800;2;420;18;6000::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("420;6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("666666", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function A3()
  menu = gg.choice({
    "🍅王者荣耀【全图透视】🍅",
    "🍅王者荣耀【匹配透视】🍅",
    "🍅王者荣耀【单挑透视】🍅",
    "🍅【返回菜单】🍅"
  }, nil, "王者荣耀辅助：透视功能只有少数手机能正常使用")
  if menu == 1 then
    D1(klztd)
  end
  if menu == 2 then
    D2(klztd)
  end
  if menu == 3 then
    D3(klztd)
  end
  if menu == 4 then
    Main(klztd)
  end
  Qjctx = -1
end
function D1()
  gg.clearResults()
  gg.searchNumber("-2147483600;16777216;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("257", gg.TYPE_DWORD)
  kele0 = 1
  gg.toast("请手动冻结，不然会自然恢复")
  os.exit()
end
function D2()
  gg.clearResults()
  gg.searchNumber("-2147483600;16777216;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("257", gg.TYPE_DWORD)
  kele0 = 1
  gg.toast("请手动冻结，不然会自然恢复")
  os.exit()
end
function D3()
  gg.clearResults()
  gg.searchNumber("-2147483600;16777216;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("257", gg.TYPE_DWORD)
  kele0 = 1
  gg.toast("请手动冻结，不然会自然恢复")
  os.exit()
end
function A4()
  menu = gg.choice({
    "🍓王者荣耀【后羿大招CD】🍓",
    "🍓王者荣耀【芈月大招CD】🍓",
    "🍓王者荣耀【张飞大招CD】🍓",
    "🍓王者荣耀【小乔大招CD】🍓",
    "🍓王者荣耀【蔡姬大招CD】🍓",
    "🍓王者荣耀【张良大招CD】🍓",
    "🍓王者荣耀【宫本大招CD】🍓",
    "🍓王者荣耀【咬金大招CD】🍓",
    "🍓王者荣耀【小凯大招CD】🍓",
    "🍓王者荣耀【吕布大招CD】🍓",
    "🍓王者荣耀【马可大招CD】🍓",
    "🍓【返回菜单】🍓"
  }, nil, "野馬游戏5215876")
  if menu == 1 then
    F1(klztd)
  end
  if menu == 2 then
    F2(klztd)
  end
  if menu == 3 then
    F3(klztd)
  end
  if menu == 4 then
    F4(klztd)
  end
  if menu == 5 then
    F5(klztd)
  end
  if menu == 6 then
    F6(klztd)
  end
  if menu == 7 then
    F7(klztd)
  end
  if menu == 8 then
    F8(klztd)
  end
  if menu == 9 then
    F9(klztd)
  end
  if menu == 10 then
    F0(klztd)
  end
  if menu == 11 then
    Fi(klztd)
  end
  if menu == 12 then
    Main(klztd)
  end
  Qjctx = -1
end
function F1()
  gg.clearResults()
  gg.searchNumber("-611168574;40;65;45000;130::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F2()
  gg.clearResults()
  gg.searchNumber("354335525;24000;691098787;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("24000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F3()
  gg.clearResults()
  gg.searchNumber("40000;1030247217;65537;100::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F4()
  gg.clearResults()
  gg.searchNumber("354335525;42000;1096488548;140::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("42000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F5()
  gg.clearResults()
  gg.searchNumber("354335525;60000;256;120::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F6()
  gg.clearResults()
  gg.searchNumber("354335525;40000;256;130::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F7()
  gg.clearResults()
  gg.searchNumber("354335525;80000;256::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("80000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F8()
  gg.clearResults()
  gg.searchNumber("354335525;30000;256;3000;3000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F9()
  gg.clearResults()
  gg.searchNumber("60000;256;5000;5000;120;-5000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function F0()
  gg.clearResults()
  gg.searchNumber("354335525;60000;256;12000;12000;-5000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  kele0 = 1
  Main()
end
function Fi()
  gg.clearResults()
  gg.searchNumber("354335525;50000;256;5000;5000;70::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
end
function A5()
  gg.toast("此功能正在紧急开发中，敬请期待！")
  gg.alert("此功能正在紧急开发中，敬请期待！❤❤❤❤❤❤❤❤❤❤❤❤❤\n❤   ❤\n❤❤❤❤❤❤❤❤❤❤❤❤❤")
  Main()
end
function A6()
  menu = gg.choice({
    "😈王者荣耀【咬金二技能秒杀】😈",
    "😈王者荣耀【达摩二技能秒杀】😈",
    "😈王者荣耀【亚瑟二技能秒杀】😈",
    "😈王者荣耀【木兰二技能秒杀】😈",
    "😈王者荣耀【司马二技能秒杀】😈",
    "😈王者荣耀【守约二技能秒杀】😈",
    "😈王者荣耀【其它的敬请期待】😈",
    "👿【返回菜单】👿"
  }, nil, "王者荣耀辅助：更多二技能秒杀敬请期待")
  if menu == 1 then
    G1(klztd)
  end
  if menu == 2 then
    G2(klztd)
  end
  if menu == 3 then
    G3(klztd)
  end
  if menu == 4 then
    G4(klztd)
  end
  if menu == 5 then
    G5(klztd)
  end
  if menu == 6 then
    G6(klztd)
  end
  if menu == 7 then
    Gi(klztd)
  end
  if menu == 8 then
    Main(klztd)
  end
  Qjctx = -1
end
function Gi(karla)
  gg.alert("野馬游戏5215876")
  Main()
end
function G1(karla)
  gg.toast("野馬游戏5215876")
  gg.clearResults()
  gg.searchNumber("1515794032;658404313;125;6000::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("100000", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
  gg.toast("程咬金二技能秒杀开启成功")
end
function G2(karla)
  gg.toast("野馬游戏5215876")
  gg.clearResults()
  gg.searchNumber("33529014;721707596;75;3300::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("100000", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
  gg.toast("达摩二技能秒杀开启成功")
end
function G3(karla)
  gg.toast("野馬游戏5215876")
  gg.clearResults()
  gg.searchNumber("255116958;1703569134;145;8000::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("100000", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
  gg.toast("亚瑟二技能秒杀开启成功")
end
function G4(karla)
  gg.toast("野馬游戏5215876")
  gg.clearResults()
  gg.searchNumber("-393797471;-1994183992;180;9000::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("100000", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
  gg.toast("花木兰二技能秒杀开启成功")
end
function G5(karla)
  gg.toast("野馬游戏5215876")
  gg.clearResults()
  gg.searchNumber("-1616784713;-2119026748;1;300;3500::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("100000", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
  gg.toast("司马懿二技能秒杀开启成功")
end
function G6(karla)
  gg.toast("野馬游戏5215876")
  gg.clearResults()
  gg.searchNumber("-1736865558;-109308169;1050;25000::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("100000", gg.TYPE_DWORD)
  gg.clearResults()
  Main()
  gg.toast("百里守约二技能秒杀开启成功")
end
function A7(klztd)
  print("⚠野馬制作")
  print("⚠是挂三分毒，且行且珍惜")
  print("野馬游戏5215876")
  os.exit()
  Main()
end
while true do
  if gg.isVisible(true) then
    Qjctx = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if Qjctx == 1 then
    Main()
  end
end
