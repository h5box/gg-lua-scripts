------------------------------------------------------------星辰提供的指针配置-----------------------------------------------------------------------------------
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
gg.toast(Name.."共搜索到"..#data.."个数据")
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
gg.toast(Name.."开启成功,共修改"..#t.."条数据")
else
gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了")
return false
end
else
gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了")
return false
end
end

---------------------------------------------------------------------[----菜单-----]------------------------------------------------------------------------------
function Main()
local Main=gg.multiChoice({
"星辰最强自瞄✅",
"无后防抖✅",
"透视上色✅",
"大厅一套✅",
"落地一套✅",--5
"落地功能",--6
"范围伤害✅",
"开启加速",
"关闭加速",
"终极跳机(几秒落地)",
"伤害修复(拿枪就开)",
"退出脚本(看毛没注释)",
},{
[1]=false,
[2]=false,
[3]=false,
[4]=false
},("星辰:\n想变成黑色\n你一闭眼就能看见我"),nil)
if Main==nil then
gg.toast("您已取消选择")
else
if Main[1]==true then
Zm()
end
if Main[2]==true then
WH()
end
if Main[3]==true then
TSSS()--透视
end
if Main[4]==true then
DT()
end
if Main[5]==true then
LTYT()
end
if Main[6]==true then
LD()
end
if Main[7]==true then
FWLD()
end
if Main[8]==true then
js()--加速
end
if Main[9]==true then
jsgb()--
end
if Main[10]==true then
Rc()
end
if Main[11]==true then
Sh()
end
if Main[12]==true then
gg.setVisible(true)--立刻弹出退出界面
os.exit()
end
end
XGCK=-1
end

-------------------------------------------------------------------自瞄功能------------------------------------------------------------------------------------
function Zm()
local Zm=gg.multiChoice({
"不分敌我",
"持枪圈透",
"拿枪锁人",
"趴下自瞄",
"全图距离",
"270℃范围",
"频率自瞄",
"超大预判"
},{
[1]=false,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
[6]=true,
[7]=true,
[8]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if Zm==nil then 
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if Zm[1]==true then 
DW()--队友自瞄
end
if Zm[2]==true then
qs()--持枪自瞄
end
if Zm[3]==true then
kh()--开火自瞄
end
if Zm[4]==true then
px()--趴下自瞄
end
if Zm[5]==true then
jl()--距离自瞄
end
if Zm[6]==true then
fw()--范围自瞄
end
if Zm[7]==true then 
pl()--频率自瞄
end
if Zm[8]==true then
cdyp()
end
end
XGCK=-1
end

function DW()
Name = "不分敌我" 
gg.setRanges(8)
local dataType = 16
local search = {
{-9.034019091241909E22, 0},
{-9.03402269412161E22, -20},

}
local modify = {{-9.0338317e22, -20},}
SearchWrite(search,modify,dataType,Name)
end

function qs()
Name = "持枪圈透" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.2300291650509305E23, 0},
{2.6253290925755273E-27, -44},

}
local modify = {{2.6253293e-27, -44},}
SearchWrite(search,modify,dataType,Name)
end

function kh()
Name = "持枪自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-5.902958103587057E21, -36},

}
local modify = {{-5.9029587e21 ,-36},}
SearchWrite(search,modify,dataType,Name)

Name = "开火自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)
end

function jl()
Name = "全图距离"
gg.setRanges(8)
local dataType = 16
local search = {
{-5.80536412832557E26, 0},
{1.6615353908719574E35, -8},

}

local modify = {{1.6615352e35, -8},}
SearchWrite(search,modify,dataType,Name)
end

function fw()
Name = "270℃" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.811636980541323E27, 0},
{-2.739592370665271E28, 24},

}
local modify = {{-2.7395468e28, 24},}
SearchWrite(search,modify,dataType,Name)
end

function pl()
Name = "频率自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{-6.154955385029188E27, 0},
{-9.983932770753347E27, -8},

}
local modify = {{-3.8685631e25, -4},{-9.9839906e27, -8},}
SearchWrite(search,modify,dataType,Name)
end

