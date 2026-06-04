gg.toast('快手搜索小多啦')
print('QQ号1458554303')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START


::START::
menu = gg.choice({'熊商店专用','单人专用'},nil,'♝⭐禁止倒卖⭐♝')
if menu == 1 then goto cnm1 end
if menu == 2 then goto cnmk end
goto sdone
::cnm1::
goto START1

::cnmk::
goto START2

::START1::
menu = gg.choice({'①穿墙','②无限跳（63高度专用自己冻结）','③无限跳（高度8的时候用这个）','返回'},nil,'♝小多啦666♝')
if menu == 1 then goto nc1 end
if menu == 2 then goto nc2 end
if menu == 3 then goto nc3 end
if menu == 4 then goto START end
::nc1::
gg.clearResults()
gg.searchNumber('60;180;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('180', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('小多啦穿墙开启')
goto sdone
::nc2::
gg.clearResults()
gg.searchNumber('60;6300;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('1', gg.TYPE_DWORD)
gg.toast('小多啦无限跳开启')
goto sdone
::nc3::
gg.clearResults()
gg.searchNumber('60;800;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('1', gg.TYPE_DWORD)
gg.toast('小多啦无限跳开启')
goto sdone

::START2::
menu = gg.choice({'①能量剑无限技能','✖返回'},nil,'后面会慢慢更新')
if menu == 1 then goto ki1 end
if menu == 2 then goto  START end
::ki1::
gg.clearResults()
gg.searchNumber('12005;5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('小多啦能量剑无限技能开启')
goto sdone

::sdone:: 
print('快手小多啦制作')
print('QQ号1458554303')
gg.toast('稳不稳？')

