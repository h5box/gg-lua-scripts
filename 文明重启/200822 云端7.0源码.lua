
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} --用于保存有效结果
    local base = Search[1][2] --(0 或主特征码后三位)(用于计算相对主特征码的偏移)
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true --保存搜索到的地址信息(全部设定为true)
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base --特征码偏移(副特征码后三位 - 主特征码后三位)
            local num = Search[k][1] --特征码
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} --添加项目
                tmp[#tmp].address = v.address + offset  --项目地址为主特征码地址+偏移量
                tmp[#tmp].flags = v.flags  --项目数据类型
            end
            
            tmp = gg.getValues(tmp) --刷新项目值
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then --判断项目值与其他特征码是否一致
                    result[i].isUseful = false --不符合过滤条件设定为false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then --筛选出符合条件的主特征码地址
                data[#data+1] = v.address
            end
        end
        --------------内存写入
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   --- 冻结项目添加到列表
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   --- 不需要可以注释掉
               end
           end
           gg.setValues(t)
          gg.toast("已修改"..#t.."条数据")
          --gg.addListItems(t)
        else
            gg.toast("开启失败", false)
            return false
        end
    else
        gg.toast("开启失败")
        return false
    end
end
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
       
        if (#data > 0) then
           gg.toast("搜索到"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                  
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        
        else
            gg.toast("not found", false)
            return false
        end
    else
        gg.toast("未搜到任何数据")
        return false
    end
end


local kqgn="⟬开启⟭"
local gbgn="⟬关闭⟭"
local cx1=kqgn
local cx2=kqgn
local cx3=kqgn
local cx4=kqgn
local cx5=kqgn
local cx6=kqgn
local cx7=kqgn
local cx8=kqgn
local cx9=kqgn
local cx10=kqgn
function yiyz_yiyz_Main()

  menu = gg.choice({
    "✡枪械功能✡",
    "✡人物功能✡",
    "✡变态功能✡",
    "✡拆家功能✡",
    "✡更新专区✡",
    "☁云端战斗模式☁",
    "✡结束云端✡"},
  2020,"反馈联系:3327597633\n云端功能感谢使用"..os.date(":现在的时间是%m月%d日 %H:%M"))
  if menu == 1 then A() end

  if menu == 2 then B() end

  if menu == 3 then C() end

  if menu == 4 then D() end

  if menu == 5 then E() end
 
  if menu == 6 then a2()a4()a5()b1()b2()end
 
  if menu == 7 then Exit() end
  XGCK=-1
end




function A()

  menu1 = gg.multiChoice({
    "☪ 中距离自瞄",
    "☪ 锁死自瞄",
    "☪ 200m自瞄",
    "☪ 冲锋全开",
    "☪ 步枪全开",
    "☪ 小范围",
    "☪ 大范围",
    "☪ 八倍镜",
    "☪ 追头",
    "☪ 人物巨手",
    "☪ 一秒开镜",
    "☪ 火箭筒瞬爆",
    "☪ 范围砍刀",
    "返回上页"},
  nil,"自瞄开一个")
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

    if menu1[14] == true then HOME() end

  end
  GLWW=-1
end




function B()

  menu1 = gg.multiChoice({
    "☪ 人物天线 ⟬开启⟭",
    "☪ 人物透视 ⟬开启⟭",
    "☪ 人物路飞 "..cx1,
    "☪ 人物放大 ⟬开启⟭",
    "☪ 人物防摔 "..cx2,
    "☪ 人物连跳 "..cx3,
    "☪ 飞天一步 ⟬开启⟭",
    "☪ 飞天二步 ⟬开启⟭",
    "☪ 地图全除 "..cx4,
    "☪ 人物加速 "..cx5,
    "☪ 人物蹲遁 ⟬开启⟭",
    "☪ 人物飞天 ⟬开启⟭",
    "返回上页"},
  nil,"云端科技")
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
    "☪ 房屋透视 "..cx6,
    "☪ 趴下加速 "..cx7,
    "☪ 趴下自杀 "..cx8,
    "☪ 人物高光 "..cx9,
    "☪ 全图除草 ⟬开启⟭",
    "☪ 天空建家 ⟬开启⟭",
    "☪ 地下建家 "..cx10,
    "☪ 水上行走 ⟬开启⟭",
    "☪ 断网穿墙 ⟬开启⟭",
    "☪ 黑天变白 ⟬开启⟭",
    "☪ 挖矿加速 ⟬开启⟭",
    "☪ 隔墙吸弹 ⟬开启⟭",
    "☪ 远程爆破 ⟬开启⟭",
    "返回上页"},
  nil,"云端")
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
 
    if menu1[14] == true then HOME() end

  end

  GLWW=-1
end




function D()

  menu1 = gg.multiChoice({
    "☪ 墙壁全透视⟬开启⟭",
    "☪ 墙壁全透视 ⟬开启⟭",
    "☪ 墙壁全透视 ⟬开启⟭",
    "☪ 人物彩色 ⟬开启⟭",
    "☪ 麒麟黑色 ⟬开启⟭",
    "☪ 麒麟白色 ⟬开启⟭",
    "☪ 骁龙上色 ⟬开启⟭",
    "☪ 听歌插件 [限定]",
    "☪ 实体巨人 ⟬限定⟭",
    "☪ 云端聊天室[限定]",
    "返回上页"},
  nil,"")
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

    if menu1[11] == true then HOME() end

  end

  GLWW=-1
end

function E()
menu1 = gg.choice({
'循环天线',
'墙壁透视',
'透视关闭',
'☁云端自瞄☁',
'☁云端优化百米自瞄☁',
'☁云端首发子弹加速☁',
'秒开镜',
'云端优化全屏自瞄',
'云端优化内存自瞄',
'子弹瞄穿',
'500米自瞄测试',
'3.0自瞄',
'副功能名称13',
'返回上一页'},
nil,'云端更新专区'..os.date(":现在的时间是%m月%d日 %H:%M"))
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
if menu1 == 14 then HOME() end
GLWW=-1
end



function a1()

  gg.setRanges(16384)
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)

  gg.toast("自瞄注入中")
  gg.clearResults()
  SearchWrite({
    {4.8828148E-4, 524},
    {-128.00001525879, 2884},
    {128.37501525879, 2892}
  }, {
    {
      0,
      284,
      true
    }
  }, gg.TYPE_FLOAT, "自瞄循环开启中")
  gg.clearList()
  gg.setRanges(32)
  gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)

  gg.toast("")
  gg.clearResults()
end




function a2()

  gg.setRanges(16384)

  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)

  gg.toast("注入代码中")

  gg.clearResults()
  local Name="自瞄10%"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(16384)

  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-128.00001525879, 0xB44},{0.00048828148, 0x20C},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("10;5;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(99)
  gg.editAll("0.01", gg.TYPE_FLOAT)

  gg.toast("🔥死锁")

  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)

  gg.toast("注入指针")

  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)

  gg.clearResults()
  gg.setRanges(16384)

  gg.toast("自瞄算法")

  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("自瞄算法"))
  gg.clearList()
  gg.setRanges(16)

  gg.searchNumber("0.0000000078;", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)

  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("0.45~0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)
  gg.getResultsCount()
  gg.addListItems({
    [1] = {
      ["address"] = 0xd18fbf58,
      ["flags"] = 16,
      ["freeze"] = true,
      ["value"] = 0.01,
    },
  })
  gg.toast("枪械自瞄已开启")

end




function a3()
gg.clearResults()
gg.setRanges(16384)
local Name="自瞄"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
local tp2 = {{0, 0x11C, true},}
SearchWrite(tb1, tp2, dataType,Name)
gg.clearList()
gg.clearResults()
gg.setRanges(16384)
local Name="自瞄"
local dataType = gg.TYPE_FLOAT
local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
local tp2 = {{"0", 0xBE453028, true},}
SearchWrite(tb1, tp2, dataType,Name)
gg.clearList()
gg.clearResults()
gg.setRanges(16384)
local Name="自瞄"
local dataType = gg.TYPE_FLOAT
local tb1 = {{"0.00048828148", 0xBE4525D8},{"-128.00001525879", 0xBE452F44},{"128.37501525879", 0xBE452F4C}}
local tp2 = {{"10", 0xBE453190, true},}
SearchWrite(tb1, tp2, dataType,Name)
gg.clearList()
end




function a4()
gg.clearResults(gg.REGION_C_ALLOC)
local Name="sam"
local tb1={{"0.8845000267",0xCAF4},{"1",0xCAEC},{"0.5",0xCADC}}
local tb2={{"0.1",0xCB98},}
local dataType=gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType,Name)
gg.clearResults(gg.REGION_C_ALLOC)
local Name="uzi"
local tb1={{"0.00229999842",0x9C66F578},{"0.92049998045",0x9C66F574},{"0.01530000102",0x9C66F570}}
local tb2={{"0.1",0x9C66F618},}
local dataType=gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType,Name)
gg.setRanges(32)
SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,false}},
gg.REGION_C_BSS, ("SMG无后"))
gg.clearList()
SearchWrite({{300, 0},{1, 4}}, {{1000000000,0,false}},
gg.REGION_C_BSS, ("SMG瞬击"))
gg.clearList()
gg.setRanges(32)
SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
gg.REGION_C_BSS, ("乌兹无后"))
gg.clearList()
SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
gg.REGION_C_BSS, ("乌兹瞬击"))
gg.clearList()
SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
gg.REGION_C_BSS, ("乌兹射速加快"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
gg.REGION_C_BSS, ("乌兹射速加快"))
gg.clearList()
gg.toast("UZI开启成功")
gg.setRanges(32)
SearchWrite({{40, 3908},{7, 3920},{15, 3932}}, {{0.00999999978,3920,true}},
gg.REGION_C_BSS, ("改装无后"))
gg.clearList()
SearchWrite({{-0.20000000298, 0},{1, -8},{360, -12}}, {{1.0E19,-12,false}},
gg.REGION_C_BSS, ("改装瞬击"))
gg.clearList()
SearchWrite({{290, 132},{100, 136},{80, 144}}, {{60,144,false}},
gg.REGION_C_BSS, ("改装射速加快"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.76666688919, 88},{1.2107219E-42, 80}}, {{0.00999999978,88,true}},
gg.REGION_C_BSS, ("改装秒换弹"))
gg.clearList()
end




