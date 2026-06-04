function Main()
menu = gg.choice({
'✌---防止禁网---✌',
'👆---透视专区---👆',
'👇---变态功能---👇',
'💪---上色专区---💪',
'👍---诛仙专区---👍',
'👊---退出脚本---👊'},
nil,'配合dz加速器完美奔放 ')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'防禁网(第一圈一次决赛圈一次)'},
nil,'配合dz加速器完美奔放')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'💙透视修复💙',
'💙625透视💙',
'💙660透视💙',
'💙835透视💙',
'💙845透视💙',
'💙猴仙专用💙',
'💙435透视💙',
'💙425透视💙',
'返回上一页'},
nil,'配合dz加速器完美奔放')
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
menu1 = gg.multiChoice({
            "🔸全图优化",
            "🔸5.56定位",
            "🔸人物天线",
            "🔸人物路飞",
            "🔸全车加速",
            "🔸全枪瞬击",
            "🔸加速踏空",
            "🔸全局特效",
            "🔸全图除草",
'返回上一页'},
nil,'配合dz加速器完美奔放')
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
if menu1[10] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'高清上色',
'全身黄色',
'全身红色',
'全身绿色',
'花里紫色',
'通用黄色',
'实体巨人',
'实体蚁人',
'返回上一页'},
nil,'配合dz加速器完美奔放')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice({
'🌺全网首发锁血',
'🌺首发超级自瞄',
'🌺头部大范围',
'🌺大厅无后座',
'🌺持枪防抖动',
'🌺新下蹲遁地',
'🌺新大厅路飞',
'🌺新大厅翻墙',
'返回上一页'},
nil,'配合dz加速器完美奔放')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end



function a1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1954047316D;1970037078D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
  gg.toast(os.date("防禁网开启成功:\n%Y年%m月%d日%H时%M分%S秒"))
end



