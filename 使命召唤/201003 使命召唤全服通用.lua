function Main()
menu = gg.choice({
 '遇墙飞天（实体）',
 'PVP透视上色',
 '人物加速',
 '小范围',
 '加速高跳(生存)',
 '吃鸡透视上色',
 '无后聚点防抖准心一键开启（国际服）',
 '无后聚点防抖准心一键开启（台服）',
 'CD自瞄（勿点）',
 '子弹穿墙（勿点）',
 '无限子弹(勿点)',
 '退出脚本'},
nil,'猫王牛逼/群443111563')
if menu == 1 then A1() end
if menu == 2 then A2() end
if menu == 3 then A3() end
if menu == 4 then A4() end
if menu == 5 then A5() end
if menu == 6 then A6() end
if menu == 7 then A7() end
if menu == 8 then A8() end
if menu == 9 then A30() end
if menu == 10 then A10() end
if menu == 11 then A11() end
if menu == 12 then Exit() end
XGCK=-1
end

function A7()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-5.72706589e27;-5.72949909e27::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("无后开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-8.34162127e22;-5.45618446e27;-1.63073774e26::10', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5.45618446e27', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("子弹聚点开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-5.76567655e27;-2.80148914e28;-3.74440972e28;2.64699311e-23::20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.74440972e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.67103465e26;-1.30014034e28;-5.9029581e21;-5.9075698e21;-1.1149337e28::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1149337e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("准心聚点开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-298,776,000;-300,938,736;-390,230,928;79,886,124;2,423,652;79,886,096::21', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('400A31EEr', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast("秒开镜开启成功")
gg.clearResults()
Main()
end

function A4()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.01;0.2~0.3;0.32~0.6;2D::20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.2～0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('4', gg.TYPE_FLOAT)
gg.toast("小范围开启成功")
gg.clearResults()
Main()
end

function A10()
gg.clearResults()
gg.clearResults()
gg.clearResults()
Main()
end





			
function A11()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-0.00048828474;1.05878967e-22::30', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.05878967e-22', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('150', gg.TYPE_FLOAT)
gg.toast("无限子弹开启成功")
gg.clearResults()
Main()
end

function A1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.4999999702F;0.05000000075F;0.25F::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('40', gg.TYPE_FLOAT)
gg.toast("遇墙飞天开启成功")
gg.clearResults()
Main()
end

function A2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('338,558,000~338,559,990', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll('1,148,829,696', gg.TYPE_DWORD)
gg.toast("透视开启成功")
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('327,684D;3.00054955482;5.24592502e-29;3::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('327684', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('327683', gg.TYPE_DWORD)
gg.clearResults()
Main()
end

function A3()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.280000209814.28000020981::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll('7', gg.TYPE_FLOAT)
gg.toast("全局加速开启成功")
gg.clearResults()
gg.clearResults()
Main()
end


function A5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;1;1.5;0.3::30", gg.TYPE_FLOAT)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("3", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("人物高跳开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.28000020981;4.28000020981::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(400)
gg.editAll('7', gg.TYPE_FLOAT)
gg.toast("全局加速开启成功")
gg.clearResults()
gg.clearResults()
Main()
end


function A6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('338,558,000~338,559,990', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll('1,148,829,696', gg.TYPE_DWORD)
gg.toast("透视开启成功")
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('32792;983,063::20', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('32792', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('-999', gg.TYPE_DWORD)
gg.toast("上色开启成功")
Main()
end


function A8()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-5.72706589e27;-5.72949909e27::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪无后开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-8.34162127e22;-5.45618446e27;-1.65434644e26::10', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-5.45618446e27', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("子弹聚点开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-5.76567655e27;-2.80148914e28;-3.74440972e28;2.64699311e-23::20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-3.74440972e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("全枪防抖开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-1.58376384e26;-1.30014034e28;-5.9029581e21;-5.9075698e21;-1.1149337e28::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.11493373e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("准心聚点开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-298,776,000;-300,938,736;-390,230,928;79,886,124;2,423,652;79,886,096::21', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('400A31EEr', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast("秒开镜开启成功")
gg.clearResults()
Main()
end



function A88()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_BAD)
gg.searchNumber("1F;1.75;9F;5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-350", gg.TYPE_FLOAT)
gg.toast('开启成功')
gg.clearResults()
Main()
end


function Exit() 
print("作者：猫王")
os.exit() 
end
cs = '猫王出品'
while(true)
do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false) 
end 
gg.clearResults()
if XGCK==1 then Main() end
end







