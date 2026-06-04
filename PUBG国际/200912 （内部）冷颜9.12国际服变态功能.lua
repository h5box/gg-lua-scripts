function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, freeze = true, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
-----孤日批---配置↑↑↑勿修改，调用方法   xqmnb(qmnb)
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end
function Main()
  menu = gg.choice({
   "透视功能",
   "上色功能",
   "变态功能",
   "防封专区",
   "退出脚本",
 }, nil, "温馨提示:选择自己机型的透色即可\n落地开")
 if menu == 1 then a() end
 if menu == 2 then b() end
 if menu == 3 then c() end
 if menu == 4 then d() end
 if menu == 5 then tc() end 
 menu = -1
 end
function a()
  menu = gg.multiChoice({
"835透视",
"660透视",
"845透视",
"855透视",
"865透视",
"652透视",
"970透视",
"625透视",
"980透视",
"675透视",
"物品透视",
"返回主页"
  }, nil, "温馨提示:落地开透色")
  if menu == nil then else
  if menu[1] == true then a1() end
  if menu[2] == true then a2() end
  if menu[3] == true then a3() end
  if menu[4] == true then a4() end
  if menu[5] == true then a5() end
  if menu[6] == true then a6() end
  if menu[7] == true then a7() end
  if menu[8] == true then a8() end
  if menu[9] == true then a9() end
  if menu[10] == true then a10() end
  if menu[11] == true then a11() end
  if menu[12] == true then Main() end 
  end
  menu = -1
end


