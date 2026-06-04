
local app = {}
function Assert(data)
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg.setVisible(false)
local rx = mearrass(memory, array)
if rx then
local rx, datatype = typetab(array, type)
if rx then
if Assert(array[1].hv) then
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg.clearResults()
for i = 1, #data do
data[i].rx = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
data[z].rx = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].rx = false
end
end
end
end
for i = 1, #data do
if data[i].rx then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print("type参数错误")
gg.toast("type参数错误")
os.exit()
end
else
print("memory or array参数错误")
gg.toast("memory or array参数错误")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze
--gg.setValues(t)
return gg.addListItems(t)
else
return gg.setValues(t)
end
else
return false
end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
gg.toast(Name.."共搜索到"..#data.."个数据")
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
gg.toast(Name.."开启成功,共修改"..#t.."条数据")
else
gg.toast(Name.."副特征码错误or脸丑\n或者是已经开启过了")
return false
end
else
gg.toast(Name.."主特征码错误or脸丑\n或者是已经开启过了")
return false
end
end
function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {}local base = Search[1][2]if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags  end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else  return false end else  return false end end
function Main()
menu = gg.choice({
'透色区',
'训练营',
'落地区',
'更多机型透视',
'枪械美化',
"头盔美化",
"背包美化",
"秒断网",
'退出脚本'},
2018,'欢迎加入缩神交流群1031473318，使部分枪械美化更美观，新增两种枪械美化，新增头盔和背包美化')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E () end
if menu == 6  then F() end
if menu == 7 then G() end
if menu == 8 then mdw() end
if menu == 9 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'665处理器透视',
'665处理器人物红色',
'665处理器人物绿色',
'665处理器人物蓝色',
'665处理器人物黄色',
'665处理器人物黑色',
'665处理器人物白色',
'665处理器人物粉色',
'660-855透视',
'天线[第一种]',
"天线[第二种]",
'联发科p10透视上色',
'435处理器透视',
'骁龙处理器通用透视',
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then atx() end
if menu1[12] == true then a11() end
if menu1[13] == true then a12() end
if menu1[14] == true then a13() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'无后',
'防抖',
'聚点',
'除雾',
'除草',
'全屏自瞄',
'范围',
'全枪瞬击[滋味提供]',
'近战自瞄',
'三级物资天线',
'信号枪天线',
"秒开倍镜",
"天空黑色",
'返回上一页'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then b9() end
if menu1[10] == true then b11() end
if menu1[11] == true then b12() end
if menu1[12] == true then bjm() end
if menu1[13] == true then tkh() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'开启加速',
'关闭加速',
'修复加速时M4没伤害',
'修复加速时M762没伤害',
'修复加速时AKM没伤害',
'修复加速时SCAR没伤害',
"修复加速时QBZ没伤害",
"修复加速时DP28没伤害",
'圈圈自瞄',
'吉普加速[吉普车上开]',
'秒刹车',
'视觉变大',
'持枪地线',
'3秒落地',
'50倍加速[部分机型拉回]',
'关闭50倍加速',
'杀猪子弹',
'全图视野(自动关闭)',
'下蹲路飞',
'超快射速[持枪开]',
'汽车锁油[车上开]',
'落地锁头[落地捡到枪赶紧开启]',
"吉普浮空",
"恢复吉普浮空",
"轿车浮空",
"恢复轿车浮空",
"全车加速",
'返回上一页'},
nil,'修复加速伤害需要持枪开')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c50() end
if menu1[5] == true then c4() end
if menu1[6] == true then c5() end
if menu1[7] == true then QBZ() end
if menu1[8] == true then DP2() end
if menu1[9] == true then c6() end
if menu1[10] == true then c7() end
if menu1[11] == true then c8() end
if menu1[12] == true then c9() end
if menu1[13] == true then c10() end
if menu1[14] == true then c11() end
if menu1[15] == true then c12() end
if menu1[16] == true then c20() end
if menu1[17] == true then c13() end
if menu1[18] == true then c14() end
if menu1[19] == true then c15() end
if menu1[20] == true then c16() end
if menu1[21] == true then c17() end
if menu1[22] == true then c18() end
if menu1[23] == true then c19() end
if menu1[24] == true then cfj() end
if menu1[25] == true then cjc() end
if menu1[26] == true then cfj() end
if menu1[27] == true then ccj() end
if menu1[28] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'联发科p60[已修复]',
'骁龙710',
'骁龙660[已修复]',
'麒麟980',
'骁龙855透视',
'骁龙855绿色',
'骁龙855蓝色',
'联发科p10透视',
'联发科p10上黑色',
'联发科p10上白色',
'骁龙450透色',
'骁龙845透视',
'返回上一页'},
nil,'麒麟和联发科，冻结间隔调0才有效果')
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
if menu1[13] == true then HOME() end
end
GLWW=-1
end

