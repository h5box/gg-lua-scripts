gg.toast('小多啦出品')
print('QQ1458554303')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START


::START::
menu = gg.choice({'变大','地面透视','爬行加速','嗑药','上色','路飞'},nil,'小多啦出品')
if menu == 1 then goto a1 end
if menu == 2 then goto a2 end
if menu == 3 then goto a3 end
if menu == 4 then goto a4 end
if menu == 5 then goto a5 end
if menu == 6 then goto a6 end
if menu == nil then print('Error') end 
goto xinliang


::a1::
gg.searchNumber('1;0.5;2;2;2::110', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(3) 
gg.editAll('8', gg.TYPE_DOUBLE) 
gg.toast('变大脚本')
goto xinliang


::a2::
gg.searchNumber('0.0078125e;1;-3200;6400::80', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('透视脚本')
goto xinliang


::a3::
gg.searchNumber('1.25;3;6.25::', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.25', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('10', gg.TYPE_DOUBLE)
gg.toast('爬行加速脚本')
goto xinliang


::a4::
gg.searchNumber('12;8;6;3', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DOUBLE) 
gg.toast('嗑药脚本')
goto xinliang


::a5::
gg.searchNumber('1.6;1;1;1;1;0.5::33', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('999',gg.TYPE_FLOAT)
gg.toast('上色脚本')
goto xinliang


::a6::
gg.searchNumber('1.484;2::35', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.484', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('100', gg.TYPE_DOUBLE)
gg.toast('路飞开启成功')
goto xinliang


::xinliang:: 
print('小多啦出品')
print('作者QQ1458554303')
print('作者QQ1458554303')
gg.toast('小多啦五号脚本')
os.exit()
