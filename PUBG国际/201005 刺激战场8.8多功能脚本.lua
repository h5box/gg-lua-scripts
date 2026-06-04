function Main()
menu = gg.choice({
'防封功能区',
'透视功能区',
'上色功能区',
'变态功能区',
'美化功能区',
'推荐功能区',
'退出'},
nil,'我是小妖精，逍遥又自在！')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then Exit() end
XGCK=-1
end

function A()
menu1 = gg.choice({
'过十分钟(出生岛或落地开启)',
'返回上一页'},
nil,'配合防封开启')
if menu1 == 1 then a1() end
if menu1 == 2 then a2() end
if menu1 == 3 then HOME() end
GLWW=-1
end

function B()
menu1 = gg.choice({
'骁龙660处理器透视(大厅)',
'骁龙625处理器透视(大厅)',
'骁龙653处理器透视(大厅)',
'骁龙845处理器透视(大厅)',
'骁龙710处理器透视(大厅)',
'骁龙835处理器完美透视(大厅)',
'骁龙835处理器高清透视(大厅)',
'骁龙435处理器流畅透视(大厅)',
"骁龙660处理器完美透视(大厅)",
'麒麟处理器透视(大厅)',
'联发科处理器手动透视(大厅)',
'联发科处理器通用透视(大厅)',
'骁龙845处理器通用画质透视(大厅)',
'骁龙处理器通用透视(大厅)',
'骁龙处理器完美透视一代(大厅)',
'骁龙处理器完美透视二代(大厅)',
'VIVO·X20·X21·660透视(大厅)',
'透视防闪(出生)',
'返回上一页'},
nil,'请开启对应的处理器透视')
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
if menu1 == 15 then b15() end
if menu1 == 16 then b16() end
if menu1 == 17 then b17() end
if menu1 == 18 then b18() end
if menu1 == 19 then HOME() end
GLWW=-1
end

function C()
menu1 = gg.choice({
'人物黑色(大厅)',
'人物白色(大厅)',
'人物红色(大厅)',
'人物深红(大厅)',
'人物青色(大厅)',
'人物绿色(大厅)',
'人物紫色(大厅)',
'人物蓝色(大厅)',
'人物深蓝(大厅)',
'人物黄色(大厅)',
'人物粉色(大厅)',
'人物百变(大厅)',
'人物蓝血(大厅)',
'人物闪光(大厅)',
'人物百变(骁龙845处理器专用流畅蓝/高清紫/HDR变色)',
'返回上一页'},
nil,'游戏画面设置为流畅开启上色')
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
if menu1 == 13 then c13() end
if menu1 == 14 then c14() end
if menu1 == 15 then c15() end
if menu1 == 16 then HOME() end
GLWW=-1
end

