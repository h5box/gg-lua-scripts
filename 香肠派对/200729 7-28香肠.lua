function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败请在游戏开启.")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败请在游戏开启.") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败请在游戏开启") 
end 
end 
end 
end

function Main()
menu = gg.choice({
'稳定功能',
'稳定功能',
'训练营功能',
'稳定功能',
'变态功能',
'退出脚本'},
nil,'玩机家园免费分享www.wjjy8.com')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end

----香肠
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, upgrade) for x = 1, #(upgrade) do xgpy = szpy + upgrade[x]["offset"] xglx = upgrade[x]["type"] xgsz = upgrade[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xupgn(upgn) gg.clearResults() gg.setRanges(upgn[1]["memory"]) GTeam(upgn[3]["value"], upgn[3]["type"]) if gg.getResultCount() == 0 then gg.toast(upgn[2]["name"] .. "开启失败") else gg.refineNumber(upgn[3]["value"], upgn[3]["type"]) gg.refineNumber(upgn[3]["value"], upgn[3]["type"]) gg.refineNumber(upgn[3]["value"], upgn[3]["type"]) if gg.getResultCount() == 0 then gg.toast(upgn[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(upgn) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + upgn[v]["offset"] pysz[1].flags = upgn[v]["type"] szpy = gg.getValues(pysz) pdpd = upgn[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, upgrade) xgjg = true end end if xgjg == true then gg.toast(upgn[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(upgn[2]["name"] .. "开启失败") end end end end

function GTeam(n, type, ft, sign, r, s)
  local waring = "\n" .. "玩机家园免费分享www.wjjy8.com"
  gg.setVisible(false)
  gg.searchNumber(n, type, ft, sign, r, s)
  if gg.isVisible(true) then
    gg.setVisible(false)
    gg.processKill()
    print(waring)
    toast(waring)
    while true do
      gg.setVisible(false)
    end
  end
end

function A()
menu1 = gg.multiChoice({
'人物飞天',
'上帝视角',
'骁龙透视',
'超远拉钩',
'爬墙爬树',
'子弹穿墙',
'全图全除',
'人物天线',
'天空上色',
'人物穿墙',
'范围追踪',
'人物遁地',
'人物锁头',
'狙击连发',
'子弹聚点',
'灵魂飞天',
'灵魂遁地',
'实体遁地',
'返回上一页'},
nil,'玩机家园免费分享')
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
if menu1[17] == true then a17() end
if menu1[18] == true then a18() end
if menu1[1] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'全枪无后',
'载具透视',
'人物锁头',
'内存防封',
'无限子弹',
'无限飞高',
'人物变大',
'游戏不卡',
'物品透视',
'视角抬头',
'机甲锁血',
'机甲锁油',
'人物范围',
'麒麟透视',
'人物加速',
'人物透视',
'全枪射速',
'加特林不红',
'返回上一页'},
nil,'防封大厅开  玩机家园免费分享www.wjjy8.com')
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
if menu1[15] == true then b15() end
if menu1[16] == true then b16() end
if menu1[17] == true then b17() end
if menu1[18] == true then b18() end
if menu1[19] == true then HOME() end
end
GLWW=-1
end



function C()
menu1 = gg.multiChoice({
'探险家蓝蓝',
'宝藏猎手杰克',
'呼嘿嘿',
'全枪皮肤',
'毁灭者',
'哪吒',
'妲己',
'震雷子',
'吸血鬼',
'龙骑士',
'飞高高美化',
'鱼人',
'训练营召唤人机',
'训练营召唤人机',
'龙宝宝背包皮肤',
'返回上一页'},
nil,'大厅开完进训练营(只能训练营开启)一定使用原始服装')
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
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function D()
menu1 = gg.multiChoice({
'超级自慰隐身',
'人物上色',
'散弹连发',
'秒车秒龙',
'开镜路飞',
'蹦蹦天线',
'身体范围',
'猫猫变大',
'圣剑无CD',
'人物上色',
'飞碟锁油',
'地面变海洋',
'小飞天',
'飞碟速度',
'飞碟锁血',
'返回上一页'},
nil,'超级自慰隐身(修改器隐藏2、3) 玩机家园免费分享www.wjjy8.com')
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
if menu1[12] == true then d12() end
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end



