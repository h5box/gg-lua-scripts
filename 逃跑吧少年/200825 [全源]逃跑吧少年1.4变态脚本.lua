gg.alert("💰新增功能：\n\n🔑1.血包功能 \n🔑2.增加杀队友\n🔑3.增加金币\n🔑4.加强秒开等等战神在此前你脚本没问题吧？沙雕")

function HOME()
  menu4 = gg.choice({
    "🍺道具类🍺",
    "🍺人物类🍺",
    "🍺变态类🍺",
    "🏆退出 脚本🏆"
  }, nil, "🔱逃跑吧少年脚本🔱\n🍺【交流群572312567】🍺\n💎版本：1.4💎战神在此前你脚本没问题吧？沙雕")
  if menu4 == 1 then
    Man()
  end
  if menu4 == 2 then
    AS()
  end
  if menu4 == 3 then
    WP()
  end
  if menu4 == 4 then
    jieshu()
  end
  SLBY = -1
end

function Man()
  menu1 = gg.choice({
    "🍺皮卡持续时间🍺",
    "🍺炸弹眩晕时间🍺",
    "🍺疾跑持续时间🍺",
    "🍺巡逻犬生命值🍺",
    "🍺跳高持续时间🍺",
    "🍺血包恢复上限🍺",
    "🍺雷达没有冷却🍺",
    "🍺生命没有冷却🍺",
    "🍺格挡箱无价格🍺",
    "👉💎返回上一页💎👈"
  }, nil, "👉【交流群572312567】👈\n💦by.冷筱夜💦\n内存范围选择:全绿 B内存战神在此前你脚本没问题吧？沙雕")
  if menu1 == 1 then
    a1()
  end
  if menu1 == 2 then
    one()
  end
  if menu1 == 3 then
    two()
  end
  if menu1 == 4 then
    three()
  end
  if menu1 == 5 then
    four()
  end
  if menu1 == 6 then
    JS()
  end
  if menu1 == 7 then
    five()
  end
  if menu1 == 8 then
    six()
  end
  if menu1 == 9 then
    three1()
  end
  if menu1 == 10 then
    HOME()
  end
  SLBY = -1
end

function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1003D;24;4;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("皮卡时间开启成功")
end

function noe()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1002D;3;0.20000000298;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("炸弹时间开启成功")
end

function two()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4.30000019073;0.30000001192;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("疾跑时间开启成功")
end

function three()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1010D;100;6;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("巡逻犬生命")
end

function four()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1001D;50;0.4;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("跳高")
end

function JS()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1007D;60;10;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("血包")
end

function five()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1006D;90;-5;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("雷达")
end

function six()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1005D;90;-4;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("生命上限")
end

function three1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1009D;1;-0.03999999911;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("格挡箱价格")
end

function AS()
  menu7 = gg.choice({
    "🍺火箭筒无间隔🍺",
    "🍺火箭筒无后座🍺",
    "🍺火箭筒无限弹🍺",
    "🍺逃跑者全天赋🍺",
    "🍺追捕者全天赋🍺",
    "🍺全局加速游戏🍺",
    "🍺全局加速恢复🍺",
    "👉返回上一页👈"
  }, nil, "⭐特别注意：⭐无限子弹不能和无后一起用⭐战神在此前你脚本没问题吧？沙雕")
  if menu7 == 1 then
    i1()
  end
  if menu7 == 2 then
    i2()
  end
  if menu7 == 3 then
    i3()
  end
  if menu7 == 4 then
    i4()
  end
  if menu7 == 5 then
    i5()
  end
  if menu7 == 6 then
    i6()
  end
  if menu7 == 7 then
    i7()
  end
  if menu7 == 8 then
    HOME()
  end
end

function i1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1008D;1;-0.05999999866;10D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.06", gg.TYPE_FLOAT)
  gg.toast("火箭筒瞬发")
end

function i2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,065,353,216D;1;1;3;0D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无后座")
end

function i3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,065,353,216D;1;1;3;0D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无需换弹")
end

