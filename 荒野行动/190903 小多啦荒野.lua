gg.toast('快手搜索小多啦')
print('快手搜索迷你世界小多啦')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START


::START::
menu = gg.choice({'秒喝毒药','变身3.5倍  可以捡空投)','子弹追踪(100米可以打到)','超人(登录页面开启，必须趴下走不然卡屏)','红姨妈','绿巨人','蓝精灵','大黄人','粉羊','蓝翔','大白','雪地变色(找到E0改300)','视角抬高'},nil,' 快手搜索小多啦')
if menu == 1 then goto X1 end
if menu == 2 then goto X2 end
if menu == 3 then goto X3 end
if menu == 4 then goto X4 end
if menu == 5 then goto X5 end
if menu == 6 then goto X6 end
if menu == 7 then goto X7 end
if menu == 8 then goto X8 end
if menu == 9 then goto X9 end
if menu == 10 then goto X10 end
if menu == 11 then goto X11 end
if menu == 12 then goto X12 end
if menu == 13 then goto X13 end
if menu == nil then print('Error') end 
goto sdone

::X1::
gg.clearResults()
gg.searchNumber('12;8;6;3', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DOUBLE) 
gg.toast('秒喝药毒药成功')
goto sdone
::X2::
gg.clearResults()
gg.searchNumber('0.1;5;2.3125F;1;1.875F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('3.5', gg.TYPE_DOUBLE)
gg.toast('变大3.5开启')
goto sdone
::X3::
gg.clearResults()
gg.searchNumber('1D;1.82499992847;1081262080D;4D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.82499992847', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('9999', gg.TYPE_FLOAT)
gg.toast('神仙的枪已开启')
goto sdone
::X4::
gg.clearResults()
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('2.8', gg.TYPE_DOUBLE)
gg.toast('开启超人成功')
goto sdone
::X5::
gg.clearResults()  
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('姨妈红开启成功')
gg.clearResults()
goto sdone

::X6::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('绿巨人开启成功')
gg.clearResults()
goto sdone

::X7::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(3))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('蓝精灵开启成功')
gg.clearResults()
goto sdone

::X8::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(2)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('大黄人开启成功')
gg.clearResults()
goto sdone

::X9::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('小妹子请稍等')
gg.clearResults()
gg.searchNumber('1.6;1;255;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('粉羊羊开启成功')
gg.clearResults()
goto sdone

::X10::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(2)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('蓝翔开启成功')
gg.clearResults()
goto sdone

::X11::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('白银开启成功')
gg.clearResults()
goto sdone

::X12::
gg.clearResults()
gg.searchNumber('0.5;6;1;1.20000004768::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.toast('找到E0改300')
goto sdone
::X13::
gg.clearResults()
gg.searchNumber('0.4;0.76;0.3;1.3;1.65::113', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.65', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.toast('手动锁定下视角')
goto START

::sdone:: 
print('用小号，封号别找我')
gg.toast('快手关注小多啦你会火🔥')
os.exit()
