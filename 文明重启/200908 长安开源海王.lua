

function SearchWrite(A0_67, A1_68, A2_69)
  local L3_70, L4_71, L5_72, L6_73, L7_74, L8_75, L9_76, L10_77, L11_78, L12_79, L13_80, L14_81, L15_82, L16_83, L17_84, L18_85, L19_86, L20_87, L21_88
end
ANONYMOUS=gg.REGION_ANONYMOUS  FLOAT=gg.TYPE_FLOAT
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE   WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
CB=gg.REGION_C_BSS XA=gg.REGION_CODE_APP CA=gg.REGION_C_ALLOC
EA=gg.editAll  GQR=gg.choice  NC=gg.setRanges  CZ=gg.searchNumber  FW=gg.getResults  QL=gg.clearResults CL=gg.clearList TS=gg.toast  FWW=gg.getResultCount GQRNB=gg.multiChoice AL=gg.alert
---------------------------<
function HLPZ(Search, Write, Type) gg.clearResults() gg.setVisible(false) HLPZ3(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end
    for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end
      tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end
    for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end
    if (#data > 0) then gg.toast('🇾 🇬 🇬帮你处理'..#data..'2条代码') local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end
      gg.setValues(t) else gg.toast('开启失败', false) return false end else gg.toast('失败') return false end end
function Main()
menu = gg.choice({
'🔱常用功能区🔱',
'🔱透视功能区🔱',
'🔱更新功能区🔱',
'🔱枪械功能区🔱',
'退出脚本'},
nil,'🔱长安解 垃圾海王 圈钱狗.🔱'..os.date('北京时间为:%m月%d日 %H:%M'))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'🔱循环天线🔱',
'🔱骁龙上色🔱[独家]',
'🔱海王防封🔱',
'🔱远程自瞄🔱',
'🔱枪械全开🔱',
'🔱海王路飞🔱',
'🔱视野开阔🔱',
'返回上一页'},
nil,'🔱Q 166763863.🔱'..os.date('北京时间为:%m月%d日 %H:%M'))
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'🔱墙壁透视🔱',
'🔱全图透视🔱',
'🔱昼夜转换🔱',
'🔱趴下加速🔱',
'🔱水下功能🔱',
'🔱地下建造🔱',
'🔱夜视效果🔱',
'🔱海王隐身🔱[实体]',
'返回上一页'},
nil,'🔱长安牛逼 专治各种 牛马.🔱'..os.date('北京时间为:%m月%d日 %H:%M'))
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
'🔱海王飞天🔱[小威制作]',
'🔱半身遁地🔱',
'🔱皮肤特效🔱[骁龙]',
'🔱范围合集🔱',
'🔱GM工具🔱',
'返回上一页'},
nil,'🔱垃圾海王 圈钱狗.🔱'..os.date('北京时间为:%m月%d日 %H:%M'))
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end

function D()
menu1 = gg.multiChoice({
'🔱M4全开🔱',
'🔱双持全开🔱️',
'🔱冲锋全开🔱',
'🔱改装全开🔱️',
'🔱半自全开🔱',
'🔱AKM全开🔱',
'🔱QBZ全开️🔱',
'返回上一页'},
nil,'🔱二改垃圾脚本.🔱'..os.date('北京时间为:%m月%d日 %H:%M'))
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end

