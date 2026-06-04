gg.toast('欢迎使用迷你世界脚本') 
gg.clearResults()
goto START1


::START::
menu = gg.choice({'①联机专用','②单人专用','③解锁东西【主页改】','④退出脚本'},nil,'迷う制作')
if menu == 1 then goto cnm1 end
if menu == 2 then goto cnm2 end
if menu == 3 then goto cnm3 end
if menu == 4 then goto cnm4 end
goto TCJB


::cnm1::
goto START1
::cnm2::
goto START2
::cnm3::
goto START3
::cnm4::
goto TCJB


::START1::
menu = gg.choice({'①穿墙术（站在高度65）','②无限跳（站在高度65）【手动冻结】','③结束脚本'},nil,'迷う制作')
if menu == 1 then goto nc1 end
if menu == 2 then goto nc2 end
if menu == 3 then goto TCJB end
::nc1::
gg.clearResults()
gg.searchNumber('60;180;6500;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('180', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('穿墙术开启成功！')
goto TCJB
::nc2::
gg.clearResults()
gg.searchNumber('60;180;6500;1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('1', gg.TYPE_DWORD)
gg.toast('请手动把倒数第二个1冻结！')
goto TCJB
::nc3::
gg.clearResults()
gg.searchNumber('12005;5F', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_FLOAT, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('能量剑无限技能开启成功！')
goto TCJB


::START2::
menu = gg.choice({'①石茅秒杀','②肘子无毒吃出电锯','③星星爆表【打死野人】','④牛生坐骑【0.14.1以下版本可用】','⑤返回上个界面'},nil,'迷う制作')
if menu == 1 then goto aaa end
if menu == 2 then goto bbb end
if menu == 3 then goto ccc end
if menu == 4 then goto ddd end
if menu == 5 then goto START end
::aaa::
gg.clearResults()
gg.searchNumber('12002;35F', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('35', gg.TYPE_FLOAT, false, gg.SIGN_FLOT, 0, -1)
gg.getResults(100)
gg.editAll('999999999', gg.TYPE_FLOAT)
gg.toast('石茅秒杀开启成功！')
goto TCJB
::bbb::
gg.clearResults()
gg.searchNumber('12526;10000;11302', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('10000', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('正在开启请稍后...')
goto jx
::jx::
gg.clearResults()
gg.searchNumber('12526;0;11302', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('11302', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('11005', gg.TYPE_DWORD)
gg.toast('肘子无毒吃出电锯开启成功！')
goto TCJB
::ccc::
gg.clearResults()
gg.searchNumber('3101;12526;13', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('13', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('999999999', gg.TYPE_DWORD)
gg.toast('请打死野人！')
goto TCJB
::ddd::
gg.clearResults()
a = gg.prompt({'请输入坐骑代码)'}
,{[1]=0},{[1]='number'})[1]
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('3401;3401;3812', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3812', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll(a, gg.TYPE_DWORD)
gg.toast('牛生坐骑开启成功！')
goto TCJB


::START3::
menu = gg.choice({'①火箭背包','②弩','③爆竹','④火箭筒','⑤弹弓','⑥豪华床','⑦坚冰','⑧返回上个界面'},nil,'迷う制作')
if menu == 1 then goto a1 end
if menu == 2 then goto a2 end
if menu == 3 then goto a3 end
if menu == 4 then goto a4 end
if menu == 5 then goto a5 end
if menu == 6 then goto a6 end
if menu == 7 then goto a7 end
if menu == 8 then goto START end
::a1::
gg.clearResults()
gg.searchNumber('12253;91', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('91', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('火箭背包解锁成功！')
goto TCJB
::a2::
gg.clearResults()
gg.searchNumber('12283;61', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('61', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('弩解锁成功！')
goto TCJB
::a3::
gg.clearResults()
gg.searchNumber('12280;59', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('59', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('爆竹解锁成功！')
goto TCJB
::a4::
gg.clearResults()
gg.searchNumber('12284;62', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('62', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('火箭筒解锁成功！')
goto TCJB
::a5::
gg.clearResults()
gg.searchNumber('12281;60', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('60', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('弹弓解锁成功！')
goto TCJB
::a6::
gg.clearResults()
gg.searchNumber('884;31', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('31', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('豪华床解锁成功！')
goto TCJB
::a7::
gg.clearResults()
gg.searchNumber('963;39', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('39', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('坚冰解锁成功！')
goto TCJB


::TCJB:: 
gg.toast('感谢使用！')	
print('作者：迷う')
print('作者QQ：3115093767')
print('作者迷你号：35866057')
