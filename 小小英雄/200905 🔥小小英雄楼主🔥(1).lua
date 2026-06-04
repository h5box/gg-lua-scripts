function Main()
menu = gg.choice({
'🔥速度以及全屏攻击专🔥',
'🔥视野以及地板美化专🔥',
'🔥英雄技能无CD🔥️',
'🔥穿墙以及恢复专区🔥',
'🔥退出脚本🔥'},
2039,'🇨🔥楼主教你做人🔥🇨')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'🌑原地不动🌑',
'🚲加速3倍🚲',
'🚓🔥五倍加速🔥🚓',
'👍🔥6倍加速🔥👍',
'⚡🔥闪现🔥⚡',
'🚀自己都看不清的加速🚀',
'🇨🇳三倍加速恢复😄',
'😄五倍加速恢复😄',
'😊6倍加速恢复😊',
'😘全屏攻击😘',
'👿原地不动恢复👿',
'😘🌹🔥作者楼主🔥🌹😘',
'😄返回主页😄'},
nil,'❤️楼主叫你分享分享还有记得加QQ群QQ群960575766❤️')
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
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'💟双线视野扩大💟',
'💝三线视野扩大💝',
'💜乱斗视野扩大💜',
'💛双线地板美化「A内存」💛',
'💚生存模式视野扩大💚',
'💙双线地板美化「CA内存」💙',
'💖双线地板美化「Ch内存」💖',
'❤️群QQ960575766❤️',
'❤️群QQ960575766❤️',
'❤️群QQ960575766❤️',
'❤️群QQ960575766❤️',
'❤️群QQ960575766❤️',
'❤️返回主页'},
nil,'💔好兄弟盗卖死妈💔')
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
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'💗空军少校1技能无CD💗',
'💘空军少校2技能无CD💘',
'💓爆破小子技能无CD💓',
'💞爆破小子技能范围100倍💞',
'💕铁甲龙无CD💕',
'💖罗宾汉无CD💖',
'❣️杰洛特无CD❣️',
'💙紫罗兰小蜘蛛一套💙',
'💛克隆体3技能无CD💛',
'💚克隆体二技能无CD💚',
'💜开启吸人💜',
'💟吸人恢复💟',
'❤️返回上一页❤️'},
nil,'💔禁止二改盗卖死你全家💔')
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
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'👬开启穿墙功能👬',
'👭恢复穿墙功能👭',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😂禁止盗卖谢谢😂',
'😒返回上一页😒'},
nil,'😂禁止盗卖谢谢😂')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end



function a1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;1.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00000000000000000000000000001", gg.TYPE_FLOAT)
	 gg.toast("28个0：🇨原地不动开启成功🇨")
	 gg.clearResults()
end



function a2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;1.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("🇦移速3倍开启成功🇬")
	 gg.clearResults()
end



function a3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;1.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("🇮移速5倍开启成功🇦")
	 gg.clearResults()
end



function a4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;1.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("🇧移速6倍开启成功🇧")
	 gg.clearResults()
end



function a5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;1.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("🇪好兄弟，你可以闪现了🇰")
	 gg.clearResults()
end



function a6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;1.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("好兄弟，🇵开启成功你成功在速度的海洋迷失了自我🇦")
	 gg.clearResults()
end



function a7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;3.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("🇦移速三倍恢复成功🇰")
	 gg.clearResults()
end



function a8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;5.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("🇧5倍移速恢复成功🇧")
	 gg.clearResults()
end



function a9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;6.0F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("🇨6倍移速恢复成功🇪")
	 gg.clearResults()
end



function a10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1F;0.00999999978F;1.3032076e-43F;7.3988559e-43F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.11", gg.TYPE_FLOAT)
	 gg.toast("🇿全屏开启成功，好兄弟，给予对面最猛烈的炮火吧🇬")
	 gg.clearResults()
end



function a11()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.17709071e-43F;0.0F;0.00000000000000000000000000001F;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00000000000000000000000000001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("好兄弟，🇺你终于不是木头人了🇺")
	 gg.clearResults()
end



function a12()

gg.toast("开启成功")
end



function b1()
     gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1F;0.00999999978F;1.3032076e-43F;7.3988559e-43F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.12", gg.TYPE_FLOAT)
	 gg.toast("🇪好兄弟，你好像解锁了千里眼功能🇪")
	 gg.clearResults()
end



function b2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7.14999961853;0;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7.14999961853", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_FLOAT)
	 gg.toast("🇪好兄弟，你看到了什么？🇪")
	 gg.clearResults()
end



function b3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;11;4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("22", gg.TYPE_FLOAT)
	 gg.toast("🇨这到底是穷人靠变异还是富人靠科技呢🇦")
	 gg.clearResults()
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('15',gg.TYPE_FLOAT)
gg.toast("🇦美化测试开启🇪")
gg.clearResults()
end



function b5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;11;4;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("22", gg.TYPE_FLOAT)
	 gg.toast("🇪在生存里拥有超人般的视力🇪")
	 gg.clearResults()
