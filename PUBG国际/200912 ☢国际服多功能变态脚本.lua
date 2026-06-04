--圈钱的我只想说社会败类好自为之
gg.toast("脚")
gg.sleep(250)
gg.toast("脚本")
gg.sleep(250)
gg.toast("脚本免")
gg.sleep(250)
gg.toast("脚本免费")
gg.sleep(250)
gg.toast("脚本免费请")
gg.sleep(250)
gg.toast("脚本免费请勿")
gg.sleep(250)
gg.toast("脚本免费请勿盗")
gg.sleep(250)
gg.toast("脚本免费请勿盗卖")
gg.sleep(250)
gg.toast("脚本免费请勿盗卖受")
gg.sleep(250)
gg.toast("脚本免费请勿盗卖受骗")
gg.sleep(250)
gg.toast("脚本免费请勿盗卖受骗❗️")
gg.sleep(450)
HOME = 1


function Main()
  menu = gg.choice({
    '大厅防封',
    '枪械功能',
    '落地功能',
    '英语翻译',
    '退出脚本'},
  2020,'💔最后版本💔')
  if menu == 1 then A() end
  if menu == 2 then B() end
  if menu == 3 then C() end
  if menu == 4 then D() end
  if menu == 5 then Exit() end
  XGCK=-1
end

function A()
  menu1 = gg.multiChoice({
    '大厅防封',
    '老外防封',
    '返回上一页'},
  nil,'️你说开哪个好？\n我全都要❗️')
  if menu1 == nil then else
    if menu1[1] == true then a1() end
    if menu1[2] == true then a2() end
    if menu1[7] == true then HOME() end
  end
  GLWW=-1
end