function px()
Name = "趴下自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{-6.152666808172427E27, 0},
{-3.8685626227668134E25, -4},

}
local modify = {{-3.8685631e25, -4},}
SearchWrite(search,modify,dataType,Name)
--[[
Name = "近战自瞄" 
gg.setRanges(8)
local dataType = 16
local search = {
{9.999999747378752E-5, 0},
{360.0, -12},
{-360.0, -8},
{180.0, -4},
{-1.0153182385499395E28, 8},

}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)
]]
end

function cdyp()
Name = "超大预判" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.8048944742214536E26, 0},
{1.6615353908719574E35, -8},

}
local modify = {{1.6615352e35, -8},}
SearchWrite(search,modify,dataType,Name)
end
-------------------------------------------------------------------无后功能------------------------------------------------------------------------------------
function WH()
local WH=gg.multiChoice({
"无后防抖",
"全枪瞬击",
"飞速子弹",
"杀猪子弹",
"全图距离",--[[
"270℃范围",
"频率自瞄",
"近战自瞄",]]
},{
[1]=true,
[2]=true,
[3]=false,
[4]=true,
[5]=true,
[6]=true,
[7]=true,
[8]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if WH==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if WH[1]==true then 
wh1()--无后
end
if WH[2]==true then
qqsj()--全枪瞬击
end
if WH[3]==true then
fszd()--飞速子弹
end
if WH[4]==true then
szzd()--趴下自瞄
end
if WH[5]==true then
jl()--距离自瞄
end
if WH[6]==true then
fw()--范围自瞄
end
if WH[7]==true then 
pl()--频率自瞄
end
if WH[8]==true then
jz()--近战自瞄]]
end
end
XGCK=-1
end

-------------------------------------------------------------------无后功能------------------------------------------------------------------------------------
function wh1()
Name = "无后" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.1368873507541788E-13, 0},
{-2.78698202667584E28, -8},

}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)

Name = "聚点"
gg.setRanges(8)
local dataType = 16
local search = {
{-6.171871492066637E27, 0},
{-3.868563083935415E25, -8},

}
local modify = {{0, -8},{0, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "防抖" 
gg.setRanges(8)
local dataType = 16
local search = {
{3.812682238410043E-21, 0},
{-3.8369227673315867E21, -8},
{8.081497676895305E-28, -4},
{8.498873666024618E-21, 4},
{-9.168046216152455E22, 8},
{-1.1773142983782998E28, 12},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "手部防抖" 
gg.setRanges(8)
local dataType = 16
local search = {
{-4.126347016759749E26, 0},
{-2.7860167749667416E28, -20},

}
local modify = {{0, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "身体防抖" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.765679500225846E27, 0},
{-2.7860167749667416E28, 4},

}
local modify = {{0, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "移动防抖" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.108018541693195E27, 0},
{-1.3697733999143556E28, -4},
{-5.729405232383493E27, 4},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end

function qqsj()
Name = "全枪瞬击" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.4278110478704994E28, 0},
{8.562694393506966E-26, -12},
{1.8175359108152E-27, -8},

}
local modify = {{-1.427802e28, 0},}
SearchWrite(search,modify,dataType,Name)
end

function fszd()
Name = "子弹飞速" 
gg.setRanges(8)
local dataType = 16
local search = {
{-3.254379949369797E30, 0},
{2.646983324423844E-23, -56},

}
local modify = {{-1.427802e28, -56},}
SearchWrite(search,modify,dataType,Name)
end

function szzd()
Name = "杀猪子弹" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.2134516850385574E23, 0},
{-1.98130876188474E28, 4},
{-2.7860151221384726E28, 12},

}
local modify = {{-1.9813085e28, 4},{-2.7859696e28, 12},}
SearchWrite(search,modify,dataType,Name)
--[[
Name = "杀猪特效" 
gg.setRanges(8)
local dataType = 16
local search = {
{2.0678125143117816E-36, 0},
{-1.3620439485143566E28, -12},

}
local modify = {{-1.3620363e28, -12},}
SearchWrite(search,modify,dataType,Name)
]]
end
-------------------------------------------------------------------大厅功能------------------------------------------------------------------------------------
function DT()
local DT=gg.multiChoice({
"除雾",
"秒刹车",
"盒子天线",
"穿车",
"车浮空",
--[[
"270℃范围",
"频率自瞄",
"近战自瞄",]]
},{
[1]=true,
[2]=false,
[3]=true,
[4]=true,
[5]=false,
--[[
[6]=true,
[7]=true,
[8]=true,]]
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if DT==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if DT[1]==true then 
cw()--除雾
end
if DT[2]==true then
msc()--秒刹车
end
if DT[3]==true then
hztx()--盒子天线
end
if DT[4]==true then
cc()--穿车
end
if DT[5]==true then
cfk()--车浮空
--[[
end
if DT[6]==true then
fw()--范围自瞄
end
if DT[7]==true then 
pl()--频率自瞄
end
if DT[8]==true then
jz()--近战自瞄
]]
end
end
XGCK=-1
end

function cw()
Name = "除雾" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.904703811392616E21, 0},
{-1.397820478929415E24, 4},
{-8.323214160614172E22, 8},
{-2.380567860130932E21, 12},
{-1.3620439485143566E28, 16},

}
local modify = {{0, 16},}
SearchWrite(search,modify,dataType,Name)
end