function a5()
gg.clearResults(gg.REGION_C_ALLOC)
local Name="温馨提示:半自动秒换"
local tb1={{"1.2107219e-42",0x9BA037D0},{"0.02419999987",0x9BA03738},{"0.88510000706",0x9BA03734}}
local tb2={{"0.1",0x9BA037D8},}
local dataType=gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType,Name)
gg.setRanges(32)
SearchWrite({{10, 64},{0.10000000149, 20},{5, 80}}, {{0.00999999978,64,false}},
gg.REGION_C_BSS, ("半自动无后"))
gg.clearList()
SearchWrite({{-0.60000002384, 32},{480, 20},{80, 4}}, {{480,20,true}},
gg.REGION_C_BSS, ("半自动瞬击"))
gg.clearList()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("864D;2.16666674614::10",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2.16666674614",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("0.1", gg.TYPE_FLOAT)
gg.toast("半自动无后瞬击秒换弹开启成功")
gg.clearResults()
gg.setRanges(32)
SearchWrite({{-20, 64},{5, 48},{10, 32}}, {{0.00999999978,32,false}},
gg.REGION_C_BSS, ("AK无后"))
gg.clearList()
SearchWrite({{480, 228},{1, 232},{0.375, 248}}, {{1000000000,228,false}},
gg.REGION_C_BSS, ("AK瞬击"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
gg.REGION_C_BSS, ("AK秒换弹%50"))
gg.clearList()
SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
gg.REGION_C_BSS, ("AK秒换弹%100"))
gg.clearList()
gg.setRanges(32)
SearchWrite({{0.10000000149, 36},{6, 80},{4, 96}}, {{0.00999999978,80,false}},
gg.REGION_C_BSS, ("QBZ无后"))
gg.clearList()
SearchWrite({{0.375, 0},{540, -20},{-0.5, -8}}, {{1000000000,-20,false}},
gg.REGION_C_BSS, ("QBZ瞬击"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.90000009537, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,false}},
gg.REGION_C_BSS, ("QBZ秒换弹%50"))
gg.clearList()
SearchWrite({{2.03333353996, 216},{1.2107219E-42, 208}}, { {0.00999999978,216,false}},
gg.REGION_C_BSS, ("QBZ秒换弹%100"))
gg.clearList()
gg.setRanges(32)
SearchWrite({{-20, 64},{5, 48},{10, 32}}, {{0.00999999978,32,false}},
gg.REGION_C_BSS, ("M4无后"))
gg.clearList()
SearchWrite({{480, 228},{1, 232},{0.375, 248}}, {{1000000000,228,false}},
gg.REGION_C_BSS, ("M4瞬击"))
gg.clearList()
gg.setRanges(4)
SearchWrite({{2.16666674614, 152},{1.2107219E-42, 144}}, {{0.00999999978,152,true}},
gg.REGION_C_BSS, ("M4秒换弹%50"))
gg.clearList()
SearchWrite({{2.66666674614, 24},{1.2107219E-42, 16}}, {{0.00999999978,24,false}},
gg.REGION_C_BSS, ("M4秒换弹%100"))
gg.clearList()
end




