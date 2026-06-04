gg.toast('Lua Script Crisis Action v1.0.0')
print('Cheat Crisis Action Script v1.0.0') 
--Game guardian detection
if gg.BUILD < 5511 then 
print('You need latest version of GameGuardian to run this script. Minimum GG v.8.30.0.') 
goto update
end 
if gg.isVisible(true) then 
gg.setVisible(false) end 
gg.clearResults()
gg.alert("嫦曦(陶杨)qq344644467      神仙吃鸡，交流开黑 qq群99692536");
goto START
::START::
menu = gg.choice({'上色','喝药无cd+1.3倍加速【大厅开启】','巨人【必须坐车上修改必须断网重连】','范围扩大','高跳【配和踏空,飞天,子弹追踪更6逼】','高空行走【站着不动落地,往前继续高空行走(配和踏空更6逼)开启后请开启踏空,不然动不了】','子弹追踪【离得近的打不中,开镜瞄准开枪即可】','踏空【必须先开高跳】','变成小黄人（眸喜欢的小黄人）'},nil,'QQ群：嫦曦(陶杨)qq344644467      神仙吃鸡，交流开黑 qq群99692536')
if menu == 1 then goto Alone1 end
if menu == 2 then goto Alone2 end
if menu == 3 then goto Alone3 end
if menu == 4 then goto Alone4 end
if menu == 5 then goto Alone5 end
if menu == 6 then goto Alone6 end
if menu == 7 then goto Alone7 end
if menu == 8 then goto Alone8 end
if menu == 9 then goto Alone9 end
if menu == nil then print('Error') end 

goto noselect


::Alone1::
gg.clearResults() gg.searchNumber('0.5;6;1;1.20000004768::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) 
gg.toast('手动找四个1（改E0结束为7500变红色）')
goto sdone


::Alone2::
gg.clearResults()
gg.searchNumber('12;8;6;3', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DOUBLE) 
gg.toast('启动成功（嫦曦(陶杨)）')
gg.clearResults()
gg.searchNumber('22.5;0.8;0.5;1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('1.3', gg.TYPE_DOUBLE)
gg.toast('加速开启（嫦曦(陶杨)）')
goto sdone


::Alone3::
gg.clearResults()
gg.searchNumber('0.1;5;2.3125F;1;1.875F::100', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('10', gg.TYPE_DOUBLE)
gg.toast('实体变大开启（嫦曦(陶杨)）')
goto sdone

::Alone4::
gg.clearResults()
gg.searchNumber('5D;0E;1F;2F::45', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('5', gg.TYPE_FLOAT)
gg.toast('范围拾取已开启（嫦曦(陶杨)）')
goto sdone


::Alone5::
gg.clearResults()
gg.searchNumber('15;-10;-5;-1D;-10;5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('38', gg.TYPE_FLOAT)
gg.toast('高跳开启（嫦曦(陶杨)）')
goto sdone


::Alone6::
gg.clearResults()
gg.searchNumber('0.2;65536D;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('-80', gg.TYPE_FLOAT) 
gg.toast('飞天开启成功,请开启踏空,不然动不了（嫦曦(陶杨)）')
goto sdone



::Alone7::
gg.clearResults()
gg.searchNumber('400E;1.82499992847;1D;1075576832D;1.2E', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.82499992847', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('9999', gg.TYPE_FLOAT)
gg.toast('子弹追踪开启成功（陶哥老婆）')
gg.clearResults()
goto sdone



::Alone8::
gg.clearResults()
gg.searchNumber('0.3;65536D;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('99', gg.TYPE_FLOAT) 
gg.toast('踏空开启成功（嫦曦(陶杨）')
goto sdone

::Alone9::
gg.clearResults()
gg.searchNumber('1.6;1;1;1;1;0.5;::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.removeResults(gg.getResults(1))
gg.getResults(2)
gg.editAll('255',gg.TYPE_FLOAT)
gg.toast('小黄人开启成功（嫦曦(陶杨）')
gg.clearResults()
goto sdone




::sdone:: 
print('嫦曦(陶杨qq344644467')
os.exit()


::noselect::
print('作者嫦曦(陶杨')
gg.toast('嫦曦(陶杨qq344644467')

::update::
print('嫦曦(陶杨qq344644467')
gg.toast('嫦曦(陶杨qq344644467')






