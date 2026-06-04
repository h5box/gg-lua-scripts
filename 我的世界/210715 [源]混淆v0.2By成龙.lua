--搬源必须声明技术支持为成龙
--By--成龙 date:2021.7.14
--support--殇璃
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.alert(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.alert(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.alert(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.alert(qmnb[2]["name"] .. "开启失败") end end end end
gg.setVisible(false) SL=true sL="开启" ms="开启" tk="开启" TK=true
function main()
aa=gg.choice({
"1.23创背[ "..ms.." ]",
"1.23杀戮[ "..sL.." ]",
"1.23踏空[  "..tk.."  ]",
"退出辅助[  Exit  ]",
},0,"混淆1.23 By 成龙 and 殇璃\n交流群:854066799")
if aa==1 then cb() end 
if aa==2 then if SL==true then  SL=false sL="关闭" slon() 
else
if SL==false then  SL=true sL="开启" sloff() end
end
end
if aa==3 then if TK==true then TK=false tk="关闭" jump()
else
if TK==false then TK=true tk="开启" jump2() end
end
end
if aa==4 then
gg.setVisible(true)
os.exit(print("混淆 /- By 成龙 and 殇璃\nExit."))
end
end
function cb()
CB=gg.prompt({
"输入你要改的模式\n(By 殇璃)"}, {"(0生存 1创造 2冒险 不可随便输入)"})
if CB==nil or CB=="" then os.exit(gg.alert("错误")) end 
if CB[1]=="0" then ms="生存" end 
if CB[1]=="1" then ms="创造" end
if CB[1]=="2" then ms="冒险" end
qmnb = {
{["memory"] = 4},
{["name"] = "创背"},
{["value"] = -1113550802, ["type"] = 4},
{["lv"] = 65793, ["offset"] = -1576, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -780, ["type"] = 4},
}
qmxg = {
{["value"] = CB[1], ["offset"] = -2040, ["type"] = 4},
}
xqmnb(qmnb)
gg.alert("当前模式:"..ms)
end
function slon()
qmnb={
{memory = 4},
{name ="杀戮"},
{value = "540672", type = "6"},
{lv = "98312", offset = "0x4", type = "6"},
}
qmxg={
{value = "8684920", offset = "0x4", type = "6"}
}
xqmnb(qmnb)
gg.alert("Kill aura: on")
end
function sloff()
qmnb={
{memory = 4},
{name ="杀戮"},
{value = "540672", type = "6"},
{lv = "8486920", offset = "0x4", type = "6"},
}
qmxg={
{value = "98312", offset = "0x4", type = "6"}
}
xqmnb(qmnb)
gg.alert("Kill aura: off")
end
function jump()
gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("??????F8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("??????F8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(10000)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.3510607e-38}})
end
gg.clearResults()
gg.alert("Air Jump: on")
end
function jump2()
gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("??????F8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
	 gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("2.3510608e-38", gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("Air Jump: off")
end
function qwert() while true do if gg.isVisible(true) then gg.setVisible(false) gg.setRanges(16) gg.clearResults() main() gg.setVisible(false) end end end qwert()