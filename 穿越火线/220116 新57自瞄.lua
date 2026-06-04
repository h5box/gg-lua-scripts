function Main()
  SN = gg.multiChoice({
  "开启自瞄",
  "退出脚本"
 }, nil, "免费使用交流群1065369515")
  if SN == nil then
  else
  if SN[1] == true then
   A()
  end
  if SN[2] == true then
   Exit()
  end
end
  XGCK = -1
end



function A()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("57.29578018188;1000;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000;0;0", gg.TYPE_FLOAT)
	 gg.toast("57自瞄开启成功")
	 gg.clearResults()
end



function Exit()
print("脚本结束")
os.exit()
end
cs = "小北"



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