function msc()
Name = "秒刹车" 
gg.setRanges(16)--cb
local dataType = 16
local search = {
{20.0,0},
{100.0, -8},

}
local modify = {{999999, 0},}
SearchWrite(search,modify,dataType)
end

function hztx()
Name = "盒子天线" 
gg.setRanges(1048576)
local dataType = 16
local search = {
{14.79005432129,0},
}
local modify = {{999999, 0},}
SearchWrite(search,modify,dataType)
end

function cc()
Name = "穿车" 
gg.setRanges(8)
local dataType = 16
local search = {
{-7.792110060877923E22, 0},
{-5.902958103587057E21, -4},
{-7.795803012572367E22, 4},
{-5.905266761346037E21, 8},
{-7.792120869517028E22, 12},
{-7.792117266637326E22, 16},
{-7.792125373116656E22, 20},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end

function cfk()
Name = "车浮空" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.139455925665468E27, 0},
{-7.583908064996921E27, 4},
{-5.112866641183671E27, 8},
{-1.2793503529145021E28, 12},
{-7.600827713809233E27, 16},
{-7.600830074992474E27, 20},
{-7.593578290962217E27, 24},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end

-------------------------------------------------------------------透视功能------------------------------------------------------------------------------------
function TSSS()
local TSSS=gg.multiChoice({
"马赛克透视",
"透视",
"上色",
"天空紫色",
"透视防闪",
--[[
"270℃范围",
"频率自瞄",
"近战自瞄",]]
},{
[1]=true,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
--[[
[6]=true,
[7]=true,
[8]=true,]]
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if TSSS==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if TSSS[1]==true then 
mskts()--马赛克透视
end
if TSSS[2]==true then
ts()--透视
end
if TSSS[3]==true then
ss()--上色
end
if TSSS[4]==true then
tkss()--天空紫色
end
if TSSS[5]==true then
tsfs()--透视防闪
--[[
end
if TSSS[6]==true then
fw()--范围自瞄
end
if TSSS[7]==true then 
pl()--频率自瞄
end
if TSSS[8]==true then
jz()--近战自瞄
]]
end
end
XGCK=-1
end

function mskts()
Name = "马赛克透视" 
gg.setRanges(1048576)
local dataType = 16
local search = {
{-5.569558837351488E-40, 0},
{3.73132149886555E-40, -56},
{4.777708403940634E21, -52},
{1.8947096665982284E-40, -48},
{4.722367608769552E21, -44},
{1.1270890315539354E-19, -40},
{4.742112515435851E21, -36},
{1.8947657185368014E-40, -32},
{4.740816604643075E21, -28},
{2.8130225892242108E-40, -24},
{4.722366482869645E21, -20},
{5.689661686318978E-29, -16},
{5.792279890944613E21, -12},
{5.801375642304743E-42, -8},
{4.740814915793215E21, -4},
{4.81460301798796E21, 4},
{3.76158192263132E-37, 12},
{-5.569558837351488E-40, 0},
{9.183549615799121E-41, -360},
{1.1020385655820735E-39, -352},
{4.59181684685349E-40, -336},
{1.4693889580048243E-39, -312},
{2.250000238418579, -260},
{3.75, -228},
{4.742113641335758E21, -188},
{1.1053781254138327E-19, -136},
{7.105429051666896E-15, -112},
{2.0, 60},

}
local modify = {{5444, 0},}
SearchWrite(search,modify,dataType,Name)
end

function ts()
Name = "偏移透视" 
gg.setRanges(1048576)
local dataType = 16
local search = {
{-2.5774026602387787E-39, 0},
{6.08743511447336E21, -44},
{1.1938656539492787E-39, -40},
{6.105882421497023E21, -36},
{1.836751962113754E-40, -32},
{5.626267638530528E21, -28},
{1.010197464230225E-39, -24},
{6.087445810522475E21, -20},
{2.2040589142841107E-39, -16},
{6.105893117546138E21, -12},
{6.428554795982601E-40, -8},
{5.626278334579643E21, -4},
{5.146656796213707E21, 4},
{8.688050478813866E-44, 8},
{1.3912518743591297E-19, 12},
{2.396220373995437E-43, 16},
{1.3912520036061004E-19, 20},
{1.3312335411085762E-43, 24},
{1.3912522621000419E-19, 28},
{9.183549615799121E-41, 36},
{22682800128.0, 40},
{2.250000476837158, 44},

}
local modify = {{5444, 0,true},}
SearchWrite(search,modify,dataType,Name)
end

function ss()
Name = "上色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{8200, 0},
{-2146435070, -36},
{786441, -24},
{1661239308, -20},
{128, -16},
{539246595, -12},
{786443, -8},
{1661304844, -4},
{1194380045, 4},
{671236099, 8},
{1074794496, 12},
{200906, 16},
{1081081857, 20},
{12, 24},
{-2128609268, 28},
{2, 32},
{537133073, 36},
{69891, 48},
{1669332992, 52},

}
local modify = {{7, 0,true},}
SearchWrite(search,modify,dataType,Name)

Name = "仓库上色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{1194346760, 0},
{8200, -4},

}
local modify = {{7, -4,true},}
SearchWrite(search,modify,dataType,Name)

