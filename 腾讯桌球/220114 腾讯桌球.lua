function Main()
  SN = gg.choice({
  "开启延长线",
  "关闭延长线",
  "功能名称3",
  "功能名称4",
  "功能名称5",
  "功能名称6",
  "退出脚本"
 }, 2018, "www.kjdao.cc")
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
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1,065,353,216;330,712,481,846;-5,069,335,227,860,516,849;455,266,533,429;940,597,837,825',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1065353216',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5,584,477,912',gg.TYPE_QWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1065353216;1065353216;618,475,290,682;229D::10000',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1065353216',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('5,584,477,912',gg.TYPE_QWORD)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('5,584,477,912;330,712,481,846;-5,069,335,227,860,516,849;455,266,533,429;940,597,837,825',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('5,584,477,912',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('1065353216',gg.TYPE_QWORD)
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









