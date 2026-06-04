gg.alert ('ζั͡✿‘FoamC.ζั͡✿沫宸唯一群号:759069742')
function main()
  FoamC = gg.choice({
    "🌸   ︴ 超级防封  ︴  🌸", 
    "🌸   ︴ 透视上色  ︴  🌸",
    "🌸   ︴ 变态功能  ︴  🌸",
    "🌸   ︴ 结束修仙  ︴  🌸"
  },nil,'ζั͡✿‘FoamC.ζั͡✿唯一QQ1921604655                                                                         --------------功能菜单--------------')
  if FoamC == 1 then f() end
  if FoamC == 2 then a() end
  if FoamC == 3 then b() end
  if FoamC == 4 then c() end
  XGCK = -1
end
function f()
  FoamC = gg.multiChoice({
    '开启防封鉴权(大厅之前开启)'--1
    ,'返回主界面'--2
  },nil,'ζั͡✿‘FoamC.ζั͡✿                                                                              提示:防封鉴权必须要开启才能奔放                                                                      在游戏过程中不要随意切换后台，只有不同的手机适合不同的防封。没有不稳的辅助，只有贪心的玩家，低调上分，人人都稳。   ')
  if FoamC[1] == true then f1() end
  if FoamC[2] == true then main() end
end
function f1()
  gg.alert ('ζั͡✿‘FoamC.ζั͡✿提示:开完鉴权时脚本被弹出属于说明鉴权开启失败，重新进入游戏开启鉴权')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.4349296e-41;1.4012985e-45;5.6051939e-45;2.986167e-42::",gg.TYPE_FLOAT)
  gg.searchNumber("2.986167e-42",gg.TYPE_FLOAT)
  t =gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  for i=1,6 do
    t[i].value ='0'
    t[i].freeze =true
    t[i].freezeType =gg.FREEZE_NORMAL 
    gg.addListItems(t)
    gg.toast("防封鉴权开启成功")
  end
end

















function a()
  FoamC = gg.multiChoice({
    '透视防闪(出生岛开启)'--1
    ,'流畅透视'--2
    ,'均衡透视'--3
    ,'高清透视'--4
    ,'流畅绿色'--5
    ,'流畅青色'--6
    ,'流畅橙色'--7
    ,'流畅黄色'--8
    ,'流畅蓝色'--9
    ,'流畅青白'--10
    ,'高清黄色'--11
    ,'流畅红色'--12
    ,'流畅蓝紫'--13
    ,'返回主界面'--14
  },nil,'ζั͡✿沫宸一直很努力ζั͡✿                                                                     --------------透视上色菜单--------------')
  if FoamC[1] == true then a1() end
  if FoamC[2] == true then a2() end
  if FoamC[3] == true then a3() end
  if FoamC[4] == true then a4() end
  if FoamC[5] == true then a5() end
  if FoamC[6] == true then a6() end
  if FoamC[7] == true then a7() end 
  if FoamC[8] == true then a8() end
  if FoamC[9] == true then a9() end 
  if FoamC[10] == true then a10() end
  if FoamC[11] == true then a11() end
  if FoamC[12] == true then a12() end
  if FoamC[13] == true then a13() end 
  if FoamC[14] == true then main() end
end