function a1()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('0.16947640479', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.16947640479', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999999)
    gg.editAll('-9999', gg.TYPE_FLOAT)
    a1()
    gg.toast('循环天线已开启,用海王上色效果更加[自觉关闭循环天线]')
    end




function a3()
  gg.clearResults()
  shiran = gg.prompt({'请输入防封指数(默认3)崩溃就是防封效果，不崩溃就是彻底防封'}
  ,{[1]=3},{[1]='number'})[1]
  gg.setRanges(100)
  gg.toast('防封注入%10')
  gg.clearResults()
  gg.searchNumber('0', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.toast('防封注入%11')
  gg.clearResults()
  gg.searchNumber('0', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.toast('防封注入%20')
  gg.clearResults()
  gg.searchNumber('0', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.toast('防封注入%23')
  gg.clearResults(100)
  gg.toast('防封注入%24')
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber('0.9123', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入26%')
  gg.searchNumber('0.9123', gg.TYPE_DPUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入30%')
  gg.getResults(100)
  gg.editAll('0.722', gg.TYPE_DOUBLE)
  gg.toast('防封注入45%')
  gg.clearResults()
  gg.searchNumber('46', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入56%')
  gg.searchNumber('46', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入60%')
  gg.getResults(100)
  gg.editAll('999', gg.TYPE_DWORD)
  gg.toast('防封注入63%')
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.clearResults()
  gg.searchNumber('0.9123', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入67%')
  gg.searchNumber('0.9123', gg.TYPE_DPUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入72%')
  gg.getResults(100)
  gg.editAll('0.722', gg.TYPE_DOUBLE)
  gg.toast('防封注入75%')
  gg.clearResults()
  gg.searchNumber('46', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入83%')
  gg.searchNumber('46', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast('防封注入95%')
  gg.getResults(100)
  gg.editAll('999', gg.TYPE_DWORD)
  gg.toast('防封注入100%')
  gg.clearResults()
  gg.toast('防封注入成功🔱开大范围可维持久一点点,照样会封哦')
  exit()
  end



function a4()
    gg.clearList()
     gg.clearResults()
     gg.setRanges(16384)
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{-128.00001525879, 0xB44},{0.00048828148, 0x20C},{128.37501525879, 0xB4C}}
     local tp2 = {{0, 0x11C, true},}
     local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
     SearchWrite(tb1, tp2, dataType,Name)
     gg.setRanges(16384)
     gg.searchNumber('953,270,745', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll('0.00010002004', gg.TYPE_FLOAT)
     gg.clearResults()
     local Name='100m'
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
     local tp2 = {{0, 0x11C, true},}
     local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
     SearchWrite(tb1, tp2, dataType,Name)
     gg.clearList()
     gg.setRanges(32)
     gg.searchNumber('0.11078428477', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumber('10;5;0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber('1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(99)
     gg.editAll('0.01', gg.TYPE_FLOAT)
     gg.searchNumber('953,270,745', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll('0.00010002004', gg.TYPE_FLOAT)
     gg.clearResults()
     gg.searchNumber('10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
     gg.clearResults()
     gg.setRanges(16384)
     SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
     gg.REGION_C_BSS, ('海王自瞄算法加载中......'))
     gg.clearList()
     gg.setRanges(16)
     gg.searchNumber('0.0000000078;', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
     gg.clearList()
     gg.setRanges(gg.REGION_CODE_APP)
     local Name='200m'
     local dataType = gg.TYPE_FLOAT
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{5.2452575e-38, 0}, {-1.3095104e25, 0x8},{0.00999999978, 0x4},}
     local tb2 = {{1.5, 0x4, false},} 
     SearchWrite(tb1, tb2, dataType,Name)
     gg.clearList()
     gg.setRanges(16384)
     gg.searchNumber('9953,2710,795', 4, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll('0.08817642000995',16)
     gg.searchNumber('4.8828148E-4', 16, false, gg.SIGN_EQUAL, 0, -1)
     Name = '230m' 
     gg.setRanges(8)
     local dataType = 16
     local search = {{9.819133540166275E-26, 0},{-5.696554925989424E20, -12},}
     local modify = {{-5.6965553e20, -12},}
     SearchWrite(search,modify,dataType,Name)
     gg.setRanges(16384)
     gg.searchNumber('953,270,745', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll('0.00010002004', gg.TYPE_FLOAT)
     gg.clearResults()
     local Name='240m'
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
     local tp2 = {{0, 0x11C, true},}
     local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
     SearchWrite(tb1, tp2, dataType,Name)
     gg.clearList()
     gg.setRanges(32)
     gg.searchNumber('0.11078428477', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.clearResults()
     gg.clearResults()
     gg.setRanges(16384)
     SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892}}, {{0,284,true}}, gg.TYPE_FLOAT, '锁死注入')
     gg.searchNumber('9953,2710,795', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(999)
     gg.editAll('0.08817642995', gg.TYPE_FLOAT)
     gg.toast('300m')
     gg.clearResults()
     SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
     gg.TYPE_FLOAT, '200m')
     gg.setRanges(16384)
     local Name='301m'
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
     local tb2 = {{0, 0x11C, true},}
     SearchWrite(tb1, tb2, dataType,Name)
     gg.clearList()
     gg.clearResults()
     gg.setRanges(16384)
     local dataType = 16
     local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
     local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
     SearchWrite(tb1, tb2, dataType)     
     gg.clearList()
     local dataType = 16
     local tb1 = {{-128.37501525879, 3836}, {-128.00001525879, 3828},}
     local tb2 = {{0, 4048, true},}
     SearchWrite(tb1, tb2, dataType)
     gg.clearList()  
     gg.clearResults()
     SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}}, gg.TYPE_FLOAT, '自瞄')
     gg.clearList()
     gg.clearResults()
     SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
     gg.TYPE_FLOAT, '自瞄开启中')
     gg.clearResults()
     gg.setRanges(16384)
     local Name='注入死锁'
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{'0.00048828148', 0xBE4525D8},{'-128.00001525879', 0xBE452F44},{'128.37501525879', 0xBE452F4C}}
     local tp2 = {{'0', 0xBE453028, true},}
     SearchWrite(tb1, tp2, dataType,Name)
     gg.clearList()
     gg.clearResults()
     gg.setRanges(16384)
     local Name='注入自瞄'
     local dataType = gg.TYPE_FLOAT
     local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
     local tp2 = {{0, 0x11C, true},}
   SearchWrite(tb1, tp2, dataType,Name)
   gg.clearList()
   gg.clearResults()
   gg.setRanges(16384)
   local Name='注入死锁'
   local dataType = gg.TYPE_FLOAT
   local tb1 = {{'0.00048828148', 0xBE4525D8},{'-128.00001525879', 0xBE452F44},{'128.37501525879', 0xBE452F4C}}
   local tp2 = {{'0', 0xBE453028, true},}
   SearchWrite(tb1, tp2, dataType,Name)
   gg.clearList()
   gg.clearResults()
   gg.setRanges(16384)
   local Name='注入全屏死锁'
   local dataType = gg.TYPE_FLOAT
   local tb1 = {{'0.00048828148', 0xBE4525D8},{'-128.00001525879', 0xBE452F44},{'128.37501525879', 0xBE452F4C}}
   local tp2 = {{'10', 0xBE453190, true},}
   SearchWrite(tb1, tp2, dataType,Name)
   gg.clearList()
   gg.clearResults()
   SearchWrite({{4.8828148E-4, 524},{-128.00001525879, 2884},{128.37501525879, 2892} }, {{ 0,284,true}},
   gg.TYPE_FLOAT, '自瞄开启中')
   gg.clearList()
   SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
   gg.TYPE_FLOAT, '自瞄')
   gg.clearList()
   gg.clearResults()
     gg.setRanges(16384)
     local dataType = 16
     local tb1 = {{-0.79999995232, 0xD13C}, {2.20000004768, 0xD140},}
     local tb2 = {{10, 0xD140, true},{0,0xCFD8,true},{0,0xC4CC,true}}
     SearchWrite(tb1, tb2, dataType)     
     gg.clearList()
     local dataType = 16
     local tb1 = {{-128.37501525879, 3836}, {-128.00001525879, 3828},}
     local tb2 = {{0, 4048, true},}
     SearchWrite(tb1, tb2, dataType)
     gg.clearList()
   gg.toast('海王自瞄开启成功')
end



function a5()

    xx1 = 4
    xx2 = 3.7
    xx3 = 7.6
    xx4 = 2.8
    cao1=xx1-xx4
    cao2=cao1+xx4
    cao3=xx2-xx3
    cao4=cao3+4
    cao5=xx1-1
    xx6 = cao2*-216
    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    local dataType = 16
    local tb1 = {{-(cao4),0}, {7.8472714e-44,-24},{0,36}}
    local tb2 = {{0.1,40,false},{0.1, 44, false},{0.1,48,false},{0.1,52,false},{1.0e19, 128, false},{40,196,false},{200,192,false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-(cao4),0}, {8.9683102e-44,-24},{0,36}}
    local tb2 = {{0.1,40,false},{0.1, 44, false},{0.1,48,false},{0.1,52,false},{1.0e19, 128, false},{40,196,false},{200,192,false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-1.0e19, 0},{1, -12},{2000,40}}
    local tb2 = {{10000, 0, false},{1500, 64, false},{-1, 68, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-1.0e19, 0},{20, -12},{80,40}}
    local tb2 = {{-100, 64, false}} 
    SearchWrite(tb1, tb2, dataType)
    gg.setRanges(4)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1063425514,-156},{1019625236,-152},{-1125603554,-160},{-1090519040,-144}}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2,dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1063415448,-156},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1077237078,8},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1076957458,8},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("海王全枪无后加载中")  
    d1()
    d2()
    d3()
    d4()
    d5()
    d6()
    d7()
    gg.toast("全枪午后已成功开启")  
    gg.clearList()
    gg.clearResults()
end



function a6()
F = gg.alert('【请将冻结间隔改为[0]\n开启无效请重重新开启】', '开镜路飞','开镜遁地')
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    local dataType = 16
    local tb1 = {{0.3, 0}, {-0.200000298, 4},{0, -4}}
    local tb2 = {{-1.39999995, 0, true},{-1.3999695,-4,true}}
    SearchWrite(tb1, tb2, dataType)
    elseif F == 2 then  
    gg.clearList()
    gg.clearResults()   
    gg.setRanges(4)
    local dataType = 16
    local tb1 = {{0.3, 0}, {-0.2000000298, 4},{0, -4}}
    local tb2 = {{1.3999985695, 0, true},{1.3999985695,-4,true}}
    SearchWrite(tb1, tb2, dataType)
end
end


function a7()
F = gg.alert('【第一人称|第三人称】', '第三人称','第一人称')
     if F == 1 then
     gg.clearList()
     gg.clearResults()
     gg.setRanges(32)
     gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(100)
     gg.editAll('4', gg.TYPE_FLOAT)
     gg.toast('第三人称')
     elseif F == 2 then
     gg.clearResults()
     gg.setRanges(32)
     gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber('1.70000004768', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(100)
     gg.editAll('-2', gg.TYPE_FLOAT)
     gg.toast('第一人称')
     end
     end

function b1()
    F = gg.alert('[海王墙壁透视专区]', '木墙透视','石墙透视','铁墙透视')
    if F == 1 then
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.032023508101701736, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 4,['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 36,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 36,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.03202327340841293, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 4,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 36,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 36,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.007704700343310833, ['type'] = 16},{['lv'] =  20,['offset'] = -24,['type'] = 16},{['lv'] = -2.0,['offset'] =   8,['type'] = 16},{['lv'] = -2.0,['offset'] =  70,['type'] = 16},{['lv'] =  2.0,['offset'] =  72,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = 40,['type'] = 16},{['value'] = 0,['offset'] = 72,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.1500033140182495, ['type'] = 16},{['lv'] = -2.0,['offset'] = -36, ['type'] = 16},{['lv'] = -2.0,['offset'] = -4,['type'] = 16},{['lv'] = -2.0,['offset'] = 28,['type'] = 16},{['lv'] = 2.0,['offset'] = 60,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -36,['type'] = 16},{['value'] = 0,['offset'] = -4,['type'] = 16},{['value'] = 0,['offset'] = 28,['type'] = 16},{['value'] = 0,['offset'] = 60,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.14999663829803467, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -4, ['type'] = 16},{['lv'] = -2.0, ['offset'] = 28, ['type'] = 16},{['lv'] = -2.0, ['offset'] = 60, ['type'] = 16},{['lv'] =  2.0, ['offset'] = 92, ['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -4, ['type'] = 16},{['value'] = 0, ['offset'] = 28, ['type'] = 16},{['value'] = 0, ['offset'] = 60, ['type'] = 16},{['value'] = 0, ['offset'] = 92, ['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.002076801611110568, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = -16,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 48,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] =  48,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.002076801611110568, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 16,['type'] = 16},{['lv'] = 3.799999952316284,['offset'] = 80,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 80,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.41978082060813904, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.013329435139894485, ['type'] = 16},{['lv'] = 3.799999952316284, ['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.7060922980308533, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -148, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -116,['type'] = 16},{['lv'] = 2.0, ['offset'] = -84,['type'] = 16},{['lv'] = -2.0, ['offset'] = -52,['type'] = 16},{['lv'] = -2.0, ['offset'] = -20,['type'] = 16},{['lv'] = 2.000000476837158,['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -148,['type'] = 16},{['value'] = 0, ['offset'] = -116,['type'] = 16},{['value'] = 0, ['offset'] = -84,['type'] = 16},{['value'] = 0, ['offset'] = -52,['type'] = 16},{['value'] = 0, ['offset'] = -20,['type'] = 16},{['value'] = 0, ['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.7060521841049194, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -80, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -48,['type'] = 16},{['lv'] = 2.0, ['offset'] = -16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 48,['type'] = 16},{['lv'] = 2.000000476837158,['offset'] = 80,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -80,['type'] = 16},{['value'] = 0, ['offset'] = -48,['type'] = 16},{['value'] = 0, ['offset'] = -16,['type'] = 16},{['value'] = 0, ['offset'] = 16,['type'] = 16},{['value'] = 0, ['offset'] = 40,['type'] = 16},{['value'] = 0, ['offset'] = 80,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.014859022572636604, ['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = 12,['type'] = 16},{['lv'] = 1.8001794815063477,['offset'] = 44,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16},{['value'] = 0, ['offset'] = 44,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.014859022572636604, ['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = -52,['type'] = 16},{['lv'] = 1.8001794815063477, ['offset'] = 12,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = -52,['type'] = 16},{['value'] = 0, ['offset'] = 12,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.02272883802652359, ['type'] = 16},{['lv'] = 2.736318588256836, ['offset'] = 12,['type'] = 16},{['lv'] = 2.736318349838257, ['offset'] = 44,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16},{['value'] = 0, ['offset'] = 44,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.02272883802652359, ['type'] = 16},{['lv'] = 2.736318588256836, ['offset'] = 12,['type'] = 16},{['lv'] = 2.736318349838257, ['offset'] = 46,['type'] = 16},}qmxg = {{['value'] = 0, ['offset'] = 12,['type'] = 16}, {['value'] = 0, ['offset'] = 76,['type'] = 16},}xqmnb(qmnb)dx5=dx2
    gg.toast('木墙透视已开启')  
    elseif F == 2 then  
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6826953887939453, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},{['lv'] = 2.0,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},} xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6826953887939453, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},{['lv'] = 2.0,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.682696521282196, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6827419400215149, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -144, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -64,['type'] = 16},{['lv'] = -2.0, ['offset'] = 16,['type'] = 16},{['lv'] = -2.0, ['offset'] = 96,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -144,['type'] = 16},{['value'] = 0,['offset'] = -64,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 96,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6827935576438904, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -216, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -96,['type'] = 16},{['lv'] = 2.0, ['offset'] = -16,['type'] = 16},{['lv'] = 2.0, ['offset'] = 24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -216,['type'] = 16},{['value'] = 0,['offset'] = -96,['type'] = 16},{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6828041672706604, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 24, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 96,['type'] = 16},{['lv'] = 2.0, ['offset'] = 104,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 24,['type'] = 16},{['value'] = 0,['offset'] = 96,['type'] = 16},{['value'] = 0,['offset'] = 104,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.6828030347824097, ['type'] = 16},{['lv'] = 2.0, ['offset'] = -16, ['type'] = 16},{['lv'] = 2.0, ['offset'] = 64,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -64,['type'] = 16},{['value'] = 0,['offset'] = 64,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.8979434967041016, ['type'] = 16},{['lv'] = -2.0, ['offset'] = -120,['type'] = 16},{['lv'] = 2.0, ['offset'] = -88,['type'] = 16},{['lv'] = -2.0, ['offset'] = -56,['type'] = 16},{['lv'] = 2.0, ['offset'] = -24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -120,['type'] = 16},{['value'] = 0,['offset'] = -88,['type'] = 16},{['value'] = 0,['offset'] = -56,['type'] = 16},{['value'] = 0,['offset'] = -24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.9821171760559082, ['type'] = 16},{['lv'] = -1.9338666200637817, ['offset'] = -24,['type'] = 16},{['lv'] = 1.933866262435913, ['offset'] = -16,['type'] = 16},{['lv'] = 1.9338666200637817, ['offset'] = 8,['type'] = 16},{['lv'] = 1.9338666200637817, ['offset'] = 16,['type'] = 16},{['lv'] = -1.9338667392730713, ['offset'] = 24,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -24,['type'] = 16},{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 8,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 24,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.018658097833395004, ['type'] = 16},{['lv'] = 1.9338665008544922, ['offset'] = 4,['type'] = 16},{['lv'] = 1.9338665008544922, ['offset'] = 12,['type'] = 16},{['lv'] = 1.9338667392730713, ['offset'] = 20,['type'] = 16},{['lv'] = 1.9338665008544922, ['offset'] = 44,['type'] = 16},{['lv'] = -1.9338668584823608, ['offset'] = 60,['type'] = 16},{['lv'] = 1.9338668584823608, ['offset'] = 100,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 12,['type'] = 16},{['value'] = 0,['offset'] = 20,['type'] = 16},{['value'] = 0,['offset'] = 44,['type'] = 16},{['value'] = 0,['offset'] = 60,['type'] = 16},{['value'] = 0,['offset'] = 100,['type'] = 16},}xqmnb(qmnb) 
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.08303508162498474, ['type'] = 16},{['lv'] = 1.9338666200637817, ['offset'] = 16,['type'] = 16},{['lv'] = -1.9338666200637817, ['offset'] = 56,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 16,['type'] = 16},{['value'] = 0,['offset'] = 56,['type'] = 16},}xqmnb(qmnb)dx5=dx2
    gg.toast('石墙透视已开启')  
    elseif F == 3 then  
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.12962867319583893, ['type'] = 16},{['lv'] = 1.6046782732009888, ['offset'] = 28,['type'] = 16},{['lv'] = 1.6046782732009888,['offset'] = 100,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 28,['type'] = 16},{['value'] = 0,['offset'] = 100,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.12962867319583893, ['type'] = 16},{['lv'] = 1.6046782732009888, ['offset'] = -20,['type'] = 16},{['lv'] = 1.6046782732009888,['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},{['value'] = 0,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.15298263728618622, ['type'] = 16},{['lv'] = 1.3940107822418213, ['offset'] = -4,['type'] = 16},{['lv'] = 1.3940107822418213,['offset'] = 20,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -4,['type'] = 16},{['value'] = 0,['offset'] = 20,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.1057068407535553, ['type'] = 16},{['lv'] = 2.178743600845337, ['offset'] = 4,['type'] = 16},{['lv'] = 2.178743600845337,['offset'] = 28,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = 4,['type'] = 16},{['value'] = 0,['offset'] = 28,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.17565540969371796, ['type'] = 16},{['lv'] = 2.178743600845337, ['offset'] = -20,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.19516216218471527, ['type'] = 16},{['lv'] = 2.115550994873047, ['offset'] = -20,['type'] = 16},{['lv'] = 2.115550994873047, ['offset'] = 52,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -20,['type'] = 16},{['value'] = 0,['offset'] =  53,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.17744342982769012, ['type'] = 16},{['lv'] = 2.0771946907043457, ['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 4,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = -0.21184007823467255, ['type'] = 16},{['lv'] = 2.1394925117492676, ['offset'] = 4,['type'] = 16},}qmxg = {{['value'] = 4,['offset'] = 4,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 1.2077791464015598E-41, ['type'] = 16},{['lv'] = 1.3940107822418213, ['offset'] = -16,['type'] = 16},{['lv'] = 1.3940107822418213,['offset'] = 8,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -16,['type'] = 16},{['value'] = 0,['offset'] = 8,['type'] = 16},}xqmnb(qmnb)
    qmnb = {{['memory'] = 131072},{['name'] = ''},{['value'] = 0.8982726335525513, ['type'] = 16},{['lv'] = 2.1371371746063232, ['offset'] = -8,['type'] = 16},{['lv'] = 2.0411479473114014,['offset'] = 16,['type'] = 16},}qmxg = {{['value'] = 0,['offset'] = -8,['type'] = 16},{['value'] = 0,['offset'] = 16,['type'] = 16},}xqmnb(qmnb)dx5=dx2
    gg.toast('铁墙透视已开启')  
