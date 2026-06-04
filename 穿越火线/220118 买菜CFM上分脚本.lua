gg.alert(os.date("🍓ʜᴀ͟ᴘ͟ᴘ͟ʏ ᴇᴠᴇʀʏᴅᴀʏ̆̈❤ by:买菜️"),"")
function search(t,type)
rt={}
gg.setRanges(type)
gg.clearResults()
gg.searchNumber(t[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local r = gg.getResults(99999999)
if #r==0 then goto last end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto last end
r=gg.getValues(tt)
if it==#t then rt=r goto last end
end
::last::
return rt
end

function Main()
  SN =gg.multiChoice({
  "开启自瞄",
  "扫射强锁",
  "开启聚点",
  "开启无后",
  "开启范围",
  "开启快刀",
  "退出脚本",
 }, nil, "人生恍惚，早起开挂，科技岛")
  if SN == nil then
  else
 if SN[1] == true then
    a()
  end
 if SN[2] == true then
    f()
  end
 if SN[3] == true then
    b()
  end
 if SN[4] == true then
    c()
  end
 if SN[5] == true then
    d()
  end
 if SN[6] == true then
    e()
  end
 if SN[7] == true then
   Exit()
  end
end
  XGCK = -1
end




function a()
r=search({"-352321526",{"-442826720",4},{"-442822616",8}},32)
  if #r>0 then
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+12
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+20
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+28
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+36
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    gg.toast("自瞄开启成功")
    gg.setVisible(false)
    gg.sleep(100)
    gg.clearResults()
   else gg.toast("自瞄开启失败")
  end
  end


function b()
r=search({"-308606462",{"-1442840573",-4},{"-308401664",24},{"-286131696",-12}},32)
  if #r>0 then
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+12
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    gg.toast("聚点开启成功")
    gg.setVisible(false)
    gg.sleep(100)
    gg.clearResults()
   else gg.toast("聚点开启失败")
  end
  end



function c()
r=search({"-301856240",{"-289985854",4},{"-352321033",-4},{"-509607929",16},{"-289993790",8}},32)
  if #r>0 then
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+12
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    gg.toast("无后开启成功")
    gg.setVisible(false)
    gg.sleep(100)
    gg.clearResults()
   else gg.toast("无后开启失败")
  end
  end

function d()
r=search({"-301790704",{"-308597946",8},{"-299750653",12}},32)
  if #r>0 then
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+12
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    gg.toast("范围开启成功")
    gg.setVisible(false)
    gg.sleep(100)
    gg.clearResults()
   else gg.toast("范围开启失败")
  end
  end

function e()
r=search({"1000",{"1056964608",-40},{"860",112},{"120",24}},4)
  if #r>0 then
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address-32
      tt[ii].flags=16
      tt[ii].value=3.4e38
    end
    gg.setValues(tt)
    gg.toast("快刀开启成功")
    gg.setVisible(false)
    gg.sleep(100)
    gg.clearResults()
   else gg.toast("快刀开启失败")
  end
  end

function f()
r=search({"1113927393",{"1056964608",-8},{"3904",48}},4)
  if #r>0 then
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+0
      tt[ii].flags=16
      tt[ii].value=9999
    end
    gg.setValues(tt)
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address-8
      tt[ii].flags=16
      tt[ii].value=9999
    end
    gg.setValues(tt)
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+8
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    tt={}
    for i=1,#r do
      ii=#tt+1 tt[ii]={}
      tt[ii].address=r[i].address+16
      tt[ii].flags=16
      tt[ii].value=0
    end
    gg.setValues(tt)
    gg.toast("扫射吸附开启成功")
    gg.setVisible(false)
    gg.sleep(100)
    gg.clearResults()
   else gg.toast("扫射吸附开启失败")
  end
  end
  

function Exit()
os.exit(print('㊗你上大分'))
end
cs = "BY: 买菜"



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