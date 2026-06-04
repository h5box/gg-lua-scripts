function Main()
menu = gg.choice({
'🥦-Perspective🥃',
'🥜----Painting--🍄',
'️️🥨metamorphic🥐',
'️❎__Exit Auxiliary__❎'},
nil,'悟空PUBG国际服脚本')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then Exit() end
XGCK=-1
end


function A()
menu1 = gg.multiChoice({
'HDR透视/大厅',
'HDR透视/大厅',
'透视防闪/出生岛',
'透视防闪/出生岛',
'返回上一页'},
nil,'All functions are switched on according to the command or the seal number is not allowed.')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end

function B()
menu1 = gg.multiChoice({
'️流畅小红人⚜',
'⚜HDR亮橙⚜',
'⚜HDR血红⚜',
'⚜HDR绿色⚜',
'⚜HDR亮黄⚜',
'⚜HDR浅紫⚜',
'⚜HDR亮红⚜',
'⚜HDR橙红⚜',
'⚜爱情草莓⚜',
'⚜人物黄色⚜',
'返回上一页'},
nil,'All memory must be hooked🔒Start as directed')
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
if menu1[11] == true then HOME() end
end
GLWW=-1
end
function C()
menu1 = gg.multiChoice({
'🥀🦎无后防抖自瞄（完美)/落地',--Updated
'🥀🦎人物翻墙/落地',
'🥀🦎头部自瞄/落地',
'🎋🦎蹲下路飞/落地',
'🎋🦎人物高跳/落地',
'🎋🦎全局天线/落地',--Updated
'🎋🦎上帝视角/落地',
'🎋🦎人物踏空/落地',
'🥀🦎三级定位/落地',
'🍃🦎300范围/落地',--Updated
'🍃🦎头部范围/落地',--Updated
'🥀🦎全车喷白烟/落地',
'🥀🦎快速下飞机/飞机',
'🌿🦎全局加速开启/落地',
'🌿🦎全局加速关闭/落地',
'🥀🦎吉普下水坐车/坐车',
'🥀🦎信号枪天线/大厅',
'🥀🦎最新除草/落地',
'🥀🦎站立路飞/落地',
'🥀🦎踏空防摔/落地',
'🥀🦎人物地线/落地',
'🥀🦎全局天线/出生岛',
'🥀🦎喷子聚点/落地',
'🥀🦎趴下路飞/落地',
'🍃🦎超级范围/落地',
'🍃🦎450范围/落地',
'🥀🦎吉普飞天/坐车',
'🥀🦎吉普加速/坐车',
'🥀🦎蹦蹦加速/坐车',
'🥀🦎倍镜防抖',--Updated
'🥀🦎全枪无后',--Updated
'🥀🦎巨人/落地',
'🥀🦎蚁人/落地',
'🥀🦎远古范围/落地',
'🥀🦎科技显血/落地',
'🥀🦎子弹穿墙/落地',
'🥀🦎八十范围/落地',
'🥀🦎大厅自瞄/持枪',
'🥀🦎M24连打/持枪',
'返回上一页'},
nil,'All memory must be hooked🔒Start as directed')
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
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then c16() end
if menu1[17] == true then c17() end
if menu1[18] == true then c18() end
if menu1[19] == true then c19() end
if menu1[20] == true then c20() end
if menu1[21] == true then c21() end
if menu1[22] == true then c22() end
if menu1[23] == true then c23() end
if menu1[24] == true then c24() end
if menu1[25] == true then c25() end
if menu1[26] == true then c26() end
if menu1[27] == true then c27() end
if menu1[28] == true then c28() end
if menu1[29] == true then c29() end
if menu1[30] == true then c30() end
if menu1[31] == true then c31() end
if menu1[32] == true then c32() end
if menu1[33] == true then c33() end
if menu1[34] == true then c34() end
if menu1[35] == true then c35() end
if menu1[36] == true then c36() end
if menu1[37] == true then c37() end
if menu1[38] == true then c38() end
if menu1[39] == true then c39() end
if menu1[40] == true then HOME() end
end
GLWW=-1
end



