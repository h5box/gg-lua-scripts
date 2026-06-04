function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()
  SN = gg.multiChoice({
  "自瞄开启",
  "自瞄关闭",
  "退出"
 }, nil, "")
  if SN == nil then
  else
  if SN[1] == true then
   a1()
  end
  if SN[2] == true then
   a2()
  end
  if SN[3] == true then
   Exit()
  end
end
  XGCK = -1
end

function a1()
so=gg.getRangesList('libUE4.so')[1].start
py=0xFB2290
py1=0xFB33A4
py2=0xFB4180
py3=0x238296C
setvalue(so+py,2,1)
setvalue(so+py1,2,1)
setvalue(so+py2,2,1)
setvalue(so+py3,4,0)
end

function a2()
so=gg.getRangesList('libUE4.so')[1].start
py=0xFB2290
py1=0xFB33A4
py2=0xFB4180
py3=0x238296C
setvalue(so+py,2,0)
setvalue(so+py1,2,2)
setvalue(so+py2,2,2)
setvalue(so+py3,4,1324366404)
end

function Exit()
print("")
os.exit()
end
cs = ""

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