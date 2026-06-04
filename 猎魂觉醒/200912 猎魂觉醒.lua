function Main()
  SN = gg.choice({
    "八门遁甲",
    "副本移速",
    "城镇移速",
    "自动拉杆",
    "技能CD",
    "无限子弹",
    "退出脚本"
  }, 2018, "这里可以填写你的QQ")
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
gg.setRanges(4)
gg.searchNumber('1;3;100;3F',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("搜索失败！")
else
gg.searchNumber('1',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('5',gg.TYPE_DOUBLE)
gg.toast('第一步开启成功，正在开启第二步')
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('4;1;0.5;25::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('5',gg.TYPE_DOUBLE)
gg.toast('第二步开启成功，尽情享受')
end
end













function b()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('60;2;0.5;1::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("搜索失败！")
else
gg.searchNumber('0.5',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('2.5',gg.TYPE_DOUBLE)
gg.toast('第一步开启成功，正在开启第二步')
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('60;2;2.5;1::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('8',gg.TYPE_DOUBLE)
gg.toast('第二步开启成功，尽情享受')
end
end




function c()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('4;180;1.75F;6::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1.75',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('2',gg.TYPE_FLOAT)
gg.toast('开启成功')
end




function d()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('4;0.5;5::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("搜索失败！")
else
gg.searchNumber('4',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('0.0001',gg.TYPE_DOUBLE)
gg.toast('第一步开启成功，正在开启第二步')
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('10;0.25;2.5;4.5::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('10',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('0.0001',gg.TYPE_DOUBLE)
gg.toast('第二步开启成功，尽情享受')
end
end









function e()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('3;100;-1;0.5;1::',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("搜索失败！")
else
gg.searchNumber('1',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('0',gg.TYPE_DOUBLE)
gg.toast('开启成功')
end
end












function f()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('10;0.1;3;455D;0;5:120',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("搜索失败！")
else
gg.searchNumber('0',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(510)
gg.editAll('1',gg.TYPE_DOUBLE)
gg.toast('开启成功')
end
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