Name = "吉利服上色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{8200, 0},
{256, -60},
{1194380046, 4},

}
local modify = {{6, 0,true},}
SearchWrite(search,modify,dataType,Name)

Name = "冒烟上色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{8200, 0},
{8203, 8},

}
local modify = {{3, 0,true},}
SearchWrite(search,modify,dataType,Name)
end

function tkss()
Name = "天空紫色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{1669401088, 0},
{537149463, 8},
{4, 12},
{256, 24},

}
local modify = {{1669398529, 0},}
SearchWrite(search,modify,dataType,Name)
end

function tsfs()
Name = "防闪" 
gg.setRanges(1048576)
local dataType = 16
local search = {
{-1.8388534E28, 0},

}
local modify = {{-1.8388534E28, 0},}
SearchWrite(search,modify,dataType,Name)
end

-------------------------------------------------------------------落地功能------------------------------------------------------------------------------------
function LD()
local LD=gg.multiChoice({
"除草",
"范围拾取",
"击杀特效",
"地线",
"上帝视角",
"蹲下路飞",
"汽车锁油",
"秒趴",
},{
[1]=true,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
[6]=true,
[7]=true,
[8]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if LD==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if LD[1]==true then 
chucao()--除草
end
if LD[2]==true then
fwsq()--范围拾取
end
if LD[3]==true then
jstx()--击杀特效
end
if LD[4]==true then
dx()--地线
end
if LD[5]==true then
sdsj()--上帝视角
end
if LD[6]==true then
dxlf()--蹲下路飞
end
if LD[7]==true then 
qcsy()--锁油
end
if LD[8]==true then
mp()--秒趴
end
end
XGCK=-1
end

function chucao()
Name = "除草A内存" 
gg.setRanges(32)
local dataType = 16
local search = {
{8.0,0},
{1.0, 8},
{1.2000000476837158, 40},
{0.800000011920929, 48},
{1.5, 96},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType)

Name = "除草" 
gg.setRanges(32)
local dataType = 16
local search = {
{1.399999976158142,0},
{1.399999976158142, 4},
{1.9197788961249994E-43, 72},
{1.540755710453297E-33, 80},
{4.4841550858394146E-44, 128},

}
local modify = {{-99, 0},}
SearchWrite(search,modify,dataType)
Name = "除草A内存1[裸奔除草]" 
gg.setRanges(32)
local dataType = 16
local search = {
{1.399999976158142,0},
{1.399999976158142, -4},
{1.9197788961249994E-43, 68},
{1.540755710453297E-33, 76},
{4.4841550858394146E-44, 124},

}
local modify = {{-0.00001, 0},{-0.00001, -4},}
SearchWrite(search,modify,dataType)
end

function fwsq()
Name = "范围拾取" 
gg.setRanges(32)
local dataType = 16
local search = {
{20000.0,0},
{80.0, -260},
{60.0, -252},
{5.0, -124},
{200.0, -88},
{2000.0, 240},

}
local modify = {{300, -88},}
SearchWrite(search,modify,dataType)
end

function jstx()
Name = "击杀特效" 
gg.setRanges(32)
local dataType = 16
local search = {
{46.0, 0},
{10.0, -4},

}
local modify = {{0, -4},}
SearchWrite(search,modify,dataType,Name)
--[[
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45;135", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("全屏击杀特效开启失败")
else
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("全屏击杀特效")
end]]

end

function dx()
Name = "强制男装" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.8639400024140967E26, 0},
{-5.9049396874231E20, 72},
{-3.837643343271966E21, 76},

}
local modify = {{-5.9049397e20, 72},{-5.9049397e20, 76},}
SearchWrite(search,modify,dataType,Name)

