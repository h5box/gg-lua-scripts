function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qjnp) for x = 1, #(qjnp) do xgpy = szpy + qjnp[x]["offset"] xglx = qjnp[x]["type"] xgsz = qjnp[x]["value"] xgdj = qjnp[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function qijiunb(QJNB) o=os.clock()   gg.clearResults() gg.setRanges(QJNB[1]["memory"]) gg.searchNumber(QJNB[3]["value"], QJNB[3]["type"]) if gg.getResultCount() == 0 then gg.toast(QJNB[2]["name"] .. "开启失败") else gg.refineNumber(QJNB[3]["value"], QJNB[3]["type"]) gg.refineNumber(QJNB[3]["value"], QJNB[3]["type"]) gg.refineNumber(QJNB[3]["value"], QJNB[3]["type"]) if gg.getResultCount() == 0 then gg.toast(QJNB[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(QJNB) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + QJNB[v]["offset"] pysz[1].flags = QJNB[v]["type"] szpy = gg.getValues(pysz) pdpd = QJNB[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qjnp) end end if xgjg == true then gg.toast(QJNB[2]["name"] .. "开启成功\n  共修改" .. xgsl .. "条数据\n  耗时"..os.clock()-o.."秒") else gg.toast(QJNB[2]["name"] .. "开启失败") end end end end
function QIJIU()
qi=gg.prompt({"苏烟T服封神",
  "透视(游戏)",
  "范围(开)",
  "红名(开)",
  "无防切枪",
  "爬墙开",
  "爬墙关",
  "超远拉花(换阵容重开)",
  "自定义加速(阵容重开)",
  "自定义高跳",
  "子弹聚点",
  "全局加速",
  "人物加虚",
  "清除保存数据",
  "退出修仙"},
	{'苏烟T服自用' ,	false,},
{"number",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox"})


if qi~=nil then 


if qi[2] then
QJNB = {
{["memory"] = 32|4},
{["name"] = "透视"},
{["value"] = 1056109299, ["type"] = 4},
{["lv"] = 1017159841, ["offset"] = 4, ["type"] = 4},
{["lv"] = 2048, ["offset"] = 24, ["type"] = 4},
}
qjnp = {
{["value"] = 10880, ["offset"] = 24, ["type"] = 4},
}
qijiunb(QJNB)
end




if qi[3] then
local data = gg.prompt(
{"自己随便填\n中途可以改大或改小\n范围",}, 
{"0",}, 
{"number"})
if data == nil or data == "" then
QIJIU()
else
QJNB = {
{["memory"] = 4},
{["name"] = "范围"},
{["value"] = 90, ["type"] = 16},
{["lv"] = 0.00001, ["offset"] = -8, ["type"] = 16},
{["lv"] = 0.00001, ["offset"] = -16, ["type"] = 16},

}
qjnp = {
{["value"] = data[1], ["offset"] = -144, ["type"] = 16},
{["value"] = data[1], ["offset"] = -136, ["type"] = 16},

}
qijiunb(QJNB)
end end




if qi[4] then
local data = gg.prompt(
{"自定义红名\n改0.00001恢复",}, 
{"0",}, 
{"number"})
if data == nil or data == "" then
QIJIU()
else
QJNB = {
{["memory"] = 16384},
{["name"] = "红名"},
{["value"] = -1.4481164e28, ["type"] = 16},
{["lv"] = -9.4914432e20, ["offset"] = -992, ["type"] = 16},
{["lv"] = -3.6965546e20, ["offset"] = -988, ["type"] = 16},
{["lv"] = -3.6951138e20, ["offset"] = -984, ["type"] = 16},
}
qjnp = {
{["value"] = data[1], ["offset"] = -1000, ["type"] = 16},

}
qijiunb(QJNB)
end end


if qi[5] then 
QJNB = {
{["memory"] = 32},
{["name"] = "无后"},
{["value"] = -308606461, ["type"] = 4},
{["lv"] = -369098748, ["offset"] = 12, ["type"] = 4},
{["lv"] = -308401664, ["offset"] = 24, ["type"] = 4},
}
qjnp = {
{["value"] = 0, ["offset"] = 12, ["type"] = 4},
}
qijiunb(QJNB)
QJNB = {
{["memory"] = 4},
{["name"] = "防抖"},
{["value"] = 1069547520, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1148846080, ["offset"] = 16, ["type"] = 4},
}
qjnp = {
{["value"] = 0, ["offset"] = 16, ["type"] = 4},
}
qijiunb(QJNB)
o=os.clock()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1000;1;1000;1000;1000::73", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("5", 16)
if gg.getResultCount()<10 then
gg.toast("秒切开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>10 then
gg.toast("秒切开启成功\n  共修改10条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end




if qi[6] then 
o=os.clock()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("184,549,368D;452,984,820D;1,051,772,663D;0",16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0",16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10",16)
if gg.getResultCount()<10 then
gg.toast("爬墙开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>10 then
gg.toast("爬墙开启成功\n  共修改10条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end






if qi[7] then 
o=os.clock()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("184,549,368D;452,984,820D;1,051,772,663D;10",16,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10",16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",16)
if gg.getResultCount()<10 then
gg.toast("爬墙关闭成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>10 then
gg.toast("爬墙关闭成功\n  共修改10条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end



if qi[8] then 
QJNB = {
{["memory"] = 32},
{["name"] = "超远"},
{["value"] = 90, ["type"] = 16},
{["lv"] = -0.03999999911, ["offset"] = 32, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 64, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 156, ["type"] = 16},

}

qjnp = {
{["value"] = 5.1, ["offset"] = -12, ["type"] =16, ["freeze"] = true},
{["value"] = 4.4, ["offset"] = -16, ["type"] =16, ["freeze"] = true},
{["value"] = 100, ["offset"] = -188, ["type"] =16, ["freeze"] = true},
{["value"] = 100, ["offset"] = -172, ["type"] =16, ["freeze"] = true},
{["value"] = 1.1, ["offset"] = -192, ["type"] = 16, ["freeze"] = true},
{["value"] = 88, ["offset"] = -196, ["type"] = 16, ["freeze"] = true},


}
qijiunb(QJNB)
end


if qi[9] then 
local data = gg.prompt(
{"\n静步加速","下蹲加速","起步第一","起步第二",}, 
{"6.8","5.1","133","133",}, 
{"number","number","number","number"})
if data == nil or data == "" then
QIJIU()
else
QJNB = {
{["memory"] = 32},
{["name"] = "静+蹲+起步"},
{["value"] = 90, ["type"] = 16},
{["lv"] = -0.03999999911, ["offset"] = 32, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 64, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 156, ["type"] = 16},

}

qjnp = {
{["value"] = data[1], ["offset"] = -12, ["type"] =16, ["freeze"] = true},
{["value"] = data[2], ["offset"] = -16, ["type"] =16, ["freeze"] = true},
{["value"] = data[3], ["offset"] = -188, ["type"] =16, ["freeze"] = true},
{["value"] = data[4], ["offset"] = -172, ["type"] =16, ["freeze"] = true},

}
qijiunb(QJNB)
end end



if qi[10] then 
local data = gg.prompt(
{"自定义高度\n推荐1.7或者1",}, 
{"2.2"}, 
{"number"})
if data == nil or data == "" then
QIJIU()
else
QJNB = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 90, ["type"] = 16},
{["lv"] = -0.03999999911, ["offset"] = 32, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 64, ["type"] = 16},
{["lv"] = 1.4012985e-45, ["offset"] = 156, ["type"] = 16},

}

qjnp = {
{["value"] = data[1], ["offset"] = -192, ["type"] = 16, ["freeze"] = true},
{["value"] = 88, ["offset"] = -196, ["type"] = 16, ["freeze"] = true},
{["value"] = -5, ["offset"] = -200, ["type"] = 16, ["freeze"] = true},

}
qijiunb(QJNB)
end end


if qi[11] then 
QJNB = {
{["memory"] = 32},
{["name"] = "聚点"},
{["value"] = -369098748, ["type"] = 4},
{["lv"] = -308868536, ["offset"] = -100, ["type"] = 4},
{["lv"] = -308401664, ["offset"] = 12, ["type"] = 4},
{["lv"] = -308598012, ["offset"] = 24, ["type"] = 4},
}
qjnp = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},

}
qijiunb(QJNB)
end

if qi[12] then 
o=os.clock()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("76D;1;1000;1000::100", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("2.1", 16)
if gg.getResultCount()<1000 then
gg.toast("加速开启成功\n  共修改"..gg.getResultCount().."条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
elseif gg.getResultCount()>1000 then
gg.toast("加速开启成功\n  共修改1000条\n  耗时"..os.clock()-o.."秒")
gg.clearResults()
end end

if qi[13] then 
o=os.clock()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.71", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100000)
gg.editAll("9.1", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.73", 16, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100000)
gg.editAll("7.8", 16)
gg.toast("加速开启成功\n  耗时"..os.clock()-o.."秒")
end


if qi[14] then 
o=os.clock()
gg.clearList()
gg.toast("数据清除成功\n  耗时"..os.clock()-o.."秒")
end

if qi[15] then 
print("苏烟T服专用") 
os.exit() 
end end

qi =-1 end

while true do if gg.isVisible(true) then qi = 1 gg.setVisible(false) end if qi == 1 then QIJIU() end end 






 