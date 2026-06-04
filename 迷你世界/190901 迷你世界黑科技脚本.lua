gg.toast('迷你阁安和')
print('黑科技群:41555616')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START


::START::
menu = gg.choice({'联机生存专用','单人生存专用'},nil,'♝⭐迷你世界黑科技修改,禁止倒卖⭐♝')
if menu == 1 then goto cnm1 end
if menu == 2 then goto cnm2 end
goto sdone

::cnm1::
goto START1
::cnm2::
goto START2


::START1::
menu = gg.choice({'①穿墙（会掉血）','②无限跳（高度7专用,自己冻结）','③无限跳（高度70专用,自己冻结）','✖返回'},nil,'♝群号415556616♝')
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
gg.toast('迷你穿墙开启')
goto sdone
::nc2::
gg.clearResults()
gg.searchNumber('60;700;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('1', gg.TYPE_DWORD)
gg.toast('迷你无限跳开启')
goto sdone
::nc3::
gg.clearResults()
gg.searchNumber('60;7000;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('1', gg.TYPE_DWORD)
gg.toast('迷你无限跳开启')
goto sdone


::START2::
menu = gg.choice({'①能量剑无限技能','②击杀野人掉落无限经验','③无限物品（自己冻结）','④石矛一击致命（攻击修改）','✖返回'},nil,'后面会慢慢更新')
if menu == 1 then goto ki1 end
if menu == 2 then goto ki2 end
if menu == 3 then goto ki3 end
if menu == 4 then goto ki4 end
if menu == 5 then goto START end
::ki1::
gg.clearResults()
gg.searchNumber('12005;5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('安和能量剑无限技能开启')
goto sdone
::ki2::
gg.clearResults()
gg.searchNumber('3101;12526;13', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('13', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(50)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('击杀野人,野人掉落经验爆表')
goto sdone
::ki3::
gg.clearResults()
gg.searchNumber('945804463', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('945804463', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(15)
gg.editAll('945804524', gg.TYPE_DWORD)
gg.toast('手动冻结,无限物品开启')
goto sdone
::ki4::
gg.clearResults()
gg.searchNumber('12002;35F', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('35', gg.TYPE_FLOAT, false, gg.SIGN_FLOT, 0, -1)
gg.getResults(5)
gg.editAll('99999', gg.TYPE_FLOAT)
gg.toast('石矛一击致命开启')
goto sdone


::sdone:: 
print('迷你阁安和制作')
print('黑科技群号:415556616')
gg.toast('稳稳的！')