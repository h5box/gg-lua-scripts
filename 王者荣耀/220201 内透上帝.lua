function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()
XX = gg.choice({
"内透",
"上帝",
"退出"
}, nil)
  if XX == 1 then a()
end
  if XX == 2 then b()
end
  if XX == 3 then c()
end
  XGCK = -1
end

function a()
so=gg.getRangesList('libGameCore.so')[1].start
py=0x188306C
setvalue(so+py,16,-5.91679372e21)
gg.toast("内透开启成功")
end

function b()
so=gg.getRangesList('libunity.so')[1].start
py=0x324090
setvalue(so+py,16,270)
gg.toast("上帝视角开启成功")
end


function c()
os.exit()
end

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
