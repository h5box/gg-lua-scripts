function Main()
  SN = gg.choice({
    "全英雄360°子弹追踪＋360°自瞄(设置里可关)",
    "退出脚本"
  }, 2018, "反馈群获取更多脚本：669556151")
  if SN == 1 then
    a()
  end
  if SN == 2 then
    Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.99904823303;0.99254614115;0.98480772972::17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(16)
gg.editAll("-999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function Exit()
   print("反馈群获取更多脚本：669556151")
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
