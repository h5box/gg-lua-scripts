function jiuyan(qmnb,qmxg)gg.setVisible(false)gg.clearResults()qmnbv=qmnb[3]['value']or qmnb[3][1]qmnbt=qmnb[3]['type']or qmnb[3][2]qmnbn=qmnb[2]['name']or qmnb[2][1]gg.setRanges(qmnb[1]['memory']or qmnb[1][1])gg.searchNumber(qmnbv,qmnbt)gg.refineNumber(qmnbv,qmnbt)sz=gg.getResultCount()if sz==0 then gg.toast(qmnbn..'开启失败')else sl=gg.getResults(999999)for i=1,sz do pdsz=true for v=4,#qmnb do if pdsz==true then pysz={{}}pysz[1].address=sl[i].address+(qmnb[v]['offset']or qmnb[v][2])pysz[1].flags=qmnb[v]['type']or qmnb[v][3]szpy=gg.getValues(pysz)tzszpd=tostring(qmnb[v]['lv']or qmnb[v][1]):gsub(',','')pyszpd=tostring(szpy[1].value):gsub(',','')if tzszpd==pyszpd then pdjg=true pdsz=true else pdjg=false pdsz=false end end end if pdjg==true then szpy=sl[i].address for x=1,#qmxg do xgsz=qmxg[x]['value']or qmxg[x][1]xgpy=szpy+(qmxg[x]['offset']or qmxg[x][2])xglx=qmxg[x]['type']or qmxg[x][3]xgdj=qmxg[x]['freeze']or qmxg[x][4]xg={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xg[1].freeze=xgdj gg.addListItems(xg)else gg.setValues(xg)end end xgjg=true end end if xgjg==true then gg.toast(qmnbn..'\n开启成功,共注入'..xgsl..'条数据')else gg.toast(qmnbn..'开启失败')end end end
function Main()
SN=gg.choice({
'开始炸图',
'退出炸图',
}, nil, 'k（小号）辅助牛逼')
if SN==1 then zzy() end
if SN==2 then os.exit() end
FX1=0
end
function zzy()
SN=gg.choice({
'无视禁止炸图物品',
'冒险类',
'漏洞类',
'PVP类',
'美化类',
'选项',
'狙击类',
'联机取物',
}, nil, '更新内容:\n1.狙击类和联机取物是空壳待开发')
if SN==1 then A() end
if SN==2 then B() end
if SN==3 then C() end
if SN==4 then D() end
if SN==5 then E() end
if SN==6 then F() end
if SN==7 then G() end
FX1=0
end
function A()
SN=gg.choice({
'能量剑改巨型炸弹💣（房主卡死）',
'短剑改熔岩黑龙球',
'突刺长枪改毁图生物（发射器使用）',
'石矛改黑龙火球',
'牛蛋改岩浆（）',
'木棒改物理方块()',
'石斧改火🔥',
'返回主页',
}, nil, '')
if SN==1 then A1() end
if SN==2 then A2() end
if SN==3 then A3() end
if SN==4 then A4() end
if SN==5 then A5() end
if SN==6 then A6() end
if SN==7 then A7() end
if SN==8 then Main() end
FX1=0
end
function B()jiuyan({{4},{'能量剑改巨型炸弹'},{12005,4},{2,4,4},{10,68,4},},{{15518,0,4,false},}) end
function A2() jiuyan({{4},{'短剑改熔岩黑龙球'},{12003,4},{2,12,4},{10,68,4},},{{15056,0,4,false},}) end
function A3() jiuyan({{4},{'突刺长矛改毁图生物'},{12004,4},{2,12,4},{10,68,4},},{{13502,0,4,false},}) end
function A4() jiuyan({{4},{'石矛改黑龙球'},{12002,4},{2,12,4},{10,68,4},},{{15054,0,4,false},}) end
function A5() jiuyan({{4},{'牛蛋改岩浆'},{13401,4},{2,8,4},{30,68,4},},{{6,0,4,false},}) end
function A6() jiuyan({{4},{'木棒改物理方块'},{12001,4},{2,12,4},{10,68,4},},{{15525,0,4,false},}) end
function A7() jiuyan({{4},{'斧矛改火'},{11002,4},{2,20,4},{80,68,4},},{{500,0,4, false},}) end
function B()
SN=gg.choice({
'快捷栏第一栏锁定物品数量26（快捷栏第一格无物品搜）',
'无限物品（物品栏第一格有一个物品开启）',
'返回主页',
}, nil, '该功能提高了稳定')
if SN==1 then B1() end
if SN==2 then B2() end
if SN==3 then Main() end
FX1=0
end
function B1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('1002;945804460',4)
gg.searchNumber('945804460',4)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i=1, sl do
dzy=jg[i].address
gg.addListItems({[1]={address=dzy,flags =4,freeze=true,value=945804470}})
end
gg.toast('修改成功')
gg.clearResults()
end
function B2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('1002;945804461',4)
gg.searchNumber('945804461',4)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i=1, sl do
dzy=jg[i].address
gg.addListItems({[1]={address=dzy,flags =4,freeze=true,value=945804470}})
end
gg.toast('修改成功')
gg.clearResults()
end
function C()
SN=gg.choice({
'能量剑改地形编辑器(改成创造后可用)',
'钩爪改地形编辑器(改成创造后可用)',
'木斧改地形编辑器(改成创造后使用)',
'传送卷轴改地形编辑器(改成创造后使用)',
'生存改创造(对战、跑酷、解密、电路有效)',
'创造背包菜单',
'返回主页',
}, nil, '修复了生存改创造闪退问题\n添加了创造菜单目前无法拿取物品')
if SN==1 then C1() end
if SN==2 then C2() end
if SN==3 then C3() end
if SN==4 then C4() end
if SN==5 then C5() end
if SN==6 then C6() end
if SN==7 then Main() end
FX1=0
end
function C1() jiuyan({{4},{'能量剑改地形编辑器'},{12005,4},{2,4,4},{10,68,4},},{{10500,0,4,false},}) end
function C2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('E62E0000rD;02000000rD:21',4)
gg.searchNumber('12006',4)
gg.getResults(100)
gg.editAll('10500',4)
gg.toast('修改成功改成创造才有效')
gg.clearResults()
end
function C3()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('F92A0000rD;02000000rD::21',4)
gg.searchNumber('11001',4)
gg.getResults(100)
gg.editAll('10500',4)
gg.toast('修改成功改成创造才有效')
gg.clearResults()
end
function C4()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('A4320000rD;02000000rD::9',4)
gg.searchNumber('12964',4)
gg.getResults(100)
gg.editAll('10500',4)
gg.toast('修改成功改成创造才有效')
gg.clearResults()
end
function C5() jiuyan({{4},{'生存改创造'},{1028816516,4},{5,-16,4},{1028816516,4,4},},{{4,-16,4,false},}) end
function C6()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('00000A00rD;00000001rD;34050000rD;D0020000rD:21',4)
gg.searchNumber('16777216',4)
gg.getResults(100)
gg.editAll('16777472',4)
gg.toast('成功创建界面')
gg.clearResults()
end
function D()
SN=gg.choice({
'无敌锁血',
'无限连跳(开启期间不要跳跃)',
'人物加速（5倍）',
'人物加速（10倍）',
'返回主页',
}, nil, '人物加速只能选一次')
if SN==1 then D1() end
if SN==2 then D2() end
if SN==3 then D3() end
if SN==4 then D4() end
if SN==5 then Main() end
FX1=0
end
function D1() jiuyan({{4},{'无敌锁血'},{6004,4},{945804460,4,4},{1120403456,496,4},},{{54088,496,gg.TYPE_FLOAT,false},}) end
function D2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('60;180;1;120;220;327685',4)
gg.searchNumber('1',4)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i=1, sl do
dzy=jg[i].address
gg.addListItems({[1]={address=dzy,flags =4,freeze=true,value=1}})
end
gg.toast('开启成功')
gg.clearResults()
end
function D3()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('16777473D;10F;-1D::37', gg.TYPE_FLOAT)
gg.searchNumber('10', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('50', gg.TYPE_FLOAT)
gg.toast('开启成功')
gg.clearResults()
end
function D4()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('16777473D;10F;-1D::37', gg.TYPE_FLOAT)
gg.searchNumber('10', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll('100', gg.TYPE_FLOAT)
gg.toast('开启成功')
gg.clearResults()
end
function E()
SN=gg.choice({
'皮肤变特工罗拉',
'无限豆子',
'返回主页',
}, nil, '此功能能让你在炸图时不再单调\n注:角色选择妮妮')
if SN==1 then E1() end
if SN==2 then E2() end
if SN==3 then Main() end
FX1=0
end
function E1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber('10938D;8B;936,628,196D', gg.TYPE_BYTE)
gg.searchNumber('8', gg.TYPE_BYTE)
gg.getResults(100)
gg.editAll('9', gg.TYPE_BYTE)
gg.toast('已替换皮肤')
gg.clearResults()
end
function E2()
jiuyan({{4},{'无限豆子'},{963389600,4},{126,4,4},{4,8,4},},{
{540889999, -136, gg.TYPE_DOUBLE, false},})
end

while true do if gg.isVisible(true) then FX1=nil gg.setVisible(false) end if FX1 == nil then Main() end end
