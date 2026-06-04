-----------------------------------------------------------------
 -- 脚本名称: 庸人自扰
 -- 脚本作者: 庸人自扰
 -- 脚本描述: 用于交流学习，禁止用于非法用途
 -------@声明: 禁止倒卖，下载后请在24小时内自行删除
--------------------------------------------------------------------------------------


function Main()
menu1 = gg.choice({
'1.⚡墙体透视⚡️ca',
'2.⚡除雾(二选一)⚡️cd',
'3.⚡️高视角(二选一)⚡️cd',
'4.⚡️除草⚡️cd',
'5.⚡️贴墙透加除雾(二选一)⚡️ca',
'6.⚡️大视角(二选一)⚡️ca',
'7.⚡️除草2⚡️b',
'8.⚡️天线白色⚡️ca',
'9.⚡️天空红色⚡️ca',
'10.⚡️人物白色⚡️b',
'11.⭕【退出脚本程序】⭕'},

nil,'作者:庸人自扰 ')
if menu1 == 1 then a() end
if menu1 == 2 then b() end
if menu1 == 3 then c() end
if menu1 == 4 then d() end
if menu1 == 5 then e() end
if menu1 == 6 then f() end
if menu1 == 7 then j() end
if menu1 == 8 then h() end
if menu1 == 9 then i() end
if menu1 == 10 then k() end
if menu1 == 11 then Exit() end
XGCK=-1
end
-----------------------------------------------------------------


function a()
gg.clearResults()  
gg.searchNumber('7680D;515D;0;1::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('1.025',gg.TYPE_FLOAT)
gg.toast('墙体透视开启成功')
end
function b()
gg.clearResults()  
gg.searchNumber('-11,376W;0.0078125E;1;1;1;1;1029W::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll('999',gg.TYPE_FLOAT)
gg.toast('除雾开启成功，请不要再开高视角')
end
function c()
gg.clearResults()  
gg.searchNumber('-11,376W;0.0078125E;1;1;1;1;1029W::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('3',gg.TYPE_FLOAT)
gg.toast('高视角开启成功，请不要再开除雾')
end
function d()
gg.clearResults()  
gg.searchNumber('0.0078125E;1;1;1;1;-21140D;-21152D::70', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast('除草开启成功')
end
function e()
gg.clearResults()  
gg.searchNumber('6D;1;1;1;2D;-257D::105::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('8.2',gg.TYPE_FLOAT)
gg.toast('贴墙透加除雾开启成功，请不要再开大视角')
end
function f()
gg.clearResults()  
gg.searchNumber('6D;1;1;1;2D;-257D::105', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('2.5',gg.TYPE_FLOAT)
gg.toast('大视角开启成功，请不要再开贴墙透加除雾')
end
function j()
gg.clearResults()  
gg.searchNumber('23D;2.25000047684;512D;10D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.25000047684', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast('除草2开启成功')
end
function h()
gg.clearResults()  
gg.searchNumber('3D;10D;5D;0.0078125E;1;1;1;0.47687998414;3::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('999',gg.TYPE_FLOAT)
gg.toast('天线白色开启成功')
end
function i()
gg.clearResults()  
gg.searchNumber('120D;2D;48D;1;1;1::180', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('999',gg.TYPE_FLOAT)
gg.toast('天空红色开启成功')
end

function k()
gg.clearResults()  
gg.searchNumber('99D;100D;1.5;1;2;3;10;-3::140', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('9999',gg.TYPE_FLOAT)
gg.toast('人物白色开启成功')
end




function Exit() 
print(' (自己用)  作者:庸人自扰！')
os.exit() 
end
cs = '庸人自扰'
while(true)
do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false) 
end 
gg.clearResults()
if XGCK==1 then Main() end
end