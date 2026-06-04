gg.alert("♡天南地北♥沐凡最暖♡不加群100%封号♡\n♡快手搜索沐凡快手号：z666h666z666♡\n♡不点关注100%封号♡\n♡沐凡QQ846504850♡\n♡Ly团队♡沐凡制作♡");

gg.toast('制作:沐凡♡不加群者，封号100%')

function lunyuan()
menu = gg.choice({'☞无限小喷(加载地图开启♡别太浪漂移后加上双喷只喷4次)☜','☞锁房（匹配成功到加载地图的一瞬间运行，然后退出脚本手动改0必须在开跑之前才有用）☜','☞闪电⚡风暴（使用板板车匹配立刻开始搜索）☜','☞引擎加速(跑的时候开，改完了退出脚本打开gg全选修改0.39才有用封号率自测）☜','☞✘退出✘☜'},nil,'☞沐凡交流群：666047973☜\n☞沐凡QQ846504850☜\n☞快手搜索:GG修改器♡沐凡☜')
if menu == 1 then MuFan1() end
if menu == 2 then MuFan2() end
if menu == 3 then MuFan3() end
if menu == 4 then MuFan4() end
if menu == 5 then Exit() end
WQSGDSB=-1
end
function Exit()
  print('天南地北♥沐凡最暖')
   os.exit() 
end
function MuFan1()
gg.clearResults()
gg.searchNumber('30D;31D;63D;100F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30D;31D;63D;100F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('1', gg.TYPE_FLOAT)
gg.toast('天南地北♥沐凡最暖')
end

function MuFan2()
gg.clearResults()
gg.searchNumber('3.59999990463;0.27777779102;181D::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.27777779102', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('锁房已开启请退出脚本手动改0')
end

function MuFan3()
gg.clearResults() 
gg.searchNumber('10009', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100) 
gg.editAll('10006', gg.TYPE_DWORD) 
gg.toast('天南地北♥沐凡最暖')
end

function MuFan4()
gg.clearResults()
gg.searchNumber('3.59999990463;0.27777779102;181D::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.27777779102', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0.4', gg.TYPE_FLOAT)
gg.toast('氮气小喷加速带请退出脚本手动全选改0.39')
end

while(true)
do
  if gg.isVisible(true) then
    WQSGDSB=1
    gg.setVisible(false) 
  end 
  if WQSGDSB==1 then lunyuan() end
end
