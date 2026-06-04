function Main()
  SN = gg.choice({
  "大厅开防",
  "功能名称2",
  "功能名称3",
  "功能名称4",
  "功能名称5",
  "功能名称6",
"退出脚本"
 }, nil, "交流群：1067570202")
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
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,453,440;60,000,000~90,000,000;67,453,440",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("67,453,440;60,000,000~90,000,000;67,453,440", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999999999)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_DWORD)
gg.toast("开启成功")
end



function Exit()
print("稳定就完事了内部群618571940")
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









