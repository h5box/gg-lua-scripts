--解决闪退方法：
--[[
1.框架
2.64位光速虚拟机
把虚拟机添加到框架
游戏也是，4399游戏盒，修改器也添加到框架
然后打开虚拟机，导入游戏和4399盒子
登陆盒子，从盒子里面启动火线精英
登上火线精英后划掉虚拟机后台
回到框架打开修改器，再打开虚拟机
打开火线精英
进入到大厅点开修改器，选择进程
一定要选内存最大的
然后开启脚本就行了

PS：每次进入都要选进程
修改器每次都需要重新设置，因为每次进入进程名不一样
隐藏234，旁路没有，守护3

教程结束！




再补充个事，这脚本我一年前写的，防闪退方法也是问别人的，那时候还不会加密，所以这脚本就被二改来二改去，我就问那些二改的人，来吧，先把防闪教程加进去啊，继续二改啊，有什么用呢？

BY.墨清
--]]

function getValues(address,flag)
t={}
t[1]={}
t[1].address=address
t[1].flags=flag
t=gg.getValues(t)
return t[1].value
end
function setValues(address,flag,value,freeze)
t={}
t[1]={}
t[1].address=address
t[1].flags=flag
t[1].value=value
gg.setValues(t)
end
function freezeValues(address,flag,value,freeze)
t={}
t[1]={}
t[1].address=address
t[1].flags=flag
t[1].value=value
t[1].freeze=freeze
gg.addListItems(t)
end

addr=0
value=""
while true do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
if XGCK==1 then
menu=gg.choice({
"酷跑初始化",
"酷跑nb",
"子穿（和谐了）",
"黑屏子追",
"退出腳本"}, nil, "BY.墨清   \n说真的，放弃了\n也懒得加密了\n被二改了那么多个版本，加密也懒得加了\n就这样慢慢泛滥吧")
if menu==1 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("269967078",4)
result=gg.getResults(gg.getResultCount())
for k,v in pairs(result)do
if getValues(v.address-108,4)==0 then
if getValues(v.address+36,16)==1.875 then
if getValues(v.address+4,4)==996030752 then
if getValues(v.address+104,4)==0 then
value=getValues(v.address+68,16)
addr=v.address
freezeValues(v.address+68,16,getValues(v.address+68,16),false)
gg.toast(addr)
end
end
end
end
end
end
if menu==2 then
yz=gg.choice({
"『1』",
"『2』",
"『3』",
"『4』",
"『5』",
"『6』",
"『7』",
"『8』",
"『9』",
"『10』",
"『11』",
"『12』",
"『13』"})
if yz==nil then x=nil y=nil z=nil end
if yz==1 then
x=5.01 y=3.9 z=4.66
end
if yz==2 then
x=4.42 y=4.1 z=3.93
end
if yz==3 then
x=4.98 y=4.1 z=3.82
end
if yz==4 then
x=5.05 y=4.5 z=-4.27
end
if yz==5 then
x=4.66 y=4.3 z=-3.9
end
if yz==6 then
x=4.79 y=4.5 z=-3.86
end
if yz==7 then
x=4.91 y=4.73 z=-4.40
end
if yz==8 then
x=4.51 y=4.7 z=-4.27
end
if yz==9 then
x=4.60 y=4.75 z=-3.70
end
if yz==10 then
x=5.00 y=4.75 z=-4.27
end
if yz==11 then
x=4.88 y=4.75 z=-4.66
end
if yz==12 then
x=4.75 y=4.83 z=-3.89
end
if yz==13 then
x=4.75 y=4.83 z=3.91
end
if x~=nil and y~=nil and z~=nil then
setValues(addr+60,16,x)
setValues(addr+68,16,y)
setValues(addr+76,16,z)
gg.toast("传送成功")
end
end
if menu==3 then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.5",16)
result=gg.getResults(gg.getResultCount())
for k,v in pairs(result)do
if getValues(v.address-4,64)==0.125 then
if getValues(v.address+4,16)==-1.0 then
setValues(v.address,16,20)
gg.toast("子弹穿墙")
end
end
end
end
if menu==4 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1610612736",64)
result=gg.getResults(gg.getResultCount())
for k,v in pairs(result)do
if getValues(v.address+4,16)==27.0 then
if getValues(v.address+12,16)==1.0 then
freezeValues(v.address+4,4,-1,true)
gg.toast("全屏自瞄")
end
end
end
end
if menu==5 then os.exit()end
XGCK=-1
end
end