function Main()
  SN =gg.multiChoice({
  "💚上帝视角",
   "退出脚本"
 }, nil, " （欢迎使用）")
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
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
    if SN[11] == true then
   k()
  end
    if SN[12] == true then
   l()
  end
      if SN[13] == true then
   z()
  end
      if SN[14] == true then
   x()
  end
  if SN[15] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_C_HEAP)
gg.searchNumber("1,081,006,571;-1,082,125,398;-1,082,130,432;-1,088,838,298::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,082,130,432", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-1075250249", gg.TYPE_DWORD)
gg.toast("上帝视角开启成功")
end




function b()
  end



function c()
end



function d()
end



function e()
end



function f()
end



function g()
end



function h()
end



function i()
end




function j()
end

function k()
end

function l()
end


function z()
end

function x()
end


function Exit()
print("穷人扶贫富人赚钱")
os.exit()
end
cs = "使用记得反馈"



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









