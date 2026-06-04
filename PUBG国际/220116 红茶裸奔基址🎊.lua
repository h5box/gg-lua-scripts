function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Main()
SN = gg.multiChoice({
"全枪无后",
"全枪聚点",
"全枪防抖",
"全枪瞬击（无用）",
"超级范围",
"全图自瞄",
"全图除草（无用）",
"全图除雾（无用）",
"交流群586940132"
  }, nil, "红茶裸奔基址")
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
    if SN[4] == true then
      a4()
    end
    if SN[5] == true then
      a5()
    end
    if SN[6] == true then
      a6()
    end
    if SN[7] == true then
      a7()
    end
    if SN[8] == true then
      a8()
    end
    if SN[9] == true then
      Exit()
    end
  end
  XGCK = -1
end



function a1()
so=gg.getRangesList("libUE4.so")[1].start
py=0x17BE224
setvalue(so+py,16,0)
gg.toast("全枪无后")
end

function a2()
so=gg.getRangesList("libUE4.so")[1].start
py=0x17BDA20
setvalue(so+py,16,0)
gg.toast("全枪聚点")
end

function a3()
so=gg.getRangesList("libUE4.so")[1].start
py=0x4227314
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x4227310
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x4227308
setvalue(so+py,16,0)
gg.toast("全枪防抖")
end


function a4()
so = gg.getRangesList("libUE4.so")[1].start
py = 66530812
setvalue(so + py, 4, 4000)
gg.toast("全枪瞬击")
end


function a5()
so=gg.getRangesList('libUE4.so')[1].start
py=0X4636AC0
setvalue(so+py,16,40)
gg.toast("超级范围")
end


function a6()
so=gg.getRangesList("libUE4.so")[1].start
py=0x13A62A8
setvalue(so+py,4,1090519040)
so=gg.getRangesList("libUE4.so")[1].start
py=0x1369C0C
setvalue(so+py,4,0)
gg.toast("全图自瞄")
end


function a7()
so = gg.getRangesList("libUE4.so")[1].start
py = 47638884
setvalue(so + py, 4, 0)
gg.toast("全图除草")
end


function a8()
so = gg.getRangesList("libUE4.so")[1].start
py = 54635212
setvalue(so + py, 32, -1759781554395021312)
so = gg.getRangesList("libUE4.so")[1].start
py = 54642216
setvalue(so + py, 32, -1759781554395021312)
so = gg.getRangesList("libUE4.so")[1].start
py = 57456024
setvalue(so + py, 32, -1759781554395021312)
gg.toast("全图除雾")
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
