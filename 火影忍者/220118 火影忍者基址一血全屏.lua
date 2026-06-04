function Main()
  SN =gg.multiChoice({
  "基址一血",
  "基址全屏",
  "退出脚本",
 }, nil, "🐧www.kjdao.net")
  if SN == nil then
  else
  if SN[1] == true then
    a1()
  end
  if SN[2] == true then
    a2()
  end
  if SN[3] == true then
    a3()
  end
end
  XGCK = -1
end

function a1()
function PS() end
function setvalue(address,flags,value) PS('') 
local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) 
end

so=gg.getRangesList('libil2cpp.so')[1].start
py=0x184F310
setvalue(so+py,4,-476053504)
gg.toast("一血开启成功")
py=0x184F4B8
setvalue(so+py,4,-476053504)
gg.toast("一血开启成功")
py=0x184F314
setvalue(so+py,4,-516948194)
gg.toast("一血开启成功")
py=0x184F4BC
setvalue(so+py,4,-516948194)
gg.toast("一血开启成功")
py=0x184F644
setvalue(so+py,4,-516948194)
gg.toast("一血开启成功")
end

function a2()
function PS() end
function setvalue(address,flags,value) PS('') 
local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) 
end

so=gg.getRangesList('libil2cpp.so')[1].start
py=0X2E02414
setvalue(so+py,4,0) --去黑边静态基址
gg.toast("全屏开启成功")
so=gg.getRangesList('libil2cpp.so')[1].start
py=0x27A7F88
setvalue(so+py,4,-476053504) --视角居中静态基址
gg.toast("全屏开启成功")
so=gg.getRangesList('libil2cpp.so')[1].start
py=0x27A7F8C
setvalue(so+py,4,-516948194) --视角居中静态基址
gg.toast("全屏开启成功")
end


function Exit()
print("脚本结束运行")
os.exit()

end
cs = "脚本结束运行"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
