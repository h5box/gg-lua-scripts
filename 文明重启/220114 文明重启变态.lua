local loadcode = false
local loadcod = false
local loadcodd = false
function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "臭宝😳")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "🙈🙈") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "🙊🙊" .. xgsl .. "😒😒") 
else 
gg.toast(qmnb[2]["name"] .. "😍😍") 
end 
end 
end 
end

function SHCF()
os.exit()
SHCF()
end
dog=0
CS=0 
function SH_searchNumber(n,type,ft,sign,r,s)
gg.setVisible(false) 
gg.searchNumber(n,type,ft,sign,r,s)
if gg.isVisible(true) then
dog=1
gg.setVisible(false) 
end 
if dog > 0 then
gg.toast('臭宝❤️❤️我爱你')
nc()
dog = 0
CS=CS-1
end
if CS < 0 then
SHCF()
end
end


function Voice(Rain)

end



local _KY,jldz,jmzj=function(mtz,mzj)for xh=1,10 do mtz=mtz:gsub(mzj[xh],xh-1)end return mtz end,{},{}for xh=1,10 do jmzj[xh]=debug.getinfo(_KY)[string.char(115,111,117,114,99,101)]:sub(xh,xh)end function KYXG(DZ,XGSJ,GNM,JLDZ)local t={}for i=1,#DZ do for k,w in ipairs(XGSJ) do offset=w[1]*4 t[#t+1]={}t[#t].address=DZ[i]+offset t[#t].flags=w[2]t[#t].value=w[3]if(w[4]==true)then local item={}item[#item+1]=t[#t]item[#item].freeze=true gg.addListItems(item)end end end gg.setValues(t)gg.toast("开启成功")end function KY_ZZ(NCLX,SSSJ,XGSJ,GNM)gg.setVisible(false)if jldz[NCLX[4]]==nil then gg.clearResults()gg.setRanges(NCLX[1])gg.searchNumber(NCLX[2],NCLX[3])local count=gg.getResultCount()local result=gg.getResults(count)gg.clearResults()local data={}if(count>0)then for i,v in ipairs(result) do v.isUseful=true end for k=1,#SSSJ do local tmp={}local offset=_KY(SSSJ[k][1],jmzj)*4 local num=_KY(SSSJ[k][2],jmzj)for i,v in ipairs(result) do tmp[#tmp+1]={}tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp) do if (v.value~=num)then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful)then data[#data+1]=v.address end end if data[1]==nil then gg.toast("开启成功")else if NCLX[4]~=false then jldz[NCLX[4]]=data KYXG(data,XGSJ,GNM,"已记录")else KYXG(data,XGSJ,GNM,"搜索到")end end else gg.toast("开启失败")end else KYXG(jldz[NCLX[4]],XGSJ,GNM,"调用到")end end




function SearchWrite(Search, Write, Type) gg.clearResults()gg.setVisible(false) gg.searchNumber(Search[1][1]*-1,Type) local count = gg.getResultCount() local result = gg.getResults(count)gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do  local tmp = {}local offset = Search[k][2] - base  local num = Search[k][1]for i, v in ipairs(result) do tmp[#tmp+1] = {}tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {}local base = Search[1][2]for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {}t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1]if (w[3] == true) then local item = {}item[#item+1] = t[#t]item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t)gg.toast("注入成功")else  return false end else  return false end end  

function SearchWriteohnb(Search, Write, Ohnb) gg.clearResults() gg.setVisible(false) SH_searchNumber(Search[1][1], Ohnb) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Ohnb t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("搜索0条数据.修改失败", false) return false end else gg.toast("搜索0条数据.修改失败") return false end end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "注入失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "注入成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "注入失败") end end end end











function Main()
 os.exit()
XGCK=-1
end

function Main5()
menu4 = gg.choice({
'人物功能',
'枪械功能',
'建筑功能',
'其他功能',
'打架一套',
'退出脚本'},
nil,'')
if menu4 == 1 then Main6() end
if menu4 == 2 then Main7() end
if menu4 == 3 then Main8() end
if menu4 == 4 then Main9() end
if menu4 == 5 then yt1() end
if menu4 == 5 then Main() end
XGCK=-1
end

