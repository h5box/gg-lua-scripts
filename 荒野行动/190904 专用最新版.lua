print('嫦曦(陶杨)qq344644467      神仙吃鸡，交流开黑 qq群99692536')
--Game guardian detection
if gg.BUILD < 5511 then 
print('依旧是你最帅的眸') 
goto update
end 
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START
::START::
menu = gg.choice({'┗=͟͟͞͞(˙牛˙)=͟͟͞͞┛走过路过不要错过','┗=͟͟͞͞(˙牛˙)=͟͟͞͞┛上色功能瞧一瞧嘞','【每个功能的那个括号后面都有写着的】','【加群点这里，结束脚本后按复制】'},nil,'功能主菜单嫦曦(陶杨)qq344644467      神仙吃鸡，交流开黑 qq群99692536')                                                                                                                                                      
if menu == 1 then goto x1 end
if menu == 2 then goto x2 end
if menu == nil then goto sdone end 
goto noselect

::x1::
goto START1

::x2::
goto START2

::START1::
menu = gg.choice({'神仙吃药(大厅开启)','奥特曼(3.5倍，飞机上开 改完冻结游戏结束之前改回1就恢复了)','魔术子弹(游戏里开)','吸星大法拾取(游戏里开)','遁地(手动冻结，游戏里开)','普通加速(登录页面开)','蛇皮加速(登录页面开启，必须趴下走)','踏空(游戏里开)','除草(游戏里开)','视角抬高(游戏里开)','无敌高跳踏空结合体(落地开)','爬墙(游戏里开)','路飞(游戏里开，路飞配遁地特别的赞)','除土(游戏里开)','倍镜(游戏里开，红点当4倍来用)','上一页',},nil,'常用                                                                                                                                                      眸2018-1-11日更新')
if menu == 1 then goto a1 end
if menu == 2 then goto a2 end
if menu == 3 then goto a3 end
if menu == 4 then goto a4 end
if menu == 5 then goto a5 end
if menu == 6 then goto a6 end
if menu == 7 then goto a7 end
if menu == 8 then goto a8 end
if menu == 9 then goto a9 end
if menu == 10 then goto a10 end
if menu == 11 then goto a11 end
if menu == 12 then goto a12 end
if menu == 13 then goto a13 end
if menu == 14 then goto a14 end
if menu == 15 then goto a15 end
if menu == 16 then goto START end
if menu == nil then goto sdone end 
goto noselect

::a1::
gg.clearResults()
gg.searchNumber('12;8;6;3', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DOUBLE) 
gg.toast('咳药启动成功（眸）')
goto sdone

