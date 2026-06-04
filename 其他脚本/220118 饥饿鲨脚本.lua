function readAdd(add)
t=gg.getValues({[1]={address=add,flags=4}})
add=string.format("%X",t[1].value)
if (#add)==16 then add=add:sub(9,16) end
if (#add)==1 then add=add.."0000000" else
add=string.format("%d","0x"..add)
end
return add
end


function getAdd(so,offset,off1,off2)
add=gg.getRangesList(so)[1].start--获取so头(xa头)
add=add+offset--so头+第一次大偏移
add=readAdd(add)+off1--指针跳转1+偏移1
add=readAdd(add)+off2--指针跳转2+偏移2
add=readAdd(add)--指针跳转3 此处未加最后一次偏移 最后一次偏移放下面了
return add
end


function addListItems(address,flags,value,freeze,toast)
t={}
t[1]={}
t[1].address=address--数值的地址
t[1].flags=flags--数值的数据类型
t[1].value=value--要修改成什么值
t[1].freeze=freeze--是否冻结 冻结true 不冻结false
gg.addListItems(t)
gg.toast("<"..toast..">")--提示的内容
end


function Main()
SN=gg.choice({
'扩大视野',
"吸鱼",
"加速",

'退出'
}, nil)
if SN == 1 then a() end
if SN == 2 then b() end
if SN == 3 then c() end
if SN == 4  then 
os.exit() end XGCK=-1 end
--[[
UI函数 不用解释
]]--


function a()
add=getAdd('libil2cpp.so','0x1FA3F0C','0x5c','0x4')+'0x2e4'--getAdd()只封装了2级偏移和3级跳转这里在后面补上一级偏移
--原链:libcocos2dcpp.so+1242F98-->19C-->2A8-->2A0 == 目标值
addListItems(add,16,'4',true,'修改成功')
--add=getAdd('libunity.so')--getAdd()只封装了2级偏移和3级跳转这里在后面补上一级偏移
--原链:libcocos2dcpp.so+1242F98-->19C-->2A8-->2A0 == 目标值
--addListItems(add,16,'99999',true,'修改成功')
--gg.toast('值为'..add)
end
function b()
add=getAdd('libil2cpp.so','0x1FA3F0C','0x5c','0x4')+'0xA8'--getAdd()只封装了2级偏移和3级跳转这里在后面补上一级偏移
--原链:libcocos2dcpp.so+1242F98-->19C-->2A8-->2A0 == 目标值
addListItems(add,16,'99999',true,'修改成功')
end
function c()
add=getAdd('libil2cpp.so','0x1FA3F0C','0x5c','0x4')+'0x6C'--getAdd()只封装了2级偏移和3级跳转这里在后面补上一级偏移
--原链:libcocos2dcpp.so+1242F98-->19C-->2A8-->2A0 == 目标值
addListItems(add,16,'1.8',true,'修改成功')
end

while true do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
if XGCK==1 then Main()end
end