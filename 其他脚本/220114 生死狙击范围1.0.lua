function Main()
  SN = gg.multiChoice({
    "吸附加强(第一步)",
    "加强自瞄(第二步)",
    "透视",
    "范围",
    "穿墙", 
    "QQ群717395257"
  }, nil, "Shooter5.0")
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
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("462898", gg.TYPE_,DWORDfalse,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("单板透视开启成功")
end


function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("26", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(150)
gg.editAll("1000000",gg.TYPE_FLOAT)
gg.toast("范围开启成功")
end



function e()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(10000)
  gg.editAll("3212836864", gg.TYPE_DWORD)
  gg.processResume()
  gg.toast("开启成功")
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