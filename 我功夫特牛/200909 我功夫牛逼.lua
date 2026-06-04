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
  SN = gg.choice({
  "普通铁剑伤害爆炸（大厅）",
  "普通布甲无限血量（大厅）",
  "一键通关（局内）",
  "比武大会锁血秒杀（局内）",
  "比武大会血量变0（自杀，结算用）",
"退出脚本"
}, nil, "作者：夙夜")
  if SN == 1 then a() end
  if SN == 2 then b() end
  if SN == 3 then c() end
  if SN == 4 then d() end
  if SN == 5 then e() end
  if SN == 6 then os.exit() end XGCK = -1 end
     

function a()
qmnb = {
{["memory"] = 32},
{["name"] = "铁剑"},
{["value"] = 15, ["type"] = 64},
{["lv"] = 0, ["offset"] = -4, ["type"] = 64},
{["lv"] = 0, ["offset"] = -24, ["type"] = 64},
{["lv"] = 0, ["offset"] = -28, ["type"] = 64},
{["lv"] = 0, ["offset"] = -52, ["type"] = 64},
}
qmxg = {
{["value"] = 999999999, ["offset"] = -96, ["type"] = 64},
}
xqmnb(qmnb)
end

------["freeze"] = true},冻结
------["freeze"] = false},恢复冻结
--gg.toast("")
--gg.alert("")

--函数
  --gg.setRanges(gg.REGION_类型)
  --绿色中的内存 [指游戏整体]
  --gg.setRanges(gg.REGION_ANONYMOUS) --A内存
  --gg.setRanges(gg.REGION_PPSSPP) --PS内存
  --gg.setRanges(gg.REGION_C_BSS) --Cb内存
  --gg.setRanges(gg.REGION_C_DATA) --Cd内存
  --gg.setRanges(gg.REGION_C_ALLOC) --Ca内存
  --gg.setRanges(gg.REGION_J_HEAP) --JH内存
  --黄色中的内存 [指游戏潜体]
  --gg.setRanges(gg.REGION_JAVA) --J内存
  --gg.setRanges(gg.REGION_STACK) --S内存
  --gg.setRanges(gg.REGION_ASHMEM) --As内存
  --gg.setRanges(gg.REGION_OTHER) --O内存
  --红色中的内存 [指游戏图像及构图]
  --gg.setRanges(gg.REGION_BAD) --B内存
  --其他内存 [指游戏静态库]
  --gg.setRanges(gg.REGION_CODE_APP) --xa内存
  --gg.setRanges(gg.REGION_CODE_SYSTEM) --xs内存

  ---gg.TYPE_FLOAT 指红色F类型
  --gg.TYPE_DWORD 指蓝色D类型
  --gg.TYPE_DOUBLE 指黄色E类型
  --gg.TYPE_AUTO 指白色全部类型

  --番外
  
  --gg.TYPE_WORD 指W类型
  --gg.TYPE_BYTE 指B类型
  --gg.TYPE_QWORD 指Q类型
  --gg.TYPE_XOR 指X类型




function b()
qmnb = {
{["memory"] = 32},
{["name"] = "布甲"},
{["value"] = 15, ["type"] = 64},
{["lv"] = 0, ["offset"] = -4, ["type"] = 64},
{["lv"] = 0, ["offset"] = 8, ["type"] = 64},
{["lv"] = 0, ["offset"] = 12, ["type"] = 64},
{["lv"] = 0, ["offset"] = 16, ["type"] = 64},
{["lv"] = 0, ["offset"] = 68, ["type"] = 64},
}
qmxg = {
{["value"] = 999999999, ["offset"] = 312, ["type"] = 64},
{["value"] = 999999999, ["offset"] = 504, ["type"] = 64},
}
xqmnb(qmnb)
end


function c()
qmnb = {
{["memory"] = 32},
{["name"] = "瞬间通关"},
{["value"] = 990057071, ["type"] = 4},
{["lv"] = 10, ["offset"] = -16, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end

function d()
qmnb = {
{["memory"] = 32},
{["name"] = "锁血秒杀"},
{["value"] = 100, ["type"] = 64},
{["lv"] = 500, ["offset"] = -16, ["type"] = 64},
}
qmxg = {
{["value"] = 999999999, ["offset"] = 8, ["type"] = 64,["freeze"] = true},
{["value"] = 999999999, ["offset"] = -8, ["type"] = 64,["freeze"] = true},
{["value"] = 999999999, ["offset"] = -24, ["type"] = 64,["freeze"] = true},
}
xqmnb(qmnb)
end

function e()
gg.alert("冻结列表全部改0并取消冻结")
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