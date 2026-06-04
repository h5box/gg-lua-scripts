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
gg.toast(qmnb[2]["name"] .. "开启成功") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end

function Main0()
SN = gg.choice({
     "菜单VIP",
	 "菜单强.",
	 "菜单百家姓",
	 "菜单神仙附魔",
	 "菜单⑤",
	 "退出辅助",
},nil,os.date'当前时间:%Y年-%m月-%d日 %H时 %M分,本辅助不是我的,别人的这是二改')
if SN==1 then
     lh()
end
if SN==2 then
     nb()
end
if SN==3 then
     ws()
end
if SN==4 then
     wc()
end

if SN==5 then
     cb14()
end

if SN==6 then
     cb16()
end


FX1=0
FX2=0
end
function lh()
 SN = gg.multiChoice({
"VIP.成员伪op",
"VIP.访客伪op",
"VIP.任意副手",
"VIP.人物加速",
"VIP.全局加速",
"VIP.高跳远跳",
"VIP.超强创背",
"○返回上一页菜单"},
nil,"憨包")
if SN == nil then else
if SN[1] == true then cb1() end
if SN[2] == true then cb2() end
if SN[3] == true then cb3() end
if SN[4] == true then cb4() end
if SN[5] == true then cb5() end
if SN[6] == true then cb6() end
if SN[7] == true then cb7() end
if SN[8] == true then cb8() end
end
GLWW=-1
end
function cb1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("2139030018", gg.TYPE_DWORD)
	 gg.toast("伪op修改成功")
	 gg.clearResults()
end

function cb2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2139029504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2139029504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value =2139030018}})
  end
  gg.toast("访客改伪op成功")
  gg.clearResults()
end
function cb3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1198530561", gg.TYPE_DWORD)
	 gg.toast("任意副手开启成功")
	 gg.clearResults()
end
function cb4()
gg.clearResults()
input4 = gg.prompt({'请输入所需修改数值（推荐0.2~0.5）\n数值越大越快，不过屏幕会引起不适\n点击确定后请保持疾跑状态'},{[1]=0.2},{[1]='number'});
gg.toast('请保持疾跑状态')
gg.searchNumber('0.1;0;3.4028235e38;0.1;1.1011996e36::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(input4[1], gg.TYPE_FLOAT)
  gg.toast("加速移动已开启")
end
function cb5()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.9", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function cb6()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.2", gg.TYPE_FLOAT)
  gg.searchNumber("0.2", gg.TYPE_FLOAT)
  gg.getResults(1)
  gg.editAll("2.5", gg.TYPE_FLOAT)
  gg.toast("远跳开启成功")
  gg.clearResults()
end
function cb7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("2139030018", gg.TYPE_DWORD)
	 gg.toast("伪op修改成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1198530561", gg.TYPE_DWORD)
	 gg.toast("任意副手开启成功")
	 gg.clearResults()
end
function cb8()
Main0()
end
function nb()
 SN = gg.multiChoice({
 "强.仿长臂猿",
 "强.杀戮光环",
 "强.旋转杀戮",
 "强.假死无敌",
"○返回上一页菜单"},
nil,"！")
if SN == nil then else
if SN[1] == true then d2() end
if SN[2] == true then d3() end
if SN[3] == true then d4() end
if SN[4] == true then d5() end
if SN[5] == true then d13() end
end
GLWW=-1
end
function d2()
		 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F;-1.0F::57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F;-1.0F::57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("长臂猿已开启")
	 gg.clearResults()
end
function d3()
  gg.setRanges(4)
  gg.searchNumber("98312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("98312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(510)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 8486920
      }
    })
  end
  gg.toast("杀戮开启成功")
  gg.clearResults()
end
function d4()
     gg.clearResults()
     gg.setRanges(4)
     gg.toast("加载中")
     gg.searchNumber("98312",gg.TYPE_DWORD)
     gg.sleep(1000)
     gg.toast("加载中")
     gg.searchNumber("98312",gg.TYPE_DWORD)
     gg.sleep(1000)
     gg.searchNumber("98312",gg.TYPE_DWORD)
     gg.toast("加载中")
     gg.sleep(5000)
     gg.toast("加载中")
     gg.searchNumber("98312",gg.TYPE_DWORD)
     A = gg.getResultCount()
     if A == 0 then
     gg.alert("未知原因 开启失败")  os.exit() end
     jg=gg.getResults(5)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.20511668e-38}})
	 end
	 gg.toast("杀戮光环已开启(无效再开一次)")
	 gg.clearResults()
