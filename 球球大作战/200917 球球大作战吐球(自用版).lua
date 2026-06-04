-----------------------------------------------------------------------------------------
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
-------配置↑↑↑勿修改-------
-------支持冻结------
-----------------------------------------------------------------------------------------
function Main()
menu = gg.choice({
"㊣一键开启→功能①②③(训练营吐球分身后开)",
"①训练营开→三角链(16分后开)",
"②大厅开→1.51倍调节杆(调节杆调最大)",
"③训练场吐一颗球开→冻结加速(不崩溃全新功能)",
"☯退出脚本→"},
nil,"")
if menu == 1 then OVER() end
if menu == 2 then A() end
if menu == 3 then B() end
if menu == 4 then C() end
if menu == 5 then Exit() end
XGCK=-1
end
function A()
qmnb = {
{["memory"] = 4},
{["name"] = "三角链"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -40, ["type"] = 16},
{["lv"] = 460, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 80, ["offset"] = 0, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end
function B()
qmnb = {
{["memory"] = 32},
{["name"] = "1.51倍调节杆"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 0.8233276009559631, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 1.51, ["offset"] = 0, ["type"] = 16,["freeze"] = true},

}
xqmnb(qmnb)
end
function C()
qmnb = {
{["memory"] = 32},
{["name"] = "冻结加速"},
{["value"] = 0.11999999731779099, ["type"] = 16},
{["lv"] = 2.802596928649634E-45, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.07, ["offset"] = 0, ["type"] = 16,["freeze"] = true},

}
xqmnb(qmnb)
end
function OVER()
qmnb = {
{["memory"] = 32},
{["name"] = "冻结加速"},
{["value"] = 0.11999999731779099, ["type"] = 16},
{["lv"] = 2.802596928649634E-45, ["offset"] = -20, ["type"] = 16},
}
qmxg = {
{["value"] = 0.07, ["offset"] = 0, ["type"] = 16,["freeze"] = true},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "1.51倍调节杆"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 0.8233276009559631, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 1.51, ["offset"] = 0, ["type"] = 16,["freeze"] = true},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "三角链"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = -40, ["type"] = 16},
{["lv"] = 460, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 80, ["offset"] = 0, ["type"] = 16,["freeze"] = true},
}
xqmnb(qmnb)
end
function HOME()
lw=1
Main()
end
function Exit()
print("走了就别回来了")
os.exit()
end
cs = "👏🏻"
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