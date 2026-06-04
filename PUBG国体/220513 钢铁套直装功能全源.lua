
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
--指针配置不懂勿动
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then  local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else  return false end else return false end end
--仿Xs配置
function getFloat(addr)
local tt={}
tt[1]={}
tt[1].address=addr
tt[1].flags=16
return gg.getValues(tt)[1].value
end
function getZZ(addr)
local tt={}
tt[1]={}
tt[1].address=addr
tt[1].flags=4
return gg.getValues(tt)[1].value
end
function writeFloat(addr,value)
local tt={}
tt[1]={}
tt[1].address=addr
tt[1].flags=16
tt[1].value=value
gg.setValues(tt)
end
--↑配置文件↑

PID=gg.getTargetInfo().activities[1].label
if PID~="BETA PUBG MOBILE" then
gg.alert("进程选国体")
while(true)do
os.exit()
end
end

if gg.getTargetPackage()=="com.tencent.igce" then
else
gg.alert("傻逼执行你妈")
while(true)do
os.exit()
end
end
--↑进程判断


local fk="关"
local speed="关"
local ghost ="关"
local zm="关"

gg.setVisible(true)
function Main()
F=gg.choice({
"[  基址一键  ]",--1
"[    天线    ]",--4
"[    基址飞天关    ]",--8
"[    加速    ]"..speed,--9
"[    基址飞天开    ]",--10
"[    浮空    ]"..fk,--11
"[    自瞄    ]"..zm,
"[    灵魂    ]"..ghost,
"退出"},2018,"清悠专业搬砖@xiaojiba555")
if F==nil then else


if F==1 then    a1() a2() a3() a5() a6() a7()   end
if F==2 then   a4()    end
if F==3 then  a8()    end
if F==4 then  a9()      end
if F==5 then  a10()    end
if F==6 then  a11()    end
if F==7 then  aim()   end
if F==8 then  a12()   end
if F==9 then 
gg.setVisible(true)
print("本人不是作者")
print("@xiaojiba555")
  os.exit()
end
end
 BYHY=-1
end

function a1()
so=gg.getRangesList("libUE4.so")[1].start
py=0x1441788
setvalue(so+py,16,0)
gg.toast("无后开启")
gg.setVisible(true)
end

function a2()
so=gg.getRangesList("libUE4.so")[1].start
py=0x3E17CB4
setvalue(so+py,4,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x3E7FF90
setvalue(so+py,4,0)
gg.toast("防抖开启")
gg.setVisible(true)
end

function a3()
gg.setVisible(true)
so=gg.getRangesList("libUE4.so")[1].start
py=0x1ED502C
setvalue(so+py,4,0)
gg.toast("聚点开启")
gg.setVisible(true)

end

function a4()



gg.setRanges(gg.REGION_CODE_APP)
local dataType=gg.TYPE_FLOAT
local tb1={{-1.86394e26,0xE5A8}}
local tb2={{-5.9049397e20,0xE5F0},{-3.8376433e21,0xE5F4}}
SearchWrite(tb1,tb2,dataType)
Bytes=9.73725
gg.setRanges(gg.REGION_ANONYMOUS) 
while true do
if gg.isVisible(true) then 
gg.setVisible(false) gg.toast("已暂停") return ""
else 
gg.sleep(50)
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{Bytes,0x68},}SearchWrite(tb1,tb2,dataType)
end end
end

function a5()
so=gg.getRangesList("libUE4.so")[1].start
py=0x31C5FC8
setvalue(so+py,16,0)
gg.toast("除雾开启")
so=gg.getRangesList("libUE4.so")[1].start
py=0x299A6E8
setvalue(so+py,16,0)
gg.toast("除草开启")
gg.setVisible(true)
end

function a6()
  so=gg.getRangesList("libUE4.so")[1].start
  py=0x3E83264
  setvalue(so+py,16,270.46355756685)
  gg.toast("平板视角开启成功")
  gg.setVisible(true)
end

function a7()
--[[
so=gg.getRangesList('libUE4.so')[1].start
py=0x3D4C374
setvalue(so+py,16,0)

so=gg.getRangesList('libUE4.so')[1].start
py=0x1125A1C
setvalue(so+py,16,1.6615352e35)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1574DB0
setvalue(so+py,16,1.6615352e35)
gg.toast("瞬击开启")
gg.setVisible(true)--]]--
end


function a8()
so=gg.getRangesList("libUE4.so")[1].start
py=0xA823B90
setvalue(so+py,16,2.36942755e-38)
gg.toast("飞天关闭")
gg.setVisible(true)
end

