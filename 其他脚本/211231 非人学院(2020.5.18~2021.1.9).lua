function Main()
  SN = gg.choice({
    "无后",
    "全局",
    "上帝",
    "全局2",
    "速度",
    "退出脚本"
  }, 2020, "踏上非人之路")
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
    Exit()
  end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("436,207,628;146,640,368;0f;167,772,161", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('60D;1F::13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
	 js= gg.prompt({i='速度'}, {i='1'})
  gg.editAll(js["i"], gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("953,267,991D;0.01745329238F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.01745329238", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.03",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('30D;1F::13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
	 js= gg.prompt({i='速度'}, {i='1'})
  gg.editAll(js["i"], gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function e()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1,901,222,674,657,441,279", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1,901,222,674,657,441,279", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_QWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end


function Exit()
   print("叶少")
  os.exit()
end



cs = "踏上非人之路"
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
