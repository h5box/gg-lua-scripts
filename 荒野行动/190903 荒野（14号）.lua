gg.toast('作者:小多啦')
print('QQ1458554303')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START


::START::
menu = gg.choice({'人物变大（上飞机改）','趴着加速'},nil,'小白出品，禁止倒卖，被封自负')
if menu == 1 then goto X1 end
if menu == 2 then goto X2 end
goto sdone



:: X1::
gg.clearResults() 
gg.searchNumber('0.1;5;2.3125F;1;1.875F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('9', gg.TYPE_DOUBLE)
gg.toast('变大开启成功')
goto sdone


:: X2::
gg.clearResults() 
gg.searchNumber('1.25;3;6.25', gg.TYPE_DOUBLE, false,
gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll('10', gg.TYPE_DOUBLE)
gg.toast('趴着加速开启成功')
goto sdone



::sdone:: 
print('作者:小多啦')
print('QQ:1458554303')
gg.toast('封号莫怪哦')