function i4()
  gg.clearResults()
  gg.searchNumber("3D;0.2;0.3;0.4;3D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("3D;0.06;0.09;0.12;3D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.05999999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.9999", gg.TYPE_FLOAT)
  gg.toast("逃生者天赋")
end

function i5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.07999999821F;0.11999999732F;0.15999999642F::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.07999999821F;0.11999999732F;0.15999999642F::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0.999", gg.TYPE_FLOAT)
  gg.toast("再来和会心开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5;0.999::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("倍伤开启成功")
  gg.clearResults()
  gg.searchNumber("3D;0.18;0.27;0.36;3D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.18000000715", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.9999", gg.TYPE_FLOAT)
  gg.toast("追捕者天赋")
end

function i6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;0.06::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2.5", gg.TYPE_FLOAT)
  gg.toast("全局加速开启")
end

function i7()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.5;0.06::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("全局加速还原")
end

function WP()
  menu8 = gg.choice({
    "💛药品类💛",
    "👉变态类👈",
    "返回上一页"
  }, nil, "🔱逃跑吧少年【by.冷筱夜】🔱\n👉【交流群572312567】👈\n💎版本：1.4💎")
  if menu8 == 1 then
    TZ()
  end
  if menu8 == 2 then
    YP()
  end
  if menu8 == 3 then
    HOME()
  end
end

function TZ()
  menu8 = gg.choice({
    "🌞血包恢复1000生命(先开)🌞",
    "🌞血包扣除199生命(杀队友)🌞",
    "🌞杀队友恢复🌞",
    "🍭无敌(倒一次开一次)🍭",
    "返回上一页"
  }, nil, "💛血包先开第一个💛\n再开第二个战神在此前你脚本没问题吧？沙雕")
  if menu8 == 1 then
    sl()
  end
  if menu8 == 2 then
    yw()
  end
  if menu8 == 3 then
    TW()
  end
  if menu8 == 4 then
    TH()
  end
  if menu8 == 5 then
    WP()
  end
end

function sl()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1007D;60;10;10D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("血包1000成功")
end

function yw()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000F;10F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-199", gg.TYPE_FLOAT)
  gg.toast("血包扣199生命成功")
end

function TW()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-199F;10F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("血包杀队友恢复成功")
end

function TH()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;100;0.3::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("无敌开启")
end

function YP()
  menu8 = gg.choice({
    "🍺人物加速(10倍)🍺",
    "🍺超级跳(跳过一切障碍)🍺",
    "🍺无限金币(一局一改)🍺",
    "🍺4人秒通关(直接开门)🍺",
    "🍺8人秒通关(直接开门)🍺",
    "🍺秒禁闭门(别人不显示)🍺",
    "🍺秒逃生门(别人不显示)🍺",
    "返回上一页"
  }, nil, "💛QQ1142364334💛\nQQ群572312567战神在此前你脚本没问题吧？沙雕")
  if menu8 == 1 then
    eg()
  end
  if menu8 == 2 then
    bd()
  end
  if menu8 == 3 then
    yl()
  end
  if menu8 == 4 then
    lx()
  end
  if menu8 == 5 then
    ye()
  end
  if menu8 == 6 then
    mi()
  end
  if menu8 == 7 then
    ts()
  end
  if menu8 == 8 then
    WP()
  end
end

function eg()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.79999995232;20;20;900::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("加速开启成功")
end

function bd()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.79999995232;20;20;900;4.90000009537::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.90000009537", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", gg.TYPE_FLOAT)
  gg.toast("超级跳开启成功")
end

function yl()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70F;285F;-200F;80F;-1D;1D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("-9999999", gg.TYPE_DWORD)
  gg.toast("金币开启成功")
end

function lx()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4人秒到逃生门")
end

function ye()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8人秒到逃生门")
end

function mi()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4;0.2;1;1;1;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("秒禁闭门")
end

function ts()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("秒逃生门")
end

function jieshu()
  os.exit()
end

cs = "冷筱夜"
while true do
  if gg.isVisible(true) then
    SLBY = 1
    gg.setVisible(false)
  end
  if SLBY == 1 then
    HOME()
  end
end