Name = "地线" 
gg.setRanges(32)
local dataType = 16
local search = {
{1.0302718678190104E-8, 0},
{-0.0, 104},

}
local modify = {{9.73725, 104},}
SearchWrite(search,modify,dataType,Name)
end

function sdsj()
Name = "上帝视角" 
gg.setRanges(32)
local dataType = 16
local search = {
{220.0,0},
{2.802596928649634E-45, -12},
{25.0, 8},
{178.0, 24},
{15.0, 28},
{100.0, 36},

}
local modify = {{800, 0},}
SearchWrite(search,modify,dataType)
end

function dxlf()
Name = "蹲下路飞" 
gg.setRanges(32)
local dataType = 16
local search = {
{-0.004204273223876953, 0},
{-0.004206657409667969, -4},
{-0.10547397285699844, 4},
{-0.30011314153671265, 8},

}
local modify = {{-130, 0},}
SearchWrite(search,modify,dataType,Name)
end

function qcsy()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then--判断数据是否为0
gg.toast("汽车锁油开启失败")
else
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("❤️汽车锁油❤️")
end
end

function mp()
Name = "秒趴" 
gg.setRanges(32)
local dataType = 16
local search = {
{1.73333334923,0},
{1.5, 4},
{2.80259693E-45, 12},
{2.80259693E-45, 16},

}
local modify = {{9999999, 4},}
SearchWrite(search,modify,dataType)
end


