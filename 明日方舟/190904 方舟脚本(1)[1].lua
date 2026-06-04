


function Main()
  SN = gg.choice({
  "修改人物经验",
    "修改生物经验",
  " 群体眩晕",
    "群体秒杀",
     
"退出脚本"
 }, nil, "陌路修改、♥")
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
    g()
  end
  if SN == 8 then
    h()
  end
  if SN == 9 then
   Exit()
  end
  XGCK = -1
end


  
 function a()
gg.clearResults()
gg.searchNumber("1D;0D~99D;0.1~40000000;0D;40000000::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1~40000000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
local t1=gg.prompt({'请输入'},{'0'},{'number'})
gg.editAll(t1[1],16)
gg.toast('修改人物经验')
end

  
     function b()
gg.clearResults()
gg.searchNumber("1D~5000D;1D~99D;0.1~900000;1D;900000::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1~900000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
local t1=gg.prompt({'请输入'},{'0'},{'number'})
gg.editAll(t1[1],16)
gg.toast('修改生物经验')
end
  
  
    function c()
gg.clearResults()
gg.searchNumber("50~500000;50~500000;0;50~990999;15~990999;100::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
local t1=gg.prompt({'请输入'},{'0'},{'number'})
gg.editAll(t1[1],16)
gg.toast('群体眩晕')
end


  function d()
gg.clearResults()
gg.searchNumber("50~500000;50~500000;0;50~990999;15~990999;100::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("50~500000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
local t1=gg.prompt({'请输入'},{'0'},{'number'})
gg.editAll(t1[1],16)
gg.toast('群体秒杀')
end


function Exit()
print("脚本结束")
os.exit()
end
cs = "陌路q群聊号码：670613040"



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









