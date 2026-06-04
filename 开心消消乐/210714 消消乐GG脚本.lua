if gg.alert("🌴本脚本仅用于学习交流，测试后请立即删除，切勿用于非法用途，否则一切后果由您承担，选择我同意即可继续🌴 \n🌴请选择🌴","🌴我同意承担一切后果🌴","🌴拒绝承担责任🌴") ~=1 then  print("🌴您已拒绝承担责任已停止脚本🌴")os.exit() end gg.alert("欢迎使用开心消消乐")  gg.alert("请在登录界面进度条切后台运行脚本手速要快")
 
  
    function SearchWrite(Search, Write, Type,Name)
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
if ( v.value ~= num ) then --判断项目值与其他特征码是否一致
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
--gg.toast("搜索到"..#data.."条数据")
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
gg.toast(Name.."已修改: "..#t.." 条数据")
gg.addListItems(t)
else
gg.toast(Name.."失败，没有搜索到数据", false)
return false end end end
-----------------------------------------------------------------------------------------
henga="[ 已关闭 ]"
shua="[ 已关闭 ]"
baoa="[ 已关闭 ]"
molia="[ 已关闭 ]"
function Main()
  SN = gg.choice({
  "横排炸"..henga,
  "竖排炸"..shua,
  "️全屏炸"..baoa,
  "魔力鸟️"..molia,
  "一键关闭   [ 已开启 ]️",
  },nil, "\n如果提示没有可以消除的小动物了请把横排和竖排一起打开，然后关闭横排或者竖排其中一个就可以了\n"..sj)
 if SN == nil then  else
 if SN == 1 then  onheng()  end
 if SN == 2 then  onshu()   end
 if SN == 3 then  onbao()   end
 if SN == 4 then  onmoli()  end
 if SN == 5 then  offall()    end
end XGCK = -1 
end
--gg.setVisible(false)
gg.setRanges(32) 
SearchWrite({{66818,0},{0,-84}, {0,-76}, {0,-68}, {0,-60},  {35,-40}, {33556482,-32}, {35,24},{66818,32},{2818,64},},{{33556482,-32},},4,"第一步")

cs = gg.getListItems()

if next(cs) == nil then
gg.setRanges(32) 
SearchWrite({{66817,0},{0,-84}, {0,-76}, {0,-68}, {0,-60},  {35,-40}, {33556481,-32}, {35,24},{66817,32},{2817,64},},{{33556481,-32},},4,"第一步")

cs = gg.getListItems()

end

--保存列表返回到变量getThis
hengadr = gg.getValues(cs)[1].address-52
heng = gg.getValues({[1] = {address = hengadr, flags = 64}})[1].value 
shuadr = gg.getValues(cs)[1].address-44
shu = gg.getValues({[1] = {address =shuadr , flags = 64}})[1].value
baoadr = gg.getValues(cs)[1].address-36
bao = gg.getValues({[1] = {address = baoadr, flags = 64}})[1].value
moliadr = gg.getValues(cs)[1].address-28
moli = gg.getValues({[1] = {address = moliadr, flags = 64}})[1].value

gg.clearList() --清除保存列表

gg.setRanges(32) 
SearchWrite( {{moli,0},{bao,-264}, {heng,-360}, {shu,-432}, } ,{{moli,0},{bao,-264}, {heng,-360}, {shu,-432},},64,"第二步")

  --获取值
getThis = gg.getListItems()
--保存列表的数值返回到getThis
local zshu = getThis[1].address
local zheng = getThis[2].address
--getDate获取getThis表的第一个地址 ，进行偏移获取这个值，类型
local zbao = getThis[3].address
local zmoli = getThis[4].address
gg.clearList()  --清除保存列表
print(string.format("%#x",getThis[1].address))
print(string.format("%#x",getThis[2].address))
print(string.format("%#x",getThis[3].address))
print(string.format("%#x",getThis[4].address))

function onheng()
if henga=="[ 已关闭 ]" then
henga="[ 已开启 ]️"
t={}
t[1]={}
t[1].address=hengadr
t[1].flags=64
t[1].value=0
gg.setValues(t)
t={}
t[1]={}
t[1].address=zheng
t[1].flags=64
t[1].value=0
gg.setValues(t)

else
henga="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=hengadr
t[1].flags=64
t[1].value=heng
gg.setValues(t)

t={}
t[1]={}
t[1].address=zheng
t[1].flags=64
t[1].value=heng
gg.setValues(t)
end
end

function onshu()
if shua=="[ 已关闭 ]" then
shua="[ 已开启 ]️"
t={}
t[1]={}
t[1].address=shuadr
t[1].flags=64
t[1].value=0
gg.setValues(t)
t={}
t[1]={}
t[1].address=zshu
t[1].flags=64
t[1].value=0
gg.setValues(t)
else
shua="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=shuadr
t[1].flags=64
t[1].value=shu
gg.setValues(t)
t={}
t[1]={}
t[1].address=zshu
t[1].flags=64
t[1].value=shu
gg.setValues(t)
end
end

function onbao()
if baoa=="[ 已关闭 ]" then
baoa="[ 已开启 ]️"
t={}
t[1]={}
t[1].address=baoadr
t[1].flags=64
t[1].value=0
gg.setValues(t)

t={}
t[1]={}
t[1].address=zbao
t[1].flags=64
t[1].value=0
gg.setValues(t)
else
baoa="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=baoadr
t[1].flags=64
t[1].value=bao
gg.setValues(t)

t={}
t[1]={}
t[1].address=zbao
t[1].flags=64
t[1].value=bao
gg.setValues(t)
end
end

function onmoli()

if molia=="[ 已关闭 ]" then
molia="[ 已开启 ]️"
t={}
t[1]={}
t[1].address=moliadr
t[1].flags=64
t[1].value=0
gg.setValues(t)
t={}
t[1]={}
t[1].address=zmoli
t[1].flags=64
t[1].value=0
gg.setValues(t)
else
molia ="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=moliadr
t[1].flags=64
t[1].value=moli
gg.setValues(t)
t={}
t[1]={}
t[1].address=zmoli
t[1].flags=64
t[1].value=moli
gg.setValues(t)
end
end

function offall()
henga="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=hengadr
t[1].flags=64
t[1].value=heng
gg.setValues(t)

t={}
t[1]={}
t[1].address=zheng
t[1].flags=64
t[1].value=heng
gg.setValues(t)

shua="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=shuadr
t[1].flags=64
t[1].value=shu
gg.setValues(t)
t={}
t[1]={}
t[1].address=zshu
t[1].flags=64
t[1].value=shu
gg.setValues(t)

baoa="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=baoadr
t[1].flags=64
t[1].value=bao
gg.setValues(t)

t={}
t[1]={}
t[1].address=zbao
t[1].flags=64
t[1].value=bao
gg.setValues(t)

molia="[ 已关闭 ]"
t={}
t[1]={}
t[1].address=moliadr
t[1].flags=64
t[1].value=moli
gg.setValues(t)
t={}
t[1]={}
t[1].address=zmoli
t[1].flags=64
t[1].value=moli
gg.setValues(t)

end

cs = ""
while true do
sj = os.date()
  while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end
end