::a2::
gg.clearResults()
gg.searchNumber('0.1;5;2.3125F;1;1.875F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('3.5', gg.TYPE_DOUBLE)
gg.toast('奥特曼开启（）')
goto sdone

::a3::
gg.clearResults()
gg.searchNumber('1,081,671,680D;1.82499992847;0.5E;1.75::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.82499992847', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('66666', gg.TYPE_FLOAT)
gg.toast('子弹追踪已开启（眸）')
goto sdone

::a4::
gg.clearResults()
gg.searchNumber('5D;0E;1F;2F::45', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('5', gg.TYPE_FLOAT)
gg.toast('范围拾取已开启（眸）')
goto sdone

::a5::
gg.clearResults()
gg.searchNumber('1060439284D;1;0E;65536D;0E::65', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('2.65', gg.TYPE_FLOAT)
gg.toast('遁地已开启,手动冻结（眸）')
goto sdone
::a6::
gg.clearResults()
gg.searchNumber('1.25;3;6.25::', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('10', gg.TYPE_DOUBLE)
gg.toast('加速开启成功（眸）')
goto sdone

::a7::
gg.clearResults()
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('2.8', gg.TYPE_DOUBLE)
gg.toast('开启蛇皮走位成功（眸）')
goto sdone
::a8::
gg.clearResults()
gg.searchNumber('15;-10;-5;-1D;-10;5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('38', gg.TYPE_FLOAT)
gg.toast('高跳开启，稍等')
gg.clearResults()
gg.searchNumber('0.2;65536D;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('-80', gg.TYPE_FLOAT) 
gg.toast('稍等，正在开启踏空请处于疾跑状态不然摔死')
gg.clearResults()
gg.searchNumber('0.3;65536D;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('99', gg.TYPE_FLOAT) 
gg.toast('踏空开启成功（眸）')
goto sdone
::a9::
gg.clearResults()
gg.searchNumber('0.0078125E;1;120;33;0.4', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('120', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('除草成功（眸）')
goto sdone
::a10::
gg.clearResults()
gg.searchNumber('0.4;0.76;0.3;1.3;1.65::113', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.65', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.toast('视角抬高开启成功，冻结一下，游戏结束在改回1.65（眸）')
goto sdone

::a11::
gg.clearResults()
gg.searchNumber('0.1;0.6;1;0.5;0.1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(40)
gg.editAll('0', gg.TYPE_DOUBLE)
gg.toast('无敌开启（眸）')
gg.clearResults()
gg.searchNumber('2D;3;2.125F;5D;0.5', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('100', gg.TYPE_DOUBLE)
gg.toast('高跳开启（眸）')
gg.clearResults()
gg.searchNumber('0.3;65536D;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('99', gg.TYPE_FLOAT) 
gg.toast('无敌高跳踏空开启成功（眸）')
goto sdone
::a12::
gg.searchNumber(' 1,060,439,284D;1;0.01;65536D::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.01', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('爬墙开启成功（眸）')
goto sdone
::a13::
gg.clearResults()
gg.searchNumber('1.484;2::35', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.484', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('100', gg.TYPE_DOUBLE)
gg.toast('路飞开启成功（眸）')
goto sdone

::a14::
gg.clearResults()
gg.searchNumber('0.0078125e;1;-3200;6400::80', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('除土成功（眸）')
goto sdone

::a15::
gg.clearResults()
gg.searchNumber('5;1.6;0.4;1.25::50', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.25', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('3', gg.TYPE_DOUBLE)
gg.toast('倍镜开启成功（眸）')
goto sdone

::START2::
menu = gg.choice({'红色','绿色','蓝色','黄色','粉色','青色','白色','雪地变色(找到E0改300)'},nil,' 欢迎加入嫦曦(陶杨)qq344644467      神仙吃鸡，交流开黑 qq群99692536')
if menu == 1 then goto X2 end
if menu == 2 then goto X3 end
if menu == 3 then goto X4 end
if menu == 4 then goto X5 end
if menu == 5 then goto X6 end
if menu == 6 then goto X7 end
if menu == 7 then goto X8 end
if menu == 8 then goto X9 end
if menu == nil then print('Error') end 
goto sdone
::X2::
gg.clearResults()  
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('红色开启成功（眸）')
gg.clearResults()
goto sdone

::X3::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('绿色开启成功（眸）')
gg.clearResults()
goto sdone

::X4::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(3))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('蓝色开启成功（眸）')
gg.clearResults()
goto sdone

::X5::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(2)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('黄色开启成功（眸）')
gg.clearResults()
goto sdone

::X6::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('请稍等')
gg.clearResults()
gg.searchNumber('1.6;1;255;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(1)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('粉色开启成功（眸）')
gg.clearResults()
goto sdone

::X7::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(2))
gg.getResults(2)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('青色开启成功（眸）')
gg.clearResults()
goto sdone

::X8::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('白色开启成功（眸）')
gg.clearResults()
goto sdone

::X9::
gg.clearResults()
gg.searchNumber('0.5;6;1;1.20000004768::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.toast('找到E0改300')
goto sdone
goto sdone

::sdone:: 

os.exit()

::noselect::

::update::
print('嫦曦(陶杨)qq344644467      神仙吃鸡，交流开黑 qq群99692536')