function E()
menu1 = gg.multiChoice({
'机甲移速',
'机甲跳跃',
'M16A4和Mini14全自动',
'SKS和SLR全自动',
'部分抢高伤害',
'蘑菇变大，无限时间，血量变大',
'火箭筒无CD',
'胶囊锁毒',
'飞高高',
'弹弓伤害',
'秒车',
'物品上色',
'爆炸弓不蓄力',
'火箭筒范围',
'视野扩大',
'机甲弹射高度',
'返回上一页'},
nil,'开防封保险  玩机家园免费分享www.wjjy8.com')
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then e10() end
if menu1[11] == true then e11() end
if menu1[12] == true then e12() end
if menu1[13] == true then e13() end
if menu1[14] == true then e14() end
if menu1[15] == true then e15() end
if menu1[16] == true then e16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end




function a1()
F = gg.alert("飞天", "开启", "关闭","退出")
if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("60", gg.TYPE_FLOAT)
gg.toast("开启成功辉腾制作")
gg.clearResults()
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;60.0;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07999999821", gg. TYPE_FLOAT)
gg.toast("关闭成功辉腾制作")
gg.clearResults()
end
end



function a2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.44999998808;0.60000002384;0.55000001192;0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.55000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("4.5", gg.TYPE_FLOAT)
gg.toast("开启成功辉腾制作")
gg.clearResults()
end




function a3()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("3.7470893e-29;112D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("开启成功辉腾制作")
end



function a4()
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1109393408;1059145646:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1109393408", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,112,593,408", gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
end




function a5()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1;0.4999999702;0.5::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_FLOAT)
  gg.toast("😜😜开启成功😜😜")
end




function a6()
qmnb = {
{["memory"] = 16},
{["name"] = "子弹穿墙"},
{["value"] = 6.726232628759122E-44, ["type"] = 16},
{["lv"] = 9.999999717180685E-10, ["offset"] = 80, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 96, ["type"] = 16},
{["lv"] = 2.0, ["offset"] = 116, ["type"] = 16},
{["lv"] = 1.0000000116860974E-7, ["offset"] = 128, ["type"] = 16},
}
qmxg = {
{["value"] = 99, ["offset"] = 96, ["type"] = 16,["freeze"] = true},

}
xqmnb(qmnb)
end


function a7()
F = gg.alert("除草除树除墙", "除草", "除树", "除墙(准星消失)")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1024.0F;1024.0F;1.0F;1.0F;0.5F::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1.1",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1024.0F;1024.0F;1.0F;1.0F;1.1F::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0.5",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
elseif F == 3 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.7;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.7",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
end
end




