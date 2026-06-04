function Main()
  SN = gg.choice({
    "马赛克",
    "透视",
    "绿色上色",
    "退出脚本"
  }, 2018, "清辰自用")
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
    Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.4382593e-43;6.9814286e-29;5.1835492e21;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(8)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("💙马赛克开启成功💙")
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.6051939e-45;6.4292188e-29;4.2038954e-44;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(8)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("💙透视开启成功💙")
end


function c()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("      ", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("      ", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(4)
gg.editAll("      ",gg.TYPE_FLOAT)
gg.toast("      ️")
end



function Exit()
   print("清辰自用")
  os.exit()
end



cs = "清辰自用"
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
