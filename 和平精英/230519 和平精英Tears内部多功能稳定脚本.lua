function Main()
menu = gg.choice({
'防封功能区',
'透视功能区',
'上色功能区',
'变态功能区',
'退出'},
nil,'脚本交流群499063947')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end

function A()
menu1 = gg.choice({
'决赛圈防封（出生岛）',
'返回上一页'},
nil,'群号:脚本交流群499063947')
if menu1 == 1 then a1() end
if menu1 == 2 then HOME() end
GLWW=-1
end

function B()
menu1 = gg.choice({
'660透视(大厅)',
'625透视(大厅)',
'653透视(大厅)',
'845透视(大厅)',
'710透视(大厅)',
'835透视(大厅)',
'435透视(大厅)',
'麒麟透视(大厅)',
'联发科透视第一步(大厅)',
'联发科透视第二步(大厅)',
'通用透视(大厅)',
'完美透视一代(大厅)',
'完美透视二代(大厅)',
'透视防闪(出生)',
'返回上一页'},
nil,'群号:脚本交流群499063947')
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then b4() end
if menu1 == 5 then b5() end
if menu1 == 6 then b6() end
if menu1 == 7 then b7() end
if menu1 == 8 then b8() end
if menu1 == 9 then b9() end
if menu1 == 10 then b10() end
if menu1 == 11 then b11() end
if menu1 == 12 then b12() end
if menu1 == 13 then b13() end
if menu1 == 14 then b14() end
if menu1 == 15 then HOME() end
GLWW=-1
end

function C()
menu1 = gg.choice({
'人物黑色(大厅)',
'人物白色(大厅)',
'人物红色(大厅)',
'人物深红(大厅)',
'人物绿色(大厅)',
'人物紫色(大厅)',
'人物蓝色(大厅)',
'人物深蓝(大厅)',
'人物黄色(大厅)',
'人物粉色(大厅)',
'人物百变(大厅)',
'人物蓝血(大厅)',
'返回上一页'},
nil,'群号:脚本交流群499063947')
if menu1 == 1 then c1() end
if menu1 == 2 then c2() end
if menu1 == 3 then c3() end
if menu1 == 4 then c4() end
if menu1 == 5 then c5() end
if menu1 == 6 then c6() end
if menu1 == 7 then c7() end
if menu1 == 8 then c8() end
if menu1 == 9 then c9() end
if menu1 == 10 then c10() end
if menu1 == 11 then c11() end
if menu1 == 12 then c12() end
if menu1 == 13 then HOME() end
GLWW=-1
end

function D()
menu1 = gg.choice({
'左上路飞(持枪)',
'下蹲路飞(持枪)',
'路飞关闭',
'脖子天线(落地)',
'魔术子弹(持枪)',
'全局加速(大厅)',
'加速关闭',
'人物光速(落地)',
'光速关闭',
'无后坐力(持枪)',
'无后防抖(持枪)',
'人物锁头(持枪)',
'锁头关闭',
'头部范围(大厅)',
'全身范围(大厅)',
'穿墙范围(持枪)',
'凌波微步(落地)',
'人物踏空(落地)',
'踏空关闭',
'人物翻墙(大厅)',
'全局天线(大厅)',
'子弹追踪(持枪)',
'吉普加速(坐车)',
'黑夜模式(落地)',
'上帝视角(落地)',
'SK12聚点(持枪)',
'全屏自瞄(大厅)',
'除草除树(大厅)',
'步枪射速(持枪)',
'三级定位(落地)',
'信号枪定位(落地)',
'自瞄第一步{大厅}',
'自瞄第二步{出生}',
'返回上一页'},
nil,'变态功能请配合防封开启')
if menu1 == 1 then d1() end
if menu1 == 2 then d2() end
if menu1 == 3 then d3() end
if menu1 == 4 then d4() end
if menu1 == 5 then d5() end
if menu1 == 6 then d6() end
if menu1 == 7 then d7() end
if menu1 == 8 then d8() end
if menu1 == 9 then d9() end
if menu1 == 10 then d10() end
if menu1 == 11 then d11() end
if menu1 == 12 then d12() end
if menu1 == 13 then d13() end
if menu1 == 14 then d14() end
if menu1 == 15 then d15() end
if menu1 == 16 then d16() end
if menu1 == 17 then d17() end
if menu1 == 18 then d18() end
if menu1 == 19 then d19() end
if menu1 == 20 then d20() end
if menu1 == 21 then d21() end
if menu1 == 22 then d22() end
if menu1 == 23 then d23() end
if menu1 == 24 then d24() end
if menu1 == 25 then d25() end
if menu1 == 26 then d26() end
if menu1 == 27 then d27() end
if menu1 == 28 then d28() end
if menu1 == 29 then d29() end
if menu1 == 30 then d30() end
if menu1 == 31 then d31() end
if menu1 == 32 then d32() end
if menu1 == 33 then d33() end
if menu1 == 34 then HOME() end
GLWW=-1
end

