gg.toast('Lua Script Crisis Action v1.0.0')
print('Cheat Crisis Action Script v1.0.0') 
--Game guardian detection
if gg.BUILD < 5511 then 
print('You need latest version of GameGuardian to run this script. Minimum GG v.8.30.0.') 
goto update
end 
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START
::START::
menu = gg.choice({'变大(所有数据手动改8)','m4秒杀(D类改善1，全改999)','山顶洞人的变大代码','嗑药','除草','人物变红','人物加速','恢复人物变红','遁地',},nil,'防止脚本过期，记得加群各类辅助长期更新群:792053999')
if menu == 1 then goto x1 end
if menu == 2 then goto x2 end
if menu == 3 then goto x3 end
if menu == 4 then goto x4 end
if menu == 5 then goto x5 end
if menu == 6 then goto x6 end
if menu == 7 then goto x7 end
if menu == 8 then goto x8 end
if menu == 9 then goto x9 end

goto noselect

::x1::
gg.clearResults()
gg.searchNumber('1;0.5;2::50', gg.TYPE_DOUBLE)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.toast('各类辅助长期更新群:792053999')
goto sdone

::x2::
gg.clearResults()
gg.searchNumber('1;1;5;3D;2.3125F;1.75F;0.8e', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.toast('各类辅助长期更新群:792053999')
goto sdone

::x3::
gg.clearResults()
gg.searchNumber('1;0.5-104.9', gg.TYPE_DOUBLE)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.toast('开启成功，大厅搜飞机上改数值8到15倍')
goto sdone

::x4::
gg.searchNumber('1075970048;1075838976;1075314688;1074266112::300',
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.clearResults()
gg.toast('各类辅助长期更新群:792053999')
goto START

::x5::
gg.clearResults()
gg.searchNumber('120;10', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('120', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('各类辅助长期更新群:792053999')
goto START

::x6::
gg.clearResults()
gg.searchNumber('1.60000002384;1.20000004768;1;1;1;1;0.5::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('500',gg.TYPE_FLOAT)
gg.toast('各类辅助长期更新群:792053999')
gg.clearResults()
gg.toast('人物显红')
goto START

::x7::
gg.clearResults()
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('1', gg.TYPE_FLOAT)
gg.toast('各类辅助长期更新群:792053999')
goto START

::x8::
gg.clearResults()
gg.searchNumber('0.5;8;1;1.6;1.2;1000::60', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('3.2', gg.TYPE_FLOAT)

::x9::
gg.clearResults()
gg.searchNumber('1;0.01;0.2;0.3::33', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.toast('执行脚本那个菜单里面有地址(蒙版)搜索，点8，然后改善')


::sdone:: 
print('各类辅助长期更新群:792053999')
gg.toast('Hack Done')
os.exit()

::noselect::
print('You Not Select Anything')
gg.toast('You Not Select Anything')


::update::
print('UPDATE YOUR GAME GUARDIAN')
gg.toast('GG NOT SUPORT')