function a2()
gg.clearResults()
gg.searchNumber("909391408;808923191::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(100)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.toast("第一步防封开启成功")
gg.clearResults()
gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("cat:第二步防封开启成功")
end



function b1()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("46.0078125 ; 6.50000333786; 3.7615819e-37;2: :250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42; 6.50000238419;3.7615819e-37;255;1.0;2.0;5.0::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("防闪代码开启成功")
end




function b2()
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
  gg.toast("新通用透视开启成功")
end


function b3()
gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.searchAddress("504")
    gg.toast("50%")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("660完美透视开启成功")
    gg.clearResults()
        
   gg.setRanges(gg.REGION_BAD)
   gg.searchNumber("-1.4693707e-39F;1;2;3.2737415e-40F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(10)
   gg.editAll("7", gg.TYPE_DWORD)
   gg.toast('天蓝色开启成功')

end


         
function b4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.0;4.7961574e21;4.7408166e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("350", gg.TYPE_FLOAT)
gg.toast("成功开启25%")
gg.clearResults()
gg.searchNumber("2.0;4.8699472e21;4.8699466e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("350", gg.TYPE_FLOAT)
gg.toast("成功开启50%")
gg.clearResults()
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("350", gg.TYPE_FLOAT)
gg.toast("成功开启75%")
gg.clearResults()
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("350", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("835透视开启成功")
end



function b5()
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
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("防闪开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.alert("开启成功")
  gg.toast(os.date("开启时间:\n%Y年%m月%d日%H时%M分%S秒"))
end


function b6()
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
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,661,566,999;96;539,246,604;8200::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10", gg.TYPE_DWORD)
gg.toast("845完美透视上色已开启")
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("7.1746481e-43;1.0842022e-19;94.015625;7.0776718e-15;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("透视防闪开启成功")
end


function b7()
gg.toast("Wallhack Snapdragon 435 is Working...")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-1.0285578e-38;3.7615819e-37;2;-1;1;-127::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("304.00009155273;3.7615819e-37;2;-1;1;-127::240", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("435开启成功")
end


function b8()
gg.toast("Wallhack Snapdragon 425 is Working...")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3.2229865e-43F;2.0F;-1.0F;-1.0F;2.0F:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(360)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("27;15;26;23;1,073,741,824;24;-1,082,130,432:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,123,024,896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.toast("425开启成功")
end


function c1()
  
gg.toast("Loading.. Sabar dek..")
gg.clearResults()
gg.searchNumber("32,770D;0.01799999923;0.29907226562;-1;2:", gg.TYPE_FLOAT)
gg.searchNumber("2", gg.TYPE_FLOAT)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT)
gg.searchNumber("2.5", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("全图优化开启成功")
end
function c2()
 gg.clearResults()
  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("20", gg.TYPE_FLOAT)
  gg.toast("猴仙")
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("6.95975875854", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("88996", gg.TYPE_FLOAT)
  gg.toast("5.56子弹定位成功，靠近显示")
  end
function c3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("人物天线开启失败")
  else
    gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("16000", gg.TYPE_FLOAT)
    gg.toast("人物天线开启成功")
  end
end

function c4()
 a = gg.prompt({
    "修改100~350数值\n数值越大飞的越高\n数值太大打不死人"
  }, {
    [1] = 336
  }, {
    [1] = "number"
  })
  ab = "\"" .. a[1] .. "\""
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.00542354584;35.02524185181;9.49029350281;8.11522674561;8.11522674561::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("蹲下路飞开启失败")
  else
    gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll(ab, gg.TYPE_FLOAT)
    gg.toast("蹲下路飞开启成功")
  end
end
function c5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll("-0.23", gg.TYPE_FLOAT)
gg.toast("全车加速开起成功")
gg.clearResults()
gg.clearResults()
gg.searchNumber("1;5;4;0.001 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.001", gg.TYPE_FLOAT)
gg.toast("锁油开启成功")
gg.clearResults()
end
function c6()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M416子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500")
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AKM子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M16子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(800)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("冲锋枪子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("98K子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M24子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AWM子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("VSS子弹开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("弓弩瞬击开启成功")
end


function c7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::,", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.searchNumber("            \000\0001.0F;0.6;0.1;0.125F::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.6", gg.TYPE_FLOAT)
  gg.toast("踏空防摔开始成功")
end
function c8()




  
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("1.6815582e-44;1.1204998e-19;0.5;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("444", gg.TYPE_FLOAT)
  gg.toast("喷蓝血开启成功")
  
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(55)
gg.editAll("-9", gg.TYPE_FLOAT)
gg.toast("秒开倍镜开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6.7031837463;0;0;0.37999999523;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("2.11", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("所有倍镜加深开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-90", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("特效黑天 开启成功") 
end
  
  function c9()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("10000;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("除草开启成功")
end

function e1()
gg.alert('提示:锁血可能不成功，多开几次！！')
gg.alert('提示:先喝饮料，能量条在锁血就在我测试10次开启成功过3次')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0F;0.6;0.1;0.125::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("锁血开启成功")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50F;5F;2F;0.5F;0.01F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("-0.4", gg.TYPE_FLOAT)
gg.toast("凌霄飞车开启成功")
end


function e2()
    gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("1998", gg.TYPE_FLOAT)
gg.toast("鸡腿自瞄开启成功")
gg.clearResults()
end

function e3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;1102577664D;28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then gg.toast("头部范围开启失败") else
  gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("340", gg.TYPE_FLOAT)
  gg.toast("头部范围开启成功")
end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;27;2D;6D::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then gg.toast("范围伤害开启失败") else
  gg.searchNumber("15;27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.searchNumber("27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-200", gg.TYPE_FLOAT)
  gg.toast("范围伤害开启成功")
  gg.toast("小号带人奔放就行了高端局不稳")
end end



function e4()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("8.0814659e-28;4.5122613e-30;3.8126822e-21::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then gg.toast("大厅无后开启失败") else
  gg.searchNumber("3.8126822e-21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-3.8126822e-21", gg.TYPE_FLOAT)
  gg.toast("大厅无后开启成功")
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("5.0487104e-29;3.8126822e-21;8.4988737e-21::12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then gg.toast("倍镜防抖开启失败") else
  gg.searchNumber("3.8126822e-21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-3.8126822e-21", gg.TYPE_FLOAT)
  gg.toast("倍镜防抖开启成功")
end end



function e5()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("提示超级防抖已开启")
end



function e6()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("2000", gg.TYPE_FLOAT)
  gg.toast("下蹲遁地已成功")
end





function e7()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614845276;0.53446006775;-3.4266242981",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("200",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("大厅站立路飞已开启")
end



function e8()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;45;40::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(400)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast('翻墙开启成功')
end



function d1()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("256;8200;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.toast(" 845高清荧光紫色开启成功")
end



function d2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("8198", gg.TYPE_DWORD)
gg.toast("黄色开启成功")
end



function d3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("红色开启成功")
end



function d4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("6.5475455e-29;3.50048899651;2.8147742e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.50048899651", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4", gg.TYPE_FLOAT)
gg.toast("绿色开启成功")
end



function d5()


gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("32769;768;-2,134,900,730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("32769", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("32777", gg.TYPE_DWORD)
  gg.toast("紫色开启成功")
end



function d6()

gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("671,088,640", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("671,088,640", gg.TYPE_DWORD, false)
gg.searchAddress("3E0", 4294967295)
gg.getResults(10)
gg.editAll("-242", gg.TYPE_DWORD)
gg.toast("通用黄色开启成功")
end



function d7()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9990)
gg.editAll("2.2", gg.TYPE_FLOAT)
gg.toast("实体巨人开启成功")
end



function s8()
   gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false)
gg.getResults(50)
gg.editAll("0.6", gg.TYPE_FLOAT)
gg.toast("小蚂蚁人开启成功")
end



function Exit()
print("配合dz加速器完美奔放")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '配合dz加速器完美奔放'
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










