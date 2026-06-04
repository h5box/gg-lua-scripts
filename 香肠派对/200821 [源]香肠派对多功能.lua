function HOME()
menu4 = gg.choice({       
    '🇨🇳功能类🇨🇳',
    '🇨🇳枪械类🇨🇳',
    '🇨🇳物品类🇨🇳',
 '🏆退出 脚本🏆'},  
    nil,'🔱香肠派对多功能脚本🔱版本：正式版v1💛部分代码是先行服找的(如：跳高)💛')
  if menu4 == 1 then Man() end
  if menu4 == 2 then AS() end
  if menu4 == 3 then WP() end
  if menu4 == 4 then jieshu() end
  SLBY = -1
end

function Man()
 menu1 = gg.choice({
    '👉🔱落地开人物爬墙🔱👈',       
    '👉🔱落地开范围除树🔱👈',
    '👉🔱落地开新版天线🔱👈',
    '👉🔱落地开蹦蹦天线🔱👈',
    '👉🔱落地开车辆锁血锁油🔱👈',
    '👉🔱落地开人物高跳🔱👈 ',
    '👉🔱坐船开云霄飞船【自慰】🔱👈',
    '👉🔱落地开无限容量【不要拾背包】🔱👈',
    '👉🔱落地开定点飞行🔱👈',
    '👉🔱落地开范围除草🔱👈',
    '👉🔱落地开踏空 🔱👈',
    '👉🔱落地开遁地【秒遁】🔱👈',
    '👉🔱落地开关闭遁地【上陆地】🔱👈',
    '👉🔱落地开30倍移速【防拉回】🔱👈',
    '👉💎返回上一页💎👈'},   
    nil,'👇如果第一次打开没效果，就重新打开即可👇内存范围选择:Ch Ca A内存')
if menu1 == 1 then paqiang() end
if menu1 == 2 then one() end
if menu1 == 3 then two() end
if menu1 == 4 then three() end
if menu1 == 5 then four() end
if menu1 == 6 then five() end
if menu1 == 7 then six() end
if menu1 == 8 then three1() end
if menu1 == 9 then four1() end
if menu1 == 10 then five1() end
if menu1 == 11 then six1() end
if menu1 == 12 then seven1() end
if menu1 == 13 then eight1() end
if menu1 == 14 then nine1() end
if menu1 == 15 then HOME() end
 SLBY=-1
