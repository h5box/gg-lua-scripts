function Main()
menu1 = gg.multiChoice({
'无后',
'天线',
'范围',
'自瞄',
'加速',
'退出'},
nil,'国际专区')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then os.exit() end
end
GLWW=-1
end



function a1()
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
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.3599998951', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0', gg.TYPE_FLOAT)
  gg.toast('聚点✔️')
gg.toast("开启成功")
end



function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('88.50576019287F;87.27782440186F;-100.91194152832F;1F::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('88.50576019287F;87.27782440186F;1F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll('1.96875;1.96875;999;1.96875;1.96875;999', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('天线✔️')
gg.toast("开启成功")
end



function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('9.201618;30.5;25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('2000000', gg.TYPE_FLOAT)
  gg.toast('范围1✔️')
  gg.clearResults()
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
gg.toast("开启成功")
end



function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.5;1;200::55', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll('9999999999', gg.TYPE_FLOAT)
  gg.toast('近战自瞄✔️')
gg.toast("开启成功")
end



function a5()
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
  gg.editAll('20.0', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('全局不拉回微加速✔️')
gg.toast("开启成功")
end

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




--[[Welcome to Dluae]]