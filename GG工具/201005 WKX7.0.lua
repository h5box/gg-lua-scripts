------最近不知道为啥感觉人都快废了
------脚本懒得加密了
------这个脚本我不敢保证你们有些功能全有效
--[[配置1]]function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end
--[[配置2]]function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end
  sj = (os.date("%Y年%m月%d日%H时%M分%S秒")) 
    state={} state.a="[开启]" state.b="[开启]" state.c="[开启]" state.d="[开启]" state.e="[开启]" state.f="[开启]" state.j="[开启]" state.h="[开启]" state.i="[开启]"
 local app = {} function Assert(data) if data == nil or data == "" or data == "nil" then return false else return true end end function mearrass(memory, array) if Assert(memory) and Assert(array) then return true else return false end end function typetab(array, type) local datatype = {} for i = 1, #array do if Assert(array[i].type) then table.insert(datatype, i, array[i].type) else if Assert(type) then table.insert(datatype, i, type) else return false end end end return true, datatype end function app.memorysearch(memory, array, type) gg.setVisible(false) local rx = mearrass(memory, array) if rx then local rx, datatype = typetab(array, type) if rx then if Assert(array[1].hv) then gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1]) else gg.clearResults() gg.setRanges(memory) gg.searchNumber(array[1].lv, datatype[1]) end if gg.getResultCount() == 0 then return false else local tab = {} local data = gg.getResults(gg.getResultCount()) gg.clearResults() for i = 1, #data do data[i].rx = true end for i = 2, #array do local t = {} local offset = array[i].offset for x = 1, #data do t[#t + 1] = {} t[#t].address = data[x].address + offset t[#t].flags = datatype[i] end local t = gg.getValues(t) for z = 1, #t do if Assert(array[i].hv) then if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then data[z].rx = false end else if tostring(t[z].value) ~= tostring(array[i].lv) then data[z].rx = false end end end end for i = 1, #data do if data[i].rx then tab[#tab + 1] = data[i].address end end if #tab > 0 then return true, tab else return false end end else print("type参数错误") gg.toast("type参数错误") os.exit() end else print("memory or array参数错误") gg.toast("memory or array参数错误") os.exit() end end function app.memoryread(addr, type) local t = {} t[1] = {} t[1].address = addr t[1].flags = type if #t > 0 then return true, gg.getValues(t)[1].value else return false end end function app.memorywrite(addr, type, value, freeze) local t = {} t[1] = {} t[1].address = addr t[1].flags = type t[1].value = value if #t > 0 then if Assert(freeze) then t[1].freeze = freeze gg.setValues(t) return gg.addListItems(t) else return gg.setValues(t) end else return false end end function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast(Name.."共搜索到"..#data.."个数据") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了") return false end else gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了") return false end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索η"..#data.."条代码") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found", false) return false end else gg.toast("Not Found") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function encodes(code) return (code:gsub("..", function(h) return string.char((tonumber(h, 16) + 256 - 13 + 255999744) % 256) end )) end do do for _FORV_3_ = 1, 2000 do load("local results = gg.getFile(5000)")() end end end gg.setRanges(16420) local results = gg.getFile() local results = gg.getResults(5000) gg.setValues(results) local results = gg.getFile() function SearchWrite(Search,Write,Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(500) else return false end else return false end end function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang) gg.clearResults() gg.setRanges(Neicun) gg.setVisible(false) gg.searchNumber(Search[1][1], Search[1][3]) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = Search[k][3] end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Mingcg.."开启成功"..#data.."") local t = {} local base = Search[1][2] if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then Shuzhiliang=Shuzhiliang else Shuzhiliang=#data end for i=1, Shuzhiliang do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = w[3] t[#t].value = w[1] if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(Mingcg.."开启成功"..#t.."") gg.addListItems(t) else gg.toast(Mingcg.."开启失败", false) return false end else gg.toast("开启失败") return false end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end function configure(xgsz,sssz,gssz,xl) gg.clearResults() gg.setRanges(nc) flags=xl gg.searchNumber(sssz,xl, false, 56870912, 0, -1) ssjgsl=gg.getResultCount() if ssjgsl>0 then gg.toast("共到"..ssjgsl.."条数值") gg.searchNumber(gssz,xl, false, 56870912, 0, -1) ssjgs=gg.getResultCount() if ssjgs>0 then else gg.toast("开启失败 原因:改善结果无数值") end gg.getResults(ssjgs) gg.editAll(xgsz, xl) gg.toast("开启成功 已修改"..ssjgs.."条数值") else gg.toast("开启失败 原因:结果无数值") end end 
jiaqun =gg.alert('是否复制QQ群\n源码大部分来自网络\n本脚本完全免费\n','复制QQ群',"跳转加群",'进入脚本')
if jiaqun == 1 then 
 gg.copyText('806993747')
 end
 if jiaqun == 2 then
 gg.jiaqun('9fs0DtdvEEUwQyY69RqOupc1HrO5QkIf') 
 end
 if jiaqun == 3 then
 end
gg.toast("😘爱你么么哒😘")
function Main()
menu = gg.choice({
"❤️透色功能❤️",
"💛加速功能💛",
"️💚大厅️功能💚",
"💙落地功能💙",
"💜范围功能💜",
"🖤车辆功能🖤",
"💗自瞄功能💗",
"💖防封功能💖",
"💓沙雕功能💓",
"💟查询天气💟",
"💘退出脚本💘"},
nil,"WKX不想被二改\nWKX新群:806993747\n当前时间:"..sj.."")
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then H() end
if menu == 9 then J() end
if menu == 10 then K() end
if menu == 11 then Exit() end
XGCK=-1
end


function A()
menu1 = gg.choice({
"晓  龙",
"联发科",
"麒  麟",
"猎户座",
"物品透视",
"物品透视2",
"物品上色",
"全机型白色",
"全机型黑色",
"聚乐园名字透视",
"全机型理论通用去胸罩",
"返回上一页"},
2018,"当前时间:"..sj.."")
if menu1 == 1 then XL() end
if menu1 == 2 then LFK() end
if menu1 == 3 then QL() end
if menu1 == 4 then LHZ() end
if menu1 == 5 then FPTS() end
if menu1 == 6 then FPTS2() end
if menu1 == 7 then WTNL() end
if menu1 == 8 then QJXB() end
if menu1 == 9 then QJXH() end
if menu1 == 10 then MZTS() end
if menu1 == 11 then QXZ() end
if menu1 == 12 then HOME() end
XGCK=-1
end

function QXZ()
local memory = 4
local array = {
{["lv"] = 15, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
{["lv"] = 3, ["offset"] = 32, ["type"] = 4},
{["lv"] = 5, ["offset"] = 36, ["type"] = 4},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +36, 4, 6)
end
gg.toast("人物胸罩胖次摘除开启成功")
else
gg.toast("人物胸罩胖次摘除开启失败")
end
end


function MZTS()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("720576352751714304", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_QWORD,freeze = true,value = 720576352751714305}})
	 end
	 gg.toast("透视开启成功")
	 gg.clearResults()
end

function FPTS()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-7.006492321624085E-45, 0}, {4.759266726416505E21, -52}, {5.568031422025374E-40, -48}, {1.107830132135128E-39, -32},}
local tb2 = {{5444, 0}, }SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{-3.128393216411297E-39, 0}, {5.294235815352964E21, -28}, {4.980641729049856E21, -20}, {4.888404630981587E21, -4},}
local tb2 = {{5444, 0}, }SearchWrite(tb1, tb2, dataType)
end

function QJXB()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("白色开启成功")
end



function QJXH()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("黑色开启成功")
end

