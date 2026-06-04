
--免费分享二改偷功能死全家

function yeqiu(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n found"..#data.."data\n Start offset") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n"..Name.."success\n Altogether"..#t.."data") else gg.toast("\n"..Name.."开启成功") return false end else gg.toast("\n"..Name.."开启成功") return false end end

--xs写法配置



function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启成功") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启成功") end end end end

--指针写法配置

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(""..yeqiu.."修改成功,共修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast(""..yeqiu.."搜索0条数据,修改失败", false) return false end else gg.toast(""..yeqiu.."搜索0条数据,修改失败") return false end end         

---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function Main()
menu = gg.choice({
'A.1内存专区',
'B.2加速专区',
'C.3载具专区',
'D.4娱乐专区',
'退出脚本'},
2018,'作者 叶秋')--没有违规，只用于反馈，kjdao.cc
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end

---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光


function A()
menu1 = gg.multiChoice({
'1.平板视角(全局)',
'2.超级跳远(单局)',
'3.聚点防抖(全局)',
'4.180范围(单局)',
'5.午后自瞄(全局)',
'6.透视870(全局)',
'7.人物天线(全局)',
'8.上帝视角(全局)',
'9.除草除雾(全局)',
'10.16.9比例(全局)',
'11.人物地线(全局)',
'12.秒开倍镜（全局）',
'13.圈圈透视（全局）',
'14.站立路飞（全局）',
'15.蹲下路飞（全局）',
'16.趴下路飞（全局）',
'返回上一页'},
nil,'作者:叶秋')
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
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end

---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function a1()
qmnb = {
{["memory"] = 16384},
{["name"] = "平板视角开启成功"},
{["value"] = -1.9977508613864713E28, ["type"] = 16},
{["lv"] = -5.110448199248631E27, ["offset"] = 8, ["type"] = 16},
{["lv"] = -9.399243231803128E20, ["offset"] = 16, ["type"] = 16},
{["lv"] = -7.160426530231652E24, ["offset"] = 24, ["type"] = 16},
{["lv"] = 0.0010000000474974513, ["offset"] = 32, ["type"] = 16},
{["lv"] = 360.0, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 250, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
end



function a2()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.0;2,048.0;300.0;0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.05000000075", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("蛇皮跳跃开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("跳远开启成功")
qmnb = {
{["memory"] = 32},
{["name"] = "翻倍跳远"},
{["value"] = 479.5, ["type"] = 16},
{["lv"] = 479.5, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 1200, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 32},
{["name"] = "翻倍跳远"},
{["value"] = 640.0, ["type"] = 16},
{["lv"] = 479.5, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 1200, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)
end



function a3()

yeqiu = "手臂防抖"



local tb1 = {{-2.8111605430681328E28,-12}, {-3.7444097189855772E28,-4}, {-1.114450155758339E28,0}, {-7.792117266637326E22,8}, {-8.264141907971833E21,12}, } 	
local tb2 = {{0,0}, } 	
local dataType = 16
gg.setRanges(16384) 
 SearchWrite(tb1,tb2, dataType)
 
  yeqiu ="倍镜防抖"
 
 
local tb1 = {{9.4039548065783E-37,-44}, {1.4973804553490982E-37,-40}, {1.140839307992108E-33,-36}, {-1.6888269055967793E26,-32}, {4.529127574026315E-37,-28}, {4.529009192332049E-37,-24}, {-1.227817807561899E23,-20}, {-1.114450155758339E28,0}, } 	
local tb2 = {{0,0}, } 	
local dataType = 16
gg.setRanges(16384) 
 SearchWrite(tb1,tb2, dataType)
 
 yeqiu ="聚点"
local tb1 = {{-5.646220498909621E23,-8}, {-2.976699913394245E20,-4}, {-2.975618345796234E20,0}, {-1.0680274042851373E28,4}, {-8.736648209286486E22,8}, } 	
local tb2 = {{0,0}, } 	
local dataType = 16
gg.setRanges(16384) 
 SearchWrite(tb1,tb2, dataType)
end



function a4()
  qmnb = {
    {["memory"] = 32},
    {["name"] = "180w范围开启成功"},
    {["value"] = 9.201618194580078, ["type"] = 16},
    {["lv"] = 23.0, ["offset"] = 24, ["type"] = 16},
    {["lv"] = 23.0, ["offset"] = 28, ["type"] = 16},
    {["lv"] = 28.0, ["offset"] = 32, ["type"] = 16},
  }
  qmxg = {
    {["value"] = 180, ["offset"] = 24, ["type"] = 16},
    {["value"] = 180, ["offset"] = 28, ["type"] = 16},
    {["value"] = 180, ["offset"] = 32, ["type"] = 16},
  }
  xqmnb(qmnb)
end





function a5()


Name = "自瞄1"
local Nc = 16392
local Lx = 4
local Sz1 = {{1320176194, 0},{953267991, -84},{1135869952, -96}}
local Sz2 = {{1259902591, -84}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{-308344315, 0},{-309323264, 4},{-476053504, 8}}
local Sz2 = {{-476053503, 8}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{-285787648, 0},{-286131696, 8},{-290108736, 12}}
local Sz2 = {{0, 8}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{-301258224, 0},{167772309, -8}}
local Sz2 = {{0, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 16
local Sz1 = {{64.50088500977, 0}}
local Sz2 = {{0, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{-309478912, 0},{-289924415, -4}}
local Sz2 = {{0, 0},{0, -4}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{1324382787, 0},{-305325242, -4}}
local Sz2 = {{0, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{-443285244, 0},{-509587455, -4}}
local Sz2 = {{-509587454, -4}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 16
local Sz1 = {{2015175168.0, 0}}
local Sz2 = {{0, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 16
local Sz1 = {{2.06214214e-19, 0}}
local Sz2 = {{0, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{366477876, 0},{167772165, 8}}
local Sz2 = {{-309523964, 8}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 4
local Sz1 = {{-309523965, 0},{-476045312, -4}}
local Sz2 = {{0, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


qmnb = {
{["memory"] = 16384},
{["name"] = "午后"},
{["value"] = -1.228259250397374E23, ["type"] = 16},
{["lv"] = -1.2286282753508407E23, ["offset"] = 4, ["type"] = 16},
{["lv"] = -1.2289973003043074E23, ["offset"] = 8, ["type"] = 16},
{["lv"] = -1.2297352601392483E23, ["offset"] = 12, ["type"] = 16},
{["lv"] = -5.646220498909621E23, ["offset"] = 48, ["type"] = 16},
{["lv"] = -2.975618345796234E20, ["offset"] = 56, ["type"] = 16},
{["lv"] = -3.8369227673315867E21, ["offset"] = 68, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 56, ["type"] = 16},
}
xqmnb(qmnb)
end



function a6()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("4.75925997e21;7.14662217e-44;1.39125187e-19;7.17464814e-43;7.23032914e-15;2.37548875809;3.53508353e-29;2.25000047684;2.0;1.66230384e-19;3.58732407e-43;2.75509291e-40;3.75000047684",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("120",gg.TYPE_FLOAT)
  gg.toast("马赛克开启成功")
  
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("2.43825933e-43;1.39125252e-19;3.22298647e-44;1.12020353e-19;3.76158192e-37;2.0;-127.0;0.24022650719;0.69314718246;0.00999999978",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("120",gg.TYPE_FLOAT)
  gg.toast("透明化开启成功")
 


	 
	qmnb = {
{["memory"] = 1048576},
{["name"] = "人物白色开启成功"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1194347288, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 9, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 1048576},
{["name"] = "载具绿色开始成功"},
{["value"] = 8200, ["type"] = 4},
{["lv"] = 1194347293, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end



function a7()

qmnb = {
{["memory"] = 32},
{["name"] = "天线"},
{["value"] = -100.91194152832031, ["type"] = 16},
{["lv"] = 90.0, ["offset"] = -8, ["type"] = 16},
{["lv"] = 87.27782440185547, ["offset"] = -4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = 8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.96875, ["offset"] = -4, ["type"] = 16},
{["value"] = 1.96875, ["offset"] = -8, ["type"] = 16},
{["value"] = 999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end



function a8()
yeqiu = "上帝视角"
local tb1 = {{220.0,0}, {25.0,8}, {178.0,24}, {6.852349490548355E-41,32}, } 	
local tb2 = {{800,0}, } 	
local dataType = 16
gg.setRanges(32) 
 SearchWrite(tb1,tb2, dataType)
end



function a9()


gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,590,068,740,425,724,723", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("4,590,068,742,429,853,100", gg.TYPE_FLOAT)
gg.toast("全图除草开启成功")

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



function a10()
  yeqiu = "16.9"
local tb1 = {{3.1415927410125732,-8}, {0.0010000000474974513,-4}, {360.0,0}, {4.523812953418578E-37,4}, {4.452007281198015E-37,8}, } 	
local tb2 = {{330,0}, } 	
local dataType = 16
gg.setRanges(16384) 
 SearchWrite(tb1,tb2, dataType)
end


function a11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0302718678190104E-8;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-9.73725", gg.TYPE_FLOAT)
gg.toast("地线开启成功")
end


function a12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.37999999523;6.16031837463;6.1603140831", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("秒开倍镜开启成功")
end


function a13()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("324,009,984;277,807,104;167,772,163;-442,818,552;-509,607,928", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("324,009,984", 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("324,009,985", 4)
gg.toast("圈圈透视开启成功")
end

function a14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614845276;0.53457546234;4.1359036e-25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.38614845276", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("200", gg.TYPE_FLOAT)
gg.toast("站立路飞开启成功")
end


function a15()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.1359036e-25;9.00542354584;-17.21075057983", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.00542354584", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("180", gg.TYPE_FLOAT)
gg.toast("蹲下虚体")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8.9229369e22;1.4647912e13;1.6155873e-27;9.49029254913::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9.49029254913", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("蹲下路飞开启成功")


end


function a16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614273071;0.53446769714;-3.42663764954;1.7763571e-15:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.42663764954", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-165", gg.TYPE_FLOAT)
gg.toast("趴下路飞开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38614273071;0.53446769714;-165;1.7763571e-15:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.53446769714", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("155", gg.TYPE_FLOAT)
gg.toast("趴下抬上开启成功")
end


---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function B()
menu1 = gg.multiChoice({
'1.跑毒加速',
'2.跑毒关闭',
'3.飞腿加速',
'4.跳伞加速',
'5.跳伞关闭',
'6.移速开启',
'7.移速关闭',
'8.二倍移速',
'9.移速关闭',
'10.穿墙移速',
'11.移速关闭',
'返回上一页'},
nil,'kjdao.cc')
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
if menu1[10] == true then b10() end
if menu1[11] == true then b11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end

---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function b1()


end



function b2()


end



function b3()

qmnb = {
{["memory"] = 32},
{["name"] = "飞腿加速开启成功"},
{["value"] = 4453159312402940160, ["type"] = 32},
{["lv"] = 1099511627776, ["offset"] = -4, ["type"] = 32},
}
qmxg = {
{["value"] = 9223372036854775807, ["offset"] = 0, ["type"] = 32},

}
xqmnb(qmnb)


gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("14860", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("14860", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("", gg.TYPE_FLOAT)


gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("13684", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("13684", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("", gg.TYPE_FLOAT)


gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("13911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("13911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("", gg.TYPE_FLOAT)

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("13680", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("13680", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("", gg.TYPE_FLOAT)



qmnb = {
{["memory"] = 32},
{["name"] = "飞腿加速关闭成功"},
{["value"] = 9223372036854775807, ["type"] = 32},
{["lv"] = -4294967296, ["offset"] = -4, ["type"] = 32},
}
qmxg = {
{["value"] = 4453159312402940160, ["offset"] = 0, ["type"] = 32},

}
xqmnb(qmnb)

end



function b4()
Name = "加速开启成功"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 32
local Lx = 32
local Sz1 = {{4525216907414147695, 0}}
local Sz2 = {{4525216907475015434, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408576460390, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 32
local Lx = 16
local Sz1 = {{10.0, 0},{46.0, 4}}
local Sz2 = {{99999, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744149883614555, 0}}
local Sz2 = {{-1296744153870237696, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313802431360, 0}}
local Sz2 = {{-1505254313804169216, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408728725571, 0}}
local Sz2 = {{-1328550408581493555, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 32
local Lx = 16
local Sz1 = {{10.0, 0},{46.0, 4}}
local Sz2 = {{99999, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

end



function b5()
Name = "加速关闭成功"
local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744153870237696, 0}}
local Sz2 = {{-1296744149883614555, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 32
local Lx = 32
local Sz1 = {{4525216907475015434, 0}}
local Sz2 = {{4525216907414147695, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408576460390, 0}}
local Sz2 = {{-1328550408728725571, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1296744153870237696, 0}}
local Sz2 = {{-1296744149883614555, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)


local Nc = 16392
local Lx = 32
local Sz1 = {{-1505254313804169216, 0}}
local Sz2 = {{-1505254313802431360, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

local Nc = 16392
local Lx = 32
local Sz1 = {{-1328550408581493555, 0}}
local Sz2 = {{-1328550408728725571, 0}}
yeqiu(Nc, Lx, Sz1, Sz2)

end



function b6()
yeqiu = "移速"
local tb1 = {{-2.793752011265682E28,-8}, {-3.7444097189855772E28,-4}, {-1.8638977064931013E-20,0}, {-1.114450155758339E28,4}, {-9.399215084305457E20,8}, } 	
local tb2 = {{0,0}, } 	
local dataType = 16
gg.setRanges(16384) 
 SearchWrite(tb1,tb2, dataType)

end



function b7()

yeqiu = "移速"
local tb1 = {{-2.793752011265682E28,-8}, {-3.7444097189855772E28,-4}, {0.0,0}, {-1.114450155758339E28,4}, {-9.399215084305457E20,8}, } 	
local tb2 = {{-1.86389771e-20,0}, } 	
local dataType = 16
gg.setRanges(16384) 
 SearchWrite(tb1,tb2, dataType)
end



function b8()


end



function b9()



end



function b10()

gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("3.58732407e-43;0.10000000149;0.20000000298;3.60133705e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.58732407e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("纯移速已开启")
end



function b11()
gg.clearResults()
gg.setRanges (gg.REGION_ANONYMOUS) 
gg.searchNumber("9999;0.10000000149;0.20000000298;3.60133705e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("3.58732407e-43", gg.TYPE_FLOAT)
gg.toast("纯移速已关闭")

end




function C()
menu1 = gg.multiChoice({
'1.全车飞天',
'2.遁地飞天',
'3.摩托飞天',
'4.摩托浮空',
'5.摩托降落',
"6.轿车加速",
"7.吉普加速",
"8.蹦蹦加速",
"9.摩托加速",
'10.全车刹车',
'返回上一页'},
nil,'kjdao.cc')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end

---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function c1()
qmnb = {
{["memory"] = 32},
{["name"] = "全车飞天开启成功"},
{["value"] = -980, ["type"] = 16},
{["lv"] = 4.203895392974451E-45, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)

qmnb = {
{["memory"] = 32},
{["name"] = "全车飞天关闭成功"},
{["value"] = 99999, ["type"] = 16},
{["lv"] = 4.203895392974451E-45, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = -980, ["offset"] = 0, ["type"] = 16},

}
xqmnb(qmnb)

end



function c2()

gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-289961472;-498,794,348;-514,588,666;-318,404,055", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-289961472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0;-498,794,348;-514,588,666;-318,404,055", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-289961472", gg.TYPE_DWORD)
	 gg.toast("遁地飞天开启成功")
end





function c3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000.03866526", gg.TYPE_FLOAT)
gg.getResults(100)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10240", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10240", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10240", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000.03866526", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000.03866526", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.toast("摩托飞天开启成功")

end



function c4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100.03866526", gg.TYPE_FLOAT)
gg.toast("摩托浮空开启成功")

end



function c5()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("100.03866526", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100.03866526", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.toast("摩托降落开启成功")
end



function c6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.72727274895;0.34377467632;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("轿车加速开启成功")

end



function c7()




gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.647058857;0.30000001192::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("吉普加速开启成功")
end



function c8()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.69230771065;0.50021028519;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.69230771065;0.50021028519::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("蹦蹦加速开启成功")
end



function c9()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.37209302187;0.69999998808;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.37209302187;0.69999998808::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("摩托加速开启成功")
end



function c10()

qmnb = {
{["memory"] = 16},
{["name"] = "全车秒刹车成功"},
{["value"] = 20.0, ["type"] = 16},
{["lv"] = 0.7070000171661377, ["offset"] = -4, ["type"] = 16},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function D()
menu1 = gg.multiChoice({
"1.全车超级加速",
"2.吉普超级加速",
"3.蹦蹦运气穿墙",
"4.吉普大跳飞天",
"5.吉普大跳关闭",
"6.蹦蹦大跳飞天",
"7.蹦蹦大跳关闭",
"8.装甲大跳飞天",
"9.装甲大跳关闭",
"10.轿车大跳飞天",
"11.轿车大跳关闭",
"返回上一页",
}, nil,"载具功能页面")
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
if menu1[12] == true then HOME() end
end
GLWW=-1
end

---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function d1()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("50;5;0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-0.23", gg.TYPE_FLOAT)
gg.toast("全车加速开启成功")
end



function d2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("吉普加速开启成功")

end



function d3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("982622900;1956496814;1112014847;1103626239", gg.TYPE_DWORD, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
gg.searchNumber("1956496814", gg.TYPE_DWORD, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1091567616", gg.TYPE_DWORD)
gg.toast("蹦蹦穿墙")
end



function d4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00055555557;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00055555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00455555557",gg.TYPE_FLOAT)
gg.toast("吉普大跳飞天开启成功")
end



function d5()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00455555557", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00055555557",gg.TYPE_FLOAT)
gg.toast("吉普大跳飞天关闭成功")

end



function d6()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.1",gg.TYPE_FLOAT)
gg.toast("蹦蹦大跳飞天开启成功")
end



function d7()
QCFZNP()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.04111111114", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00111111114",gg.TYPE_FLOAT)
gg.toast("蹦蹦大跳飞天关闭成功")

end



function d8()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00016666666;;49.9999961853", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00016666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00416666666",gg.TYPE_FLOAT)
gg.toast("蟑螂车大跳飞天开启成功")

end



function d9()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.00416666666", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.00016666666",gg.TYPE_FLOAT)
gg.toast("蟑螂车大跳飞天关闭成功")


end



function d10()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.00100000005;49.9999961853;24.99999809265::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.06100000005",gg.TYPE_FLOAT)
gg.toast("轿车大跳飞天开启成功")

end



function d11()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.06100000005",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00100000005",gg.TYPE_FLOAT)
gg.toast("轿车大跳飞天关闭成功")
end



---想偷东西对吧？
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---偷了你妈必死，全家死光

function Exit()
print("叶秋手写，二改死全家")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '######'
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



