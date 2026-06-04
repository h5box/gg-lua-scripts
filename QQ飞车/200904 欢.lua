function Main()
  SN = gg.multiChoice({
  "🙄开启防抖🙄",
  "✌全枪无后✌",
  "🚫全屏自瞄🚫",
  "😜人物范围😜",
  "😜贴脸自瞄😜",
  "🐰660透视🐰",
  "🐶防闪🐶",
  "🐷上色🐷",
  "🍭️退出🍭",
 }, nil, "半火脚本 \配合拦截使用！ \n茶茶群号923137102")
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
    if SN[4] == true then
   d()
  end
    if SN[5] == true then
   e()
  end
    if SN[6] == true then
   f()
  end
    if SN[7] == true then
   g()
  end
    if SN[8] == true then
   h()
  end
  if SN[9] == true then
   Exit()
  end
end
  XGCK = -1
end





function a()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libUE4.so')[1].start
py=0x112CAC8
setvalue(so+py,4,0)
py=0x37B4EE8
setvalue(so+py,4,0)
gg.toast(" ║全局防抖开启完毕║")
gg.sleep(600)
end



function b()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libUE4.so')[1].start
py3=0x1AACB1C
setvalue(so+py3,4,0)
gg.toast(" ║️全枪无后开启完毕║")
gg.sleep(600)
end



function c()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libUE4.so')[1].start
py=0x3779358
setvalue(so+py,16,60)
gg.toast("人物范围开启成功")
end



function d()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libUE4.so')[1].start
py=0xFB285C
setvalue(so+py,4,0)
py1=0xFB3D80
setvalue(so+py1,4,0)
gg.toast("全屏自瞄开启成功")
end



function e()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libUE4.so')[1].start
py=0xFB285C
setvalue(so+py,4,70)
gg.toast("║🛡贴脸锁死开启成功🛡️║")
gg.sleep(400)
end



function f()
function PS() end
gg.setRanges(1048576)
local dataType = 16
Name ="马赛克你妈"
local tb1 = {{5.689661686318978E-29,0x4B8}, {5.792279890944613E21,0x4BC}, {5.801375642304743E-42,0x4C0}, {-5.569558837351488E-40,0x4C8}, }
local tb2 = {{5444,0x4C8}, }
SearchWrite(tb1,tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
Name ="虚化你妈"
local tb1 = {{5.663172948626969E21,0x7DC}, {-2.761073652554761E-39,0x7E0}, {5.183551410261033E21,0x7E4}, {2.396220373995437E-43,0x7F0}, }
local tb2 = {{5444,0x7E0}, }
SearchWrite(tb1,tb2, dataType)
end



function g()
function PS() end
gg.setRanges(1048576)
local dataType = 16
Name ="闪你妈"
local tb1 = {{2.2963077934890777E-41,0x168}, {8.407790785948902E-45,0x170}, {1.1202013312377536E-19,0x174}, {2.0,0x200}, }
local tb2 = {{99999,0x200}, }
SearchWrite(tb1,tb2, dataType)
end



function h()
function PS() end
gg.setRanges(1048576)
local dataType = 16
Name ="你妈白色"
local tb1 = {{0.97998046875,0x794}, {0.299072265625,0x79C}, {0.5869140625,0x7A0}, {0.114013671875,0x7A4}, }
local tb2 = {{999,0x7A4}, }
SearchWrite(tb1,tb2, dataType)
end

function Exit()
print("🛡🛡🛡🛡🛡🛡\n🛡🛡\n🛡拒绝倒卖🐶🛡\n🛡🛡🛡🛡🛡🛡")
os.exit()
end
cs = "2731385020"



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