end 
end      

function b2()
F = gg.alert('【海王科技全图透视区域】', '全图透视开启','全图透视关闭')
     if F == 1 then
    gg.clearResults()
    gg.setRanges(16384)   
    gg.searchNumber('0.81399995089', 16, false, gg.SIGN_EQUAL,0,-1, 0, -1)
    gg.getResults(100)
    gg.editAll('10.123', 16)
    gg.clearResults()
    gg.toast('全图透视已开启')  
    elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('10.123', 16, false, gg.SIGN_EQUAL,0,-1, 0, -1) 
    gg.getResults(100)
    gg.editAll('0.81399995089', 16)   
    gg.clearResults()
    gg.toast('全图透视已关闭')  
     end
     end



function b3()
     gg.clearResults()
     gg.setRanges(4)
     gg.searchNumber('1,004,243,884D;9.2194229e-41;-1D::', 16,false,gg.SIGN_EQUAL,0, -1)
     gg.searchNumber('9.2194229e-41',16,false,gg.SIGN_EQUAL,0,-1)
     gg.getResults(1)
     gg.editAll('999',16)
     gg.toast('时间转换已开启')  
     end                 




function b4()
     gg.clearResults()
     gg.setRanges(gg.REGION_CODE_APP)
     gg.searchNumber('-7.4975935e19;-1.0239434e32;2.0:41',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
     gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
     gg.getResults(100)
     gg.editAll('7',gg.TYPE_FLOAT)
     gg.toast('趴下加速开启')
     end



function b5()
F = gg.alert('【海王科技水下功能区域】', '水下功能开启','水下功能关闭')
     if F == 1 then
 gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber('1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('10000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll('0', gg.TYPE_FLOAT)
      gg.toast('水下行走开启')
  elseif F == 2 then
      gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber('1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll('10000', gg.TYPE_FLOAT)
      gg.toast('关闭水下行走')
    end
    end




function b6()
     gg.clearResults()
     gg.setRanges(gg.REGION_CODE_APP)
     gg.searchNumber('-1.83314888e27;-7.15917215e24;2.0:37', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.getResults(800)
     gg.editAll('1.96', gg.TYPE_FLOAT)
     gg.toast('地下家[应该没和谐,没有试用]')
    end




function b7()
F = gg.alert('【海王科技夜视效果区域】', '夜视效果开启','夜视效果关闭')
     if F == 1 then
     gg.clearList()
     gg.clearResults()
     gg.setRanges(16384)
     local dataType = 16
     local tb1 = {{2.7859868e28, 0}, {0.0549999997, 0x-4},{0.04044999927, 0x-8},}
     local tb2 = {{2, 0x-4, false},}  
     SearchWrite(tb1, tb2, dataType) 
     gg.toast('夜视已开启')  
     elseif F == 2 then
     gg.clearList()
     gg.clearResults()
     gg.setRanges(16384)
     local dataType = 16   
     local tb1 = {{2.7859868e28, 0}, {2, 0x-4},{0.04044999927, 0x-8},}  
     local tb2 = {{0.0549999997, 0x-4, false},}     
     SearchWrite(tb1, tb2, dataType)     
     gg.toast('夜视已关闭') 
     gg.clearList()      
end      
end







function c1()
    gg.alert('人物飞天说明:\n必须找到房子开启降落在天花板上面，不要飞的太高会死，降落时要降落在地基上否则会死！禁止蹲下负责会死【注意不要降落在地上只能降落在人物建筑上】请点修改器|已上房子赶快点关闭修改器|不能飞高|不能打开其他功能|重新打开脚本即可关闭|')
     gg.clearList()
     gg.clearResults()
   	gg.setRanges(gg.REGION_CODE_APP)
   	gg.searchNumber('0.60000002384F;0.73000001907F',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
	gg.searchNumber('0.60000002384',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
     gg.getResults(100)
     gg.editAll('999',gg.TYPE_FLOAT)
   	gg.toast('注入飞天') 
	gg.clearList()
	   
     gg.clearResults()
     gg.setRanges(gg.REGION_C_ALLOC)
     gg.searchNumber('16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.searchNumber('1.03~1.042', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     jg=gg.getResults(100)
     sl=gg.getResultCount()
     if sl>100 then sl=100 end
     for i = 1, sl do
       dzy=jg[i].address
       gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.37698}})
       end
   gg.toast('请点修改器|已上房子赶快点关闭修改器|不能飞高|不能打开其他功能|重新打开脚本即可关闭|')
end



function c2()
   gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber('16,261W;25W;161W  ;1W;1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('1.03999996185',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll('2.222222',gg.TYPE_FLOAT)
    gg.toast('遁地开启成功')
    end



function c3()
     gg.clearResults()
     gg.setRanges(gg.REGION_CODE_APP)
     gg.searchNumber('-2.9687729e21;-2.9687729e21;1.0;2.0;-2.0;1.0:97',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
     gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
     gg.getResults(100)
     gg.editAll('5',gg.TYPE_FLOAT)
     gg.toast('海王独家密算')
     end

function c4()
    F = gg.alert('【小范围可配合其他功能稳定使用,刀范围用枪请重新登录】', '小范围[稳定]', '范围刀[禁枪]','大范围[危险]')
    if F == 1 then
    gg.clearList()
    gg.clearResults()
    gg.toast('循环小范围已开启')   
    WDFW()
    elseif F == 2 then
    gg.clearList()
    gg.clearResults()
    gg.toast('循环范围刀已开启')   
    FWD()
    elseif F == 3 then
    gg.clearList()
    gg.clearResults()
    gg.toast('循环大范围已开启')   
    ZDFW()
end
end

function FWD()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    if gg.isVisible()==true then else
    gg.searchNumber('0.1099999993~0.1099999994', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.isVisible()==true then else
    gg.searchNumber('0.1099999993~0.1099999994', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    if gg.isVisible()==true then else
    gg.editAll('7', gg.TYPE_FLOAT)
    gg.clearResults()
    FWD()
end end end end
    xx1 = 4
    xx2 = 3.7
    xx3 = 7.6
    xx4 = 2.8
    cao1=xx1-xx4
    cao2=cao1+xx4
    cao3=xx2-xx3
    cao4=cao3+4
    cao5=xx1-1
    xx6 = cao2*-216	



function c5()
 GM = gg.alert('GM大厅开启，进入游戏即可，飞天防死有副作用〖部分手机没效果认命吧〗', '开启' ,'GM遁地防死','GM飞天防死')
if GM==1 then
HLPZ2(32)
HLPZ({{0.501960814,0},{0.10000000149,8},{1.4012985E-45,372},{0,416}},{{1.4012985E-45,416,false}},gg.REGION_C_BSS)
   elseif GM==2 then
     HLPZ2(32)
HLPZ({{100,0},{0,-4},{256,80}},{{256,4,true}}, gg.REGION_C_ALLOC)
	elseif GM==3 then
   HLPZ2(32)
HLPZ({{100,0},{0,-4},{256,80}},{{999,4,true}},gg.REGION_C_ALLOC)
   end
  end 



function WDFW()
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536205, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536207, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536203, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536198, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536201, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536199, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536210, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536200, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536211, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536206, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1056454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    WDFW()
end end end end end end end end end end end end end end end end end end end end end
function ZDFW()    
    gg.clearList()
    gg.clearResults()
    gg.setRanges(4)
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536205, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536207, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536203, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536198, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536201, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536199, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536210, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536200, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536211, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    local dataType = 4
    if gg.isVisible()==true then else
    local tb1 = {{-196616, 0x54}, {1042536206, 0xC8},}
    if gg.isVisible()==true then else
    local tb2 = {{1060454581, 0xC8, true},{0,0xC4,true}}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    ZDFW()
end end end end end end end end end end end end end end end end end end end end end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Exit()
print('🔱Welcome to the next time you use Haiwang Technology.🔱')
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '长安牛逼'
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










