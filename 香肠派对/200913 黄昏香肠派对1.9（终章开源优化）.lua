gg.alert('💝作者：\n沄汐\n\n🐮🍺黄昏稳如狗封号只能说你丑🐮🍺\n🎩反馈群908032602🎩')
gg.alert('🐮🍺新增功能:更新ui，更好地方便使用🐮🍺')
gg.alert('🐮🍺使用说明：\n对游戏隐藏234，路傍没有，保护3','【黄昏牛逼】')
gg.alert('👉自调说明👉   【开启时】调小一点，调大可能自杀')
wuxin=gg.alert('🍺🍺温馨提示：\n反馈群908032602\n 包更新\n沄汐制作','进入脚本','复制群号','复制作者QQ')
 if wuxin == 2 then gg.copyText('908032602')
 end
 if wuxin == 3 then gg.copyText('2806899277')
 end

 jiaqun = gg.alert('进反馈群好不好🌝？','好🌝','不好🌚')
 if jiaqun == 1 then 
 gg.alert("💝欢迎使用黄昏1.9脚本🌚🌝💝\n☕恭喜你进入本脚本🌚🌝☕\n💣进反馈包更🌚🌝💣", "进入并复制作者反馈群")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
 
 end
 if jiaqun == 2 then
 print('不要？黄昏伤心了(๑•॒̀ ູ॒•́๑)啦啦啦')
 os.exit()
 end

function Main()
menu = gg.choice({
'稳定功能',
'变态功能',
'美化功能',
'秒龙功能',
'自调功能',
'退出脚本'},
nil,'黄昏反馈群908032602，稳定奔放')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
gg.alert("🐮🍺本功能区稳定奔放，透色天线稳定上巅峰", "进入并复制作者反馈群🐮🍺")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
menu1 = gg.multiChoice({
'人物天线',
'稳定透视',
'稳定上色',
'm4秒龙',
'自调范围',
'站立遁地',
'物品透视',
'天空黑色',
'返回上一页'},
nil,'保证版专属优化功能，稳定奔放')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function B()
gg.alert("🐮🍺本功能区可能会封号，请谨慎使用", "进入并复制作者反馈群🐮🍺")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
menu1 = gg.multiChoice({
'全身范围',
'锁头范围',
'火球范围和弓',
'钩子变长',
'圣剑一套',
'爬墙爬树',
'S1897无间隔',
'子弹穿墙',
'返回上一页'},
nil,'保证版专属优化功能，稳定奔放')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function C()
gg.alert("🐮🍺本功能区做为美化区，可以进反馈群投稿美化哦🐮🍺", "进入并复制作者反馈群")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
menu1 = gg.multiChoice({
'枪械美化',
'人物美化',
'龙骑士一套',
'敖丙一套',
'女仆套装',
'唐僧套装',
'飞高高改回旋手里剑',
'飞高高改未来战车',
'返回上一页'},
nil,'保证版专属优化功能，稳定奔放')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function D()
gg.alert("🐮🍺本功能区稳定奔放，配合透色天线稳定上巅峰", "进入并复制作者反馈群🐮🍺")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
menu1 = gg.multiChoice({
'全枪秒龙',
'一键关闭',
'返回上一页'},
nil,'不能带扩容弹夹开此功能（保证版专属功能）')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end



function E()
gg.alert("🐮🍺本功能区调大了可能会封号，请谨慎使用", "进入并复制作者反馈群🐮🍺")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
menu1 = gg.multiChoice({
'自调上路飞',
'自调左探头',
'自调范围1',
'自调小手雷',
'自调大手雷',
'返回上一页'},
nil,'保证版专属功能，稳定奔放')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end



function e1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.34999999404;0.2;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "30"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调上路飞开启成功")
  gg.clearResults()
end



function e2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "-10"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调左探头开启成功")
  gg.clearResults()
end