end
function d5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("20;20::17", gg.TYPE_FLOAT )
	 gg.searchNumber("20", gg.TYPE_FLOAT )
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("假死开启成功")
	 gg.clearResults()
end
function d13()
Main0()
end

function ws()
 SN = gg.multiChoice({
	 "百家姓",
	 "刘.超级夜视",
	 "张.1.18飞行",
	 "徐.万能踏空",
	 "李.1.18穿墙",
	 "关.开启坐标",
	 "辉.坐标传送",
	 "博.图腾叠加",
	 "高.创造之手",
	 "古.破坏基岩",
	 "○返回上页菜单"},
nil,"l")
if SN == nil then else
if SN[1] == true then xc1() end
if SN[2] == true then xc2() end
if SN[3] == true then xc3() end
if SN[4] == true then xc5() end
if SN[5] == true then xc6() end
if SN[6] == true then xc7() end
if SN[7] == true then xc8() end
if SN[8] == true then xc9() end
if SN[9] == true then xc10() end
if SN[10] == true then xc11() end
if SN[11] == true then xc12() end
end
GLWW=-1
end
function xc2()
qmnb = {
{["memory"] = 4},
{["name"] ="夜视"},
{["value"] =981668463 ,["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16, ["offset"] = -40, ["type"] = 4},
}
qmxg = {
{["value"] =1189765120, ["offset"] = -8, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end
function xc3()
gg.toast("开启时别动哦")
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="花雨庭飞行"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x138, ["type"] = 1, ["freeze"]=true}
  }
  xqmnb(qmnb)
  gg.clearResults()
end
function xc6()
gg.toast("开启时别动哦")
  gg.clearResults()
  qmnb={
    {["memory"] = 4},
    {["name"] ="花雨庭穿墙"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)
  gg.clearResults()
end
function xc5()
     gg.toast("开启时别动哦")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;1.0F;16777473::21", gg.TYPE_DWORD)
	 gg.searchNumber("16777473", gg.TYPE_DWORD)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777473}})
	 end
	 gg.toast("踏空开启成功")
	 gg.clearResults()
