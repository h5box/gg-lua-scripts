function Main()
  SN =gg.multiChoice({
  "火影决换传说",
  "德莱文足球换传说",
  "退出脚本"
 }, nil, "购买其他脚本 找幻影 QQ2263679859")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
    b()
  end
  if SN[3] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
 gg.clearResults() 
 gg.searchNumber("46001", gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(500) 
 gg.editAll("46005", gg.TYPE_DWORD) 
 gg.clearResults() 
 gg.toast("开启成功") 
 end 


function b()
 gg.clearResults() 
 gg.searchNumber("72001", gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1) 
 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
 gg.getResults(500) 
 gg.editAll("72003", gg.TYPE_DWORD) 
 gg.clearResults() 
 gg.toast("开启成功") 
 end 

function Exit()
print("购买其他脚本 找幻影 QQ2263679859")
os.exit()
end
cs = "购买其他脚本 找幻影 QQ2263679859"



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