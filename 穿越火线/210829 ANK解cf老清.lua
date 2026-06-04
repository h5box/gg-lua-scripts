function Main()
  SN = gg.multiChoice({
  "xs内存自瞄",
  "退出脚本"
 }, nil, "群565292522")
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
gg.setRanges(gg.REGION_CODE_SYS)
gg.searchNumber("-3.73678215e28;-1.01087383e27::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.73678215e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("已开启自瞄50%")

gg.clearResults()
gg.setRanges(gg.REGION_CODE_SYS)
gg.searchNumber("-3.81119909e28;-1.86500608e28::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.81119909e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(909)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("自瞄开启成功")
end


function Exit()
print("脚本结束")
os.exit()
end
cs = "老清原创2改死妈，看到这里你已经没妈了"



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