end
function xc7()
qmnb={
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
function xc8()
gg.toast("进行传送请不要移动身体,必须开启飞行哦")
x = gg.prompt({"输入你的x坐标"})
y = gg.prompt({"请输入你的y坐标"})
z = gg.prompt({"请输入你的z坐标"})
dx = gg.prompt({"请输入你要传送的y坐标️"})
dy = gg.prompt({"请输入你要传送的y坐标️"})
dz = gg.prompt({"请输入你要传送的y坐标️"})
x1=x[1]+3
y1=y[1]+3
z1=z[1]+3
x2=x[1]-3
y2=y[1]-3
z2=z[1]-3
gg.searchNumber(x2.."~"..x1..";"..y2.."~"..y1..";"..z2.."~"..z1.."::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(x2.."~"..x1, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,  0, -1)
gg.getResults(150)
gg.editAll(dx[1],gg.TYPE_FLOAT)
gg.clearResults()
dx1=dx[1]+3
dx2=dx[1]-3
gg.searchNumber(dx2.."~"..dx1..";"..y2.."~"..y1..";"..z2.."~"..z1.."::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(y2.."~"..y1, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,  0, -1)
gg.getResults(150)
gg.editAll(dy[1],gg.TYPE_FLOAT)
gg.clearResults()
dy1=dy[1]+3
dy2=dy[1]-3
gg.searchNumber(dx2.."~"..dx1..";"..dy2.."~"..dy1..";"..z2.."~"..z1.."::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber(z2.."~"..z1, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,  0, -1)
gg.getResults(150)
gg.editAll(dz[1],gg.TYPE_FLOAT)
gg.clearResults()
end
function xc9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("256W;1B;1W;16256W;450W::105", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(300)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_WORD,freeze = true,value = 64}})
	 end
	 gg.toast("已将不死图腾改为64层叠加")
	 gg.clearResults()
end
function xc11()
	 gg.setVisible(false)
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("18000000;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("破坏基岩开启成功")
	 gg.clearResults()
os.exit()
end

function xc10()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("5D;9D;1D::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     gg.processResume()
     gg.refineNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
     gg.editAll("1", gg.TYPE_DWORD)
gg.processResume()
end
function xc12()
Main0()
end
function wc()
 SN = gg.multiChoice({
    "神仙.正附魔32767",
    "️神仙.正附魔12567",
    "神仙.负附魔32767",
    "神仙.负附魔12567",
    "神仙.随机正数附魔",
    "○返回上页菜单"},
nil, "p")
if SN == nil then else
if SN[1] == true then a1() end
if SN[2] == true then a2() end
if SN[3] == true then a3() end
if SN[4] == true then a4() end
if SN[5] == true then a5() end
if SN[6] == true then a6() end
end
GLWW=-1
end
function a1()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("32767", gg.TYPE_WORD)
  gg.toast("附魔书改32k开启成功")
end
function a2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("12567", gg.TYPE_WORD)
  gg.toast("附魔书改32k开启成功")
end
function a3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-32767", gg.TYPE_WORD)
  gg.toast("附魔书改32k开启成功")
end
function a4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-12567", gg.TYPE_WORD)
  gg.toast("附魔书改32k开启成功")
end
function a5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("32767", gg.TYPE_WORD)
  gg.toast("附魔书改32k开启成功")
end
function a6()
Main0()
end
function cb14()

 SN = gg.multiChoice({
    "附魔书改钻石头",
    "附魔书改钻石甲",
    "附魔书改钻石裤",
    "附魔书改钻石靴",
    "附魔书改钻石剑",
    "不死图腾改TNT",
    "不死图腾改命令方块",
    "不死图腾改黑紫棒",
    "天气系统↓",
    "永恒白天",
    "超强除雨",
    "除雨恢复",
    "雨从地出",
    "○返回上页菜单"},
nil, "!")
if SN == nil then else
if SN[1] == true then lua1() end
if SN[2] == true then lua2() end
if SN[3] == true then lua3() end
if SN[4] == true then lua4() end
if SN[5] == true then lua5() end
if SN[6] == true then lua6() end
if SN[7] == true then lua7() end
if SN[8] == true then lua8() end
if SN[9] == true then lua9() end
if SN[10] == true then lua10() end
if SN[11] == true then lua11() end
if SN[12] == true then lua12() end
if SN[13] == true then lua13() end
if SN[14] == true then lua14() end
if SN[15] == true then mian() end
end
GLWW=-1
end
function lua1()
	 gg.setRanges(4)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("313", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
     function lua2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("313", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
function lua3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("312", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
function lua4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("311", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
function lua5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("310", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
function lua6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("257", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
function lua8()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("188", gg.TYPE_WORD)
gg.toast("不死图腾改命令方块成功!")
gg.clearResults()
end

function lua7()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("65", gg.TYPE_DWORD)
gg.toast("不死图腾改TNT成功!")
gg.clearResults()
end

function main()
Main0()
end

function lua9()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("166", gg.TYPE_DWORD)
gg.toast("不死图腾改紫黑棒成功!")
gg.clearResults()
end
function lua11()
qmnb={
{["memory"] = 4},
{["name"] ="永恒白天"},
{["value"] =32767, ["type"] = 4},
{["lv"] = 1, ["offset"] = -0x8, ["type"] =4},
{["lv"] = 32767, ["offset"] = -0x10, ["type"] =4},
{["lv"] = -12945, ["offset"] = -0x16, ["type"] =gg.TYPE_WORD},
}
qmxg={
{["value"] =6000, ["offset"] = 0x8, ["type"] = 4, ["freeze"]=true}
}
xqmnb(qmnb)
end
function lua12()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("925D;0.5;0.10000000149::13", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("0", 16)
	 gg.toast("已经除雨了")
	 gg.clearResults()
end
function lua14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("925D;0.5;0.10000000149::13", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("0", 16)
	 gg.toast("雨从地出了")
	 gg.clearResults()
end

function lua13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("925D;0;0.10000000149::13", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", 16, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("0.5", 16)
	 gg.toast("除雨关闭成功")
	 gg.clearResults()
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
