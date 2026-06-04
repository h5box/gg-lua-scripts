function Main()
menu = gg.choice({
'文明重启脚本',
'垃圾QQ小冰',
'退出脚本'},
nil,'QQ小冰你妈死了')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'人物踏空',
'关闭踏空',
'全枪无后',
'人物天线',
'关闭天线',
'贴墙透视',
'透视恢复',
'中距离透视',
'透视恢复',
'蹲下高挑',
'蹲下高挑2',
'关闭高挑',
'人物上色（联发科好像不管）',
'',
'细天线(´▽`ʃƪ)',
'返回上一页'},
nil,'天线隐藏23不隐藏4垃圾QQ小冰还特么隐藏4小学生就不要出来逼逼了')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'远程放炸弹',
'人物穿墙',
'水下行走',
'微加速',
'穿墙地基',
'穿墙恢复',
'遁地',
'关闭遁地',
'人物天线3',
'上色2',
'浮空建筑',
'蹲下加速',
'蹲下恢复',
'定怪',
'垃圾qq小冰SB玩意不学习出来逼逼什么你妈死了?',
'返回上一页'},
nil,'此脚本针对qq小冰 无二改傻逼才说二改缺脑子的小学生')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then b15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function a1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("踏空开启成功")
end



function a2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end

function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("SMG冲锋枪无后座开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.30000001192;0.20000000298;25.0;65.0;238.0;625.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3;0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("FAMAS改装枪无后开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("480;0.20000000298;1;0.60000002384;526::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.20000000298;1;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("ak无后开启成功")
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.0;2.0;-2.9687729e21;-1.5474e26;-3.96605e21;-4.57487e22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("3",gg.TYPE_FLOAT)
gg.toast("🇨🇳天线开启成功")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3;2.0;-2.9687729e21;-1.5474e26;-3.96605e21;-4.57487e22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("天线关闭成功")
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("贴墙透视成功")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-40;80;-360;360;56;131072E;8;10::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0.2",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("30",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
end



function a9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-40;80;-360;360;56;131072E;8;30::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0.2",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a10()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0;1.5;0;0.73000001907;0;0.41999998689;0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("50",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0;1.5;0;0.73000001907;0;0.41999998689;0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("50",gg.TYPE_FLOAT)
gg.toast("高挑开启成功")
end



function a12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0;1.5;0;0.73000001907;0;0.41999998689;0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("50", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1.5",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function a13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2;-1;1;0.00001;1.0e-7", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.16947640479;3.6013371e-43", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.16947640479", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a15()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-2.4886959e-27;0;0;12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启…………成功")
end


function b2()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 8
          }
        })
      end
    end
  end
  gg.toast("穿墙已开启")
  gg.clearResults()



end
function b3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;-999F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("水下行走已关闭")
  gg.clearResults()
end
function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7.555", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6.3", gg.TYPE_FLOAT)
  gg.toast("微加速已关闭")
end
function b5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 8
          }
        })
      end
    end
  end
  gg.toast("穿墙修改成功")
  gg.clearResults()
end
function b6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 1.0E32
          }
        })
      end
    end
  end
  gg.toast("穿墙恢复成功")
  gg.clearResults()
end
function b4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 1.6
          }
        })
      end
    end
  end
  gg.toast("遁地成功")
  gg.clearResults()
end
function b7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("16,256W;1.6F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 1.03
          }
        })
      end
    end
  end
  gg.toast("恢复成功")
  gg.clearResults()
end
function b8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.16947640479;3.6013371e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启完成")
  gg.clearResults()
end
function b9()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("2;-1;1;0.00001::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("上色开启完成")
  gg.clearResults()
end
function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.1000000e-41~9.3000000e-41;0.5;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9.1000000e-41~9.3000000e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  local t = gg.getResults(1)
  do
    do
      for _FORV_4_, _FORV_5_ in ipairs(t) do
        t[_FORV_4_].value = "2.3693561e-36"
        t[_FORV_4_].freeze = true
      end
    end
  end
  gg.addListItems(t)
  gg.toast("开启成功")
end
function b11()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.05000000075F;5.0F;3.40000009537F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5.0F;3.40000009537F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9", gg.TYPE_FLOAT)
  gg.toast("加速成功")
  gg.clearResults()
end
function b12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.05000000075F;5.0F;3.40000009537F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5.0F;3.40000009537F::", gg.TYPE_FLOAT)
  gg.toast("关闭加速")
  gg.clearResults()
end
function b13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18D;272D;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("完毕")
  gg.clearResults()
end
function b14()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1,073,741,824D;1,120,403,456D;3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 6.734198E-41
          }
        })
      end
    end
  end
  gg.toast("修改成功")
  gg.clearResults()
end
function b15()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 8
          }
        })
      end
    end
  end
  gg.toast("穿墙已开启")
  gg.clearResults()
end
function b14()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("10.55", gg.TYPE_FLOAT)
  gg.toast("加速速已开启")
end
function b15()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.0;14.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6.3", gg.TYPE_FLOAT)
  gg.toast("加速速已关闭")
end
function Exit()
  print("SBqq小冰")
  os.exit()
end
function HOME()
  lw = 1
  Main()
end


function Exit()
print("退出成功")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '你妈死了小冰'
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










function Main()
menu = gg.choice({
'主功能名称1',
'主功能名称2',
'退出脚本'},
nil,'这里可以填QQ号')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'副功能名称1',
'副功能名称2',
'副功能名称3',
'副功能名称4',
'副功能名称5',
'副功能名称6',
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then b15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function a1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a10()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a15()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b10()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b15()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '这里可以填QQ'
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