-------------------------------------------------------------------范围功能------------------------------------------------------------------------------------
function FWLD()
local FWLD=gg.multiChoice({
"头部范围",
"头部范围2",
"新版范围",
--[[
"地线",
"上帝视角",
"蹲下路飞",
"汽车锁油",
"秒趴",]]
},{
[1]=true,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
[6]=true,
[7]=true,
[8]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if FWLD==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if FWLD[1]==true then 
tbfw()--头部范围
end
if FWLD[2]==true then
tbfw2()--头部范围2
end
if FWLD[3]==true then
xbfw()--新版范围
end
if FWLD[4]==true then
dx()--地线
end
if FWLD[5]==true then
sdsj()--上帝视角
end
if FWLD[6]==true then
dxlf()--蹲下路飞
end
if FWLD[7]==true then 
qcsy()--锁油
end
if FWLD[8]==true then
mp()--秒趴
end
end
XGCK=-1
end

function tbfw()
Name = "头部范围" 
gg.setRanges(32)
local dataType = 16
local search = {
{9.203507215715945E-5, 0},
{23.0, 16},
{25.0, 20},
{30.5, 24},

}
local modify = {{50, 16},{1000, 20},{50, 24},}
SearchWrite(search,modify,dataType,Name)
--[[
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;0.00009203507;23;25::", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then--判断数据是否为0
gg.toast("滋味范围开启失败")
else
gg.searchNumber("25", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("10000", 16)
gg.toast("滋味头部范围")
end
]]
end

function tbfw2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;25;30.5::", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then--判断数据是否为0
gg.toast("滋味范围2开启失败")
else
gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("240", 16)
gg.toast("滋味头部范围2")
end
end

function xbfw()
gg.setRanges(32)
gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then--判断数据是否为0
gg.toast("范围开启失败")
else
gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("147", gg.TYPE_FLOAT)
gg.toast("新版范围开启成功 ")
end
end


-------------------------------------------------------------------落地一套------------------------------------------------------------------------------------
function LDYT()
local LDYT=gg.multiChoice({
"循环开启",
--[[
"头部范围2",
"新版范围",
"地线",
"上帝视角",
"蹲下路飞",
"汽车锁油",
"秒趴",]]
},{
[1]=true,
[2]=true,
[3]=true,
[4]=true,
[5]=true,
[6]=true,
[7]=true,
[8]=true,
},os.date("当前时间:%Y年%m月%d日%H时%M分%S秒"),nil)
if LDYT==nil then
gg.toast("您已取消选择")
gg.setVisible(true)--立刻弹出退出界面
else
if LDYT[1]==true then 
LTYT()--循环落地功能
end
if LDYT[2]==true then
tbfw2()--头部范围2
end
if LDYT[3]==true then
xbfw()--新版范围
end
if LDYT[4]==true then
dx()--地线
end
if LDYT[5]==true then
sdsj()--上帝视角
end
if LDYT[6]==true then
dxlf()--蹲下路飞
end
if LDYT[7]==true then 
qcsy()--锁油
end
if LDYT[8]==true then
mp()--秒趴
end
end
XGCK=-1
end

function LTYT()
while true do
chucao()--除草
fwsq()--范围拾取
--jstx()--击杀特效
dx()--地线
sdsj()--上帝视角
dxlf()--蹲下路飞
qcsy()--锁油
mp()--秒趴
dx()
tbfw()--头部范围
dx()
gg.toast("点击悬浮窗即可停止运行")
gg.toast("点击悬浮窗即可停止运行")
gg.toast("点击悬浮窗即可停止运行")
gg.toast("您有3秒操作时间")
gg.sleep(3000)
if gg.isVisible(true)
then
gg.toast("已暂停循环开启")
Main()
break
end
end
end

--[[
local Md=1
local Sleep= gg.prompt({"循环间隔:默认125Ms/次"},{125},{"number"})
if Sleep==nil then gg.toast("不选间隔你玩你🐴")Md=0 Main()
else gg.toast("已设置循环间隔"..Sleep[1].."Ms/次")
local Shark=gg.choice({"循环天线","循环地线"}) 
if Shark==nil then Md=0 Main() end 
while(Md==1) do
if gg.isVisible(true)then
Md=0 Main()
gg.setVisible(false)gg.toast("已暂停")
else 
gg.sleep(Sleep[1])
]]
-------------------------------------------------------------------加速功能------------------------------------------------------------------------------------
function js()
Name = "初始翻倍" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.998268823823968E26, 0},
{-9.90656151829801E27, -28},

}
local modify = {{-9.9065426e27, -28},}
SearchWrite(search,modify,dataType,Name)

Name = "速度翻倍" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.185478338520085E27, 0},
{-9.90656151829801E27, -8},

}
local modify = {{-9.9065426e27, -8},}
SearchWrite(search,modify,dataType,Name)

