

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."开启失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."开启成功")else gg.toast(_on.."开启失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function yiyz_Main()
menu = gg.multiChoice({
"❤防封①",
"❤防封②",
"❤防封③",
"❤功能列表",
"👌退出脚本👌",
}, nil, os.date("必看:防封开1.2.3,root用户可稳定连打，虚拟机用户3把一退(自行测试)，第一把出生岛开完防卡屏退出后，开功能，第2把打稳定中(恢复为老脚本，只开午后防抖加速与枪伤，等我修复)\n当前时间%Y年-%m月-%d日 %H时:%M分:%S秒"))
if menu == nil then else 
if menu[1] == true then A1() end 
if menu[2] == true then A2() end 
if menu[3] == true then A3() end 
if menu[4] == true then ZX() end 
if menu[5] == true then Exit()   end
end XGCK = -1 end

function A1()


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("10240;2131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12547;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("12547;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

end
function A2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134914;16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("459011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("459011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134402;134402;134402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134402;134402;134402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "0"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function A3()

gg.clearResults()
gg.setRanges(16)
gg.searchNumber("16384;16384;16384;16384;16384::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1777777"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil

gg.clearResults()
gg.setRanges(16)
gg.searchNumber("16384;16384;16384;16384;16384;16384;16384;16384;16384;16384;16384::128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1777777"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
end

function ZX()
SN = gg.multiChoice({
  "一秒落地",
  "两倍加速",
  "开启加速",
  "关闭加速",
  "加速枪伤",
  "无后防抖",
  "全屏自瞄(换枪重开)",
  "人物跳远",
  "上帝视角",
  "防止卡屏",
  "全枪瞬击",
  "贴脸自瞄",
  "返回主页"
}, nil, " 配合全防使用 ")
  if SN == nil then  else
  if SN[1] == true then a1() end
  if SN[2] == true then a2() end
  if SN[3] == true then a3() end
  if SN[4] == true then a4() end
  if SN[5] == true then a5() end
  if SN[6] == true then a6() end
  if SN[7] == true then a7() end
  if SN[8] == true then a8() end
  if SN[9] == true then a9() end
  if SN[10] == true then a10() end
  if SN[11] == true then a11() end
  if SN[12] == true then a13() end
  if SN[13] == true then yiyz_Main() end
  end XGCK = -1 end

function a1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1024",16)
resultCounts=gg.getResultsCount()
results=gg.getResults(resultCounts)
for i=1,resultCounts do
values={}
values[1]={}
values[1].address=results[i].address-4
values[1].flags=16
values=gg.getValues(values)
if values[1].value==5000.0 then
values={}
values[1]={}
values[1].address=results[i].address-8
values[1].flags=16
values=gg.getValues(values)
if values[1].value==3000.0 then
values={}
values[1]={}
values[1].address=results[i].address-12
values[1].flags=16
values=gg.getValues(values)
if values[1].value==0.5 then
setvalues={}
setvalues[1]={}
setvalues[1].address=results[i].address
setvalues[1].flags=16
setvalues[1].value=999999
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=999999
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=999999
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=999999
gg.setValues(setvalues)
gg.toast("一秒落地")
end
end
end
end

end



function a2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("1.123", gg.TYPE_FLOAT)
  gg.toast("人物2倍加速开启成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回开启")
 end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
gg.clearResults()
  gg.toast("全局加速不拉回已关闭")
end


function a5()
gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS) 
  gg.searchNumber("30000~120000;2D~3D;1034818683D~1036831949D::32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000~99000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("35000", gg.TYPE_FLOAT)
  gg.toast("加速枪伤开启成功")
end


function a6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 3 ]]
gg.searchNumber("-3.7444097e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 1 ]]
gg.getResults(1)
--[[ count: 1 ]]
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("无后已部署")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 4 ]]
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 1 ]]
gg.getResults(1)
--[[ count: 1 ]]
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("半防抖已部署")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 4 ]]
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 1 ]]
gg.getResults(1)
--[[ count: 1 ]]
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("防抖已部署")
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 7 ]]
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 1 ]]
gg.getResults(2)
--[[ count: 1 ]]
gg.editAll("90", gg.TYPE_FLOAT)
gg.toast("聚点已部署")
gg.clearResults()
end


function a7()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x1079778
setvalue(so+py,4,0)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("全图自瞄开启成功！")
gg[string.char(tonumber("73",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("65",16))..string.char(tonumber("70",16))](550)
end



function a8()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x13264F0
setvalue(so+py,16,0)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("跳跃防拉回开启成功")
gg[string.char(tonumber("73",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("65",16))..string.char(tonumber("70",16))](666)
py6=0x367F65C
setvalue(so+py6,4,0)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("超级跳跃开启成功")
gg[string.char(tonumber("73",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("65",16))..string.char(tonumber("70",16))](666)
end



function a9()
gg.clearResults()    
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("850", gg.TYPE_FLOAT)
gg.toast("视角开启成功")
end


function a10()
gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1777666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(999)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16384}})
	 end
	 gg.toast("║🛡防卡已部署🛡║")
	 gg.clearResults()
end

function a11()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] = 68000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 68000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =71500, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 71500, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =91000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 91000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="   "},
{["value"] =88000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 88000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="全枪瞬击部署➤%100"},
{["value"] =87000, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 87000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500000, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end


function a12()
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libUE4.so')[1].start
py=0x1107824C
setvalue(so+py,4,0)
gg[string.char(tonumber("74",16))..string.char(tonumber("6f",16))..string.char(tonumber("61",16))..string.char(tonumber("73",16))..string.char(tonumber("74",16))]("近战自瞄已开启")
gg[string.char(tonumber("73",16))..string.char(tonumber("6c",16))..string.char(tonumber("65",16))..string.char(tonumber("65",16))..string.char(tonumber("70",16))](400)
end


function Exit()
print("阿文QQ:1930600303")
os.exit()
end
cs = "阿文QQ:1930600303"

function Exit()
print"☞感谢使用☜"
print"群:298221104"
os.exit()
end
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    yiyz_Main()
  end
end