function yt1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.16947640479', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('-999',16)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('-0.9855342507362366', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('-999',16)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.5400000214576721', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('10%🐒')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('830', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('5%🐒')
gg.setRanges(16384)
gg.searchNumber('0.15177720249', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('0.14177720249',16)
gg.setRanges(16384)
gg.searchNumber('4.100012345', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('6.30000019073',16)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24008', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('🐒')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('6000', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('🐒')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10000.001953125', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0.000123456789',16)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('2.10000014305', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll('1.3',16)
gg.toast('🐒')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.23314265e-42;1.9~5.5;7.93134931e-43', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll('0.0000001',16)
gg.toast('🐒')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.6899999976158142', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('🐒')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.47999998927116394', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('60% Magic🐒🙉9🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.44999998807907104', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('80% Magic🐒🙉6🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.3400000035762787', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('100% Xong Magic🐒🙉3🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('480.0', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('10%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('735.0', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('20%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('45', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('30%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('45', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('40%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('300', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('50%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('40', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('60%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('70%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('14', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('75%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('710', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('80%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('16', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('90%🐒🙉7🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('790', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('95%🐒🙉0🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('14', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('100%🐒🙉14🐒🙉')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('60;80;4000', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('100',16)
end

function Main9()
menu5 = gg.choice({
'游泳飞天',
'水下开车',
'趴下遁地',
'地基飞天',
'矿石天线',
'全图虚空(可恢复)',
'车加速',
'穿墙次品',
'床天线',
'死人包天线',
'矿物天线',
'昼夜交换',
'全图定怪',
'货轮穿墙',
'反boss反炮塔',
'上一页'},
nil,'')
if menu5 == 1 then N1() end
if menu5 == 2 then N4() end
if menu5 == 3 then N5() end
if menu5 == 4 then N2() end
if menu5 == 5 then N3() end
if menu5 == 6 then N6() end
if menu5 == 7 then N7() end
if menu5 == 8 then N8() end
if menu5 == 9 then N9() end
if menu5 == 10 then N10() end
if menu5 == 11 then N11() end
if menu5 == 12 then N12() end
if menu5 == 13 then N13() end
if menu5 == 14 then N14() end
if menu5 == 15 then N15() end
if menu5 == 16 then Main5() end
XGCK=-1
end

function N15()
gg.alert(' 不知道是干啥的🙈🙈')
gg.setRanges(16384)
gg.searchNumber('0.00041000005', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10000)
gg.editAll('0.00100000005',16)
gg.setRanges(16384)
gg.searchNumber('0.00100000005', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll('0.10110000005',16)
end


function N14()   
    F = gg.alert("配合水上行走更合适", "开启","关闭")
    if F == 1 then
  gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("OK")
    elseif F == 2 then  
  gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("10000", gg.TYPE_FLOAT)
gg.toast("关闭")
end
end

function R20()
gg.searchNumber('24008', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("🙈")
gg.searchNumber('6000', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("🙉")
gg.searchNumber('0.16947640479', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('-0.9855342507362366', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('400', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("🙊")
end

function N13()
F = gg.alert("全图定怪", "开启","关闭")
 if F == 1 then
qmnb=
{
{['memory']=16384},
{['name']='全图定怪开启成功'},
{['value']=200.0, ['type']=16},
{['lv']=400.0,['offset']=-4, ['type']=16},
}
qmxg=
{
{['value']=0,['offset']=0,['type']=16},
}
xqmnb(qmnb,qmxg)
elseif F == 2 then
qmnb=
{
{['memory']=16384},
{['name']='全图定怪关闭成功'},
{['value']=0.0, ['type']=16},
{['lv']=400.0,['offset']=-4, ['type']=16},
}
qmxg=
{
{['value']=200,['offset']=0,['type']=16},
}
xqmnb(qmnb)
end
end

function N12()
F = gg.alert("昼夜交换", "开启","关闭")
 if F == 1 then
qmnb=
{
{['memory']=32},
{['name']='昼夜交换开启成功'},
{['value']=9.219422856485836E-41, ['type']=16},
{['lv']=0.0066999997943639755,['offset']=-8, ['type']=16},
}
qmxg=
{
{['value']=999,['offset']=0,['type']=16},
}
xqmnb(qmnb)
elseif F == 2 then
qmnb=
{
{['memory']=32},
{['name']='昼夜交换关闭成功'},
{['value']=999.0, ['type']=16},
{['lv']=0.0066999997943639755,['offset']=-8, ['type']=16},
}
qmxg=
{
{['value']=9.2194229e-41,['offset']=0,['type']=16},
}
xqmnb(qmnb)
end
end


function N11()
      F = gg.alert('臭宝❤️🎈'  , '开', '关')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.54026591778', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.0012345', gg.REGION_C_BSS)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.59360003471', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123456', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.71921682358', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123457', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.44034206867', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123458', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.37977063656', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123459', gg.TYPE_FLOAT)
      gg.clearResults()
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.0012345', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.54026591778', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123456', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.59360003471', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123457', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.71921682358', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123458', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.44034206867', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123459', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.37977063656', gg.TYPE_FLOAT)
 end
end

function N10()
      F = gg.alert("❤️🧡💛💛💚", "开💗", "关🖤")
    if F == 1 then
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.19091719389', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('9999.0001234566', gg.TYPE_FLOAT)
      gg.clearResults()
    elseif F == 2 then
      gg.getResults(999)
      gg.editAll('1.54026591778', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('9999.0001234566', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.19091719389', gg.TYPE_FLOAT)
   end
end

function N9()
F = gg.alert('臭宝❤️❤', '开', '关')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.20930966735', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.001234556', gg.REGION_C_BSS)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('0.25884836912', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.001234557', gg.TYPE_FLOAT)
      gg.clearResults()
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.001234556', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.20930966735', gg.REGION_C_BSS)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.001234557', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('0.25884836912', gg.TYPE_FLOAT)
      gg.clearResults()
    end
    end

function N8()
F = gg["alert"]("穿墙只能一点点，可以穿树", "开❤", "关❤")
  if F == 1 then
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "50%"
      },
      {
        ["value"] = 6.699999809265137,
        ["type"] = 16
      },
      {
        ["lv"] = 0.10000000149011612,
        ["offset"] = 16,
        ["type"] = 16
      },
      {
        ["lv"] = 0.009999999776482582,
        ["offset"] = 20,
        ["type"] = 16
      },
      {
        ["lv"] = 0.10000000149011612,
        ["offset"] = 24,
        ["type"] = 16
      }
    }
    qmxg = {
      {
        ["value"] = -9,
        ["offset"] = 16,
        ["type"] = 16
      },
      {
        ["value"] = -9,
        ["offset"] = 24,
        ["type"] = 16
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "100%"
      },
      {
        ["value"] = 999,
        ["type"] = 16
      },
      {
        ["lv"] = 0.10000000149011612,
        ["offset"] = 16,
        ["type"] = 16
      },
      {
        ["lv"] = 0.004999999888241291,
        ["offset"] = 24,
        ["type"] = 16
      }
    }
    qmxg = {
      {
        ["value"] = 8.88479995728,
        ["offset"] = 20,
        ["type"] = 16
      }
    }
    xqmnb(qmnb)
  elseif F == 2 then
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "100%"
      },
      {
        ["value"] = 999,
        ["type"] = 16
      },
      {
        ["lv"] = 0.10000000149011612,
        ["offset"] = 16,
        ["type"] = 16
      },
      {
        ["lv"] = 0.004999999888241291,
        ["offset"] = 24,
        ["type"] = 16
      }
    }
    qmxg = {
      {
        ["value"] = 1.00000003E32,
        ["offset"] = 20,
        ["type"] = 16
      }
    }
    xqmnb(qmnb)
  end
end


function N7()
menu1 = gg.choice({
'摩托车',
'四轮战车',
'船',
'四轮垃圾车',
'牛车',
'钢爆',
'韦伯',
'上一页'},
nil,'嘿嘿把爱🌹都给你')
if menu1 == 1 then motor() end
if menu1 == 2 then cus() end
if menu1 == 3 then boat() end
if menu1 == 4 then car() end
if menu1 == 5 then cow() end
if menu1 == 6 then steel() end
if menu1 == 7 then vepa() end
if menu1 == 8 then C() end
GLWW=-1
end

function motor()
Q = gg.prompt({" Setting Speed Km/h: [60;120] "},{100},{"number"})
if Q == nil then return else
if loadcode == false then
gg.setRanges(32)
gg.clearResults()
gg.searchNumber('60;80;4000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("60;80",16, false, 536870912, 0, -1, 0) gg.clearList()
local t = gg.getResults(2000) gg.addListItems(t)
gg.saveList(gg.EXT_STORAGE .."/./xe1.txt", 0)
gg.clearResults() gg.clearList() loadcode = true end
gg.loadList(gg.EXT_STORAGE .."/./xe1.txt", 0)
t = gg.getListItems() gg.loadResults(t) gg.removeListItems(t) 
r = gg.getResults(1000) gg.editAll(Q[1],16)
end
end

function cus()
Q = gg.prompt({" Setting Speed Km/h: [60;120] "},{100},{"number"})
if Q == nil then return else
qmnb = {
{["memory"] = 32},
{["name"] = "ON"},
{["value"] = 7000.0, ["type"] = 16},
{["lv"] = 270.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 2700.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = 44, ["type"] = 16},
}
qmxg = {
{["value"] = Q[1], ["offset"] = 36, ["type"] = 16},

}
xqmnb(qmnb)
end
end

function boat()
Q = gg.prompt({" Setting Speed Km/h: [40;70] "},{70},{"number"})
if Q == nil then return else
qmnb = {
{["memory"] = 32},
{["name"] = "ON"},
{["value"] = 2.299999952316284, ["type"] = 16},
{["lv"] = 0.800000011920929, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0.6000000238418579, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = Q[1], ["offset"] = 72, ["type"] = 16},

}
xqmnb(qmnb)
end
end

function a()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("搜索数值",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值",gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function car()
Q = gg.prompt({" Setting Speed Km/h: [75;120] "},{100},{"number"})
if Q == nil then return else
if loadcode == false then
gg.setRanges(32)
gg.clearResults()
gg.searchNumber('75.0;90.0;45.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("75;90",16, false, 536870912, 0, -1, 0) gg.clearList()
local t = gg.getResults(2000) gg.addListItems(t)
gg.saveList(gg.EXT_STORAGE .."/./xe3.txt", 0)
gg.clearResults() gg.clearList() loadcode = true end
gg.loadList(gg.EXT_STORAGE .."/./xe3.txt", 0)
t = gg.getListItems() gg.loadResults(t) gg.removeListItems(t) 
r = gg.getResults(1000) gg.editAll(Q[1],16)
end
end

function cow()
Q = gg.prompt({" Setting Speed Km/h: [80;120] "},{100},{"number"})
if Q == nil then return else
if loadcode == false then
gg.setRanges(32)
gg.clearResults()
gg.searchNumber('85.0;110.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("85",16, false, 536870912, 0, -1, 0) gg.clearList()
local t = gg.getResults(2000) gg.addListItems(t)
gg.saveList(gg.EXT_STORAGE .."/./x2.txt", 0)
gg.clearResults() gg.clearList() loadcode = true end
gg.loadList(gg.EXT_STORAGE .."/./x2.txt", 0)
t = gg.getListItems() gg.loadResults(t) gg.removeListItems(t) 
r = gg.getResults(1000) gg.editAll(Q[1],16)
end
end

function steel()
Q = gg.prompt({" Setting Speed Km/h: [80;120] "},{100},{"number"})
if Q == nil then return else
if loadcode == false then
gg.setRanges(32)
gg.clearResults()
gg.searchNumber('112.3832321167;69.59463500977;80.0;100.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("80",16, false, 536870912, 0, -1, 0) gg.clearList()
local t = gg.getResults(2000) gg.addListItems(t)
gg.saveList(gg.EXT_STORAGE .."/./xe2.txt", 0)
gg.clearResults() gg.clearList() loadcode = true end
gg.loadList(gg.EXT_STORAGE .."/./xe2.txt", 0)
t = gg.getListItems() gg.loadResults(t) gg.removeListItems(t) 
r = gg.getResults(1000) gg.editAll(Q[1],16)
end
end

function vepa()
Q = gg.prompt({" Setting Speed Km/h: [30;120] "},{100},{"number"})
if Q == nil then return else
qmnb = {
{["memory"] = 32},
{["name"] = "ON"},
{["value"] = 4800.0, ["type"] = 16},
{["lv"] = 1200.0, ["offset"] = -4, ["type"] = 16},
{["lv"] = 40.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = Q[1], ["offset"] = 4, ["type"] = 16},

}
xqmnb(qmnb)
end
end


function N6()
F = gg.alert("【❤️臭宝❤️❤️】", "开","关")
  if F == 1 then
    ye()
  elseif F == 2 then
    yf()
  end
end
function ye()   
    qmnb = {
{["memory"] = 32},
{["name"] = "เปิด"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5000, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 50, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
 end
function yf()
  qmnb = {
{["memory"] = 32},
{["name"] = "ปิด"},
{["value"] = 10000, ["type"] = 4},
{["lv"] = 100, ["offset"] = -4, ["type"] = 4},
{["lv"] = 50, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 5000, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end

function N3()
      F = gg.alert('เสาอากาศแร่', 'เปิด', 'ปิด')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.54026591778', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.0012345', gg.REGION_C_BSS)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.59360003471', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123456', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.71921682358', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123457', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.44034206867', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123458', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('1.37977063656', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('999.00123459', gg.TYPE_FLOAT)
      gg.clearResults()
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.0012345', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.54026591778', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123456', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.59360003471', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123457', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.71921682358', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123458', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.44034206867', gg.TYPE_FLOAT)
      gg.clearResults()
      gg.setRanges(gg.REGION_VIDEO)
      gg.searchNumber('999.00123459', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('1.37977063656', gg.TYPE_FLOAT)
 end
end

function N2()
  F = gg.alert("你还爱我吗？", "爱（开）", "不爱（关）")
    if F == 1 then
 qmnb = {
{["memory"] = 32},
{["name"] = "早点睡"},
{["value"] = 24008, ["type"] = 4},
{["lv"] = 2139095039, ["offset"] = -24, ["type"] = 4},
{["lv"] = 1, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
  qmnb = {
{["memory"] = 32},
{["name"] = "睡吧"},
{["value"] = 6000, ["type"] = 4},
{["lv"] = 2139095039, ["offset"] = 188, ["type"] = 4},
{["lv"] = 24000, ["offset"] = 208, ["type"] = 4},
{["lv"] = 24000, ["offset"] = 212, ["type"] = 4},
{["lv"] = 1, ["offset"] = 236, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 236, ["type"] = 4},
}
xqmnb(qmnb)
  elseif F == 2 then      
  qmnb = {
{["memory"] = 32},
{["name"] = "快睡"},
{["value"] = 6000, ["type"] = 4},
{["lv"] = 2139095039, ["offset"] = 188, ["type"] = 4},
{["lv"] = 24000, ["offset"] = 208, ["type"] = 4},
{["lv"] = 24000, ["offset"] = 212, ["type"] = 4},
{["lv"] = 0, ["offset"] = 236, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 236, ["type"] = 4},
}
xqmnb(qmnb)                                  
qmnb = {
{["memory"] = 32},
{["name"] = "晚安"},
{["value"] = 24008, ["type"] = 4},
{["lv"] = 2139095039, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end
end


function N1()
Q = gg.prompt({"臭宝❤️ : [10;300] "},{10},{"number"})
if Q == nil then return else
qmnb = {
{["memory"] = 32},
{["name"] = "ON"},
{["value"] = -4900.0, ["type"] = 16},
{["lv"] = 2.3509885615147286E-38, ["offset"] = -208, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = -204, ["type"] = 16},
{["lv"] = -0.7071068286895752, ["offset"] = -200, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = -188, ["type"] = 16},
{["lv"] = 2.755148962647596E-40, ["offset"] = -160, ["type"] = 16},
}
qmxg = {
{["value"] = Q[1], ["offset"] = -180, ["type"] = 16},

}
xqmnb(qmnb)
end end

function N4()
F = gg.alert("臭宝❤️我喜欢你", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("0", gg.TYPE_FLOAT)
      gg.toast("水下行走开启")

   elseif F==2 then
   gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;0F;10,000.001953125F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(9999)
      gg.editAll("10000", gg.TYPE_FLOAT)
      gg.toast("关闭水下行走")
   
end
end

function N5()
	 gg.setRanges(16384)
	 gg.searchNumber("-1.83314888e27;-7.15917215e24;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(800)
	 gg.editAll('1.98',16)
	 gg.toast("趴下遁地开启成功")
end





function Main6()
menu1 = gg.choice({
'天线',
'透视和上色',
'人物高光',
'自定义上帝(还加光影)',
'人物高度(会摔死)',
'水下行走',
'灵魂出窍',
'上一页'},
nil,'')
if menu1 == 1 then V1() end
if menu1 == 2 then V2() end
if menu1 == 3 then V3() end
if menu1 == 4 then V4() end
if menu1 == 5 then V5() end
if menu1 == 6 then V6() end
if menu1 == 7 then Main10() end
if menu1 == 8 then Main5() end
XGCK=-1
end


function Main10()
SN=gg.choice({
"灵魂出窍",
"全局加速",
"虚体穿墙",
"灵魂出窍",
"上一页"
},2018,"剩下两个开启前置都需要灵魂出窍")
if SN==1 then a10()end
if SN==2 then b10()end
if SN==3 then c10()end
if SN==4 then d10() end
if SN == 7 then Main5() end
XGCK=-1
end

function a10()
KY_ZZ({"32","1049247089","4",false},{
{[[1]],[[1008981770]]},
},{
{"-33","16","999",true},
},"灵魂出窍")
end

function b10()

    gg.clearList()
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber('0.14177720249', 16, false, gg.SIGN_EQUAL, 0, -1)  
    gg.getResults(30)
    gg.editAll("1", 16)
    gg.clearResults()
end


function c10()
gg.clearResults()
      gg.setRanges(4)
      gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      gg.searchNumber("1.0e32",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
      jg=gg.getResults(100)
      sl=gg.getResultCount()
      if 100 < sl then
        sl=100
      end
      for _FORV_3_=1,sl do
        dzy=jg[_FORV_3_].address
        gg.addListItems({
          [1]={
            address=dzy,
            flags=gg.TYPE_FLOAT,
            freeze=true,
            value=8}})
      end
      gg.toast("穿墙")
      gg.clearResults()
      end



function d10()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15D;1D;84,000D::9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("100%")
end

function V6()
  F = gg.alert("臭宝❤️❤❤", "开❤", "关❤")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1.0F;0.00999999978F;3.7835059e-43F;4.2038954e-45F;10,000.0F;10,000.001953125F", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("10000", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("0.0012345", gg.REGION_C_BSS)
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0.0012345", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("10000", gg.TYPE_FLOAT)
    gg.clearResults()
  end
end

function V5()
Z = gg.prompt({"臭宝❤️❤ [-5;250] "},{0},{"number"})
if Z == nil then return else
qmnb = {
{["memory"] = 32},
{["name"] = "เปิด"},
{["value"] = 2.755148962647596E-40, ["type"] = 16},
{["lv"] = 2.3509885615147286E-38, ["offset"] = -48, ["type"] = 16},
{["lv"] = -0.7071068286895752, ["offset"] = -40, ["type"] = 16},
{["lv"] = 0.7071068286895752, ["offset"] = -28, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = Z[1], ["offset"] = -20, ["type"] = 16},

}
xqmnb(qmnb)
end
end

function V4()
ml = gg.prompt({
"🌹你好🌹 [-5;20] "
}, {1.5}, {"number"})
if ml == nil then
do return end
return
end
if loadcod == false then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.addListItems((gg.getResults(10000)))
gg.saveList(gg.EXT_STORAGE .. "/./fuck.txt", 0)
gg.clearResults()
gg.clearList()
loadcod = true
end
gg.loadList(gg.EXT_STORAGE .. "/./fuck.txt", 0)
a = gg.getListItems()
gg.loadResults(a)
gg.removeListItems(a)
g = gg.getResults(10000)
gg.editAll(ml[1], 16)
end

function V3()
qmnb = {
{memory = 1048576},
{name = "人物高光"},
{
  value = "0.040008544921875",
  type = 16
},
{
  lv = "0.9599609375",
  offset = -8,
  type = 16
}
}
qmxg = {
{
  value = 120,
  offset = -8,
  type = 16
}
}
xqmnb(qmnb)
end


function V1()
gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber('0.16947640479', gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll('-9999.0123', gg.REGION_C_BSS)
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber(-0.9855342507362366,16,false,536870912,0,-1)
      gg.getResults(999)
      gg.editAll(-999.0123,16)
      gg.clearResults()
end





function Main7()
menu2 = gg.choice({
'无后',
'射速',
'机瞄八倍',
'全枪瞬击',
'范围1',
'范围2',
'范围3',
'微自瞄',
'全枪秒换',
'天线范围',
'全枪秒换2',
'范围4(无效用这个)',
'全屏自瞄',
'快刀',
'魔法子弹30%',
'魔法子弹70%',
'魔法子弹100%',
'加速合集',
'路飞',
'瞄准路飞',
'魔法子弹4',
'上一页'},
nil,'')
if menu2 == 1 then R1() end
if menu2 == 2 then R2() end
if menu2 == 3 then R3() end
if menu2 == 4 then R4() end
if menu2 == 5 then R5() end
if menu2 == 6 then R6() end
if menu2 == 7 then R7() end
if menu2 == 8 then R8() end
if menu2 == 9 then R9() end
if menu2 == 10 then R10() end
if menu2 == 11 then R11() end
if menu2 == 12 then RT() end
if menu2 == 13 then R13() end
if menu2 == 14 then R14() end
if menu2 == 15 then R15() end
if menu2 == 16 then R16() end
if menu2 == 17 then R17() end
if menu2 == 18 then R18() end
if menu2 == 19 then R19() end
if menu2 == 20 then R20() end
if menu2 == 21 then R21() end
if menu2 == 22 then Main5() end
XGCK=-1
end

function R21()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.5400000214576721', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('10%❤️')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.6899999976158142', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('30%🧡')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.47999998927116394', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('60%💚')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.44999998807907104', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('80%💙')
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.3400000035762787', 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999999)
gg.toast('100💜')
end

function R19()
F = gg.alert("路飞", "机瞄路飞", "开镜路飞", "全部关闭")
  if F == 1 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "17",
        "16",
        "1.8"
      }
    }, "机瞄路飞")
    gg.clearList()
  elseif F == 2 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "15",
        "16",
        "-1.8"
      }
    }, "带镜路飞")
    gg.clearList()
  elseif F == 3 then
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "17",
        "16",
        "0"
      }
    }, "机瞄路飞关")
    gg.clearList()
    gg.clearResults()
    KY_ZZ({
      "32",
      "1036831949",
      "4",
      false
    }, {
      {"-10", "1082088489"}
    }, {
      {
        "15",
        "16",
        "0"
      }
    }, "带镜路飞关")
    gg.clearList()
  end
end


function R18()
F = gg.alert("加速系列", "枪械加速","关闭加速","人物加速")
  if F == 1 then    
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.18177720249",16)        
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("1.20000019073",16)
    gg.toast("枪械加速开启成功")
    elseif F == 2 then   
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)   
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("5.00000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)    
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.18177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)    
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1.20000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.toast("加速关闭成功")     
    elseif F == 3 then   
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14777720249",16)
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("5.00000019073",16)     
    gg.toast("人物加速开启成功")
end
end

function R17()
qmnb = {
    {memory = 32},
    {name = "1%"},
    {value = 0.6899999976158142, type = 16},
    {
      lv = 0.1599999964237213,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "10%"},
    {value = 0.47999998927116394, type = 16},
    {
      lv = 0.09000000357627869,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "20%"},
    {value = 0.30000001192092896, type = 16},
    {
      lv = 0.05999999865889549,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "30%"},
    {value = 0.44999998807907104, type = 16},
    {
      lv = 0.03999999910593033,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "40%"},
    {value = 0.3400000035762787, type = 16},
    {
      lv = 0.10999999940395355,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "50%"},
    {value = 0.5400000214576721, type = 16},
    {
      lv = 0.09000000357627869,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {memory = 32},
    {name = "70%"},
    {value = 0.30000001192092896, type = 16},
    {
      lv = 0.05999999865889549,
      offset = -4,
      type = 16
    }
  }
  qmxg = {
    {
      value = 99,
      offset = 0,
      type = 16
    }
  }
  xqmnb(qmnb)
  gg["setRanges"](gg["REGION_ANONYMOUS"])
  gg["searchNumber"]("0.47999998927116394", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
  gg["getResults"](999)
  gg["editAll"]("99", gg["TYPE_FLOAT"])
  gg["toast"]("80%")
  gg["setRanges"](gg["REGION_ANONYMOUS"])
  gg["refineNumber"]("0.3400000035762787")
  gg["getResults"](999)
  gg["editAll"]("99", gg["TYPE_FLOAT"])
  gg["toast"]("90%")
  gg["setRanges"](gg["REGION_ANONYMOUS"])
  gg["searchNumber"]("0.6899999976158142", gg["TYPE_FLOAT"], false, gg["SIGN_EQUAL"], 0, -1)
  gg["getResults"](999)
  gg["editAll"]("99", gg["TYPE_FLOAT"])
  gg["toast"]("100%")
end

function R16()
qmnb = {
  {memory = 32},
  {
    name = "10%"
  },
  {value = 0.5400000214576721, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)

qmnb = {
  {memory = 32},
  {
    name = "30%"
  },
  {value = 0.6899999976158142, type = 16},
  {
    lv = 0.1599999964237213,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {
    name = "60%"
  },
  {value = 0.47999998927116394, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)  

qmnb = {
  {memory = 32},
  {
    name = "80%"
  },
  {value = 0.44999998807907104, type = 16},
  {
    lv = 0.03999999910593033,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {name = "100%"},
  {value = 0.3400000035762787, type = 16},
  {
    lv = 0.10999999940395355,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
end
function OI()
qmnb = {
  {memory = 32},
  {
    name = "10%"
  },
  {value = 0.5400000214576721, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)

qmnb = {
  {memory = 32},
  {
    name = "30%"
  },
  {value = 0.6899999976158142, type = 16},
  {
    lv = 0.1599999964237213,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {
    name = "60%"
  },
  {value = 0.47999998927116394, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)  

qmnb = {
  {memory = 32},
  {
    name = "80%"
  },
  {value = 0.44999998807907104, type = 16},
  {
    lv = 0.03999999910593033,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {name = "100%"},
  {value = 0.3400000035762787, type = 16},
  {
    lv = 0.10999999940395355,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
end

function R15()
  gg["clearResults"](32)
  SearchWrite({
    {1060152279,0,4},
    {1042536202,-4,4}, 
    {1092616192,0,4}
    }, {
     {0, 4}
    }, 4)
  gg["clearResults"](32)
  SearchWrite({
    {1056293519,0,4},
    {1035489772,-4,4}, 
    {1092616192,0,4}
    }, {
     {0, 4,}
    }, 4)

gg["clearResults"](32)
  SearchWrite({
    {1050253722,0,4},
    {1031127695,-4,4}, 
    {1092616192,0,4}
    }, {
     {0, 4}
    }, 4)
  gg["clearResults"](32)
  SearchWrite({
    {1055286886,0,4},
    {1025758986,-4,4}, 
    {1092616192,0,4}
    }, {
     {0, 4}
    }, 4)
  gg["clearResults"](32)
  SearchWrite({
    {1051595899,0,4},
    {1038174126,-4,4}, 
    {1092616192,0,4}
    }, {
     {0, 0,4}
    }, 4)
  gg["clearResults"](32)
  SearchWrite({
    {1057635697,0,4},
    {1035489772,-4,4}, 
    {1092616192,0,4}
    }, {
     {0, 4}
    }, 4)
  gg["clearList"]()
end

function R14()
      F = gg.alert("臭宝❤️我爱你🤟", "3倍","恢复❤","1.5倍")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("4.90000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.15777720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("3.100012345",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("0.14777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("4.90000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.15777720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("3.100012345",16)
    elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("4.90000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.15777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("3.100012345", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("0.14777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("4.90000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("0.15777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("3.100012345", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    elseif F == 3 then
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.15777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("3.100012345", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14777720249",16)
    gg.clearList() 
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("4.90000019073",16)
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("0.15777720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14177720249",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("3.100012345", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("6.30000019073",16)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("0.14177720249", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("0.14777720249",16)
    gg.clearList() 
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("6.30000019073", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(1000)
    gg.editAll("4.90000019073",16)
    qmnb = {
{["memory"] = 32},
{["name"] = "เปิด"},
{["value"] = 1.233142648605839E-42, ["type"] = 16},
{["lv"] = 4.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 7.987401246651457E-43, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 6.7, ["offset"] = 12, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "เปิด"},
{["value"] = 1.233142648605839E-42, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 7.847271400218976E-43, ["offset"] = 60, ["type"] = 16},
}
qmxg = {
{["value"] = 9.3, ["offset"] = 12, ["type"] = 16},
}
xqmnb(qmnb)
end
end


function R13()
  qmnb = {
    {
      ["memory"] = 16384
    },
    {
      ["name"] = "全屏自瞄"
    },
    {
      ["value"] = -5.475527268489559E27,
      ["type"] = 16
    },
    {
      ["lv"] = -8.345310621825903E22,
      ["offset"] = -4,
      ["type"] = 16
    }
  }
  qmxg = {
    {
      ["value"] = 10,
      ["offset"] = 0,
      ["type"] = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      ["memory"] = 16384
    },
    {
      ["name"] = "全屏自瞄"
    },
    {
      ["value"] = -1.0061304023208683E28,
      ["type"] = 16
    },
    {
      ["lv"] = -2.739546799828711E28,
      ["offset"] = -16,
      ["type"] = 16
    },
    {
      ["lv"] = -2.8333594434308064E28,
      ["offset"] = -8,
      ["type"] = 16
    },
    {
      ["lv"] = -8.360064414205169E22,
      ["offset"] = 12,
      ["type"] = 16
    },
    {
      ["lv"] = -3.601448401639823E21,
      ["offset"] = 20,
      ["type"] = 16
    }
  }
  qmxg = {
    {
      ["value"] = 10,
      ["offset"] = 0,
      ["type"] = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      ["memory"] = 16384
    },
    {
      ["name"] = "全屏自瞄"
    },
    {
      ["value"] = 2.200000047683716,
      ["type"] = 16
    },
    {
      ["lv"] = 0.7999999523162842,
      ["offset"] = -4,
      ["type"] = 16
    }
  }
  qmxg = {
    {
      ["value"] = 10,
      ["offset"] = 0,
      ["type"] = 16
    }
  }
  xqmnb(qmnb)
end


function Main8()
menu3 = gg.choice({
'天上建筑',
'建筑全透',
'火箭筒破坏屋内物品',
'叠墙',
'地下建家',
'强制建筑',
'上一页'},
nil,'')

if menu3 == 1 then A11() end
if menu3 == 2 then A6() end
if menu3 == 3 then A5() end
if menu3 == 4 then A4() end
if menu3 == 5 then A2() end
if menu3 == 6 then A7() end
if menu3 == 7 then Main5() end
XGCK=-1
end


function A7()
  gg["clearList"]()
  gg["clearResults"]()
  gg["setRanges"](32)
  gg["searchNumber"]("54.394535064697266", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
  gg["getResults"](100)
  gg["editAll"]("0", 16)
  gg["clearResults"]()
  gg["toast"]("已开启")
end



function A2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("自我解脱或者重新进地图")
	 gg.clearResults()
end

function A4()
gg["clearList"]()
  gg["clearResults"]()
  gg["setRanges"](32)
  gg["searchNumber"]("54.394535064697266", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
  gg["getResults"](100)
  gg["editAll"]("0", 16)
  gg["clearResults"]()
  gg["toast"]("爱你😘")
end


function A5()
F = gg.alert("已经修复", "开","关")
    if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-0.00001", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("3.500001234567",16)
    
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("-0.00001", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("3.500001234567",16)
gg.toast("开")

elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("3.500001234567", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("-0.00001",16)
    
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_SYS)
    gg.searchNumber("3.500001234567", 16,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(300)
    gg.editAll("-0.00001",16)
gg.toast("关")
end
end


function A6()
F = gg.alert("臭宝❤️，我爱你", "开启" ,"关闭")
if F==1 then
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.81399995089", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("10.123", gg.REGION_C_BSS)
    gg.toast("可以了，臭宝❤️")
    gg.clearResults()


   elseif F==2 then
   gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("10.123", gg.REGION_C_BSS, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.81399995089", gg.REGION_C_BSS)
    gg.toast("透视关闭")
    gg.clearResults()
    end
   
end


function A11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.31347680092;3.6734198e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.67341985e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6.6734198e-40",gg.TYPE_FLOAT)
gg.toast("臭宝❤️可以了")
end



function R11()
xx1 = 4
    xx2 = 3.7
    xx3 = 7.6
    xx4 = 2.8
    cao1=xx1-xx4
    cao2=cao1+xx4
    cao3=xx2-xx3
    cao4=cao3+4
    cao5=xx1-1
    xx6 = cao2*-216

    gg.clearList()
    gg.clearResults()
    gg.setRanges(32)
    local dataType = 16
    local tb1 = {{-(cao4),0}, {7.8472714e-44,-24},{0,36}}
    local tb2 = {{0.1,40,false},{0.1, 44, false},{0.1,48,false},{0.1,52,false},{1.0e19, 128, false},{40,196,false},{200,192,false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-(cao4),0}, {8.9683102e-44,-24},{0,36}}
    local tb2 = {{0.1,40,false},{0.1, 44, false},{0.1,48,false},{0.1,52,false},{1.0e19, 128, false},{40,196,false},{200,192,false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-1.0e19, 0},{1, -12},{2000,40}}
    local tb2 = {{10000, 0, false},{1500, 64, false},{-1, 68, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = 16
    local tb1 = {{-1.0e19, 0},{20, -12},{80,40}}
    local tb2 = {{-100, 64, false}} 
    SearchWrite(tb1, tb2, dataType)
    gg.setRanges(4)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1063425514,-156},{1019625236,-152},{-1125603554,-160},{-1090519040,-144}}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2,dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1063415448,-156},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1077237078,8},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    local dataType = gg.TYPE_DWORD
    local tb1 = {{(xx6), 0},{1076957458,8},}
    local tb2 = {{1, 8, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("全枪秒换")  
    gg.clearList()
    gg.clearResults()
end






function R1()
gg.clearResults()
  KY_ZZ({[[32]],[[1067869798]],[[4]],false},{{[[-13]],[[1067030938]]},},{{[[-2]],[[16]],[[0]]},{[[-3]],[[16]],[[0]]},{[[-4]],[[16]],[[0]]},{[[3]],[[16]],[[0]]},{[[32]],[[16]],[[0]]},{[[34]],[[16]],[[0]]},},[[全枪无后]])
KY_ZZ({[[32]],[[1114636288]],[[4]],false},{{[[-2]],[[1067030938]]},{[[6]],[[1045220557]]},},{{[[7]],[[16]],[[0]]},{[[8]],[[16]],[[0]]},{[[9]],[[16]],[[0]]},{[[14]],[[16]],[[0]]},{[[43]],[[16]],[[0]]},},[[全枪无后]])
KY_ZZ({[[32]],[[1067869798]],[[4]],false},{{[[-5]],[[1050253722]]},{[[-13]],[[1067030930]]},},{{[[-8]],[[16]],[[9999]]},},[[全枪无后]])
gg.clearResults()
end
       

function R2()
gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("940000000", 4)
    gg.toast("全抢射速已开启️")
    gg.clearResults()
  end

    function R3()
    gg.clearResults()
    gg.setRanges(32)
    SearchWrite({
      {
        -1111490560,
        6584
      },
      {
        0,
        6588
      },
      {
        0,
        6596
      }
    }, {
      {
        1084410514,
        6584,
        false
      }
    }, 4)
    gg.clearResults()
    gg.setRanges(32)
    gg.toast("30%")
    SearchWrite({
      {
        -1110704128,
        36264
      },
      {
        0,
        36256
      },
      {
        0,
        36268
      }
    }, {
      {
        1084410514,
        36264,
        false
      }
    }, 4)
    gg.toast("80%")
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("45", 16, false, gg.SIGN_EQUAL, 0, -1)
    L45_493278 = gg.getResults(100)
    L50_493283 = gg.getResultCount()
    if L50_493283 > 100 then
      L50_493283 = 100
    end
    for _FORV_9_ = 1, L50_493283 do
      L54_493286 = L45_493278[_FORV_9_].address
      gg.addListItems({
        [1] = {
          address = L54_493286,
          flags = 16,
          freeze = true,
          value = 5
        }
      })
    end
    gg.toast("Nice！兄dei！")
    gg.clearResults()
    end
    

function R4()
gg.clearResults()
gg.setRanges(16384)   gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("SMG冲锋枪瞬击开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_BAD)
      gg.searchNumber("667F;300F;100F;75F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(999)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("改装瞬击开启成功")
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("540;0.89999997616;0.20000000298;1;0.60000002384::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("540", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(20)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("qbz瞬击开启成功")
      gg.clearResults()
      gg.setRanges(32)
      gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(100)
      gg.editAll("500000", gg.TYPE_FLOAT)
      gg.toast("ak瞬击开启成功")
      gg.clearResults()
    end
    
function RT()
menu1 = gg.choice({
'小范围',
'范围加天线范围',
'返回'},
nil,'爱你😘')
if menu1 == 1 then RT1() end
if menu1 == 2 then RT2() end
if menu1 == 3 then Main5() end
GLWW=-1
end

function RT1()
qmnb = {
  {memory = 32},
  {
    name = "快了"
  },
  {value = 0.5400000214576721, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)

qmnb = {
  {memory = 32},
  {
    name = "马上"
  },
  {value = 0.6899999976158142, type = 16},
  {
    lv = 0.1599999964237213,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {
    name = "臭宝❤️还有40%"
  },
  {value = 0.47999998927116394, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)  

qmnb = {
  {memory = 32},
  {
    name = "还有20%臭宝❤️"
  },
  {value = 0.44999998807907104, type = 16},
  {
    lv = 0.03999999910593033,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {name = "可以了"},
  {value = 0.3400000035762787, type = 16},
  {
    lv = 0.10999999940395355,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
end

function RT2()

qmnb = {
  {memory = 32},
  {
    name = "臭宝❤️马上好"
  },
  {value = 0.5400000214576721, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)

qmnb = {
  {memory = 32},
  {
    name = "快了"
  },
  {value = 0.6899999976158142, type = 16},
  {
    lv = 0.1599999964237213,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {
    name = "马上"
  },
  {value = 0.47999998927116394, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)  

qmnb = {
  {memory = 32},
  {
    name = "还有20%"
  },
  {value = 0.44999998807907104, type = 16},
  {
    lv = 0.03999999910593033,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {name = "可以了臭宝❤️"},
  {value = 0.3400000035762787, type = 16},
  {
    lv = 0.10999999940395355,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 8,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
end

function R5()
menu1 = gg.choice({
'⭐[Magic 30%]',
'⭐[Magic 100%[+30%🧠]]',
'ʙᴀᴄᴋ ᴛᴏ ᴍᴇɴᴜ'},
nil,'[Magic Bullet Menu]')
if menu1 == 1 then Main7() end
if menu1 == 2 then Main7() end
if menu1 == 3 then Main7() end
GLWW=-1
end

function R5()
qmnb = {
  {memory = 32},
  {
    name = "10% Magic"
  },
  {value = 0.5400000214576721, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)

qmnb = {
  {memory = 32},
  {
    name = "30% Magic"
  },
  {value = 0.6899999976158142, type = 16},
  {
    lv = 0.1599999964237213,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {
    name = "60% Magic"
  },
  {value = 0.47999998927116394, type = 16},
  {
    lv = 0.09000000357627869,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)  

qmnb = {
  {memory = 32},
  {
    name = "80% Magic"
  },
  {value = 0.44999998807907104, type = 16},
  {
    lv = 0.03999999910593033,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
qmnb = {
  {memory = 32},
  {name = "100% Xong Magic"},
  {value = 0.3400000035762787, type = 16},
  {
    lv = 0.10999999940395355,
    offset = -4,
    type = 16
  }
}
qmxg = {
  {
    value = 1,
    offset = 0,
    type = 16
  }
}
xqmnb(qmnb)
end


function R6()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.6899999976158142,16",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("99,16",gg.TYPE_FLOAT)
gg.toast("Magic  50%◆")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.5400000214576721,16",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("99,16",gg.TYPE_FLOAT)
gg.toast("Magic  70%◆")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.47999998927116394,16",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("99,16",gg.TYPE_FLOAT)
gg.toast("Magic  80%◆")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.44999998807907104,16",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("99,16",gg.TYPE_FLOAT)
gg.toast("Magic 100%◆")
end

function R7()
gg.setRanges(32)
          SearchWrite({
            {1111490560, 6584},
            {0, 6588},
            {0, 6596}
          }, {
            {
              1084410514,
              6584,
              false
            }
          }, 4)
          gg.clearResults()
          gg.setRanges(32)
          SearchWrite({
            {1110704128, 36264},
            {0, 36256},
            {0, 36268}
          }, {
            {
              1084410514,
              36264,
              false
            }
          }, 4)
          gg.clearResults()
end


function R8()
qmnb = {
{["memory"] = 16384},
{["name"] = "可以了伙计！"},
{["value"] = 5.475527268489559E27, ["type"] = 16},
{["lv"] = -3.693674733290232E20, ["offset"] = -8, ["type"] = 16},
{["lv"] = -8.345310621825903E22, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 23, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function R9()
gg.setRanges(32)
gg.searchNumber("0.8845000267028809", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("2.1666667461395264", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("2.6666667461395264", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("2.766666889190674", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("2.0333335399627686", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("2.90000009537", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("2.83333349228", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("3.500000238418579", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.setRanges(32)
gg.searchNumber("4.100000381469727", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
gg.getResults(999999)
gg.editAll("0.01", 16)
gg.toast("开启成功")
end

function R10()
qmnb = {
{["memory"] = 32},
{["name"] = "开启成功"},
{["value"] = -0.9855342507362366, ["type"] = 16},
{["lv"] = -0.9855342507362366, ["offset"] = 12, ["type"] = 16},
}
qmxg = {
{["value"] = -99, ["offset"] = 12, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function V2()
F = gg.alert('爱你😘', '上色', 'OFF', '透视')
  if F == 1 then
qmnb = {
{["memory"] = 32},
{["name"] = "ON"},
{["value"] = 82.5, ["type"] = 16},
{["lv"] = 15.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 5.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.75, ["offset"] = 1316, ["type"] = 16},
}
qmxg = {
{["value"] = 20.0123456789, ["offset"] = 1316, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()

elseif F == 2 then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("20.0123456789", gg.TYPE_FLOAT)
gg.getResults(900)
gg.editAll("0.75", gg.TYPE_FLOAT)
gg.clearResults()

elseif F == 3 then 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.127597087642792E-29", gg.TYPE_FLOAT)
gg.getResults(900)
gg.editAll("5.127597087642792E29", gg.TYPE_FLOAT)
end
end






     
cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main5()
end
end