function a1()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("5.1650996e21F;5.23888883e21F;-5.56955884e-40F:605", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.75000095367F;6.05053825e21F;-2.57740266e-39F:141", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("透视成功")
end 

function a2()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("4.7408166e21;4.72236648e21;4.74081492e21;4.81460302e21;2.0:89",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("50",gg.TYPE_FLOAT)
gg.toast("骁龙660马赛克开启成功")
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("1.39125666e-19;1.1202056e-19;2.0;0.24022650719;0.69314718246:93", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("50",gg.TYPE_FLOAT)
gg.toast("骁龙660马赛克开启成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125653e-19;2.0;1.66231134e-19:9",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("马赛克开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.1202056e-19;3.76158192e-37;2.0:109", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("60",gg.TYPE_FLOAT)
gg.toast("透明化开启成功")
end

function a4()
Name = "流畅透视" 
gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-1.6815581571897805E-44, 0}, 
{4.925287423079891E21, -28}, 
{4.906834486556694E21, -4},
 }
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-2.5774194758203506E-39, 0}, 
{6.087445810522475E21, -20}, 
{6.105893117546138E21, -12},
{5.626278334579643E21, -4}, 
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
end

  

function a5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("9.76354705e-41;4.92528123e21;2;1.66230358e-19;1.8425141e-39;4.72237774e21;1.74488844e-39;3.75000238419", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.83305652e21;2.88667484e-43;1.39125343e-19;2.52233724e-44;1.12020508e-19;3.76158192e-37;0.0;2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("865透视")
end



 
function a6()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("4.7408166e21;-5.5695588e-40;2.0",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(14)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("马赛克")
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("1.3912568e-19;1.1202057e-19;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("透明化")
end

function a7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('112;-1,951,875,776;-1,389,575,936;-1,864,298,348;-1,162,341,632:685',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('112',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('8',gg.TYPE_DWORD)
gg.toast("开启成功")
end


function a8()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("5.1650996e21F;5.23888883e21F;-5.56955884e-40F:605", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.56955884e-40", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.75000095367F;6.05053825e21F;-2.57740266e-39F:141", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-2.57740266e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll("5444",gg.TYPE_FLOAT)
gg.toast("透视成功")
end 



  function a9()
  gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("112;256;128;2848;352;32;384;16;2848;336;16;272;332;352;368;384;388;392;396;400;404;468;784;734,003,200;64;16;4095;4095;4095;4095;4095;112:6477", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100000)
     gg.editAll("4", gg.TYPE_DWORD)
	 gg.toast("980透视开启成功")
	 gg.alert("第一次开启闪的话请切到桌面或后台重进游戏，以后就都不会闪了哈")
end
	 
	 
	 function a10()
	  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.39125666e-19F;3.9236357e-44F;1.1202056e-19F;3.76158192e-37F;2.0F;-1.0F;1.0F;-127.0F;0.24022650719F;0.69314718246F;0.00999999978F",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT )
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.40491684e21F;1.33123354e-43F;1.39125653e-19F;2.0F;1.66231134e-19F;9.21942286e-41F;7.23035964e-15F;2.37549734116F;4.40284136e-29F;2.25000905991F;3.58159416e-39F;1.66433004e10F",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("120",gg.TYPE_FLOAT )
gg.clearResults()
gg.toast("675透视开启成功")
end


function a11()
    Name = "物品透视" 
gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-7.006492321624085E-45, 0}, 
{4.759266726416505E21, -52}, 
{5.568031422025374E-40, -48}, 
{1.107830132135128E-39, -32},
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)

gg.setRanges(1048576)
local dataType = 16
local tb1 = {
{-3.128393216411297E-39, 0}, 
{5.294235815352964E21, -28}, 
{4.980641729049856E21, -20}, 
{4.888404630981587E21, -4},
}
local tb2 = {{5444, 0}, }
SearchWrite(tb1, tb2, dataType)
end



function b()
  menu = gg.multiChoice({
    "845蓝色（流畅）",
    "845绿色（流畅）",
    "855青色（流畅) ",
    "855绿色（流畅) ",
    "865黄色（流畅）",
    "652绿色 (流畅) ",
    "835蓝色 (流畅) ",
    "625红色 (流畅) ",
    "660黄色 (流畅) ",
    "660粉色 (流畅) ",
    "970红色 (流畅) ",
    "980绿色 (流畅) ",
    "675黄色 (流畅) ",
    "车辆上色 (流畅) ",
    "返回主页"
  }, nil, "温馨提示:选择自己的机型\n落地开即可")
  if menu == nil then else
  if menu[1] == true then b1() end
  if menu[2] == true then b2() end
  if menu[3] == true then b3() end
  if menu[4] == true then b4() end
  if menu[5] == true then b5() end
  if menu[6] == true then b6() end
  if menu[7] == true then b7() end
  if menu[8] == true then b8() end
  if menu[9] == true then b9() end
  if menu[10] == true then b10() end
  if menu[11] == true then b11() end
  if menu[12] == true then b12() end
  if menu[13] == true then b13() end
  if menu[14] == true then b14() end
  if menu[15] == true then Main() end 
  end
  menu = -1
end


function b1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end
   

function b2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8201", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7",gg.TYPE_DWORD)
gg.toast("绿色开启成功")
   end
 

function b3()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0A8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("8198", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0B0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("8199", gg.TYPE_DWORD)
gg.toast("黄色成功")
end


function b4()
Name = "流畅绿色" 
gg.setRanges(1048576)
local dataType = 4
local tb1 = {
{8201, 0}, 
{1661173789, -28}, 
{1661239325, -12},
{1194344481, -4},
 }
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
end

  function b5()
	 gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,194,347,012;8,196;1,194,347,015;8,199;1,194,344,477;8,200;1,194,380,062;524,292", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.toast("865黄色开启成功")
end


function b6()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("-1.4693749e-39;2.7550649e-40;2.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(15)
gg.editAll("40",gg.TYPE_FLOAT)
gg.toast("绿色成功")
end


function b7()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("835蓝色")
  end


function b8()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,075,316,740", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_DWORD)
gg.toast("625红色")
end


function b9()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("660黄色")
  end

function b10()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("660粉色")
  end


function b11()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('16D;32D;40D::17',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('32',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('34',gg.TYPE_DWORD)
gg.toast("红色开启成功")
end

function b12()
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



function b13()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,669,890,055D;290,525,227D;1,669,496,837D;8,200D;1,194,380,094D;4D;-2,144,337,912D;671,285,255D",gg.TYPE_DWORD, false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200",gg.TYPE_DWORD, false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("6",gg.TYPE_DWORD )
gg.toast("675黄色开启成功")
end

function b14()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {
{8200, 0}, 
{1080033310, -12}, 
{2031640, -8},
{1080033304, -4}, 
}
local tb2 = {{7, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("车辆红色开启成功")
end


function c()
  menu = gg.multiChoice({
   "车辆加速(上车开启)",
   "磁性自瞄(大厅开启)",
   "聚点无后(大厅开启)",
   "全枪防抖(大厅开启)",
   "盒子挑战(落地开启)",
   "扩大视角(落地开启)",
   "全局天线(大厅开启)",
   "天黑除草(落地开启)",
   "一秒落地(大厅开启)",
   "全局范围(落地开启)",
   "瞬击伤害(配合加速有伤害)",
   "超级加速(落地开启)",
   "关闭加速(随意开启)",
   "全套美化(大厅开启)",
   "返回主页"
  }, nil, "温馨提示:按照要求开始哦")
  if menu == nil then else
  if menu[1] == true then c1() end
  if menu[2] == true then c2() end 
  if menu[3] == true then c3() end 
  if menu[4] == true then c4() end 
  if menu[5] == true then c5() end 
  if menu[6] == true then c6() end 
  if menu[7] == true then c7() end 
  if menu[8] == true then c8() end 
  if menu[9] == true then c9() end 
  if menu[10] == true then c10() end 
  if menu[11] == true then c11() end 
  if menu[12] == true then c12() end 
  if menu[13] == true then c13() end 
  if menu[14] == true then c14() end 
  if menu[15] == true then c15() end 
  if menu[16] == true then c16() end 
  if menu[17] == true then c17() end 
  if menu[18] == true then c18() end 
  if menu[19] == true then c19() end 
  if menu[20] == true then c20() end 
  if menu[21] == true then c21() end 
  if menu[22] == true then c22() end 
  if menu[23]  == true then Main() end
  end
  menu = -1
end

function c1()
gg.setRanges(16384)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-476053504", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("全屏自瞄开启成功")
end

  

function c2()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('495,979,008;-300,938,736;318,772,764:21',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-300,938,736',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('大厅无后')
end

function c3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("准心聚点已开启")
end

function c4()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.9244102e12;7.3983547e31::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('3.9244102e12', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.getResults(11)
  gg.editAll('3.9244102e11',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('全局手部防抖已开启')
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('7.0062189E22;3.9928675E24;3.9413961E12::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('7.0062189e22', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.getResults(111)
  gg.editAll('0',gg.TYPE_FLOAT)
  gg.clearResults()
  b3sj="0"
  gg.toast("全局镜防抖已开")

end
 
function c5()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("新版天线")
end


function c6()
gg.setRanges(gg.REGION_C_BSS)
  gg.clearResults()
  gg.searchNumber("869,711,765D;2;1::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-10", gg.TYPE_FLOAT)
  gg.clearResults()
  h7sj="1"
  gg.toast("人物贴边子弹穿墙已开启")
end



function c7()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,590,068,740,425,724,723",  gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("4,590,068,742,429,853,100",gg.TYPE_QWORD)
qmnb = {
{["memory"] = 16384},
{["name"] = "全图除草"},
{["value"] = -2123974960349970432, ["type"] = 32},
{["lv"] = -1.3620439e28, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast('全图除草已成功')
end
  

function c8()
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8200, 0}, {1074792717, -4}, {1194363663, 4}, {-2144333824, 12}, }
local tb2 = {{6, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("星空天空开启成功")
end

function c9()
Name = "秒下飞机"
  gg.setRanges(32)
  local dataType = 16
  local search = {
    {3000.0, 0},
    {5000.0, 4},
    {1024.0, 8},
    {89.0, 36},

  }
  local modify = {{200000, 0},{200000, 4},{200000, 8},}
  SearchWrite(search,modify,dataType,Name)
  gg.toast("快速跳伞开启成功")
end


function c10()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("-335,571,412;-298,284,466;-308,467,169:109", gg.TYPE_DWORD, false)
gg.searchNumber("-298,284,466;-308,467,169", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("大厅瞬击成功")
end


function c11()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("300", gg.TYPE_FLOAT)
  b1sj="300"
  gg.toast("范围伤害已开启")
end



function c12()
gg.setRanges(32)
local tb1 = {{tonumber("-1.68741369247"),tonumber("0")}, {tonumber("0.33067199588"),tonumber("12")}, } 	
local tb2 = {{tonumber("-999999999"),tonumber("0")}, } 	
local dataType = 16
SearchWrite(tb1,tb2, dataType)
gg.toast("地线开启")
Name = "地线1" 
gg.setRanges(32)
local dataType = 16
local search = {{0.0076481252908706665, 0},{-1.6874136924743652, 4},}
local modify = {{-999999, 4},}
SearchWrite(search,modify,dataType,Name)
Name = "地线2" 
gg.setRanges(32)
local dataType = 16
local search = {{-9.5367431640625E-6, 0},{-1.6874103546142578, 16},}
local modify = {{-999999, 16},}
SearchWrite(search,modify,dataType,Name)
Name = "地线3" 
gg.setRanges(32)
local dataType = 16
local search = {{0.6899417042732239, 0},{0.7238648533821106, 4},{-1.6874098777770996, 8},}
local modify = {{-999999, 8},}
SearchWrite(search,modify,dataType,Name)
Name = "地线4" 
gg.setRanges(32)
local dataType = 16
local search = {{1.0302718678190104E-8, 0},{-0.0, 104},}
local modify = {{-9.73725, 104},}
SearchWrite(search,modify,dataType,Name)
gg.toast("地线开启成功")
end

function c13()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("-300,938,736;318,767,105;228,526,593;318,772,440::117", gg.TYPE_DWORD, false)
gg.searchNumber("-300,938,736", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("射速开启")
end


function c14()
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("80.0F;60.0F;5.0F;200.0F;20,000.0F", gg.TYPE_FLOAT) 
gg.searchNumber("200", gg.TYPE_FLOAT) 
gg.getResults(200) 
gg.editAll("285", gg.TYPE_FLOAT) 
gg.toast("小范围拾取开启成功")
end

function c15()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.37999999523F;1.0F:6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.37999999523", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(55)
  gg.editAll("-9", gg.TYPE_FLOAT)
  g13sj="1"
  gg.toast("秒开倍镜已开启")
end




function c16()
  gg.setRanges(32)
  local dataType = 16
  local search = {{220.0, 0},{25.0, 8},{178.0, 24},{15.0, 28},{100.0, 36},{10.0, 40},}
  local modify = {{800, 0},}
  SearchWrite(search,modify,dataType,Name)
  gg.toast("上帝视角开启成功")
end


function c17()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("人物微速开启成功")
end


function c18()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end
  
  
function c19()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("96.63009643555F;1.0F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9990)
  gg.editAll("2", gg.TYPE_FLOAT)
  f1sj="2"
  gg.toast("巨人已开启")
end


function c20()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.1400000006;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1400000006", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.5", gg.TYPE_FLOAT)
gg.toast("地图变暗成功")
  end

function c21()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("脖子天线")
end

function c22()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("14.79005432129",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(30)
  gg.editAll("99999",gg.TYPE_FLOAT)
  gg.toast("盒子天线开启成功")
end



function d()
  menu = gg.multiChoice({
   "防止十年（大厅开启）",
   "防止追封（大厅开启）",
   "返回主页"
  }, nil, "温馨提示:记得隐藏23旁路选择没有，按照要求开始哦")
  if menu == nil then else
  if menu[1] == true then d1() end
  if menu[2] == true then d2() end
  if menu[3]  == true then Main() end
  end
  menu = -1
end




function d1()
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408;808923191::8",gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885",gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("909391408",gg.TYPE_DWORD)
    gg.getResults(999)
    gg.editAll("1089886885",gg.TYPE_DWORD)
gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2062", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(10000)
    sl = gg.getResultCount()
    for _FORV_3_ = tonumber("1"), sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_DWORD,
          freeze = true,
          value = tonumber("0")
        }
      })
      end
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,065,336,439D;1,065,353,216D;1,074,790,406D;1,073,741,824D;1,669,365,766D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("内存全防已成功")
	 gg.clearResults()
end

function d2()
gg.clearResults()
 gg.setRanges(32) 
 gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1.5584387e28', 16, false, gg.SIGN_EQUAL, 0, -1) 
  gg.getResults(100) 
 gg.editAll('0', 16) gg.toast('防追封开启成功')
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
end

function tc() 
print("冷颜变态功能 好用记得加群反馈喔")
os.exit() 
end
while true do 
  if gg.isVisible(true) then
    menu = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if menu == 1 then
 Main()
  end
end 

