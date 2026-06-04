function Main()
  SN = gg.choice({
  "透明化",
  "马赛克",
  "功能名称3",
  "功能名称4",
  "功能名称5",
  "功能名称6",
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
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('-1.65906451e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-1.65906451e-39',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_FLOAT)

gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('-2,147,418,101',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('-2,147,418,101',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5444',gg.TYPE_DWORD)
gg.toast("开启成功")
end



function c()

gg.toast("开启成功")
end



function d()

gg.toast("开启成功")
end



function e()

gg.toast("开启成功")
end



function f()

gg.toast("开启成功")
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
















--[[Welcome to Dluae]]