function a8()
gg.clearResults()
gg.setRanges(4+32)
gg.searchNumber('1.72448539734~1.72448551655',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.editAll('999',gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end
function a9()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;1,194,363,394D;0D;1,280D;5D;-1,597,960,448D;1,812,070,403D;1,342,703,619D;271,618,083D;1,661,044,739D;270,532,611D;1,080,559,619D;196,608D;1,080,035,584D;196,610D;1,080,035,330D;270,794,752D;1,080,560,131D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("-99", gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
end


function a10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1,055,286,886;1,065,353,216;1,067,869,798:9',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1,055,286,886',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-99',gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
end

function a11()
upgn = {
{["memory"] = gg.REGION_C_BSS},
{["name"] = "嗨你好"},
{["value"] = 1  , ["type"] = gg.TYPE_FLOAT},
{["lv"] = 31    , ["offset"] = 56, ["type"] = gg.TYPE_DWORD},
{["lv"] = 30    , ["offset"] = 104, ["type"] = gg.TYPE_DWORD},
}
upgrade = {
{["value"] = -80, ["offset"] = 0, ["type"] = gg.TYPE_FLOAT},
}
xupgn(upgn)

end


function a12()
  gg.alert("下去之后就不能上来了，开的时候不要乱动")
 gg.clearResults()
gg.setRanges(16)
gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.07999999821;0.5;1;1.5::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
do
do
for _FORV_3_ = 1, n do
gg.setValues({
[1] = {
address = jz[_FORV_3_].address + 54,
flags = gg.TYPE_FLOAT,
value = "2.82080483437"
}
})
end
end
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("😜😜开启成功😜😜")
gg.alert("因为下去不能上来的缘故，建议前期不要打人或者多捡一些子弹，最后把剩下的一个人打死就行了。")
else
gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.95", gg.TYPE_FLOAT)
gg.toast("站着遁地开启成功")
gg.alert("因为下去不能上来的缘故，建议前期不要打人或者多捡一些子弹，最后把剩下的一个人打死就行了。")
end
end
end




function a13()
gg.clearResults()
	 gg.clearResults()
gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.1", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end


function a14()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.20000004768;1.0789998e-43:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.20000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end



function a15()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11999999732;0.20000000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end


function a16()
F = gg.alert("灵魂飞天", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.44999998808F;0.33333334327F;-1.3093038e25F;-3.3568116e27F:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.33333334327", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-70", gg.TYPE_FLOAT)
    gg.toast("😜😜开启成功😜😜")
   elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.44999998808F;-70;-1.3093038e25F;-3.3568116e27F:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.33333334327", gg.TYPE_FLOAT)
    gg.toast("😜😜关闭成功兄弟制作😜😜")
  end
end

function a17()
F = gg.alert("灵魂遁地", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.44999998808F;0.33333334327F;-1.3093038e25F;-3.3568116e27F:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.33333334327", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("70", gg.TYPE_FLOAT)
    gg.toast("😜😜开启成功😜😜")
   elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("0.44999998808F;70;-1.3093038e25F;-3.3568116e27F:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.33333334327", gg.TYPE_FLOAT)
    gg.toast("😜😜关闭成功兄弟制作😜😜")
  end
end
function a18()
gg.alert("开启以后就不要动了有包也不要舔了想上来传送胶囊早准备好想要在下去在开启")
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.07999999821;0.5;1;1.5::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    do
      for _FORV_3_ = 1, n do
        gg.setValues({
          [1] = {
            address = jz[_FORV_3_].address + 54,
            flags = gg.TYPE_FLOAT,
            value = "2.82080483437"
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.95", gg.TYPE_FLOAT)
  gg.toast("😜😜开启成功😜😜")
end



function b1()
F = gg.alert("全枪午后", "午后一", "午后二")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5",gg.TYPE_DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
end
end


function b2()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.7470893e-29;2.25000405312:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end

function b3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.99",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.3", gg.TYPE_FLOAT)
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end



function b4()
   F = gg.alert("防封", "检测防封", "内存防封", "越过检测", "防追封")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.4012985e-45;5.6051939e-45;2.986167e-42::", gg.TYPE_FLOAT)
gg.searchNumber("2.986167e-42", gg.TYPE_FLOAT)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,121,714,176;1,114,112,000;-607,424,618:65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
  elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1;1D;1E;1F;1B", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;1D;1E;1F;1B", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("257;2131;0F~99999F;0::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0F~99999F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
  elseif F == 3 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.4012985e-45;5.6051939e-45;2.986167e-42::", gg.TYPE_FLOAT)
gg.searchNumber("2.986167e-42", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
elseif F == 4 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end
end



function b5()
gg.clearResults()
gg.setRanges(32)
fw = gg.prompt({ i = "输入你现在的子弹数量" }, {i = ""})
gg.searchNumber(fw.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("😜😜开几枪😜😜")
gg.sleep(4000)
fl = gg.prompt({ p = "输入你现在的子弹数量" }, {p = ""})
gg.searchNumber(fl.p,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.toast("😜😜请再开几枪😜😜")
gg.sleep(4000)
fd = gg.prompt({ k = "输入你现在的子弹数量" }, {k = ""})
gg.searchNumber(fd.k,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
local t =gg.getResults(15)
for i, v in ipairs(t)do
t[i].value ="9999"
t[i].freeze =true
end
gg.addListItems(t)
gg.toast("😜😜开启成功😜😜")
end


function b6()
F = gg.alert("无限飞高高","开","关")
if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("5.34383488e-38;0.00001;-1.30940708e25:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00001",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("5.34383488e-38;1;-1.30940708e25:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00001", gg.TYPE_FLOAT)
gg.toast("😜😜关闭成功兄弟制作😝😝")
end
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("100.0;0.00999999978;-1.30951038e25:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00999999978",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0155", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功破晓自制😜😜")
end 



function b8()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("5.85339745e-38;0.00001;5.35615061e-38:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.00001",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功破晓自制😜😜")
end



function b9()
F = gg.alert("透视","小透视","大透视")
if F == 1 then
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
gg.setVisible(false)
elseif F == 2 then
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.90684349e21;3.7470893e-29:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
gg.setVisible(false)
end
end


function b10()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.1~99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.55000001192",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
fw= gg.prompt({i='请输入您想改的数值'}, {i='2'})
gg.editAll(fw["i"], gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end 



function b11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end


function b12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8000.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(" 8000.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end




function b13()
F = gg.alert("范围", "头部范围",  "全身范围", "全身范围")
  if F == 1 then
gg.clearResults()
gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
  elseif F == 2 then
  gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.2",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
  elseif F == 3 then
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("0;0;0;1;1;1;1;0;0;0;1::41", gg.TYPE_FLOAT)
gg.searchNumber("1", gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll("3",gg.TYPE_FLOAT)
gg.toast('😜😜开启成功😜😜')
end
end


function b14()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.871 6529e-40;5.5932713e-28;4.2038954e-45;1.4012.871 6529e-40;5.5932713e-28;4.2038954e-45;1.4012985e-45;1 .4012985e-45;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end


function b15()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
end



function b16()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.7470893e-29;2.25000452995:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end

function b17()
    gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.01~0.4;100D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("0.01~0.4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(999999)
  gg.editAll("0",gg.TYPE_FLOAT)
  gg.toast("😜😜开启成功😜😜")
end


function b18()
qmnb = {
{["memory"] = 32},
{["name"] = "加特林不红"},
{["value"] = 1128792064, ["type"] = 4},
{["lv"] = 1058642330, ["offset"] = 20, ["type"] = 4},
{["lv"] = 100, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1065353216, ["offset"] = 28, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 999999999, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end






function c1()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762196",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762198",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762197",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762193",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762195",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762194",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😝😝")
end




function c2()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762214",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762216",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762215",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762211",gg.TYPE_DWORD)
  gg.toast("😝😝美化成功兄弟制作😝😝")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762213",gg.TYPE_DWORD)
  gg.toast("😝😝美化成功兄弟制作😝😝")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762212",gg.TYPE_DWORD)
  gg.toast("😝😝美化成功兄弟制作😝😝")
end



function c3()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762206",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762208",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762207",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762203",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762205",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762204",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end



function c4()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('642',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979842',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('570425389',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881107',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('867',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('570425392',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('570425391',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881281',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('570425388',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979833',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('603979834',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234,881,115;-990,415,696;19:41',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('234881250',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979838',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('603979839',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('469762132',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('469762130',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('637534248',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('637534247',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544345',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('869',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881155',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('617',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979835',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('603979836',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('335544418',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('603979841',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('570425390',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544344',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)gg.editAll('234881251',gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll('2080374793',gg.TYPE_DWORD)
  gg.searchNumber("469762131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("469762131", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("469762129", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("570425396", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("570425396", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("570425397", gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end




function c5()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762062",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762095",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762079",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762104",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762113",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end



function c6()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425359",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425376",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425364",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425350",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425366",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425354",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881282',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425356",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end




function c7()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425351",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425357",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425367",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425377",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end



function c8()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425352",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425355",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425360",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425361",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425362",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('603979840',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425365",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881114',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("570425378",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end



function c9()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("335544450",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("335544459",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("335544468",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("335544462",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("335544464",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end




function c10()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881106',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("603979795",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881111',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("603979786",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544431',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("603979819",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")


  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('234881115',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("603979800",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("603979780",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end




function c11()
gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('763;96',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('763',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("856",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
end



function c12()
gg.clearResults()
  gg.setRanges(1+4+32)
  gg.searchNumber('335544433',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544433',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762060",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(1+4+32)
  gg.searchNumber('570425396',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('570425396',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762077",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")

  gg.clearResults()
  gg.setRanges(1+4+32)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber('335544432',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(100)
  gg.editAll("469762111",gg.TYPE_DWORD)
  gg.toast("😜😜美化成功兄弟制作😜😜")
  gg.toast("😜😜美化成功兄弟制作😜😜")
end




function c13()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;0;-1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end



function c14()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;-1::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end



function c15()
gg.setRanges(4)
Name = "龙宝宝来喽"
local dataType = gg.TYPE_DWORD
local tb1 = {{570425344, 0}, {0, 4},{0, -4}}
local tb2 = {{570425345, 0},}
SearchWrite(tb1, tb2, dataType)
end



function d1()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.10000000149;2.45927925e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.001", gg.TYPE_FLOAT)
	 gg.toast("😜😜开启成功兄弟自制😜😜")
	 gg.clearResults()
end



function d2()
 F = gg.alert("上色", "上色一", "上色二")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.25000023842;2.25000119209;112D::105", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2.25000023842;2.25000119209", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(25)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,192D;1,194,363,394D;0D;1,280D;5D;-1,597,960,448D;1,812,070,403D;1,342,703,619D;271,618,083D;1,661,044,739D;270,532,611D;1,080,559,619D;196,608D;1,080,035,584D;196,610D;1,080,035,330D;270,794,752D;1,080,560,131D::", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("-99",gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
end
end


function d3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.75;0.60000002384;0.20000000298;0.64200001955',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.75', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll('0.1', gg.TYPE_FLOAT)
  gg.toast('😜😜开启成功😜😜')
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24d;5d;50;22;15',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('22', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll('1', gg.TYPE_FLOAT)
  gg.toast('😜😜开启成功😜😜')
end



function d4()
gg.clearResults()
gg.setRanges(131072 )
gg.searchNumber("88.15017700195;15:512",16 ,false ,536870912 ,0 ,-1 )
gg.searchNumber("15",16 ,false ,536870912 ,0 ,-1 )
gg.getResults(2 )
gg.editAll("400",16 )
gg.clearResults()
gg.setRanges(32 )
gg.searchNumber("-88.66608428955;26:512",16 ,false ,536870912 ,0 ,-1 )
gg.searchNumber("26",16 ,false ,536870912 ,0 ,-1 )
gg.getResults(2 )
gg.editAll("400",16 )
gg.clearResults()
gg.setRanges(32 )
gg.searchNumber("90.4850692749;27.25;28:512",16 ,false ,536870912 ,0 ,-1 )
gg.searchNumber("27.25;28",16 ,false ,536870912 ,0 ,-1 )
gg.getResults(2 )
gg.editAll("1000",16 )
gg.clearResults()
gg.setRanges(32 )
gg.searchNumber("88.15017700195;15:512",16 ,false ,536870912 ,0 ,-1 )
gg.searchNumber("15",16 ,false ,536870912 ,0 ,-1 )
gg.getResults(2 )
gg.editAll("250",16 )
gg.clearResults()
gg.setRanges(32 )
gg.searchNumber("-88.66608428955;26:512",16 ,false ,536870912 ,0 ,-1 )
gg.searchNumber("26",16 ,false ,536870912 ,0 ,-1 )
gg.getResults(2 )
gg.editAll("888",16 )
gg.clearResults()
gg.setRanges(32 )
gg.searchNumber("90.4850692749;27.25;28:512",16 ,false ,536870912 ,0 ,-1 )
gg.searchNumber("27.25;28",16 ,false ,536870912 ,0 ,-1 )
gg.getResults(2 )
gg.editAll("888",16 )
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
end


function d5()
  F = gg.alert("开镜路飞", "开镜向上路飞", "开镜望眼镜")
  if F == 1 then
qmnb = {
{["memory"] = 32},
{["name"] = "开镜向上路飞"},
{["value"] = -2.0, ["type"] = 16},
{["lv"] = -45.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 45.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = 12, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 16, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 16, ["type"] = 16},
}
xqmnb(qmnb)
  elseif F == 2 then
qmnb = {
{["memory"] = 32},
{["name"] = "开镜望远镜"},
{["value"] = -2.0, ["type"] = 16},
{["lv"] = -45.0, ["offset"] = 4, ["type"] = 16},
{["lv"] = 45.0, ["offset"] = 8, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = 20, ["type"] = 16},
}
xqmnb(qmnb)
  end
end



function d6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("😜😜开启成功😜😜")
else
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end
end



function d7()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.4",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("全身范围开启成功")
gg.clearResults()
end
end



function d8()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-3.9317155e31;-3.7480982e31;-9.5549186e20;-3.7084839e31;-7.2190236e31;1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1.2",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end



function d9()
gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.0F;0.40000000596F;999.0F;0.0F:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1.5", gg.TYPE_FLOAT)
  gg.toast("😜😜开启成功😜😜")
end


function d10()
  F = gg.alert("人物上色", "白", "普通")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
  elseif F == 2 then
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.25000023842;2.25000119209:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.25000023842;2.25000119209", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(16)
gg.editAll("8", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
gg.setVisible(false)
  end
end




function d11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end



function d12()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("4.79615515e21F;659,497;1,669,464,072;1.89469565e-40F::", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,669,464,072", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1,669,464,076",gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
end



function d13()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = "350"}})
end
gg.toast("😜😜开启成功破晓制作😜😜")
gg.clearResults()
end



function d14()
qmnb = {
{["memory"] = 32},
{["name"] = "飞碟速度"},
{["value"] = 430.0, ["type"] = 16},
{["lv"] = 300.0, ["offset"] = -16, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = -8, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -36, ["type"] = 16},
{["value"] = 100, ["offset"] = -32, ["type"] = 16},
{["value"] = 100, ["offset"] = -28, ["type"] = 16},
{["value"] = 100, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
end

function d15()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(299)
	 sl=gg.getResultCount(299)
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("😜😜开启成功😜😜")
	 gg.clearResults()
end


function e1()
qmnb = {
{["memory"] = 32},
{["name"] = "机甲移速"},
{["value"] = 1.7999999523162842, ["type"] = 16},
{["lv"] = 8.0, ["offset"] = 20, ["type"] = 16},
{["lv"] = 6.0, ["offset"] = 24, ["type"] = 16},
{["lv"] = 4.0, ["offset"] = 28, ["type"] = 16},
}
qmxg = {
{["value"] = 99, ["offset"] = 20, ["type"] = 16},
{["value"] = 99, ["offset"] = 24, ["type"] = 16},
{["value"] = 99, ["offset"] = 28, ["type"] = 16},
}
xqmnb(qmnb)
end


function e2()
qmnb = {
{["memory"] = 32},
{["name"] = "机甲跳跃高度"},
{["value"] = 1.7999999523162842, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -224, ["type"] = 16},
{["lv"] = 2.5, ["offset"] = -228, ["type"] = 16},
}
qmxg = {
{["value"] = 50, ["offset"] = -216, ["type"] = 16},
{["value"] = 50, ["offset"] = -220, ["type"] = 16},
{["value"] = 50, ["offset"] = -224, ["type"] = 16},
{["value"] = 50, ["offset"] = -228, ["type"] = 16},
}
xqmnb(qmnb)

end


function e3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30;0;0;1;1;1::21", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20;0;0;1;1;1::21", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
end



function e4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;0;0;1;1;1::21", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9;0;0;1;1;1::21", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
end



function e5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;41;30;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_DWORD)
gg.toast("M416子弹秒人开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,029,785,518;41;30;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("60", gg.TYPE_DWORD)
gg.toast("SCAR子弹秒人开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,027,101,164;41;30;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("61", gg.TYPE_DWORD)
gg.toast("M16A4子弹秒人开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;41;30;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("60", gg.TYPE_DWORD)
gg.toast("AUG子弹秒人开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,029,785,518;41;30;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("60", gg.TYPE_DWORD)
gg.toast("QBZ子弹秒人开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;46;30;::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("46", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("67", gg.TYPE_DWORD)
gg.toast("AK47子弹秒人开启成功")
gg.clearResults()
gg.searchNumber("2;1.5;1;0.5;0.7::17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("秒杀开启成功")
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("00000000h;1F~10000F;44160000h;43480000h::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DWORD)
	 gg.toast("秒杀开启")
	 gg.clearResults()
end



function e6()
  F = gg.alert('变大蘑菇套装', '变大5倍', '无限时间', '血量变大')
    if F == 1 then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('2.5F;0.47999998927F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('2.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('5', gg.TYPE_FLOAT)
      gg.toast('变大5倍')
    elseif F == 2 then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('60.0F;0.47999998927F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('60', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('3600', gg.TYPE_FLOAT)
      gg.toast('无限时间')
    elseif F == 3 then
      gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber('100.0F;0.47999998927F::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber('100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      gg.getResults(10)
      gg.editAll('999', gg.TYPE_FLOAT)
      gg.toast('血量超大')
    end
end


function e7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10.0F;3.6013371e-43F;400.0F:13',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('10.0F;400',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('0',gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")
end



function e8()
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("99", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1091567616~1140457472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1101004800;1140457472;1091567616;1112014848:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1112014848", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-2", gg.TYPE_DWORD)
gg.toast("😜😜开启成功😜😜")
gg.clearResults()
end



function e9()
 F = gg.alert("飞高高不停（做用是在地上飞高高不会停，如果没有就多开几次）", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.4999999702;0.07999999821;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.999913", gg.TYPE_FLOAT)
    gg.toast("开启成功")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.999913", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.07999999821", gg.TYPE_FLOAT)
    gg.toast("关闭成功")
  end
end



function e10()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('3;100;0.5;0.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(9999)
gg.toast("😜😜开启成功😜😜")

gg.clearResults()
gg.setRanges(32)
gg.searchNumber('3;100;0.5;0.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("312", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")

gg.clearResults()
gg.setRanges(32)
gg.searchNumber('312;100;0.5;0.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9123.6", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜😜")

gg.clearResults()
gg.setRanges(32)
gg.searchNumber('312;9123.6;0.5;0.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("😜😜开启成功😜")

qmnb = {
{["memory"] = 32},
{["name"] = "弓箭伤害"},
{["value"] = 140, ["type"] = 4},
{["lv"] = 1060320051, ["offset"] = -116, ["type"] = 4},
{["lv"] = 1060320051, ["offset"] = -100, ["type"] = 4},
{["lv"] = 60, ["offset"] = -88, ["type"] = 4},
{["lv"] = 1, ["offset"] = -84, ["type"] = 4},
{["lv"] = 1, ["offset"] = -60, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = 0, ["type"] = 4},
{["value"] = 1400, ["offset"] = -88, ["type"] = 4},
}
xqmnb(qmnb)

end



function e11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;41;30;750::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,029,785,518;41;30;600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9999",gg.TYPE_DWORD)
gg.toast("scad子弹秒车开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,027,101,164;41;30;800::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_DWORD)
gg.toast("M16A4子弹秒车开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,028,443,341;41;30;670::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_DWORD)
gg.toast("AUG子弹秒车开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,029,785,518;41;30;650::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9999",gg.TYPE_DWORD)
gg.toast("QBZ子弹秒车开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
gg.searchNumber("1,028,443,341;44;30;700::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("44", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("999",gg.TYPE_DWORD)
gg.toast("AK47子弹秒车开启成功")
end



function e12()
gg.clearResults ()
  gg.setRanges(1048576)
  gg.searchNumber("987,241D;983,055D;3.25;128D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("987241", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("物品上色开启成功")
  gg.clearResults()
  end



function e13()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.8025969e-43F;3.6013371e-43F;4.2038954e-45F;3.0F:17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3479)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults() 
end



function e14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("90", gg.TYPE_DWORD)
gg.toast("开启成功")
end



function e15()
qmnb = {
{["memory"] = 32},
{["name"] = "视野扩大"},
{["value"] = -1.0112416930496693E-4, ["type"] = 16},
{["lv"] = 2.3694278276172396E-38, ["offset"] = 16, ["type"] = 16},
{["lv"] = 1.401298464324817E-45, ["offset"] = 20, ["type"] = 16},
}
qmxg = {
{["value"] = 3.0, ["offset"] = 64, ["type"] = 16},
{["value"] = 3.0, ["offset"] = 68, ["type"] = 16},
}
xqmnb(qmnb)
end
function e16()
qmnb = {
{["memory"] = 32},
{["name"] = "机甲弹射距离"},
{["value"] = 1.7999999523162842, ["type"] = 16},
{["lv"] = 30.0, ["offset"] = 36, ["type"] = 16},
}
qmxg = {
{["value"] = 250, ["offset"] = 36, ["type"] = 16},
}
xqmnb(qmnb)
end



function Exit()
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '玩机家园免费分享www.wjjy8.com'
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










