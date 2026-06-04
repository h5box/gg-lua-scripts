--[!!!!!!!!!]


gg.alert("欢迎使用恶魔球球辅助！")

bqt={"🌈八嘎","🌟八嘎","💎","💰","🔒","🔑","🐥","✡","💟","🔓",}--表情

local sjbq=bqt[math.random(1,#bqt)]
print(sjbq)

local Choice = gg.choice
local Toast = gg.toast
local bx = gg.isVisible
local SetVisible = gg.setVisible
local Sleep = gg.sleep

local Toggle = 1  --标识符
local On = "[开启]" 
local Off = "[关闭]"


local SwitchA = On   --开关的起始为开，代表点击即开启功能
local SwitchB = On
local SwitchC = On
local SwitchD = On
local SwitchE = On
local SwitchF = On
local SwitchG = On
local SwitchH = On

if bx(true) then
SetVisible(false)
end



gg.toast("欢迎使用")
function ToggleMenu()--开关菜单
Menu = Choice({
"吐球加速★技战室装逼☜ "..SwitchA,--功能1，switchA为开关
"吐球加速★实战秀操作☜ "..SwitchB,
"分身加速★技战室装逼☜ "..SwitchC,
"分身加速★实战秀操作☜ "..SwitchD,
"二倍视野★低端机 危☜ "..SwitchE,
"四倍视野★低端机 废☜ "..SwitchF,
"全图视野★没有形容词☜ "..SwitchG,
"更新中..... "..SwitchH,
"回到凡间"
}, nil, "恶魔欢迎你，吐球加速实战有间隔")
if Menu == 1 then
Hack = "A"
if SwitchA == On then
SwitchA = Off
HackFunction(true)--HackFunction方法，为true才能使用方法。
else
SwitchA = On
HackFunction(false)
end

elseif Menu == 2 then
Hack = "B"
if SwitchB == On then
SwitchB = Off
HackFunction(true)
else
SwitchB = On
HackFunction(false)
end

elseif Menu == 3 then
Hack = "C"
if SwitchC == On then
SwitchC = Off
HackFunction(true)
else
SwitchC = On
HackFunction(false)
end

elseif Menu == 4 then
Hack = "D"
if SwitchD == On then
SwitchD = Off
HackFunction(true)
else
SwitchD = On
HackFunction(false)
end

elseif Menu == 5 then
Hack = "E"
if SwitchE == On then
SwitchE = Off
HackFunction(true)
else
SwitchE = On
HackFunction(false)
end

elseif Menu == 6 then
Hack = "F"
if SwitchF == On then
SwitchF = Off
HackFunction(true)
else
SwitchF = On
HackFunction(false)
end

elseif Menu == 7 then
Hack = "G"
if SwitchG == On then
SwitchG = Off
HackFunction(true)
else
SwitchG = On
HackFunction(false)
end

elseif Menu == 8 then
Hack = "H"
if SwitchH == On then
SwitchH = Off
HackFunction(true)
else
SwitchH = On
HackFunction(false)
end

end
if Menu == 9 then os.exit() end
Toggle =-1
end

function HackFunction(ToF)
if Hack == "A" then 
if ToF == true then 
     gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.119999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001", gg.TYPE_FLOAT)
	 gg.toast("吐球加速开启成功⊙")
	 gg.clearResults()
--写你的开启功能代码
ToggleMenu()--主页
else
ToggleMenu()--主页
	 gg.toast("无法关闭！")
--这里写你的关闭功能代码
end

elseif Hack == "B" then
if ToF == true then
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.119999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.005", gg.TYPE_FLOAT)
	 gg.toast("吐球加速开启成功⊙")
	 gg.clearResults()
--这里写你的开启功能代码
ToggleMenu()--主页
else
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.119999999732", gg.TYPE_FLOAT)
	 gg.toast("吐球加速关闭成功⊙")
	 gg.clearResults()
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "C" then
if ToF == true then
  ToggleMenu()--主页
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.05999999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("分身加速开启成功⊙")
	 gg.clearResults()
--这里写你的开启功能代码
else
ToggleMenu()--主页
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.05999999866", gg.TYPE_FLOAT)
	 gg.toast("分身加速关闭成功⊙")
	 gg.clearResults()
--这里写你的关闭功能代码
end

elseif Hack == "D" then
if ToF == true then
  ToggleMenu()--主页
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.05999999866", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.099", gg.TYPE_FLOAT)
	 gg.toast("分身加速开启成功⊙")
	 gg.clearResults()
--这里写你的开启功能代码
else
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.099", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.099", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.05999999866", gg.TYPE_FLOAT)
	 gg.toast("分身加速关闭成功⊙")
	 gg.clearResults()
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "E" then
if ToF == true then
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("视野开启成功⊙")
	 gg.clearResults()
--这里写你的开启功能代码
ToggleMenu()--主页
else
gg.toast("不可关闭")
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "F" then
if ToF == true then
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.toast("视野开启成功⊙")
	 gg.clearResults()
--这里写你的开启功能代码
ToggleMenu()--主页
else
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT)
	 gg.toast("视野关闭成功⊙")
	 gg.clearResults()
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "G" then
if ToF == true then
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5.8", gg.TYPE_FLOAT)
	 gg.toast("视野开启成功⊙")
	 gg.clearResults()
--这里写你的开启功能代码
ToggleMenu()--主页
else
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("5.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT)
	 gg.toast("视野关闭成功⊙")
	 gg.clearResults()
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "H" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

else 

end
end

--加载页面
ToggleMenu()

--GG隐藏或者可见
while true do
if bx(true) then
SetVisible(false)
Toggle = 1
end
Sleep(100)
if Toggle == 1 then
ToggleMenu()
end
end


