--////////////////////////////////////////////////////--
local ON="<点击开启>" 
local OFF="<点击关闭>"
local ButtonA=ON   
local ButtonB=ON
local ButtonC=ON
local ButtonD=ON
so=gg.getRangesList('libminecraftpe.so')[1].start
--////////////////////////////////////////////////////--
function Set(Dz,Lx,Sz)
local X={} X[1]={} 
X[1].address=Dz--地址
X[1].flags=Lx--类型
X[1].value=Sz--数值
gg.setValues(X) end 
--////////////////////////////////////////////////////--
function MainMenu()
Menu = gg.choice({
"极速挖掘 "..ButtonA,
"日月流逝 "..ButtonB,
"奔狼加速 "..ButtonC, 
"御剑飞行 "..ButtonD, 
"退出脚本 ",},nil,
"网易我的世界→适用版本:1.18.XX\nYxl.Just 凡事无味")
--////////////////////////////////////////////////////--
if Menu==1
then Go="A"if ButtonA==ON 
then ButtonA=OFF Back(true)
else ButtonA=ON Back(false) end end
--////////////////////////////////////////////////////--
if Menu==2
then Go="B"if ButtonB==ON 
then ButtonB=OFF Back(true)
else ButtonB=ON Back(false) end end
--////////////////////////////////////////////////////--
if Menu==3
then Go="C"if ButtonC==ON 
then ButtonC=OFF Back(true)
else ButtonC=ON Back(false) end end
--////////////////////////////////////////////////////--
if Menu==4
then Go="D"if ButtonD==ON 
then ButtonD=OFF Back(true)
else ButtonD=ON Back(false) end end
--////////////////////////////////////////////////////--
if Menu==5 then os.exit() end
--////////////////////////////////////////////////////--
ym=-1 end
function Back(To)
--////////////////////////////////////////////////////--
if Go=="A"then if To==true then 
Set(so+0x1D3CE00,4,-1979650377)
gg.toast("极速挖掘已开启")else 
Set(so+0x1D3CE00,4,-1711214921)
gg.toast("极速挖掘已关闭")end end
--////////////////////////////////////////////////////--
if Go=="B"then if To==true then 
Set(so+0x199D3C4,4,985853624) 
gg.toast("日月流逝已开启")else 
Set(so+0x199D3C4,4,717418168)
gg.toast("日月流逝已关闭")end end
--////////////////////////////////////////////////////--
if Go=="C"then if To==true then 
Set(so+0x19C16EC,4,977596080)
gg.toast("奔狼加速已开启")else 
Set(so+0x19C16EC,4,709160624)
gg.toast("奔狼加速已关闭")end end
--////////////////////////////////////////////////////--
if Go=="D"then if To==true then 
Set(so+0x2CF9B7C,4,167832976)
gg.toast("御剑飞行已开启")else 
Set(so+0x2CF9B7C,4,436268432)
gg.toast("御剑飞行已关闭")end end
--////////////////////////////////////////////////////--
end while true do if gg.isVisible(true)
then ym=1 gg.setVisible(false)end 
if ym==1 then MainMenu()end end
--////////////////////////////////////////////////////--