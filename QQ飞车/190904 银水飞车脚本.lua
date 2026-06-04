function  Main()
ts = gg.multiChoice({
  "全车加速(部分无效)",
  "引擎加速",
  "无限氮气",
  "无限小喷",
  "穿墙",
  "刹车锁码",
  "退出脚本"
}, nil, "银水qq3224330850")
if ts == nil then
else
  if ts[1] == true then
    a()
  end
  if ts[2] == true then
    b()
  end
  if ts[3] == true then
    c()
  end
  if ts[4] == true then
    d()
  end
  if ts[5] == true then
    e()
  end
  if ts[6] == true then
    f()
  end
  if ts[7] == true then
    Exit()
  end
  XGCK = -1
end
end
function  a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("20D;248D;0;95D;416D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("98", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(os.date("现在奔放时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
--------Function4882--------
function  b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.toast("引擎加速开启成功")
gg.clearResults()
end
--------Function4883--------
function  c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("19.40000152588;4.40000009537;0;256D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00001", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("无限氮气已开启")
end
--------Function4884--------
function  d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2D;50;1.4;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("无限小喷已开启")
end
--------Function4885--------
function  e()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2D;-2.0009167;1E-45~3.4E38;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("穿墙开启成功")
gg.clearResults()
end
--------Function4886--------
function  f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1;-0.10000000149;1000::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("刹车锁码开启成功")
gg.clearResults()
end
--------Function4887--------
function  Exit()
gg.toast("我说过三楼的脚本都是我的，你发我就改！")
print("3224330850")
os.exit()
end
cs = "oo"
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