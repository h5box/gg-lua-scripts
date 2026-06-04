function Main()
  SN = gg.choice({
  "小浮空",
  "大浮空(实体可爬墙)",
  "ak午后",
  "手枪射速",
  "硬核高跳",
  "武器马赛克手臂上色",
  "开镜加速(频繁开镜关镜开火会导致多方面加速)",
  "人物加速(上边可以洗，这个铁了，中加速)",
  "人物加速(闪电侠，不含开镜加速，单纯的人物加速)",
  "后退加速(前面的是前进加速)",
  "完美加速(各种动作都加速)",
  "滑翔",
  "AK无限子弹(下版本更新全武器)",
  "独家下蹲飞天",
  "间接性加速(影帝请选)",
  "全屏换枪(捡把枪后开启)",
"退出脚本"
 }, nil, "免费编写")
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
   k()
   end
   if SN == 12 then
   l()
   end
   if SN == 13 then
   m()
   end
   if SN == 14 then
   n()
   end
   if SN == 15 then
   o()
   end
   if SN == 16 then
   p()
   end
  if SN == 17 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.08",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.08", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.08", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.08", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("7",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function c()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.09", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.09", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function d()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.75",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.75", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function g()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.18",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.18", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("2.5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function h()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.22",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.66",gg.TYPE_FLOAT)
gg.toast("开启成功")
end




function i()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.22",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function j()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.27",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end




function k()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.1",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.5",gg.TYPE_FLOAT)
gg.toast("开启成功")
end





function l()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.02",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.02", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function m()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("30;-912,586,880F",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("999",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function n()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.8",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.8", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function o()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.2",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function p()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.5",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
end




function Exit()
print("免费编写")
os.exit()
end
cs = "ps：代码是欧皇修改器抓得，没超过1，大家可以一起抓"



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









