function Main()
  SN = gg.multiChoice({
    "游戏中开启（第2步）",
    "游戏中开启（第3步）",
    "游戏中开启（第4步）",
    "游戏中开启（第5步）",
    "大厅开启（第1步）",
    "全屏自瞄(第6步)",
    "5.0"
  }, nil, "你今天做人了吗？")
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
   if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
 if SN[6] == true then
   f()
  end
  if SN[7] == true then
    Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.01745329238;1000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("450", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("450", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("999999999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function d()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.10000000149;10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("9999999999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function e()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("57.29578018188", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(12)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-1;11", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("11", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1500)
gg.editAll("999999999",gg.TYPE_FLOAT)
gg.toast("你今天做人了吗？")
end



function Exit()
   print("放纵")
  os.exit()
end



cs = "Shooter4.0"
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
