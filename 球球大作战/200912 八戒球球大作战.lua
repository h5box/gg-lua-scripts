mima = "1234"
v_value = gg.prompt({"逢人不必言声 孤独本是常态 若深情总被辜负 余生孤独也无妨\n<——><——><——>\n脚本永久免费使用！倒卖司马！\n<——><——><——>\n球王辅助\n请输入密码:"}, 
  {
  [1] = 1234
}, {
  [1] = "1234"
})
function mi()
  print("密码正确")
  gg.toast("启动成功")
end
function end_c()
  print("密码错误")
  gg.toast("密码不正确")
  os.exit()
end
if v_value[1] == mima then
  mi()
else
  end_c()
end
function Main()
  SN = gg.choice({
  "吐球加速🐳游戏里开",
  "分身加速🐳游戏里开",
  "视野扩大🐳游戏里开",
  "体积暴增🐳游戏里开",
  "退出"
 }, 2020, "八戒提醒 脚提供稳定上坟 适当逃杀 ")
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
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.11999999732F;128D::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.11999999732",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0.00500521", gg.TYPE_FLOAT)
gg.toast("吐球加速开启成功")
end




function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.05999999866F;1.875F::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.05999999866",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0.00001", gg.TYPE_FLOAT)
gg.toast("分身加速开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("视野扩大修改成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.16500000656;50;0.01::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("50.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("520",gg.TYPE_FLOAT)
gg.toast("体积暴增修改成功")
end



function Exit()
print("离开了修仙模式")
gg.toast("成功关闭辅助")
os.exit()
end
cs = "1069721958"



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
















--[[Welcome to Dluae]]