gg.alert("飞车修仙脚本")
gg.alert("脚本。")
gg.alert("团队独家制作 修仙裙：345577972")
function Main()
  SN = gg.choice({
  "穿墙",
  "小喷无限",
  "氮气无限",
  "全车加速",
  "微加速",
  "超级加速",
"退出脚本"
 }, nil, "团队独家制作 修仙裙：345577972")
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
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2D;-2.0009167;1E-45~3.4E38;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("穿墙开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2D;50;1.4;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("小喷无限开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("19.40000152588;4.40000009537;0;256D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00001", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("氮气无限开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("20D;248D;0;95D;416D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("98", gg.TYPE_FLOAT)
gg.toast("全车加速开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.0F;-1.0F;-1.0F;-1.OF; 0F; 0F; 0F;0F; 1.0F; 1.0F;1.0F; 1.0F ::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("1.005", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("微加速开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.1;3.59999990463;0.27777779102::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.59999990463", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.1;1.8;0.27777779102::49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.27777779102", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("20", gg.TYPE_FLOAT)
gg.toast("超级加速开启成功")
end



function Exit()
print("团队独家制作 修仙裙：345577972")
os.exit()
end
cs = "团队独家制作 修仙裙：345577972"



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