Name = "彻底防拉" 
gg.setRanges(8)
local dataType = 16
local search = {
{1.448214205959717E-35, 0},
{-3.8369230488065634E21, -4},

}
local modify = {{-3.8369228e21, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "降帧防拉" 
gg.setRanges(8)
local dataType = 16
local search = {
{-7.74979423877915E19, 0},
{-3.696554574145703E20, -12},
{-3.6979967815576243E20, -8},
{-2.361517633707155E21, -4},
{-5.765670645788691E27, 4},

}
local modify = {{-5.7656701e27, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "注入加速" 
gg.setRanges(8)
local dataType = 16
local search = {
{-7.74979423877915E19, 0},
{-3.696554574145703E20, -12},
{-3.6979967815576243E20, -8},
{-2.361517633707155E21, -4},
{-2.7860151221384726E28, 20},
{-7.160887698833495E24, -80},
{-1.3093960112120882E25, -76},
{-1.306837651371768E21, -72},
{-3.6951134222649446E20, -68},
{-1.3093037774917197E25, -28},
--{-2.793752e28;296}
}
local modify = {{0, 20},}
SearchWrite(search,modify,dataType,Name)

Name = "注入加速2" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.8638977064931013E-20, 0},
{-2.793752011265682E28, -8},
{-3.7444097189855772E28, -4},
{-1.608135681930033E26, -84},
{-5.765670645788691E27, -80},
{-1.3620372191421185E28, -76},
{-5.146700626146001E27, -72},

}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
end

function jsgb()
Name = "恢复初始翻倍" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.998268823823968E26, 0},
--{-9.9065426e27, -28},
{-1.254200209618359E28, -76},
{-2.3628788466945276E21, -32},
}
local modify = {{-9.90656151829801E27, -28},}
SearchWrite(search,modify,dataType,Name)

Name = "恢复速度翻倍" 
gg.setRanges(8)
local dataType = 16
local search = {
{-5.185478338520085E27, 0},
{-5.729457768710615E27, -56},
{-5.727040507367196E27, -52},
{-1.2537165212313512E28, -48},
{-1.2464632024319876E28, -44},
}
local modify = {{-9.90656151829801E27, -8},}
SearchWrite(search,modify,dataType,Name)

Name = "恢复彻底防拉" 
gg.setRanges(8)
local dataType = 16
local search = {
{1.448214205959717E-35, 0},
--{-3.8369228e21, -4},
{-1.1903915942440579E21, -44},
{-2.9557634527827853E20, -40},
{-3.6893509258042357E20, -12},

}
local modify = {{-3.8369230488065634E21, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "恢复降帧防拉" 
gg.setRanges(8)
local dataType = 16
local search = {
{-7.74979423877915E19, 0},
{-3.696554574145703E20, -12},
{-3.6979967815576243E20, -8},
{-2.361517633707155E21, -4},

}
local modify = {{-5.765670645788691E27, 4},}
SearchWrite(search,modify,dataType,Name)

Name = "恢复加速" 
gg.setRanges(8)
local dataType = 16
local search = {
{-7.74979423877915E19, 0},
{-3.696554574145703E20, -12},
{-3.6979967815576243E20, -8},
{-2.361517633707155E21, -4},
--{-2.793752e28;296}
{-7.160887698833495E24, -80},
{-1.3093960112120882E25, -76},
{-1.306837651371768E21, -72},
{-3.6951134222649446E20, -68},
{-1.3093037774917197E25, -28},
}
local modify = {{-2.7860151221384726E28, 20},}
SearchWrite(search,modify,dataType,Name)

Name = "恢复注入加速2" 
gg.setRanges(8)
local dataType = 16
local search = {
{-1.8638977064931013E-20, 0},
{-3.7444097189855772E28, -4},
{-1.608135681930033E26, -84},
{-5.765670645788691E27, -80},
{-1.3620372191421185E28, -76},
{-5.146700626146001E27, -72},

}
local modify = {{-2.793752011265682E28, -8},}
SearchWrite(search,modify,dataType,Name)
end


-------------------------------------------------------------------退出脚本------------------------------------------------------------------------------------
print("知道的越少越快乐 想的越多越难过")
while true do
if gg.isVisible(true)then
XGCK=1
gg.setVisible(false)
end
if XGCK==1 then
Main()
end
end
Main()
--✅️by滋味制作
--🈲最稳数值别乱改
--🤭数值过大等着被腾讯拉闸