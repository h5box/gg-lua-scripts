gg.alert("白鲨QQ2371955160\n白鲨科技;\n信誉第一;\n白鲨科技;\n稳如老母鸡下蛋")
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
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
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
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end


function Main()
 SN = gg.choice({
"【全模式改分改米】",
"【降魔秒杀专区】",
"【无限功能️专区】",
"【酷飞属性专区】",
"【坐骑属性专区】",
"【角色瞬移专区】",
 "【–️🔴退出脚本🔴–】" --全网已启动此脚本:"..key.."次\n
 }, nil,os.date("白鲨QQ2371955160;\n你已打开此脚本: "..Ys.."次\n当前时间:%H时:%M分:%S秒-%Y年-%m月-%d日"))
  if SN == nil then else
if SN == 1 then A1() end
if SN == 2 then A2() end
if SN == 3 then A3() end
if SN == 4 then A4() end
if SN == 5 then A5() end
if SN == 6 then A6() end
if SN == 7 then Exit() end end
XGCK = -1 end


function A1()
 WC = gg.multiChoice({
"🍉自定义结算分🍉",
"🍃自定义开局距离🍃",
"🌚局内锁分(局内无分)🌚",
"🌱游戏秒死系列🌱",
"👿自定义游戏速度👿",
"🍓自定义排位改板块🍓",
"🔥全模式改分🔥",
"💋全模式无敌💋",
"🎃全模式瞬移🎃",
"🎉全模式改冒险🎉",
"🍀跳过新手任务🍀",
"返回主菜单😜",
 }, nil, "")
if WC == nil then else
if WC[1] == true then a() end
if WC[2] == true then b() end
if WC[3] == true then c() end
if WC[4] == true then d() end
if WC[5] == true then e() end
if WC[6] == true then f() end
if WC[7] == true then g() end
if WC[8] == true then h() end
if WC[9] == true then i() end
if WC[10] == true then j() end
if WC[11] == true then k() end
if WC[12] == true then NB() end
XGCK = -1 end end


function A2()
 FW = gg.multiChoice({
"🍇降魔秒杀{1-6}🍇",
"🍒降魔秒杀{7-10🍒}",
"🍑自定义降魔排位秒杀🍑",
"返回主页",
 }, nil, "")
 if FW == nil then else
if FW[1] == true then l() end
if FW[2] == true then m() end
if FW[3] == true then n() end
if FW[4] == true then NB() end
XGCK = -1 end end


function A3()
 FW = gg.multiChoice({
"🍂无限巅峰🍂",
"🐬无限超级奖励🐬",
"💧天空城冲刺加速💧",
"返回主页",
 }, nil, "")
 if FW == nil then else
if FW[1] == true then o() end
if FW[2] == true then p() end
if FW[3] == true then q() end
if FW[4] == true then NB() end
XGCK = -1 end end

function A4()
 FW = gg.multiChoice({
"💞自定义血量💞",
"🎭自定义攻速伤害🎭",
"⛄免伤法阵{无冷却}⛄",
"返回主页",
 }, nil, "")
 if FW == nil then else
if FW[1] == true then r() end
if FW[2] == true then s() end
if FW[3] == true then t() end
if FW[4] == true then NB() end
XGCK = -1 end end

function A5()
 FW = gg.multiChoice({
"💎坐骑表现属性💎",
"🚀坐骑竞速属性🚀",
"返回主页",
 }, nil, "")
 if FW == nil then else
if FW[1] == true then u() end
if FW[2] == true then v() end
if FW[3] == true then NB() end
XGCK = -1 end end


function A6()
 FW = gg.multiChoice({
"红孩儿瞬移",
"小音瞬移",
"返回主页",
 }, nil, "")
 if FW == nil then else
if FW[1] == true then Ys1() end
if FW[2] == true then Ys2() end
if FW[3] == true then NB() end
XGCK = -1 end end


