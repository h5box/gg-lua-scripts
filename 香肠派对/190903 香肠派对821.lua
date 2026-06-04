function Main()
  SN = gg.choice({
  "人物飞天(人物飞天水上行走只能开一个)",
  "人物加速",
  "人物天线",
  "无限背包",
  "飞檐走壁",
  "人物秒杀",
  "水上行走",
  "全图除草",
  "手雷秒杀(修复中)",
  "退出脚本"
 }, nil, "蜗牛辅助网www.woniu.la禁止倒卖欢迎加入我们")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   g()
  end
  if SN == 8 then
   h()
  end
  if SN == 9 then
   i()
  end
  if SN == 10 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.searchNumber("0.07999999821;0.5::5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("30",gg.TYPE_FLOAT)
gg.toast("人物飞天开启成功")
end



function b()
gg.clearResults()
gg.searchNumber("1F;-1F;2,139,095,040D::20", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2.65",gg.TYPE_FLOAT)
gg.toast("人物加速开启成功")
end



function c()
gg.clearResults()
gg.searchNumber("-1,123,699,481D;1F::20", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("人物天线开启成功")
end



function d()
gg.clearResults()
gg.searchNumber("70;20;15;0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("70", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("99999999",gg.TYPE_FLOAT)
gg.toast("无限背包开启成功")
end



function e()
gg.clearResults()
gg.searchNumber("12D;1025D;1D;1;0.5::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("飞檐走壁开启成功")
end



function f()
gg.clearResults()
gg.searchNumber("2;1.5;1;0.5;0.7::17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("秒杀开启成功")
end



function g()
gg.clearResults()
gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("水上行走开启成功")
end



function h()
gg.clearResults()
gg.searchNumber("1F;1,008,981,770D;-1,431,655,766D;-1,431,655,766D;12D;193D:: ", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("除草开启成功")
end



function i()
gg.clearResults()
gg.searchNumber("6D;27;10;10;5D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("暂时没用，修复中")
end



function Exit()
print("欢迎加入蜗牛娱乐网www.woniu.la 再见")
os.exit()
end
cs = "每天更新大量免费辅助www.woniu.la"



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