end
function paqiang()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber('12D;1025D;1D;1;0.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('50', gg.TYPE_FLOAT)
gg.toast('爬墙开启成功')
end


function one()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber('981,467,136D;1,149,239,296D;0.5F:50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('200', gg.TYPE_FLOAT)
gg.toast('范围除树开启成功')
end

function two()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber('-1,123,699,481D;1F::20', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('99999', gg.TYPE_FLOAT)
gg.toast('天线开启成功')
end

function three()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber('2.1031585e-9;0.33307686448', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('100', gg.TYPE_FLOAT)
gg.toast('蹦蹦天线(向上型-车子空架子)[开启成功]')
end

function four()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4000;4000;800;800;5000;5000;700;700', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.toast('车辆锁油⭐成功\n车辆锁血⭐成功')
end


function five()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.69999998808F;1.20000004768F;1.39999997616F;0.5F::', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1.20000004768;1.39999997616', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('人物高跳开启成功')
end

function six()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('75F;0.10000000149F;3F;1F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('100', gg.TYPE_FLOAT)
gg.toast('🏆云霄飞船开启成功【自慰】🏆')
end



function three1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('70;20;15::',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('70', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('99999', gg.TYPE_FLOAT)
gg.toast('无限背包开启')
end
function four1()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber('12D;337D;2D;0.00100000005F;60F;0.5F;0.89999997616F;4D::', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.89999997616', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('-100', gg.TYPE_FLOAT)
gg.toast('不能跳，否则会掉下来【开启成功】')
end

function five1()
gg.clearResults()
gg.searchNumber('1F;1,008,981,770D;-1,431,655,766D;-1,431,655,766D;12D;193D:: ', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('范围除草成功🎁')
end

function six1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('20;15;0.5::', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('15', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('踏空已开启')
end

function seven1()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('0.5F;1,056,964,608D;0.0001F;9.9999999e32F', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.5', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(250)
gg.editAll('99.25', gg.TYPE_FLOAT)
gg.toast('遁地开启成功❗')
end
  function eight1()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('99.25', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('99.25', gg.TYPE_FLOAT, false,  gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast('遁地关闭成功❗')
end


function nine1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('250F;1.25999999046F;3.03999996185F;2;1.5;1;0.5;0.69999998808F;0.5;0.5;0.89999997616;6.09999990463;4.5;3.25;6.15000009537F;5.75;3.75;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('完美加速')

end

function AS()
menu7 = gg.choice({
  '💎突击步枪💎',
  '💎狙击步枪💎',
  '💎狙击枪💎',
  '💎散弹枪💎',
  '💎冲锋枪💎' ,
  '💎机枪💎' ,
  '💎手枪💎',
  '👉返回上一页👈'},
  nil,'💝先开秒杀和增加上弹数量💝\n🍺无后必须最后开🍺\n⭐特别注意：⭐子弹加速和秒换弹只能开一个⭐')
  if menu7 == 1 then i1() end
  if menu7 == 2 then i2() end
  if menu7 == 3 then i3() end
  if menu7 == 4 then i4() end
  if menu7 == 5 then i5() end
  if menu7 == 6 then i6() end
  if menu7 == 7 then i7() end
  if menu7 == 8 then HOME() end
end
function i3()
menu8 = gg.choice({
  ' ❤                     98K',
  ' ❤                    M24',
  ' ❤                   AWM',
  '返回上一页'},
  nil,'请使用相应的枪 不要装配件开启')
  if menu8 == 1 then ju1()end
  if menu8 == 2 then ju2() end
  if menu8 == 3 then ju3() end
  if menu8 == 4 then AS() end
end

function ju1()
menu8 = gg.choice({
  '手持98K子弹秒杀❤',
  '手持98K装弹二十❤',
  '手持98K秒换弹    ❤',
  '手持98K秒拉枪    ❤',
  '手持98K无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹二十 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then k1()end
  if menu8 == 2 then k2() end
  if menu8 == 3 then k3() end
  if menu8 == 4 then k4() end
  if menu8 == 5 then  k5()    end
  if menu8 == 6 then AS()    end
end
function k4()
gg.setRanges(bit32.bxor(gg.REGION_C_HEAP, gg.REGION_ANONYMOUS))
gg.searchNumber('1.89999997616;1.35000002384;0.44999998808;1.0789998e-43;17;2.29999995232::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('98K秒拉⭐成功')
end

function k2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.5F;5D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('20', gg.TYPE_DWORD)
gg.toast('修改⭐成功')
end

function k1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.5F;77D;5D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('77', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('修改⭐成功')
end
function k3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.54000002146;0.1000000049::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function k5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('34;17;20;1.36000001431;2;2.29999995232;30::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('无后⭐成功')
end
function ju2()
menu8 = gg.choice({
  '手持M24子弹秒杀❤',
  '手持M24装弹二十❤',
  '手持M24秒换弹    ❤',
  '手持M24秒拉枪    ❤',
  '手持M24无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹二十 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then m1()end
  if menu8 == 2 then m2() end
  if menu8 == 3 then m3() end
  if menu8 == 4 then m4() end
  if menu8 == 5 then m5() end
  if menu8 == 6 then AS()  end
end
function m1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('88D;5D;34;17;20::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('88', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function m2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('5D;34;17;20::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('20', gg.TYPE_DWORD)
gg.toast('上弹增加【20】⭐成功')
end
function m3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2.40000009537;0.50999999046;0.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function m4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.79999995232;1.10000002384;0.44999998808::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('秒拉子弹⭐成功')
end
function m5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('34;17;20;1.29999995232;5;5.5;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后座⭐成功')
end
function ju3()
menu8 = gg.choice({
  '手持AWM子弹秒杀❤',
  '手持AWM装弹二十❤',
  '手持AWM秒拉枪    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹二十 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then AW1()end
  if menu8 == 2 then AW2() end
  if menu8 == 3 then AW3() end
  if menu8 == 4 then AS()    end
end
function AW1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('120D;5D34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('120', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function AW2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('5D34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('20', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function AW3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.85000002384;1.70000002384;0.44999998808::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('上弹增加⭐成功')
end

function i2()
menu8 = gg.choice({
  ' ❤              VSS连狙',
  ' ❤              SKS连狙',
  ' ❤            Mini4连狙',
  '返回上一页'},
  nil,'先开秒杀和装弹50 再开无后和秒换弹\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then lian1()end
  if menu8 == 2 then lian2() end
  if menu8 == 3 then lian3() end
  if menu8 == 4 then AS() end
end
function lian1()
menu8 = gg.choice({
  '手持Vss子弹秒杀❤',
  '手持Vss装弹二十❤',
  '手持Vss子弹加速❤',
  '手持Vss秒换弹    ❤',
  '手持Vss无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹二十 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then ss1()end
  if menu8 == 2 then ss2() end
  if menu8 == 3 then ss3() end
  if nenu8 == 4 then ss4() end
  if menu8 == 5 then ss5() end
  if menu8 == 6 then AS()    end
end
function ss1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('38D;10D;34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('38', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function ss2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10D;34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('10', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('20', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function ss3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.08600000292;0.10000000149;3.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.08600000292;0.10000000149', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function ss4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.08600000292;0.10000000149;3.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function ss5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('34;17;17;0.74000000954;2;2;10::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(18)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function lian2()
menu8 = gg.choice({
  '手持SKS子弹秒杀❤',
  '手持SKS装弹三十❤',
  '手持SKS子弹加速❤',
  '手持SKS秒换弹    ❤',
  '手持SKS无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹二十 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then ks1()end
  if menu8 == 2 then ks2() end
  if menu8 == 3 then ks3() end
  if menu8 == 4 then ks4() end
  if menu8 == 5 then ks5() end
  if menu8 == 6 then AS()    end
end
function ks1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('56D;10D;34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('56', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function ks2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10D;34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('10', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('30', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function ks3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.09000000358;0.05000000075;2.90000009537::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.09000000358;0.05000000075', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function ks4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.09000000358;0.05000000075;2.90000009537::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.90000009537', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function ks5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('34;17;17;1.29999995232;4.5;5.5;3::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end

function lian3()
menu8 = gg.choice({
  '手持Mini4子弹秒杀❤',
  '手持Mini4装弹五十❤',
  '手持Mini4子弹加速❤',
  '手持Mini4秒换弹    ❤',
  '手持Mini4无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹二十 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then mini1()end
  if menu8 == 2 then mini2() end
  if menu8 == 3 then mini3() end
  if menu8 == 4 then mini4() end
  if menu8 == 5 then AS()    end
end
function mini1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('44D,20D,34,17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('44', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function mini2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('20D,34,17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('20', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function mini3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149;0.05000000075;3.59999990763::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.10000000149;0.05000000075', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function mini4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149;0.05000000075;3.59999990763::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.59999990763', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function mini5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('34;17;17;1.20000004768;2;3.40000009537;25::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(18)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end

function i1()
menu8 = gg.choice({
  ' ❤                  AKM',
  ' ❤                  Scar',
  ' ❤                Groza',
  ' ❤               M416',
  ' ❤             M16A4',
  '返回上一页'},
  nil,'先开秒杀和子弹加速 再开无后和秒换弹\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then tu1()end
  if menu8 == 2 then tu2() end
  if menu8 == 3 then tu3() end
  if menu8 == 4 then tu4()end
  if menu8 == 5 then tu5() end
  if menu8 == 6 then AS()end
end
function tu1()
menu8 = gg.choice({
  '手持AKM子弹秒杀❤',
  '手持AKM装弹五十❤',
  '手持AKM子弹加速❤',
  '手持AKM秒换弹    ❤',
  '手持AKM无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then ak1()end
  if menu8 == 2 then ak2() end
  if menu8 == 3 then ak3() end
  if menu8 == 4 then ak4() end
  if menu8 == 5 then ak5()    end
  if menu8 == 6 then AS()    end
end
function ak1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('44D;30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('44', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function ak2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end

function ak3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149;0.05000000075;3.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.10000000149;0.05000000075', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function ak4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149;0.05000000075;3.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function ak5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36;18;36;1;1.25;2.29999995232;20;-100;0.5;8;-50;1.20000004768::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0,-1)
gg.getResults(18)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end


function tu2()
menu8 = gg.choice({
  '手持Scar子弹秒杀❤',
  '手持Scar装弹五十❤',
  '手持Scar子弹加速❤',
  '手持Scar秒换弹    ❤',
  '手持Scar无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then sc1()end
  if menu8 == 2 then sc2() end
  if menu8 == 3 then sc3() end
  if menu8 == 4 then sc4() end
  if menu8 == 5 then sc5()    end
  if menu8 == 6 then AS()    end
end
function sc1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('41D;30D;28;14::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('41', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function sc2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;28;14::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function sc3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.09600000083;0.0549999997;3.79999995232::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.09600000083;0.0549999997', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function sc4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.09600000083;0.0549999997;3.79999995232::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.79999995232', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function sc5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('28;14;9;1.04999995232;1.60000002384;2.29999995232;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0,-1)
gg.getResults(18)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function tu3()
menu8 = gg.choice({
  '手持Groza子弹秒杀❤',
  '手持Groza装弹五十❤',
  '手持Groza子弹加速❤',
  '手持Groza秒换弹    ❤',
  '手持Groza无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 最后开无后 秒换💣\n🍺无后最后开🍺\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then go1()end
  if menu8 == 2 then go2() end
  if menu8 == 3 then go3() end
  if menu8 == 4 then go4() end
  if menu8 == 5 then go5()    end
  if menu8 == 6 then AS()    end
end
function go1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('48D;30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('48', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function go2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function go3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07999999821;0.050000000;3::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.07999999821;0.050000000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function go4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07999999821;0.050000000;3::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function go5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36;18;36;0.64999997616;1.60000002384;2;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end

function tu4()
menu8 = gg.choice({
  '手持M416子弹秒杀❤',
  '手持M416装弹五十❤',
  '手持M416子弹加速❤',
  '手持M416秒换弹    ❤',
  '手持M416无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then m41()end
  if menu8 == 2 then m42() end
  if menu8 == 3 then m43() end
  if menu8 == 4 then m44() end
  if menu8 == 5 then m45()    end
  if menu8 == 6 then AS()    end
end
function m41()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('41D;30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('41', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function m42()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function m43()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.08600000292;0.05000000025;3.200000047::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.08600000292;0.05000000025', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function m44()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.08600000292;0.05000000025;3.200000047::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.200000047', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function m45()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setRanges(bit32.bxor(gg.REGION_C_HEAP, gg.REGION_ANONYMOUS))
gg.searchNumber('36.0F; 12.0F; 18.0F;1.79999995232F; 2.40000009537F; 40.0F :512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function tu5()
menu8 = gg.choice({
  '手持M16A4子弹秒杀❤',
  '手持M16A4自动连发❤',
  '手持M16A4子弹加速❤',
  '手持M16A4秒换弹    ❤',
  '手持M16A4无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 最后开无后 秒换💣\n🍺无后最后开🍺\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then ma1()end
  if menu8 == 2 then ma2() end
  if menu8 == 3 then ma3() end
  if menu8 == 4 then ma4() end
  if menu8 == 5 then ma5() end
  if menu8 == 6 then AS()    end
end

function ma1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('41D;30D;34;17::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('41', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐开启')
end
function ma2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1;1D;3D;4D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('自动连发⭐成功')
end
function ma3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07500000298;0.04500000179::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function ma4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07500000298;0.04500000179;3.70000004768::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end

function i4()
menu8 = gg.choice({
  ' ❤                     S12K',
  ' ❤                     S686',
  ' ❤                   S1897',
  '返回上一页'},
  nil,'先开秒杀和装弹增加\n再开秒换弹和无后\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then san1()end
  if menu8 == 2 then san2() end
  if menu8 == 3 then san3() end
  if menu8 == 4 then AS() end
end
function san1()
menu8 = gg.choice({
  '手持S12K子弹秒杀  ❤',
  '手持S12K装弹增加  ❤',
  '手持S12K一发十五  ❤',
  '手持S12K子弹聚集  ❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹增加 最后开秒拉 秒换\n无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then sk1()end
  if menu8 == 2 then sk2() end
  if menu8 == 3 then sk3() end
  if menu8 == 4 then sk4() end
  if menu8 == 5 then AS()    end
end
function sk4()
gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_C_HEAP, gg.REGION_ANONYMOUS))
gg.searchNumber('50.0F; 22.0F; 1.79999995232F :512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('S12K子弹不扩散成功')
end

function sk3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('250D;1F;1D;1F;1D;2D;9D::', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('9', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('15', gg.TYPE_DWORD)
gg.toast('S12K一发十五【原9个】')
end
function sk1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.25F;0.05000000075F;3F;20D;5D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('20', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('S12K子弹秒杀')
end
function sk2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.25F;0.05000000075F;3F;20D;5D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('S12K可装数量无限')
end
function san3()
menu8 = gg.choice({
  '手持S1897子弹秒杀❤',
  '手持S1897无拉回弹❤',
  '手持S1897上弹加快❤',
  '手持S1897子弹聚集❤',
  '返回上一页'},
  nil,'💣先开秒杀和装弹增加 最后开秒拉 秒换\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐\n无后最后开💣')
  if menu8 == 1 then s18971()end
  if menu8 == 2 then s18972() end
  if menu8 == 3 then s18973() end
  if menu8 == 4 then s18974() end
  if menu8 == 5 then AS()    end
end
function s18971()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24D;5D;50F;22F;15F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('24', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function s18972()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.60000002384F;0.20000000298;0.6400001955::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('修改⭐成功')
end
function s18973()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.60000002384F;0.40000000596::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('0.25', gg.TYPE_FLOAT)
gg.toast('换弹⭐成功')
end
function s18974()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('55;22;15;1.0299999139;3;5;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function san2()
menu8 = gg.choice({
  '手持S686子弹秒杀❤',
  '手持S686上弹增加❤',
  '手持S686射程变长❤',
  '手持S686秒换弹    ❤',
  '手持S686子弹加速❤',
  '手持S686子弹聚集❤',
  '返回上一页'},
  nil,'💣先开秒杀和 最后开子弹聚集 秒换\n💣无后最后开💣\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then s6861()end
  if menu8 == 2 then s6862() end
  if menu8 == 3 then s6863() end
  if menu8 == 4 then s6864() end
  if menu8 == 5 then s6865() end  
  if menu8 == 6 then s6866() end
  if menu8 == 7 then AS() end
end
function s6861()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24D;2D;50;20::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('24', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function s6862()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNunber('2D;50;20::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('20', gg.TYPE_DWORD)
gg.toast('上弹增加【20】⭐成功')
end
function s6863()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.10000000149;270D;1::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('270', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('射程变大⭐成功')
end
function s6864()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.20000000298;0.5;1.20000004768;0.80000001192::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.5;1.20000004768;0.80000001192', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function s6865()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.20000000298;0.5;1.20000004768;0.80000001192::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.20000000298', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('子弹加速⭐成功')
end
function s6866()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('50;20;15;1.16999995708;3;5;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('子弹聚集⭐成功')
end
function i5()
menu8 = gg.choice({
  ' ❤                          Uzi',
  ' ❤                     Ump9',
  ' ❤          Tommy Gun',
  ' ❤          Kriss Vector',
  '返回上一页'},
  nil,'请使用相应的枪 不要装配件开启\n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐')
  if menu8 == 1 then feng1()end
  if menu8 == 2 then feng2() end
  if menu8 == 3 then feng3() end
  if menu8 == 4 then feng4() end
  if menu8 == 5 then AS() end
end
function feng1()
menu8 = gg.choice({
  '手持Uzi子弹秒杀❤',
  '手持Uzi子弹加速❤',
  '手持Uzi秒换弹    ❤',
  '手持Uzi无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then uz1()end
  if menu8 == 2 then uz2() end
  if menu8 == 3 then uz3() end
  if menu8 == 4 then uz4()    end
  if menu8 == 5 then AS()    end
end
function uz1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.04800000042;0.01999999955;25D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('25', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('9999', gg.TYPE_DWORD)
gg.toast('Uzi子弹秒杀成功')
end
function uz4()
gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_C_HEAP, gg.REGION_ANONYMOUS))
gg.searchNumber('15.0F; 15.0F; 2.0F; 2.5F; 40.0F;0.80000001192F :512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('Uzi无后座成功')
end

function uz3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.04800000042;0.01999999955;3.09999990463', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.09999990463', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('uzi秒换弹成功')
end
function uz2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.04800000042;0.01999999955;3.09999990463', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.04800000042;0.01999999955', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('uzi子弹加速成功')
end
function feng2()
menu8 = gg.choice({
  '手持Ump9子弹秒杀❤',
  '手持Ump9装弹五十❤',
  '手持Ump9子弹加速❤',
  '手持Ump9秒换弹    ❤',
  '手持Ump9无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then um1()end
  if menu8 == 2 then um2() end
  if menu8 == 3 then um3() end
  if menu8 == 4 then um4() end
  if menu8 == 5 then um5()    end
  if menu8 == 6 then AS()    end
end
function um1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('38D;30D;18;9::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('38', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐开启')
end
function um2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;18;9::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('秒杀⭐开启')
end
function um3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.09200000018;0.03999999911;3.09999990463::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.09200000018;0.03999999911', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function um4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.09200000018;0.03999999911;3.09999990463::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.09999990463', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function um5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('18;9;18;0.74000000954;2.5;3;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function feng3()
menu8 = gg.choice({
  '手持Tommy Gun子弹秒杀❤',
  '手持Tommy Gun装弹一百❤',
  '手持Tommy Gun子弹加速❤',
  '手持Tommy Gun秒换弹    ❤',
  '手持Tommy Gun无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then to1()end
  if menu8 == 2 then to2() end
  if menu8 == 3 then to3() end
  if menu8 == 4 then to4() end
  if menu8 == 5 then to5()    end
  if menu8 == 6 then AS()    end
end
function to1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;40D;40;20;8::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWOED, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('99999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function to2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('40D;40;20;8::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('40', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('100', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function to3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.8600000292;0.03999999911;3.40000009537::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.8600000292;0.03999999911', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function to4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.8600000292;0.03999999911;3.40000009537::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3.40000009537', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function to5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('40;20;8;0.87999999523;2.5;3;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function feng4()
menu8 = gg.choice({
  '手持Kriss Vector子弹秒杀❤',
  '手持Kriss Vector装弹五十❤',
  '手持Kriss Vector子弹加速❤',
  '手持Kriss Vector秒换弹    ❤',
  '手持Kriss Vector无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then kr1()end
  if menu8 == 2 then kr2() end
  if menu8 == 3 then kr3() end
  if menu8 == 4 then kr4() end
  if menu8 == 5 then kr5()    end
  if menu8 == 6 then AS()    end
end
function kr1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('33D;13D;40;20;8::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('33', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function kr2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('13D;40;20;8::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('13', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function kr3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.0549999997;0.02999999933;2.20000004768::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.0549999997;0.02999999933', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function kr4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.0549999997;0.02999999933;2.20000004768::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.20000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function kr5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('40;20;8;0.74000000954;2;2.5;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end

function i6()
menu8 = gg.choice({
  ' ❤                     M249',
  ' ❤                     DP-28',
  '返回上一页'},
  nil,'先开秒杀和装弹30\n再开秒换弹和无后')
  if menu8 == 1 then ji1()end
  if menu8 == 2 then ji2() end
  if menu8 == 3 then AS() end
end
function ji1()
menu8 = gg.choice({
  '手持M249子弹秒杀❤',
  '手持M249装弹增加❤',
  '手持M249子弹加速❤',
  '手持M249秒换弹    ❤',
  '手持M249无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then m91()end
  if menu8 == 2 then m92() end
  if menu8 == 3 then m93() end
  if menu8 == 4 then m94() end
  if menu8 == 5 then m95()    end
  if menu8 == 6 then AS()    end
end
function m91()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('45D;100D;28;14::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('45', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function m92()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('100D;28;14::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('100', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('300', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function m93()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07500000298;0.0549999997;8.19999980927::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.07500000298;0.0549999997', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function m94()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07500000298;0.0549999997;8.19999980927::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('8.19999980927', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function m95()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('28;14;9;1.09000003338;2;2.40000009537;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function ji2()
menu8 = gg.choice({
  '手持DP-28子弹秒杀❤',
  '手持DP-28装弹五十❤',
  '手持DP-28子弹加速❤',
  '手持DP-28秒换弹    ❤',
  '手持DP-28无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then dp1()end
  if menu8 == 2 then dp2() end
  if menu8 == 3 then dp3() end
  if menu8 == 4 then dp4() end
  if menu8 == 5 then dp5()    end
  if menu8 == 6 then AS()    end
end
function dp1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('51D;47D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('51', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function dp2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('47D;36;18::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('47', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('66', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function dp3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07500000298;0.05000000075;5.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.07500000298;0.05000000075', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function dp4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.07500000298;0.05000000075;5.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function dp5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('28;14;9;1.09000003338;2;2.40000009537;40::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function i7()
menu8 = gg.choice({
  ' ❤                        P92',
  ' ❤                      P18C',
  ' ❤                    P1911',
  ' ❤                    R1895 ',
  '返回上一页'},
  nil,'请使用相应的枪 不要装配件开启')
  if menu8 == 1 then sq1()end
  if menu8 == 2 then sq2() end
  if menu8 == 3 then sq3() end
  if menu8 == 4 then sq4() end
  if menu8 == 5 then AS() end
end

function sq1()
menu8 = gg.choice({
  '手持P92子弹秒杀❤',
  '手持P92装弹五十❤',
  '手持P92子弹加速❤',
  '手持P92秒换弹    ❤',
  '手持P92无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then p91()end
  if menu8 == 2 then p92() end
  if menu8 == 3 then p93() end
  if menu8 == 4 then p94() end
  if menu8 == 5 then p95()    end
  if menu8 == 6 then AS()    end
end
function p91()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30D;15D;26;13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('30', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function p92()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('15D;26;13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('15', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function p93()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.13500000536;0.05000000075;2.34999990763::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.13500000536;0.05000000075', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function p94()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.13500000536;0.05000000075;2.34999990763::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.34999990763', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function p95()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('26;13;13;0.76999998093;1.7999995232;2;10::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function sq2()
menu8 = gg.choice({
  '手持P18C子弹秒杀❤',
  '手持P18C装弹五十❤',
  '手持P18C子弹加速❤',
  '手持P18C秒换弹    ❤',
  '手持P18C无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then pc1()end
  if menu8 == 2 then pc2() end
  if menu8 == 3 then pc3() end
  if menu8 == 4 then pc4() end
  if menu8 == 5 then pc5()    end
  if menu8 == 6 then AS()    end
end
function pc1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('21D;17D;26;13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('21', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function pc2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('17D;26;13::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('17', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function pc3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.05999999866;0.03999999911;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.05999999866;0.03999999911', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function pc4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.05999999866;0.03999999911;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function pc5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('26;13;13;0.72000002361;2.40000009537;2.5;10::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function sq3()
menu8 = gg.choice({
  '手持P1911子弹秒杀❤',
  '手持P1911装弹五十❤',
  '手持P1911子弹加速❤',
  '手持P1911秒换弹    ❤',
  '手持P1911无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then p191()end
  if menu8 == 2 then p192() end
  if menu8 == 3 then p193() end
  if menu8 == 4 then p194() end
  if menu8 == 5 then p195()    end
  if menu8 == 6 then AS()    end
end
function p191()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36D;7D;24;12::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('36', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function p192()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('7D;24;12::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('7', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function p193()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.1099999994;0.05000000075;2.09999990463::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.1099999994;0.05000000075', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function p194()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.1099999994;0.05000000075;2.09999990463::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.09999990463', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function p195()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24;12;12;0.75;2;2.20000004768;10::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function sq4()
menu8 = gg.choice({
  '手持R1895子弹秒杀❤',
  '手持R1895装弹五十❤',
  '手持R1895子弹加速❤',
  '手持R1895秒换弹    ❤',
  '手持R1895无后座    ❤',
  '返回上一页'},
  nil,'💣先开秒杀和子弹加速 \n⭐特别注意：\n⭐子弹加速和秒换弹只能开一个⭐💣\n🍺无后最后开🍺')
  if menu8 == 1 then r181()end
  if menu8 == 2 then r182() end
  if menu8 == 3 then r183() end
  if menu8 == 4 then r184() end
  if menu8 == 5 then r185()    end
  if menu8 == 6 then AS()    end
end
function r181()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('50D;7D;30;15::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('50', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀⭐成功')
end
function r82()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('7D;30;15::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('7', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('50', gg.TYPE_DWORD)
gg.toast('上弹增加⭐成功')
end
function r183()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.40000000596;0.60000002384;0.89999997616;1.10000002384::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.40000000596', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0.01', gg.TYPE_FLOAT)
gg.toast('加速⭐成功')
end
function r184()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.40000000596;0.60000002384;0.89999997616;1.10000002384::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.60000002384;0.89999997616;1.10000002384', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.1', gg.TYPE_FLOAT)
gg.toast('秒换弹⭐成功')
end
function r185()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30;15;15;0.81999999285;15;20;280;-95;0.94999998808::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('无后⭐成功')
end
function WP()
menu8 = gg.choice({
  '💛投掷类💛',
  '💊药品类💊',
  '返回上一页'},
  nil,'🔱香肠派对多功能脚本')
  if menu8 == 1 then TZ()end
  if menu8 == 2 then YP() end
  if menu8 == 3 then HOME() end
  
end
function TZ()
menu8 = gg.choice({
  '手雷秒杀【距离增加】(时间2秒)❤',
  '烟雾弹秒杀【距离增加】(时间2秒)❤',
  '治疗弹(秒加满血)【正在维修】❤',
  '返回上一页'},
  nil,'💛手雷【烟雾】爆炸秒杀不能炸到房子里的💛')
  if menu8 == 1 then sl()end
  if menu8 == 2 then yw() end
  if menu8 == 3 then zl() end
  if menu8 == 4 then HOME()    end
end

function sl()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('300F;6D;27;10;10;5D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('300', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.toast('手雷秒杀⭐成功')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('6D;27;10;10;5D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('6', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('9999', gg.TYPE_DWORD)
gg.toast('手雷爆炸范围增大⭐成功')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('27;10;10;5D::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('2', gg.TYPE_DWORD)
gg.toast('手雷爆炸时间2秒⭐成功')
end
function yw()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0F;5D;27F;10;10F;3D::::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(40)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.toast('烟雾秒杀⭐成功')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('5D;27F;10;10F;3D::::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('9999', gg.TYPE_DWORD)
gg.toast('烟雾范围增大⭐成功')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('27F;10;10F;3D::::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('3', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('2', gg.TYPE_DWORD)
gg.toast('烟雾爆炸时间2秒⭐成功')
end
function TZ()
menu8 = gg.choice({
  '喝能量饮料(能量条加满)❤',
  '绷带变医疗箱❤',
  '医疗箱秒打❤',
  '返回上一页'},
  nil,'医疗箱秒打药有bug\n开启后不能走否则会一步一打药动作\n也不能换子弹\n紧急情况下使用')
  if menu8 == 1 then nlyl()end
  if menu8 == 2 then bd() end
  if menu8 == 3 then yl() end
  if menu8 == 4 then HOME()    end
end
function nlyl()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('230;0.55000001192;40F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('100', gg.TYPE_FLOAT)
gg.toast('能量条加满')
end
function bd()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10F;75F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('100', gg.TYPE_FLOAT)
gg.toast('绷带变医疗箱')
end
function yl()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('20F;1D;100D;8F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber('8', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('医疗箱秒打，有bug')
end
function jieshu() 
gg.alert('再见')
  print('(=￣ ρ￣=) ..zzZZ')
  os.exit() 
end
cs = '？？？'
while true do
  if gg.isVisible(true) then
    SLBY = 1
    gg.setVisible(false)
  end
  if SLBY == 1 then
    HOME()
  end
end