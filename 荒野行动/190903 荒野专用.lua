gg.toast('Lua Script Crisis Action v:.0.0')
print('Cheat Crisis Action Script v:.0.0') 
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
menu = gg.choice({'遁地,视角','改色,拾取,除草','变大','嗑药,秒杀','加速(用不到)'},nil,'荒野行动脚本 ')
if menu == 1 then goto DunDi end
if menu == 2 then goto A1 end
if menu == 3 then goto BianDa end
if menu == 4 then goto MiaoSha end
if menu == 5 then goto JiaSu end
if menu == nil then goto sdone end 


goto noselect


::A1::
gg.clearResults()
gg.searchNumber('1.6;1.2;1;1;1;1;0.5::29', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('1000', gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('5D;0.0078125E;0.01999999955F;2F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('5', gg.TYPE_FLOAT)
gg.toast('拾取个人使用请勿倒卖')
gg.clearResults()
gg.searchNumber('20;10;120;33::20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('120', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('除草')
goto START


::BianDa::
gg.clearResults()
gg.searchNumber('0.1;5;2.3125F;1;1.875F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.toast('变大个人使用请勿倒卖')
goto START

::MiaoSha::
goto START1


::DunDi::
goto START2


::JiaSu::
goto START3

::START1::
menu = gg.choice({'嗑药','秒杀手改自测','备用','备用','返回上层'},nil,'荒野行动脚本')
if menu == 1 then goto M4 end
if menu == 2 then goto Ak end
if menu == 3 then goto Akh end
if menu == 4 then goto M4h end
if menu == 5 then goto START end
if menu == nil then goto sdone end 
goto noselect
::M4::
gg.clearResults()
gg.searchNumber('9;8;6;3::300', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DOUBLE)
gg.toast('嗑药个人使用请勿倒卖')
goto START1

::Ak::
gg.clearResults()
gg.searchNumber('0.8;0.5;1.75F;1;2;2F::60', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.toast('倍攻秒杀个人使用请勿倒卖')
goto START1

::M4h::
gg.clearResults()
gg.searchNumber('42;9999;40::28', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('9999', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('41', gg.TYPE_FLOAT)
gg.toast('M4秒杀已关闭')
goto START1

::Akh::
gg.clearResults()
gg.searchNumber('49;9999;47::28', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('9999', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('48', gg.TYPE_FLOAT)
gg.toast('AK秒杀关闭')
goto START1

::START2::
gg.clearResults()
gg.searchNumber('1;0.62160998583;0.2;0.3;65536D::40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('3', gg.TYPE_FLOAT)
gg.toast('遁地个人使用请勿倒卖')
gg.clearResults()
gg.searchNumber('0.4;0.76;0.3;1.3;1.65::113', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.65', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.toast('手动锁定下视角')
goto START

::START3::
menu = gg.choice({'1.2倍加速','1.2倍加速恢复','1.3倍加速','1.3倍加速恢复','返回上层',},nil,'荒野行动脚本')
if menu == 1 then goto JiaSu2 end
if menu == 2 then goto JiaSu2h end
if menu == 3 then goto JiaSu8 end
if menu == 4 then goto JiaSu8h end
if menu == 5 then goto START end
if menu == nil then goto sdone end 
goto noselect

::JiaSu2::
gg.clearResults()
gg.searchNumber('1;-1;100000::40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('1.2', gg.TYPE_FLOAT)
goto START3

::JiaSu8::
gg.clearResults()
gg.searchNumber('1;-1;100000::40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('1.3', gg.TYPE_FLOAT)
goto START3

::JiaSu2h::
gg.clearResults()
gg.searchNumber('1.2;-1;100000::40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('1', gg.TYPE_FLOAT)
goto START3

::JiaSu8h::
gg.clearResults()
gg.searchNumber('1.3;-1;100000::40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('1', gg.TYPE_FLOAT)
goto START3

::sdone:: 
 print('如若发现同样的脚本在别的论坛/或群，作者将追击其责任！谢谢合作')
  gg.toast('Good bye!')
  os.exit() 
os.exit()

::noselect::

::update::




