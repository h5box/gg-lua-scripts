 gg.toast('QQ1458554303')
print('作者小多啦') 
--Game guardian detection
if gg.BUILD < 5511 then 
print('别烦我') 
goto update
end 
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
gg.alert("QQ1458554303");
goto START


::START::
menu = gg.choice({'氮气加速','全局加速（1.5倍)','无限喷气','所有功能请在匹配成功后开启'},nil,'QQ:1458554303')
if menu == 1 then goto ermua end
if menu == 2 then goto ermub end
if menu == 3 then goto ermuc end
if menu == 4 then goto ermuc end
if menu == 5 then goto ermuc end
goto noselect
::ermua::
gg.clearResults()
gg.searchNumber('2;50;70', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('88888', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('小多啦专用版')
goto START


::ermub::
gg.clearResults()
gg.searchNumber('1;1000::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('88888', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('小多啦专用版')
goto START

::ermuc::
gg.clearResults()
gg.searchNumber('01,100,690,228D;4.4;0::24', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('4.4', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('300', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('小多啦专用版')
goto START
::sdone:: 
print('by:QQ1458554303')
os.exit()
::noselect::
::update::
