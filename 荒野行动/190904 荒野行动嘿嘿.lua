function Main()
  SN = gg.multiChoice({
  "高跳(拉回大厅就别用)",
  "透视",
  "上色",
  "",
  "",
  "",
  "退出脚本"
 }, nil, "北京时间: %H:%M:%S\n一般无效奔腾\n广告:\n女性性感牌内裤搞活动了\n2019年2月4日~2020年2月4日\n购买立打八折快来抢购哦联系电话:110\n120\n119\n10086\n1008611\n24小时在线接通在线接通快来抢购吧")
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
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
	 gg.searchNumber("40.0E;3.8E;3.0E;0.5E::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_DOUBLE)
	 gg.toast("高跳成功")
os.exit()
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.015625; 3.87548828125;3.75; 2.0; -1.O; 0.75; 0.24899999797;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("透视成功")
os.exit()
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912543e-19;1.6623683e-19;1.1953076e-42:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6623683e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("666", gg.TYPE_FLOAT)
gg.toast("上色成功")
os.exit()
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("")
end



function Exit()
print("感谢使用！")
os.exit()
end
cs = "路过"



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