function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("透视防闪开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a2()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.7961574e21;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("🌸沫宸最帅hhh🌸")
end 
function a3()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.8330515e21;4.7408166e21;4.7961574e21;3.7615819e-37;2.0::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.7922799e21;4.7408149e21;4.814603e21;3.7615819e-37;2.0::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4.9252829e21;1.3912552e-19;3.7615819e-37;2.0;-1.0;1.0::512", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT)
  gg.getResults(30)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("4.8699472e21;1.3912525e-19;3.7615819e-37;2.0;-1.0;1.0::512", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT)
  gg.getResults(30)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1.3912554e-19;1.1202057e-19;3.7615819e-37;2.0;-1.0;1.0::512", gg.TYPE_FLOAT)
  gg.searchNumber("2", gg.TYPE_FLOAT)
  gg.getResults(30)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.toast("均衡透视开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a4()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.3680222e21;1.3312335e-43;1.3912563e-19;2.0;1.6623075e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.201992e21;4.4028356e-29;2.25000452995;2.0;1.6623054e-19::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("高清透视开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a5()
  gg.clearResults()
  gg.setRanges (gg.REGION_BAD)
  gg.searchNumber("3.2737415e-40F;2.04687523842F;2.0F::100",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("4",gg.TYPE_FLOAT)
  gg.toast("绿色开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a6()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8200;1194380042;196615;196617;262151;393219;69685;69689::404",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(4)
  gg.editAll("10",gg.TYPE_DWORD)
  gg.toast("青色开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a7()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
  gg.toast("人物橙色开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a8()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("6",gg.TYPE_DWORD)
  gg.toast('人物黄色开启成功')
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-1.4693707e-39F;1;2;3.2737415e-40F;671,088,640::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast('人物蓝色开启成功')
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a10()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("8,200D;1,080,035,591D:512",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(14)
  gg.editAll("10",gg.TYPE_DWORD)
  gg.toast("白青混合色开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a11()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("112;8200;29:512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(8)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.toast("高清黄人开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("462980D;13;10;69778D", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("13", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("-8", gg.TYPE_WORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("462980D;10;69778D", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("9", gg.TYPE_WORD)
  gg.toast("红色开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b13()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.3912525e-19F;8200;96", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2057", gg.TYPE_DWORD)
  gg.toast("紫色开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end












function b()
  FoamC = gg.multiChoice({
    "自瞄第① ︴大厅开启",--1
    "自瞄第② ︴岛上开启",--2
    "全枪无后 ︴持枪开启",--3
    "倍镜防抖 ︴持枪开启",--4
    "吉普加速 ︴车上开启",--5
    "蹦蹦加速 ︴车上开启",--6
    "下蹲路飞 ︴落地开启",--7
    "全身范围 ︴大厅开启",--8
    "超级天线 ︴大厅开启",--9
    "头部范围 ︴大厅开启",--10
    "除草除树 ︴大厅开启",--11
    "开启加速+踏空+防摔 ︴车上开启",--12
    "关闭加速+踏空+防摔 ︴大厅关闭",--13
    "返回主界面"--14
  },nil,'ζั͡✿沫宸一直很努力ζั͡✿                                                                     --------------变态功能菜单--------------')
  if FoamC[1] == true then b1() end
  if FoamC[2] == true then b2() end
  if FoamC[3] == true then b3() end
  if FoamC[4] == true then b4() end
  if FoamC[5] == true then b5() end 
  if FoamC[6] == true then b6() end
  if FoamC[7] == true then b7() end
  if FoamC[8] == true then b8() end
  if FoamC[9] == true then b9() end
  if FoamC[10] == true then b10() end
  if FoamC[11] == true then b11() end 
  if FoamC[12] == true then b12() end 
  if FoamC[13] == true then b13() end 
  if FoamC[14] == true then main() end
end

































function b1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('30;30;0.3;0.3;80;25;220::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('0.03', gg.TYPE_FLOAT)
    gg.toast("自瞄第一步开启成功")
    gg.toast("🌸沫宸最帅hhh🌸")
  end
end
function b2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('36;1065353216;50528513;1203982336:', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber('1065353216', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('1,090,519,040', gg.TYPE_DWORD)
    gg.toast("自瞄第二步开启成功")
    gg.toast("🌸沫宸最帅hhh🌸")
  end
end
function b3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('176293393;8F;9.5F;15F::',gg.TYPE_DWORD)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber('176293393',gg.TYPE_DWORD)
    gg.getResults(10)
    gg.editAll('176293392',gg.TYPE_DWORD)
    gg.toast("激光射线开启成功")
    gg.toast("🌸沫宸最帅hhh🌸")
  end
end
function b4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
  gg.setVisible(false)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
  gg.toast("防抖开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("150;85;45;-129;-85::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("99998", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.64705884457;0.30000001192;0.94117647409;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.64705884457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("-555", gg.TYPE_FLOAT)
  gg.toast("吉晋潜水加速开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;2;0.5;0.01::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("50;5;2;0.5;0.01::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-0.23", gg.TYPE_FLOAT)
    gg.toast("蹦蹦加速开启成功")
  end
end
function b7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('9.49029350281;0.00642728806', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('335', gg.TYPE_FLOAT)
    gg.toast('路飞开启成功')
    gg.toast("🌸沫宸最帅hhh🌸")
  end
end
function b8()
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
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b9()
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
  gg.toast("超级天线开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("2500000", gg.TYPE_FLOAT)
  gg.toast("头部范围开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b11()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-7.584045e27;-8.0110592e-11;9.9999999e-9;-8.7954148e22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-7.584045e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("全除开启成功")
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
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
  gg.clearResults()
  gg.searchNumber("1F;0.6;0.1;0.125F:55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber('0.03E;0.6E;1.0E;0.5E::512', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100) 
  gg.editAll('0.0001', gg.TYPE_DOUBLE) 
  gg.toast("人物稳定防摔开启成功")
  gg.toast('加速已经开启 ')
  gg.toast("🌸沫宸最帅hhh🌸")
end
function b13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0;7.0064923e-45;2;100;2;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;999;1D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
  gg.clearResults(100)
  gg.searchNumber("0.03E;0.6E;0E;0.5E::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_DOUBLE)
  gg.clearResults()
  gg.searchNumber("2;0.6;0.1;0.125F:55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.getResults(200)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber('0.03E;0.6E;0.0001.0E;0.5E::512', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.0001', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100) 
  gg.editAll('1', gg.TYPE_DOUBLE) 
  gg.toast('加速已经关闭')
  gg.toast("🌸沫宸最帅hhh🌸")
end





























function c()
  gg.alert ('多谢支持，感谢使用')
  print('ζั͡✿沫宸一直很努力ζั͡✿')
  os.exit() 
end
cs = "仅供参考娱乐学习,非法倒卖后果自负，沫宸唯一QQ1921604655"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    main()
  end
end