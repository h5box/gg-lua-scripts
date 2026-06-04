

function Main()
  SN =gg.multiChoice({
  "透视(游戏内一把一开)",
  "无后(游戏内开一次全局效果)",
  "自瞄(游戏内开一次全局效果)",
  "退出脚本（欢迎加入游戏交流群，群聊号码：922957930）",
 }, nil, "此脚本配合防封稳定奔放")
  if SN == nil then
  else
  if SN[1] == true then
    a1()
  end
  if SN[2] == true then
    a2()
  end
  if SN[3] == true then
    a3()
  end
  if SN[4] == true then
   Exit()
  end
end
  XGCK = -1
end

function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1008981770;1148846080;2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("108700", gg.TYPE_DWORD)
gg.toast("透视开启成功")
gg.clearResults()
end

function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1000.0F;1.0F;1000.0F;1.0F::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("无后开启成功")
end

function a3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("57.29578018188;1000;0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("57.29578018188", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("99999;1000;0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("自瞄开启成功")
end

function Exit()
print("1")
os.exit()
end
cs = "欢迎加入游戏交流群，群聊号码：922957930"



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
