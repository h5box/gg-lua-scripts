--------------------------------------------------
 -- 
 --------------------------------------------------
 gg.toast('冰淇淋丶')
print('QQ1114525066') 
--Game guardian detection
if gg.BUILD < 5511 then 
print('冰淇淋丶QQ1114525066') 
goto update
end 
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 



::START::
menu = gg.choice({'开启微加速'},nil,'冰淇淋丶 QQ1114525066')
if menu == 1 then goto ermua end
if menu == 2 then goto ermub end
if menu == 3 then goto ermuc end

goto noselect




::ermua::
gg.clearResults()
gg.searchNumber('200;100;74::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('74', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('120', gg.TYPE_FLOAT)
gg.toast('加速已开启')
gg.clearResults()
goto START

::ermub::
gg.clearResults()
goto START

::ermuc::
gg.clearResults()
goto START

::sdone:: 
print('仅供内部测试，切勿破坏游戏平衡')
os.exit()


::noselect::
print('冰淇淋丶     QQ1114525066')
gg.toast('仅供内部测试')

::update::
print('冰淇淋丶  QQ1114525066')
gg.toast('仅供内部测试')