function D()
menu1 = gg.choice({
'左上路飞(持枪)',
'站立路飞(持枪)',
'下蹲路飞(持枪)',
'国服稳定范围',
'脖子天线(落地)',
'魔术子弹(持枪)',
'全局加速(大厅)',
'加速关闭',
'人物光速(落地)',
'光速关闭',
'持枪无后(持枪)',
'持枪防抖(持枪)',
'头部范围(持枪)',
'锁头关闭',
'凌波微步(落地)',
'人物微速(落地)',
'人物踏空(落地)',
'踏空关闭',
'人物翻墙(大厅)',
'全局天线(大厅)',
'子弹追踪(持枪)',
'蹦蹦加速(坐车)',
'吉普加速(坐车)',
'黑夜模式(落地)',
'上帝视角(落地)',
'SK12聚点(持枪)',
'半屏自瞄(大厅)',
'全屏自瞄(大厅)',
'除草除树(大厅)',
'人物蚁人(落地)',
'六倍红点(红点)',
'步枪射速(持枪)',
'三级定位(落地)',
'信号枪定位(落地)',
'自瞄第一步{大厅}',
'自瞄第二步{出生}',
'一键全枪无后坐力(仅限大厅开启)',
'光速打击·单发狙击·十字弩(持枪)',
'光速打击·突击步枪·射手步枪·轻机枪(持枪)',
'光速打击·冲锋枪·散弹枪·手枪(持枪)',
'人物头部变大(落地)',
'人物实体变大(落地)',
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
if menu1 == 34 then d34() end
if menu1 == 35 then d35() end
if menu1 == 36 then d36() end
if menu1 == 37 then d37() end
if menu1 == 38 then d38() end
if menu1 == 39 then d39() end
if menu1 == 40 then d40() end
if menu1 == 41 then d41() end
if menu1 == 42 then d42() end
if menu1 == 43 then HOME() end
GLWW=-1
end

function E()
menu1 = gg.choice({
'AK黑金',
'AK白红',
'SCAR狂怒',
'SCAR黑金',
'SCAR赤橙',
'SCAR白红',
'M416樱花',
'M416黑金',
'M416赤红',
'M416红黄蓝白拼色',
'M416黑黄',
'M416白银-狂怒',
'M416中国红',
'M16黑红',
'M16蓝橙',
'M16黑金',
'M16玫瑰精灵',
'M16白橙',
'M16狂怒',
'UMP9赤橙',
'UMP9银鹰',
'UMP9樱花',
'UZI狂怒',
'98K拼色',
'98K黑金',
'98K黑红黄拼色',
'98K红',
'AWM樱花',
'小黄衣改风衣',
'平底锅美化',
'返回上一页'},
nil,'同件物品请勿开启多个皮肤美化')
if menu1 == 1 then e1() end
if menu1 == 2 then e2() end
if menu1 == 3 then e3() end
if menu1 == 4 then e4() end
if menu1 == 5 then e5() end
if menu1 == 6 then e6() end
if menu1 == 7 then e7() end
if menu1 == 8 then e8() end
if menu1 == 9 then e9() end
if menu1 == 10 then e10() end
if menu1 == 11 then e11() end
if menu1 == 12 then e12() end
if menu1 == 13 then e13() end
if menu1 == 14 then e14() end
if menu1 == 15 then e15() end
if menu1 == 16 then e16() end
if menu1 == 17 then e17() end
if menu1 == 18 then e18() end
if menu1 == 19 then e19() end
if menu1 == 20 then e20() end
if menu1 == 21 then e21() end
if menu1 == 22 then e22() end
if menu1 == 23 then e23() end
if menu1 == 24 then e24() end
if menu1 == 25 then e25() end
if menu1 == 26 then e26() end
if menu1 == 27 then e27() end
if menu1 == 28 then e28() end
if menu1 == 29 then e29() end
if menu1 == 30 then e30() end
if menu1 == 31 then HOME() end
GLWW=-1
end

function F()
menu1 = gg.choice({
'完美透视(大厅)',
'透视防闪(出生)',
'人物粉色(大厅)',
'人物蓝血(大厅)',
'人物踏空(落地)',
'魔术子弹(持枪)',
'持枪无后(持枪)',
'持枪防抖(持枪)',
'左上路飞(持枪)',
'吉普加速(坐车)',
'返回上一页'},
nil,'此专区透视上色为骁龙处理器专用透视·其它处理器请去透视专区开启对应的处理器透视·其它功能全部处理器通用')
if menu1 == 1 then f1() end
if menu1 == 2 then f2() end
if menu1 == 3 then f3() end
if menu1 == 4 then f4() end
if menu1 == 5 then f5() end
if menu1 == 6 then f6() end
if menu1 == 7 then f7() end
if menu1 == 8 then f8() end
if menu1 == 9 then f9() end
if menu1 == 10 then f10() end
if menu1 == 11 then HOME() end
GLWW=-1
end

function a1()
gg.clearResults()
gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("过保护开启成功")
gg.clearResults()
gg.searchNumber("1954047316;1970037078;;", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,037,078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("过十分钟开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

function a2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1954047316;1970037078;;", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,970,037,078", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("过十分钟开启成功")
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
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("稍等")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("835完美透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b7()
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

function b8()
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

function b9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("65,536D;1.8945555e-40F;2.8130226e-40F;5.8013756e-42F;3.7615819e-37F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("256D;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("200,866D; 2.718519e-43F; 3.7615819e-37F;2.0F; -1.0F; 1.0F; -127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("660完美透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b10()
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

function b11()
gg.alert("选择ca内存，冻结间隔改为0，手动修改冻结为0")
gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC, gg.REGION_ANONYMOUS))
gg.searchNumber("10000;268;480;4;0.5::", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("0", gg.TYPE_FLOAT)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.alert("记得冻结间隔改为0，手动修改冻结为0")
gg.toast("脚本已自动退出，请手动修改冻结0")
end

function b12()
gg.clearResults()
gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-1.0285578e-38;3.7615819e-37;2;-1;1;-127::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(12)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("联发科透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2.0;1.6623075e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("❤")
gg.clearResults()
gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2.0;1.6623054e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("♥")
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3312335e-43F;1.391256e-19F;2.0F;1.6623108e-19F;9.2194229e-41F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912537e-19F;3.7615819e-37F;2.0F;-1.0F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.4028356e-29F;2.25000452995F;2.0F;1.6623054e-19F;7.1054282e-15F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("845通用画质透视开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("845完美透视开启成功")
end

function b14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("65,536D;1.8945555e-40F;2.8130226e-40F;5.8013756e-42F;3.7615819e-37F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("256D;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("130", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("200,866D; 2.718519e-43F; 3.7615819e-37F;2.0F; -1.0F; 1.0F; -127.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("\n杨夏娱乐资料分享:开启成功")
end

function b15()
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

function b16()
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

function b17()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7961074e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("第一步完毕")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0; 4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("第二步完毕")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7777102e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("第三步完毕")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7961074e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("第四步完毕")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("第五步完毕")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0; 4.7777102e21;4.7777146e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("VIVO·X20·X21·660透视开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function b18()
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
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物深色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8200;1194380042;196615;196617;262151;393219;69685;69689::404", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("10", gg.TYPE_DWORD)
gg.toast("人物青色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("69,778;1,669,332,992;11;536,887,297::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("69778;11", gg.TYPE_DWORD, false)
gg.getResults(4)
gg.editAll("32777", gg.TYPE_DWORD)
gg.toast("人物绿色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2057", gg.TYPE_DWORD)
gg.toast("人物紫色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-1.4693707e-39F;1;2;3.2737415e-40F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物蓝色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-2,146,959,358;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6666", gg.TYPE_DWORD)
gg.toast("人物深蓝开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c10()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("256;8200;13::150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("人物黄色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c11()
gg.clearResults() 
gg.setRanges(131072)
gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
gg.toast("人物粉色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c12()
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

function c13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("444", gg.TYPE_FLOAT)
gg.toast("人物蓝血开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c14()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.50048899651;2.814536e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.50048899651", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("4", gg.TYPE_FLOAT)
gg.toast("人物闪光开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function c15()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("256;8200;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("10", gg.TYPE_DWORD)
gg.toast("人物百变开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
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
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("站立路飞开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d3()
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

function d4()
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

function d5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.77570343018;890.77570343018;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(10)
 gg.editAll("150", gg.TYPE_FLOAT)
 gg.toast("新版范围开启成功")
end

function d6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.15017700195;15:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("40%")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("80%")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("魔术子弹开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d7()
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

function d8()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10;0.00999999978::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("10.90734863281", gg.TYPE_FLOAT)
gg.toast("全局加速关闭成功")
end

function d9()
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

function d10()
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

function d11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("176293393;0.65F~0.9F;8F;9.5F;15F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("176293393", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("无后坐力开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d12()
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

function d13()
gg.clearResults()
gg.searchNumber("23;30.5", gg.TYPE_FLOAT)
gg.getResults(10)
gg.editAll("580", gg.TYPE_FLOAT)
gg.toast("魔术子弹开启成功")
end

function d14()
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

function d15()
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

function d16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.0F;7.0064923e-45F;1.0F;100.0F;1.0F;2,500,000,000.0F;0.10000000149F;88.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("3", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("479.5;1.0;3,600,000,000.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("479.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("人物微速开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d17()
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

function d18()
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

function d19()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("人物翻墙开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d20()
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

function d21()
gg.setRanges(32)
gg.searchNumber("23;25;30.5", 16, false, 536870912, 0, -1)
gg.searchNumber("23;30.5", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("699", 16)
gg.toast("子弹追踪开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d22()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;5;2;0.5;0.01:: ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("50;5;2;0.5;0.01:: ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-0.23", gg.TYPE_FLOAT)
gg.toast("蹦蹦加速开启成功")
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
gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1300", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("半屏自瞄开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d28()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("30;30;0.3;0.3;80;25;220::", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("0.03", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("36;1065353216;50528513;1203982336:", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("1065353216", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("1,090,519,040", gg.TYPE_DWORD | L0_0)
gg.toast("全屏自瞄开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d29()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-7.584045e27;-8.0110592e-11;9.9999999e-9;-8.7954148e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-7.584045e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("除草除树开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d30()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false)
gg.getResults(50)
gg.editAll("0.6", gg.TYPE_FLOAT)
gg.toast("人物蚁人开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d31()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("60;55;1.9618179e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("400", gg.TYPE_FLOAT)
gg.toast("六倍红点开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d32()
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

function d33()
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

function d34()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.7576~0.7579",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.7576~0.7579",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("信号枪定位开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d35()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('30;30;0.3;0.3;80;25;220::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('0.03', gg.TYPE_FLOAT)
gg.toast("自瞄第一步开启成功")
end

function d36()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('36;1065353216;50528513;1203982336:', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1065353216', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('1,090,519,040', gg.TYPE_DWORD)
gg.toast("自瞄第二步开启成功")
end

function d37()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("8.0814659e-28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8.0814659e-28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-8.0814659e-28", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3.8126822e-21;8.4988737e-21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.8126822e-21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-3.8126822e-21", gg.TYPE_FLOAT)
gg.toast("一键全枪无后开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d38()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("16000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("16000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("十字弩光速打击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("79000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("79000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("M24子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("76000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("76000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("98K子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("91000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("91000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("AWM子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("76000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("76000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("Win94子弹开启成功")
end

function d39()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("80000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("80000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("SKS光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("68000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("68000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("M762光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("94500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("94500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("QBU光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("99000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("99000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("Mini14光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("84000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("84000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("SLR光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("85300", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("85300", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("MK14光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("33000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("33000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("VSS光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("88000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("M416/AUG子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("71500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("AKM/GROZA光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("87000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("SCAR-L/QBZ光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("90000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("M16A4光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("91500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("91500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.toast("M249光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("71500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("DP-28光速子弹开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d40()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("40000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("40000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("UMP9光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("91500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("91500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("UZI光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("30000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("30000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("Vector光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("28000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("28000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("汤姆逊光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("37000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("37000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("S686光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("33000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("33000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("短管散弹枪光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("36000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("36000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("S1897光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("35000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("35000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("S12K光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("37500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("37500", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("P18C光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("25000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("25000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("P1911/R1895光速子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("38000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("38000", gg.TYPE_FLOAT | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT | L0_0)
gg.clearResults()
gg.toast("P92光速子弹开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d41()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287;87.27782440186;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("3", gg.TYPE_FLOAT)
gg.toast("头部变大开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function d42()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9990)
gg.editAll("2.2", gg.TYPE_FLOAT)
gg.toast("实体变大开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101001003", gg.TYPE_DWORD | L0_0)
gg.toast("AK黑金开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100100;101001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101001004", gg.TYPE_DWORD | L0_0)
gg.toast("AK白红开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101003001", gg.TYPE_DWORD | L0_0)
gg.toast("SC白银(狂怒)开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101003002", gg.TYPE_DWORD | L0_0)
gg.toast("SC黑金开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101003003", gg.TYPE_DWORD | L0_0)
gg.toast("SC赤橙开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
  
function e6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100300;101003", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100300", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101003004", gg.TYPE_DWORD | L0_0)
gg.toast("SC白红开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101004001", gg.TYPE_DWORD | L0_0)
gg.toast("M416樱花开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101004002", gg.TYPE_DWORD | L0_0)
gg.toast("M416黑金开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101004003", gg.TYPE_DWORD | L0_0)
gg.toast("M4赤红开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101004004", gg.TYPE_DWORD | L0_0)
gg.toast("M4拼色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101004005", gg.TYPE_DWORD | L0_0)
gg.toast("M4黑黄开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101004006", gg.TYPE_DWORD | L0_0)
gg.toast("M4狂怒开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100400;101004", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(5)
gg.editAll("101004007", gg.TYPE_DWORD | L0_0)
gg.toast("M4中国红开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101002001", gg.TYPE_DWORD | L0_0)
gg.toast("M16黑红开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101002002", gg.TYPE_DWORD | L0_0)
gg.toast("M16蓝橙开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101002003", gg.TYPE_DWORD | L0_0)
gg.toast("M16黑金开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e17()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101002004", gg.TYPE_DWORD | L0_0)
gg.toast("M16玫瑰精灵开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e18()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100200;101002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101002005", gg.TYPE_DWORD | L0_0)
gg.toast("M16白橙开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e19()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10100500;101002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10100200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("101002006", gg.TYPE_DWORD | L0_0)
gg.toast("M16狂怒开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e20()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("102002001", gg.TYPE_DWORD | L0_0)
gg.toast("UP9赤橙开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e21()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("102002002", gg.TYPE_DWORD | L0_0)
gg.toast("UP9黑鹰开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e22()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10200200;102002", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10200200", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("102002003", gg.TYPE_DWORD | L0_0)
gg.toast("UP9樱花开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e23()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10200100;102001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10200100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("102001003", gg.TYPE_DWORD | L0_0)
gg.toast("UZI狂怒开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e24()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("103001001", gg.TYPE_DWORD | L0_0)
gg.toast("98K拼色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e25()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("103001002", gg.TYPE_DWORD | L0_0)
gg.toast("98K黑金开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e26()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("103001003", gg.TYPE_DWORD | L0_0)
gg.toast("98K黑红黄拼色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e27()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10300100;103001", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10300100", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("103001005", gg.TYPE_DWORD | L0_0)
gg.toast("98K红成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e28()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10300300;103003", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10300300", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("103003001", gg.TYPE_DWORD | L0_0)
gg.toast("AWM樱花开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function e29()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("100;403017;4;1", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("403017", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(10)
gg.editAll("403188", gg.TYPE_DWORD | L0_0)
gg.toast("小黄衣改风衣开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
 
function e30()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | L0_0)
gg.searchNumber("10800400;108004::30", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.searchNumber("10800400", gg.TYPE_DWORD | L0_0, false, gg.SIGN_EQUAL | L0_0, 0, -1)
gg.getResults(99)
gg.editAll("108004004", gg.TYPE_DWORD | L0_0)
gg.toast("平底锅美化开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f1()
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

function f2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("透视防闪开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f3()
gg.clearResults() 
gg.setRanges(131072)
gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
gg.toast("人物粉色开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("444", gg.TYPE_FLOAT)
gg.toast("人物蓝血开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("人物踏空开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.15017700195;15:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("40%")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("80%")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("130", gg.TYPE_FLOAT)
gg.toast("魔术子弹开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("176293393;0.65F~0.9F;8F;9.5F;15F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("176293393", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("无后坐力开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f8()
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

function f9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('18.38614845276;0.53446006775;-3.4266242981', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll('200', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("左上路飞开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function f10()
gg.setRanges(32)
gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.74509805441", 16, false, 536870912, 0, -1)
gg.getResults(9999)
gg.editAll("88888", 16)
gg.toast("吉普加速开启成功")
gg.toast(os.date("当前开启时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end

function Exit()
print("小妖怪")
os.exit()
end

function HOME()
lw=1
Main()
end

cs = "妖精"
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