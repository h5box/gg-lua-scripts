sudu=5
sudu2=1
sudu3=1
sudu4=0
function Main()
  SN = gg.choice({
    --[["加速（国王杰瑞）",]]
    "捡东西丢猫秒杀（普通杰瑞）",
        "速度+",
    "速度-",
    "改为这个速度",
    "退出脚本"
  }, nil, "当前为"..tostring(sudu).."倍加速")
  
 --[[ if SN == 1 then
    b()
  end
  ]]
  if SN == 1 then
    sudu4=sudu4+1
    if sudu4==2 or sudu5~=1 then
    sudu4=0
    sudu5=0
 c()
  end
  end
       if SN == 2 then
       sudu=sudu+1
    sudu1()    
  end 
     if SN == 3 then
     sudu=sudu-1
    sudu1()       
  end 
    if SN == 4 then    
    sudu4=sudu4+1
    if sudu4==2 or sudu5~=1 then
    sudu4=0
    sudu5=0
 HS3()
  end
  end
  if SN == 5 then
    Exit()
  end
  XGCK = -1
end

function sudu1()
sudu5=1
sudu2=sudu2+1
  SN1 = gg.choice({
    "速度+",
    "速度-",
  }, nil, "当前为"..tostring(sudu).."倍加速")
if SN1==1 then
sudu=sudu+1
sudu1()
end 
if SN1==2 then
sudu=sudu-1
sudu1()
end
if SN1==nil then
sudu3=sudu3+1
    if sudu3==sudu2 then
    sudu2=1
    sudu3=1
Main()
end
end
end



function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.875F;1.875F;4.134765625F;3D;2.5F;2.0F;2.4375F::1089", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.134765625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = sudu}})
	 end
	 gg.toast("移速修改成功")
	 gg.clearResults()
end




function b()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4.0859375;4.2038954e-45;5.6051939e-45;16.73958778381;5.6051939e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.0859375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function c()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.38671875;5.6051939e-45;2.71875;4.2038954e-45;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.71875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end



function Exit()  
  os.exit()
end


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
