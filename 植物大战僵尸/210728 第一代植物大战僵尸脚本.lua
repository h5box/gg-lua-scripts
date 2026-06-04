--[[此脚本不加密，二改或拿走源码发帖@我一下!
    by.哦肉咯]]


::Start::


lqv = gg.prompt({'输入"1"进入脚本:','后续会推出更多功能！'},{[1]='1',[2]="歪比巴卜"},{[1] = 'text',[2] = 'text'})


     if lqv == nil then  gg.toast("检测到点击取消")  qx=gg.alert("检测到您点击了取消\n是退出脚本还是返回上一界面？","退出脚本","返回") if qx == 1 then print('结束脚本原因:你点击了退出脚本!') os.exit() end end if qx == 2 then goto  Start end
     
     
     if lqv[1] == '' then gg.toast('你咋不输入数值呢？') goto Start end
     
     
     if lqv[1] == "1" then
     
     
     else
     
     
     gg.toast("输入数值错误！") goto Start end


 gg.toast("加载中...")
 
 
 gg.sleep(700)
 
 
 gg.toast("进入成功！")


function AA()


  menu = gg.choice({
  
  
     "查看♂♀当前时间",
     
     
	 "点击van♂植物大战僵尸️",
	 
	 
	 "退出脚本去van♂"},
	 
	 
  nil,"♂♂♂♂♂♂♂♂♂♂♂♂♂♂♂♂♂♂♂♂")
  
  
  if menu == 1 then Main189() end
  
  
  if menu == 2 then A() end
  
  
  if menu == 3 then Exit() end
  
  
  FX1=0
  
  
end


function Exit()


print("再见！祝你van的开心️")


os.exit()


end


function HOME()


AA()


end




function Main189()


SN = gg.choice({


	 "⚡️⚡️⚡️点击这里返回去van⚡️⚡️⚡️点击这里返回去van⚡️⚡️⚡️⚡️⚡️⚡️",
	 
	 
}, nil, os.date"哲学时间为%Y年%m月%d日%H时%M分%S秒")


if SN==1 then


	 HS190()
	 
	 
end


FX1=0


end


function HS190()


	 AA()
	 
	 
end

::sn::
function A()


  menu1 = gg.multiChoice({


      "双重van豆射♂手攻速",
      
      
      "van豆射♂手攻速",
      
      
      "冰van豆射♂手攻速",
      
      
      "冰西呱🐸攻♂速",
      
      
      "西呱🐸攻♂速",
      
      
      "小土豆♂攻速",
      
      
      "坚果子♂攻速",
      
      
      "好吃♂的樱桃攻速",
      
      
      "所有植物高伤♂害",
      
      
      "返回主页♂♂♂"},
      
      
  nil,"哲学点1:所有改攻速&0cd的功能改完后贴图都是向日葵♂♂♂\n哲学点2:所有改攻速开启后都是种植0cd♂♂♂")
  
  
  if menu == nil then
  
  
  else
  
  
  if menu1[1] == true then a1() end
  
  
  if menu1[2] == true then a2() end
  
  
  if menu1[3] == true then a3() end
  
  
  if menu1[4] == true then a4() end
  
  
  if menu1[5] == true then a5() end
  
  
  if menu1[6] == true then a6() end
  
  
  if menu1[7] == true then a7() end
  
  
  if menu1[8] == true then a8() end
  
  
  if menu1[9] == true then a9() end
  
  
  if menu1[10] == true then HOME() end
  
  
  end
  
  
  FX1=0
  
  
end


function a1()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("14;5;200;750;1;150:21", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("14;750;150", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(3)


gg.editAll("7", 4)


gg.toast("双重van豆射♂手攻速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a2()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("4;0;100;750;1;150:21", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("4;150;750", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(3)


gg.editAll("7", 4)


gg.toast("van豆射♂手攻速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a3()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("13;4;175;750;1;150:21", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("13;150;750", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(3)


gg.editAll("7", 4)


gg.toast("冰van豆射♂手攻速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a4()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("88;27;200;5,000;1;300:21", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("88;5000;300", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(3)


gg.editAll("7", 4)


gg.toast("冰西呱🐸攻♂速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a5()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("77;14;300;750;1;300:21", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("77;750;300", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(4)


gg.editAll("7", 4)


gg.toast("西呱🐸攻♂速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a6()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("23;25;3,000:13", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("23;3000", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(2)


gg.editAll("7", 4)


gg.toast("小土豆♂攻速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a7()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("5;50;3,000:13", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("5;3000", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(2)


gg.editAll("7", 4)


gg.toast("坚果子♂攻速开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a8()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("10;3;150;5,000:13", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.searchNumber("10;5000", 4, false, gg.SIGN_EQUAL, 0, -1)


gg.getResults(2)


gg.editAll("7", 4)


gg.toast("好吃♂的樱桃攻速0cd开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


function a9()


gg.clearResults()


gg.setRanges(8)


gg.searchNumber("20;20;40;80;20;80;40;20;20;75;20;300;40;20;20:169", 4,false,gg.SIGN_EQUAL,0, -1)


if gg.getResultCount() == 0 then


gg.toast('搜索不到')


else


gg.getResults(15)


gg.editAll("9999999", 4)


gg.toast("所有植物高伤♂害开启成功,共修改了"..gg.getResultCount().."条数据")


gg.clearResults()


end


end


while true do


if gg.isVisible(true) then


    FX1 = nil
    
    
    gg.setVisible(false)
    
    
  end
  
  
  if FX1 == nil then
  
  
    AA()
    
    
end


end

