--------------------------------------------------
 gg.toast('请勿倒卖,最好自用')
print('欢迎加入交流群:712652370，作者凤凰:1498445365') 
--Game guardian detection
if gg.BUILD < 5511 then 
print('凤凰') 
goto update
end 
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 



::START::
menu = gg.choice({'开启加速','开启暂时隐身','开启穿墙','加速这个功能请在每局比赛炫耀时装度时开启','隐身前先在训练场复位一次,之后不需要再重复开启,除非重新进游戏','by:凤凰大大 '},nil,'欢迎加入交流群:712652370，作者凤凰:1498445365')
if menu == 1 then goto ermua end
if menu == 2 then goto ermub end
if menu == 3 then goto ermuc end

goto noselect




::ermua::
gg.clearResults()
gg.searchNumber('3.00000023842;50.0000038147;74::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.00000023842', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('200', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('200;50.0000038147;74::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('50.0000038147', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('100', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('200;100;74::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('74', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('150', gg.TYPE_FLOAT)
gg.toast('加速已开启')
gg.clearResults()
goto START

::ermub::
gg.clearResults()
gg.searchNumber('3;2.5;4:20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('隐身只可以维持20秒哦,抓紧时间拿第一吧')
gg.clearResults()
goto START

::ermuc::
gg.clearResults()
gg.searchNumber('2D;-2.0009167;1E-45~3.4E38;1;1;1::130', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('穿墙已开启')
gg.clearResults()
goto START

::sdone:: 
print('by:凤凰 倒卖')
os.exit()


::noselect::
print('凤凰大大')
gg.toast('by:凤凰倒卖')

::update::
print('by:神罚▽凤凰')
gg.toast('by:凤凰 倒卖')



