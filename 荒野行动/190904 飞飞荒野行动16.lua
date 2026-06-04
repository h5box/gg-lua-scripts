::START::
menu = gg.choice({'人物变大（落地修改）','秒杀（全武器打几枪搜索）','子弹追踪（全武器打几枪搜索）','中国红（落地修改）'},nil,'飞飞Tv')
if menu == 1 then goto bianda end
if menu == 2 then goto miaosha end
if menu == 3 then goto QJ end
if menu == 4 then goto X2 end
if menu == nil then print('Error') end 
goto sdone

::bianda::
gg.clearResults()
gg.searchNumber('0.1;5;2.3125F;1;1.875F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('10', gg.TYPE_DOUBLE)
gg.toast('实体变大开启')
goto sdone

::miaosha::
gg.clearResults()
gg.searchNumber('1;2;3;10;15::160', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('999', gg.TYPE_DOUBLE)
gg.toast('飞飞')
goto sdone

::QJ::
gg.clearResults()
gg.searchNumber('1D;1.82499992847;1081262080D;4D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.82499992847', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('9999', gg.TYPE_FLOAT)
goto sdone

::X2::
gg.clearResults()  
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('中国红开启成功')
gg.clearResults()
goto sdone


::sdone:: 
print('飞飞')
gg.toast('飞飞制作')
os.exit()