function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1954047316;1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1954047316;1970037078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
end

function b1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;3.7615819e-37;2.0;0.00999999978::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42;-5.5695588e-40;2.0::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("660透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("625透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end 

function b3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,140D;4.7408166e21;5.6896623e-29;4.7961574e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("200,866D;0.24022650719;0.69314718246;0.00999999978;1;-1;2;-127:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("50,331,648D;0.01799999923;0.29907226562;0.5869140625;0.11401367188;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("266,400D;0.24022650719;0.69314718246;0.00999999978;1;-1;-127;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("50,331,648D;0.04000854492;0.11999511719;-0.02749633789;-0.57177734375;-1;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("4,140D;4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("完美透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end 

function b4()
 gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("已开启25%%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("已开启50%%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("已开启75%%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("845透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b5()
 gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.8146053e21;2.8866748e-43;1.3912556e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("透视正在开启中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.9252857e21;6.488138e-40;4.9252863e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.0761972e-42;4.5920551e-41;-1.7632415e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.0761972e-42;4.5923353e-41;-1.7632457e-38;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.3311276e21;1.3312335e-43;1.391256e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.8146041e21;2.8866748e-43;1.3912537e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1202013e-19;1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("75％")
gg.toast("710透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("4.7408155e21;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("200", gg.TYPE_FLOAT)
gg.toast("30%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("2.25000190735;3.75055122375;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("30%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("3.25000596046;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setVisible(false)
gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("835透视开启成功")
gg.toast(os.date("现在时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b7()
gg.clearResults()
gg.setRanges (gg.REGION_BAD)
gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges (gg.REGION_BAD)
gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges (gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll('120', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("435透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end 

function b8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC) gg.searchNumber("252248832;201851904;5136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("201851904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("629000", gg.TYPE_DWORD)
gg.alert("麒麟第一步透视开启成功")
gg.clearResults() gg.searchNumber("254018304;201851904;5136", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("201851904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("629000", gg.TYPE_DWORD)
gg.alert("麒麟第二步透视开启成功")
gg.clearResults()
gg.searchNumber("3874;201851904;16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("201851904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("629000", gg.TYPE_DWORD)
gg.alert("麒麟第三步透视开启成功")
gg.clearResults()
gg.searchNumber("3846;201851904;16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("201851904", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("629000", gg.TYPE_DWORD)
gg.alert("麒麟透视第四步开启成功")
end 

function b9()
gg.alert("冻结间隔改0，手动修改冻结为0")
gg.clearResults()
gg.setRanges(bit32.bxor( gg.REGION_C_ALLOC, gg.REGION_ANONYMOUS)) 
gg.searchNumber("10000;268;480;4;0.5::", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)  
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("脚本已自动退出，请手动修改冻结0")
os.exit()
end

function b10()
gg.alert("冻结间隔改0，手动修改冻结为0")
gg.clearResults()
gg.setRanges(bit32.bxor( gg.REGION_C_ALLOC, gg.REGION_ANONYMOUS))
gg.searchNumber("0.5F;268F;268F;480F;12000F::", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)  
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("脚本已自动退出，请手动修改冻结0")
os.exit()
end 

function b11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("1.9327361e10;4.8146041e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("121", gg.TYPE_FLOAT)
gg.toast("加载透视30%")
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("1.1202042e-19;3.7615819e-37;2.0;-127::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("121", gg.TYPE_FLOAT)
gg.toast("加载透视60%")
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("-5.5695588e-40;4.814603e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("121", gg.TYPE_FLOAT)
gg.toast("加载透视90%")
gg.setRanges(gg.REGION_BAD)
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("2.718519e-43;1.5414283e-44;3.7615819e-37;2;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("121", gg.TYPE_FLOAT)
gg.toast("通用透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("上身透视修复成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("完美透视一代开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6447121e21;-8.3252823e-40;4.9252852e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-8.3252823e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4444", gg.TYPE_FLOAT)
gg.toast("提示:开启中")
gg.clearResults()
gg.searchNumber("4.9068373e21;-3.5875931e-39;4.8699618e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.5875931e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4444", gg.TYPE_FLOAT)
gg.toast("提示:开启中")
gg.clearResults()
gg.searchNumber("5.0544113e21;-3.4039221e-39;4.8699607e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.4039221e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4444", gg.TYPE_FLOAT)
gg.toast("提示:开启中")
gg.clearResults()
gg.searchNumber("5.6447206e21;-1.0161992e-39;4.9068396e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.0161992e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4444", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("4.7223665e21;-8.3246237e-40;4.8330515e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-8.3246237e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4444", gg.TYPE_FLOAT)
gg.toast("提示:开启成功")
gg.clearResults()
gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("4444", gg.TYPE_FLOAT)
gg.toast("完美透视二代开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("透视防闪开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-10", gg.TYPE_FLOAT)
gg.toast("人物黑色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("15", gg.TYPE_FLOAT)
gg.toast("人物白色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.8189894e-12;3;4.75926e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("400", gg.TYPE_FLOAT)
gg.toast("人物红色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,192D;256D;65,540D;12D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物深红开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("69,778;1,669,332,992;11;536,887,297::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("69778;11", gg.TYPE_DWORD, false)
gg.getResults(4)
gg.editAll("32777", gg.TYPE_DWORD)
gg.toast("人物绿色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("32769;768;-2,134,900,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("32777", gg.TYPE_DWORD)
gg.toast("人物紫色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-1.4693707e-39F;1;2;3.2737415e-40F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物蓝色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-2,146,959,358;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6666", gg.TYPE_DWORD)
gg.toast("人物深蓝开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("256;8200;13::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("人物黄色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c10()
gg.clearResults() 
gg.setRanges(131072)
gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
gg.toast("人物粉色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("671,088,640", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("671,088,640", gg.TYPE_DWORD, false)
gg.searchAddress("3E0", 4294967295)
gg.getResults(10)
gg.editAll("-242", gg.TYPE_DWORD)
gg.toast("人物百变开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("444", gg.TYPE_FLOAT)
gg.toast("人物蓝血开启成功")
end

function d1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('18.38614845276;0.53446006775;-3.4266242981', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('200', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("左上路飞开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,092,081,726;1,003,658,240;923,795,456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("下蹲路飞开启失败")
else
gg.searchNumber("1,092,081,726", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,135,081,726", gg.TYPE_DWORD)
gg.toast("下蹲路飞开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
end

function d3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,135,081,726;1,003,658,240;923,795,456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("下蹲路飞关闭失败")
else
gg.searchNumber("1,135,081,726", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,092,081,726", gg.TYPE_DWORD)
gg.toast("下蹲路飞关闭成功")
end
end

function d4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.13142681122F;0.05440318212F;0.06085279956F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7.13142681122F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("脖子天线开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("12.66705417633F;16;26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(54)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("12.66705417633F;200;26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500", gg.TYPE_FLOAT)
gg.toast("魔术子弹开启成功")
end

function d6()
gg.clearResults()
gg.searchNumber("1;20;30;40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("20", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10.90734863281;0.00999999978::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10.90734863281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("10", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("全局加速开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10;0.00999999978::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("10.90734863281", gg.TYPE_FLOAT)
gg.toast("全局加速关闭成功")
end

function d8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.toast("人物光速开启一半")
gg.clearResults()
gg.searchNumber(" 1.0F;0.6;0.1;0.125F::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_FLOAT)
gg.toast("人物光速开启成功，喝饮料防拉回")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1.5;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("人物光速关闭一半")
gg.clearResults()
gg.searchNumber(" 10.0F;0.6;0.1;0.125F::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("人物光速关闭成功")
end

function d10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("176293393;0.65F~0.9F;8F;9.5F;15F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("176293393", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("无后坐力开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
gg.setVisible(false)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d12()
gg.clearResults()
gg.setRanges (gg.REGION_CODE_APP)
gg.searchNumber("360.0;0.0001;1,478,828,288.0::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("锁头开启失败")
else
gg.searchNumber("0.0001",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("1998",gg.TYPE_FLOAT)
gg.toast("锁头开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
end

function d13()
gg.clearResults()
gg.setRanges (gg.REGION_CODE_APP)
gg.searchNumber("360.0;1998;1,478,828,288.0::",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("锁头关闭失败")
else
gg.searchNumber("1998",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("0.0001",gg.TYPE_FLOAT)
gg.toast("锁头关闭成功")
end
end

function d14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("240", gg.TYPE_FLOAT)
gg.toast("头部范围第一步开启成功")
gg.clearResults()
gg.searchNumber("25.0;23.0;-1.31859207153;9.20161819458;0.00009203507", 16, false, 536870912, 0, -1)
gg.searchNumber("25", 16, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("10000", 16)     
gg.toast("头部范围开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-1000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-1000", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-1000", gg.TYPE_FLOAT)
gg.toast("全身范围开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("穿墙范围开启一半")
gg.clearResults()
gg.searchNumber("90.775703430176;8;27.25;18;16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140", gg.TYPE_FLOAT)
gg.toast("穿墙范围开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d17()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("凌波微步开启一半")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults(100)
gg.searchNumber("0.03E;0.6E;1.0E;0.5E::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100) 
gg.editAll("0", gg.TYPE_DOUBLE) 
gg.toast("凌波微步开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d18()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("人物踏空开启失败")
else
gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("人物踏空开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
end

function d19()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;999;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("人物踏空关闭失败")
else
gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.toast("人物踏空关闭成功")
end
end

function d20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("人物翻墙开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d21()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(7)
gg.editAll("1.96875", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1.96875F;1.96875F;-100.91194152832;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("全局天线开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d22()
gg.setRanges(32)
gg.searchNumber("23;25;30.5", 16, false, 536870912, 0, -1)
gg.searchNumber("23;30.5", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("699", 16)
gg.toast("子弹追踪开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d23()
gg.setRanges(32)
gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.74509805441", 16, false, 536870912, 0, -1)
gg.getResults(9999)
gg.editAll("88888", 16)
gg.toast("吉普加速开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d24()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-90", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("黑夜模式开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒")) 
end

function d25()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("上帝视角开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒")) 
end

function d26()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.2038954e-45;12.0;18.0;3.5;1.1509145e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12.0;18.0;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.39999997616;0.89999997616;2.06999993324;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.89999997616;2.06999993324;4.0;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("SK12聚点开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.39999997616;1.79999995232::16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6.2565734e-40", gg.TYPE_FLOAT)
gg.toast("SK12秒杀开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("35000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000000", gg.TYPE_FLOAT)
gg.toast("SK12瞬击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(35000, gg.TYPE_FLOAT)
gg.searchNumber(35000, gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll(800000, gg.TYPE_FLOAT)
gg.toast("SK12子弹加速开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d27()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("8;16;18",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(54)
gg.editAll("200",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("15;28;200;26;200;200",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("15;26;28",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(54)
gg.editAll("-200",gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20.51941871643;2.04908943176;0.4616317749;16.0;26.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false,gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("98", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("20.51941871643;2.04908943176;0.4616317749;98;26.0::",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("1600",gg.TYPE_FLOAT)
gg.toast("全屏自瞄开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d28()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.584045e27;-8.0110592e-11;9.9999999e-9;-8.7954148e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-7.584045e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("除草除树开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d29()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.02600000292", gg.TYPE_FLOAT)
gg.toast("M4射速开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.02600000083", gg.TYPE_FLOAT)
gg.toast("Scar射速开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.00100000005", gg.TYPE_FLOAT)
gg.toast("AK射速开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d30()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.1689529418945", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.4779739379883;2.8345839977264;3.1967880725861;3.8841888904572;3.1528658866882::208", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.4779739379883", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("003,005,0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.73620933294296", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.toast("三级定位开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d31()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.7576~0.7579",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.7576~0.7579",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("信号枪定位开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d32()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30;30;0.3;0.3;80;25;220::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.03', gg.TYPE_FLOAT)
gg.toast("自瞄第一步开启成功")
end

function d33()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36;1065353216;50528513;1203982336:', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1065353216', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('1,090,519,040', gg.TYPE_DWORD)
gg.toast("自瞄第二步开启成功")
end

function Exit()
print("脚本交流群499063947")
os.exit()
end

function HOME()
lw=1
Main()
end

cs = '群号:696563743'
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