local CODE_APP = 16384

local lib_name = "libUE4.so"

local libbase = 0

function getMemCpp(libname)
gg.setRanges(gg.REGION_CODE_APP)
local alloc = gg.getRangesList(libname)
for i in ipairs(alloc) do
if alloc[i].type == "r-xp" and alloc[i].state == "Xa" then
if libbase == 0 then
libbase = alloc[i].start
break
end
end
end
return libbase
end

function Write(address,flags,value) 
local iht={} 
iht[1]={} 
iht[1].address=address 
iht[1].flags=flags 
iht[1].value=value
gg.setValues(iht) 
end

function getMemoryBaseAdress(address)
if libbase == 0 then
end
return libbase + address
end

function initMemoryBase()
libbase = getMemCpp(lib_name)
if libbase == 0 then
return false
end
return true
end

function getRandom(n) 
    local t = {
        "🉑","❄","⚡","💥","✨","🌈","💫","💧","☁️","☔","🌞","🎊","🎈","🦄","🌺","🌼","🦀️","🌹","💐","🥀","🍁","☀️","🌤️","⛅","🌥️","☁️","🌦️","🌧️","⛈️","🌩️","🌨️","❄️","☔","🌈","🍒","🤍","❤️","💛","🧡","💚","💙","💜","🧸","🖤","💕","💞","💓","💗","💖","💝","🍎","🍆","🐸","🐷","🦁","🐯","🦊","🐬","🐣","🐞","🐳","🐿️",
        '😂', '🌚', '🌝', '🙄', '🙃', '😊', '😍', '😘', '😏', '😱', '😭', '😳', '😒', '🙈', '🙊', '🙉', '🌹', '❤️', '👍', '👌', '🤔', '🌈', '🤳', '🦄', '🖤', '🐮','🇦', '🇧', '🇨', '🇩', '🇪', '🇫', '🇬', '🇭', '🇮', '🇯', '🇰', '🇱', '🇲', '🇳', '🇴', '🇵', '🇶', '🇷', '🇸', '🇹', '🇺', '🇻', '🇼', '🇽', '🇾', '🇿'
    }    
    local s = ""
    for i =1, n do
        s = s .. t[math.random(#t)]        
    end;
    return s
end;
::O::
K = gg.choice({
getRandom(1)..'无后'..getRandom(1),
getRandom(1)..'防抖'..getRandom(1),
getRandom(1)..'自瞄'..getRandom(1),
getRandom(1)..'范围'..getRandom(1),
getRandom(1)..'聚点'..getRandom(1),
getRandom(1)..'除雾'..getRandom(1),
getRandom(1)..'瞬击'..getRandom(1),
getRandom(1)..'视野'..getRandom(1),
getRandom(1)..'跳远'..getRandom(1),
getRandom(1)..'加速'..getRandom(1),
getRandom(1)..'关闭加速'..getRandom(1),
getRandom(1)..'退出'..getRandom(1)},
nil,'By清池#')
if K == nil then goto Cn end
if K == 1 then goto A end
if K == 2 then goto B end
if K == 3 then goto C end
if K == 4 then goto D end
if K == 5 then goto E end
if K == 6 then goto F end
if K == 7 then goto G end
if K == 8 then goto H end
if K == 9 then goto I end
if K == 10 then goto J end
if K == 11 then goto K end
if K == 12 then goto Exit end
XGCK = -1

::A::
Lemon("无后")
so=gg.getRangesList('libUE4.so')[1].start
py=0x191EFCC
setvalue(so+py,16,0)
gg.toast("无后启动成功")
goto O


::B::
Lemon("防抖")
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x46A8B74
  setvalue(so + py, 16, 0)
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x45BB58C
  setvalue(so + py, 16, 0)
  gg.toast("防抖开启成功")
goto O


::C::
Lemon("自瞄")
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x14617DC
  setvalue(so + py, 16, 8)
  gg.toast("强力自瞄开启成功")
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x191E54C
  setvalue(so + py, 16, 0)
  gg.toast("全屏自瞄开启成功")
goto O



::D::
Lemon("范围")
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x4636AC0
  setvalue(so + py, 16, 55.5)
  gg.toast("范围开启成功")
goto O


::E::
Lemon("聚点")
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x191E720
  setvalue(so + py, 16, 0)
  gg.toast("聚点开启成功")
goto O


::F::
Lemon("除雾")
  so = gg.getRangesList("libUE4.so")[1].start
  py = 0x3B01D7C
  setvalue(so + py, 16, 0)
  gg.toast("除雾开启成功")
goto O


::G::
Lemon("瞬击")
so=gg.getRangesList('libUE4.so')[1].start
py=0x474839C
setvalue(so+py,4,10000)
gg.toast("瞬击开启成功")
goto O

::H::
Lemon("视野")
so=gg.getRangesList('libUE4.so')[1].start
py=0x46AC350
setvalue(so+py,16,263)
gg.toast("视野开启成功")
goto O

::I::
Lemon("跳远")
so=gg.getRangesList('libUE4.so')[1].start
py=0x46E92FC
setvalue(so+py,16,0)
gg.toast("跳远开启成功")
goto O



::J::
Lemon("加速").
so=gg.getRangesList('libUE4.so')[1].start
py=0x4DE029C
setvalue(so+py,16,9.7)
gg.toast("静态加速")
goto O

::K::
Lemon("关加速")
so=gg.getRangesList('libUE4.so')[1].start
py=0x4DE029C
setvalue(so+py,16,10.90734863281)
gg.toast("关闭加速")
goto O



::Exit::
Llemon(a)
os.exit()



::Cn::
while true do
  if gg.isVisible(true) then
    K = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if K == 1 then
    goto O
  end
end
