

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end 


function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end


gg.alert('提示一下:游戏隐藏23，旁路选择没有，功能才有效果','进入辅助')


xs=os.date("%Y年%m月%d日%H时%M分%S")
e5sj="利刃作者[冷颜]"
-----------------------------------------------------------------------------------------

function yiyz_Main()
menu = gg.choice({
'🥝透视区',
'🥝上色区',
'🥝变态区️',
'🥝防封区️',
'退出脚本'},
nil,os.date("[辅助说明:2020.9.16强力推出，需要先开启利刃防封才稳定哦]\n辅助名称：利刃\n辅助作者: 冷颜\n辅助版本: 9.16\n北京时间: %H:%M |冷颜"))
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
nil,'透视上色落地开启,效果不佳多开两次即可')
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
    "855白色（流畅) ",
    "855绿色（流畅) ",
    "865白色（流畅) ",
    "765白色 (流畅) ",
    "660黄色（流畅）",
    "625白色（流畅）",
    "835绿色（流畅) ",
    "车辆红色 (流畅) ",
'点击确定返回上一页'},
nil,'透视上色落地开启,出现透不出来的情况重新开一次即可')
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
if menu1[11] == true then HOME() end
end
GLWW=-1
end




function C()
menu1 = gg.multiChoice({
   "全屏自瞄(大厅开启)",
   "全枪无后(大厅开启)",
   "子弹聚点(持枪开启)",
   "枪械防抖(大厅开启)",
   "头部天线(大厅开启)",
   "全图除雾(大厅开启)",
   "全图除草(大厅开启)",
   "装备定位(落地开启)",
   "快速落地(飞机开启)",
   "全枪瞬击(大厅开启)",
   "头部范围(落地开启)",
   "人物地线(落地开启)",
   "轿车飞天(坐车开启)",
   "拾取范围(落地开启)",
   "秒开倍镜(落地开启)",
   "上帝视角(落地开启)",
   "跳远微速(落地开启)",
   "全车加速(坐车开启)",
   "变大巨人(落地开启)",
   "地图变暗(落地开启)",
   "脖子天线(落地开启)",
   "盒子天线(落地开启)",
'点击确定返回上一页'},
nil,'变态功能低调奔放，部分功能需要隐藏23旁路选择没有才有效果')
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
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then c16() end
if menu1[17] == true then c17() end
if menu1[18] == true then c18() end
if menu1[19] == true then c19() end
if menu1[20] == true then c20() end
if menu1[21] == true then c21() end
if menu1[22] == true then c22() end
if menu1[23] == true then HOME() end
end
GLWW=-1
end


