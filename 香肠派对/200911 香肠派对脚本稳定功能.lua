function Main()
  SN = gg.choice({
    "连跳穿墙",--1
    "子弹聚点",--2
    "锁头范围(稳定)",--3
    "人物天线",--4
    "拉勾勾距离",
    "轻功水上漂",
    "退出脚本 🇧 🇾➨🇾 🇸"
  }, nil, "杳桑解密 🇧 🇾➨🇾 🇸")
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
gg.setRanges(32)
gg.getResults(1)
gg.searchNumber("1,055,286,886;1,065,353,216;1,067,869,798:9'",4,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(1)
gg.searchNumber("1,055,286,886",4,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(100)
gg.editAll("-99",4)
end

function b()
gg.clearResults()
gg.setRanges(16384)
gg.getResults(1)
gg.searchNumber("0.11999999732;0.20000000298",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(1)
gg.searchNumber("0.11999999732;0.20000000298",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(100)
gg.editAll("0",16)
end

function c()
gg.clearResults()
gg.setRanges(4)
gg.getResults(1)
gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(1)
gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(100)
gg.editAll("1.2",16)
gg.toast("维他命恭喜你开启成功")
end

function d()
gg.clearResults()
gg.setRanges(36)
gg.getResults(1)
gg.searchNumber("1.72448539734~1.72448551655",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(9999)
gg.editAll("999",16)
gg.toast("维他命恭喜你开启成功")
end

function e()
gg.clearResults()
gg.setRanges(32)
gg.getResults(1)
gg.searchNumber("1059145646;1109393408:5",4,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(1)
gg.searchNumber("1109393408",4,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(100)
gg.editAll("2139095040",4)
gg.toast("维他命恭喜你开启成功")
end

function f()
gg.clearResults()
gg.setRanges(4)
gg.getResults(1)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(1)
gg.searchNumber("0.07999999821",16,false,536870912,0,-1)
gg.getResults(0)
gg.getResults(100)
gg.editAll("45",16)
gg.toast("维他命恭喜你开启成功")
end


function Exit()
   print("快猫杳桑解密")
  os.exit()
end
cs = "🇧 🇾➨🇾 🇸"
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