function a6()
    gg.searchNumber("0.07000000100~0.07000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.07000000100~0.07000000900", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.182999999", gg.TYPE_FLOAT)
    gg.toast("稳定小范围循环中")
end




function a7()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.1099999993~0.1099999994",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("0.1099999993~0.1099999994",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("4.5",gg.TYPE_FLOAT)
  gg.clearResults()
  a7()
end




function a8()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    local Name = "八倍"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {
      {"400", 3000264620},
      {"-360", 3000264676},
      {"360", 3000264680},
      {"80", 3000264672},
      {"-70", 3000264668}
    }
    local tp2 = {
      {
        8,
        3000264692,
        true
      }
    }
    SearchWrite(tb1, tp2, dataType, Name)
    gg.clearList()
    gg.toast("人物八倍镜开启")
end




function a9()
gg.clearResults()
 gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('0.11000000000~0.11000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.11000000000~0.11000090000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll('5', gg.TYPE_FLOAT)
  gg.clearResults()
end

function a10()
   qmnb = {
{["memory"] = 4},
{["name"] = "拳头放大"},
{["value"] = 0.99999988079, ["type"] = 16},
{["lv"] = 0.9999999404, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.00000011921, ["offset"] = 32, ["type"] = 16},
{["lv"] = 1, ["offset"] = 44, ["type"] = 16},
{["lv"] = 1, ["offset"] = 48, ["type"] = 16},
{["lv"] = 1, ["offset"] = 52, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 44, ["type"] = 16},
{["value"] = 10, ["offset"] = 48, ["type"] = 16},
{["value"] = 10, ["offset"] = 52, ["type"] = 16},
}
xqmnb(qmnb)
end



function a11()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="温馨提示:秒开镜"
  local tb1={{"0.10000000149",0xCFA2A858},{"0.20000000298",0xCFA2A854},{"3.99000000954",0xCFA2A830}}
  local tb2={{"9",0xCFA2A890,true},}
  local dataType=gg.TYPE_FLOAT
  SearchWrite(tb1,tb2,dataType,Name)
end


function a12()
  Gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("10", gg.TYPE_FLOAT)

  gg.toast("火箭弹瞬爆部分机型无效")
end

function a13()
Gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.11000000000~0.11000090000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("5.3", gg.TYPE_FLOAT)
  gg.toast("特别注意开启前五分钟不用打人")
end

function b1()
 gg.clearResults()
 gg.setRanges(4)
 gg.searchNumber('0.16947640479', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('999', gg.REGION_C_BSS)
 gg.clearResults()
 gg.setRanges(4)
 gg.searchNumber('0.16947640479', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('-999', gg.REGION_C_BSS)
 gg.clearResults()
end




function b2()

  gg.setRanges(131072)

  gg.searchNumber("2.25000309944F;2.8133309e-40F:512", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)

  gg.getResults(100)
  gg.editAll("0", gg.REGION_C_BSS)

  gg.toast("人物透视开启完毕")

  gg.clearResults()
end




function b3()

  if(cx1=="⟬开启⟭")then
    cx1=gbgn
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)

    gg.searchNumber("-0.31400001049;0.02710000053;-0.09340000153;-0.02099999972", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

    gg.searchNumber("-0.31400001049",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

    gg.getResults(10000)
    gg.editAll("-3.2135418",gg.TYPE_FLOAT)

    gg.toast("路飞已开启，请开镜")

    gg.clearResults()
   elseif(cx1=="⟬关闭⟭")then
    cx1=kqgn
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)

    gg.searchNumber("-3.2135418", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

    gg.searchNumber("-3.2135418",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

    gg.getResults(10000)
    gg.editAll("-0.31400001049",gg.TYPE_FLOAT)

    gg.toast("路飞已关闭，请熄镜")

    gg.clearResults()
  end

end




function b4()

  gg.clearResults()
  gg.setRanges(16384)

  gg.searchNumber("-4.5767201e22F;-2.9687729e21F;2.0F:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)
  gg.editAll("3.5", gg.TYPE_FLOAT)

  gg.toast("小巨人已开启")

  gg.clearResults()
end




function b5()

  if(cx2=="⟬开启⟭")then
    cx2=gbgn
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "配置防摔"},
      {["value"] = tonumber("8.732856156431573E-38"), ["type"] = 16},
      {["lv"] = tonumber("10000.0"), ["offset"] = 4, ["type"] = 16},
      {["lv"] = tonumber("0.6000000238418579"), ["offset"] = 8, ["type"] = 16},
      {["lv"] = tonumber("8.732389804302646E-38"), ["offset"] = 12, ["type"] = 16},
    }
    qmxg = {
      {["value"] = tonumber("999"), ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
   elseif(cx2=="⟬关闭⟭")then
    cx2=kqgn
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "取消防摔配置"},
      {["value"] = tonumber("8.732856156431573E-38"), ["type"] = 16},
      {["lv"] = tonumber("10000.0"), ["offset"] = 4, ["type"] = 16},
      {["lv"] = tonumber("999.0"), ["offset"] = 8, ["type"] = 16},
      {["lv"] = tonumber("8.732389804302646E-38"), ["offset"] = 12, ["type"] = 16},
    }
    qmxg = {
      {["value"] = tonumber("0.60000002384"), ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
  end

end



function b6()

  if(cx3=="⟬开启⟭")then
    cx3=gbgn
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "人物踏空"},
      {["value"] = tonumber("-8.149814766321303E22"), ["type"] = 16},
      {["lv"] = tonumber("-3.868573229644656E25"), ["offset"] = 4, ["type"] = 16},
      {["lv"] = tonumber("1.0"), ["offset"] = 8, ["type"] = 16},
      {["lv"] = tonumber("1.0099999904632568"), ["offset"] = 24, ["type"] = 16},
      {["lv"] = tonumber("-6.159909147469718E27"), ["offset"] = 44, ["type"] = 16},
      {["lv"] = tonumber("-9.546223835141898E20"), ["offset"] = 48, ["type"] = 16},
    }
    qmxg = {
      {["value"] = tonumber("0.1"), ["offset"] = 8, ["type"] = 16},
    }
    xqmnb(qmnb)
   elseif(cx3=="⟬关闭⟭")then
    cx3=kqgn
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "人物踏空关闭"},
      {["value"] = tonumber("-1.0680274042851373E28"), ["type"] = 16},
      {["lv"] = tonumber("-8.149814766321303E22"), ["offset"] = 4, ["type"] = 16},
      {["lv"] = tonumber("-3.868573229644656E25"), ["offset"] = 8, ["type"] = 16},
      {["lv"] = tonumber("0.10000000149011612"), ["offset"] = 12, ["type"] = 16},
      {["lv"] = tonumber("1.0099999904632568"), ["offset"] = 28, ["type"] = 16},
      {["lv"] = tonumber("-6.159909147469718E27"), ["offset"] = 48, ["type"] = 16},
      {["lv"] = tonumber("-9.546223835141898E20"), ["offset"] = 52, ["type"] = 16},
      {["lv"] = tonumber("-2.726022650576745E28"), ["offset"] = 56, ["type"] = 16},
    }
    qmxg = {
      {["value"] = tonumber("1"), ["offset"] = 12, ["type"] = 16},
    }
    xqmnb(qmnb)
  end

end




function b7()
  Qmnb = {
    {memory = 16384},
    {
      name = "注入飞天"
    },
    {value = 8.732856156431573E-38, type = 16},
    {
      lv = 10000,
      offset = 4,
      type = 16
    },
    {
      lv = 0.6000000238418579,
      offset = 8,
      type = 16
    },
    {
      lv = 8.732389804302646E-38,
      offset = 12,
      type = 16
    }
  }
  qmxg = {
    {
      value = 999,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.toast("冻结时隔改为1200")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(999999)
  sl = gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 0.83
      }
    })
  end
  gg.toast("滑动修改器飞天")
end



function b8()
  qmnb = {
    {memory = 16384},
    {
      name = "冻结时隔要改1200"
    },
    {value = 8.732856156431573E-38, type = 16},
    {
      lv = 10000,
      offset = 4,
      type = 16
    },
    {
      lv = 999,
      offset = 8,
      type = 16
    },
    {
      lv = 8.732389804302646E-38,
      offset = 12,
      type = 16
    }
  }
  qmxg = {
    {
      value = 0.60000002384,
      offset = 8,
      type = 16
    }
  }
  xqmnb(qmnb)
end

function b9()

  if(cx4=="⟬开启⟭")then
    cx4=gbgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("0.81399995089", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(100)
    gg.editAll("10.123", gg.TYPE_FLOAT)

    gg.toast("透视")

    gg.setRanges(gg.REGION_CODE_APP)

    gg.setVisible(false)
    gg.clearList()
   elseif(cx4=="⟬关闭⟭")then
    cx4=kqgn
    gg.clearResults()
    gg.setRanges(16384)

    gg.searchNumber("10.123", 16, false, gg.SIGN_EQUAL,0,-1, 0, -1)

    gg.getResults(100)
    gg.editAll("0.81399995089", 16)

    gg.toast("透视关闭")

    gg.clearResults()
  end

end



function b10()

  if(cx5=="⟬开启⟭")then
    cx5=gbgn
    gg.setRanges(16384)

    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-3.1514847E24, 53344},{1.7031426E-38, 53352},{0.14177720249, 53348},}
    local tb2 = {{0.143,53348,false},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    gg.clearResults()
   elseif(cx5=="⟬关闭⟭")then
    cx5=kqgn
    gg.setRanges(16384)

    local dataType = gg.TYPE_FLOAT
    local tb1 = {{-3.1514847E24, 53344},{1.7031426E-38, 53352},{0.143, 53348},}
    local tb2 = {{0.14177720249,53348,false},}
    SearchWrite(tb1, tb2, dataType)
    gg.clearList()
    gg.clearResults()
  end

end




function b11()

  gg.clearResults()
  gg.setRanges(16384)

  gg.searchNumber("-2.9687729e21;2.0;1.03499996662;2.0;2.06999993324",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)
  gg.editAll("2.1",gg.TYPE_FLOAT)

  gg.toast("半遁地遁地开启成功")

end

function b12()
 gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)

  gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

  gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

  gg.getResults(1)
  gg.editAll("1",gg.TYPE_FLOAT)

  gg.toast("注入飞天")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("16,256W;1.03~1.042F;16,261W;-26,214W;15,897W::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1.03~1.042", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end

  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.95}})
  end

  gg.toast("已增强效果，并为您自动退出")

  Exit()
