function Main()
  SN = gg.multiChoice({
  "🌹挑战自定义倍功🌹",
  "🌹子弹穿墙开启🌹",
  "🌹子弹穿墙恢复🌹",
  "🌹人物超级加速🌹",
  "🌹机枪无后开启🌹",
  "🌹暴力射速开启🌹",
  "🌹人物高跳开启🌹",
  "🌹人物高跳关闭🌹",
  "🌹刷金币，登录界面开启🌹",
  "🌹十级踏空开启🌹",
  "🌹十级踏空关闭🌹",
  "🌹隔墙自瞄开启🌹",
  "退出脚本"
 }, nil, "柒.破解")
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
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
  if SN[11] == true then
   k()
  end
  if SN[12] == true then
   l()
  end
  if SN[13] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
menu1 = gg.choice({
	 "🌷🌷开启自定义倍攻🌷🌷",
	 "别点我，点我上面的",
	 "返回",
}, nil, "全局只能开一次，并且不可恢复")
if menu1 == 1 then H1() end
if menu1 == 2 then H2() end
if menu1 == 3 then HOME() end
  end
  PD1 = 1

function H1()
local m = gg.prompt({"挑战推荐改25到30之间，配合子弹穿墙"
 }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1]
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("不要开过大")
else
gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll(m, gg.TYPE_DWORD)
gg.toast("成功")
   end
 end



function b()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("子弹穿墙失败")
else
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("666999", gg.TYPE_DWORD)
gg.toast("子弹穿墙成功，")
gg.toast("结束时必须关闭，否则卡视角")
end
end



function c()
	 	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("666999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("子弹穿墙恢复失败")
else
gg.searchNumber("666999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("子弹穿墙恢复成功")
end
end



function d()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1;0.33333334327::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-0.55", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end



function e()
gg.clearResults()
gg.searchNumber("1400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("没有后座")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
end



function f()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;60F;41D;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("射速开启失败")
gg.toast("大厅或者游戏内试试")
else
gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_FLOAT)
gg.toast("成功")
end
end



function g()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("在游戏多开几次试试")
else
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("11.942013", gg.TYPE_FLOAT)
gg.toast("高挑成功")
end
end



function h()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("11.942013", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("恢复失败，恢复一次就够了")
else
gg.searchNumber("11.942013", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("恢复成功")
end
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("102",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("102", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3000)
gg.editAll("105",gg.TYPE_DWORD)
gg.toast("第二次开启必须重新进游戏在登录界面开启")
end



function j()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.70000004768F;1.20000004768F;0.10000000149F;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("十级踏空开启失败")
else
gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10.5678", gg.TYPE_FLOAT)
gg.toast("十级踏空开启成功")
   end
 end



function k()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10.5678", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10.5678", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.03999999911", gg.TYPE_FLOAT)
	 gg.toast("关闭踏空成功")
	 gg.clearResults()
end



function l()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.60239994526;-2360D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.60239994526", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-99999", gg.TYPE_FLOAT)
  gg.toast("隔墙自瞄，情祭无敌")
 end



function Exit()
print("某某垃圾工作室脚本都不加密一下")
os.exit()
end
cs = "柒.破解"



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









