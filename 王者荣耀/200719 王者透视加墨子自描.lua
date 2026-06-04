function Main()
  SN = gg.choice({
  "王者过检测",
  "墨子自描",
  "王者透视",
"退出脚本"
 }, nil, "请配合hotst防封")
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
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("231",gg.TYPE_FLOAT)
gg.toast("过检测成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("37.71.11.1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("37.41.11.7", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("77.1.11.4",gg.TYPE_FLOAT)
gg.toast("墨子自瞄成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("27.5.35.6", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("21.77.35", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("77.15.35.5",gg.TYPE_FLOAT)
gg.toast("王者透视成功")
end





function Exit()
print("GM科技中转站群号734970772")
gg.toast("已经为您复制到剪切板了")
gg.copyText("734970772")
os.exit()
end
cs = ""



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









