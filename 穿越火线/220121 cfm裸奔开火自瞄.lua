


function ReadAddress(adds,value,flags,freeze,name)local data={{ ["address"]=adds,["value"]=value,["flags"]=flags,["freeze"]=freeze}} gg.setValues(data)if freeze==true then gg.addListItems(data)end if name~=nil then gg.toast('['..name..']已注入')end end function ReadAdd(add)t=gg.getValues({[1]={address=add,flags=4}})add=string.format("%X",t[1].value)if (#add)==16 then add=add:sub(9,16) end if (#add)==1 then add=add.."0000000" else add=string.format("%d","0x"..add)end return add end 
function split(szFullString, szSeparator) 
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} 
while true do 
local nFindLastIndex = string.find
(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = 
string.sub(szFullString, nFindStartIndex, string.len
(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub
(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len
(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end 
function xgxc(szpy, qmxg) 
for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] 
xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
xgdj = qmxg[x]["freeze"] 
if xgdj == nil or xgdj == "" then 
gg.setValues({[1] 
= {address = xgpy, flags = xglx, value = xgsz}}) 
else 
gg.addListItems({[1] 
= {address = xgpy, flags = xglx, 
freeze = xgdj, value = xgsz}}) end 
xgsl = xgsl + 1 xgjg = true end end 
function xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "注入失败") 
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "注入失败") 
else 
        sl = gg.getResults(999999) 
sz = gg.getResultCount() 
        xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] 
= {} pysz[1].address 
= sl[i].address + qmnb[v]["offset"] pysz[1].flags 
= qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd 
= split(pdpd, ";") tzszpd 
= szpd[1] pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end if 
pdjg == true then szpy 
= sl[i].address xgxc(szpy, qmxg) end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "已注入") 
else 
gg.toast(qmnb[2]["name"] .. "注入失败") 
end 
end 
end
end
function Main()
SN = gg.multiChoice({
"开启脚本",
"退出脚本"
}, nil, "###")
  if SN == nil then
  else
  if SN[1] == true then
    a7()
  end
  if SN[2] == true then
    Exit()
  end
end
  XGCK = -1
end


function a7()
local Add=gg.getRangesList("libtersafe.so:bss")[1].start
local Add=Add+0x9394
local Add=ReadAdd(Add)+0x1c
local Add=ReadAdd(Add)+0x60
local Add=ReadAdd(Add)+0xf8
local Add=ReadAdd(Add)+0x9c
local Add=ReadAdd(Add)+0x120
local Add=ReadAdd(Add)+0xec
ReadAddress(Add,1091567616,4,false,"开火吸附x100")
end



function Exit()
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
