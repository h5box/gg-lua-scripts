function Main()
  SN = gg.choice({
  "变大三倍（普通老鼠）",
  "加速<（国王杰瑞）",
  "秒杀（普通老鼠有效，其他自测）",
  "功能名称4",
  "功能名称5",
  "功能名称6",
"退出脚本"
 }, nil, "这里可以填写你的QQ")
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
gg.searchNumber("1.0;85.0;130.0;0.6370370388",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("琅琊提示:开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4.0859375;4.2038954e-45;5.6051939e-45;16.73958778381;5.6051939e-45",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.0859375",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("琅琊提示:开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3.38671875;5.6051939e-45;2.71875;4.2038954e-45;",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.71875",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("琅琊提示:开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"



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