function FPTS2()
qmnb = {
{["memory"] = 1048576},
{["name"] = "物品马赛克"},
{["value"] = -7.006492321624085E-45, ["type"] = 16},
{["lv"] = 4.759266726416505E21, ["offset"] = -52, ["type"] = 16},
{["lv"] = 5.568031422025374E-40, ["offset"] = -48, ["type"] = 16},
{["lv"] = 1.107830132135128E-39, ["offset"] = -32, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "物品透明"},
{["value"] = -3.128393216411297E-39, ["type"] = 16},
{["lv"] = 5.294235815352964E21, ["offset"] = -28, ["type"] = 16},
{["lv"] = 4.980641729049856E21, ["offset"] = -20, ["type"] = 16},
{["lv"] = 4.888404630981587E21, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function WTNL()
	gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("D8")
 gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("物资上色已成功")
  end





function XL()
menu1 = gg.multiChoice({
"晓龙通用",
"425透色",
"450透色",
"659透色️",
"660透色",
"625透色️",
"653透色️",
"660备用",
"845透色",
"835透色",
"855透色",
"865透视",
"人物上色",
"车辆上色",
"710透色",
"人物防闪",
"天线上色",
'返回上页'},
nil,'WKX制作\nWKX新群:806993747')

if menu1 == nil then else
if menu1[1] == true then h1() end
if menu1[2] == true then h2() end
if menu1[3] == true then h3() end
if menu1[4] == true then h4() end
if menu1[5] == true then h5() end
if menu1[6] == true then h6() end
if menu1[7] == true then h7() end
if menu1[8] == true then h8() end
if menu1[9] == true then h9() end
if menu1[10] == true then h10() end
if menu1[11] == true then h11() end
if menu1[12] == true then h12() end
if menu1[13] == true then h13() end
if menu1[14] == true then h14() end
if menu1[15] == true then h15() end
if menu1[16] == true then h16() end
if menu1[17] == true then h17() end
if menu1[18] == true then HOME() end
end
end
function h1()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineAddress("504")
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineAddress("900")
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function h2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3.15292154e-43;2.0:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT, false, 536870912, 0, -1)
gg.clearResults()
gg.toast("425偏移优化透视开启")

qmnb = {
{["memory"] = 1048576},
{["name"] = "人物绿色"},
{["value"] = 8204, ["type"] = 4},
{["lv"] = 538968075, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194380046, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 970, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 1048576},
{["name"] = "车辆红色"},
{["value"] = 8204, ["type"] = 4},
{["lv"] = 1077936128, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194380038, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 11, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

gg.clearResults()
gg.setRanges(16384)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("透视防闪")

qmnb = {
{["memory"] = 1048576},
{["name"] = "毒圈可见化"},
{["value"] = 8196, ["type"] = 4},
{["lv"] = 1194330372, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194346752, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 8195, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function h3()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.toast("马赛克")
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5444", gg.TYPE_FLOAT)
gg.toast("透视开启成功")
qmnb = {{["memory"] = 1048576},{["name"] = "绿色上色"},{["value"] = 8200, ["type"] = 4},{["lv"] = 539246599, ["offset"] = -12, ["type"] = 4},{["lv"] = 786441, ["offset"] = -8, ["type"] = 4},{["lv"] = 1661239308, ["offset"] = -4, ["type"] = 4},{["lv"] = 1194380045, ["offset"] = 4, ["type"] = 4},{["lv"] = 786443, ["offset"] = 8, ["type"] = 4},{["lv"] = 1661304844, ["offset"] = 12, ["type"] = 4},}
qmxg = {{["value"] = 6, ["offset"] = 0, ["type"] = 4},}
end

function h4()
qmnb = {
{["memory"] = 1048576},
{["name"] = "659透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 448, ["offset"] = 76, ["type"] = 4},
{["lv"] = 2, ["offset"] = 92, ["type"] = 4},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 qmnb = {
{["memory"] = 1048576},
{["name"] = "透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 304, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = 312, ["type"] = 16},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "上色"},
{["value"] = 432, ["type"] = 4},
{["lv"] = 64, ["offset"] = -756, ["type"] = 4},
{["lv"] = 8, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = -756, ["type"] = 4},
}
xqmnb(qmnb)
end

function h5()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.5695588e-40, 0}, {4.7408149e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.5774027e-39, 0}, {5.6262783e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪1
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202017189786658E-19, -132}, {3.76158192263132E-37, -124}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪2
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202010727438122E-19, -132}, {9.80908925027372E-45, -128}, {1.1202014604847243E-19, -124}, {255.0, -8}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function h6()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType=gg.TYPE_FLOAT 
Name="马赛克"--- 4.814603e21
local tb1={{4.814603e21,0x24CC},{4.7408149e21,0x24C4}}
local tb2={{9999,0x24C8}}
SearchWrite(tb1,tb2,dataType)
gg.toast("马赛克开启成功，正在开启透明码.................")
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
local dataType=gg.TYPE_FLOAT 
Name="透明码"--- 5.1466568e21
local tb1={{5.1466568e21,0x47E4},{5.6262783e21,0x47DC}}
local tb2={{5444,0x47E0}}
SearchWrite(tb1,tb2,dataType)
gg.toast("透视开启成功")
gg.setRanges(1048576 or 131072) 
local tb1 = {{tonumber("-1.7632431e-38"),tonumber("0")}, {tonumber("-1.7632429e-38"),tonumber("-16")}, {tonumber("4.5920551e-41"),tonumber("12")}, {tonumber("4.5919149e-41"),tonumber("-4")}, } 	
local tb2 = {{tonumber("4.594157e-41"),tonumber("-4")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end	 


function h7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-5.5695588e-40",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(16384)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-2.57740266e-40",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.57740266e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(16384)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("透视开启成功")
 gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1194380045, 4}, }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
end
  function h8()
gg.clearResults()
gg.setRanges(131072 | 1048576)
gg.searchNumber("5.79227989e21;4.81460302e21;2.0::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.toast("哲学")
gg.clearResults()
gg.setRanges(131072 | 1048576)
gg.searchNumber("1.39125666e-19;1.1202056e-19;2.0::", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.toast("透视开启成功")
end

function h9()
menu1 = gg.multiChoice({
"845透视",
"845️备用",
"845蓝色",
"845绿色️",
"845深蓝",
"845红色",
'返回上页'},
nil,'众生制作\n众生新群:806993747')

if menu1 == nil then else
if menu1[1] == true then h8451() end
if menu1[2] == true then h8452() end
if menu1[3] == true then h8453() end
if menu1[4] == true then h8454() end
if menu1[5] == true then h8455() end
if menu1[6] == true then h8456() end
if menu1[7] == true then HOME() end
end
end
function h8451()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("透明化开启成功")
end

function h8453()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end



function h8454()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
end



function h8455()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("深一点的蓝色开启成功")
end



function h8452()
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "845透视1"},
{["value"] = tonumber("5.4049168e21"), ["type"] = tonumber("16")},
{["lv"] = tonumber("1.3912565e-19"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("2"), ["offset"] = tonumber("12"), ["type"] = 16},
{["lv"] = tonumber("1.6623113e-19"), ["offset"] = tonumber("16"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("120"), ["offset"] = tonumber("12"), ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_VIDEO},
{["name"] = "845透视2"},
{["value"] = tonumber("1.1202056e-19"), ["type"] = tonumber("16")},
{["lv"] = tonumber("3.9236357e-44"), ["offset"] = tonumber("-4"), ["type"] = 16},
{["lv"] = tonumber("2"), ["offset"] = tonumber("108"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("120"), ["offset"] = tonumber("108"), ["type"] = 16},
}
xqmnb(qmnb)
end
function h8456()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物红色已开启")
end



function h11()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("稍等")
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8E;2.5;6.0255834e-44::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("835完美透视开启成功")
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("红色开始成功") 
end

function b7()
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移马赛克"},
{["value"] = -1.6815581571897805E-44, ["type"] = 16},
{["lv"] = 4.92528066768045E21, ["offset"] = -12, ["type"] = 16},
{["lv"] = 9.763126660643865E-41, ["offset"] = -8, ["type"] = 16},
{["lv"] = 4.906834486556694E21, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "偏移人物透视"},
{["value"] = -2.5774194758203506E-39, ["type"] = 16},
{["lv"] = 5.626267638530528E21, ["offset"] = -28, ["type"] = 16},
{["lv"] = 6.087445810522475E21, ["offset"] = -20, ["type"] = 16},
{["lv"] = 6.105893117546138E21, ["offset"] = -12, ["type"] = 16},
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "绿色"},
{["value"] = 8201, ["type"] = 4},
{["lv"] = 1194344495, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1194379840, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 7, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 1048576},
{["name"] = "车辆黄色"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1075052562, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1661599764, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 11, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end

function h12()
gg.setRanges(1048576)
--马赛克
local tb1 = {{1.1078273e-39,0},{4.7223665e21,4},{-9.185091e-41,8},}
local tb2 = {{5444,8,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
--透明化
local tb1 = {{5.3248159e-29,0},{3.75000596046,4},{-1.6590645e-39,8},}
local tb2 = {{5444,8,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.toast("骁龙765/765G/865/865plus人物透视开启成功")
Voice("骁龙765/765G/865/865plus人物透视开启成功")

gg.setRanges(1048576)
--马赛克
local tb1 = {{4.7777084e21,0},{-2.8025969e-45,0x4},{-1.1205026e-19,0x28},{1.1202051e-19,0x30},}
local tb2 = {{5444,0x4,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
--透明化
local tb1 = {{4.9082886e21,0},{-2.8528867e-39,0x4},{1.1202033e-19,0x20},{1.6623355e-19,0x28},}
local tb2 = {{5444,0x4,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
end

function h13()
menu1 = gg.multiChoice({
"黄色",
"红色",
"绿色",
"粉色",
"蓝色",
"淡红",
"返回主页"},
nil,"WKX制作\n源码大部分来自网络")
if menu1 == nil then else 
if menu1[1] == true then hh1() end
if menu1[2] == true then hh2() end
if menu1[3] == true then hh3() end
if menu1[4] == true then hh4() end
if menu1[5] == true then hh5() end
if menu1[6] == true then hh6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end

function hh1()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("黄色")
end
function hh2()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("红色")
  end
 function hh3()
 gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchAddress("904")
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("43", gg.TYPE_FLOAT)
gg.toast("人物绿色已成功")
end

function hh4()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("粉色")
  end

function hh5()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("蓝色")
  end
  function hh6()
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,669,466,626", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("120", gg.TYPE_DWORD)
  end
  
function h14()
menu1 = gg.multiChoice({
"黄色",
"红色",
"黑色",
"白色",
"绿色",
"返回主页"},
nil,"WKX制作\n源码大部分来自网络")
if menu1 == nil then else 
if menu1[1] == true then hh9() end
if menu1[2] == true then hh6() end
if menu1[3] == true then hh7() end
if menu1[4] == true then hh8() end
if menu1[5] == true then hh66() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end
function hh9()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("120")
 gg.getResults(100)
  gg.editAll("6", gg.TYPE_DWORD)
gg.toast("车辆黄色已成功")
end

function hh6()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("120")
 gg.getResults(100)
  gg.editAll("7", gg.TYPE_DWORD)
gg.toast("车辆红色已成功")
end



function hh7()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("120")
 gg.getResults(100)
  gg.editAll("700", gg.TYPE_DWORD)
gg.toast("车辆黑色已成功")
end

function hh8()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("120")
 gg.getResults(100)
  gg.editAll("500", gg.TYPE_DWORD)
gg.toast("车辆白色已成功")
end

function hh66()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("844")
 gg.getResults(100)
  gg.editAll("43", gg.TYPE_DWORD)
gg.toast("车辆绿色已成功")
end


function h15()
gg.setRanges(1048576)--V内存
local dataType = 16--人物模糊
local tb1 = {{3.75000405312, 0},{4.9252807e21, 8},{4.9068345e21, 16}}
local tb2 = {{5444, 20}}
SearchWrite(tb1, tb2, dataType)
gg.toast("模糊cnm的")
gg.setRanges(1048576)--V内存
local dataType = 16--人物透明
local tb1 = {{5.6262676e21, 0},{6.0874458e21, 8},{6.1058931e21, 16}}
local tb2 = {{5444, 28}}
SearchWrite(tb1, tb2, dataType)
gg.toast("透明cnm的")
gg.setRanges(1048576)--防闪1
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202017189786658E-19, -132}, {3.76158192263132E-37, -124}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)--防闪2
local dataType = 16
local tb1 = {{2.0, 0}, {1.1202010727438122E-19, -132}, {9.80908925027372E-45, -128}, {1.1202014604847243E-19, -124}, {255.0, -8}, }
local tb2 = {{99999, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("放闪cnm的")--弹语
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("7D;1,194,379,812D;1,194,344,481D;8,201D;1,074,794,496D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("绿色cnm的")
end


function h16()
 gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('5.8055795e-42F;6.50000238419F;9.8090893e-45F;2.0F:169',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('999999999',gg.TYPE_FLOAT)
gg.toast("山区放闪")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('6.50000286102F;-7.4058063e-40F;3.7615819e-37F;2.0F:157',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('9999999',gg.TYPE_FLOAT)
gg.toast("房屋放闪")
end

function h17()
menu1 = gg.multiChoice({
    "粉色",
    "蓝色",
    "黄色",
"返回主页"},
nil,"WKX制作\n源码大部分来自网络")
if menu1 == nil then else 
if menu1[1] == true then qxss1() end
if menu1[2] == true then qxss2() end
if menu1[3] == true then qxss3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


function qxss1()
gg.clearResults() gg.setRanges(gg.REGION_VIDEO) gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchAddress("0B0") gg.getResults(100) gg.editAll("6", gg.TYPE_DWORD) gg.toast("粉色已成功")
end
function qxxs2()
gg.clearResults() gg.setRanges(gg.REGION_VIDEO) gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchAddress("0B0") gg.getResults(100) gg.editAll("7", gg.TYPE_DWORD) gg.toast("蓝色已成功")
end
function qxxs3()
gg.clearResults() gg.setRanges(gg.REGION_VIDEO) gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchAddress("0B0") gg.getResults(100) gg.editAll("5", gg.TYPE_DWORD) gg.toast("黄色已成功")
end


function LFK()
menu1 = gg.multiChoice({
'P60透视(1)',
'P60红色',
"自改上色",
"P70透色",
"P60透色(2)",
"通用防闪",
"P22透色",
"P23透色",
"P10透视",
"G90透视",
"G90白色",
"P20透色",
"P22/P35透",
"P35备用透",
"联发科人物透视",
"联发科人物透视防闪",
"联发科人物仿骁龙黄色",
"联发科人物仿骁龙绿色",
"联发科人物荧光绿色",
"联发科p10至p40通用透视",
'返回上页'},
nil,'WKX制作\nP60一个用不了就用第二个')

if menu1 == nil then else
if menu1[1] == true then lfk1() end
if menu1[2] == true then lfk2() end
if menu1[3] == true then lfk3() end
if menu1[4] == true then lfk4() end
if menu1[5] == true then lfk5() end
if menu1[6] == true then lfk6() end
if menu1[7] == true then lfk7() end
if menu1[8] == true then lfk8() end
if menu1[9] == true then lfk9() end
if menu1[10] == true then lfk10() end
if menu1[11] == true then lfk11() end
if menu1[12] == true then lfk12() end
if menu1[13] == true then lfk13() end
if menu1[14] == true then lfk14() end
if menu1[15] == true then lfk15() end
if menu1[16] == true then lfk16() end
if menu1[17] == true then lfk17() end
if menu1[18] == true then lfk18() end
if menu1[19] == true then lfk19() end
if menu1[20] == true then lfk20() end
if menu1[21] == true then HOME() end
end
end
function lfk1()
gg.alert("需要冻结2")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("5.1567783e-43;3.5873241e-43;3.2229865e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("成功")
  gg.clearResults()
end

function lfk2()
  qmnb = {
    {memory = 4},
    {name = "成功"},
    {value = 395976705, type = 4},
    {
      lv = 802824192,
      offset = 8,
      type = 4
    },
    {
      lv = 802824192,
      offset = 16,
      type = 4
    },
    {
      lv = 40,
      offset = 60,
      type = 4
    }
  }
  qmxg = {
    {
      value = 38,
      offset = 60,
      type = 4
    }
  }
  xqmnb(qmnb)
end

function lfk3()
  a = gg.prompt({
    "联发科上色，随便改正负都可以"
  }, {
    [1] = 36
  }, {
    [1] = "number"
  })
  ab = "\"" .. a[1] .. "\""
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("802,824,192;48;937,041,920;40;736,370,688", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(ab, gg.TYPE_DWORD)
  gg.toast("上色")
end

function lfk4()
  	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.793662e-43F;1.4012985e-45F;0.5F;360.0F;0.5F;776.0F:121", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(20)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 	 end
	 gg.toast("透视联发科 P70")
	 gg.clearResults()
	 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("38", gg.TYPE_DWORD)
gg.toast("联发科红色上色，正在进行中")
	 end
function lfk5()
gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3.8530377e-34;1.2960464e-38;1.4012985e-45;4.2038954e-45;4.2038954e-45;7.0064923e-45;4.2038954e-45;1.4012985e-45;5.1567783e-43;1.4012985e-45;2.8025969e-45;0.5:289", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    var = gg.getResults(20)
    gg.editAll("2", gg.TYPE_FLOAT)
    var = gg.getResults(100)
    var[1].value = 2
    var[1].freeze = true
    var[2].value = 2
    var[2].freeze = true
    gg.addListItems(var)
    gg.clearResults()
    gg.toast("联发科P60透视")
end	 	 

function lfk6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
   end  
function lfk7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = 80
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.toast("君かげさがじくぇぉ透视开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("23;76;44;77;45;78:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("41",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
end 
function lfk8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16;32;432;76;4;44;344;80;12;48;368;84;4;52::",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("344", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("2",gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(" -1.8388534E28", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("56;48;16::32", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("56", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("开启成功")
end 
function lfk9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("304D;328D;328D;64D;3,552D:100",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("64", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("61",gg.TYPE_DWORD)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value = '61'
t[i].freeze = true
end
gg.addListItems(t)
gg.toast("透视成功")
end
function lfk10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("透视已开启")
	 gg.clearResults()
end

function lfk11()

  gg.clearResults()

  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)

  gg.editAll("999", gg.TYPE_FLOAT)

  gg.toast("白色已经成功")

end

function lfk12()
  SN = gg.choice({
  "p20透视",
  "P20白色",
  "p20偏移透视",
  "p20偏移上色",
"返回上页"
 }, nil, "WKX牛逼")
  if SN == 1 then
    lfk99()
  end
  if SN == 2 then
   lfk22()
  end
  if SN == 3 then
   lfk33()
  end
  if SN == 4 then
   lfk44()
  end
  if SN == 5 then
   HOME()
  end
  XGCK = -1
end



function lfk99()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6896617e-29;-5.5695588e-40;3.7615819e-37;2.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("p20马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.37548971176;1.3912569e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("120",gg.TYPE_FLOAT)
gg.toast("P20透视开启成功")
end



function lfk22()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("983,045;1,073,742,860;1,661,141,005;8,200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_DWORD)
gg.toast("p20白色开启成功")
end



function lfk33()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.1270885e-19;4.7223676e21;-5.5695588e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("5444开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.25098156929;1.8425099e-39;1.5612188e-39;-2.7610737e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.7610737e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("5444偏移透视开启成功")
end



function lfk44()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,661,501,445;1,661,141,005;8,200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("偏移上色开启成功")
end

function lfk13()
qmnb = {
{["memory"] = 4},
{["name"] = "测试"},
{["value"] = 0.94999998808, ["type"] = 16},
{["lv"] = 1.20000004768, ["offset"] = -40, ["type"] = 16},
{["lv"] = 3, ["offset"] = 320, ["type"] = 16},
}
qmxg = {
{["value"] = 120, ["offset"] = 320, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
	 gg.clearResults()
	 	 gg.clearResults()
	 gg.setRanges(QW)
	 gg.searchNumber("-294,802,802", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
xqmnb(qmnb)
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("29D;9D;56D::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
     end

function lfk14()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.20000004768;0.765625;3.0:329", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_FLOAT then
v.value = 120
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
end

function lfk15()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.30534994602F;0.56855899096F;0.00060000003F;12,000.0F;0.00003F;3.0F:517", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
	 end
gg.toast("联发科人物透视已成功")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-294,802,802", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
end

function lfk16()
for i=1,3 do
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1.8388534e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
end
gg.toast("联发科人物透视防闪已成功")
end
	 function lfk17()
qmnb = {
{["memory"] = 4},
{["name"] = "人物仿骁龙黄色第一步"},
{["value"] = 56, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 29, ["offset"] = -12, ["type"] = 4},
{["lv"] = 16, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = 31, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "人物仿骁龙黄色第二步"},
{["value"] = 31, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 29, ["offset"] = -12, ["type"] = 4},
{["lv"] = 16, ["offset"] = -20, ["type"] = 4},
}
qmxg = {
{["value"] = 67, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
gg.toast("联发科人物仿骁龙黄色已成功")
	 end
	 function lfk18()
	 ---幸运儿原创---
	gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("29D;9D;56D::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
  gg.editAll("33", gg.TYPE_DWORD)
	 gg.setRanges(4)
	 gg.searchNumber("31", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
  gg.editAll("65", gg.TYPE_DWORD)
    gg.toast("联发科人物仿骁龙绿色已成功")
	 end
function lfk19()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("23;76;44;77;45;78:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchAddress("DC")
gg.searchNumber("45", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("41",gg.TYPE_DWORD)
  gg.toast("联发科人物荧光绿色已成功")
  end
function lfk20()
qmnb = {
{["memory"] = 4},
{["name"] = "人物透视"},
{["value"] = 3, ["type"] = 16},
{["lv"] = 1, ["offset"] = 68, ["type"] = 16},
{["lv"] = 4, ["offset"] = 16, ["type"] = 16},
{["lv"] = 12000, ["offset"] = -236, ["type"] = 16},
{["lv"] = 0.00003, ["offset"] = -232, ["type"] = 16},
{["lv"] = 0.99998998642, ["offset"] = -240, ["type"] = 16},
{["lv"] = 1, ["offset"] = -216, ["type"] = 16},
{["lv"] = 1, ["offset"] = -212, ["type"] = 16},
{["lv"] = 1, ["offset"] = -208, ["type"] = 16},
{["lv"] = 1, ["offset"] = -356, ["type"] = 16},
{["lv"] = 1, ["offset"] = -372, ["type"] = 16},
}
qmxg = {
{["value"] = 150, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
end

function QL()
menu1 = gg.multiChoice({
"麒麟通用透色",
"麒麟659透️",
"麒麟659色",
"麒麟710透️",
"麒麟710红️",
"麒麟710绿️",
"麒麟六系列透视",
"麒麟通用红",
"麒麟通用绿",
"麒麟通用防闪",
"麒麟去除胸罩",
"麒麟通用靓仔色",
'返回上页'},
nil,'WKX制作\nWKX新群:806993747')

if menu1 == nil then else
if menu1[1] == true then ql1() end
if menu1[2] == true then ql2() end
if menu1[3] == true then ql3() end
if menu1[4] == true then ql4() end
if menu1[5] == true then ql5() end
if menu1[6] == true then ql6() end
if menu1[7] == true then ql7() end
if menu1[8] == true then ql8() end
if menu1[9] == true then ql9() end
if menu1[10] == true then ql10() end
if menu1[11] == true then ql11() end
if menu1[12] == true then ql12() end
if menu1[13] == true then HOME() end
end
end




function ql1()
 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.9}})
	 end
	 gg.toast("️透视开启成功️")
	 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("16;32;40::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 26}})
	 end
	 gg.toast("上色开启成功️")
end


function ql2()
 qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "透视"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 448, ["offset"] = 76, ["type"] = 4},
{["lv"] = 2, ["offset"] = 92, ["type"] = 4},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
 qmnb = {
{["memory"] = gg.REGION_C_ALLOC},
{["name"] = "透视[备用]"},
{["value"] = 1056964608, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1056964608, ["offset"] = 16, ["type"] = gg.REGION_C_ALLOC},
{["lv"] = 1077936002, ["offset"] = -3296, ["type"] = 4},
{["lv"] = 0.5, ["offset"] = 304, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = 312, ["type"] = 16},
}
qmxg = {
{["value"] = 130, ["offset"] = -3296, ["type"] = 16, ["freeze"] = true},
{["value"] = 9999, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},
}
xqmnb(qmnb)
end


function ql3()
qmnb = {
{["memory"] = 4},
{["name"] = "上色"},
{["value"] = 432, ["type"] = 4},
{["lv"] = 64, ["offset"] = -756, ["type"] = 4},
{["lv"] = 8, ["offset"] = -8, ["type"] = 4},
{["lv"] = 40, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = -756, ["type"] = 4},
}
xqmnb(qmnb)
end

function ql4()
gg.setRanges(4)
local dataType = 4
local Name ="透视"
local tb1 = {{801112064, 0}, {256, -872}, {112, -852}, {256, -836}, {112, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = {{8, -852}, {8, -172},}
SearchWrite(tb1, tb2, dataType)
end

function ql5()
gg.setRanges(4)
local dataType = 4
local tb1 = {{801112064, 0}, {256, -872}, {8, -852}, {256, -836}, {8, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = {{24, 4}, {26, -60},}
SearchWrite(tb1, tb2, dataType)
end


function ql6()
gg.setRanges(4)
local dataType = 4
local tb1 = {{801112064, 0}, {256, -872}, {8, -852}, {256, -836}, {8, -172}, {272, -168}, {801112064, -64}, {16, -60}, {801112064, -40}, {734003200, -16}, {16, 4}, }
local tb2 = { {26, 4}, {28, -60},}
SearchWrite(tb1, tb2, dataType)
end




function ql7()
qmnb = {
{["memory"] = 4},
{["name"] = "麒麟透视"},
{["value"] = 0.5, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 64, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 72, ["type"] = 16},
{["lv"] = 6.2778171e-43, ["offset"] = 76, ["type"] = 16},
{["lv"] = 2.8025969e-45, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = -0.5, ["offset"] = 0, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)


qmnb = {
{["memory"] = 4},
{["name"] = "麒麟上色"},
{["value"] = 48, ["type"] = 4},
{["lv"] = 5, ["offset"] = 12, ["type"] = 4},
{["lv"] = 256, ["offset"] = 16, ["type"] = 4},
{["lv"] = 3, ["offset"] = 20, ["type"] = 4},
{["lv"] = 22, ["offset"] = 24, ["type"] = 4},
{["lv"] = 8, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 15, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 4},
{["name"] = "透色防闪"},
{["value"] = -1.8388534e28, ["type"] = 4},
{["lv"] = -1.8388534e28, ["offset"] = 0, ["type"] = 4},
{["lv"] = -1.8388534e28, ["offset"] = 0, ["type"] = 4},
{["lv"] = -1.8388534e28, ["offset"] = 0, ["type"] = 4},
{["lv"] = -1.8388534e28, ["offset"] = 0, ["type"] = 4},
{["lv"] = -1.8388534e28, ["offset"] = 0, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function ql8()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 26}})
  end
  gg.toast("上色开启成功")
  gg.clearResults()
end



function ql9()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 28}})
  end
  gg.toast("绿色开启成功")
  gg.clearResults()
end



function ql10()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.8388534E28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
  end
  gg.toast("开启成功")
  gg.clearResults()
end







function ql11()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 24}})
  end
  gg.toast("去除胸罩开启成功")
  gg.clearResults()
end



function ql12()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("16D;32D;40D::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16;32;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("26;36", gg.TYPE_DWORD)
gg.toast("靓仔黄色开启成功")
gg.clearResults()
end




function LHZ()
MN3 = gg.multiChoice({
"  1猎户座 7420",
"  2猎户座 7570",
"  3猎户座 7870 V1",
"  4猎户座 7870 V2",
"  5猎户座 7870 V3 [游戏]",
"  6猎户座 7870 V4",
"  7猎户座 7870 V5",
"  8猎户座 7870/8890",
"  9猎户座 7885 V1",
"  10猎户座 7885 V2",
"  11猎户座 8890 V1 [大厅]",
"  12猎户座 8890 V2",
"  13猎户座 8895",
"  14猎户座 9810",
"  15猎户座 9820",
'返回上页'},
nil,'众生制作\n众生新群:806993747')


  if MN3 == nil then else
  if MN3[1] == true then WHEXY7420() end
  if MN3[2] == true then WHEXY7570() end
  if MN3[3] == true then WHEXY7870V1() end
  if MN3[4] == true then WHEXY7870V2() end
  if MN3[5] == true then WHEXY7870V3() end
  if MN3[6] == true then WHEXY7870V4() end
  if MN3[7] == true then WHEXY7870V5() end
  if MN3[8] == true then WHEXY7870V7() end
  if MN3[9] == true then WHEXY7885() end
  if MN3[10] == true then WHEXY7885V2() end
  if MN3[11] == true then WHEXY8890() end
  if MN3[12] == true then WHEXY8890V2() end
  if MN3[13] == true then WHEXY8895() end
  if MN3[14] == true then WHEXY9810() end
  if MN3[15] == true then WHEXY9820() end 
  if menu1[18] == true then HOME() end
  end
  end
  
  


  function WHEXY8895()
    if w == 1 then
      WHFIX8895()
    else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber('0.5F;360;736;1.0;1.0;1.0;1.0:85', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.alert('Value Not Found')
      else
        gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        _Count = gg.getResultCount()
        _A = gg.getResults(_Count)
        last_Count = _Count + 1
        w = 1
        _T = 'Edit Wallhack Value'
        WHFIX8895()
      end
    end
  end
  function WHFIX8895()
    if w == 0 then
      gg.alert('Value Not Found')
    else
      gg.setVisible(false)
      _CL = {}
      for _FORV_3_ = 1, _Count do
        _CL[_FORV_3_] = ' Value   ' .. _FORV_3_ .. ""
      end
      _CL[last_Count] = '⬅️ [Back]'
      _C_ = gg.choice(_CL, nil, "")
      for _FORV_3_ = 1, _Count do
        if _C_ == _FORV_3_ then
          for _FORV_7_, _FORV_8_ in ipairs(_A) do
            _A[_FORV_7_].freeze = false
            gg.addListItems(_A)
          end
          _A[_FORV_3_].value = 0
          _A[_FORV_3_].freeze = true
          gg.addListItems(_A)
          _FORV_3_ = _Count
        elseif K_2 == _Count + 1 then
          EXY8895()
        end
      end
    end
    gg.setVisible(true)
  end

  function EXY9820()
    if w == 1 then
      WHFIX9820()
    else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber('0.5;360.0;724.0;1.0;1.0;1.0;1.0;1.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.alert('Value Not Found')
      else
        gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        _Count = gg.getResultCount()
        _A = gg.getResults(_Count)
        last_Count = _Count + 1
        w = 1
        _T = 'Edit Wallhack Value'
        WHFIX9820()
      end
    end
  end
  function WHFIX9820()
    if w == 0 then
      gg.alert('Value Not Found')
    else
      gg.setVisible(false)
      _CL = {}
      for _FORV_3_ = 1, _Count do
        _CL[_FORV_3_] = ' Value   ' .. _FORV_3_ .. ""
      end
      _CL[last_Count] = '⬅️ [Back]'
      _C_ = gg.choice(_CL, nil, 'Wallhack Exynos 9820')
      for _FORV_3_ = 1, _Count do
        if _C_ == _FORV_3_ then
          for _FORV_7_, _FORV_8_ in ipairs(_A) do
            _A[_FORV_7_].freeze = false
            gg.addListItems(_A)
          end
          _A[_FORV_3_].value = 0
          _A[_FORV_3_].freeze = true
          gg.addListItems(_A)
          _FORV_3_ = _Count
        elseif K_2 == _Count + 1 then
          EXY9820()
        end
      end
    end
    gg.setVisible(true)
  end



 
function WHEXY7870V6()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.searchNumber("1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.searchNumber("9.7007039e-38;1.8367379e-40;4.5917748e-40;9.6272355e-38;3.1389086e-43;1.4012985e-45;2.8025969e-45;0.5:497", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
 if v.flags == gg.TYPE_FLOAT then
  v.value = "0"
  v.freeze = true
 end
end
gg.addListItems(t)
t = nil
    gg.toast("Wallhack Exynos 7870/8890 activated!")
  end



  function WHEXY7870V5()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.0F;268.0F;-480.0F;1.0F;1.0F;1.0F;1.0F;0.0F;0.0F;268.0F;480.0F;0.5F;0.5F;0.0F;0.0F;1.0F;1.0F;0.0F;0.0F;1.0F;1.0F;1.0F;1.0F;0.0F;0.0F;0.0F::421", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.toast(" + 1")
    gg.processResume()
    gg.refineNumber("1.0F;0.0F;0.0F;268.0F;480.0F;0.5F;0.5F;0.0F;0.0F;1.0F;1.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.toast(" +2 ")
    gg.refineNumber("268.0F;480.0F;0.5F;0.5F;0.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.processResume()
    gg.toast(" +3")
    gg.refineNumber("0.5F;0.5F::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.toast(" +4 ")
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
		v.value = '0'
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
    gg.toast("Wallhack Exynos 7870 V5 activated!")
  end

  function WHEXY9810()
    if w == 1 then
      WHFIX()
    else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.5;360.0;736.0;0.5;1.0;1.0;1.0;1.0:85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.alert("Value Not Found")
      else
        gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        _Count = gg.getResultCount()
        _A = gg.getResults(_Count)
        last_Count = _Count + 1
        w = 1
        _T = "Edit Wallhack Value"
        WHFIX()
      end
    end
  end
  function WHFIX()
    if w == 0 then
      gg.alert("Value Not Found")
    else
      gg.setVisible(false)
      _CL = {}
      for _FORV_3_ = 1, _Count do
        _CL[_FORV_3_] = " Value   " .. _FORV_3_ .. ""
      end
      _CL[last_Count] = "⬅️ [Back]"
      _C_ = gg.choice(_CL, nil, "Wallhack Exynos 9810")
      for _FORV_3_ = 1, _Count do
        if _C_ == _FORV_3_ then
          for _FORV_7_, _FORV_8_ in ipairs(_A) do
            _A[_FORV_7_].freeze = false
            gg.addListItems(_A)
          end
          _A[_FORV_3_].value = 0
          _A[_FORV_3_].freeze = true
          gg.addListItems(_A)
          _FORV_3_ = _Count
        elseif K_2 == _Count + 1 then
          WA()
        end
      end
    end
    gg.setVisible(true)
  end

  function WHEXY8890V2()
    if w == 1 then
      WHFIX()
    else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.5;360;640;1.0;1.0;1.0;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.alert("Value Not Found")
      else
        gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        _Count = gg.getResultCount()
        _A = gg.getResults(_Count)
        last_Count = _Count + 1
        w = 1
        _T = "Edit Wallhack Value"
        WHFIX()
      end
    end
  end
  function WHFIX()
    if w == 0 then
      gg.alert("Value Not Found")
    else
      gg.setVisible(false)
      _CL = {}
      for _FORV_3_ = 1, _Count do
        _CL[_FORV_3_] = " Value   " .. _FORV_3_ .. ""
      end
      _CL[last_Count] = "⬅️ [Back]"
      _C_ = gg.choice(_CL, nil, "Wallhack Exynos 8890 V2")
      for _FORV_3_ = 1, _Count do
        if _C_ == _FORV_3_ then
          for _FORV_7_, _FORV_8_ in ipairs(_A) do
            _A[_FORV_7_].freeze = false
            gg.addListItems(_A)
          end
          _A[_FORV_3_].value = 0
          _A[_FORV_3_].freeze = true
          gg.addListItems(_A)
          _FORV_3_ = _Count
        elseif K_2 == _Count + 1 then
          WA()
        end
      end
    end
    gg.setVisible(true)
  end
  _T = "🔍 Search For Value"
  _T, w = 0
  function WHEXY7885V2()
    if w == 1 then
      WHFIX()
    else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("0.5;360;736;1.0;1.0;1.0;1.0;1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.alert("Value Not Found")
      else
        gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        _Count = gg.getResultCount()
        _A = gg.getResults(_Count)
        last_Count = _Count + 1
        w = 1
        _T = "Edit Wallhack Value"
        WHFIX()
      end
    end
  end
  function WHFIX()
    if w == 0 then
      gg.alert("Value Not Found")
    else
      gg.setVisible(false)
      _CL = {}
      for _FORV_3_ = 1, _Count do
        _CL[_FORV_3_] = " Value   " .. _FORV_3_ .. ""
      end
      _CL[last_Count] = "⬅️ [Back]"
      _C_ = gg.choice(_CL, nil, "Wallhack Exynos 7885 V2")
      for _FORV_3_ = 1, _Count do
        if _C_ == _FORV_3_ then
          for _FORV_7_, _FORV_8_ in ipairs(_A) do
            _A[_FORV_7_].freeze = false
            gg.addListItems(_A)
          end
          _A[_FORV_3_].value = 0
          _A[_FORV_3_].freeze = true
          gg.addListItems(_A)
          _FORV_3_ = _Count
        elseif K_2 == _Count + 1 then
          WA()
        end
      end
    end
    gg.setVisible(true)
  end
  _T = "🔍 Search For Value"
  _T, w = 0
  function WHEXY7870V4()
    if w == 1 then
      WHFIX()
    else
      gg.clearList()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("1.0;1.0;1.0;1.0;1.0;0.5;268.0;552.0;0.5:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.alert("Value Not Found")
      else
        gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        _Count = gg.getResultCount()
        _A = gg.getResults(_Count)
        last_Count = _Count + 1
        w = 1
        _T = "Edit Wallhack Value"
        WHFIX()
      end
    end
  end
  function WHFIX()
    if w == 0 then
      gg.alert("Value Not Found")
    else
      gg.setVisible(false)
      _CL = {}
      for _FORV_3_ = 1, _Count do
        _CL[_FORV_3_] = " Value   " .. _FORV_3_ .. ""
      end
      _CL[last_Count] = "⬅️ [Back]"
      _C_ = gg.choice(_CL, nil, "Wallhack Exynos 7870")
      for _FORV_3_ = 1, _Count do
        if _C_ == _FORV_3_ then
          for _FORV_7_, _FORV_8_ in ipairs(_A) do
            _A[_FORV_7_].freeze = false
            gg.addListItems(_A)
          end
          _A[_FORV_3_].value = 0
          _A[_FORV_3_].freeze = true
          gg.addListItems(_A)
          _FORV_3_ = _Count
        elseif K_2 == _Count + 1 then
          WA()
        end
      end
    end
    gg.setVisible(true)
  end
  _T = "🔍 Search For Value"
  _T, w = 0
  
function WHEXY7570()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373", gg.TYPE_FLOAT)
    gg.searchNumber("0.5", gg.TYPE_FLOAT)
    t = gg.getResults(10)
    gg.editAll("50", gg.TYPE_FLOAT)
    t[1].value = "50"
    t[2].value = "50"
    t[3].value = "50"
    t[4].value = "50"
    t[5].value = "50"
    t[6].value = "50"
    t[1].freeze = true
    t[2].freeze = true
    t[3].freeze = true
    t[4].freeze = true
    t[5].freeze = true
    t[6].freeze = true
    print("addListItems: ", gg.addListItems(t))
    gg.toast("Wallhack Exynos 7570 activated!")
end


function WHEXY8890()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('1;1;1;1;1;1;0.5;0.5;2D;1D;5D;1D:200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if _FORV_5_.flags == gg.TYPE_FLOAT then
        _FORV_5_.value = '120'
        _FORV_5_.freeze = true
      end
    end
    gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.toast("Wallhack Exynos 8890 V1 activated!")
    gg.clearResults()
end

function WHEXY7885()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('0,0;0,0;0,0;0,0;0,0;-0,0;0,5;-360,0;360,0;740,0;0,5;-740,0;0,0;0,0;0,0;0,0;0,0;1,0;1,0;0,0;0,0;0,0;0,0;0,0;1,0;1,0;1,0;1,0;0,0;0,0;0,0;1,0:133', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    t = gg.getResults(10)
    gg.editAll('0', gg.TYPE_FLOAT)
    t[1].value = '0'
    t[2].value = '0.5'
    t[3].value = '0'
    t[4].value = '0.5'
    t[1].freeze = true
    t[2].freeze = true
    t[3].freeze = true
    t[4].freeze = true
    print('addListItems: ', gg.addListItems(t))
    gg.toast("Wallhack Exynos 7885 V1 activated!")
end

function WHEXY7870V3()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('0.00030000001F;0.99998998642F;15,000.0F;0.00002F;1.0F;1.0F;1.0F;1.0F;1.0F;0.5F;268.0F;268.0F;480.0F;0.5F;480.0F;2D;1D;5D;1D;192D:265', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if _FORV_5_.flags == gg.TYPE_FLOAT then
        _FORV_5_.value = '120'
        _FORV_5_.freeze = true
      end
    end
    gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.searchNumber('0.00030000001F;0.99998998642F;15,000.0F;0.00002F;1.0F;1.0F;1.0F;1.0F;1.0F;0.5F;268.0F;268.0F;480.0F;0.5F;480.0F;2D;1D;192D:265', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    for _FORV_5_, _FORV_6_ in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if _FORV_6_.flags == gg.TYPE_FLOAT then
        _FORV_6_.value = '120'
        _FORV_6_.freeze = true
      end
    end
    gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.searchNumber('0.99998998642F;1.0F;1.0F;1.0F;1.0F;1.0F;0.5F;268.0F;268.0F;480.0F;0.5F;480.0F;2D;1D;192D:265', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    for _FORV_6_, _FORV_7_ in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if _FORV_7_.flags == gg.TYPE_FLOAT then
        _FORV_7_.value = '120'
        _FORV_7_.freeze = true
      end
    end
    gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.clearResults()
    gg.searchNumber('0.99998998642F;1.0F;1.0F;1.0F;1.0F;1.0F;0.5F;268.0F;268.0F;480.0F;0.5F;480.0F;5D;1D;192D:265', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    for _FORV_7_, _FORV_8_ in ipairs((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil))) do
      if _FORV_8_.flags == gg.TYPE_FLOAT then
        _FORV_8_.value = '120'
        _FORV_8_.freeze = true
      end
    end
    gg.addListItems((gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)))
    gg.toast("Wallhack Exynos 7870 V3 activated!")
    gg.clearResults()
    os.remove("/storage/emulated/0/.log.txt")
end

function WHEXY7870V2()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('0.0F;268.0F;-480.0F;1.0F;1.0F;1.0F;1.0F;0.0F;0.0F;268.0F;480.0F;0.5F;0.5F;0.0F;0.0F;1.0F;1.0F;0.0F;0.0F;1.0F;1.0F;1.0F;1.0F;0.0F;0.0F;0.0F:421', gg.TYPE_FLOAT)
    gg.searchNumber('0.5', gg.TYPE_FLOAT)
    t = gg.getResults(10)
    gg.editAll('50', gg.TYPE_FLOAT)
    t[1].value = '50'
    t[2].value = '50'
    t[3].value = '50'
    t[4].value = '50'
    t[5].value = '50'
    t[6].value = '50'
    t[1].freeze = true
    t[2].freeze = true
    t[3].freeze = true
    t[4].freeze = true
    t[5].freeze = true
    t[6].freeze = true
    print('addListItems: ', gg.addListItems(t))
    gg.toast("Wallhack Exynos 7870 V2 activated!")
end

function WHEXY7870V1()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373', gg.TYPE_FLOAT)
    gg.searchNumber('0.5', gg.TYPE_FLOAT)
    t = gg.getResults(10)
    gg.editAll('50', gg.TYPE_FLOAT)
    t[1].value = '50'
    t[2].value = '50'
    t[3].value = '50'
    t[4].value = '50'
    t[5].value = '50'
    t[6].value = '50'
    t[1].freeze = true
    t[2].freeze = true
    t[3].freeze = true
    t[4].freeze = true
    t[5].freeze = true
    t[6].freeze = true
    print('addListItems: ', gg.addListItems(t))
    gg.toast("Wallhack Exynos 7870 V1 activated!")
end

function WHEXY7420()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373', gg.TYPE_FLOAT)
    gg.searchNumber('0.5', gg.TYPE_FLOAT)
    t = gg.getResults(10)
    gg.editAll('50', gg.TYPE_FLOAT)
    t[1].value = '50'
    t[2].value = '50'
    t[3].value = '50'
    t[4].value = '50'
    t[5].value = '50'
    t[6].value = '50'
    t[1].freeze = true
    t[2].freeze = true
    t[3].freeze = true
    t[4].freeze = true
    t[5].freeze = true
    t[6].freeze = true
    print('addListItems: ', gg.addListItems(t))
    gg.toast("Wallhack Exynos 7420 activated!")
end





function B()
menu1 = gg.multiChoice({
"团队加速",
"加速关闭",
"伤害修复",
"全局不拉",
"关闭加速",
"人物加速",
"加速关闭",
"雨林加速",
"加速关闭",
"海岛加速",
"加速关闭",
"二倍加速",
"微加速",
"微加速关闭",
'返回上一页'},
nil,'这些加速虽然新版本拉回\n但是他60秒的体验卡(我估计更久)\n决赛圈可以稳定屠杀')

if menu1 == nil then else
if menu1[1] == true then td1() end
if menu1[2] == true then td2() end
if menu1[3] == true then f1() end
if menu1[4] == true then f2() end
if menu1[5] == true then f3() end
if menu1[6] == true then f4() end
if menu1[7] == true then f5() end
if menu1[8] == true then f6() end
if menu1[9] == true then f7() end
if menu1[10] == true then f8() end
if menu1[11] == true then f9() end
if menu1[12] == true then f10() end
if menu1[13] == true then f11() end
if menu1[14] == true then f12() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end

function td1()
 gg.setRanges(16384)
    SearchWrite({
      {-1.0530367E28, -12},
      {-5.8454586E27, -8},
      {-2.7860151E28, 0},
      {-3.7444097E28, 4},
      {-2.793752E28, 296}
    }, {
      {0, 0},
      {0, 4},
      {0, 296}
    }, 16)
    gg.setRanges(16384)
    SearchWrite({
      {6.1630904E-33, -4},
      {-9.9839328E27, 4},
      {-1.0070975E28, 16}
    }, {
      {0, 0}
    }, 16)
gg.setRanges(32)
    SearchWrite({
      {-980, -296},
      {800000, -240},
      {1.4125089E-40, 60}
    }, {
      {1.96, -20},
      {1.96, -16},
      {1.96, -12}
    }, 16)
    gg.setRanges(16384)
    SearchWrite({
      {-36028732594454528, -276},
      {0.00999999978, 76}
    }, {
      {10.19, 0}
    }, 16)
gg.toast("团队加速开启成功")
end 

function td2()
 gg.setRanges(16384)
    SearchWrite({
      {-1.0530367E28, -12},
      {-5.8454586E27, -8},
      {0, 0},
      {0, 4},
      {0, 296}
    }, {
      {
        -2.7860151E28,
        0,
        0
      },
      {-3.7444097E28, 4},
      {-2.793752E28, 296}
    }, 16)
    gg.setRanges(16384)
    SearchWrite({
      {6.1630904E-33, -4},
      {-9.9839328E27, 4},
      {-1.0070975E28, 16}
    }, {
      {-6.1526231E27, 0}
    }, 16)
    gg.setRanges(16384)
    SearchWrite({
      {-36028732594454528, -276},
      {0.00999999978, 76}
    }, {
      {10.90734863281, 0}
    }, 16)
    gg.setRanges(32)
    SearchWrite({
      {-980, -296},
      {800000, -240},
      {1.4125089E-40, 60}
    }, {
      {1, -20},
      {1, -16},
      {1, -12}
    }, 16)
gg.toast("关闭成功")
end


function f1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
    gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
    gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
    gg.searchNumber("68000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('34567',gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("开启成功")
end

function f2()
gg.alert("加速更快")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("加速开启成功")
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "翻倍中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1.49,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速翻倍开启成功")
end

function f3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("加速关闭成功")

qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "关闭翻倍中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("翻倍关闭成功")
end

function f4()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速开启中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2.2,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.setRanges(32)--A内存 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.0005, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.025, 0xF904},}
SearchWrite(tb1, tb2, dataType)
end

function f5()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速关闭中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速关闭中")
gg.setRanges(32)--A内存 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.025, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.0005, 0xF904},}
SearchWrite(tb1, tb2, dataType)
end

function f6()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速开启中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.setRanges(gg.REGION_CODE_APP)
local dataType=gg.TYPE_FLOAT Name="全速统一"
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00050000002,0x33E4}, {1.20000004768, 0x33D8}, {1.4012985e-45, 0x3378}, {0.10000000149, 0x335C},}
local tb2 = {{0.02, 0x33E4},}
SearchWrite(tb1, tb2, dataType)
gg.toast("稳定加速")
end



function f7()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速关闭中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 0,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.01999999955,0x33E4}, {1.20000004768, 0x33D8}, {1.4012985e-45, 0x3378}, {0.10000000149, 0x335C},}
local tb2 = {{0.00050000002, 0x33E4},}
SearchWrite(tb1, tb2, dataType)
gg.toast("关闭成功")
end



function f8()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("开启成功")
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速开启中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 2.3,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速开启中")
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="全速统一"
local tb1={{-2.19893566e22,0x3804}}
local tb2={{-1.11446527e28,0x3820}}
SearchWrite(tb1,tb2,dataType)
gg.setRanges(32) 
local tb1 = {{ ("3600000000"), ("80")}, { ("2500000000"), ("88")} } 	
local tb2 = {{ ("1200"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
Fxs({{11.25,0,16},{-1.8890966e26,4,16},{-0.60239994526,8,16},},{{10.90734863281,0,16},},8,"Fxs")
gg.setRanges(32) 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.0005, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.025, 0xF904},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{1.448214205959717E-35, 0},{-3.8369230488065634E21, -4},}
local tb2 = {{-3.8369228e21, -4},}
SearchWrite(tb1, tb2, dataType)
end

function f9()
gg.setRanges(16384) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(16384) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
qmnb = {
{memory = gg.REGION_ANONYMOUS},
{name = "加速关闭中"},
{value = 5.0000002E-4,type = gg.TYPE_FLOAT},
{lv = 0.40000000596,offset = 4,type = gg.TYPE_FLOAT},
{lv = 1.0E-4,offset = -8,type = gg.TYPE_FLOAT}
}
qmxg = {

{value = 1,offset = -12,type = gg.TYPE_FLOAT}
}
xqmnb(qmnb)
gg.toast("加速关闭中")
gg.setRanges(32) 
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.025, 0xF904}, {260.91305541992, 0xE058}, {218.81350708008, 0xE05C}, }
local tb2 = {{0.0005, 0xF904},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
Name = "恢复" 
local tb1 = {{1.448214205959717E-35, 0},{-3.8369228e21, -4},{-1.1903915942440579E21, -44},{-2.9557634527827853E20, -40},{-3.6893509258042357E20, -12},}
local tb2 = {{-3.8369230488065634E21, -4},}
SearchWrite(tb1, tb2, dataType)
end


function f10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("人物微速开启成功")
end

function f11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1.07", gg.TYPE_FLOAT)
  gg.toast("微加速开启!")
end

function f12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.06;1.06;1.06;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.07", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("微加速关闭!")
end



function C()
menu1 = gg.multiChoice({
"无后防抖聚点",
"除雾除草",
"天线",
"瞬机",
"小黑人",
"杀人准星",
"全屏准星",
"除草除树",
"除草树关",
"变态全除",
"降落伞加速(出生岛开启)",
"返回上页"},
nil,"WKX牛逼")
if menu1 == nil then else 
if menu1[1] == true then dd1() end
if menu1[2] == true then dd2() end
if menu1[3] == true then dd3() end
if menu1[4] == true then dd4() end
if menu1[5] == true then dd5() end
if menu1[6] == true then dd6() end
if menu1[7] == true then dd7() end
if menu1[8] == true then dd8() end
if menu1[9] == true then dd9() end
if menu1[10] == true then dd10() end
if menu1[11] == true then dd11() end
if menu1[12] == true then HOME() end
end
end
function dd1()
Name = "无后" 
gg.setRanges(16384)
local dataType = 16
local search = {{-1.1368873507541788E-13, 0},{-2.78698202667584E28, -8},}
local modify = {{0, -8},}
SearchWrite(search,modify,dataType,Name)
Name = "防抖" 
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-405405696, 0},{-499122175, 4},{-481296380, 8},}
local tb2 = {{0, 0},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0},{-2.8111605430681328E28, -12},{-1476732160.0, -8},{-3.7444097189855772E28, -4},{128.0, 4},}
local tb2 = {{0, 0},}
SearchWrite(tb1, tb2, dataType)
Name = "聚点" 
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.114450155758339E28, 0},{-1.238242388799446E28, -8},{-1.423933276633091E28, -4},{-1.8331474059341755E27, 4},{-7.160887698833495E24, 8},}
local tb2 = {{90, 0},}
SearchWrite(tb1, tb2, dataType)
end

  function dd2()
qmnb = {
{["memory"] = 32},
{["name"] = "全图除草"},
{["value"] = 1.39999997616, ["type"] = 16},
{["lv"] = 1.39999997616, ["offset"] = -4, ["type"] = 16},
{["lv"] = 2.0318828e-43, ["offset"] = 24, ["type"] = 16},
{["lv"] = 1.29999995232, ["offset"] = 48, ["type"] = 16},
}
qmxg = {
{["value"] = -0.00001, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "全图除雾"},
{["value"] = -2123974960349970432, ["type"] = 32},
{["lv"] = -1.3620439e28, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
  end


function dd3()
menu2 = gg.multiChoice({
"黑弩天线",
"脖子天线",
"人物天线",
"WKX天线",
"肩部天线",
"鬼畜天线",
"人物天线",
"头发天线",
"肩部天线2",
"脖子天线2",
"盒子天线",
"哲学天线",
'返回上页'},
nil,'WKX制作\nWKX新群:806993747')

if menu2 == nil then else
if menu2[1] == true then tx1() end
if menu2[2] == true then tx2() end
if menu2[3] == true then tx3() end
if menu2[4] == true then tx4() end
if menu2[5] == true then tx5() end
if menu2[6] == true then tx6() end
if menu2[7] == true then tx7() end
if menu2[8] == true then tx8() end
if menu2[9] == true then tx9() end
if menu2[10] == true then tx10() end
if menu2[11] == true then tx11() end
if menu2[12] == true then tx12() end
if menu2[13] == true then HOME() end
end
end

function tx1()
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{9.73725,0x68},}SearchWrite(tb1,tb2,dataType)
qmnb = {
{["memory"] = 32},
{["name"] = "50%"},
{["value"] = tonumber("88.50576019287"), ["type"] = 16},
{["lv"] = tonumber("87.27782440186"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("1.96875"), ["offset"] = tonumber("0"), ["type"] = 16},
{["value"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "100%"},
{["value"] = tonumber("1.96875"), ["type"] = 16},
{["lv"] = tonumber("1.96875"), ["offset"] = tonumber("4"), ["type"] = 16},
{["lv"] = tonumber("-100.91194152832"), ["offset"] = tonumber("8"), ["type"] = 16},
{["lv"] = tonumber("1"), ["offset"] = tonumber("12"), ["type"] = 16},
}
qmxg = {
{["value"] = tonumber("999"), ["offset"] = tonumber("12"), ["type"] = 16},
}
xqmnb(qmnb)
xqmnb(qmnb)
    gg.clearResults()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "出生地天线"},
{["value"] = 1.1920926e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.99999988079, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 20000, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("0.9378669858F;1.0F;0.61365610361F::55", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("1", 16, false, 536870912, 0, -1) 
gg.getResults(100) 
gg.editAll("9999", 16) 
	 gg.toast("不漏人天线开启成功")
	 end
	 

	 
	function tx2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("脖子天线")
end

function tx3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.toast("天线开启成功")
  qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "天线开启"},
{["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function tx4()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{9.73725,0x68},}SearchWrite(tb1,tb2,dataType)
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("不漏人天线开启成功")
end
function tx5()
qmnb = {
{["memory"] = 32},
{["name"] = "肩部全局天线"},
{["value"] = -100.91194152832, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87.27782440186, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88.50576019287, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.4012985e-45, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 1.96875, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 999999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 2, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end
function tx6()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("293A6DEE09FA91EDr", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0000000009FA91EDr", gg.TYPE_QWORD)
end

function tx7()
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "天线开启"
    },
    {
      value = -100.91194152832,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 87.27782440186,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 88.50576019287,
      offset = -8,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 1.4012985E-45,
      offset = 16,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 1.96875,
      offset = -8,
      type = gg.TYPE_FLOAT
    },
    {
      value = 1.96875,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      value = 999999,
      offset = 4,
      type = gg.TYPE_FLOAT
    },
    {
      value = 2,
      offset = 8,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("不漏人天线开启成功")
end
function tx8() 
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(6) 
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT) 
gg.clearResults() 
gg.toast("新版天线") 
end 

function tx9()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1.0F;1.0F;1.0F:49", 16, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287;87.27782440186;1.0;1.0;1.0", 16, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(5)
      gg.editAll("1.9876;1.9876;999;1.5;0.05", gg.TYPE_FLOAT)
      end
function tx10()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  end

function tx11()
Name = "盒子天线" 
gg.setRanges(1048576)
local dataType = 16
local search = {{14.79005432129,0},}
local modify = {{999999, 0},}
SearchWrite(search,modify,dataType)
end
function tx12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18.38613319397F;0.53447723389F;3.42665576935F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38613319397", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("8888", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("准备部署♂")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13142681122;0.53447723389;22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("22.6400718689", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("9621", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50％♂")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("0.53446006775F;-1.68741035461F:501", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.68741035461", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1995)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("75％♂")
  gg.searchNumber("18.38612365723F;0.54026412964F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38612365723F;0.54026412964F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1995)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("天线开启成功，开始v♂an")
  d14sj="1"
end

function dd4()
gg.setRanges(16384)
local dataType = 16
local search = {{-1.4278110478704994E28, 0},{8.562694393506966E-26, -12},{1.8175359108152E-27, -8},}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(16384)
local dataType = 16
local search = {{-3.254379949369797E30, 0},{2.646983324423844E-23, -56},}
local modify = {{0, -56},}
SearchWrite(search,modify,dataType,Name)
end
    
function dd5() 
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-443281372, 0}, {-577553919, -88}, {-567137789, -84}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function dd6()
qmnb = {
{["memory"] = 32},
{["name"] = "全屏屠心"},
{["value"] = 16, ["type"] = 16},
{["lv"] = 4, ["offset"] = -4, ["type"] = 16},
{["lv"] = 8, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 669, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end
function dd7()
qmnb = {
{["memory"] = 16384},
{["name"] = "全屏准心"},
{["value"] = -486534859, ["type"] = 4},
{["lv"] = -481230848, ["offset"] = 172, ["type"] = 4},
{["lv"] = -481230847, ["offset"] = 536, ["type"] = 4},
{["lv"] = -308299093, ["offset"] = 2444, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 172, ["type"] = 4},
{["value"] = 0, ["offset"] = 536, ["type"] = 4},
{["value"] = 0, ["offset"] = 2444, ["type"] = 4},
}
xqmnb(qmnb)
end

  function dd8()
    gg.setRanges(16384)
    SearchWrite({
      {
        tonumber("-3.1863806e30"),
        tonumber("0")
      },
      {
        tonumber("-6.1840865e27"),
        tonumber("12")
      }
    }, {
      {
        tonumber("0"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
  
  function dd9()
    gg.setRanges(16384)
    SearchWrite({
      {
        tonumber("-6.1840865e27"),
        tonumber("12")
      }
    }, {
      {
        tonumber("-3.1863806e30"),
        tonumber("0")
      }
    }, (tonumber("16")))
  end
  
  function dd10()
---二爷原创功能---
sjjg = gg.prompt({
"请输入您要持续该功能效果的时间长短(单位:ms)："
}, {""})
if sjjg ~= nil then
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2,089,612,928,250,541,568",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-2,089,612,932,236,181,504",32)
gg.sleep(sjjg[1])---单位:ms
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-2,089,612,932,236,181,504',gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-2,089,612,928,250,541,568",gg.TYPE_QWORD)
gg.toast("变态全除已成功")
end
end
function dd11()
gg.setRanges(32)
gg.searchNumber("200;200;1;1::13", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.getResults(21)
gg.editAll("2412", 16)
gg.toast("降落伞加速开启成功")
end
function D()
menu1 = gg.multiChoice({
'天空上色',
'上帝视角',
"杀猪子弹",
'人物地线',
'步枪瞬机',
'步枪加伤',
'装备定位',
'循环地线',
'98K连狙',
"M24连狙",
"AWM连狙",
"红点倍镜",
"血液美化",
"人物秒趴",
"瞬间开镜",
"修改帧率",
"增强耐久",
"全屏特效",
"返回上页"},
nil,"WKX牛逼")
if menu1 == nil then else 
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then d16() end
if menu1[17] == true then d17() end
if menu1[18] == true then d18() end
if menu1[19] == true then HOME() end
end
end


function d1()
menu1 = gg.multiChoice({
'黑色天空',
'黄昏天空',
'星空天空',
'彩色天空',
'水晶天空',
'红色天空',
'粉色天空',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then k8() end
if menu1[2] == true then k9() end
if menu1[3] == true then k1() end
if menu1[4] == true then k3() end
if menu1[5] == true then k4() end
if menu1[6] == true then k5() end
if menu1[7] == true then k6() end
if menu1[8] == true then HOME() end
end
GLWW=-1
end
function k8()
qmnb = {
{["memory"] = 32},
{["name"] = "天空黑色"},
{["value"] = 9.2913095e-41, ["type"] = 16},
{["lv"] = 4, ["offset"] = -8, ["type"] = 4},
{["lv"] = 2, ["offset"] = -16, ["type"] = 4},
{["lv"] = 8, ["offset"] = -36, ["type"] = 4},
{["lv"] = 1, ["offset"] = -40, ["type"] = 4},
{["lv"] = 0, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -12, ["type"] = 4},
{["lv"] = 8, ["offset"] = -60, ["type"] = 4},
{["lv"] = 2, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1, ["offset"] = -64, ["type"] = 4},
{["lv"] = 0, ["offset"] = -76, ["type"] = 4},
{["lv"] = 2, ["offset"] = -80, ["type"] = 4},
{["lv"] = 8, ["offset"] = -84, ["type"] = 4},
{["lv"] = 1, ["offset"] = -88, ["type"] = 4},
{["lv"] = 0, ["offset"] = -100, ["type"] = 4},
{["lv"] = 16, ["offset"] = 176, ["type"] = 4},
{["lv"] = 9, ["offset"] = 172, ["type"] = 4},
{["lv"] = 0, ["offset"] = 168, ["type"] = 4},
{["lv"] = 4, ["offset"] = 184, ["type"] = 4},
{["lv"] = 0, ["offset"] = 188, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("全机型开启成功")
 gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.clearResults()
  gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SING_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-90", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("晓龙黑色已成功")
  
	gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("040")
 gg.getResults(100)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("海岛已成功")
  end

function k9()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1074792717, -4}, }
local tb2 = {{3, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("黄昏天空开启成功")
end



function k1()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1074792717, -4}, {1194363663, 4}, {-2144333824, 12}, }
local tb2 = {{6, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("星空天空开启成功")
end
function k3()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1074792717, -4}, {1194363663, 4}, {-2144333824, 12}, }
local tb2 = {{4, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("彩色天空开启成功")
end
function k4()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{671236105, 0}, {1669562379, -4}, {1074792717, 4}, }
local tb2 = {{8, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("水晶天空开启成功")
end
function k5()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1074792717, -4}, {1194363663, 4}, {-2144333824, 12}, }
local tb2 = {{5, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("天空红色开启成功")
end

function k6()
gg.clearResults()
 Name = "天空粉色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{1669401088, 0},
{537149463, 8},
{4, 12},
{256, 24},

}
local modify = {{1669398529, 0},}
SearchWrite(search,modify,dataType,Name)    
end







function d2()
qmnb = {
{["memory"] = 32},
{["name"] ="上帝视角"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] =440, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function d3()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2067152224969545200",  32,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1)
gg.editAll("-2067152228963057664",32)
gg.clearResults()
end


function d4()
gg.setRanges(32)
local tb1 = {{tonumber("-1.68741369247"),tonumber("0")}, {tonumber("0.33067199588"),tonumber("12")}, } 	
local tb2 = {{tonumber("-999999999"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("地线开启成功")
end

function d5()
qmnb = {
{["memory"] = 32},
{["name"] = "开启成功"},
{["value"] = 0.08600000292, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.05, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "开启成功"},
{["value"] = 0.09600000083, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0.05, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "开启成功"},
{["value"] = 0.10000000149, ["type"] = 16},
{["lv"] = 71500, ["offset"] = -32, ["type"] = 16},
{["lv"] = 1, ["offset"] = -24, ["type"] = 16},
{["lv"] = 4.2038954e-44, ["offset"] = -20, ["type"] = 16},
{["lv"] = 1.4012985e-44, ["offset"] = -16, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = -8, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = -4, ["type"] = 16},
{["lv"] = 3.6013371e-43, ["offset"] = 4, ["type"] = 16},
{["lv"] = 4.2038954e-45, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 0.05, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33000~99999;30D;10D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("40000", gg.TYPE_FLOAT)
gg.alert("伤害开启成功")
end



function d6()
 gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("166000", gg.TYPE_FLOAT)
gg.toast("25%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140000", gg.TYPE_FLOAT)
gg.toast("50%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("167000", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("180000", gg.TYPE_FLOAT)
gg.toast("100%")
end


function d7()
A = gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{7.1689529418945, 0x38A4}, {9.2457857132, 0x489C}, {13.18564987183, 0x4894},}
    local tb2 = {{999999, 0x38A4},}
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.4779739379883, 0x749C}, {1.38781404495, 0x7498}, {2.03120303154, 0x748C},}
    local tb2 = {{99999, 0x749C, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{7.4993133544922, 0xD1C4}, {-25.68770980835, 0xD1C0}, {17.2485370636, 0xD1BC},}
    local tb2 = {{99999, 0xD1C4, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.10485887527, 0x7B60}, {4.03340053558, 0x7B5C}, {15.11002922058, 0x7B58},}
    local tb2 = {{99999, 0x7B60, false},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("3级装备+8倍镜天线已开启  ") 
   gg.setRanges(gg.REGION_VIDEO)                      
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.26353430748, 0xA068}, {-1.59971761703, 0xA058},{-2.26234126091, 0xA040},}
    local tb2 = {{99999, 0xA068,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{1.58135390282, 0xC0D4}, {1.56683290005, 0xC0D0}, {1.56683623791, 0xC0C4},}
    local tb2 = {{99999, 0xC0D4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("消音器天线开启成功")
gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.28105437756, 0x917C}, {5.90920639038, 0x9178},{0.11737322807, 0x9174},}
    local tb2 = {{99999, 0x917C,},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("步枪快扩天线已开启")    
end      

function d8()gg.setRanges(gg.REGION_CODE_APP)
local Md=1
local dataType=gg.TYPE_FLOAT Name="暴力男装"
local tb1={{-1.86394e26,0xE5A8}}
local tb2={{-5.9049397e20,0xE5F0},{-3.8376433e21,0xE5F4}}SearchWrite(tb1,tb2,dataType)
local Sleep= gg.prompt({"循环间隔:默认125Ms/次"},{125},{"number"})
if Sleep==nil then gg.toast("不选间隔你玩你🐴")Md=0 Main()
else gg.toast("已设置循环间隔"..Sleep[1].."Ms/次")
local Shark=gg.choice({"循环天线","循环地线"}) 
if Shark==nil then Md=0 Main() end 
if Shark==1 then Name="暴力天线" Bytes=9.73725 end 
if Shark==2 then Name="暴力地线" Bytes=-9.73725 end 
gg.setRanges(gg.REGION_ANONYMOUS) while(Md==1) do
if gg.isVisible(true)then Md=0 Main()gg.setVisible(false)gg.toast("已暂停")else gg.sleep(Sleep[1])
local dataType=gg.TYPE_FLOAT 
local tb1 = {{1.0302719e-8,0x0},{-0.0,0x68}}
local tb2 = {{Bytes,0x68},}SearchWrite(tb1,tb2,dataType)end end end end





function d9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000;1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.89999997616;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("98k连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.searchNumber("76000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("98k瞬击成功")
end



function d10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000;1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("M24连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.searchNumber("79000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("M24瞬击成功")
end

function d11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91,000.0F;2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.29999995232F;1.79999995232F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("AWM连射开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.searchNumber("91000", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("500000", 16)
  gg.clearResults()
  gg.toast("AWM瞬击成功")
end

function d12()
  a = gg.prompt({
    "修改20为红点改4倍\n修改13为红点改8倍\n修改5为红点改15倍"
  }, {
    [1] = 20
  }, {
    [1] = "number"
  })
  ab = '"'..a[1]..'"'
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("60;55;1.9618179e-44 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll(ab, gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("完成")
gg.clearResults()
end

function d13()
  Name = "冒烟上色" 
gg.setRanges(1048576)
local dataType = 4
local search = {
{8200, 0},
{8203, 8},

}
local modify = {{3, 0},}
SearchWrite(search,modify,dataType,Name)
end


function d14()
qmnb = {
{["memory"] = 32},--自抓
{["name"] = "秒趴"},
{["value"] = 1.39999997616, ["type"] = 16},
{["lv"] = 1.29999995232, ["offset"] = -4, ["type"] = 16},
{["lv"] = 0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = -99, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end

function d15()
Name = "秒开倍镜" 
gg.setRanges(32)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.37999999523,0xEAE0},{6.16031837463, 0xEAD4},{6.1603140831,0xEACC},}
local tb2 = {{0, 0xEAE0},}
SearchWrite(tb1, tb2, dataType)
end
  

function d18()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("击杀特效")
end

function E()
menu1 = gg.multiChoice({
"老外范围(真伤)",
"WKX范围(真伤)",
"魔仙范围(真伤)",
"众生范围(真伤)",
"香蕉范围(真伤)",
"全身范围(真伤)",
"头部范围(真伤)",
"范围拾取(有用)",
"诸神范围(真伤)",
"返回主页"},
nil,"WKX制作\n源码大部分来自网络")
if menu1 == nil then else 
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end


function e9()
gg.setRanges(32)
local dataType = 16
local tb1 = {{23, 0},{25, 4},{30.5, 8},}
local tb2 = {{-430, 0},{430, 4},{430, 0},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{10, 0},{35, 24},{33, 28},{69.5, 32},} 
local tb2 = {{-430, 0},{-430, 24},{-430, 28},{-430, 32},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{40, 0},{33, 24},{69.5, 28},}
local tb2 = {{-430, 0},{-430, 4},{-430, 8},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{16, 0},{26, 4},}
local tb2 = {{-430, 0},{-430, 4},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{18, 0},{28, 4},}
local tb2 = {{-430, 0},{-430, 4},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{45, 0},{15, -8},{38, -4},}
local tb2 = {{-430, 0},{-430, -8},{-430, -4},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{8, 0},{15, 4},}
local tb2 = {{-430, 0},{-430, 4},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{18, 0},{27.25, 4},}
local tb2 = {{-430, 0},{-430, 4},}SearchWrite(tb1, tb2, dataType)
local dataType = 16
local tb1 = {{18.38787841797, 0},{0.53869867325, 4},{-3.42231750488, 8},}
local tb2 = {{135, 0},}SearchWrite(tb1, tb2, dataType)
end

function e8()
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT) 
gg.searchNumber("200", gg.TYPE_FLOAT) 
gg.getResults(200) 
gg.editAll("285", gg.TYPE_FLOAT) 
gg.toast("小范围拾取开启成功")
end



function e1()
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {name = "Head range"},
    {
      value = 9.203507E-5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 25,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 30.5,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 295,
      offset = 20,
      type = gg.TYPE_FLOAT
    },
    {
      value = 295,
      offset = 24,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_ANONYMOUS
    },
    {
      name = "Whole body range"
    },
    {
      value = 69.5,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 33,
      offset = -4,
      type = gg.TYPE_FLOAT
    },
    {
      lv = 35,
      offset = -8,
      type = gg.TYPE_FLOAT
    }
  }
  qmxg = {
    {
      value = 260,
      offset = 0,
      type = gg.TYPE_FLOAT
    },
    {
      value = 120,
      offset = -4,
      type = gg.TYPE_FLOAT
    }
  }
  xqmnb(qmnb)
end




function e2()
gg.setRanges(32)--子弹范围
local dataType = 16
local Name ="子弹范围"
local tb1 = {{90.775703430176, 0}, {0, 0}, {8, 0}, {16, 2}, }
local tb2 = {{150, 2}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)--身体范围
local dataType = 16
local Name ="头部范围"
local tb1 = {{0.00009203507, 0}, {25, 20}, {30.5, 24}, }
local tb2 = {{295, 20}, {295, 24}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="身体范围"
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="身体范围2"
local tb1 = {{-88.73961639404, 0}, {18, 4}, {28, 8}, }
local tb2 = {{-530, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local Name ="全身范围"
local tb1 = {{69.5, 0}, {33, -4}, {35, -8}, }
local tb2 = {{270, 0}, {130, -4}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local search = {{9.201618194580078, 0},{9.203507215715945E-5, 8},{23.0, 24},}
local modify = {{240, 28},{240, 32},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.66608428955078, 0},{26.0, 8},}
local modify = {{-89999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-92.23117065429688, 0},{16.0, 4},}
local modify = {{100, 4},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-88.73961639404297, 0},{28.0, 8},}
local modify = {{-99999960, 8},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32)
local dataType = 16
local search = {{-129.0, 0},{45.0, -56},{45.0, -4},{-85.0, 4},}
local modify = {{999999, -56},{999999, -4},{999999, -208},{999999, 468}}
SearchWrite(search,modify,dataType,Name)
end





function e3()
gg.setRanges(131072)
    gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("26", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-89999960", 16)
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
    gg.searchNumber("28", 16, false, 536870912, 0, -1)
    gg.getResults(92)
    gg.editAll("-99999960", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", 16, false, 536870912, 0, -1)
    gg.searchNumber("16", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("100", 16)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("9.20161819458;23;25;30.5", 16, false, 536870912, 0, -1)
    gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
    gg.getResults(100)
    gg.editAll("245", 16)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("150;85;45;-129;-85", 16, false, 536870912, 0, -1)
    gg.searchNumber("45", 16, false, 536870912, 0, -1)
    gg.getResults(30)
    gg.editAll("999999", 16)
    gg.toast("范围追踪打击")
    
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;25;30.5::", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("魔仙范围1已开启")
else
gg.searchNumber("30.5;25.0:385", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("240", 16)
gg.toast("魔仙范围2已开启")
end
end

  function e4()
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("20.51941871643"),
        tonumber("-24")
      },
      {
        tonumber("16"),
        tonumber("0")
      },
      {
        tonumber("26"),
        tonumber("4")
      }
    }, {
      {
        tonumber("200"),
        tonumber("0")
      },
      {
        tonumber("-200"),
        tonumber("4")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-88.66608428955"),
        tonumber("-4")
      },
      {
        tonumber("16"),
        tonumber("0")
      },
      {
        tonumber("26"),
        tonumber("4")
      }
    }, {
      {
        tonumber("88.66608"),
        tonumber("0")
      },
      {
        tonumber("-56"),
        tonumber("0")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("-88.73961639404"),
        tonumber("-8")
      },
      {
        tonumber("28"),
        tonumber("0")
      }
    }, {
      {
        tonumber("-560"),
        tonumber("0")
      }
    }, (tonumber("16")))
    gg.setRanges(32)
    SearchWrite({
      {
        tonumber("9.20161819458"),
        tonumber("-28")
      },
      {
        tonumber("23"),
        tonumber("-4")
      },
      {
        tonumber("25"),
        tonumber("0")
      },
      {
        tonumber("30.5"),
        tonumber("4")
      }
    }, {
      {
        tonumber("300"),
        tonumber("0")
      },
      {
        tonumber("300"),
        tonumber("4")
      }
    }, (tonumber("16")))
  end
  
 function e5()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("90.775703430176;0;8;15;16;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君增伤🍌")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("400", gg.TYPE_FLOAT)
  gg.toast("🍌香蕉君独家追踪范围开启成功🍌")
end
  
  function e6()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "超大范围"},
{["value"] = 9.20161819458, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 155, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT, ["freeze"] = true},
{["value"] = 155, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT, ["freeze"] = false},
{["value"] = 155, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["value"] = 155, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "头部范围"},
{["value"] = 0.00009203507, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 30.5, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 295, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["value"] = 295, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "身体范围"},
{["value"] = -88.66608428955, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 16, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 26, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = -430, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "身体范围"},
{["value"] = -88.73961639404, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 18, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = -530, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "全身范围"},
{["value"] = 69.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 33, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 35, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
--["freeze"] = true   添加这个为冻结
--["freeze"] = false   这个为恢复冻结，取消冻结
{["value"] = 270, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
{["value"] = 130, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end 
  function e7()
  local dataType = 16
local tb1 = {{0.00009203507, 0}, {25, 20}, {30.5, 24}, }
local tb2 = {{295, 20}, {295, 24}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{-88.66608428955, 0}, {16, 4}, {26, 8}, }
local tb2 = {{-430, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{-88.73961639404, 0}, {18, 4}, {28, 8}, }
local tb2 = {{-530, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{69.5, 0}, {33, -4}, {35, -8}, }
local tb2 = {{270, 0}, {130, -4}, }
SearchWrite(tb1, tb2, dataType)
  end

  
function F()
menu1 = gg.multiChoice({
"🚙 吉普加速",
"🚙 轿车加速",
"🚙 吉普飞天",
"🚙 轿车飞天",
"🚙 摩托加速",
"🚙 蹦蹦加速",
"🚙 汽车锁油",
"🚙 汽车秒刹",
"🚙 车辆浮空",
"🚙 全车加速",
"🚙 全车JS关",
"🚙 蹦蹦穿墙",
"🚙吉普大跳飞天",
"🚙吉普大跳关闭",
"🚙蹦蹦大跳飞天",
"🚙蹦蹦大跳关闭",
"🚙装甲大跳飞天",
"🚙装甲大跳关闭",
"🚙轿车大跳飞天",
"🚙轿车大跳关闭",
"🚙 返回主页"},
nil,"WKX制作")
if menu1 == nil then else 
if menu1[1] == true then qc1() end
if menu1[2] == true then qc2() end
if menu1[3] == true then qc3() end
if menu1[4] == true then qc4() end
if menu1[5] == true then qc5() end
if menu1[6] == true then qc6() end
if menu1[7] == true then qc7() end
if menu1[8] == true then qc8() end
if menu1[9] == true then qc9() end
if menu1[10] == true then qc10() end
if menu1[11] == true then qc11() end
if menu1[12] == true then qc12() end
if menu1[13] == true then qc13() end
if menu1[14] == true then qc14() end
if menu1[15] == true then qc15() end
if menu1[16] == true then qc16() end
if menu1[17] == true then qc17() end
if menu1[18] == true then qc18() end
if menu1[19] == true then qc19() end
if menu1[20] == true then qc20() end
if menu1[21] == true then HOME() end
end
GLWW=-1
end

function qc1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  gg.editAll("100.241295", 16)
  gg.clearResults()
  gg.toast("吉普加速")
end

function qc2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车加速")
end

function qc3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("吉普飞天")
end

function qc4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.72727274895;0.34377467632;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;16;49;22050::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("轿车飞天")
end

function qc6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("蹦蹦加速")
end

function qc5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30.241295", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("摩托车加速")
end


function qc7()
 gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("汽车锁油")
end

function qc8()  
 gg.toast("")
qmnb = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "全车秒刹车"},
{["value"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = -8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function qc9()
Name = "车浮空" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-5.139455925665468E27, 0},
{-7.583908064996921E27, 4},
{-5.112866641183671E27, 8},
{-1.2793503529145021E28, 12},
{-7.600827713809233E27, 16},
{-7.600830074992474E27, 20},
{-7.593578290962217E27, 24},

}
local modify = {{0, 0},}
SearchWrite(search,modify,dataType,Name)
end

function qc10()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end


function qc11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-0.23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  g10sj="0"
  gg.toast("全车加速已关闭")
end

function qc12()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.00111111114;1.0e32;49.9999961853;24.99999809265", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.0e32", 16, false, 536870912, 0, -1)
  gg.getResults(20)
  gg.editAll("9", 16)
  gg.clearResults()
  gg.toast("蹦蹦穿墙")
end




function qc13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00055555557;49.9999961853;24.99999809265",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00055555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00455555557",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function qc14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00055555557",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function qc15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.04111111114",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function qc16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00111111114",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end



function qc17()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00016666666;;49.9999961853", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00016666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00416666666",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function qc18()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00016666666",gg.TYPE_FLOAT)
gg.toast("关闭成功")
end

function qc19()
gg.clearResults()
gg.searchNumber("0.00100000005;49.9999961853;24.99999809265::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.06100000005",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("轿车飞天")
end



function qc20()
gg.clearResults()
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00100000005",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("飞天关闭")
end






function G()
  SN = gg.multiChoice({
    "全屏自瞄",
    "持枪自瞄",
    "内存自瞄",
    "返回上页",
  }, nil, "WKX制作\n持枪自瞄已优化")
  if SN == nil then
  else
  if SN[1] == true then
   zm1()
  end
  if SN[2] == true then
   zm2()
  end
    if SN[3] == true then
   zm3()
  end
  if SN[4] == true then
    HOME()   
  end
end
  XGCK = -1
end
 




function zm1()
gg.clearResults() gg.setRanges(16384) gg.searchNumber("-511703038;-336691171:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(2) gg.editAll('-476053504', gg.TYPE_DWORD) gg.clearResults()  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1) gg.getResults(10) gg.editAll("-1903895621994000382",gg.TYPE_QWORD) gg.clearResults() gg.clearResults()  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(2) gg.editAll('-476053504', gg.TYPE_DWORD) gg.clearResults()  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(6) gg.editAll("1.6615351e35", gg.TYPE_FLOAT) gg.clearResults()  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1) gg.getResults(10) gg.editAll("-1903895621994000382",gg.TYPE_QWORD) gg.clearResults()  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(6) gg.editAll("0", gg.TYPE_FLOAT) gg.clearResults()  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(6) gg.editAll("1.6615351e35", gg.TYPE_FLOAT) gg.clearResults()
end


function zm2()
Name = "无视队友自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.8169383774134962E31, 0},
{6.7130534448394674E22, -52},

}
local modify = {{-9.0338317e22, -52},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2573531344941352E23, 0},
{-9.90656151829801E27, -40},

}
local modify = {{-9.9066194e27, -40},}
SearchWrite(search,modify,dataType,Name)

Name = "持枪自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{1.1625219467270265E33, 0},
{7.476871833205223E-4, 64},

}
local modify = {{-9.9066194e27, 64},}
SearchWrite(search,modify,dataType,Name)


Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{5.819133540166275E-26, 0},
{-3.696554925989424E20, -12},

}
local modify = {{-3.6965553e20, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "开火自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{2.641425091258327E29, 0},
{1.8526925134222195E28, -104},

}
local modify = {{-3.6965553e20, -104},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2811951909214346E23, 0},
{-9.90656151829801E27, -12},

}
local modify = {{-1.2811725e23, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "趴下自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{2.0621421385430327E-19, -80},

}
local modify = {{-1.2811725e23, -80},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-2.952560267547818E20, 0},
{-3.8685626227668134E25, 8},

}
local modify = {{-9.9066182e27, 0},{-9.9066182e27, 4},{-9.9066182e27, -4},}
SearchWrite(search,modify,dataType,Name)

Name = "距离自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{4.387686491826876E31, 0},
{1.9938161152173576E-19, -92},

}
local modify = {{-9.9066182e27, -92},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.7366438177148862E26, 0},
{-2.739592370665271E28, -20},

}
local modify = {{-2.7395468e28, -20},}
SearchWrite(search,modify,dataType,Name)

Name = "270℃" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.299955479230584E-40, 0},
{172224217088.0, -12},

}
local modify = {{-2.7395468e28, -12},}
SearchWrite(search,modify,dataType,Name)

Name = "频率自瞄"
gg.setRanges(16384)
local dataType = 16
local search = {
{4.5422619231892774E30, 0},
{15149272399872.0, -44},

}
local modify = {{-9.9839906e27, -44},}
SearchWrite(search,modify,dataType,Name)

Name = "近战自瞄" 
gg.setRanges(16384)
local dataType = 16
local search = {
{9.999999747378752E-5, 0},
{360.0, -12},
{-360.0, -8},
{180.0, -4},
{-1.0153182385499395E28, 8},

}
local modify = {{9999, 0},}
SearchWrite(search,modify,dataType,Name)

Name = "自瞄" 
gg.setRanges(32)
local dataType = 16
local search = {{8000.0, 0},{3.5, -64},{0.5, -44},{200.0, -12},{100.0, -4},}
local modify = {{99999, -48},{99999, -52},{99999, -56},{99999, -60},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(gg.REGION_CODE_APP)
local dataType = gg.TYPE_FLOAT
local tb1 = {{-2.8488793e28, 0}, {-5.4827808e27, 4}, {-1.2464639e28, 8}, {-2.7270195e28, 12}, }
local tb2 = {{0, 4},{0, 0}, } 	
SearchWrite(tb1, tb2, dataType) 
gg.setRanges(16384)
Name="距离"
local dataType = 32
local tb1 = {{-2044634016379303408, 0}, }
local tb2 = {{-1292522027172757503, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
Name="趴锁"
local dataType = 32
local tb1 = {{-1905867063313810928, 0}, }
local tb2 = {{-1324327739884306431, -12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="加载判断"--/-3.9291568e21;2.6469862e-23;-8.736414e22;-3.8369228e21
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{-3.9291565e21,0x6D58}}SearchWrite(tb1,tb2,dataType)
local dataType=gg.TYPE_FLOAT Name="超强判断"--/1.6615354e35;-1.1221873e28;-5.8048698e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7A38}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="全图距离"--/1.6615354e35;-1.1144502e28;-5.8053394e26;-1.0525532e28
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x6654}}SearchWrite(tb1,tb2,dataType)
gg.setRanges(16384)
local dataType=gg.TYPE_FLOAT Name="270℃范围"--/1.6615354e35;-1.1221873e28;-5.8049129e26;-9.9065615e27
local tb1={{-5.8056102e26,0x58CC}}
local tb2={{1.6615352e35,0x7864}}SearchWrite(tb1,tb2,dataType)
end

function zm3()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "内存自瞄"},
{["value"] = 3.5, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.20000004768, ["offset"] = -44, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.10000000149, ["offset"] = 24, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.5, ["offset"] = 28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 32, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.80000001192, ["offset"] = 36, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 200, ["offset"] = 52, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 20, ["offset"] = 56, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 100, ["offset"] = 60, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["value"] = 99999, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.setRanges(16384)
local tb1 = {{ ("360"), ("-12")}, { ("0.0001"), ("0")}, { ("1478828288"), ("84")}, } 	
local tb2 = {{ ("99999"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{3.5, 3296},{1, 3300},{1, 3304},{1, 3308},{1, 3312},{0.5, 3316},{0.5, 3324},{200, 3348},{20, 3352},{20, 3364}}
local tb2 = {{999999999, 3296},{999999999, 3300},{999999999, 3304},{999999999, 3308},{999999999, 3312},{999999999, 3316},{999999999, 3324},{999999999, 3348},{999999999, 3352},{999999999, 3364}}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.555965707145412E26, 0},

}
local modify = {{-3.86856308e25, 92},}
SearchWrite(search,modify,dataType,Name)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("0.0001;1478828288::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast("内存自瞄已成功")
end

function H()
menu = gg.choice({
"内存防封",
"站蹲路飞",
'返回上页'},
nil,'WKX制作，独一无二')
if menu == 1 then ff1() end
if menu == 2 then ff2() end
if menu == 3 then HOME() end
XGCK=-1
end
function ff1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 1 then
    gg.toast("😘正在开启😘")
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    for _FORV_3_ = 1, n do
      gg.addListItems({
        [1] = {
          address = jz[_FORV_3_].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
    end
    gg.toast("😘开启成功😘")
  else
    gg.toast("😓开启失败😓")
  end
end

function ff2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("18.38787841797", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18.38787841797", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", 16)
  gg.toast("修复下蹲路飞注入成功χ√√√")

  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5.82142114639", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5.82142114639", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("150", 16)
  gg.toast("站立向前路飞开启成功χ√√√√√√√√")
end





function J()
menu1 = gg.multiChoice({
"地图变暗[无法]",
"巨人模式"..state.a,
"蚁人模式[无法]",
"无限子弹"..state.b,
"子弹穿墙"..state.c,
"超远窃听️"..state.d,
"地皮绿色[无法]",
"人物大头"..state.e,
"下蹲飞天"..state.f,
"人物穿墙"..state.j,
"人物灵魂出窍飞天"..state.h,
"人物爬墙"..state.i,
'返回上页'},
nil,'WKX制作\n以下功能全都是自慰功能没有伤害\n请勿经典模式使用')

if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then j9() end
if menu1[10] == true then j10() end
if menu1[11] == true then j11() end
if menu1[12] == true then j12() end
if menu1[13] == true then HOME() end
end
end

function j1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.1400000006;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1400000006", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.5", gg.TYPE_FLOAT)
gg.toast("地图变暗成功")
end


function j2()
  if state.a=="[开启]" then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("2", gg.TYPE_FLOAT)
  f1sj="2"
  gg.toast("巨人已开启")
  state.a="[关闭]"
  elseif state.a=="[关闭]" then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;2::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("1", gg.TYPE_FLOAT)
  f1sj="1"
  gg.toast("巨人已关闭")
  state.a="[开启]"
  end
end



function j3()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
gg.alert("屏幕抖动属于正常现象")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.0828566e-44;88;88;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_FLOAL, 0, -1)
gg.getResults(100)
gg.editAll("0.01", gg.TYPE_FLOAT)
gg.toast("蚁人开启成功")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
end




function j4()
if state.b=="[开启]" then
Name = "无限+" 
gg.setRanges(16384)
local dataType = 16
local search = {
{8.444623486410758E-26, 0},

}
local modify = {{2.6379511e-27 ,4},}
SearchWrite(search,modify,dataType,Name)
  state.b="[关闭]"
  elseif state.b=="[关闭]" then
Name = "关闭无限子弹" 
gg.setRanges(16384)
local dataType = 16
local search = {
{8.444623486410758E-26, 0},

}
local modify = {{2.63795087e-27 ,4},}
SearchWrite(search,modify,dataType,Name)
  state.b="[开启]"
  end
end


function j5()
  if state.c=="[开启]" then
    gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("1.0e-7;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.toast("子弹穿墙开启成功")
  state.c="[关闭]"
  elseif state.c=="[关闭]" then
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("1.0e-7;1;-10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("子弹穿墙关闭成功")
  state.c="[开启]"
  end
end


function j6()
if state.d=="[开启]" then
Name = "超远窃听" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.165185949292467E26, 0},

}
local modify = {{-3.836923e21 ,-20},}
SearchWrite(search,modify,dataType,Name)
  state.d="[关闭]"
  elseif state.d=="[关闭]" then
Name = "关闭超远窃听" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-6.165185949292467E26, 0},

}
local modify = {{-3.83692277e21 ,-20},}
SearchWrite(search,modify,dataType,Name)
  state.d="[开启]"
  end
end



function j7()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchAddress("51C")
 gg.getResults(100)
  gg.editAll("43", gg.TYPE_DWORD)
gg.toast("地皮绿色已成功")
end

function j8()
if state.e=="[开启]" then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13140678406;1;1;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("5", gg.TYPE_FLOAT)
  f3sj="5"
  gg.toast("人物大头已开启")
  state.a="[关闭]"
  elseif state.e=="[关闭]" then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("7.13140678406;5;5;5::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("1", gg.TYPE_FLOAT)
  f3sj="1"
  gg.toast("人物大头已关闭")
  state.e="[开启]"
  end
end



function j9()
if state.f=="[开启]" then
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-4000", gg.TYPE_FLOAT)
  f10sj="-4000"
  gg.toast("蹲下飞天已开启")
  state.f="[关闭]"
  elseif state.f=="[关闭]" then
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1400;0.10000000149;1000;88;"..e13sj..";30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(e13sj)
    gg.getResults(1000)
    gg.editAll("60", gg.TYPE_FLOAT)
    e13sj="60"
    gg.toast("蹲下飞天还原成功")
  state.f="[开启]"
  end
end

function j10()
if state.j=="[开启]" then
Name = "人物穿墙" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2580838885696723E23, 0},

}
local modify = {{-3.836923e21 ,-16},}
SearchWrite(search,modify,dataType,Name)
  state.j="[关闭]"
  elseif state.j=="[关闭]" then
Name = "关闭人物穿墙" 
gg.setRanges(16384)
local dataType = 16
local search = {
{-1.2580838885696723E23, 0},

}
local modify = {{-3.83692277e21 ,-16},}
SearchWrite(search,modify,dataType,Name)
state.j="[开启]"
  end
end

function j11()
if state.h=="[开启]" then
  gg.clearResults()
  gg.setRanges(16384)
  SearchWrite({
    {-7.749794200000001E19, 0},
    {-5.7656706E27, 4},
    {-1.0530367E28, 8},
    {-5.8454586E27, 12}
  }, {
    {2.7860151E28, 20},
    {2.793752E28, 316}
  }, gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  SearchWrite({
    {58000, 0},
    {50, 352},
    {50, 356},
    {50, 360},
    {1000, 364},
    {1, 552}
  }, {
    {5, 556}
  }, gg.TYPE_FLOAT)
  gg.toast("飞天加速第一步开启成功")
  gg.setRanges(16384)
  SearchWrite({
    {-1.0070975E28, 0},
    {-2.8246552E28, -8},
    {-9.9839328E27, -12}
  }, {
    {6.1526231E27, -16}
  }, gg.TYPE_FLOAT)
  gg.toast("飞天加速第二步开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-15.72", gg.TYPE_FLOAT)
  gg.toast("飞天加速第三步开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10000;20000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("500", gg.TYPE_DWORD)
  gg.toast("飞天加速第四步开启成功")
  state.h="[关闭]"
  elseif state.h=="[关闭]" then
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  SearchWrite({
    {58000, 0},
    {50, 352},
    {50, 356},
    {50, 360},
    {1000, 364},
    {1, 552}
  }, {
    {1, 556}
  }, gg.TYPE_FLOAT)
  gg.toast("飞天加速第一步关闭成功")
  gg.setRanges(16384)
  SearchWrite({
    {-7.749794200000001E19, 0},
    {-5.7656706E27, 4},
    {-1.0530367E28, 8},
    {-5.8454586E27, 12}
  }, {
    {-2.7860151E28, 20},
    {-2.793752E28, 316}
  }, gg.TYPE_FLOAT)
  gg.setRanges(16384)
  SearchWrite({
    {-1.0070975E28, 0},
    {-2.8246552E28, -8},
    {-9.9839328E27, -12}
  }, {
    {-6.1526231E27, -16}
  }, gg.TYPE_FLOAT)
  gg.toast("飞天加速第二步关闭成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-15.72", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.toast("飞天加速第三步关闭成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("500;20000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("10000", gg.TYPE_DWORD)
  gg.toast("飞天加速第四步关闭成功")
state.h="[开启]"
  end
end



function j12()
if state.i=="[开启]" then
Fxs({{443,0,16},{1,-8,16},{35,-4,16},},{{220,-4,16},{2,-8,16},},32,"爬墙开启成功")
  state.i="[关闭]"
  elseif state.i=="[关闭]" then
Fxs({{443,0,16},{2,-8,16},{220,-4,16},},{{35,-4,16},{1,-8,16},},32,"爬墙关闭成功")
  state.i="[开启]"
  end
end


function d16()
menu = gg.choice({
"帧率",
"返回"},
2018,"这里可以填QQ号")
if menu == 1 then ZL() end
if menu == 2 then HOME() end
XGCK=-1
end



function ZL()
menu1 = gg.multiChoice({
'低改60帧',
'低改120帧',
'中改60帧',
'中改120帧',
'高改60帧',
'高改120帧',
'高改150帧',
'低改90帧',
'低改150帧',
'中改150帧',
'返回上一页'},
nil,'这里也可以随便填')
if menu1 == nil then else
if menu1[1] == true then zl1() end
if menu1[2] == true then zl2() end
if menu1[3] == true then zl3() end
if menu1[4] == true then zl4() end
if menu1[5] == true then zl5() end
if menu1[6] == true then zl6() end
if menu1[7] == true then zl7() end
if menu1[8] == true then zl8() end
if menu1[9] == true then zl9() end
if menu1[10] == true then zl10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end



function zl1()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;20.0F;20.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl2()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;20.0F;20.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl3()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;25.0F;25.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl4()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;25.0F;25.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl5()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;30.0F;30.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl6()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;30.0F;30.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl7()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;30.0F;30.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl8()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;20.0F;20.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("90", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl9()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;20.0F;20.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function zl10()
gg.clearResults(32)
gg.searchNumber("8.1275311e-44F;8.1275311e-44F;1.540744e-33F;25.0F;25.0F;1.2471556e-43F;1.2471556e-43F:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("开启成功")
end


function d17()
  menu = gg.choice({
    "头",
    "甲",
    "返回"
  }, 2018, "打不死小强无敌")
  if menu == 1 then
    TK()
  end
  if menu == 2 then
    JIA()
  end
  if menu == 3 then
    HOME()
  end
  XGCK = -1
end

function TK()
  menu1 = gg.multiChoice({
    "一级头",
    "二级头",
    "三级头",
    "返回上一页"
  }, nil, "铁头功")
  if menu1 == nil then
  else
    if menu1[1] == true then
      tk1()
    end
    if menu1[2] == true then
      tk2()
    end
    if menu1[3] == true then
      tk3()
    end
    if menu1[11] == true then
      HOME()
    end
  end
  GLWW = -1
end

function JIA()
  menu1 = gg.multiChoice({
    "一级甲",
    "二级甲",
    "三级甲",
    "返回上一页"
  }, nil, "乌龟护甲")
  if menu1 == nil then
  else
    if menu1[1] == true then
      jia1()
    end
    if menu1[2] == true then
      jia2()
    end
    if menu1[3] == true then
      jia3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  GLWW = -1
end

function tk1()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;1.0F;80.0F;0.30000001192F;0.75F:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function tk2()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;1.0F;150.0F;0.40000000596F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999969", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function tk3()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;1.0F;230.0F;0.55000001192F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("230", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("光头强版小强变身完毕")
end

function jia1()
  gg.setRanges(32)
  gg.searchNumber("4.2038954e-45F;1.0F;200.0F;0.30000001192F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function jia2()
  gg.setRanges(32)
  gg.searchNumber("4.2038954e-45F;1.0F;220.0F;0.40000000596F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end

function jia3()
  gg.setRanges(32)
  gg.searchNumber("4.2038954e-45F;1.0F;250.0F;0.55000001192F;0.75F:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("250", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999999", gg.TYPE_FLOAT)
  gg.toast("光头强版小强变身完毕")
end
function K()
file=io.open("/storage/emulated/0/.MyCity","r")
if file~=nil then con=file:read("*a") dz=con:match("%&(.-)%&") city=con:match("@(.-)@") file:close()
 else
  city=gg.prompt({"输入城市"},{""},{"text"})[1]
  local function Enc(Mzsh)
    return Mzsh:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  dz=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?cityname="..Enc(city).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")
  if dz==nil then gg.alert("输入错误城市，请重新输入") os.exit() else f=io.open("/storage/emulated/0/.MyCity","w"):write("@"..city.."@\n&"..dz.."&"):close() end
end
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function x(x)
  local i=0
  for w in string.gmatch(x,"active") do
    i=i+1 end
  local t=string.rep("⭐",i)
  return t
end
-------
tq=gg.makeRequest("http://www.weather.com.cn/weather1d/"..dz..".shtml").content
---获取1天内天气
a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(tq,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")
b=split(a,"$")--天气

---获取生活指数
tab={"<h2>(.-)</h2>","<em>(.-)</em>","\n<i (.-)</i>\n","<dd>(.-)</dd>"}
shzs=gg.makeRequest("http://www.weather.com.cn/weather1dn/"..dz..".shtml").content
tq1=string.match(shzs,"<b>生活助手</b>(.-)</div>")
c={}
for i=1,4 do
  c[i]={}
  for w in string.gmatch(tq1,tab[i]) do
    if i==1 then if string.find(w,"em") then w="健臻·血糖" end end
    table.insert(c[i],w)
  end
end
ts={}
for v=1,6 do
  ts[v]={}
  for i=1,4 do
    table.insert(ts[v],c[i][v])
  end
end
mm=""
for i=1,6 do
  mm=mm..ts[i][1]..":"..ts[i][2].."\n指数:"..x(ts[i][3]).."\n温馨提示:"..ts[i][4].."\n\n"
end
gg.alert("当前城市:"..city.."\n"..table.concat(b,"\n").."\n-----------\n".."生活助手:\n"..mm)
end
function Exit()
print("当天已死,WKX当立,岁在甲子,天下大吉")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = 'WKX'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
------脚本不断报错，我心态也快崩了
------现在国体军团也没有了
------现在才知道自己啥也不是
------以后更新时间比较慢，别介意
------❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
------别看了彩蛋不是这个


























------别找了根本就没有





















------你他妈的还找？



























------别找了，没有彩蛋