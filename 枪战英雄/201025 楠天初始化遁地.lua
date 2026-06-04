---楠天最牛逼



function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败")else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function SearchWrite(Search, Write, Type)  gg.clearResults()  gg.setVisible(false)  gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end end end for i, v in ipairs(result) do if (v.isUseful) then  data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("搜索失败", false) return false end else gg.toast("搜索失败") return false end end
function js(address,flags,value) local jz={} jz[1]={} jz[1].address=address jz[1].flags=flags jz[1].value=value gg.setValues(jz) end
function jz(py,xl,xgsz) flags=xl value=xgsz so=gg.getRangesList(''..name..'')[1].start js(so+py,xl,xgsz) end



local PACKAGE=(gg.getTargetInfo(gg.getTargetPackage()).packageName);
if PACKAGE == "com.sy4399.zjqz" then
else
gg.alert("注意：\n您当前使用的是非4399版枪战英雄\n可能会出现功能无效等错误\n推荐去下载4399枪战英雄")
end




CSH=gg.alert("你确定开始修仙吗？修仙以后可能被凡人谩骂，你可以肆虐凡人。","开始修仙","","成为凡人")
if CSH == 3 then print("退出成功") os.exit() end
gg.setVisible(false)--收起

--加速
gg.clearResults()
gg.setRanges(4 | 1)
gg.searchNumber("1.0F;0.33333334327F::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() < 2 then
gg.toast("功法加载失败")
else
gg.searchNumber("1.0;0.33333334327", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
js = gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("正在加载功法")
end

--子弹穿墙
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("房子打扫没干净")
else
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
zdcq = gg.getResults(1)
gg.toast("正在打扫房子")
end

--Xa人物穿墙
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2097153.25;0.000001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.000001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
xacq = gg.getResults(10)
gg.toast("正在打扫练功房")

--穿山
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("16,384D;4,096D;32D:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
cs = gg.getResults(10)
gg.toast("请开启修仙之旅")



function HG()
menu = gg.choice({
'凡品功法',
'地品功法',
'天品功法',
'废品功法',
'成为凡人'},
666,hg)
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'地品秒杀功法',
'演员伤害功法',
'刀类范围功法',
'范围功法废除',
'远程刺刀功法',
'刺刀功法废除',
'枪范围功法',
'枪范围废除',
'6倍神速功法',
'人物穿墙功法',
'神速穿墙一键废除',
'透视功法',
'透视功法废除',
'超级自瞄功法'},
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
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
end
XGCK=-1
end



function B()
menu1 = gg.multiChoice({
'10倍遁地功法',
'12倍遁地功法',
'14倍遁地功法',
'15倍遁地功法',
'16倍遁地功法',
'17倍遁地功法',
'18倍遁地功法',
'20倍遁地功法',
'一件废除全部遁地功法'},
nil,'修仙界的神    楠天')
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
end
XGCK=-1
end



function C()
menu1 = gg.choice({
'跳高功法',
'跳高功法废除',
'踏空功法',
'踏空功法恢复',
'连跳功法',
'连跳功法废除',
'蹲下路飞神通',
'蹲下路飞废除'},
666,'')
if menu1 == 1 then c1() end
if menu1 == 2 then c2() end
if menu1 == 3 then c3() end
if menu1 == 4 then c4() end
if menu1 == 5 then c5() end
if menu1 == 6 then c6() end
if menu1 == 7 then c7() end
if menu1 == 8 then c8() end
XGCK=-1
end



function D()
menu1 = gg.multiChoice({
'喷子秒杀功法',
'改倍镜功法',
'人物天线功法',
'去除地皮功法',
'去除墙体功法',
'地图全部消失功法',
'修改声音功法(建议别开)',
'定点复活功法',
'定点功法废除',
'防踢看脸'},
nil,'')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d5() end
if menu1[5] == true then d4() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
end
XGCK=-1
end



function a1()
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{["value"] = 1128792064, ["type"] = 4},
{["lv"] = 1142292480, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
}
qmxg = {
{["value"] = 50, ["offset"] = -24, ["type"] = 4},
}
xqmnb(qmnb)
end



function a2()
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{["value"] = 1128792064, ["type"] = 4},
{["lv"] = 1142292480, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
}
qmxg = {
{["value"] = 3, ["offset"] = -24, ["type"] = 4},
}
xqmnb(qmnb)
end



function a3()
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{["value"] = 16384, ["type"] = 4},
{["lv"] = 4096, ["offset"] = 4, ["type"] = 4},
{["lv"] = 32, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = -1, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end



function a4()
qmnb = {
{["memory"] = 32},
{["name"] = "功法废除，元气大伤。"},
{["value"] = 16384, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
{["lv"] = 32, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 4096, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end



function a5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.5;0.80000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("功法学习成功")
end

function a6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("999;0.80000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.toast("功法已被废除")
end



function a7()
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{["value"] = 1128792064, ["type"] = 4},
{["lv"] = 1142292480, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
}
qmxg = {
{["value"] = 400, ["offset"] = -24, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.0e-6;360;3.141592741101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.14159274101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("功法学习成功")
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{["value"] = 981668463, ["type"] = 4},
{["lv"] = 12, ["offset"] = -116, ["type"] = 4},
}
qmxg = {
{["value"] = -666999, ["offset"] = -116, ["type"] = 4},
}
xqmnb(qmnb)
end



function a8()
qmnb = {
{["memory"] = 32},
{["name"] = "功法已被废除"},
{["value"] = 1128792064, ["type"] = 4},
{["lv"] = 1142292480, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = -24, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.0e-6;360;3.141592741101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.14159274101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("3.14159274101", gg.TYPE_FLOAT)
gg.toast("功法已被废除")
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "功法已被废除"},
{
["value"] = 981668463, ["type"] = 4},
{["lv"] = -666999, ["offset"] = -116, ["type"] = 4},
} 
qmxg = {{["value"] = 12, ["offset"] = -116, ["type"] = 4},
} 
xqmnb(qmnb)
end



function a9()
gg.clearResults()
for i,v in ipairs(js) do v.value = -0.63484 end
gg.setValues(js)
gg.toast("功法学习成功")
end



function a10()
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
end


function a11()
for i,v in ipairs(js) do v.value = 1 end
gg.setValues(js)
gg.toast("功法已废除")
for i,v in ipairs(xacq) do v.value = '0.000001' end
gg.setValues(xacq)
gg.toast("功法废除成功")
end



function a12()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("255D;515D;1,065,353,216D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_DWORD)
gg.toast("功法学习成功")
end



function a13()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("7,680;515;99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,065,353,216", gg.TYPE_DWORD)
gg.toast("功法已被废除")
end



function a14()
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{
["value"] = 1.7000000476837158, ["type"] = 16},
{["lv"] = 1.2000000476837158, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.03999999910593033, ["offset"] = 16, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = 60, ["type"] = 16},} 
qmxg = {
{["value"] = 999999, ["offset"] = 60, ["type"] = 16},
}
xqmnb(qmnb) 
qmnb = {
{["memory"] = 32},
{["name"] = "功法学习成功"},
{["value"] = 0.10000000149011612, ["type"] = 16},
{["lv"] = 3.0, ["offset"] = 60, ["type"] = 16},
{["lv"] = 300.0, ["offset"] = 140, ["type"] = 16},
} 
qmxg = {
{["value"] = -9989, ["offset"] = 140, ["type"] = 16},
}
xqmnb(qmnb) 
end


function b1()
for i,v in ipairs(js) do v.value = '-1.0345' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b2()
for i,v in ipairs(js) do v.value = '-1.213496' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b3()
for i,v in ipairs(js) do v.value = '-1.434934' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b4()
for i,v in ipairs(js) do v.value = '-1.51345' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b5()
for i,v in ipairs(js) do v.value = '-1.60345' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b6()
for i,v in ipairs(js) do v.value = '-1.70345' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b7()
for i,v in ipairs(js) do v.value = '-1.80345' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b8()
for i,v in ipairs(js) do v.value = '-2.0345' end
gg.setValues(js)
gg.toast("功法学习成功")
for i,v in ipairs(xacq) do v.value = '-9999' end
gg.setValues(xacq)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '-666999' end
gg.setValues(zdcq)
gg.toast("功法学习成功")
gg.sleep(3000)
for i,v in ipairs(cs) do v.value = '4095' end
gg.setValues(cs)
gg.toast("功法学习成功")
for i,v in ipairs(zdcq) do v.value = '12' end
gg.setValues(zdcq)
gg.toast("遁地功法学习成功")
end



function b9()
for i,v in ipairs(js) do v.value = '1' end
gg.setValues(js)
gg.toast("功法已被废除")
for i,v in ipairs(cs) do v.value = '4096' end
gg.setValues(cs)
gg.toast("功法已被废除")
for i,v in ipairs(xacq) do v.value = '0.000001' end
gg.setValues(xacq)
gg.toast("遁地功法已被废除")
end



function c1()
qmnb = {
{["memory"] = 4 | 1},
{["name"] = "跳高开启"},
{["value"] = 10.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -24, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = -32, ["type"] = 16},
}
qmxg = {
{["value"] = 8, ["offset"] = -32, ["type"] = 16},
}
xqmnb(qmnb)
end



function c2()
qmnb = {
{["memory"] = 4 | 1},
{["name"] = "跳高关闭"},
{["value"] = 10.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -24, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = -32, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = -32, ["type"] = 16},
}
xqmnb(qmnb)
end



function c3()
qmnb = {
{["memory"] = 32},
{["name"] = "无限踏空开启"},
{["value"] = 1.7000000476837158, ["type"] = 16},
{["lv"] = 1.2000000476837158, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.03999999910593033, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end



function c4()
qmnb = {
{["memory"] = 32},
{["name"] = "无限踏空恢复"},
{["value"] = 1.7000000476837158, ["type"] = 16},
{["lv"] = 1.2000000476837158, ["offset"] = 4, ["type"] = 16},
{["lv"] = 0.10000000149011612, ["offset"] = 12, ["type"] = 16},
{["lv"] = 9999.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 0.03999999910593033, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
end



function c5()
qmnb = {
{["memory"] = 32},
{["name"] = "连跳开启"},
{["value"] = 0.15000000596046448, ["type"] = 16},
{["lv"] = 0.03999999910593033, ["offset"] = 40, ["type"] = 16},
}
qmxg = {
{["value"] = 3.5, ["offset"] = 40, ["type"] = 16},
}
xqmnb(qmnb)
end



function c6()
qmnb = {
{["memory"] = 32},
{["name"] = "连跳关闭"},
{["value"] = 0.15000000596046448, ["type"] = 16},
{["lv"] = 3.5, ["offset"] = 40, ["type"] = 16},
}
qmxg = {
{["value"] = 0.03999999910593033, ["offset"] = 40, ["type"] = 16},
}
xqmnb(qmnb)
end



function c7()
qmnb = {
{["memory"] = 32},
{["name"] = "路飞开启成功"},
{["value"] = 0.15000000596046448, ["type"] = 16},
{["lv"] = 1.2000000476837158, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 2.4000000953674316, ["offset"] = 28, ["type"] = 16},
}
xqmnb(qmnb)
end



function c8()
qmnb = {
{["memory"] = 32},
{["name"] = "路飞关闭成功"},
{["value"] = 0.15000000596046448, ["type"] = 16},
{["lv"] = 2.4000000953674316, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 1.2000000476837158, ["offset"] = 28, ["type"] = 16},
}
xqmnb(qmnb)
end



function d1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('2~20D;1F~10000F;44160000h;43480000h::28', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2~20', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('30', gg.TYPE_DWORD)
gg.toast('功法学习成功')
end

function d2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("-1;1,036,831,949::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",gg.TYPE_DWORD,FREEZE_NORMAL)
gg.toast("功法学习成功") 
end



function d3()
gg.clearResults()
gg.setRanges(4 | 1)
gg.searchNumber("1.5725~1.5745", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5725~1.5745",16 , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("999999", 16)
gg.toast("功法学习成功")
end



function d4()
qmnb = {
{["memory"] = 4},
{["name"] = "功法学习成功"},
{["value"] = -1.1920928955078125E-7, ["type"] = 16},
{["lv"] = -1.0000001192092896, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 1.0000001192092896, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function d5()
qmnb = {
{["memory"] = 4 | 1},
{["name"] = "功法学习成功"},
{["value"] = -1.1920928955078125E-7, ["type"] = 16},
{["lv"] = 1.0000001192092896, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -4, ["type"] = 16},
}
xqmnb(qmnb)
end


function d6()
gg.clearResults()
gg.setRanges(131072 | 1048576)
gg.searchNumber("331,810D;102,435D:9", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("102435", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", 4)
gg.toast("功法学习成功")
end



function d7()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.0F;0.0F;180.0F;0.5F;360.0F;22,050.0F;10.0F:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("功法学习成功")
end



function d8()
gg.clearResults()
gg.setRanges(4 | 1)
gg.searchNumber('0.0001;4', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('-98765', gg.TYPE_FLOAT)
gg.toast('功法学习成功')
end



function d9()
gg.clearResults()
gg.setRanges(4 | 1)
gg.searchNumber('-98765', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.0001', gg.TYPE_FLOAT)
gg.toast('功法已被废除')
end



function d10()
gg.clearResults() 
gg.setRanges(2) 
gg.searchNumber("0;1;1~20;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(100) 
gg.editAll("0", gg.TYPE_DWORD) 
gg.toast("防踢开启成功 看脸自测") 
gg.clearResults() 
end



--退出数值恢复
function Exit()
TX=gg.alert("您确定再次成为凡人吗？","我心意已决","","我再想想")
if TX == 1 then
--数值恢复
for i,v in ipairs(js) do v.value = '-0.12345' end
gg.setValues(js)
gg.clearResults()
gg.setRanges(4 | 1)
gg.searchNumber("-0.12345", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.12345;-0.12345::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(20)
gg.editAll("1;0.33333334327",gg.TYPE_FLOAT)
gg.clearResults()
os.exit()
end
end


gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-0.0001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-0.18528", gg.TYPE_DOUBLE)
hg='楠天牛逼，楠天QQ1279467156，楠天QQ群1050227347'
while(true)do if gg.isVisible(true) then XGCK=1 gg.setVisible(false) end gg.clearResults() if XGCK==1 then HG() end end