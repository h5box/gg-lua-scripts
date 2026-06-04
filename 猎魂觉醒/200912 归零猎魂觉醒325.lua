






gg.alert('')


 



function Main()
  SN = gg.multiChoice({
    "1.副本加速〖副本开启〗",
    "2.光速攻击〖副本开启〗",
    "3.秒上蓄力〖副本开启〗",
    "【退出脚本】"
  }, nil, "——————功能列表——————")
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
    Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.searchNumber("0.9;0.4;60.0;0.1;2.0;0.5::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() == 0 then
gg.toast("副本加速开启失败！")
else
gg.searchNumber("0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("2", gg.TYPE_DOUBLE)
gg.toast("副本加速开启成功！")
end
end



function b()
gg.clearResults()
gg.searchNumber("0.001;4;1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() == 0 then
gg.toast("光速攻击开启失败！")
else
gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("8", gg.TYPE_DOUBLE)
gg.toast("光速攻击开启成功！")
end
end






function c()
gg.clearResults()
gg.searchNumber("0.16;0.14;0.12;0.1;1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() == 0 then
gg.toast("秒上蓄力开启失败！")
else
gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0.0001", gg.TYPE_DOUBLE)
gg.toast("秒上蓄力开启成功！")
end
end














function Exit()
   print("归零～")
  os.exit()
end



cs = "我欲修仙～"
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
