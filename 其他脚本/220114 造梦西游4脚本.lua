--------原创作者:oズ·九辞
--------二改死亲
--------代码非原创
--------模板自写
--------QQ:3184418040


function SHCF()
gg.alert("警告⚠️脚本执行时请勿触碰GG悬浮窗！")
os.exit()
SHCF()
end
dog=0
CS=0 --容忍次数，0则立刻送机票
function SH_searchNumber(n,type,ft,sign,r,s)
gg.setVisible(false) 
gg.searchNumber(n,type,ft,sign,r,s)
if gg.isVisible(true) then
dog=1
gg.setVisible(false) 
end 
if dog > 0 then
gg.toast('警告！\n请勿窥码，后果自负！')
dog = 0
CS=CS-1
end
if CS < 0 then
SHCF()
end
end

function Bxyz() 
 gg.alert('密码正确') 
 end
 function Noyz()
 gg.alert('密码错误')
 os.exit()
 end
 Bxjm = gg.prompt({'请输入密码'}, {[1] = 0}, {[1] = 'number'})
if Bxjm[1] =='' then print('没输入密码哦') os.exit() end
 if Bxjm[1]=='1314' then Bxyz() else Noyz() end



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
            gg.toast("搜索失败", false)
            return false
        end
    else
        gg.toast("搜索失败")
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
          -- gg.toast("搜索到"..#data.."条数据")
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
      --     gg.toast("已修改"..#t.."条数据")
           gg.addListItems(t)
        else
            gg.toast("无数据", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

gg.alert('本script由九辞简爱联手打造！\n代码并非原创！如有侵权！\n请联系企鹅🐧3151256269')
gg.alert('1.不要打时间祖巫！\n2.不要过锁妖塔80层！\n3.不要联机！\n4.过关时间请保持在1分20秒左右！')
gg.alert('秒杀为炫橙原创！\n已经过作者同意使用！')
gg.alert('感谢您对星空科技的支持！❤')

funtable = {
"造梦西游4(辅助）",
"造梦西游4(副本）",
'过关计时器(出兵开启)',
'角色无蓝耗(大厅开启)',
'美化类功能(小号娱乐)',
'退出此脚本(谢谢使用)'}
love = {
    "全人物(辅助）自动攻击(一关一开）",
    "全人物(辅助）人物高跳(一关一开）",
    "全人物(辅助）人物遁地(一关一开）",
    "全人物(辅助）人物升天(一关一开）",
    "全人物(辅助）人物反向(一关一开）",
    "全人物(辅助) 人物无敌(一关一开) ",
'副功能名称7',
'副功能名称8',
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'}
lovely = {
    "全人物(副本）倍攻(一波一开）",
    "全人物(副本）落地(一登一开）",
    "全人物(副本）跑图(一关一开）",
    "全人物(副本) 全局定怪",
    "全人物(副本) 吸怪功能",
    "全人物(副本) 右速定怪",
    "全人物(副本) 负血过检",
    "副功能名称8",
'副功能名称9',
'副功能名称10',
'副功能名称11',
'副功能名称12',
'副功能名称13',
'副功能名称14',
'副功能名称15',
'返回上一页'}
lover = {
'小白龙',
'孙悟空',
'金蝉子',
'沙悟净',
'猪八戒',
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
'返回上一页'}
kuber = {
'美化等级',
'装备美化',
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
'返回上一页'}
zbmh = {
        "「烛时套」",
        "⁣「帝空套」",
        "⁣「奢天套」",
        "⁣「朱电套」",
        "⁣「震雷套」",
        "⁣「雨萍套」",
        "⁣「风廉套」",
        "⁣「多智套」",
        "⁣「啸天套」",
        "⁣「浮行套」",
        "⁣「罗悲套」",
        "⁣「摩愿套」",
        "⁣「究天套」",
        "「白装套」",
        "「原装套」",
'返回主页'}
function Main()
menu = gg.choice(funtable,nil,os.date("当前时间%Y年-%m月-%d日%H时%M分%S秒"))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice(love,nil,'请谨慎而行٩( ๑╹ ꇴ╹)۶')
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
menu1 = gg.multiChoice(lovely,nil,'注意休息哦！( ｡• 👅 •｡｀)')
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



function C()
gg.toast("计时开始")
gg.sleep(1000)
gg.toast("当前秒数1秒")
gg.sleep(1000)
gg.toast("当前秒数2秒")
gg.sleep(1000)
gg.toast("当前秒数3秒")
gg.sleep(1000)
gg.toast("当前秒数4秒")
gg.sleep(1000)
gg.toast("当前秒数5秒")
gg.sleep(1000)
gg.toast("当前秒数6秒")
gg.sleep(1000)
gg.toast("当前秒数7秒")
gg.sleep(1000)
gg.toast("当前秒数8秒")
gg.sleep(1000)
gg.toast("当前秒数9秒")
gg.sleep(1000)
gg.toast("当前秒数10秒")
gg.sleep(1000)
gg.toast("当前秒数11秒")
gg.sleep(1000)
gg.toast("当前秒数12秒")
gg.sleep(1000)
gg.toast("当前秒数13秒")
gg.sleep(1000)
gg.toast("当前秒数14秒")
gg.sleep(1000)
gg.toast("当前秒数15秒")
gg.sleep(1000)
gg.toast("当前秒数16秒")
gg.sleep(1000)
gg.toast("当前秒数17秒")
gg.sleep(1000)
gg.toast("当前秒数18秒")
gg.sleep(1000)
gg.toast("当前秒数19秒")
gg.sleep(1000)
gg.toast("当前秒数20秒")
gg.sleep(1000)
gg.toast("当前秒数21秒")
gg.sleep(1000)
gg.toast("当前秒数22秒")
gg.sleep(1000)
gg.toast("当前秒数23秒")
gg.sleep(1000)
gg.toast("当前秒数24秒")
gg.sleep(1000)
gg.toast("当前秒数25秒")
gg.sleep(1000)
gg.toast("当前秒数27秒")
gg.sleep(1000)
gg.toast("当前秒数28秒")
gg.sleep(1000)
gg.toast("当前秒数29秒")
gg.sleep(1000)
gg.toast("当前秒数30秒")
gg.sleep(1000)
gg.toast("当前秒数31秒")
gg.sleep(1000)
gg.toast("当前秒数32秒")
gg.sleep(1000)
gg.toast("当前秒数33秒")
gg.sleep(1000)
gg.toast("当前秒数34秒")
gg.sleep(1000)
gg.toast("当前秒数35秒")
gg.sleep(1000)
gg.toast("当前秒数36秒")
gg.sleep(1000)
gg.toast("当前秒数38秒")
gg.sleep(1000)
gg.toast("当前秒数39秒")
gg.sleep(1000)
gg.toast("当前秒数40秒")
gg.sleep(1000)
gg.toast("当前秒数41秒")
gg.sleep(1000)
gg.toast("当前秒数42秒")
gg.sleep(1000)
gg.toast("当前秒数43秒")
gg.sleep(1000)
gg.toast("当前秒数44秒")
gg.sleep(1000)
gg.toast("当前秒数45秒")
gg.sleep(1000)
gg.toast("当前秒数46秒")
gg.sleep(1000)
gg.toast("当前秒数47秒")
gg.sleep(1000)
gg.toast("当前秒数48秒")
gg.sleep(1000)
gg.toast("当前秒数49秒")
gg.sleep(1000)
gg.toast("当前秒数50秒")
gg.sleep(1000)
gg.toast("当前秒数51秒")
gg.sleep(1000)
gg.toast("当前秒数52秒")
gg.sleep(1000)
gg.toast("当前秒数53秒")
gg.sleep(1000)
gg.toast("当前秒数54秒")
gg.sleep(1000)
gg.toast("当前秒数55秒")
gg.sleep(1000)
gg.toast("当前秒数56秒")
gg.sleep(1000)
gg.toast("当前秒数57秒")
gg.sleep(1000)
gg.toast("当前秒数58秒")
gg.sleep(1000)
gg.toast("当前秒数59秒")
gg.sleep(1000)
gg.toast("当前秒数60秒")
gg.sleep(1000)
gg.toast("当前时间1分01秒")
gg.sleep(1000)
gg.toast("当前时间1分02秒")
gg.sleep(1000)
gg.toast("当前时间1分03秒")
gg.sleep(1000)
gg.toast("当前时间1分04秒")
gg.sleep(1000)
gg.toast("当前时间1分05秒")
gg.sleep(1000)
gg.toast("当前时间1分06秒")
gg.sleep(1000)
gg.toast("当前时间1分07秒")
gg.sleep(1000)
gg.toast("当前时间1分08秒")
gg.sleep(1000)
gg.toast("当前时间1分09秒")
gg.sleep(1000)
gg.toast("当前时间1分10秒")
gg.sleep(1000)
gg.toast("当前时间1分11秒")
gg.sleep(1000)
gg.toast("当前时间1分12秒")
gg.sleep(1000)
gg.toast("当前时间1分13秒")
gg.sleep(1000)
gg.toast("当前时间1分14秒")
gg.sleep(1000)
gg.toast("当前时间1分15秒")
gg.sleep(1000)
gg.toast("当前时间1分16秒")
gg.sleep(1000)
gg.toast("当前时间1分17秒")
gg.sleep(1000)
gg.toast("当前时间1分18秒")
gg.sleep(1000)
gg.toast("当前时间1分19秒")
gg.sleep(1000)
gg.toast("计时结束")
end



function D()
menu1 = gg.multiChoice(lover,nil,'莎莎部分技能可能无效果！')
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
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice(kuber,nil,'请谨慎而行！凸( •̀_•́ )凸')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then e13() end
if menu1[14] == true then e14() end
if menu1[15] == true then e15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function a1()
  gg.toast("自动攻击开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  SH_searchNumber("-123D;1;-123;0;-126D;-120::401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_DWORD)
  gg.toast("自动攻击开启成功")
  gg.clearResults()
end

function a2()
  gg.toast("人物高跳开启中")
  gg.setRanges(gg.REGION_C_ALLOC)
  SH_searchNumber("-1000;1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.editAll("-500", gg.TYPE_DOUBLE)
  gg.toast("人物高跳开启成功")
end

function a3()
  gg.toast("人物遁地开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  SH_searchNumber("1D;-127D;-126D;-123D;-125D;-126D;-126D;1D::140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-125", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.toast("人物遁地开启成功")
end

function a4()
  gg.toast("人物飞天开启中")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  SH_searchNumber("-1000;1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("666", gg.TYPE_DOUBLE)
  gg.toast("人物飞天开启成功")
  gg.clearResults()
end

function a5()
  gg.toast("人物反向开启中")
  gg.clearResults()
  gg.setRanges(4)
  SH_searchNumber("100000.0E;-120D;-120D;-120D;0D;1072693248D;-120D::401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99999)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.toast("人物反向开启成功")
  gg.clearResults()
end

function a6()
	 gg.toast("人物无敌开启中")
	 gg.setRanges(4)
	 SH_searchNumber("30F;0F;-120D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 SH_searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(999)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("人物无敌开启成功")
	 gg.clearResults()
end



function a7()

end



function a8()

end



function a9()

end



function a10()

end



function a11()

end



function a12()

end



function a13()

end



function a14()

end



function a15()

end


function b1()
  gg.toast("倍攻开启中")
  gg.clearResults()
  gg.setRanges(4)
  SH_searchNumber("3000E;2000E;-127D;0D;-127D;0D;-127D;0F;-127D;0D;-127D;1D;-127D::70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500", gg.TYPE_DWORD)
  gg.toast("倍攻开启成功")
  gg.clearResults()
end

function b2()
  gg.toast("负血开启中")
  gg.clearResults()
  gg.setRanges(-1032320)
  SH_searchNumber("22000;-123W::200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-123", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-200", gg.TYPE_WORD)
  gg.clearResults()
  gg.toast("开启成功 请在50秒内切换大号关卡！")  
  gg.sleep(1000)
gg.toast("当前秒数1秒")
gg.sleep(1000)
gg.toast("当前秒数2秒")
gg.sleep(1000)
gg.toast("当前秒数3秒")
gg.sleep(1000)
gg.toast("当前秒数4秒")
gg.sleep(1000)
gg.toast("当前秒数5秒")
gg.sleep(1000)
gg.toast("当前秒数6秒")
gg.sleep(1000)
gg.toast("当前秒数7秒")
gg.sleep(1000)
gg.toast("当前秒数8秒")
gg.sleep(1000)
gg.toast("当前秒数9秒")
gg.sleep(1000)
gg.toast("当前秒数10秒")
gg.sleep(1000)
gg.toast("当前秒数11秒")
gg.sleep(1000)
gg.toast("当前秒数12秒")
gg.sleep(1000)
gg.toast("当前秒数13秒")
gg.sleep(1000)
gg.toast("当前秒数14秒")
gg.sleep(1000)
gg.toast("当前秒数15秒")
gg.sleep(1000)
gg.toast("当前秒数16秒")
gg.sleep(1000)
gg.toast("当前秒数17秒")
gg.sleep(1000)
gg.toast("当前秒数18秒")
gg.sleep(1000)
gg.toast("当前秒数19秒")
gg.sleep(1000)
gg.toast("当前秒数20秒")
gg.sleep(1000)
gg.toast("当前秒数21秒")
gg.sleep(1000)
gg.toast("当前秒数22秒")
gg.sleep(1000)
gg.toast("当前秒数23秒")
gg.sleep(1000)
gg.toast("当前秒数24秒")
gg.sleep(1000)
gg.toast("当前秒数25秒")
gg.sleep(1000)
gg.toast("当前秒数27秒")
gg.sleep(1000)
gg.toast("当前秒数28秒")
gg.sleep(1000)
gg.toast("当前秒数29秒")
gg.sleep(1000)
gg.toast("当前秒数30秒")
gg.sleep(1000)
gg.toast("当前秒数31秒")
gg.sleep(1000)
gg.toast("当前秒数32秒")
gg.sleep(1000)
gg.toast("当前秒数33秒")
gg.sleep(1000)
gg.toast("当前秒数34秒")
gg.sleep(1000)
gg.toast("当前秒数35秒")
gg.sleep(1000)
gg.toast("当前秒数36秒")
gg.sleep(1000)
gg.toast("当前秒数38秒")
gg.sleep(1000)
gg.toast("当前秒数39秒")
gg.sleep(1000)
gg.toast("当前秒数40秒")
gg.sleep(1000)
gg.toast("当前秒数41秒")
gg.sleep(1000)
gg.toast("当前秒数42秒")
gg.sleep(1000)
gg.toast("当前秒数43秒")
gg.sleep(1000)
gg.toast("当前秒数44秒")
gg.sleep(1000)
gg.toast("当前秒数45秒")
gg.sleep(1000)
gg.toast("当前秒数46秒")
gg.sleep(1000)
gg.toast("当前秒数47秒")
gg.sleep(1000)
gg.toast("当前秒数48秒")
gg.sleep(1000)
gg.toast("当前秒数49秒")
gg.sleep(1000)
  gg.toast("落地开启中")
  gg.clearResults()
  gg.setRanges(4)
  SH_searchNumber("3000E;2000E;-120D;0E;-32768W;-128B::48", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-128", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6666)
  gg.editAll("-127", gg.TYPE_BYTE)
  gg.toast("落地开启成功")
  gg.clearResults()
end

AA = true
function b3()
if AA == true then
  gg.toast("跑图开启中")
  gg.clearResults()
  gg.setRanges(4)
  SH_searchNumber("0.3E;1E;-120W;-123D;-120D;-125D::110", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-120", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_WORD)
  gg.toast("跑图开启成功，")
gg.clearList()
lovely[3] = "关闭跑图"
AA = false
else
gg.clearResults()
gg.toast("跑图恢复中")
gg.clearResults()
gg.setRanges(4)
SH_searchNumber("9999W;-123D::9", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("9999", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-120", gg.TYPE_WORD)
gg.toast("跑图恢复完成")
gg.clearResults()
gg.clearList()
lovely[3] = "全人物(副本）跑图(一关一开）"
AA = true
end
end

function b4()
gg.clearResults()
	 gg.setRanges(4)
	 SH_searchNumber("-2147483648D;-120D;0D;-32768W::20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 SH_searchNumber("-2,147,483,648", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("-2,147,483,647", gg.TYPE_DWORD)
	 gg.toast("定怪成功")
	 gg.clearResults()
  end



function b5()
gg.setRanges(4)
  SH_searchNumber("1;0.2;1D::50", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("0.2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-88", gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast("开启成功！30秒后自动恢复数据")
gg.sleep(1000)
gg.toast("当前秒数1秒")
gg.sleep(1000)
gg.toast("当前秒数2秒")
gg.sleep(1000)
gg.toast("当前秒数3秒")
gg.sleep(1000)
gg.toast("当前秒数4秒")
gg.sleep(1000)
gg.toast("当前秒数5秒")
gg.sleep(1000)
gg.toast("当前秒数6秒")
gg.sleep(1000)
gg.toast("当前秒数7秒")
gg.sleep(1000)
gg.toast("当前秒数8秒")
gg.sleep(1000)
gg.toast("当前秒数9秒")
gg.sleep(1000)
gg.toast("当前秒数10秒")
gg.sleep(1000)
gg.toast("当前秒数11秒")
gg.sleep(1000)
gg.toast("当前秒数12秒")
gg.sleep(1000)
gg.toast("当前秒数13秒")
gg.sleep(1000)
gg.toast("当前秒数14秒")
gg.sleep(1000)
gg.toast("当前秒数15秒")
gg.sleep(1000)
gg.toast("当前秒数16秒")
gg.sleep(1000)
gg.toast("当前秒数17秒")
gg.sleep(1000)
gg.toast("当前秒数18秒")
gg.sleep(1000)
gg.toast("当前秒数19秒")
gg.sleep(1000)
gg.toast("当前秒数20秒")
gg.sleep(1000)
gg.toast("当前秒数21秒")
gg.sleep(1000)
gg.toast("当前秒数22秒")
gg.sleep(1000)
gg.toast("当前秒数23秒")
gg.sleep(1000)
gg.toast("当前秒数24秒")
gg.sleep(1000)
gg.toast("当前秒数25秒")
gg.sleep(1000)
gg.toast("当前秒数27秒")
gg.sleep(1000)
gg.toast("当前秒数28秒")
gg.sleep(1000)
gg.toast("当前秒数29秒")
gg.sleep(1000)
gg.toast("恢复中")
gg.clearResults()
gg.setRanges(4)
  SH_searchNumber("1;-88;1D::50", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-88", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.2", gg.TYPE_DOUBLE)
  gg.toast("恢复成功")
end



function b6()
gg.setRanges(-2080896)
local dataType = 4
local tb1 = {{19636, 0}, {89637, 8}, }
local tb2 = {{0, 0}, {0 , 8}, {3 , 32}, }
SearchWrite(tb1, tb2, dataType)
end


BB = true
function b7()
if BB == true then
  gg.toast("负血开启中")
  gg.clearResults()
  gg.setRanges(-1032320)
  SH_searchNumber("22000;-123W::200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-123", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-200", gg.TYPE_WORD)
  gg.clearResults()
  gg.toast("开启成功 在点击一次即可开启落地")  
gg.clearList()
lovely[7] = "全人物(副本) 开启落地"
BB = false
else
gg.clearResults()
  gg.setRanges(4)
  SH_searchNumber("3000E;2000E;-120D;0E;-32768W;-128B::48", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  SH_searchNumber("-128", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6666)
  gg.editAll("-127", gg.TYPE_BYTE)
  gg.toast("落地开启成功")
  gg.clearResults()
gg.clearList()
lovely[7] = "全人物(副本) 负血过检"
BB = true
end
end


function b9()

end



function b10()

end



function b11()

end



function b12()

end



function b13()

end



function b14()

end



function b15()

end



function c1()

end



function c2()

end



function c3()

end



function c4()

end



function c5()

end



function c6()

end



function c7()

end



function c8()

end



function c9()

end



function c10()

end



function c11()

end



function c12()

end



function c13()

end



function c14()

end



function c15()

end



function d1()
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {25, 16}, {-127, 20}, {28, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {23, 16}, {-127, 20}, {26, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {28, 16}, {-127, 20}, {31, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {33, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {36, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {38, 16}, {-127, 20}, {45, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {56, 16}, {-127, 20}, {66, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {50, 16}, {-127, 20}, {59, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {62, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
end
--白龙



function d2()
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {23, 16}, {-127, 20}, {25, 24}, {-127, 28}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {20, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {21, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {34, 16}, {-127, 20}, {39, 24}, {-127, 28}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {29, 16}, {-127, 20}, {36, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{101, 0}, {128, 4}, {101, 8}, {-127, 16}, {45, 20}, {-127, 24}, {53, 28}, {-127, 32}, {61, 36}, {-127, 40}, }
local tb2 = {{0, 20}, {0, 28}, {0, 36}, {0, 44}, {0, 52}, {0, 60}, {0, 68}, {0, 76}, {0, 84}, {0, 92}, {0, 100}, {0, 108}, {0, 116}, {0, 124}, {0, 132}, {0, 140}, {0, 148}, {0, 156}, {0, 164}, {0, 172}, {0, 180}, {0, 188}, {0, 196}, {0, 204}, {0, 212}, {0, 220}, {0, 228}, {0, 236}, {0, 244}, {0, 252}, {0, 260}, {0, 268}, {0, 276}, {0, 284}, {0, 292}, {0, 300}, {0, 308}, {0, 316}, {0, 324}, {0, 332}, {0, 340}, {0, 348}, {0, 356}, {0, 364}, {0, 372}, {0, 380}, {0, 388}, {0, 396}, {0, 404}, {0, 412}, {0, 420}, {0, 428}, {0, 436}, {0, 444}, {0, 452}, {0, 460}, {0, 468}, {0, 476}, {0, 484}, {0, 492}, {0, 500}, {0, 508}, {0, 516}, {0, 524}, {0, 532}, {0, 540}, {0, 548}, {0, 556}, {0, 564}, {0, 572}, {0, 580}, {0, 588}, {0, 596}, {0, 604}, {0, 612}, {0, 620}, {0, 628}, {0, 636}, {0, 644}, {0, 652}, {0, 660}, {0, 668}, {0, 676}, {0, 684}, {0, 692}, {0, 700}, {0, 708}, {0, 716}, {0, 724}, {0, 732}, {0, 740}, {0, 748}, {0, 756}, {0, 764}, {0, 772}, {0, 780}, {0, 788}, {0, 796}, {0, 804}, {0, 812}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {46, 16}, {-127, 20}, {54, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
end
--悟空



function d3()
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {24, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {25, 16}, {-127, 20}, {28, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {23, 16}, {-127, 20}, {26, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {36, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {39, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {37, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {56, 16}, {-127, 20}, {67, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {59, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
end
--莎莎

function d3()
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {27, 16}, {-127, 20}, {31, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {35, 16}, {-127, 20}, {39, 24}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {49, 16}, {-127, 20}, {58, 24}, {-127, 28}, {68, 32}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {46, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {53, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {68, 16}, {269, 128}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {71, 16}, {-127, 20}, {272, 128}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {72, 16}, {273, 128}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
end
--糖糖

function d4()
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {25, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {27, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {43, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {40, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {56, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {55, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(4)
local dataType = 4
local tb1 = {{128, 0}, {101, 4}, {-127, 12}, {54, 16}, }
local tb2 = {{0, 16}, {0, 24}, {0, 32}, {0, 40}, {0, 48}, {0, 56}, {0, 64}, {0, 72}, {0, 80}, {0, 88}, {0, 96}, {0, 104}, {0, 112}, {0, 120}, {0, 128}, {0, 136}, {0, 144}, {0, 152}, {0, 160}, {0, 168}, {0, 176}, {0, 184}, {0, 192}, {0, 200}, {0, 208}, {0, 216}, {0, 224}, {0, 232}, {0, 240}, {0, 248}, {0, 256}, {0, 264}, {0, 272}, {0, 280}, {0, 288}, {0, 296}, {0, 304}, {0, 312}, {0, 320}, {0, 328}, {0, 336}, {0, 344}, {0, 352}, {0, 360}, {0, 368}, {0, 376}, {0, 384}, {0, 392}, {0, 400}, {0, 408}, {0, 416}, {0, 424}, {0, 432}, {0, 440}, {0, 448}, {0, 456}, {0, 464}, {0, 472}, {0, 480}, {0, 488}, {0, 496}, {0, 504}, {0, 512}, {0, 520}, {0, 528}, {0, 536}, {0, 544}, {0, 552}, {0, 560}, {0, 568}, {0, 576}, {0, 584}, {0, 592}, {0, 600}, {0, 608}, {0, 616}, {0, 624}, {0, 632}, {0, 640}, {0, 648}, {0, 656}, {0, 664}, {0, 672}, {0, 680}, {0, 688}, {0, 696}, {0, 704}, {0, 712}, {0, 720}, {0, 728}, {0, 736}, {0, 744}, {0, 752}, {0, 760}, {0, 768}, {0, 776}, {0, 784}, {0, 792}, {0, 800}, {0, 808}, }
SearchWrite(tb1, tb2, dataType)
end
--死猪



function e1()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1~67", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("67", gg.TYPE_DWORD)
gg.toast("等级美化成功")
gg.clearResults()
end



function e2()
menu1 = gg.multiChoice(zbmh,nil,'自慰而已！别当真哦！')
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then f7() end
if menu1[8] == true then f8() end
if menu1[9] == true then f9() end
if menu1[10] == true then f10() end
if menu1[11] == true then f11() end
if menu1[12] == true then f12() end
if menu1[13] == true then f13() end
if menu1[14] == true then f14() end
if menu1[15] == true then f15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end


function e3()

end



function e4()

end



function e5()

end



function e6()

end



function e7()

end



function e8()

end



function e9()

end



function e10()

end



function e11()

end



function e12()

end



function e13()

end



function e14()

end



function e15()

end

function f1()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("15", gg.TYPE_DWORD)
gg.toast("「烛时套」开启成功")
gg.clearResults()
end

function f2()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("14", gg.TYPE_DWORD)
gg.toast("「帝空套」开启成功")
gg.clearResults()
end

function f3()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("13", gg.TYPE_DWORD)
gg.toast("「奢天套」开启成功")
gg.clearResults()
end

function f4()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("「朱电套」开启成功")
gg.clearResults()
end


function f5()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("11", gg.TYPE_DWORD)
gg.toast("「震雷套」开启成功")
gg.clearResults()
end

function f6()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_DWORD)
gg.toast("「雨萍套」开启成功")
gg.clearResults()
end

function f7()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9", gg.TYPE_DWORD)
gg.toast("「风廉套」开启成功")
gg.clearResults()
end

function f8()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("8", gg.TYPE_DWORD)
gg.toast("「多智套」开启成功")
gg.clearResults()
end

function f9()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("「啸天套」开启成功")
gg.clearResults()
end

function f10()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("「浮行套」开启成功")
gg.clearResults()
end

function f11()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_DWORD)
gg.toast("「罗悲套」开启成功")
gg.clearResults()
end

function f12()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4", gg.TYPE_DWORD)
gg.toast("「摩愿套」开启成功")
gg.clearResults()
end

function f13()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3", gg.TYPE_DWORD)
gg.toast("「究天套」开启成功")
gg.clearResults()
end

function f14()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_DWORD)
gg.toast("「白装套」开启成功")
gg.clearResults()
end

function f15()
gg.toast("请稍等")
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
SH_searchNumber("2000~2007D;1~65D;-127D;0D;-127D;-127D;-121D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("「原装套」开启成功")
gg.clearResults()
end

function Exit()
print("谢谢使用！goodby！")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '本脚本由oズ·九辞和简爱联手打造！'
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










