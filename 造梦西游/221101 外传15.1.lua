a=gg.getFile():match("[^/]*$")
if a~="外传15.1.lua" then
gg.alert("文件名已被修改,请自行还原")
os.exit()
while (true) do
end
end


Qr_NQx8sSwl='Main'
gg.clearResults() sj={} xgz={}  function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

  time=os.date("%m月%d日 %H:%M:%S",os.time())
  l=gg.getTargetInfo()
  xtxx="当前进程名称:  "..l['activities'][1]['label'].."\n包名:  "..gg.getTargetPackage().."\n交流群:553950072\n作者:游阳  当前版本:15.0\n\n当前时间: "..time
bqt={"☘️","👿","⚠️","🔰","🇨🇳","🔥","🌱","🍺","❄️","👻","✈️","🗡️","☯️","🐮","💫","🐴",}
zt=1
function Main()
local sjbq=bqt[math.random(1,#bqt)]
xz=gg.choice({
sjbq.."冒险功能"..sjbq,
sjbq.."坠龙功能"..sjbq,
sjbq.."其他功能"..sjbq,
sjbq.."使用教程"..sjbq,
sjbq.."获取新版"..sjbq,
"🚫退出脚本🚫",
},nil,xtxx)
if xz==nil then
elseif xz==1 then
mxq()
zt=2
elseif xz==2 then
zlq()
zt=3
elseif xz==3 then
qtq()
zt=4
elseif xz==4 then
jc=[[
进群问群友
群号553950072
当前版本v15.0
更新时间2022.2.1
作者:游阳
]]
fz=gg.alert(jc,"复制群号","确认")
if fz==1 then gg.copyText("553950072")
end
elseif xz==5 then
C1="https://share.weiyun.com/r2errS89"--微云链接
local C = gg.makeRequest(C1).content--
local C3 = C:match('【更新】(.-)【更新】')
local C4 = C:match('【脚本链接】(.-)【脚本链接】')
local YY =gg.makeRequest(C4).content
if C3=="开"then
gg.toast("发现新版本")
file=io.open("脚本","w+")--这个"脚本"是云脚本下载到本地的名称，
io.open("脚本", "w+"):write(YY)--YY是微云笔记里面的链接，即上面的y2
        gg.toast("更新完成\n\n已保存在本文件夹")
else
if C3=="关"then
gg.toast("\n✨已是最新版本✨")
end
end


elseif xz==6 then
os.exit(print(os.date("%H:%M:%S",os.time())..":退出"))
end
end
function mxq()
local sjbq=bqt[math.random(1,#bqt)]
SN2=gg.choice({
sjbq.."无敌"..sjbq,
sjbq.."加速"..sjbq,
sjbq.."定怪"..sjbq,
sjbq.."3倍特效高跳移速"..sjbq,
sjbq.."全法宝秒杀"..sjbq,
sjbq.."魂魄幸运秒杀"..sjbq,
sjbq.."一波结算"..sjbq,
sjbq.."步步为营"..sjbq,
sjbq.."步步为营恢复"..sjbq,
sjbq.."怪物0血"..sjbq,
sjbq.."怪物自杀『循环』"..sjbq,
sjbq.."大唐高僧称号秒杀"..sjbq,
sjbq.."返回上一页"..sjbq,
},nil,"冒险区\n注意:\n1.怪物自杀要在boss出来之前关了\n2.称号秒杀和魂魄秒杀要在加载界面开\n3.无敌要在怪物出来之前开，否则怪物也会无敌")
if SN2 ==1 then wd() end
if SN2 ==2 then js() end
if SN2 ==3 then dg() end
if SN2 ==4 then tx() end
if SN2 ==5 then fbm() end
if SN2 ==6 then hpm() end
if SN2 ==7 then pt() end
if SN2 ==8 then bbwy() end
if SN2 ==9 then bbwyhf() end
if SN2 ==10 then gwlx() end
if SN2 ==11 then gwzs() end
if SN2 ==12 then dtgsms() end
if SN2 ==13 then fh() end
if xz==nil then
end
end
function zlq()
local sjbq=bqt[math.random(1,#bqt)]
SN3=gg.choice({
sjbq.."无敌"..sjbq,
sjbq.."无限金币"..sjbq,
sjbq.."全法宝无冷却"..sjbq,
sjbq.."锤子内购属性"..sjbq,
sjbq.."模型透视"..sjbq,
sjbq.."模型透视恢复"..sjbq,
sjbq.."红点透视"..sjbq,
sjbq.."无蓝耗"..sjbq,
sjbq.."秒水晶[左]"..sjbq,
sjbq.."秒水晶[右]"..sjbq,
sjbq.."聚怪"..sjbq,
sjbq.."聚怪恢复"..sjbq,
sjbq.."刷成就"..sjbq,
sjbq.."千里眼无限透视"..sjbq,
sjbq.."返回上一页"..sjbq,
},nil,"坠龙区\n注意:\n1.无敌要敌人死了再开，否则敌人也会无敌\n2.模型透视请在结算前恢复，否则闪退")
if SN3 ==1 then zlwd() end
if SN3 ==2 then jb() end
if SN3 ==3 then fbwlq() end
if SN3 ==4 then czngsx() end
if SN3 ==5 then mxts() end
if SN3 ==6 then mxtshf() end
if SN3 ==7 then hdts() end
if SN3 ==8 then wlh() end
if SN3 ==9 then msjz() end
if SN3 ==10 then msjy() end
if SN3 ==11 then jg() end
if SN3 ==12 then jghf() end
if SN3 ==13 then scj() end
if SN3 ==14 then qlywxts() end
if SN3 ==15 then fh() end
if xz==nil then
end
end
function qtq()
local sjbq=bqt[math.random(1,#bqt)]
SN4=gg.choice({
sjbq.."佛光美化"..sjbq,
sjbq.."改英雄"..sjbq,
sjbq.."跳跳跳"..sjbq,
sjbq.."国丈关秒元素"..sjbq,
sjbq.."返回上一页"..sjbq,
},nil,"其他区")
if SN4 ==1 then fgmh() end
if SN4 ==2 then gyx() end
if SN4 ==3 then ttti() end
if SN4 ==4 then gzmys() end
if SN4 ==5 then fh() end
if xz==nil then
end
end
function fgmh()
local sjbq=bqt[math.random(1,#bqt)]
SN5=gg.choice({
sjbq.."蓝月之光美化双龙戏珠"..sjbq,
sjbq.."智盛之光美化双龙戏珠"..sjbq,
sjbq.."降魔之光美化双龙戏珠"..sjbq,
sjbq.."返回主界面"..sjbq,
},nil,"")
if SN5 ==1 then lyzg() end
if SN5 ==2 then szzg() end
if SN5 ==3 then xmzg() end
if SN5 ==4 then fh() end
if xz==nil then
end
end
function ttti()
local sjbq=bqt[math.random(1,#bqt)]
SN6=gg.choice({
sjbq.."无限跳"..sjbq,
sjbq.."自动蓄力"..sjbq,
sjbq.."秒蓄力"..sjbq,
sjbq.."返回主界面"..sjbq,
},nil,"注意: 跳起来然后暂停再开启功能")
if SN6 ==1 then wxt() end
if SN6 ==2 then zdxl() end
if SN6 ==3 then mxl() end
if SN6 ==4 then fh() end
if xz==nil then
end
end






function wd()
search(750,4,4)
py1(10,4,-32)
py1(-127,4,4)
py1(-125,4,132)
xg1(2,4,728,false)
end
function js()
search(1015598704,4,4)
py1(-2,4,-8)
xg1(0.00592857,16,0,false)
xg1(0,16,-4,false)
end
function dg()
while (true)
do
search(750,4,4)
py1(10,4,-32)
py1(-127,4,4)
py1(-125,4,132)
xg1(1,4,496,false)
if gg.isVisible() == true then gg.setVisible(false) gg.toast("已停止循环") break end end
end
function tx()
search(750,4,4)
py1(10,4,-32)
py1(-127,4,4)
py1(-125,4,132)
xg1(5,4,440,false)
--移速xg1(1,4,432,false)
end
function fbm()
search(30,4,4)
py1(-127,4,-76)
py1(-127,4,-284)
py1(30,4,8)
py1(-127,4,4)
py1(-127,4,-4)
py1(3,4,-56)
py1(2,4,-48)
xg1(20786,4,-80,false)
end
function hpm()
search(4015,4,4)
py1(-123,4,-132)
py1(-127,4,-4)
py1(-127,4,4)
xg1(99999,4,-72,false)
end
function pt()
while (true)
do
search(-121,4,4)
py1(-127,4,8)
py1(-125,4,16)
py1(-127,4,-8)
py1(-125,4,-208)
py1(-125,4,-240)
py1(-127,4,-264)
xg1(0,4,-268,false)--以前
xg1(0,4,-244,false)--以前
xg1(0,4,-212,false)--以前
--xg1(0,4,108,false)
--xg1(0,4,576,false)
--xg1(0,4,704,false)
--xg1(0,4,836,false)
--xg1(0,4,904,false)
--xg1(0,4,1232,false)
--xg1(0,4,1260,false)
--xg1(0,4,1284,false)
xg1(0,4,-156,false)
xg1(0,4,-180,false)
xg1(0,4,-212,false)
xg1(0,4,-276,false)
if gg.isVisible() == true then gg.setVisible(false) gg.toast("已停止循环") break end end
end
function bbwy()
search(1072798105,4,4)
py1(-1717986918,4,-4)
py1(-127,4,-8)
py1(-120,4,8)
py1(8000,4,12)
py1(-127,4,16)
xg1(1315859240,4,0,false)
end
function bbwyhf()
search(1315859240,4,4)
py1(-1717986918,4,-4)
py1(-127,4,-8)
py1(-120,4,8)
py1(8000,4,12)
py1(-127,4,16)
xg1(1072798105,4,0,false)
end
function gwlx()
search(-121,4,4)
py1(-121,4,8)
py1(-123,4,40)
py1(-127,4,96)
py1(-120,4,120)
xg1(0,4,128,false)
end
function gwzs()
while (true)
do
search(-121,4,4)
py1(-121,4,8)
py1(-123,4,40)
py1(-127,4,96)
py1(-120,4,120)
xg1(1,4,564,false)
xg1(1,4,452,false)
if gg.isVisible() == true then gg.setVisible(false) gg.toast("已停止循环") break end end
end
function dtgsms()
search(100001,4,4)
py1(-127,4,4)
py1(-123,4,12)
xg1(999999999,4,224,false)
end
function zlwd()
search(500,4,4)
py1(-120,4,-4)
py1(-127,4,4)
py1(-125,4,12)
py1(-125,4,20)
py1(-125,4,28)
xg1(2,4,728,false)
end
function jb()
search(500,4,4)
py1(-120,4,-4)
py1(-127,4,4)
py1(-125,4,12)
py1(-125,4,20)
py1(-125,4,28)
xg1(999999999,4,-1640,false)
end
function fbwlq()
search(1072483532,4,4)
py1(-127,4,-16)
py1(-123,4,-32)
py1(-125,4,16)
py1(-127,4,80)
xg1(4,4,-28,false)
xg1(1,4,68,false)
end
function czngsx()
search(2330,4,-2080896)
py1(-127,4,4)
py1(1,4,36)
py1(2,4,40)
py1(1,4,44)
xg1(-999999,4,0,false)
search(1016,4,4)
py1(500,4,120)
py1(40,4,136)
py1(15,4,216)
xg1(15000,4,136,false)
xg1(15000,4,120,false)
xg1(15000,4,216,false)
xg1(1000,4,128,false)
xg1(1,4,160,false)
xg1(1,4,168,false)
xg1(1,4,184,false)
xg1(1500,4,200,false)
xg1(1000,4,224,false)
xg1(1000,4,232,false)
xg1(1,4,240,false)
xg1(1,4,248,false)
end
function mxts()
search(1326477041,4,4)
py1(0,4,4)
xg1(257,4,32,true)
end
function mxtshf()
search(1326477041,4,4)
py1(0,4,4)
xg1(257,4,32,false)
end
function hdts()
search(1072483532,4,4)
py1(-121,4,-16)
py1(-127,4,-8)
xg1(999999999,4,52,false)
end
function wlh()
search(500,4,4)
py1(-120,4,-4)
py1(-127,4,4)
py1(-125,4,12)
py1(-125,4,20)
py1(-125,4,28)
xg1(1,4,24,false)
end
function msjz()
search(50000,4,4)
py1(1,4,8)
py1(-120,4,188)
py1(-125,4,212)
xg1(0,4,-32,false)
search(2139095040,4,4)
py1(1065353216,4,-8)
py1(1065353216,4,-4)
py1(0,4,4)
py1(0,4,8)
py1(0,4,12)
xg1(529,16,20,false)
xg1(882,16,16,false)
end
function msjy()
search(50000,4,4)
py1(1,4,8)
py1(-120,4,188)
py1(-125,4,212)
xg1(0,4,-32,false)
search(2139095040,4,4)
py1(1065353216,4,-8)
py1(1065353216,4,-4)
py1(0,4,4)
py1(0,4,8)
py1(0,4,12)
xg1(530,16,20,false)
xg1(6239,16,16,false)
end
function jg()
search(2139095040,4,4)
py1(1065353216,4,-8)
py1(1065353216,4,-4)
py1(0,4,4)
py1(0,4,8)
py1(0,4,12)
xg1(1222,16,20,true)
xg1(3563,16,16,true)
end
function jghf()
search(2139095040,4,4)
py1(1065353216,4,-8)
py1(1065353216,4,-4)
py1(0,4,4)
py1(0,4,8)
py1(0,4,12)
xg1(1222,16,20,false)
xg1(3563,16,16,false)
end
function scj()
search(500,4,4)
py1(-127,4,-420)
py1(-127,4,-428)
py1(-127,4,-436)
py1(-127,4,-452)
py1(-127,4,-460)
py1(-120,4,-468)
py1(-127,4,-476)
xg1(999,4,-328,false)
xg1(999,4,-400,false)
xg1(999,4,-408,false)
xg1(999,4,-416,false)
xg1(999,4,-424,false)
xg1(999,4,-432,false)
xg1(999,4,-440,false)
xg1(999,4,-448,false)
xg1(999,4,-456,false)
xg1(999,4,-464,false)
xg1(999,4,-320,false)
end
function qlywxts()
search(5000,4,4)--千里眼大招持续时间
py1(-127,4,4)
py1(-127,4,12)
py1(1000,4,16)
py1(-127,4,20)
xg1(500000000,4,0,true)
end
function gzmys()
search(1074869043,4,4)
py1(1071044886,4,-8)
py1(858993459,4,-4)
py1(-127,4,8)
py1(-127,4,16)
xg1(5,4,92,false)
xg1(5,4,100,false)
end
function wxt()
search(-121,4,4)
py1(-120,4,-24)
py1(-125,4,-16)
py1(-125,4,-8)
py1(5,4,-132)
xg1(0,4,-20,true)
end
function zdxl()
search(-121,4,4)
py1(-120,4,-24)
py1(-125,4,-16)
py1(-125,4,-8)
py1(5,4,-132)
xg1(1,4,-108,true)
end
function mxl()
search(-121,4,4)
py1(-120,4,-24)
py1(-125,4,-16)
py1(-125,4,-8)
py1(5,4,-132)
xg1(40,4,-156,true)
end
function gyx()
  yx=gg.prompt({"输入英雄序列","输入皮肤代码"},{"",""},{"number","number"})
  if yx==nil then else
    if yx[1]=="" then
    end
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("1D;-127D;-123D;-127D;-127D;101D~105D;-127D;-120D::53", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("1;101~106", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)
    gg.editAll(yx[1]..";"..yx[2], gg.TYPE_DWORD)
    gg.toast("开启成功")
  end
end
function lyzg()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1635084391;12654::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("12654", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99999)
gg.editAll("13678",gg.TYPE_DWORD)
gg.clearResults()
    gg.toast("开启成功")
end


function szzg()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,635,084,391;12,910::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("12910", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99999)
gg.editAll("13678",gg.TYPE_DWORD)
gg.clearResults()
    gg.toast("开启成功")
end


function xmzg()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1,635,084,391;13166::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("13166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99999)
gg.editAll("13678",gg.TYPE_DWORD)
gg.clearResults()
    gg.toast("开启成功")
end







function fh()
zt=1 Main()
end

while(true) do
if gg.isVisible(true) then
gg.setVisible(false)
if zt==1 then
Main()
elseif zt==2 then
mxq()
elseif zt==3 then
zlq()
elseif zt==4 then
qtq()
--[[
elseif zt==5 then
xzzz()
elseif zt==6 then
xxzz()
elseif zt==7 then
xxzz()
]]
end end end
