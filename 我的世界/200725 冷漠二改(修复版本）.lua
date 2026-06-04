DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD

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


function Main0()
SN = gg.choice({
	 "※改管理员权限※",
	 "※改蛋※",
	 "※改蛋恢复※",
	 "※穿墙※",
	 "※关闭穿墙※",
	 "※自定义附魔※",
	 "※附魔书改物※",
	 "※附魔书改物恢复※",
	 "※开启任意副手※",
	 "※长臂猿※",
	 "※强开坐标※",
	 "※退出脚本※",
}, nil, "giao。。。。。。。。。。。...")
if SN==1 then
	 cb1()
end
if SN==2 then
	 cb2()
end
if SN==3 then
	 cb3()
end
if SN==4 then
	 cb4()
end
if SN==5 then
	 cb5()
end
if SN==6 then
	 cb6()
end
if SN==7 then
     cb7()
end
if SN==8 then
     cb8()
end
if SN==9 then
     cb9()
end
if SN==10 then
     cb10()
end

if SN==11 then
     cb11()
end
if SN==12 then
     cb12()
end
if SN==13 then
     cb13()
end

if SN==14 then
     cb14()
end

FX1=0
FX2=0
end

function cb1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("2139030018", gg.TYPE_DWORD)
	 gg.toast("✔伪op修改成功✔")
	 gg.clearResults()
end

function cb2()
local T=gg.prompt({
"常用蛋id:闪电蛋93 凋零炸弹89 蓝凋零炸弹91 火焰炸弹85 TNT蛋65 凋零蛋52 末影龙蛋53 龙息蛋79 崩服蛋83 照相机蛋62 NPC257"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0D;0D;105D::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll(T[1],gg.TYPE_DWORD)
gg.toast("✔改蛋成功✔")
end
end

function cb3()
gg.getResults(999)
gg.editAll("105",gg.TYPE_DWORD)
gg.toast("恢复成功")
end

function cb4()
qmnb={
{["memory"] = 4},
{["name"] ="穿墙"},
{["value"] =2000, ["type"] = 4},
{["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = 0x198, ["type"] = 1}
}
xqmnb(qmnb)
gg.clearResults()
end

function cb5()
qmnb={
{["memory"] = 4},
{["name"] ="穿墙关闭"},
{["value"] =2000, ["type"] = 4},
{["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
}
qmxg={
{["value"] =0, ["offset"] = 0x198, ["type"] = 1}
}
xqmnb(qmnb)
gg.clearResults()
end

function cb6()
local T=gg.prompt({
"※注意:修改后在背包左下角搜索修改的等级(如32767)获取"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-128B;10B;-24B;0~35D;2D;-24B;1W;2D;1D;-88B;10B;9D;1D::777", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1W", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(T[1],gg.TYPE_WORD)
gg.toast("✔附魔成功✔")
gg.clearResults()
end
end

function cb7()
local T=gg.prompt({
"部分物品id:弓261 钻石稿278 钻石斧279 钻石剑276 钻石头~鞋310-313 烈焰棒369 头模型397 鞘翅444 三叉戟455 弩471 隐形基岩95 地狱传送门方块90 末地传送门方块119 下界反应核247 发光的黑曜石246 折跃门209 屏障-161 手持物品栏456(闪退) 神奇金头盔454 气泡698 照相机-160 线条方块-211 结构方块252 命令方块188 紫黑棒166"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1065353216D;16256W;403W;1B::10",127)
gg.searchNumber("403",2)
gg.getResults(999)
gg.editAll(T[1],2)
gg.toast("开启成功,你修改的值是"..T[1])
end
end

function cb8()
gg.getResults(999)
gg.editAll("403",2)
gg.toast("恢复成功")
end

function cb9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1198530561", gg.TYPE_DWORD)
	 gg.toast("✔任意副手开启成功✔")
	 gg.clearResults()
end

function cb10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F;-1.0F::57", gg.TYPE_FLOAT)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F", gg.TYPE_FLOAT)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("长臂猿已开启")
	 gg.clearResults()
end


function cb11()
mnb={
{["memory"] = 4},
{["name"] ="坐标"},
{["value"] =10000, ["type"] = 4},
{["lv"] = 513, ["offset"] = -148, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = -528, ["type"] = 4}
}
xqmnb(qmnb)
end



function cb12()
	 os.exit()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end