function D()
menu1 = gg.multiChoice({
   "内存全防(大厅开启)",
'点击确定返回上一页'},
nil,'防封必须在大厅执行，执行过程中请勿切屏或点击修改器，以免数据错乱造成封号问题\n部分用户如果禁网就按照第一个圈刷完断开网络等待提示弹窗然后返回到大厅，开网链接进入游戏的方法防止禁网')
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then HOME() end
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
gg.setRanges(1048576)
local tb1 = {{1.1078273e-39,0},{4.7223665e21,4},{-9.185091e-41,8},}
local tb2 = {{5444,8,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.setRanges(1048576)
local tb1 = {{5.3248159e-29,0},{3.75000596046,4},{-1.6590645e-39,8},}
local tb2 = {{5444,8,},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.toast("骁龙765/765G/865/865plus人物透视开启成功")
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
gg.editAll("14",gg.TYPE_DWORD)
gg.toast("蓝色开启成功")
end


function b2()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end

function b3()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("12", gg.TYPE_DWORD)
  gg.toast("白色开启成功")
end

function b4()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("8,201;1,703,961:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("7", gg.TYPE_DWORD)
  gg.toast("绿色开启成功")
end
  
function b5()
gg.setRanges(gg.REGION_VIDEO)
local tb1 = {{4.852936e21,0},}
local tb2 = {{520,0},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.toast("人物白色开启成功")
end

function b6()
gg.setRanges(gg.REGION_VIDEO)
local tb1 = {{4.852936e21,0},}
local tb2 = {{520,0},}
local dataType = gg.TYPE_FLOAT
SearchWrite(tb1,tb2,dataType)
gg.toast("765白色开启成功")
end


function b7()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("660黄色")
  end
  
  
  function b8()
  gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("1,075,316,740;281,153,696;1,669,466,626;194", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,075,316,740", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_DWORD)
gg.toast("625白色")
end

  
  function b9()
  gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("6", gg.TYPE_DWORD)
  gg.clearResults(1048576)
  gg.toast("835绿色")
  end
  
  function b10()
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
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-2.3805859e21;-1.3620439e28;-1.3978205e24::12', 16)
gg.searchNumber('-1.3620439e28', 16)
gg.getResults(10)
gg.editAll('0', 16)
gg.toast("除雾开启成功")
gg.clearResults()
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
 A = gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{7.1689529418945, 0x38A4}, {9.2457857132, 0x489C}, {13.18564987183, 0x4894},}
    local tb2 = {{999999, 0x38A4},}
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.4779739379883, 0x749C}, {1.38781404495, 0x7498}, {2.03120303154, 0x748C},}
    local tb2 = {{99999, 0x749C, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{7.4993133544922, 0xD1C4}, {-25.68770980835, 0xD1C0}, {17.2485370636, 0xD1BC},}
    local tb2 = {{99999, 0xD1C4, false},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{3.10485887527, 0x7B60}, {4.03340053558, 0x7B5C}, {15.11002922058, 0x7B58},}
    local tb2 = {{99999, 0x7B60, false},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("3级装备+8倍镜天线已开启  ") 
   gg.setRanges(gg.REGION_VIDEO)                      
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{2.26353430748, 0xA068}, {-1.59971761703, 0xA058},{-2.26234126091, 0xA040},}
    local tb2 = {{99999, 0xA068,},} 
    SearchWrite(tb1, tb2, dataType)
    local tb1 = {{1.58135390282, 0xC0D4}, {1.56683290005, 0xC0D0}, {1.56683623791, 0xC0C4},}
    local tb2 = {{99999, 0xC0D4, false},} 
    SearchWrite(tb1, tb2, dataType)
    gg.toast("消音器天线开启成功")
gg.setRanges(gg.REGION_VIDEO)
    local dataType = gg.TYPE_FLOAT
    local tb1 = {{0.28105437756, 0x917C}, {5.90920639038, 0x9178},{0.11737322807, 0x9174},}
    local tb2 = {{99999, 0x917C,},} 
    SearchWrite(tb1, tb2, dataType)
  gg.toast("步枪快扩天线已开启")    
 gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("6.95975875854", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("88996", gg.TYPE_FLOAT)
    gg.toast("5.56子弹定位成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("7.14577531815", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("三级头定位开启成功")
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
Name = "全枪瞬击"
  gg.setRanges(16384)
  local dataType = 16
  local search = {
    {-1.4278110478704994E28, 0},
    {8.562694393506966E-26, -12},
    {1.8175359108152E-27, -8}
  }
  local modify = {
    {-1.427802E28, 0}
  }
  SearchWrite(search, modify, dataType)
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




function d1()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
if gg.getResultCount() >= 1 then
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n=gg.getResultCount()
jz=gg.getResults(n)
for i=1, n do
gg.addListItems({[1] = {address =jz[i].address+0,flags = 4,freeze = true,value = 268435456}})
gg.addListItems({[1] = {address =jz[i].address+4,flags = 4,freeze = true,value = 268435456}})
gg.addListItems({[1] = {address =jz[i].address+8,flags = 4,freeze = true,value = 268435456}})
gg.addListItems({[1] = {address =jz[i].address+16,flags = 4,freeze = true,value = 268435456}})
gg.addListItems({[1] = {address =jz[i].address+20,flags = 4,freeze = true,value = 268435456}})
gg.addListItems({[1] = {address =jz[i].address+48,flags = 4,freeze = true,value = 120}})
gg.addListItems({[1] = {address =jz[i].address+100,flags = 4,freeze = true,value = 4451}})
end
gg.toast("开启")
else
gg.toast("失败")
end
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
	 gg.toast("等")
	 gg.clearResults()
 gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('4502', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)                                                                                                                                                                                                                                                                                --NRCLan
gg.refineNumber('4502', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('6786', gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("16384;4448", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("4448", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99900000)
    gg.editAll("9876", gg.TYPE_DWORD)
    if gg.getResultCount() == 0 then
    else
      gg.getResults(99900000)
      gg.editAll("9876", gg.TYPE_DWORD)
      gg.getResults(99900000)
      for i, i in ipairs((gg.getResults(99900000))) do
        if i.flags == gg.TYPE_DWORD then
          gg.addListItems((gg.getResults(99900000)))
        end
      end
    end
    gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"67109377"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(11082001, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = '"4451"'
		v.freeze = true
 gg.clearResults()
 
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber('"67109377"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) gg.refineNumber('"67109377"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) revert = gg.getResults(30101996, nil, nil, nil, nil, nil, nil, nil, nil) for _FORV_4_, _FORV_5_ in ipairs((gg.getResults(30101996, nil, nil, nil, nil, nil, nil, nil, nil))) do 
if _FORV_5_.flags == gg.TYPE_DWORD then
 _FORV_5_.value = '"0"' _FORV_5_.freeze = true end end gg.addListItems((gg.getResults(30101996, nil, nil, nil, nil, nil, nil, nil, nil))) gg.clearResults()
gg.alert("内存全防成功")
end
end
end
function Exit()
print("冷颜")
os.exit()
end


function HOME()
lw=1
yiyz_Main()
end



cs = '冷颜'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end

if XGCK==1 then
yiyz_Main()
end
end