end



function c1()

  if(cx6=="⟬开启⟭")then
    cx6=gbgn
    qmnb = {
      {["memory"] = 16384},
      {["name"] = "房屋全透开启"},
      {["value"] = tonumber("-3.6893488147419103E19"), ["type"] = 16},
      {["lv"] = tonumber("0.8139999508857727"), ["offset"] = 4, ["type"] = 16},
    }
    qmxg = {
      {["value"] = tonumber("10.123"), ["offset"] = 4, ["type"] = 16},
    }
    xqmnb(qmnb)
   elseif(cx6=="⟬关闭⟭")then
    cx6=kqgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("10.12300014496",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber("10.12300014496",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(999999)
    gg.editAll("0.81399995089",gg.TYPE_FLOAT)

    gg.toast("房屋透视已关闭")

    gg.clearResults()
  end

end





function c2()

  if(cx7=="⟬开启⟭")then
    cx7=gbgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

    gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

    gg.getResults(100)
    gg.editAll("7",gg.TYPE_FLOAT)

    gg.toast("趴下加速开启成功")

   elseif(cx7=="⟬关闭⟭")then
    cx7=kqgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("-7.4975935e19;-1.0239434e32;2.0:41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

    gg.searchNumber("7",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

    gg.getResults(100)
    gg.editAll("2",gg.TYPE_FLOAT)

    gg.toast("关闭加速")

  end

end



function c3()

  if(cx8=="⟬开启⟭")then
    cx8=gbgn
    gg.setRanges(gg.REGION_C_BSS)

    local Name="趴下自杀"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{3.7615819e-37, 0x4A00}, {1, 0x4B64},{0.13333334029, 0x4B70},}
    local tb2 = {{0.10300000012, 0x4B64, false},}
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearList()
   elseif(cx8=="⟬关闭⟭")then
    cx8=kqgn
    gg.setRanges(gg.REGION_C_BSS)

    local Name="关闭趴下自杀"
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{3.7615819e-37, 0x4A00}, {0.10300000012, 0x4B64},{0.13333334029, 0x4B70},}
    local tb2 = {{1, 0x4B64, false},}
    SearchWrite(tb1, tb2, dataType,Name)
    gg.clearList()
  end

end




function c4()

  if(cx9=="⟬开启⟭")then
    cx9=gbgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("0.04044999927",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber("0.04044999927",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(999999)
    gg.editAll("0",gg.TYPE_FLOAT)

    gg.toast("人物高光50%")

    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("0.0549999997F;-2.78598679e28F",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber("0.0549999997",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(999999)
    gg.editAll("1.3",gg.TYPE_FLOAT)

    gg.toast("人物高光100%")

   elseif(cx9=="⟬关闭⟭")then
    cx9=kqgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("1.8F;-2.78598679e28F",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber("1.8",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(999999)
    gg.editAll("0.0549999997",gg.TYPE_FLOAT)

    gg.toast("人物高光关闭成功")

  end

end




function c5()

  gg.clearResults()
  gg.setRanges(131072)

  gg.searchNumber("2.25000071526;2.25000095367;2.37554931641", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("2.25000095367", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)

  gg.toast("除草已开启")

  gg.clearResults()
end




function c6()

  gg.clearResults()
  gg.setRanges(32)

  gg.searchNumber("1,073,741,824D;1,120,403,456D;3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("3.6734198e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end

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

  gg.toast("浮空建筑开启成功")

  gg.clearResults()
end




function c7()

  if(cx10=="⟬开启⟭")then
    cx10=gbgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(800)
    gg.editAll("1.8", gg.TYPE_FLOAT)

    gg.toast("开启成功")

    gg.clearList()
   elseif(cx10=="⟬关闭⟭")then
    cx10=kqgn
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)

    gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

    gg.getResults(800)
    gg.editAll("2", gg.TYPE_FLOAT)

    gg.toast("开启成功")

    gg.clearList()
  end

end




function c8()
 gg.toast('请将冻结间隔设置为0')
 gg.setRanges(4)
 local Name='水上行走1'
 local dataType = gg.TYPE_FLOAT
 local tb1 = {{-1.0e32, 0}, {1.03999996185, 0x-24},{0, 0x4},}
 local tb2 = {{0.345, 0x-8, true},}
 SearchWrite(tb1, tb2, dataType,Name)
 local Name='水上行走2'
 local dataType = gg.TYPE_FLOAT
 local tb1 = {{-1.0e32, 0}, {1.04000091553, 0x-24},{0, 0x4},}
 local tb2 = {{0.345, 0x-8, true},}
 SearchWrite(tb1, tb2, dataType,Name)
end




function c9()

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("1,004,243,884D;999;-1D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

  gg.searchNumber("999",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

  gg.getResults(1)
  gg.editAll("9.2194229e-41",gg.TYPE_FLOAT)

  gg.toast("白天变黑")

end




function c10()

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("1,004,243,884D;9.2194229e-41;-1D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)

  gg.searchNumber("9.2194229e-41",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)

  gg.getResults(1)
  gg.editAll("999",gg.TYPE_FLOAT)

  gg.toast("黑夜变白")

end

function c11()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.14177720249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("0.1492135418", gg.TYPE_FLOAT)

  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6.30000019073", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("3.3157794", gg.TYPE_FLOAT)
  gg.toast("加速挖矿开启")
end

function c12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
	 end
	 gg.toast("隔墙吸子弹50%")
	 gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.03999996185", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("隔墙吸炮台子弹 - 开启成功")

end

function c13()
    gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("12;0;15;38.3750038147", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("12", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("远程爆破开启")

end

function d1()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('木墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('石墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('铁墙天线开启成功')
end

function d2()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('木墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('石墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('铁墙天线开启成功')
end

function d3()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('木墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('石墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('铁墙天线开启成功')
end




function d4()

  qmnb = {
    {["memory"] = 131072},
    {["name"] = ""},
    {["value"] = tonumber("0.30004882812"), ["type"] = 16},
    {["lv"] = tonumber("0.58984375"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.10998535156"), ["offset"] = 8, ["type"] = 16},
    {["lv"] = tonumber("1"), ["offset"] = 12, ["type"] = 16},
    {["lv"] = tonumber("0"), ["offset"] = 16, ["type"] = 16},
    {["lv"] = tonumber("2"), ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("999"), ["offset"] = 0, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 4, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 8, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 12, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 16, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 20, ["type"] = 16},
  }
  xqmnb(qmnb)
  qmnb = {
    {["memory"] = 1048576},
    {["name"] = "人物彩色"},
    {["value"] = tonumber("0.30004882812"), ["type"] = 16},
    {["lv"] = tonumber("0.58984375"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.10998535156"), ["offset"] = 8, ["type"] = 16},
    {["lv"] = tonumber("1"), ["offset"] = 12, ["type"] = 16},
    {["lv"] = tonumber("0"), ["offset"] = 16, ["type"] = 16},
    {["lv"] = tonumber("2"), ["offset"] = 20, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("999"), ["offset"] = 0, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 4, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 8, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 12, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 16, ["type"] = 16},
    {["value"] = tonumber("999"), ["offset"] = 20, ["type"] = 16},
  }
  xqmnb(qmnb)
end




function d5()

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(1000)
  gg.editAll("999", gg.TYPE_FLOAT)

  gg.toast("麒麟黑")

  gg.clearResults()
  gg.clearList()
end




function d6()

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("0.001953125;512;1;0.5;0.27000001073;0.60000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(1000)
  gg.editAll("-999", gg.TYPE_FLOAT)

  gg.toast("麒麟白")

  gg.clearResults()
  gg.clearList()
end




function d7()

  gg.setRanges(131072)

  local dataType = 16
  local tb1 = {{1.105377996166862E-19, 0}, {1.1020273551943589E-39, -24}, {4.833049199111716E21, 12}, }
  local tb2 = {{99, 0}, }
  SearchWrite(tb1, tb2, dataType)
  gg.clearResults()
  gg.clearList()
end




function d8()

  gg.setRanges(131072)

  local dataType = 16
  local tb1 = {{1.105377996166862E-19, 0}, {1.1020273551943589E-39, -24}, {4.833049199111716E21, 12}, }
  local tb2 = {{99, 0}, }
  SearchWrite(tb1, tb2, dataType)
  gg.clearResults()
  gg.clearList()
end



function d9()

  menu2 = gg.choice({
    " 巨人 ①",
    " 巨人 ②",
    " 返回菜单 "},
  nil,"卡离线后开" )
  if menu2 == 1 then m1() end

  if menu2 == 2 then m2() end

  if menu2 == 3 then HOME() end

  GLWW=-1
end

function m1()

  qmnb = {
    {["memory"] = 4},
    {["name"] = ""},
    {["value"] = tonumber("0.75830072165"), ["type"] = 16},
    {["lv"] = tonumber("0.00120000122"), ["offset"] = 4, ["type"] = 16},
    {["lv"] = tonumber("0.01160001103"), ["offset"] = 8, ["type"] = 16},
    {["lv"] = tonumber("1"), ["offset"] = 12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("5"), ["offset"] = 12, ["type"] = 16},

  }
  xqmnb(qmnb)
  m1()
  m1()
end


function m2()

  qmnb = {
    {["memory"] = 4},
    {["name"] = ""},
    {["value"] = tonumber("-0.65180057287"), ["type"] = 16},
    {["lv"] = tonumber("1"), ["offset"] = -28, ["type"] = 16},
    {["lv"] = tonumber("-0.07140000165"), ["offset"] = -16, ["type"] = 16},
    {["lv"] = tonumber("0.1147999987"), ["offset"] = -12, ["type"] = 16},
  }
  qmxg = {
    {["value"] = tonumber("5"), ["offset"] = -28, ["type"] = 16},

  }
  xqmnb(qmnb)
  m2()
  m2()
end

function d10()
wz="http://s3745352.jnd.wghjo.cn/"

bc = io.open("/sdcard/配置文件6.txt", "rb")
if bc == nil then
user = ""
else
bc = io.open("/sdcard/配置文件6.txt"):read("*a")
zh = bc:match("【账号】(.-)【账号】")
if bc == "" then
zh = ""
end
end
dl=gg.prompt({"名字"},{zh},{"text"})
zh = dl[1]
io.open("/sdcard/配置文件6.txt", "w"):write("【账号】" .. zh .. "【账号】"):close()
hqnrlj=wz.."cknr.php"
local nr = gg.makeRequest(hqnrlj).content
b=gg.alert(nr,"回复")
if b==1 then
fsnr=gg.prompt({"内容"},nil,{"text"})
fsnrlj=wz.."xrnr.php?wm="..zh.."&nr="..fsnr[1]
local fsnr = gg.makeRequest(fsnrlj).content
gg.alert(fsnr)
end

end

function e1()
 gg.clearResults()
 gg.setRanges(4)
 gg.searchNumber('0.16947640479', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('999', gg.REGION_C_BSS)
 gg.clearResults()
 gg.setRanges(4)
 gg.searchNumber('0.16947640479', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
 gg.getResults(999)
 gg.editAll('-999', gg.REGION_C_BSS)
 gg.clearResults()
 e1()
end



function e2()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('木墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('石墙天线开启成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('999',gg.TYPE_FLOAT)
  gg.toast('铁墙天线开启成功')
end



function e3()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822639525;4.0;0.74931889772;0.36428490281:25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('4',gg.TYPE_FLOAT)
  gg.toast('木墙天线关闭成功')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.14822684228;4.0;-0.14822591841;4.0:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('4',gg.TYPE_FLOAT)
  gg.toast('石头天线开启关闭')
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber('0.375;2.0;-0.15000064671;4.0;0.0;4.0;4.0;4.0:141',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('999',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('4',gg.TYPE_FLOAT)
  gg.toast('铁墙天线关闭成功')
end



function e4()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1246060305976059342",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("-1246060309962031104",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("1391612285224026660",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("1391612289518993956",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1905726136855492093",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1905726136855492092",gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("-1806118861628503551",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1806118861628503550",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(8)
gg.searchNumber("5688110397105982144", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("4004858560", gg.TYPE_QWORD)
gg.clearResults()
end



function e5()
  gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("自瞄觉醒中....")
  gg.clearResults()
  local Name="自瞄10%"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(16384)
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-128.00001525879, 0xB44},{0.00048828148, 0x20C},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("10;5;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("自瞄40%")
  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)
  gg.toast("自瞄60%")
  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(16384)
  gg.toast("自瞄80%")
  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("自瞄算法"))
  gg.clearList()
  gg.setRanges(16)
  gg.searchNumber("0.0000000078;", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.45~0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.getResultsCount()
  gg.addListItems({
    [1] = {
      ["address"] = 0xd18fbf58,
      ["flags"] = 16,
      ["freeze"] = true,
      ["value"] = 0.01,
    },
  })
  gg.toast("自瞄%100")
end



function e6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("999999;0.4;5;3;4D;5D'",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.4",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(9000)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("全枪子弹加速开启成功")
end



function e7()
  gg.setRanges(gg.REGION_ANONYMOUS)
  local Name="温馨提示:秒开镜"
  local tb1={{'0.10000000149',0xCFA2A858},{'0.20000000298',0xCFA2A854},{'3.99000000954',0xCFA2A830}}
  local tb2={{'9',0xCFA2A890,true},}
  local dataType=gg.TYPE_FLOAT
  SearchWrite(tb1,tb2,dataType,Name)
end



function e8()
gg.clearResults()
gg.setRanges(16384)
local Name="自瞄"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
local tp2 = {{0, 0x11C, true},}
SearchWrite(tb1, tp2, dataType,Name)
gg.clearList()
gg.clearResults()
gg.setRanges(16384)
local Name="自瞄"
local dataType = gg.TYPE_FLOAT
local tb1 = {{'0.00048828148', 0xBE4525D8},{'-128.00001525879', 0xBE452F44},{'128.37501525879', 0xBE452F4C}}
local tp2 = {{'0', 0xBE453028, true},}
SearchWrite(tb1, tp2, dataType,Name)
gg.clearList()
gg.clearResults()
gg.setRanges(16384)
local Name="自瞄"
local dataType = gg.TYPE_FLOAT
local tb1 = {{'0.00048828148', 0xBE4525D8},{'-128.00001525879', 0xBE452F44},{'128.37501525879', 0xBE452F4C}}
local tp2 = {{'10', 0xBE453190, true},}
SearchWrite(tb1, tp2, dataType,Name)
gg.clearList()
end



function e9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e10()
  gg.setRanges(16384)
    gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("500", gg.TYPE_FLOAT)
    gg.toast("500米自瞄测试")
    gg.clearResults()
    SearchWrite({
      {4.8828148E-4, 524},
      {-128.00001525879, 2884},
      {128.37501525879, 2892}
    }, {
      {
        0,
        284,
        true
      }
    }, gg.TYPE_FLOAT, "开启完毕")
    gg.clearList()
    gg.setRanges(32)
    gg.searchNumber("0.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("", gg.TYPE_FLOAT)
    gg.toast("")
    gg.clearResults()
end



function e11()

  gg.setRanges(16384)

  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)

  gg.toast("注入代码中")

  gg.clearResults()
  local Name="自瞄10%"
  local dataType = gg.TYPE_FLOAT
  local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(16384)

  local dataType = gg.TYPE_FLOAT
  local tb1 = {{-128.00001525879, 0xB44},{0.00048828148, 0x20C},{128.37501525879, 0xB4C}}
  local tp2 = {{0, 0x11C, true},}
  local tb2 = {{128.37501525879, 0xB44, false},{-128.00001525879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearResults()
  gg.clearList()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)

  gg.searchNumber("10;5;0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(99)
  gg.editAll("0.01", gg.TYPE_FLOAT)

  gg.toast("🔥死锁")

  gg.searchNumber("953,270,745", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(999)
  gg.editAll("0.00010002004", gg.TYPE_FLOAT)

  gg.toast("注入指针")

  gg.clearResults()
  gg.searchNumber("10;5;0.1;1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)

  gg.clearResults()
  gg.setRanges(16384)

  gg.toast("自瞄算法")

  SearchWrite({{-1.601712E4, 43153},{0.0999999978, 5524}}, {{0.999999978,5524,false}},
  gg.REGION_C_BSS, ("自瞄算法"))
  gg.clearList()
  gg.setRanges(16)

  gg.searchNumber("0.0000000078;", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)

  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("1,141,309,440D;1,071,225,242D;1,113,587,712D;0.25~0.55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("0.45~0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)
  gg.getResultsCount()
  gg.addListItems({
    [1] = {
      ["address"] = 0xd18fbf58,
      ["flags"] = 16,
      ["freeze"] = true,
      ["value"] = 0.01,
    },
  })
  gg.toast("枪械自瞄已开启")

end



function e12()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e13()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function Exit()

  print("云端")



end




function HOME()

  lw=1
  yiyz_yiyz_Main()
end




cs = "这里可以填QQ"
while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    yiyz_yiyz_Main()
  end
end