function E()
menu1 = gg.multiChoice({
'AKM',
'M416',
'SCAR',
'98K',
'M16A4',
'UZI',
'UMP45',
'AWM',
'平底锅',
'M762',
'M24',
'S12K',
"DP-28",
"汤姆逊",
'返回上一页'},
nil,'大厅开启')
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
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then e13() end
if menu1[14] == true then e14() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end

function F()
menu1 = gg.multiChoice({
"一级头",
"二级头",
"三级头",
"返回上一页"},
nil,'大厅开启，均为占卜师系列')
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


function G()
menu1 = gg.multiChoice({
"一级包",
"二级包",
"三级包",
"返回上一页"},
nil,'大厅开启，均为占卜师系列')
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end

function g1()
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师一级包"},
{["value"] = 501001, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 4, ["type"] = 4},
{["lv"] = 501001, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1501001130, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end
function g2()
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师二级包"},
{["value"] = 501002, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 4, ["type"] = 4},
{["lv"] = 501002, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1501002130, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end
function g3()
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师三级包"},
{["value"] = 501003, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 4, ["type"] = 4},
{["lv"] = 501003, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1501003130, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end









function f1()
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师一级头"},
{["value"] = 502004, ["type"] = 4},
{["lv"] = 502004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 502004, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1502001096, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end

function f2()
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师二级头"},
{["value"] = 502002, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 4, ["type"] = 4},
{["lv"] = 502002, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002096, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师二级头"},
{["value"] = 502005, ["type"] = 4},
{["lv"] = 502005, ["offset"] = 4, ["type"] = 4},
{["lv"] = 502005, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1502002096, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)

function f3()
qmnb = {
{["memory"] = 32},
{["name"] = "占卜师三级头"},
{["value"] = 502003, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 4, ["type"] = 4},
{["lv"] = 502003, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1502003096, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end
end








function mdw()

 qmnb = {
{["memory"] = 8},
{["name"] = "正在屏蔽"},
{["value"] = -1.1909713e21, ["type"] = 16},
{["lv"] = 1.1754945e-37, ["offset"] = -36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -36, ["type"] = 16},

}
xqmnb(qmnb)
gg.sleep(8000)
qmnb = {
{["memory"] = 8},
{["name"] = "屏蔽完毕"},
{["value"] = -1.1909713e21, ["type"] = 16},
{["lv"] = 0, ["offset"] = -36, ["type"] = 16},
}
qmxg = {
{["value"] = 1.1754945e-37, ["offset"] = -36, ["type"] = 16},

}
xqmnb(qmnb)
gg.toast("秒断网")
end


function ccj()
gg.setRanges(32) 
local tb1 = {{tonumber("50"),tonumber("-40")}, {tonumber("5"),tonumber("-36")}, {tonumber("0.00999999978"),tonumber("0")}, } 	
local tb2 = {{tonumber("-0.23"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
  gg.toast("全车加速已开启")
end




function a1()
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "马赛克"},
{["value"] = -1.6815582e-44, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 6.0320909e21, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 9.7636872e-41, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT}
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_BAD},
{["name"] = "透明"},
{["value"] = -2.5774195e-39, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 5.1466568e21, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 5.6262783e21, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT}
}
qmxg = {
{["value"] = 5444, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},

}
xqmnb(qmnb)
end



function a2()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200;8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7;10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end



function a3()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8201;8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7;10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end


function bjm()
gg.setRanges(gg.REGION_ANONYMOUS)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.37999999523,0xEAE0}, {6.16031837463, 0xEAD4},{6.1603140831,0xEACC}, }
local tb2 = {{0, 0xEAE0},}
SearchWrite(tb1, tb2, dataType)
gg.toast("秒开倍镜已开启")
end
function a4()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8201;8202;8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7;7;10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function atx()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
	 gg.toast("天线开启成功")
	 gg.clearResults()
	 end

function a5()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200;8201;8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7;7;10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function tkh()
gg.setRanges(32)
local dataType = 32
local tb1 = {{28992425112437505, 0}, {284777806561280, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast('黑色天空开启成功')
end

function a6()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end



function a7()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200;8201;8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end



function a8()
gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8201;8202;8203;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200;8202;8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7;7;10", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end



function a9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('2.0;4.75073289871;5.54724168777;2.2344823e29;3.2739534e-38:2025',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('120',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('2.0;2.37549734116;5.6631696e21;1.9285566e-39;2.7550761e-39:193',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('120',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('8,200;8201;8202;8203;8204',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8200',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('7',gg.TYPE_DWORD)
end



function a10()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
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



function a11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("304D;328D;328D;64D;3,552D:100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("64",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("61",gg.TYPE_DWORD)
  gg.toast("开启成功")
 gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;120;296;136;6;136::100", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("120", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99999)
gg.editAll("50",gg.TYPE_DWORD)
gg.toast("开启成功")
end


function a12()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("3.2229865e-43F;2.0F;-1.0F;-1.0F;2.0F:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(360)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("27;15;26;23;1,073,741,824;24;-1,082,130,432:61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1,123,024,896", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("透视 435 Actived✔ ")
end

function a13()
gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100 ', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('通用透视开启成功')
end






function b1()
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "全局午后"},
{["value"] = -2.9756183e20, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -9.9839328e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -2.9766999e20, ["offset"] = -4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1149337e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function b2()
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "防抖第一步"},
{["value"] = -2.8111605430681e+28, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -3.7444097189856e+28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1144501557583e+28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 128, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "防抖第二步"},
{["value"] = -6.1549453500004e+27, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 1.8638965755821e-20, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] =  -1.1144501557583e+28, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0, ["offset"] = 20, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 0, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function b3()
qmnb = {
{["memory"] = gg.REGION_C_DATA},
{["name"] = "全局聚点"},
{["value"] = -6.1718715e27, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -5.7294395e27, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.2382424e28, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
{["lv"] = -1.1144502e28, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = 90, ["offset"] = 16, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function b4()
Name = "除雾" 
gg.setRanges(8)
local dataType = 16
local search = {{-6.1689999980971475E26, 0},}
local modify = {{0, 48},}
SearchWrite(search,modify,dataType,Name)
end



function b5()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.000005;0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("0.45", gg.TYPE_FLOAT)
  gg.toast("除草除树开启成功")
end



function b6()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('-476053504', gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1903895621994000383",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("持枪自瞄开启成功")
end


function b7()
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



function b8()
gg.clearResults()
gg.setRanges(8)
local dataType = 16
local tb1 = {{-1.427811e28, 0}, {1.8175359e-27, -8}, {6.1630956e-33, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("瞬击开启成功")
end



function b9()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("近战自瞄开启成功️")
end


function b10()
gg.setRanges(32) 
local tb1 = {{tonumber("16"),tonumber("-4")}, {tonumber("26"),tonumber("0")}, {tonumber("-86.45767974854"),tonumber("-12")} } 	
local tb2 = {{tonumber("99"),tonumber("0")}, } 
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
 gg.toast("10%")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] = "20%"},
{["value"] = tonumber("9.20161819458"), ["type"] = gg.TYPE_FLOAT},
{["lv"] = tonumber("25"), ["offset"] = tonumber("28"), ["type"] = gg.TYPE_FLOAT},
{["lv"] = tonumber("30.5"), ["offset"] = tonumber("32"), ["type"] = gg.TYPE_FLOAT},
}
qmxg = {
{["value"] = tonumber("240"), ["offset"] = tonumber("28"), ["type"] = gg.TYPE_FLOAT},
{["value"] = tonumber("240"), ["offset"] = tonumber("32"), ["type"] = gg.TYPE_FLOAT},
}
gg.toast("30%")
xqmnb(qmnb)
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("40%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("60%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("70%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;27;2D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15;27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000000", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.toast("诛仙超大范围开启成功")
end


function DP2()
Name = "大盘鸡伤害" 
gg.setRanges(32)
local dataType = 16
local search = {
{71500, 0},

}
local modify = {{350000, 0},}
SearchWrite(search,modify,dataType)
end




function b11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.1689529418945", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("3.4779739379883;2.8345839977264;3.1967880725861;3.8841888904572;3.1528658866882::208", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.4779739379883", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("003,005,0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7.4993133544922", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.73620933294296", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll("999999999", gg.TYPE_FLOAT)
gg.toast("三级定位开启成功")
end



function b12()
 gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.7576~0.7579", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.7576~0.7579", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("信号枪定位开启成功")
    gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("0.7576~0.7579", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.7576~0.7579", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("信号枪定位开启成功")
end


function c1()
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



function c2()
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



function c3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("M416伤害开启成功")
end    



function c4()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("71500")
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("AKM伤害开启成功")
end



function c5()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("40000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("SC伤害开启成功")
  end



function c6()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("自瞄开启成功")
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.toast("50%")
gg.setRanges(8)
gg.searchNumber("-1901891198734303227", 32, false, 536870912, 0, -1)
gg.getResults(1)
gg.editAll("-1901891198902075392", 32)
gg.toast("圈圈自瞄开启成功")
end



function c7()
qmnb = {
{["memory"] = 32},
{["name"] = "吉普加速"},
{["value"] = 1500, ["type"] = 16},
{["lv"] = 1025, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1000, ["offset"] = 32, ["type"] = 16},
{["lv"] = 10, ["offset"] = 36, ["type"] = 16},
{["lv"] = 50, ["offset"] = 84, ["type"] = 16},
{["lv"] = 5, ["offset"] = 88, ["type"] = 16},
{["lv"] = 0.5, ["offset"] = 120, ["type"] = 16},
{["lv"] = 0.00999999978, ["offset"] = 124, ["type"] = 16},

}
qmxg = {
{["value"] = -0.23, ["offset"] = 124, ["type"] = 16},
}
xqmnb(qmnb)
end



function c8()
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



function c9()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="上帝模式开启成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end




function c10()
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="人物地线开启成功"},
{["value"] =3.7252903e-7, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 2.9802322e-8, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 0.00764812529, ["offset"] = 8, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =-99999, ["offset"] = 12, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end



function c11()
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
setvalues[1].value=200000
setvalues[2]={}
setvalues[2].address=results[i].address-4
setvalues[2].flags=16
setvalues[2].value=200000
setvalues[3]={}
setvalues[3].address=results[i].address-8
setvalues[3].flags=16
setvalues[3].value=200000
setvalues[4]={}
setvalues[4].address=results[i].address-12
setvalues[4].flags=16
setvalues[4].value=200000
gg.setValues(setvalues)
gg.toast("缩神：OK")
end
end
end
end
end



function c12()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("0"), tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local tb2 = {{tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.25"), tonumber("0")}, {tonumber("1.25"),tonumber("4")}, {tonumber("1.25"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1.2"), tonumber("0")}, {tonumber("1.2"),tonumber("4")}, {tonumber("1.2"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end
function c13()
gg.setRanges(gg.REGION_C_DATA)
local dataType=gg.TYPE_FLOAT Name="准星加大"
local tb1={{-4.0135157e26,0xBA94}}
local tb2={{-3.836923e21,0xBBD0}}SearchWrite(tb1,tb2,dataType)
local dataType=gg.TYPE_FLOAT Name="杀猪子弹"
local tb1={{-1.9148698e26,0xD7D4}}
local tb2={{-1.9813085e28,0xD8CC},{-2.7859696e28,0xD8D4}}SearchWrite(tb1,tb2,dataType)
local dataType=gg.TYPE_FLOAT Name="特效增强"
local tb1={{-6.1665064e26,0x6DEC}}
local tb2={{-1.3620363e28,0x6F9C}}SearchWrite(tb1,tb2,dataType)end


function c14()
 gg.toast("")
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="视角开启成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =25000, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
gg.toast("5秒后自动关闭功能")
gg.sleep(5000)
qmnb = {
{["memory"] = gg.REGION_ANONYMOUS},
{["name"] ="视角关闭成功"},
{["value"] =178, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 15, ["offset"] = 4, ["type"] = gg.TYPE_FLOAT},
{["lv"] = 25, ["offset"] = -16, ["type"] = gg.TYPE_FLOAT},
 }
qmxg = {
{["value"] =500, ["offset"] = -24, ["type"] = gg.TYPE_FLOAT},
}
xqmnb(qmnb)
end

function c15()
 gg.setRanges(gg.REGION_ANONYMOUS)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{18.38787841797,0x5860}, {-0.01565527916, 0x5840}, {-0.00102636218, 0x583C},}
    local tb2 = {{160, 0x5860},}
    SearchWrite(tb1, tb2, dataType)
gg.toast("下蹲路飞已开启")
end


function c50()
gg.setRanges(32)
local dataType = 16
local search = {
{68000, 0},

}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
end




function c20()
gg.setRanges(8) 
local tb1 = {{tonumber("6.1630904e-33"),tonumber("-4")}, {tonumber("-9.9839328e27"),tonumber("4")}, {tonumber("-1.0070975e28"),tonumber("16")}, } 	
local tb2 = {{tonumber("-6.1526231e27"),tonumber("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(8) 
local tb1 = {{tonumber("-1.0530367e28"),tonumber("-12")}, {tonumber("-5.8454586e27"),tonumber("-8")}, {tonumber("0"),tonumber("0")}, {tonumber("0"),tonumber("4")}, {tonumber("0"),tonumber("296")}, } 	
local tb2 = {{tonumber("-2.7860151e28"),tonumber("0")}, {tonumber("-3.7444097e28"),tonumber("4")}, {tonumber("-2.793752e28"),tonumber("296")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
gg.setRanges(32) 
local tb1 = {{tonumber("-980"),tonumber("-364")}, {tonumber("800000"),tonumber("-308")}, {tonumber("1.4125089e-40"),tonumber("80")}, } 	
local tb2 = {{tonumber("1"), tonumber("0")}, {tonumber("1"),tonumber("4")}, {tonumber("1"),tonumber("8")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end


function c16()
 gg.clearResults()

  gg.setRanges(gg.REGION_ANONYMOUS)

  gg.searchNumber("30D;10D;0F~1F;257D;3D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

  gg.getResults(100)

  gg.editAll("0.02600000292", gg.TYPE_FLOAT)
  gg.toast("M4射速已开启")
end




function c17()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("汽车锁油")
end


function c18()
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
    gg.toast("✓Headshoot 100%✓")
end

function c19()
gg.setRanges(32) 
local tb1 = {{ ("45"), ("0")}, { ("15"), ("4")}, { ("20"), ("8")}, { ("2500"), ("16")}, } 	
local tb2 = {{ ("500"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
end


function cfj()
gg.setRanges(32) 
local tb1 = {{ ("500"), ("0")}, { ("15"), ("4")}, { ("20"), ("8")}, { ("2500"), ("16")}, } 	
local tb2 = {{ ("45"), ("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
end
function cjc()
gg.setRanges(32) 
local tb1 = {{ ("30"), ("0")}, { ("16"), ("4")}, { ("49"), ("8")}, { ("22050"), ("12")}, } 	
local tb2 = {{ ("500"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end



function cjf()
gg.setRanges(32) 
local tb1 = {{ ("500"), ("0")}, { ("16"), ("4")}, { ("49"), ("8")}, { ("22050"), ("12")}, } 	
local tb2 = {{ ("30"), ("0")}, } 	
local dataType = 16
 SearchWrite(tb1,tb2, dataType)
end

function QBZ()
Name = "QBZ" 
gg.setRanges(32)
local dataType = 16
local search = {
{87000, 0},

}
local modify = {{35000, 0},}
SearchWrite(search,modify,dataType)
end




function d1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.2157107e-39;1.4012985e-45;2.8025969e-45;0.5;0.5:249", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
--透视	 
local tb1 ={{425,0},{400855040,0x408},{395976705 ,0x410},{802824192 ,0x420},{736370688 ,0x428},{937041920 ,0x448},{736370688 ,0x450},{131074 ,0xAC8},{327680 ,0xACC},} 
local tb2 = {{4,0x124},{4,0x38C}}
local dataType = 4
gg.setRanges(4) 
SearchWrite(tb1,tb2, dataType)
local tb1 ={{425,0},{400855040,0x408},{395976705 ,0x410},{802824192 ,0x420},{736370688 ,0x428},{937041920 ,0x448},{736370688 ,0x450},{131074 ,0xAC8},{327680 ,0xACC},} 
local tb2 ={{0,0x468}} 	
local dataType = 4
gg.setRanges(4) 
SearchWrite(tb1,tb2, dataType)
local tb1 ={{425,0},{400855040,0x408},{395976705 ,0x410},{802824192 ,0x420},{736370688 ,0x428},{937041920 ,0x448},{736370688 ,0x450},{131074 ,0xAC8},{327680 ,0xACC},} 
local tb2 = {{28,0x424},{38,0x434}}
local dataType = 4
gg.setRanges(4) 
SearchWrite(tb1,tb2, dataType)
end



function d2()
 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("6.9814256e-29;4.9806271e21;4.9621809e21;5.4049168e21;2.0:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("马赛克开启成功")
	 gg.clearResults()
 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("4.7975957e21;2.8866748e-43;3.9236357e-44;1.1202056e-19;2.0:125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("透视开启成功")
	 gg.clearResults()
 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("7.8886091e-29;2.8152507e-40;2.3709839e21;3.2744562e-40;2.3802073e21;2.0:37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("40", gg.TYPE_FLOAT)
	 gg.toast("上色开启成功")
	 gg.clearResults()
end



function d3()
gg.setRanges(131072)
local dataType = 16
local tb1 = {{-5.5695588e-40, 0}, {4.7408149e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(131072)
local dataType = 16
local tb1 = {{-2.5774027e-39, 0}, {5.6262783e21, -4}, }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物红色已开启")
end




function d4()
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
	 gg.toast("透视开启成功")
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
	 gg.toast("上色开启成功")
end


function d5()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('4.9806271e21;7.0208711e-29;2.0;7.2303596e-15;2.25000905991;3.7652652e-39:69',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('120',gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('5.6262783e21;1.391252e-19;2.26828e10;2.0;0.69314718246:365',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('120',gg.TYPE_FLOAT)
end


function d6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('8,201;1,194,379,840;-2,144,337,912;671,285,255;1,081,081,856:21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8201',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('7',gg.TYPE_DWORD)
end



function d7()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber('8,201;1,194,379,840;-2,144,337,912;671,285,255;1,081,081,856:21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('8201',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('6',gg.TYPE_DWORD)
end


function d8()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("304D;328D;328D;64D;3,552D:100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("64",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("61",gg.TYPE_DWORD)
  gg.toast("开启成功")
end


function d9()
  gg.clearResults()
  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("上黑色已经成功")
end


function d10()
  gg.clearResults()
  gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("上白色已经成功")
end


function d11()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.9242857e21F;1.0F;2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.9327361e10F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.6896617e-29F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("75%")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;1.0F;2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("450透视开启成功")
 gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,080,033,283D;1,080,035,849D;1,080,033,292D;8,200D;1,194,380,045D;1,661,239,308D", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("红色开启成功")
end



function d12()
  qmnb = {
    {
      memory = gg.REGION_BAD
    },
    {name = "845透视1"},
    {
      value = tonumber("5.4049168e21"),
      type = tonumber("16")
    },
    {
      lv = tonumber("1.3912565e-19"),
      offset = tonumber("8"),
      type = 16
    },
    {
      lv = tonumber("2"),
      offset = tonumber("12"),
      type = 16
    },
    {
      lv = tonumber("1.6623113e-19"),
      offset = tonumber("16"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("120"),
      offset = tonumber("12"),
      type = 16
    }
  }
  xqmnb(qmnb)
  qmnb = {
    {
      memory = gg.REGION_BAD
    },
    {name = "845透视2"},
    {
      value = tonumber("1.1202056e-19"),
      type = tonumber("16")
    },
    {
      lv = tonumber("3.9236357e-44"),
      offset = tonumber("-4"),
      type = 16
    },
    {
      lv = tonumber("2"),
      offset = tonumber("108"),
      type = 16
    }
  }
  qmxg = {
    {
      value = tonumber("120"),
      offset = tonumber("108"),
      type = 16
    }
  }
  xqmnb(qmnb)
  gg.setRanges(gg.REGION_BAD)
  SearchWrite({
    {
      tonumber("1194344475"),
      tonumber("-4")
    },
    {
      tonumber("8201"),
      tonumber("0")
    },
    {
      tonumber("1194379806"),
      tonumber("4")
    },
    {
      tonumber("1661767680"),
      tonumber("12")
    }
  }, {
    {
      tonumber("7"),
      tonumber("0")
    },
    {
      tonumber("7"),
      tonumber("-8")
    }
  }, 4)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("红色开始成功")
end


function e1()
gg.setRanges(32)
local Name="ak"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, 12}, }
local tb2 = {{1101001028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="ak"
local dataType = 4
local tb1 = {{10100100, 0}, {101001, -12}, }
local tb2 = {{1101001028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("ak美化成功")
end


function e2()
qmnb = {
{["memory"] = 32},
{["name"] = "M416-萌龙咆哮"},
{["value"] = 101004, ["type"] = 4},
{["lv"] = 101004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 10100400, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1101004085, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end
function e3()
gg.setRanges(32)
local Name="SC"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, 12}, }
local tb2 = {{1101003070, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="SCAR"
local dataType = 4
local tb1 = {{10100300, 0}, {101003, -12}, }
local tb2 = {{1101003070, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("SCAR成功")
end

function e4()
gg.setRanges(32)
local Name="98k"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, 12}, }
local tb2 = {{1103001060, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="98k"
local dataType = 4
local tb1 = {{10300100, 0}, {103001, -12}, }
local tb2 = {{1103001060, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("98k成功")
end

function e5()
gg.setRanges(32)
local Name="M16A4"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, 12}, }
local tb2 = {{1101002029, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M16A4"
local dataType = 4
local tb1 = {{10100200, 0}, {101002, -12}, }
local tb2 = {{1101002029, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M16A4成功")
end

function e6()
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, 12}, }
local tb2 = {{1102001004, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="UZI美化成功"
local dataType = 4
local tb1 = {{10200100, 0}, {102001, -12}, }
local tb2 = {{1102001004, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("UZI美化成功")
end


function e7()
gg.setRanges(32)
local Name="up45美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, 12}, }
local tb2 = {{1102002028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="up45美化"
local dataType = 4
local tb1 = {{10200200, 0}, {102002, -12}, }
local tb2 = {{1102002028, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("up45美化成功")
end


function e8()
qmnb = {
{["memory"] = 32},
{["name"] = "AWM-占卜师"},
{["value"] = 103003, ["type"] = 4},
{["lv"] = 103003, ["offset"] = 4, ["type"] = 4},
{["lv"] = 10300300, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1103003032, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end

function e9()
gg.setRanges(32)
local Name="平底锅美化"
local dataType = 4
local tb1 = {{10800400, 0}, {108004, 12}, }
local tb2 = {{1108004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="平底锅美化"
local dataType = 4
local tb1 = {{10800400, 0}, {108004, -12}, }
local tb2 = {{1108004001, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("平底锅美化成功")
end


function e10()
gg.setRanges(32)
local Name="M762美化"
local dataType = 4
local tb1 = {{10100800, 0}, {101008, 12}, }
local tb2 = {{1101008020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M762美化"
local dataType = 4
local tb1 = {{10100800, 0}, {101008, -12}, }
local tb2 = {{1101008020, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M762美化成功")
end



function e11()
gg.setRanges(32)
local Name="M24美化"
local dataType = 4
local tb1 = {{10300200, 0}, {103002, 12}, }
local tb2 = {{1103002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="M24美化"
local dataType = 4
local tb1 = {{10300200, 0}, {103002, -12}, }
local tb2 = {{1103002018, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("M24美化成功")
end




function e12()
gg.setRanges(32)
local Name="s12k美化"
local dataType = 4
local tb1 = {{10400300, 0}, {104003, 12}, }
local tb2 = {{1104003003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local Name="s12k美化"
local dataType = 4
local tb1 = {{10400300, 0}, {104003, -12}, }
local tb2 = {{1104003003, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("s12k美化成功")
end

function e13()
qmnb = {
{["memory"] = 32},
{["name"] = "DP-28-缤纷极光"},
{["value"] = 105002, ["type"] = 4},
{["lv"] = 105002, ["offset"] = 4, ["type"] = 4},
{["lv"] = 10500200, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1105002023, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end
function e14()
qmnb = {
{["memory"] = 32},
{["name"] = "汤姆逊-糖果加农"},
{["value"] = 102004, ["type"] = 4},
{["lv"] = 102004, ["offset"] = 4, ["type"] = 4},
{["lv"] = 10200400, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 1102004018, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
end




















function Exit()
print("")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = ''
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



