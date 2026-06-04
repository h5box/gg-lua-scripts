 
function Main()
  SN = gg.choice({
  "全屏救人＋开钥匙(开一次就行)",
  "秒开(一局一开哦)",
"退出脚本"
 }, nil, "作者QQ2495268706")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   Exit()
  end
  XGCK = -1
end



function a()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("全屏开钥匙救人开启成功~")
	 gg.clearResults()
end



function b()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("66.89824676514", gg.TYPE_FLOAT)
	 gg.toast("全物品秒开开启成功~")
	 gg.clearResults()
end



function Exit()
print("感谢使用~")
os.exit()
end
cs = "无敌的葬世大大~"



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









