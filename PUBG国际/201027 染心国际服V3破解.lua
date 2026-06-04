function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end 

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end


-----------------------------------------------------------------------------------------

function yiyz_yiyz_Main()
menu = gg.choice({
'透视功能✔️',
'上色功能✔️',
'变态功能✔️️',
'防封功能✔️️',
'退出脚本'},
nil,'辣鸡玩意和v2一模一样最新版本防封2.0\n作者：三侬\n破解需谨慎！\n️可防子弹追踪！开了子弹追踪就不要开此功能了，难免会封号 ')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end

function A()
menu1 = gg.multiChoice({
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
'点击确定返回上一页'},
nil,'透视上色落地开启')
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
if menu1[12] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
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
'返回上一页'},
nil,'透视上色落地开启')
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
if menu1[12] == true then b12() end
if menu1[13] == true then b13() end
if menu1[14] == true then b14() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end




function C()
menu1 = gg.multiChoice({
   "全枪无后✔️",
   "全枪聚点✔️",
   "全枪聚点✔️",
   "全屏自瞄✔️",
   "真伤范围✔️",
   "上帝视角✔️",
'返回上一页'},
nil,'低调奔放')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
"屏蔽游戏检测",
"防黑山子弹追踪",
'返回上一页'},
nil,'大厅执行。稳定奔放，别杀太猛！️')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
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

function c1()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  b2sj="0"
  gg.toast("全枪无后已开启")
end


function c2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.42850005627;2.0;3.3599998951;1.09375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.3599998951", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("枪械聚点已开启")
end

function c3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('3.9244102e12;7.3983547e31::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('3.9244102e12', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.getResults(11)
  gg.editAll('3.9244102e11',gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('防抖第一步已开启')
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('7.0062189E22;3.9928675E24;3.9413961E12::', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('7.0062189e22', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
  gg.getResults(111)
  gg.editAll('0',gg.TYPE_FLOAT)
  gg.clearResults()
  b3sj="0"
  gg.toast("防抖第二步已开启")
end

function c4()
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
 
function c5()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("300", gg.TYPE_FLOAT)
  b1sj="300"
  gg.toast("真伤伤害已开启")
end


function c6()
gg.setRanges(32)
  local dataType = 16
  local search = {{220.0, 0},{25.0, 8},{178.0, 24},{15.0, 28},{100.0, 36},{10.0, 40},}
  local modify = {{800, 0},}
  SearchWrite(search,modify,dataType,Name)
  gg.toast("上帝视角开启成功")
end

function d1()
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("135682;144387", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("135682", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134658;131586", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("134658", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("134914;262403", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("134914", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("133378", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.getResults(50000)
--[[ count: 0 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("131330;133634", gg.TYPE_DWORD)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("131330", gg.TYPE_DWORD)
--[[ found: 930 ]]
gg.getResults(50000)
--[[ count: 930 ]]
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1348759109;1953067887;1634692166;1920287604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.setVisible(false)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
--[[ found: 0 ]]
gg.getResults(10)
--[[ count: 0 ]]
end

function d2()
 gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() >= 1 then
        gg.toast("正在开启")
        gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        n = gg.getResultCount()
        jz = gg.getResults(n)
        for _FORV_3_ = 1, n do
          gg.addListItems({
            [1] = {
              address = jz[_FORV_3_].address + 100,
              flags = 4,
              freeze = true,
              value = 4451
            }
          })
        end
        gg.toast("防黑山子弹追踪开启成功")
      else
        gg.toast("防黑山子弹追踪开启成功")
      end
    end

function Exit()
print("三侬科技")
os.exit()
end


function HOME()
lw=1
yiyz_yiyz_Main()
end



cs = '三侬科技'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
yiyz_yiyz_Main()
end
end