function Ys1()
gg.clearResults()
gg.setRanges(16384|8)
gg.searchNumber("0.01", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.refineAddress("9F4", 0xFFFFFFFF, 16)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("红孩儿瞬移开启成功") end


function Ys2()
gg.clearResults()
gg.setRanges(16384|8)
gg.searchNumber("0.01", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.refineAddress("1B4", 0xFFFFFFFF, 16)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("小音瞬移开启成功") end


function a()
local data = gg.prompt(
{"请输入你修改的结算倍数\n结算分",}, 
{""}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "结算翻倍"},
{["value"] = 663, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 3, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = -16, ["type"] = 16},
{["value"] = data[1], ["offset"] = -12, ["type"] = 16},
}
xqmnb(qmnb)
end end

function b()
local data = gg.prompt(
{"改米根据自己手机分辨率大小调整\n改米距离{默认200,改-0.14恢复}",}, 
{"200"}, 
{"number"})
if data == nil or data == "" then
else
qmnb = {
{["memory"] = 16384|8},
{["name"] = "距离改米"},
{["value"] = 8.8948989e-39, ["type"] = 16},
{["lv"] = 8.8952297e-39, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = data[1], ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end end


function c()
gg.clearResults()
gg.setRanges(16384|8)
gg.searchNumber("0.01", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.refineAddress("384", 0xFFFFFFFF, 16)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("局内锁分开启成功") end

function d()
QX = gg.alert("两个功能不能同时开始\n","下蹲秒死","开局秒死","返回上一页")
if QX == nil then else
if QX == 1 then d1() end
if QX == 2 then d2() end
if QX == 3 then ER() end
XGCK = -1 end end


function d1()
	 gg.clearResults()
	 gg.setRanges(16384|8)
	 gg.searchNumber("0.35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9900)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("下蹲秒死开启成功")
	 gg.clearResults() end


function d2()
gg.clearResults()
	 gg.setRanges(16384|8)
	 gg.searchNumber("0.89999997616;300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9900)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("开局秒死开启成功")
	 gg.clearResults() end


function e()
local data = gg.prompt(
{"游戏速度\n{默认0.002,也就是两倍速度.多人微调}",}, 
{"0.002"}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 16384|8},
{["name"] = "游戏速度"},
{["value"] = 1.7223645e-38, ["type"] = 16},
{["lv"] = 1.7212076e-38, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = data[1], ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end end


function f()
local data = gg.prompt(
{"请输入你修改的板块;\n1是经典,2是夺分,3是竞速,4是生存,5是降魔\n排位改板块",}, 
{""}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "排位改板块"},
{["value"] = 12336, ["type"] = 4},
{["lv"] = 12336, ["offset"] = 284, ["type"] = 4},
}
qmxg = {
{["value"] = data[1], ["offset"] = 412, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end end


function g()
gg.clearResults()
gg.setRanges(16384|8)
gg.searchNumber("0.01", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.refineAddress("384", 0xFFFFFFFF, 16)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("全模式改分开启成功") end


function h()
gg.clearResults()
	 gg.setRanges(16384|8)
	 gg.searchNumber("-1;800;30;150", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", 16, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = 16,freeze = true,value = 1}})
	 gg.toast("全模式无敌开启成功") end end


function i()
local data = gg.prompt(
{"全模式瞬移\n全模式瞬移{默认40,改0.4恢复}",}, 
{"40"}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 16384|8},
{["name"] = "瞬移"},
{["value"] = 1200, ["type"] = 16},
{["lv"] = 0.40000000596, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = data[1], ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end end


function j()
qmnb = {
{["memory"] = 4|32},
{["name"] = "全模式改冒险"},
{["value"] = 216, ["type"] = 4},
{["lv"] = 217, ["offset"] = 16, ["type"] = 4},
{["lv"] = 218, ["offset"] = 32, ["type"] = 4},
{["lv"] = 219, ["offset"] = 48, ["type"] = 4},
{["lv"] = 220, ["offset"] = 64, ["type"] = 4},
{["lv"] = 221, ["offset"] = 80, ["type"] = 4},
{["lv"] = 222, ["offset"] = 96, ["type"] = 4},
{["lv"] = 223, ["offset"] = 112, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -16, ["type"] = 4,["freeze"] = true},
}
xqmnb(qmnb)
end


function k()
qmnb = {
{["memory"] = 4|32},
{["name"] = "跳过新手任务"},
{["value"] = 190, ["type"] = 4},
{["lv"] = 86400, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 16, ["offset"] = -260, ["type"] = 16},
}
xqmnb(qmnb)
end


function l()
qmnb = {
{["memory"] = 4|32},
{["name"] = "降魔秒杀[1-6]"},
{["value"] = 3000, ["type"] = 4},
{["lv"] = 4500, ["offset"] = 64, ["type"] = 4},
{["lv"] = 6000, ["offset"] = 128, ["type"] = 4},
{["lv"] = 7500, ["offset"] = 192, ["type"] = 4},
{["lv"] = 9000, ["offset"] = 256, ["type"] = 4},
{["lv"] = 10500, ["offset"] = 320, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 0, ["type"] = 4},
{["value"] = 100, ["offset"] = 64, ["type"] = 4},
{["value"] = 100, ["offset"] = 128, ["type"] = 4},
{["value"] = 100, ["offset"] = 192, ["type"] = 4},
{["value"] = 100, ["offset"] = 256, ["type"] = 4},
{["value"] = 100, ["offset"] = 320, ["type"] = 4},
}
xqmnb(qmnb)
end


function m()
qmnb = {
{["memory"] = 4|32},
{["name"] = "降魔秒杀[7-10]"},
{["value"] = 12500, ["type"] = 4},
{["lv"] = 14500, ["offset"] = 64, ["type"] = 4},
{["lv"] = 16500, ["offset"] = 128, ["type"] = 4},
{["lv"] = 18500, ["offset"] = 192, ["type"] = 4},
}
qmxg = {
{["value"] = 100, ["offset"] = 0, ["type"] = 4},
{["value"] = 100, ["offset"] = 64, ["type"] = 4},
{["value"] = 100, ["offset"] = 128, ["type"] = 4},
{["value"] = 100, ["offset"] = 192, ["type"] = 4},
}
xqmnb(qmnb)
end

function n()
local data = gg.prompt(
{"请输入你修改的秒杀效率\n降魔秒杀{默认700,实际情况自己调整}",}, 
{"700"}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "降魔{排位秒杀}"},
{["value"] = 2400, ["type"] = 4},
{["lv"] = 3600, ["offset"] = 64, ["type"] = 4},
{["lv"] = 4800, ["offset"] = 128, ["type"] = 4},
}
qmxg = {
{["value"] = data[1], ["offset"] = 0, ["type"] = 4},
{["value"] = data[1], ["offset"] = 64, ["type"] = 4},
{["value"] = data[1], ["offset"] = 128, ["type"] = 4},
}
xqmnb(qmnb)
end end



function o()
QX = gg.alert("两个功能不能同时开始\n","恢复数据","无限巅峰","返回上一页")
if QX == nil then else
if QX == 1 then o2() end
if QX == 2 then o1() end
if QX == 3 then ER() end
XGCK = -1 end end

function o1()
gg.clearResults()
	 gg.setRanges(16384|8)
	 gg.searchNumber("2089;1;3::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2089", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9900)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无限巅峰开启成功")
	 gg.clearResults() end
	 
	 
function o2()
gg.clearResults()
	 gg.setRanges(16384|8)
	 gg.searchNumber("2088;0;1;3::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9900)
	 gg.editAll("2089", gg.TYPE_FLOAT)
	 gg.toast("无限巅峰恢复成功")
	 gg.clearResults() end



function p()
qmnb = {
{["memory"] = 4|32},
{["name"] = "无限超级奖励"},
{["value"] = 607, ["type"] = 4},
{["lv"] = 1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 3, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 28, ["type"] = 16},
}
xqmnb(qmnb)
end


function q()
local data = gg.prompt(
{"天空冲刺加速\n{默认5000,改1200恢复}",}, 
{"5000"}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 16384|8},
{["name"] = "天空城冲刺加速"},
{["value"] = 1500, ["type"] = 16},
{["lv"] =2500, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = data[1], ["offset"] = 8, ["type"] = 16},
}
xqmnb(qmnb)
end end


function r()
local data = gg.prompt(
{"酷飞血量\n血量"}, 
{"999999"}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "血量"},
{["value"] =  800,["type"] = 4},
{["lv"] = 800, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = data[1], ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end end




function s()
local data = gg.prompt(
{"酷飞攻速伤害,0是最快的\n攻速","伤害"}, 
{"0","99999"}, 
{"number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "酷飞攻速伤害"},
{["value"] =  120,["type"] = 4},
{["lv"] = 1530, ["offset"] = 4, ["type"] = 4},
{["lv"] = 100, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = data[1], ["offset"] = 0, ["type"] = 4},
{["value"] = data[2], ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
end end


function t()
qmnb = {
{["memory"] = 4|32},
{["name"] = "法阵无冷却"},
{["value"] =  25000,["type"] = 4},
{["lv"] = 2500, ["offset"] = 4, ["type"] = 4},
{["lv"] = 360, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
}
xqmnb(qmnb)
end


function u()
local data = gg.prompt(
{"请输入你想修改的坐骑属性，自己调整\n表现分加成","金币加成",}, 
{"","",}, 
{"number","number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "坐骑表现属性"},
{["value"] =5399, ["type"] = 4},
{["lv"] =5396, ["offset"] = 128, ["type"] = 4},
 }
qmxg = {
{["value"] =0, ["offset"] = 172, ["type"] = 16},
{["value"] =data[1], ["offset"] = 176, ["type"] = 16},
{["value"] =0, ["offset"] = 180, ["type"] = 16},
{["value"] =data[2], ["offset"] = 184, ["type"] = 16},
}
xqmnb(qmnb)
end end


function v()
local data = gg.prompt(
{"看自己装备改的合适的\n最大速度","加速能力","超级冲刺","能量累积",}, 
{"350","80","80","80",}, 
{"number","number","number","number"})
if data == nil or data == "" then
Main()
else
qmnb = {
{["memory"] = 4|32},
{["name"] = "坐骑竞速属性"},
{["value"] =5928, ["type"] = 4},
{["lv"] =5925, ["offset"] = 128, ["type"] = 4},
 }
qmxg = {
{["value"] = data[1], ["offset"] = 204, ["type"] = 16},
{["value"] = 0, ["offset"] = 208, ["type"] = 16 },
{["value"] = data[2], ["offset"] = 212, ["type"] = 16},
{["value"] = 0, ["offset"] = 216, ["type"] = 16 },
{["value"] = data[3], ["offset"] = 220, ["type"] = 16},
{["value"] = 0, ["offset"] = 224, ["type"] = 16 },
{["value"] = data[4], ["offset"] = 228, ["type"] = 16},
{["value"] = 0, ["offset"] = 232, ["type"] = 16 },
}
xqmnb(qmnb)
end end


file=io.open('/sdcard/系统文件,别删','a+') --不同的脚本路径自己改
    file:write('1') 
   Ys = file:seek('end')


function ER()
A1() end
function NB()
Main() end
function Exit()
os.exit() end


while true do
if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false) end
  gg.clearResults()
  if XGCK == 1 then
    Main() end end