function a9()
if speed == "关" then
	gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.0530367e28;-5.8454586e27;-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
N1=gg.getResults(3)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1526231e27;-1.0070975e28;::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
N2 = gg.getResults(1401)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
L1=gg.getResults(1401)
gg.editAll("1,873,498,234,778,812,416", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
L2=gg.getResults(1401)
gg.editAll("403,635,275,035,574,272", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("h 54 B7 3C BA 00 40 D0 82 10 27 00 00 10 27 00 00 20 4E 00 00",gg.TYPE_BYTE,false,gg.SIGN_EQUAL,0,-1,0)
gg.refineNumber("h 10 27 00 00 10 27 00 00",gg.TYPE_BYTE,false,gg.SIGN_EQUAL,0,-1,0)
gg.getResults(7243)
gg.editAll("h 37 00 00 00 37 00 00 00",gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
R1=gg.getResults(1401)
gg.editAll("-2,044,616,634,647,180,783", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
R2=gg.getResults(1401)
gg.editAll("-1296744153870237554", gg.TYPE_QWORD)
gg.toast("加速开启") 
speed="开"
return
end
if speed=="开" then
	gg.clearResults()
gg.setValues(N1)
gg.setValues(N2)
gg.setValues(L1)
gg.setValues(L2)
gg.setValues(R1)
gg.setValues(R2)
gg.clearResults()
gg.toast("加速关闭 ") 
speed="关"
return
end
end

function aim() 
if zm == "关" then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2,8053577e28;2015175168,0;-3,7444097e28:9", gg.TYPE_FLOAT)
gg.searchNumber("2015175168.0", gg.TYPE_FLOAT)
zmdata1 = gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1.3779942e28;-2.7473293e28;1.6615354e35;-1.0525532e28;-1.1768307e28", gg.TYPE_FLOAT)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT)
zmdata2 = gg.getResults(10)
gg.editAll("1.6615352e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-9.4915276e20;-3.6965549e20;5.819136e-26", gg.TYPE_FLOAT)
gg.searchNumber("-3.6965549e20", gg.TYPE_FLOAT)
zmdata3 = gg.getResults(10)
gg.editAll("-3.6965553e20", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
zmdata4 = gg.getResults(100)
 gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
zmdata5 = gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
zmdata6 = gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.toast("加速开启") 
zm="开"
return
end
if zm=="开" then
	gg.clearResults()
gg.setValues(zmdata1)
gg.setValues(zmdata2)
gg.setValues(zmdata3)
gg.setValues(zmdata4)
gg.setValues(zmdata5)
gg.setValues(zmdata6)
gg.clearResults()
zm ="关"
gg.toast("加速关闭 ") 
end
end

function a10()
so=gg.getRangesList("libUE4.so")[1].start
py=0xA823B90
setvalue(so+py,16,2.36935608e-38)
gg.toast("飞天开启")
gg.setVisible(true)
end

function a11()
if fk=="开" then
gg.clearResults()
gg.setValues(FK)
gg.clearResults()
fk="关"
gg.toast(fk)
return
end
if fk=="关" then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400.0;0.10000000149F;1000.0F;88.0F;60.0F;30.0F", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("60",16, false, gg.SIGN_EQUAL, 0, -1)
FK = gg.getResults(10)
gg.editAll("-60",16)
gg.clearResults()
fk="开"
gg.toast(fk)
return
end
end
function ttt()--[[
local wqaddr = getZZ(getZZ(getZZ(getZZ(getZZ(getZZ(getZZ(gg.getRangesList("libUE4.so")[1].start + 0x78abe3c)+0x0)+0x24)+0x60)+0x20)+0x1b40)+0x160)
for i=0,2,1 do
    writeFloat(getZZ(getZZ(wqaddr+i*4)+0x5ac)+0x404,10000000.0)
    writeFloat(getZZ(getZZ(wqaddr+i*4)+0x5ac)+0x428,0.05)
end
gg.toast("修改手持成功")]]--
end

function a12()
if ghost=="开" then
gg.clearResults()
gg.setValues(GHOST)
gg.clearResults()
ghost="关"
gg.toast(ghost)
return
end
if ghost=="关" then
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10000;20000", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10000",4, false, gg.SIGN_EQUAL, 0, -1)
GHOST = gg.getResults(100)
gg.editAll("500",4)
gg.clearResults()
ghost="开"
gg.toast(ghost)
return
end
end
while true do
if gg.isVisible(true) then
BYHY=1
gg.setVisible(false)
end

gg.clearResults()
if  BYHY==1 then Main()end
end