function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("80", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("80", gg.TYPE_FLOAT)
  gg.toast("通用透视开启成功")
  gg.clearResults()
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("修复完毕")
end

function a2()
gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_BAD))
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("218D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("95D;2;9.2194229e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("206D;3.7615819e-37;2;-1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("大厅透视开启成功🌹")
end

function a3()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19F;1.1202015e-19F; 3.7615819e-37F;255.0F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("防闪开启成功")
end



function a4()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.50000333786;1.1202013e-19;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19F;1.1202015e-19F; 3.7615819e-37F;255.0F;2.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("防闪开启成功")
end









function b1()
  gg.clearResults()
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("红色开启成功")
end


function b2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.50000190735F;8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("橙色开启成功")
end

function b3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.5225953e21F;720900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("720900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("720000", gg.TYPE_DWORD)
gg.toast("血红")
end


function b4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.5225953e21F;720900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("720900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("51", gg.TYPE_DWORD)
gg.toast("绿色")
end


function b5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.37549495697F;28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_DWORD)
gg.toast("米黄")
end


function b6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0863232e-19F;52", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("52", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("51", gg.TYPE_DWORD)
gg.toast("浅紫")
end

function b7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0863232e-19F;52", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("52", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50", gg.TYPE_DWORD)
gg.toast("幽光红")
end


function b8()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.0863198e-19F;17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("19", gg.TYPE_DWORD)
gg.toast("橙红")
end

 function b9()
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("4.5926155869782e-41;1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.0863202718415e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1.0863202718415e-25", gg.TYPE_FLOAT)
  gg.toast("爱情草莓开启成功")
end


function b10()
gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("1.1490647e-41;96;8200::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.toast("黄色开启成功")
  end

function c1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;200;0.5;40.0;0.3:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("300", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;10000D;100000:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0.001", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;20,000.0;0.21999999881", gg.TYPE_FLOAT)
gg.searchNumber("0.21999999881", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("0.01", gg.TYPE_FLOAT)
gg.searchNumber("0.00999999978;1.00349009037;3;1,077,936,128D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("3000", gg.TYPE_FLOAT)
gg.toast("全枪无后座力开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
end


function c2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.5032462e-44F;10.0F;45.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("人物翻墙开启成功")
end


function c3()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("自瞄锁头开启")
    gg.clearResults()
  end

function c4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38787841797;0.53869867325;0.61770325899;13.27982902527:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("330", gg.TYPE_FLOAT)
  gg.toast("下蹲路飞开启")
end

function c5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("1;35;443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("3",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("3;35;443;55;0.57357645035",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("443",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("2300",gg.TYPE_FLOAT)
gg.toast("高跳开启成功")
end


function c6()
   gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("新版天线")
end



function c7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500", gg.TYPE_FLOAT)
gg.toast("上帝视角开启成功")
end



function c8()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("人物踏空开启成功")
end





function c9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.26217222214", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.34858703613", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.10485887527", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("三级定位开启成功")
end

function c10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("300", gg.TYPE_FLOAT)
gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("范围打击开启成功！")
end

function c11()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("范围开启成功")
end


function c12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("536,887,297D;13D;536,887,306D;18D;536,887,305D;12D:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("999", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.109375;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("车冒白烟开启成功")
end


function c13()
    gg.clearResults()
    gg.searchNumber("-980.0F;0.30000001192F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.30000001192F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("20", gg.TYPE_FLOAT)
    gg.toast("加速跳伞开启成功")
  end

function c14()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.2,5", gg.TYPE_FLOAT)
  gg.toast("全局加速开启成功")
  gg.clearResults()
end

function c15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.25;1.25;1.25;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("全局加速关闭成功")
  gg.clearResults()
end



function c16()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("99998", gg.TYPE_FLOAT)
  gg.toast("吉普下水开启成功")
  gg.clearResults()
end


function c17()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.7576~0.7579", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("信号枪天线开启成功")
  gg.clearResults()
end

function c18()
gg.clearResults()	
gg.setRanges(131072) 
gg.searchNumber("0.0;2.0;-1.0;0.00390625;1.0;0.0;0.99900001287;10,000.0;-127.0;0.24022650719;0.69314718246;0.00999999978;-0.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)	 gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)	
gg.toast("除草开启成功")	
gg.clearResults()
end

function c19()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33,685,506;16,777,478;-1.0F;1;1;5.0F;176,293,393;1::101", gg.TYPE_DWORD)
gg.toast("已自动跳过搜索过程")
gg.getResultCount()
gg.toast("开启失败")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("已自动跳过搜索过程")
gg.getResultCount()
gg.searchNumber("8.07826709747", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("已自动跳过搜索过程")
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("站立路飞开启成功")
end




function c20()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("人物踏空开启成功")
  gg.clearResults()
  gg.searchNumber("\000\000\000\000\000\000\000\000\000\000\000\000\000\0001.0F;0.6;0.1;0.125F::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.6", gg.TYPE_FLOAT)
  gg.toast("人物防摔开始成功")
end

function c21()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("-9999999", gg.TYPE_FLOAT)
gg.toast("人物地线开启成功")
end




function c22()
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(7)
gg.editAll("1.96875", gg.TYPE_FLOAT)
gg.toast("已加载50%")
gg.clearResults()
gg.searchNumber("1.96875F;1.96875F;-100.91194152832;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("出生岛天线开启成功")
end


function c23()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("准心聚点")
end


function c24()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.39119869471;18.38614463806;0.53446578979;-3.42663908005;0.69551950693::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.38614463806;0.53446578979;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(gg.getResultCount())
gg.editAll("200", gg.TYPE_FLOAT)
 gg.toast("趴下路飞开启成功")
 end
 
function c25()
 gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("295", gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
end



function c26()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("240", gg.TYPE_FLOAT)
gg.toast("头部范围开启成功")
end

function c27()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("吉普飞天开启成功")
end



function c28()
gg.setRanges(32)
gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.74509805441", 16, false, 536870912, 0, -1)
gg.getResults(9999)
gg.editAll("88888", 16)
gg.toast("吉普加速开启成功")
end



function c29()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;5;2;0.5;0.01:: ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("50;5;2;0.5;0.01:: ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-0.23", gg.TYPE_FLOAT)
gg.toast("蹦蹦加速开启成功")
end



function c30()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("防抖开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('-6.1549454e27;1.8638966e-20;-1.1144502e28;0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-1.1144502e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("大厅防抖开启成功")
 end



function c31()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-5.7318662e27;-4.672935e19;-4.6423105e19::12", gg.TYPE_FLOAT,
false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.7318662e27", gg.TYPE_FLOAT,
false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("大厅午后开启成功")
end



function c32()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("实体巨人开启成功")
end

function c33()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false)
    gg.getResults(50)
    gg.editAll("0.6", gg.TYPE_FLOAT)
    gg.toast("人物蚁人开启成功")
  end


function c34()
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
gg.toast("范围已开启")
end



function c35()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.0587894e-22;-2.925285e28;-3.6893509e20::12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.0587894e-22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("18",gg.TYPE_FLOAT)
gg.toast("科技显血开启成功")
end
  
function c36()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.8082289e28;-1.306841e21;-9.4914685e20::12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.8082289e28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("子弹穿墙开启成功")
end

  
  
function c37()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("0.0001;1.0843911e-37::8", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("80",gg.TYPE_FLOAT)
gg.toast("范围开启成功")
end


function c38()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-5.4561862e27;-8.3527253e22;-1.5592675e26::12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.4561862e27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("大厅自瞄开启成功")
end
  
function c39()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("79000;2.9399998188;1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.9399998188;1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("m24连狙开启成功")
  end
  

function Exit()
print("悟空欢迎您再次奔放")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '没有群'
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