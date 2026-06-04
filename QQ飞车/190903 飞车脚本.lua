
 gg.toast('小多啦QQ1458554303')
print('小多啦QQ1458554303') 
--Game guardian detection
if gg.BUILD < 5511 then 
print('小多啦QQ1458554303') 
goto update
end 
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
gg.alert("by: 禁止倒卖，倒卖死全家，小多啦QQ1458554303更新");
goto START


::START::
menu = gg.choice({'无限气','引擎加速','全局加速（10倍）','全局加速（50倍）','所有功能请在匹配成功后开启','全局加速不能匹配所有，通剧情用','by:诺尘 禁止倒卖，倒卖死全家，小多啦QQ1458554303'},nil,'小多啦QQ1458554303')
if menu == 1 then goto ermua end
if menu == 2 then goto ermub end
if menu == 3 then goto ermuc end
if menu == 4 then goto ermud end
if menu == 5 then goto ermue end
if menu == 6 then goto ermuf end
if menu == 7 then goto ermuf end
goto noselect

::ermua::
gg.clearResults()
gg.searchNumber('01,100,690,228D;4.4;0::24', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('4.40000009537', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('100',gg.TYPE_FLOAT)
gg.toast('无限氮气')
os.exit()
goto START


::ermub::
gg.clearResults()
gg.searchNumber('1;1000:5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('88888', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('小多啦QQ1458554303')
goto START

::ermuc::
gg.clearResults()
gg.searchNumber('0.0078125E;1;0.33333333::30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('10', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('小多啦QQ1458554303')
goto START

::ermud::
gg.clearResults()
gg.searchNumber('0.0078125E;1;0.33333333::30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('50', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('小多啦QQ1458554303')
goto START


::ermue::
gg.searchNumber('39.40000152588;0.76000005007::20', gg.TYPE_FLOAT)
gg.getResults(2)
gg.toast('视角（开启成功）  禁止盗卖')
goto sdone

::ermuf::
gg.clearResults()
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE)
gg.getResults(4)
print('Replaced: ', gg.editAll('8', gg.TYPE_DOUBLE))
gg.clearResults()
gg.toast('三倍加速（开启成功）  禁止盗卖')
goto sdone

::ermug::
gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE)
gg.getResults(1)
print('Replaced: ', gg.editAll('1.25', gg.TYPE_DOUBLE))
gg.clearResults()
gg.toast('微加速（开启成功）  禁止盗卖')
goto sdone


::sdone:: 
print('by:禁止倒卖，倒卖死全家')
os.exit()


::noselect::
print('小多啦')
gg.toast('小多啦QQ1458554303')

::update::
print('小多啦QQ1458554303')
gg.toast('小多啦QQ1458554303')