end



function b6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('15',gg.TYPE_FLOAT)
gg.toast("🇬美化测试开启🇬")
gg.clearResults()
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('15',gg.TYPE_FLOAT)
gg.toast("🇦美化测试开启🇦")
gg.clearResults()
end



function b8()

gg.toast("🇦开启成功🇪")
end



function b9()

gg.toast("🇪开启成功🇪")
end



function b10()

gg.toast("🇧开启成功🇮")
end



function b11()

gg.toast("🇰开启成功🇬")
end



function b12()

gg.toast("🇬开启成功🇬")
end



function c1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1302;1;175;7F;1", 4, false, 536870912, 0, -1)
gg.searchNumber("7F", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 4)
gg.toast("🇬开启成功🇬")
end



function c2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1310;1;150;6F;1", 4, false, 536870912, 0, -1)
gg.searchNumber("6F", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 4)
gg.toast("🇦开启成功🇰")
end



function c3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1091;1;250;1,092,616,192::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,092,616,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("🇵修改成功🇪")
	 gg.clearResults()
end



function c4()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6.50000047684;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.50000047684", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("🇿修改成功🇻")
	 gg.clearResults()
end



function c5()
gg.setRanges(32)
gg.searchNumber("1.4012985e-45;2.1019477e-43;6.0;1.4012985e-45;-8.0696435e-32::", 16, false, 536870912, 0, -1)
gg.searchNumber("6", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.toast("🇭开启成功🇬")
end



function c6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1041;1;375;1", 4, false, 536870912, 0, -1)
gg.searchNumber("1041", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 4)
gg.toast("🇦开启成功🇦")
end



function c7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.4012985e-45;5.2548692e-43;15.0;1.4012985e-45;-7.01462e-8::", 16, false, 536870912, 0, -1)
gg.searchNumber("15", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.toast("🇮开启成功🇹")
end



function c8()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,252D;1D;300D;12.0F:13", 16, false, 536870912, 0, -1)
gg.searchNumber("12", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.toast("🇬紫罗兰无冷却变身开启成功🇬")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,251D;1D;200D;8.0F:13", 16, false, 536870912, 0, -1)
gg.searchNumber("8", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.toast("🇪紫罗兰手榴弹开启成功🇬")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,254D;1D;150D;6.0F:13", 16, false, 536870912, 0, -1)
gg.searchNumber("6", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("16", 16)
gg.toast("🇦紫罗兰捆绑开启成功🇦")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,255D;1D;200D;8.0F:13", 16, false, 536870912, 0, -1)
gg.searchNumber("8", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.toast("🇧紫罗兰寄生虫开启成功🇮")
end



function c9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1131;1;275;1,093,664,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,093,664,768", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("🇬克隆体3技能开启成功🇯")
	 gg.clearResults()
end



function c10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("🇬🔥克隆体2技能开启成功🔥🇨")
	 gg.clearResults()
end



function c11()
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('0.001;1000;1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('1000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(190)
    gg.editAll('2', gg.TYPE_FLOAT)
    gg.toast('🇵🔥吸人成功🔥🇱')
    gg.clearResults()
  end



function c12()
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('0.001;1000;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(190)
    gg.editAll('1000', gg.TYPE_FLOAT)
    gg.toast('🇵🔥恢复成功🔥🇨')
    gg.clearResults()
  end



function d1()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.83314947e27F;-7.16145955e24F;0.0001F;7.55723064e-39F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("🇸穿墙开启成功🇸")
	 gg.clearResults()
end



function d2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.83314947e27F;-7.16145955e24F;0F;7.55723064e-39F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.0001", gg.TYPE_FLOAT)
	 gg.toast("🇸穿墙恢复成功🇷")
	 gg.clearResults()
end



function d3()

gg.toast("🇸开启成功🇸")
end



function d4()

gg.toast("🇸开启成功🇸")
end



function d5()

gg.toast("🇲开启成功🇲")
end



function d6()

gg.toast("🇧开启成功🇧")
end



function d7()

gg.toast("🇧开启成功🇧")
end



function d8()

gg.toast("🇧开启成功🇧")
end



function d9()

gg.toast("🇧开启成功🇦")
end



function d10()

gg.toast("🇲开启成功🇺")
end



function d11()

gg.toast("🇲开启成功🇪")
end



function d12()

gg.toast("🇧开启成功🇮")
end



function Exit()
print("🔥🔥🔥🔥🔥🍔🍔🍔🍔🍔🍔大家起一打败端滋哥奥利给兄弟们记得好评SVIR新来的，看这边★★群规★★1妹纸给我2禁止发黄图3进群活跃QQ群960575766QQ群960575766QQ群960575766🔥🔥🔥🔥🔥🍔🍔🍔🍔🍔🍔🍔🍔🔥🔥🔥🔥🔥🔥🔥🇫")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '👿👿👿最新版的楼主👿👿👿'
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