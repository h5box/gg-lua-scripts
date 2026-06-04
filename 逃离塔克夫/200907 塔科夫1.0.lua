function Main()
  SN = gg.multiChoice({
  "流畅透视",
  "上色",
  "范围",
  "无后座",
  "加速①",
  "加速②(①无效)",
  "射速",
  "退出脚本"
 }, nil, "我是傻逼")
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
   g()
   end
  if SN[8] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,073,741,824;541,343,762;897,988,541;541,343,763:13",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,073,741,824", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("1,123,024,896",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8207", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8207", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("3",gg.TYPE_FLOAT)
gg.toast("成功")
end



function c()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.08", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.08", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("6",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function d()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("700", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("700", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("6.25", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6.25", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("13",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("6.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("13",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function g()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function Exit()
print("我是傻逼")
os.exit()
end
cs = "我是傻逼"



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









