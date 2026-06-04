function Main()
  SN = gg.choice({
  "蹲下视角抬高开启",
  "蹲下视角抬高关闭",
  "退出脚本"
 }, nil, "春水初生，春林初盛，春风十里，不如你")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.searchNumber("1.2;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("2.7", gg.TYPE_FLOAT)
gg.toast("蹲下视角抬高开启")
gg.setVisible(false)
gg.searchNumber("1.2;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end



function b()
gg.clearResults()
gg.searchNumber("2.7;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("1.2", gg.TYPE_FLOAT)
gg.toast("关闭视角抬高")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end



function Exit()
print("今夕何夕，见此良人")
os.exit()
end
cs = "禁止倒卖"



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









