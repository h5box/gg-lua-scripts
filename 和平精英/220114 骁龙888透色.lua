function Main()
  SN = gg.choice({
  "透视第一步",
  "马赛克第二步",
  "房区防闪",
  "白色上色",
  "待更新",
  "待更新",
  "待更新",
  "待更新",
  "待更新",
  "待更新",
  "退出脚本"
 }, nil, "理论骁龙865骁龙888骁龙870通用")
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
   j()
  end
  if SN == 11 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.41591992e10;2.43825933e-43;2.38220739e-44;2.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.77771741e21;4.7223738e21;4.77770728e21;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202012e-19;1.12103877e-44;1.12020159e-19;3.76158192e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("完美透视开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1479437e-41;1.14906474e-41;1.16804016e-28;1.16804016e-28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_FLOAT)
gg.toast("白色上色开启成功")
end



function e()
gg.clearResults()
gg.setRanges(REGION_VIDEO)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(REGION_VIDEO)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function g()
gg.clearResults()
gg.setRanges(REGION_VIDEO)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function h()
gg.clearResults()
gg.setRanges(REGION_VIDEO)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function i()
gg.clearResults()
gg.setRanges(REGION_VIDEO)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function j()
gg.clearResults()
gg.setRanges(REGION_VIDEO)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function Exit()
print("")
os.exit()
end
cs = "骁龙透视"



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
