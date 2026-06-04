mima ="1"
v_value = gg.prompt({
 "挽致牛逼密码1"
}, {
 [1] = 0
}, {
 [1] = "挽致牛逼密码1"
})
function mi()
 print("密码正确")
end
function end_c()
 print("密码错误")
 os.exit()
end
if v_value[1] == mima then
 mi()
else
 end_c()
end

function Main()
  SN = gg.choice({
  "AK影袭",
  "星宿死噶",
  "M416赤诚",
  "M762尖叫鸡",
  "『赠送』黄金AK",
  "退出脚本"
 }, nil, "挽致原创🌸")
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
   Exit()
  end
  XGCK = -1
end

function a()
  gg.clearResults(32)
  gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("1101001079",gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function b()
  gg.clearResults(32)
  gg.searchNumber("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("10100300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("1101003082",gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function c()
  gg.clearResults(32)
  gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("10100400",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("1101004015",gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function d()
  gg.clearResults(32)
  gg.searchNumber("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("10100800",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("1101008014",gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function e()
  gg.clearResults(32)
  gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("10100100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("1101001007",gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function Exit()
   print("挽致牛逼")
   os.exit()
end
cs = "挽致牛逼好吧"
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