function e3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("0;0;0;1~30;1~30;1~30;1~30;0;0;0;1::41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1~30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "2.5"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("人物范围开启成功  大厅恢复  1")
  gg.clearResults()
end



function e4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6;300;28;9;10;1;5;30;0.1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "80"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调小手雷开启成功")
  gg.clearResults()
end



function e5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9;300;3;0.5;0;28::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "80"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调大手雷开启成功")
  gg.clearResults()
end



function d1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,090,686,812;41;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("m4秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,080,452,710;46;30;1;65,793::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("46",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("ak秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,081,291,571;41;30;1;65,793;1;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("ScarQBZ秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,075,419,546;38;30;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("38",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("UMP9秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,073,741,824;25;25;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("UZI秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,080,452,710;43;30;65,793;3::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("43",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("ak12秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,076,258,406;40;30;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("汤姆逊秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,080,452,710;44;20;1;1;1;1;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("44",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("迷你14秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,085,276,160;51;47;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("51",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("大盘鸡秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,070,386,381;36;7;1;1;1;7::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("36",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("p1911秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,073,741,824;33;13;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("维克托秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,065,353,216;30;100;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("加特林秒车，秒龙开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,079,613,850;48;30;1;65,793;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("48",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("狗杂秒车，秒龙开启成功")
gg.clearResults()
end



function d2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,090,686,812;999;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("41", gg.TYPE_DWORD)
gg.toast("m4秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,080,452,710;999;30;1;65,793::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("46", gg.TYPE_DWORD)
gg.toast("ak秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,081,291,571;999;30;1;65,793;1;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("41", gg.TYPE_DWORD)
gg.toast("ScarQBZ秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,075,419,546;999;30;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("38", gg.TYPE_DWORD)
gg.toast("UMP9秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,073,741,824;999;25;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)--设置修改前2个代码
gg.editAll("25", gg.TYPE_DWORD)
gg.toast("UZI秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,080,452,710;999;30;65,793;3::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("43", gg.TYPE_DWORD)
gg.toast("ak12秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,076,258,406;999;30;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("40", gg.TYPE_DWORD)
gg.toast("汤姆逊秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,080,452,710;999;20;1;1;1;1;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("44", gg.TYPE_DWORD)
gg.toast("迷你14秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,085,276,160;999;47;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("51", gg.TYPE_DWORD)
gg.toast("大盘鸡秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,070,386,381;999;7;1;1;1;7::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("36", gg.TYPE_DWORD)
gg.toast("p1911秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,073,741,824;999;13;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("33", gg.TYPE_DWORD)
gg.toast("维克托秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,065,353,216;999;100;1;257::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("30", gg.TYPE_DWORD)
gg.toast("加特林秒车，秒龙关闭成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,079,613,850;999;30;1;65,793;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("48", gg.TYPE_DWORD)
gg.toast("狗杂秒车，秒龙关闭成功")
gg.clearResults()
end



function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.47506189346", 16, false, 536870912, 0, -1)
gg.searchNumber("", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("999", 16)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.47506141663", 16, false, 536870912, 0, -1)
gg.searchNumber("", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("-99", 16)
gg.toast("黄昏牛逼开启中...")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.5741032362", 16, false, 536870912, 0, -1)
gg.searchNumber("", 16, false, 536870912, 0, -1)
gg.getResults(999)
gg.editAll("999", 16)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.72448539734~1.72448551655", 16, false, 536870912, 0, -1)
gg.getResults(9999)
gg.editAll("-999", 16)
gg.toast("黄昏牛逼开启完成")
gg.clearResults()
end



function a2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.7470893e-29;112D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("3.7470893e-29",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)--设置修改前9个代码
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("辣鸡透视开启成功")
gg.clearResults()
end
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.25000023842;2.25000119209;112D::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2.25000023842;2.25000119209",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(25)--设置修改前25个代码
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("上色开启成功")
gg.clearResults()
end
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,090,686,812;41;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("41",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前2个代码
gg.editAll("999", gg.TYPE_DWORD)
gg.toast("m4秒车，秒龙开启成功")
gg.clearResults()
end
end



function a5()
gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("0;0;0;1~30;1~30;1~30;1~30;0;0;0;1::41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1~30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  fw = gg.prompt({
    i = "修改倍率"
  }, {i = "2.5"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("人物范围开启成功  大厅恢复  1")
  gg.clearResults()
end



function a6()
gg.alert("随便在哪里都可以下去，开的时候不要乱动,提前准备好胶囊或者在地下生活也可以")
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.07999999821;0.5;1;1.5::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    do
      for _FORV_3_ = 1, n do
        gg.setValues({
          [1] = {
            address = jz[_FORV_3_].address + 54,
            flags = gg.TYPE_FLOAT,
            value = "2.82080483437"
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.95", gg.TYPE_FLOAT)
  gg.toast("站着遁地ok")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("983,055D;3.7470893e-29;3.25;128D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("3.7470893e-29",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)--设置修改前100个代码
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("物品透视开启成功")
gg.clearResults()
end
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;1,194,363,394D;0D;1,280D;5D;-1,597,960,448D;1,812,070,403D;1,342,703,619D;271,618,083D;1,661,044,739D;270,532,611D;1,080,559,619D;196,608D;1,080,035,584D;196,610D;1,080,035,330D;270,794,752D;1,080,560,131D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("5",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("-99", gg.TYPE_DWORD)
gg.toast("天空黑色开启成功")
gg.clearResults()
end
end



function b1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.4",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)--设置修改前300个代码
gg.editAll("4.2", gg.TYPE_FLOAT)
gg.toast("全身范围开启成功")
gg.clearResults()
end
end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)--设置修改前300个代码
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.toast("锁头范围开启成功")
gg.clearResults()
end
end



function b3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6.0F;-40F;2.0F;10.0F::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(30)
gg.editAll("40", 16)
gg.toast("火球范围开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3;100", 16, false, 536870912, 0, -1)
gg.searchNumber("3", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("999", 16)
gg.toast("爆炸弓范围开启")
gg.clearResults()
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1059145646;1109393408:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1109393408",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)--设置修改前10个代码
gg.editAll("2139095040", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
end



function b5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.searchNumber("0.77401280403;0.1;0.11190053821;0;0::17", 4, false, 536870912, 0, -1)
gg.searchNumber("0.1;0.11190053821", 4, false, 536870912, 0, -1)
gg.getResults(510)
gg.editAll("-30", 4)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0F;0.40000000596F;999.0F;0.0F:21", 16, false, 536870912, 0, -1)
gg.searchNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("-1.5", 16)
gg.toast("圣剑一套开启成功")
gg.clearResults()
end



function b6()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;0.4999999702;0.5::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("黄昏牛逼开启完成")
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.75;0.60000002384;0.20000000298;0.64200001955", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.75",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("S1897无间隔开启成功")
gg.clearResults()
end
end



function b8()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(40)--设置修改前200个代码
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("子弹穿墙开启成功")
gg.clearResults()
end
end



function c1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('642',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425389',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('867',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425391',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425388',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979834',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234,881,115;-990,415,696;19:41',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('234881250',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979839',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('469762130',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('637534247',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('869',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('617',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979836',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('335544418',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('603979841',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('570425390',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('234881251',gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('2080374793',gg.TYPE_DWORD)
gg.toast("装逼带你飞")
end



function c2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762062",gg.TYPE_DWORD)
gg.toast("头套开启成功")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762095",gg.TYPE_DWORD)
gg.toast("外套开启成功")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762079",gg.TYPE_DWORD)
gg.toast("下装开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762104",gg.TYPE_DWORD)
gg.toast("拳套开启成功")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("469762113",gg.TYPE_DWORD)
gg.toast("鞋子开启成功")
end



function c3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("603979795",gg.TYPE_DWORD)
gg.toast("外套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("603979786",gg.TYPE_DWORD)
gg.toast("下装开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("603979819",gg.TYPE_DWORD)
gg.toast("鞋子开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("603979800",gg.TYPE_DWORD)
gg.toast("拳套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("603979780",gg.TYPE_DWORD)
gg.toast("头套开启成功")
end



function c4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425353",gg.TYPE_DWORD)
gg.toast("头部开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425358",gg.TYPE_DWORD)
gg.toast("脸部开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425368",gg.TYPE_DWORD)
gg.toast("外套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425363",gg.TYPE_DWORD)
gg.toast("上装开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("570425379",gg.TYPE_DWORD)
gg.toast("裤子开启成功")
end



function c5()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("13",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("22",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("79",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("119",gg.TYPE_DWORD)
gg.toast("女仆套成功")
end



function c6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("307",gg.TYPE_DWORD)
gg.toast("外套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("338",gg.TYPE_DWORD)
gg.toast("鞋子开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("331",gg.TYPE_DWORD)
gg.toast("拳套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("297",gg.TYPE_DWORD)
gg.toast("头套开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("304",gg.TYPE_DWORD)
gg.toast("面部开启成功")
end



function c7()
gg.setRanges(4)
Name = "回旋手里剑"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{856, 0},}
SearchWrite(tb1, tb2, dataType)
end



function c8()
gg.setRanges(4)
Name = "未来战车"
local dataType = gg.TYPE_DWORD
local tb1 = {{763, 0}, {0, 4},{0, -4}}
local tb2 = {{234881291, 0},}
SearchWrite(tb1, tb2, dataType)
end



function Exit()
gg.alert('下个功能还没有想好🐮🍺投稿QQ2806899277或加反馈群')
  print('欢迎加入反馈群【908032602】沄汐制作\n二改狗司马\n请到群中反馈脚本问题')
  gg.alert("💝欢迎使用黄昏1.9脚本🌚🌝💝\n☕恭喜你退出本脚本🌚🌝☕\n💣进反馈包更🌚🌝💣", "进入并复制作者反馈群")
gg.copyText("908032602")
gg.toast("复制成功，记得反馈给我哦")
  os.exit() 
end
cs = '黄昏'



function HOME()
lw=1
Main()
end



cs = 'QQ2806899277'
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