function a1()
  gg.alert('第三方请换框架解决✔️\n禁网请自行断网解决✔️️️\n闪退自行去看防闪退教程✔️')
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"0"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('"67109377"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
  for i, v in ipairs(t) do
    if v.flags == gg.TYPE_DWORD then
      v.value = '"4451"'
      v.freeze = true
    end
  end
  gg.addListItems(t)
  t = nil
  gg.toast("防封成功✔️")
end

function a2()
  if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.tencent.tmgp.pubgmhd" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "com.vng.pubgmobile" then
    gg.clearResults()
   else
    print("S14")
    --  os.exit()
  end

  gg.alert('第三方请换框架解决✔️\n禁网请自行断网解决✔️️️\n闪退自行去看防闪退教程✔️')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377;12547::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0;0~20;131586::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109377", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1 331 928 324 405 720 525", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("AF8", -1, 32, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1 331 928 328 390 574 080", 32)
  gg.clearResults()
  gg.searchNumber("-1 387 800 265 460 020 720", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("7B8", -1, 32)
  gg.getResults(10)
  gg.editAll("-1 387 800 268 364 578 816", 32)
  gg.clearResults()
  gg.searchNumber("4 827 858 804 535 200 272", 32, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("4 827 858 800 541 171 712", 32)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-486470332;-298841535;-409731072:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-298841535", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("98")
  gg.getResults(551)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.clearResults() gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("550;560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.setRanges(16384)
  gg.clearResults()
  gg.searchNumber("4216233945178116059", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("6C8", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(7243)
  gg.editAll("4216233945183813632", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("h0AF872B922214CB9EC343A38", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("h22214CB9", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("h00009643", gg.TYPE_BYTE)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("300;305", 16)
  gg.clearResults()
  gg.toast("国外制作者@HACK_PUBG_ROOT")
end




function B()
  menu1 = gg.multiChoice({
    '无后防抖',
    '聚点',
    '秒开倍镜',
    '范围1',
    '范围2',
    '近战自瞄',
    '返回上一页'},
  nil,'️建议全选✔️所有功能一局一开，没效果请重新上游戏')
  if menu1 == nil then else
    if menu1[1] == true then b1() end
    if menu1[2] == true then b2() end
    if menu1[3] == true then b3() end
    if menu1[4] == true then b4() end
    if menu1[5] == true then b5() end
    if menu1[6] == true then b6() end
    if menu1[7] == true then HOME() end
  end
  GLWW=-1
end




function b1()
  gg.clearResults()
  gg.searchNumber('0.2~0.3;53;30;1::', gg.TYPE_FLOAT, false)
  gg.searchNumber('0.2~0.3;1::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.toast('防抖✔️')
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("176293393;8F;9.5F;15F::", gg.TYPE_DWORD)
  gg.searchNumber("176293393", gg.TYPE_DWORD)
  gg.getResults(10)
  gg.editAll("176293392", gg.TYPE_DWORD)
  gg.toast("✔️无后✔️")  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("✔️无后✔️")
end

function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.3599998951', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.toast('聚点✔️')
end

function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(55)
  gg.editAll("-9", gg.TYPE_FLOAT)
  gg.toast("秒开倍镜✔️")
end

function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('9.201618;30.5;25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('2000000', gg.TYPE_FLOAT)
  gg.toast('范围1✔️')
  gg.clearResults()
end

function b5()
  gg.setRanges(131108)
  var = gg.getResults(5000)
  gg.clearResults()
  gg.editAll('0', 20)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('-88.66608428955;26:512', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber('26', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(2)
  gg.editAll('-460', gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.searchNumber('-88.73961639404;28:512', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber('28', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(2)
  gg.editAll('-560', gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('9.201618;30.5;25', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber('25;30.5', gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(10)
  gg.editAll('250', gg.POINTER_WRITABLE)
  gg.clearResults()
  gg.toast('范围2✔️')
end

function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.5;1;200::55', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll('9999999999', gg.TYPE_FLOAT)
  gg.toast('近战自瞄✔️')
end










function C()
  menu1 = gg.multiChoice({
    '天线',
    '上帝视角',
    '除草',
    '全局不拉回微加速',
    '天空黑色',
    '吉普加速',
    '除雾',
    '轿车飞天',
    '太空步',
    '穿墙路飞',
    '返回上一页'},
  nil,'好用就给点币吧😭')
  if menu1 == nil then else
    if menu1[1] == true then c1() end
    if menu1[2] == true then c2() end
    if menu1[3] == true then c3() end
    if menu1[4] == true then c4() end
    if menu1[5] == true then c5() end
    if menu1[6] == true then c6() end
    if menu1[7] == true then c7() end
    if menu1[8] == true then c8() end
    if menu1[9] == true then c9() end
    if menu1[10] == true then c10() end
    if menu1[11] == true then HOME() end
  end
  GLWW=-1
end



function c1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('88.50576019287F;87.27782440186F;-100.91194152832F;1F::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('88.50576019287F;87.27782440186F;1F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll('1.96875;1.96875;999;1.96875;1.96875;999', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('天线✔️')
end

function c2()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber('220;178;15 ', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('220', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll('350', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('上帝视角✔️')
end

function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('8.0F;1.20000004768F;0.80000001192F;1.5F;0.80000001192F;1.5F::512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('8.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('除草✔️')
end

function c4()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber('-1,296,744,149,883,614,555', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(787)
  gg.editAll(' -1,296,744,153,870,237,696', gg.TYPE_QWORD)
  gg.clearResults()
  gg.searchNumber('-1,904,987,454,010,553,855', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(532)
  gg.editAll('-1,904,987,454,002,165,247', gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('1;1;1;0.0001;20;0.0005;0.4::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(54)
  gg.editAll('1.08', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('全局不拉回微加速✔️')
end

function c5()
  gg.alert('天空黑色落地一小会儿后开启')
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_ANONYMOUS)
  gg.searchNumber('100.0;403200.0:9', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('100', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll('-99', _G.gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_ANONYMOUS)
  gg.searchNumber('3.4028235e38;1.4210855e-14;3.4028235e38;3.4028235r38;0.05000000075:85', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.05000000075', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('120', _G.gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_ANONYMOUS)
  gg.searchNumber('988,635.5625;988,635.5625;556,708.125;1,127,720.75;3.4028235e38;0.05000000075:25', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.05000000075', _G.gg.TYPE_FLOAT, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('120', _G.gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(_G.gg.REGION_C_ALLOC)
  gg.searchNumber('49;50;1;131;133;55;56;135;140:173', _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('56', _G.gg.TYPE_DWORD, false, _G.gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll('12', _G.gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('天空黑色✔️')
  gg.setRanges(gg.REGION_ANONYMOUS)
end

function c6()
  gg.alert("上车时开启，车速不要超过200不然会被限速(女朋友受不了)")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('0.647058857;0.30000001192;0.94117647409::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll('150.241295', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('吉普加速✔️')
end

function c7()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.3620439e28;-1.3978205e24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) --Saifu
  gg.refineAddress("098",-1,gg.TYPE_FLOAT,gg.SIGN_EQUAL,0,-1)
  gg.getResults(7243)
  gg.editAll("0",gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("除雾✔️")
end

function c8()
  gg.clearResults()
  gg.processResume()
  gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("轿车飞天✔️")
  gg.processResume()
  gg.sleep(1000)
  if revert ~= nil then
    gg.setValues(revert)
  end
  gg.clearResults()
end

function c9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('9999', gg.TYPE_FLOAT)
  gg.toast('太空步✔️')
end

function c10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('4848124999984742400', gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber('-4767057191653227520', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('-4767057191527907328', gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast('穿墙路飞✔️')
end





function D()
  Loikey= gg.prompt({
    '只支持英文转中文❗️\n输入翻译内容：',
  }, {
    [1]="",
  }, {"text", "text"})
  nr=Loikey[1]
  if nr== "" then
    gg.toast(to1)
    print(to1)
    return
   elseif ms=="" then
   elseif ms==ms1 or "1" then
    lx="EN2ZH_CN"
   else
    return
  end
  url='http://m.youdao.com/translate'
  post="inputtext=0"..nr.."&type="..lx
  lw1=gg.makeRequest(url, nil, post).content
  hood = lw1:match("<li>0(.-)</li>")
  gg.alert("翻译⬇\n"..hood)
end

function Exit()
  print("都用完了，不给爷去反馈😡？")
  os.exit()
end



function HOME()
  lw=1
  Main()
end



cs = '脚本为快猫我是个乖挂逼制作'
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    Main()
  end
end










