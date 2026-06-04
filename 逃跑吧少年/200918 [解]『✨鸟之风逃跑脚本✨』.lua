function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("🕹:修改"..#data.."条数据.开启成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("🕹:搜索0条数据.修改失败", false) return false end else gg.toast("🕹:搜索0条数据.修改失败") return false end end
  gg.alert("欢迎使用鸟之风逃跑脚本🔥")
function Main()
  menu = gg.choice({
    "✨🔥稳定区✨🔥",
    "✨🔥防封区✨🔥",
    "✨🔥自调区✨🔥",
    "✨🔥速刷区✨🔥",
    "✨🔥变态区✨🔥",
    "✨🔥天赋区✨🔥",
    "✨🔥道具皮肤区✨🔥",
    "✨🔥角色皮肤区✨🔥",
    "✨🔥封号机制✨🔥",
    "✨🔥坑队友区✨🔥",
    "✨🔥修改道具等级教程✨🔥",
    "✨🔥时间宝石✨🔥",
    "✨🔥残念脚本模式✨🔥",
    "✨🔥鸟之风自建房脚本模式✨🔥",
    "✨🔥设备解封区✨🔥",
    "✨💫退出脚本💫✨"
}, nil, os.date("此脚本由鸟之风制作并非二改，倒卖二改死全家，温馨提醒\n目前时间:\n%Y年/️%m月/%d日️\n%H:%M:%S搬运留名，不留死全家"))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then E() end
if menu == 4 then C() end
if menu == 5 then D() end
if menu == 6 then F() end
if menu == 7 then G() end
if menu == 8 then J() end
if menu == 9 then Y() end
if menu == 10 then X() end
if menu == 11 then WE() end
if menu == 12 then SJ() end
if menu == 13 then NB() end
if menu == 14 then XS() end
if menu == 15 then DS() end
if menu == 16 then Exit() end
XGCK=-1
end



function A()
gg.toast("欢迎进入稳定区✨🔥")
menu1 = gg.multiChoice({
"✨🔥1.8倍开锁✨🔥",
"✨🔥2.8倍开锁✨🔥",
"✨🔥自调开锁✨🔥",
"✨🔥疾跑二倍✨🔥",
"✨🔥疾跑跳高60秒✨🔥",
"✨🔥疾跑跳高无限（用端口)✨🔥",
"✨🔥黑暗透视✨🔥",
"✨🔥禁闭室无限时间（游戏开）【自测稳定】✨🔥",
"✨🔥逃生锁满血【要演】（一些手机可能闪退）✨🔥",
"✨🔥苟分的方法✨🔥",
"✨🔥火箭筒稳定伤害✨🔥",
"✨🔥火箭简0.38间隔✨🔥",
	 "✨🔥大视野（一局一开）【也可以说是光明透视】✨🔥",
	 "✨🔥高视角（一局一开）【也可以说是上帝视角】✨🔥",
	 "✨🔥微范围开锁（全局有效）✨🔥",
	 "✨🔥定人下载链接复制【源码】✨🔥",
	 "✨🔥端口下载链接复制✨🔥",
'返回上一页'},
nil,'端口+此区+演=稳')
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
if menu1[18] == true then HOME() end
end
GLWW=-1
end

function B()
gg.toast("欢迎进入防封区✨🔥")
menu1 = gg.multiChoice({
  "✨🔥游客设备解封(解封完毕手动退出换号,只支持4399)✨🔥",
  "✨🔥一键内防✨🔥",
  "✨🔥防封（一局一开）✨🔥",
  "✨🔥a内存防封✨🔥",
  "✨🔥大厅防封✨🔥",
  "✨🔥防封1【可能闪退】✨🔥", 
  "✨🔥防封2【可能闪退】✨🔥",
  "✨🔥内存防封【大厅开】✨🔥",
  '✨🔥返回上一页✨🔥'},
nil,'不要开变态，部分功能可能闪退，加拦截会更好')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end


function E()
gg.toast("欢迎进入自调区✨🔥")
menu1 = gg.multiChoice({
"✨🔥火箭筒伤害[自调]✨🔥",
"✨🔥迫击炮伤害[自调]✨🔥",
"✨🔥火箭筒间隔[自调]✨🔥",
"✨🔥迫击炮间隔[自调]✨🔥",
"✨🔥(1级)迫击炮子弹数量[自调]✨🔥",
"✨🔥(2级)迫击炮子弹数量[自调]✨🔥",
"✨🔥(3级)迫击炮子弹数量[自调]✨🔥",
"✨🔥火箭筒子弹数量[自调]✨🔥",
"✨🔥疾跑时间[自调]✨🔥",
"✨🔥手雷伤害[自调]✨🔥",
"✨🔥开锁速度[自调]✨🔥",
"✨🔥疾跑速度[自调]✨🔥",
"✨🔥跳高高度[自调]✨🔥",
"✨🔥开锁范围[自调]✨🔥",
"✨🔥救人范围[自调]✨🔥",
"✨🔥开补给箱范围[自调]✨🔥";
'✨🔥返回上一页✨🔥'},
nil,'想改多少就改多少，我会说稳定数值')
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



function C()
gg.toast("欢迎进入速刷区✨🔥")
menu1 = gg.multiChoice({
"✨🔥【新版】秒开✨🔥",
"✨🔥全屏开锁✨🔥",
"✨🔥疾跑跳高一键✨🔥",
"✨🔥锁血✨🔥",
"✨🔥倒地复活✨🔥",
"✨🔥复活锁血✨🔥",
'✨🔥返回上一页✨🔥'},
nil,'不稳定，适应带人上分（不要相信带的那个人会封号我带我朋友他也没封）')
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
gg.toast("欢迎进入变态区✨🔥")
menu1 = gg.multiChoice({
  "✨🔥火箭筒没有间隔(大厅) ✨🔥",
  "✨🔥火箭筒无后坐力(大厅) ✨🔥",
  "✨🔥火箭筒变态伤害(大厅) ✨🔥",
  "✨🔥火箭筒攻击长度(游戏)✨🔥 ",
  "✨🔥火箭筒秒换子弹(大厅) ✨🔥",
  "✨🔥火箭筒无限弹夹(游戏) ✨🔥",
  "✨🔥迫击炮秒杀伤害(大厅)✨🔥 ",
  "✨🔥迫击炮没有间隔(大厅)✨🔥 ",
  "✨🔥迫击炮全屏伤害(游戏) ✨🔥",
  "✨🔥追捕者透视(游戏) ✨🔥",
  "✨🔥4V1直开门(游戏) ✨🔥",
  "✨🔥8V2直开门(游戏)✨🔥 ",
  "✨🔥皮卡无限(大厅) ✨🔥",
  "✨🔥无限金币(游戏) ✨🔥",
  "✨🔥倒地复活(游戏) ✨🔥",
  "✨🔥倒地锁血(游戏) ✨🔥",
  "✨🔥无限夹子(游戏)✨🔥 ",
  "✨🔥架子范围(游戏)✨🔥 ",
  "✨🔥人物穿墙(游戏)✨🔥 ",
  "✨🔥八二吸人(游戏)✨🔥 ",
  "✨🔥四一吸人(游戏)✨🔥 ",
  "✨🔥除树除草(大厅)✨🔥 ",
  "✨🔥跳高改无敌(大厅)✨🔥 ",
  "✨🔥疾跑改无敌(大厅)✨🔥 ",
  "✨🔥跳高改狂暴(大厅)✨🔥 ",
  "✨🔥手雷改泉水(大厅)✨🔥 ",
  "✨🔥追捕秒复活(游戏)✨🔥 ",
  "✨🔥追捕去护盾(游戏) ✨🔥",
  "✨🔥追捕无限护盾(游戏) ✨🔥",
  "✨🔥上帝视角[2倍](游戏) ✨🔥",
  "✨🔥上帝视角[5倍](游戏) ✨🔥",
  "✨🔥人物踏空(游戏) ✨🔥",
  "✨🔥逃生0血不死✨🔥",
  "✨🔥返回主页✨🔥",
}, nil, "变态区，适合娱乐")
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
if menu1[16] == true then d16() end
if menu1[17] == true then d17() end
if menu1[18] == true then d18() end
if menu1[19] == true then d19() end
if menu1[19] == true then d19() end
if menu1[20] == true then d20() end
if menu1[21] == true then d21() end
if menu1[22] == true then d22() end
if menu1[23] == true then d23() end
if menu1[24] == true then d24() end
if menu1[25] == true then d25() end
if menu1[26] == true then d26() end
if menu1[27] == true then d27() end
if menu1[28] == true then d28() end
if menu1[29] == true then d29() end
if menu1[30] == true then d30() end
if menu1[31] == true then d31() end
if menu1[32] == true then d32() end
if menu1[33] == true then d33() end
if menu1[34] == true then HOME() end
end
GLWW=-1
end

function F()
gg.toast("欢迎进入天赋区✨🔥")
menu1 = gg.multiChoice({
	 "✨🔥失忆者全天赋【第一步】✨🔥",
	 "✨🔥失忆者全天赋【第二步】✨🔥",
	 "✨🔥失忆者全天赋【第三步】✨🔥",
	 "✨🔥雇佣兵全天赋【第一步】✨🔥",
	 "✨🔥雇佣兵全天赋【第二步】✨🔥",
	 "✨🔥雇佣兵全天赋【第三步】✨🔥",
	 "✨🔥艾可全天赋【第一步】✨🔥",
	 "✨🔥艾克全天赋【第二步】✨🔥",
	 "✨🔥艾可全天赋【第三步】✨🔥",
	 "✨🔥发明家全天赋【第一步】✨🔥",
	 "✨🔥发明家全天赋【第二步】✨🔥",
	 "✨🔥发明家全天赋【第三步】✨🔥",
	 "✨🔥机器人全天赋【第一步】✨🔥",
	 "✨🔥机器人全天赋【第二步】✨🔥",
	 "✨🔥机器人全天赋【第三步】✨🔥",
	 "✨🔥魔术师全天赋【第一步】✨🔥",
	 "✨🔥魔术师全天赋【第二步】✨🔥",
	 "✨🔥魔术师全天赋【第三步】✨🔥",
	 "✨🔥女特工全天赋【第一步】✨🔥",
	 "✨🔥女特工全天赋【第二步】✨🔥",
	 "✨🔥女特工全天赋【第三步】✨🔥",
	 "返回主页",
}, nil, "没有角色就卡角色")
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then f7() end
if menu1[8] == true then f8() end
if menu1[9] == true then f9() end
if menu1[10] == true then f10() end
if menu1[11] == true then f11() end
if menu1[12] == true then f12() end
if menu1[13] == true then f13() end
if menu1[14] == true then f14() end
if menu1[15] == true then f15() end
if menu1[16] == true then f16() end
if menu1[17] == true then f17() end
if menu1[18] == true then f18() end
if menu1[19] == true then f19() end
if menu1[19] == true then f19() end
if menu1[20] == true then f20() end
if menu1[21] == true then HOME() end
end
GLWW=-1


 function G()
 gg.toast("欢迎进入道具皮肤区✨🔥")
menu1 = gg.multiChoice({
'✨🔥疾跑满级皮肤✨🔥',
'✨🔥手雷满级皮肤✨🔥',
'✨🔥火箭筒满级皮肤[有五个道具卡的时候开](升级也还是满级皮肤)✨🔥',
'✨🔥火箭筒满级皮肤(升级的话皮肤就会变会原来的样子)✨🔥',
'✨🔥火箭筒满级皮肤[有十九个道具卡的时候开](升级还是满级皮肤)✨🔥',
'✨🔥跳高满级皮肤✨🔥',
'✨🔥医疗箱满级皮肤✨🔥',
'✨🔥皮卡满级皮肤✨🔥',
'✨🔥侦查眼满级皮肤✨🔥',
'✨🔥冲锋枪满级皮肤(升级的话皮肤就会变成原来的样子)✨🔥',
'✨🔥酒桶满级皮肤✨🔥',
'✨🔥自走球满级皮肤✨🔥',
'✨🔥阻挡箱满级皮肤✨🔥',
'✨🔥传送门满级皮肤✨🔥',
'✨🔥飞爪满级皮肤✨🔥',
'✨🔥巡逻犬满级皮肤✨🔥',
'✨🔥返回上一页✨🔥'},
nil,'要用初始皮肤才能改，只能自建房用')
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then g4() end
if menu1[5] == true then g5() end
if menu1[6] == true then g6() end
if menu1[7] == true then g7() end
if menu1[8] == true then g8() end
if menu1[9] == true then g9() end
if menu1[10] == true then g10() end
if menu1[11] == true then g11() end
if menu1[12] == true then g12() end
if menu1[13] == true then g13() end
if menu1[14] == true then g14() end
if menu1[15] == true then g15() end
if menu1[16] == true then g16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end


function J()
gg.toast("欢迎进入角色皮肤区✨🔥")
menu1 = gg.multiChoice({
'✨🔥夜行套装（逃生者）✨🔥',
'✨🔥幻影套装（逃生者）✨🔥',
'✨🔥疾风套装（逃生者）✨🔥',
'✨🔥传说拳击大师套装（逃生者）✨🔥',
'✨🔥假面套装（逃生者）✨🔥',
'✨🔥传说未来套装（逃生者）✨🔥',
'✨🔥绝版新年套装（逃生者）✨🔥',
'✨🔥绝版新年套装恢复（逃生者）✨🔥',
'✨🔥绝版传说夜行套装（逃生者）✨🔥',
'✨🔥绝版追逐套装（追捕者）✨🔥',
'✨🔥绝版史诗夜行套装（逃生者）✨🔥',
'✨🔥返回上一页✨🔥'},
nil,'记住要用新手套装才能开功能哦，只能自建房用')
if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then j9() end
if menu1[10] == true then j10() end
if menu1[11] == true then j11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end

function a1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.8", gg.TYPE_FLOAT)
gg.toast("1.8倍开锁开启成功")
end



function a2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.8", gg.TYPE_FLOAT)
gg.toast("2.8倍开锁开启成功")
end



function a3()
input4 = gg.prompt({"输入你要修改的倍速，稳定的范围是1到3之间"},{[1]=3},{[1]="number"});
     gg.toast("加载数据中...")
     gg.setRanges(32)
	 gg.searchNumber("1D;4;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.refineNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(input4[1], gg.TYPE_FLOAT)
	 gg.toast("加载完成")
	 gg.clearResults()
end



function a4()
gg.clearResults()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("疾跑加速开启成功")
  gg.clearResults()
end



function a5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("疾跑60秒开启成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60", gg.TYPE_FLOAT)
	 gg.toast("跳高60秒开启成功")
	 gg.clearResults()
end



function a6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("疾跑开启成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("跳高开启成功")
	 gg.clearResults()
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;8.0;1,082,467,303D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("透视开启成功")
end



function a8()
gg.setRanges(32)
	 gg.searchNumber("60;45;30;15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end



function a9()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("锁血成功")
	 gg.clearResults()
end


function a10()
 gg.alert("开稳定区的逃生锁满血和黑暗透视，然后随便找个草丛蹲着，追捕者过来了就走，等队友开完锁再冲出去直奔逃生门，如果队友全死了，那我也没办法")
end
	 
function a11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 80}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function a12()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.38", gg.TYPE_FLOAT)
gg.toast("火箭筒0.38间隔开启成功")
gg.clearResults()
end


function a13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("16.62690544128", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("大视野启动成功")
	 gg.clearResults()
end

function a14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("高视角修改成功")
	 gg.clearResults()
end

function a15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.1", gg.TYPE_FLOAT)
	 gg.toast("微范围开锁修改成功")
	 gg.clearResults()
end


function a16()
	gg.copyText("https://www.lanzoui.com/izIr3go5xib 密码:NZFNB")
gg.toast("复制下载位置成功")
end

function a17()
	 gg.copyText("https://www.lanzoui.com/ivyc7go5xpi 密码:NZFNB")
gg.toast("复制下载位置成功")
end



function b1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("设备进行")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("逐步渐发")
gg.toast("已开启")
gg.getResults(100)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast("解封设备已开启")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("鸟之风科技")
gg.toast("解封")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("鸟之风制作")
gg.toast("解封成功")
gg.getResults(100)
gg.editAll("123", gg.TYPE_FLOAT)
gg.toast("解封第二步")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("解封设备中")
gg.toast("加载")
gg.toast("鸟之风科技")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("解封加载中")
gg.toast("离成功有99%")
gg.toast("已成功")
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("已开启")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("会闪退")
gg.toast("会闪退")
gg.toast("会闪退")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("小心闪退")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("有闪退")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.06", gg.TYPE_FLOAT)
gg.toast("闪退")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1,077,936,128;3.0F",
gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("有闪退")
gg.searchNumber("3.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.0001", gg.TYPE_FLOAT)
gg.toast("闪退成功")	 
gg.clearResults()
end



function b2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("内存防封开启成功")
gg.clearResults()
end



function b3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("40", gg.TYPE_FLOAT)
	 gg.toast("防封（一局一开）开启成功")
	 gg.clearResults()
end



function b4()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30000~40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000~40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("a内存防封一")
	 gg.clearResults()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000~70000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 4}})
	 end
	 gg.toast("a内存防封二")
	 gg.clearResults()
end



function b5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第一步成功")
gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第二步成功")
gg.searchNumber("30094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第三步成功")
gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第四步成功")
gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第五步成功")
gg.searchNumber("32777", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第六步成功")
gg.searchNumber("30,030;30,029", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.addListItems({ -- table(bc7064f)
	[1] = { -- table(7c3f1dc)
		['address'] = 0x5f918ee0,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.addListItems({ -- table(e4732e5)
	[1] = { -- table(7f0a1ba)
		['address'] = 0x5f918ef0,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第七步成功")
gg.searchNumber("30,034", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.addListItems({ -- table(28c4fc8)
	[1] = { -- table(2bd1861)
		['address'] = 0x5f918f30,
		['flags'] = 4, -- gg.TYPE_DWORD
		['freeze'] = true,
		['value'] = 0,
	},
})
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("第八步成功")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2.4", gg.TYPE_FLOAT)
gg.toast("第九步成功")
gg.searchNumber("4.3;-0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("30", gg.TYPE_FLOAT)
gg.toast("成功")
end



function b6()
	  gg.clearResults()	 
		 gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)	 
	 gg.toast("设置中")
	 gg.toast("进度")
	 gg.toast("61%")
	 gg.toast("200%")
	 gg.toast("2000%")		 
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)	
	gg.toast("防封开启％10.")
	gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";Cheat",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll(";0", gg.TYPE_WORD)
	gg.toast("防封开启％20")
	gg.toast("防封开启％40")
	gg.setRanges(gg.REGION_CODE_APP)
	gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";http://",gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0",gg.TYPE_WORD)
	gg.toast("删除检测中％50")	 
	 	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("内存防封％60")
		 gg.searchNumber("2020;-1,431,655,766",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast("内存检测正在删除％90")
gg.searchNumber("2020;2019;3",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(1000)
	 sl=gg.getResultCount() 
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = "0"}})
	 	 end
gg.toast("％100防封开启成功！")	
 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10000)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防封1开启成功")	 
end



function b7()
 gg.toast("获取文件中(不是删手机重要文件)")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
gg.sleep(1500)
gg.toast("获取成功,封号文件名为game_log.txt")
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
gg.sleep(800)
gg.toast("删除封号残留文件成功")
gg.sleep(500)
gg.toast("获取追封文件中")
gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(32)
os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
gg.toast("获取成功,已删除追封文件")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("全网新防封开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("防封开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("1小时封号文件已删除")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("一天封号文件已删除")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("七天封号文件删除")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -999}})
	 end
	 gg.toast("10年封号文件已删除")
	 gg.clearResults()
gg.sleep(800)
gg.toast("防封2开启成功")
end


function b8()
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 21006, ["type"] = 4},
{["lv"] = 13985, ["offset"] = -20, ["type"] = 4},
{["lv"] = 13986, ["offset"] = -8, ["type"] = 4},
{["lv"] = 185, ["offset"] = -4, ["type"] = 4},
{["lv"] = 13987, ["offset"] = 4, ["type"] = 4},
{["lv"] = 94, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 21006, ["type"] = 4},
{["lv"] = 230, ["offset"] = -8, ["type"] = 4},
{["lv"] = 28318, ["offset"] = -4, ["type"] = 4},
{["lv"] = 0, ["offset"] = 4, ["type"] = 4},
{["lv"] = 28319, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封第一步开启成功"},
{["value"] = 21006, ["type"] = 4},
{["lv"] = 20989, ["offset"] = -68, ["type"] = 4},
{["lv"] = 20990, ["offset"] = -64, ["type"] = 4},
{["lv"] = 20991, ["offset"] = -60, ["type"] = 4},
{["lv"] = 20992, ["offset"] = -56, ["type"] = 4},
{["lv"] = 20993, ["offset"] = -52, ["type"] = 4},
{["lv"] = 20994, ["offset"] = -48, ["type"] = 4},
{["lv"] = 20995, ["offset"] = -44, ["type"] = 4},
{["lv"] = 20996, ["offset"] = -40, ["type"] = 4},
{["lv"] = 20997, ["offset"] = -36, ["type"] = 4},
{["lv"] = 20998, ["offset"] = -32, ["type"] = 4},
{["lv"] = 20999, ["offset"] = -28, ["type"] = 4},
{["lv"] = 21000, ["offset"] = -24, ["type"] = 4},
{["lv"] = 21001, ["offset"] = -20, ["type"] = 4},
{["lv"] = 21002, ["offset"] = -16, ["type"] = 4},
{["lv"] = 21003, ["offset"] = -12, ["type"] = 4},
{["lv"] = 21004, ["offset"] = -8, ["type"] = 4},
{["lv"] = 21005, ["offset"] = -4, ["type"] = 4},
{["lv"] = 21007, ["offset"] = 4, ["type"] = 4},
{["lv"] = 21008, ["offset"] = 8, ["type"] = 4},
{["lv"] = 21009, ["offset"] = 12, ["type"] = 4},
{["lv"] = 21010, ["offset"] = 16, ["type"] = 4},
{["lv"] = 21011, ["offset"] = 20, ["type"] = 4},
{["lv"] = 21012, ["offset"] = 24, ["type"] = 4},
{["lv"] = 21013, ["offset"] = 28, ["type"] = 4},
{["lv"] = 21014, ["offset"] = 32, ["type"] = 4},
{["lv"] = 21015, ["offset"] = 36, ["type"] = 4},
{["lv"] = 21016, ["offset"] = 40, ["type"] = 4},
{["lv"] = 21017, ["offset"] = 44, ["type"] = 4},
{["lv"] = 21018, ["offset"] = 48, ["type"] = 4},
{["lv"] = 21019, ["offset"] = 52, ["type"] = 4},
{["lv"] = 21020, ["offset"] = 56, ["type"] = 4},
{["lv"] = 21021, ["offset"] = 60, ["type"] = 4},
{["lv"] = 21022, ["offset"] = 64, ["type"] = 4},
{["lv"] = 21023, ["offset"] = 68, ["type"] = 4},
{["lv"] = 21024, ["offset"] = 72, ["type"] = 4},
{["lv"] = 21025, ["offset"] = 76, ["type"] = 4},
{["lv"] = 21026, ["offset"] = 80, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 19000, ["type"] = 4},
{["lv"] = -509550577, ["offset"] = -20, ["type"] = 4},
{["lv"] = -353303766, ["offset"] = -16, ["type"] = 4},
{["lv"] = 23364564, ["offset"] = -12, ["type"] = 4},
{["lv"] = 605060, ["offset"] = -8, ["type"] = 4},
{["lv"] = 23364528, ["offset"] = -4, ["type"] = 4},
{["lv"] = 23364492, ["offset"] = 4, ["type"] = 4},
{["lv"] = 125020, ["offset"] = 8, ["type"] = 4},
{["lv"] = 23364148, ["offset"] = 12, ["type"] = 4},
{["lv"] = 8368, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 19000, ["type"] = 4},
{["lv"] = 4723, ["offset"] = -16, ["type"] = 4},
{["lv"] = 18999, ["offset"] = -12, ["type"] = 4},
{["lv"] = 11988, ["offset"] = -8, ["type"] = 4},
{["lv"] = 3, ["offset"] = -4, ["type"] = 4},
{["lv"] = 11989, ["offset"] = 4, ["type"] = 4},
{["lv"] = 94, ["offset"] = 8, ["type"] = 4},
{["lv"] = 19001, ["offset"] = 12, ["type"] = 4},
{["lv"] = 11990, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 19000, ["type"] = 4},
{["lv"] = 26273, ["offset"] = -16, ["type"] = 4},
{["lv"] = 18999, ["offset"] = -12, ["type"] = 4},
{["lv"] = 5, ["offset"] = -8, ["type"] = 4},
{["lv"] = 26274, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2, ["offset"] = 4, ["type"] = 4},
{["lv"] = 26275, ["offset"] = 8, ["type"] = 4},
{["lv"] = 19001, ["offset"] = 12, ["type"] = 4},
{["lv"] = 4, ["offset"] = 16, ["type"] = 4},
{["lv"] = 26276, ["offset"] = 20, ["type"] = 4},
{["lv"] = 19002, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "第二步开启成功"},
{["value"] = 19000, ["type"] = 4},
{["lv"] = 18995, ["offset"] = -20, ["type"] = 4},
{["lv"] = 18996, ["offset"] = -16, ["type"] = 4},
{["lv"] = 18997, ["offset"] = -12, ["type"] = 4},
{["lv"] = 18998, ["offset"] = -8, ["type"] = 4},
{["lv"] = 18999, ["offset"] = -4, ["type"] = 4},
{["lv"] = 19001, ["offset"] = 4, ["type"] = 4},
{["lv"] = 19002, ["offset"] = 8, ["type"] = 4},
{["lv"] = 19003, ["offset"] = 12, ["type"] = 4},
{["lv"] = 19004, ["offset"] = 16, ["type"] = 4},
{["lv"] = 19005, ["offset"] = 20, ["type"] = 4},
{["lv"] = 19006, ["offset"] = 24, ["type"] = 4},
{["lv"] = 19007, ["offset"] = 28, ["type"] = 4},
{["lv"] = 19008, ["offset"] = 32, ["type"] = 4},
{["lv"] = 19009, ["offset"] = 36, ["type"] = 4},
{["lv"] = 19010, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 7000, ["type"] = 4},
{["lv"] = 1074921472, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1179648, ["offset"] = 4, ["type"] = 4},
{["lv"] = 7000, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1074921472, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 7000, ["type"] = 4},
{["lv"] = -527499264, ["offset"] = -100, ["type"] = 4},
{["lv"] = -409665536, ["offset"] = -96, ["type"] = 4},
{["lv"] = -443547648, ["offset"] = -92, ["type"] = 4},
{["lv"] = -443539376, ["offset"] = -88, ["type"] = 4},
{["lv"] = -443416532, ["offset"] = -84, ["type"] = 4},
{["lv"] = -481296384, ["offset"] = -80, ["type"] = 4},
{["lv"] = 167772171, ["offset"] = -76, ["type"] = 4},
{["lv"] = -443547508, ["offset"] = -72, ["type"] = 4},
{["lv"] = -481296384, ["offset"] = -68, ["type"] = 4},
{["lv"] = 361893940, ["offset"] = -64, ["type"] = 4},
{["lv"] = 324075520, ["offset"] = -60, ["type"] = 4},
{["lv"] = 167772166, ["offset"] = -56, ["type"] = 4},
{["lv"] = -443473628, ["offset"] = -52, ["type"] = 4},
{["lv"] = -443547620, ["offset"] = -48, ["type"] = 4},
{["lv"] = -476049408, ["offset"] = -44, ["type"] = 4},
{["lv"] = -514850814, ["offset"] = -40, ["type"] = 4},
{["lv"] = -1291841535, ["offset"] = -36, ["type"] = 4},
{["lv"] = -509607935, ["offset"] = -32, ["type"] = 4},
{["lv"] = -390230928, ["offset"] = -28, ["type"] = 4},
{["lv"] = -348317340, ["offset"] = -24, ["type"] = 4},
{["lv"] = -509550577, ["offset"] = -20, ["type"] = 4},
{["lv"] = -352374082, ["offset"] = -16, ["type"] = 4},
{["lv"] = 21892244, ["offset"] = -12, ["type"] = 4},
{["lv"] = 606500, ["offset"] = -8, ["type"] = 4},
{["lv"] = 21892216, ["offset"] = -4, ["type"] = 4},
{["lv"] = 21892180, ["offset"] = 4, ["type"] = 4},
{["lv"] = 53264, ["offset"] = 8, ["type"] = 4},
{["lv"] = 21892136, ["offset"] = 12, ["type"] = 4},
{["lv"] = 21891956, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 7000, ["type"] = 4},
{["lv"] = 7002, ["offset"] = 24, ["type"] = 4},
{["lv"] = 7004, ["offset"] = 48, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = 24, ["type"] = 4},
{["value"] = 0, ["offset"] = 48, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 7000, ["type"] = 4},
{["lv"] = 4385, ["offset"] = 4, ["type"] = 4},
{["lv"] = 13876, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7001, ["offset"] = 12, ["type"] = 4},
{["lv"] = 4386, ["offset"] = 16, ["type"] = 4},
{["lv"] = 13877, ["offset"] = 20, ["type"] = 4},
{["lv"] = 7002, ["offset"] = 24, ["type"] = 4},
{["lv"] = 4387, ["offset"] = 28, ["type"] = 4},
{["lv"] = 13878, ["offset"] = 32, ["type"] = 4},
{["lv"] = 7003, ["offset"] = 36, ["type"] = 4},
{["lv"] = 4388, ["offset"] = 40, ["type"] = 4},
{["lv"] = 13879, ["offset"] = 44, ["type"] = 4},
{["lv"] = 7004, ["offset"] = 48, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = 24, ["type"] = 4},
{["value"] = 0, ["offset"] = 48, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "第三步开启成功"},
{["value"] = 7000, ["type"] = 4},
{["lv"] = 6997, ["offset"] = -12, ["type"] = 4},
{["lv"] = 6998, ["offset"] = -8, ["type"] = 4},
{["lv"] = 6999, ["offset"] = -4, ["type"] = 4},
{["lv"] = 7001, ["offset"] = 4, ["type"] = 4},
{["lv"] = 7002, ["offset"] = 8, ["type"] = 4},
{["lv"] = 7003, ["offset"] = 12, ["type"] = 4},
{["lv"] = 7004, ["offset"] = 16, ["type"] = 4},
{["lv"] = 7005, ["offset"] = 20, ["type"] = 4},
{["lv"] = 7006, ["offset"] = 24, ["type"] = 4},
{["lv"] = 7007, ["offset"] = 28, ["type"] = 4},
{["lv"] = 7008, ["offset"] = 32, ["type"] = 4},
{["lv"] = 7009, ["offset"] = 36, ["type"] = 4},
{["lv"] = 7010, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = 8, ["type"] = 4},
{["value"] = 0, ["offset"] = 16, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 5225, ["type"] = 4},
{["lv"] = 1179648, ["offset"] = -12, ["type"] = 4},
{["lv"] = 5224, ["offset"] = -8, ["type"] = 4},
{["lv"] = 1074921472, ["offset"] = -4, ["type"] = 4},
{["lv"] = 1179648, ["offset"] = 4, ["type"] = 4},
{["lv"] = 5225, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1074921472, ["offset"] = 12, ["type"] = 4},
{["lv"] = 5226, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1179648, ["offset"] = 20, ["type"] = 4},
{["lv"] = 5226, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},
{["value"] = 0, ["offset"] = 8, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 5225, ["type"] = 4},
{["lv"] = 5224, ["offset"] = -12, ["type"] = 4},
{["lv"] = 2293, ["offset"] = -8, ["type"] = 4},
{["lv"] = 87, ["offset"] = -4, ["type"] = 4},
{["lv"] = 2294, ["offset"] = 4, ["type"] = 4},
{["lv"] = 208, ["offset"] = 8, ["type"] = 4},
{["lv"] = 5226, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 5225, ["type"] = 4},
{["lv"] = 12092, ["offset"] = -16, ["type"] = 4},
{["lv"] = 5224, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4067, ["offset"] = -8, ["type"] = 4},
{["lv"] = 12093, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4068, ["offset"] = 4, ["type"] = 4},
{["lv"] = 12094, ["offset"] = 8, ["type"] = 4},
{["lv"] = 5226, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 5225, ["type"] = 4},
{["lv"] = 25839, ["offset"] = -20, ["type"] = 4},
{["lv"] = 18565, ["offset"] = -16, ["type"] = 4},
{["lv"] = 3749, ["offset"] = -12, ["type"] = 4},
{["lv"] = 25840, ["offset"] = -8, ["type"] = 4},
{["lv"] = 18566, ["offset"] = -4, ["type"] = 4},
{["lv"] = 25841, ["offset"] = 4, ["type"] = 4},
{["lv"] = 18567, ["offset"] = 8, ["type"] = 4},
{["lv"] = 0, ["offset"] = 12, ["type"] = 4},
{["lv"] = 25842, ["offset"] = 16, ["type"] = 4},
{["lv"] = 18568, ["offset"] = 20, ["type"] = 4},
{["lv"] = 2813, ["offset"] = 24, ["type"] = 4},
{["lv"] = 25843, ["offset"] = 28, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "第四步开启成功"},
{["value"] = 5225, ["type"] = 4},
{["lv"] = 5200, ["offset"] = -100, ["type"] = 4},
{["lv"] = 5201, ["offset"] = -96, ["type"] = 4},
{["lv"] = 5202, ["offset"] = -92, ["type"] = 4},
{["lv"] = 5203, ["offset"] = -88, ["type"] = 4},
{["lv"] = 5204, ["offset"] = -84, ["type"] = 4},
{["lv"] = 5205, ["offset"] = -80, ["type"] = 4},
{["lv"] = 5206, ["offset"] = -76, ["type"] = 4},
{["lv"] = 5207, ["offset"] = -72, ["type"] = 4},
{["lv"] = 5208, ["offset"] = -68, ["type"] = 4},
{["lv"] = 5209, ["offset"] = -64, ["type"] = 4},
{["lv"] = 5210, ["offset"] = -60, ["type"] = 4},
{["lv"] = 5211, ["offset"] = -56, ["type"] = 4},
{["lv"] = 5212, ["offset"] = -52, ["type"] = 4},
{["lv"] = 5213, ["offset"] = -48, ["type"] = 4},
{["lv"] = 5214, ["offset"] = -44, ["type"] = 4},
{["lv"] = 5215, ["offset"] = -40, ["type"] = 4},
{["lv"] = 5216, ["offset"] = -36, ["type"] = 4},
{["lv"] = 5217, ["offset"] = -32, ["type"] = 4},
{["lv"] = 5218, ["offset"] = -28, ["type"] = 4},
{["lv"] = 5219, ["offset"] = -24, ["type"] = 4},
{["lv"] = 5220, ["offset"] = -20, ["type"] = 4},
{["lv"] = 5221, ["offset"] = -16, ["type"] = 4},
{["lv"] = 5222, ["offset"] = -12, ["type"] = 4},
{["lv"] = 5223, ["offset"] = -8, ["type"] = 4},
{["lv"] = 5224, ["offset"] = -4, ["type"] = 4},
{["lv"] = 5226, ["offset"] = 4, ["type"] = 4},
{["lv"] = 5227, ["offset"] = 8, ["type"] = 4},
{["lv"] = 5228, ["offset"] = 12, ["type"] = 4},
{["lv"] = 5229, ["offset"] = 16, ["type"] = 4},
{["lv"] = 5230, ["offset"] = 20, ["type"] = 4},
{["lv"] = 5231, ["offset"] = 24, ["type"] = 4},
{["lv"] = 5232, ["offset"] = 28, ["type"] = 4},
{["lv"] = 5233, ["offset"] = 32, ["type"] = 4},
{["lv"] = 5234, ["offset"] = 36, ["type"] = 4},
{["lv"] = 5235, ["offset"] = 40, ["type"] = 4},
{["lv"] = 5236, ["offset"] = 44, ["type"] = 4},
{["lv"] = 5237, ["offset"] = 48, ["type"] = 4},
{["lv"] = 5238, ["offset"] = 52, ["type"] = 4},
{["lv"] = 5239, ["offset"] = 56, ["type"] = 4},
{["lv"] = 5240, ["offset"] = 60, ["type"] = 4},
{["lv"] = 5241, ["offset"] = 64, ["type"] = 4},
{["lv"] = 5242, ["offset"] = 68, ["type"] = 4},
{["lv"] = 5243, ["offset"] = 72, ["type"] = 4},
{["lv"] = 5244, ["offset"] = 76, ["type"] = 4},
{["lv"] = 5245, ["offset"] = 80, ["type"] = 4},
{["lv"] = 5246, ["offset"] = 84, ["type"] = 4},
{["lv"] = 5247, ["offset"] = 88, ["type"] = 4},
{["lv"] = 5248, ["offset"] = 92, ["type"] = 4},
{["lv"] = 5249, ["offset"] = 96, ["type"] = 4},
{["lv"] = 5250, ["offset"] = 100, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 9982, ["type"] = 4},
{["lv"] = 9981, ["offset"] = -12, ["type"] = 4},
{["lv"] = 3158, ["offset"] = -8, ["type"] = 4},
{["lv"] = 42, ["offset"] = -4, ["type"] = 4},
{["lv"] = 3159, ["offset"] = 4, ["type"] = 4},
{["lv"] = 42, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9983, ["offset"] = 12, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 9982, ["type"] = 4},
{["lv"] = 9981, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4486, ["offset"] = -8, ["type"] = 4},
{["lv"] = 16907, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4, ["offset"] = 4, ["type"] = 4},
{["lv"] = 16908, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9983, ["offset"] = 12, ["type"] = 4},
{["lv"] = 0, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "第五步开启成功"},
{["value"] = 9982, ["type"] = 4},
{["lv"] = 9977, ["offset"] = -20, ["type"] = 4},
{["lv"] = 9978, ["offset"] = -16, ["type"] = 4},
{["lv"] = 9979, ["offset"] = -12, ["type"] = 4},
{["lv"] = 9980, ["offset"] = -8, ["type"] = 4},
{["lv"] = 9981, ["offset"] = -4, ["type"] = 4},
{["lv"] = 9983, ["offset"] = 4, ["type"] = 4},
{["lv"] = 9984, ["offset"] = 8, ["type"] = 4},
{["lv"] = 9985, ["offset"] = 12, ["type"] = 4},
{["lv"] = 9986, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 10005, ["type"] = 4},
{["lv"] = 31006400, ["offset"] = -12, ["type"] = 4},
{["lv"] = 9986, ["offset"] = -8, ["type"] = 4},
{["lv"] = 31020148, ["offset"] = -4, ["type"] = 4},
{["lv"] = 31006404, ["offset"] = 4, ["type"] = 4},
{["lv"] = 154882, ["offset"] = 8, ["type"] = 4},
{["lv"] = 31006408, ["offset"] = 12, ["type"] = 4},
{["lv"] = 89346, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 10005, ["type"] = 4},
{["lv"] = 10003, ["offset"] = -24, ["type"] = 4},
{["lv"] = 3180, ["offset"] = -20, ["type"] = 4},
{["lv"] = 42, ["offset"] = -16, ["type"] = 4},
{["lv"] = 10004, ["offset"] = -12, ["type"] = 4},
{["lv"] = 3181, ["offset"] = -8, ["type"] = 4},
{["lv"] = 42, ["offset"] = -4, ["type"] = 4},
{["lv"] = 3182, ["offset"] = 4, ["type"] = 4},
{["lv"] = 42, ["offset"] = 8, ["type"] = 4},
{["lv"] = 3183, ["offset"] = 16, ["type"] = 4},
{["lv"] = 42, ["offset"] = 20, ["type"] = 4},
{["lv"] = 10007, ["offset"] = 24, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 10005, ["type"] = 4},
{["lv"] = 4, ["offset"] = -20, ["type"] = 4},
{["lv"] = 10004, ["offset"] = -12, ["type"] = 4},
{["lv"] = 11, ["offset"] = -8, ["type"] = 4},
{["lv"] = 16933, ["offset"] = -4, ["type"] = 4},
{["lv"] = 4537, ["offset"] = 4, ["type"] = 4},
{["lv"] = 16934, ["offset"] = 8, ["type"] = 4},
{["lv"] = 10006, ["offset"] = 12, ["type"] = 4},
{["lv"] = 4488, ["offset"] = 16, ["type"] = 4},
{["lv"] = 16935, ["offset"] = 20, ["type"] = 4},
{["lv"] = 10007, ["offset"] = 24, ["type"] = 4},
{["lv"] = 3, ["offset"] = 28, ["type"] = 4},
{["lv"] = 16936, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["vlue"] = 10005, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 786444, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1255, ["offset"] = -8, ["type"] = 4},
{["lv"] = 500, ["offset"] = -4, ["type"] = 4},
{["lv"] = 862, ["offset"] = 4, ["type"] = 4},
{["lv"] = 44, ["offset"] = 8, ["type"] = 4},
{["lv"] = 8323086, ["offset"] = 12, ["type"] = 4},
{["lv"] = -64498, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1216563328, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1216563331, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1217677453, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1216366744, ["offset"] = 32, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = ""},
{["value"] = 10005, ["type"] = 4},
{["lv"] = 0, ["offset"] = -100, ["type"] = 4},
{["lv"] = 0, ["offset"] = -96, ["type"] = 4},
{["lv"] = 0, ["offset"] = -92, ["type"] = 4},
{["lv"] = 0, ["offset"] = -88, ["type"] = 4},
{["lv"] = 4194368, ["offset"] = -84, ["type"] = 4},
{["lv"] = 1252, ["offset"] = -80, ["type"] = 4},
{["lv"] = 20297, ["offset"] = -76, ["type"] = 4},
{["lv"] = 10000, ["offset"] = -72, ["type"] = 4},
{["lv"] = 850, ["offset"] = -68, ["type"] = 4},
{["lv"] = 59, ["offset"] = -64, ["type"] = 4},
{["lv"] = 853005, ["offset"] = -60, ["type"] = 4},
{["lv"] = 6030349, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1338658756, ["offset"] = -52, ["type"] = 4},
{["lv"] = 1338658762, ["offset"] = -48, ["type"] = 4},
{["lv"] = 1215844314, ["offset"] = -44, ["type"] = 4},
{["lv"] = 1214466172, ["offset"] = -40, ["type"] = 4},
{["lv"] = 20466, ["offset"] = -36, ["type"] = 4},
{["lv"] = 0, ["offset"] = -32, ["type"] = 4},
{["lv"] = 0, ["offset"] = -28, ["type"] = 4},
{["lv"] = 0, ["offset"] = -24, ["type"] = 4},
{["lv"] = 0, ["offset"] = -20, ["type"] = 4},
{["lv"] = 0, ["offset"] = -16, ["type"] = 4},
{["lv"] = 4259905, ["offset"] = -12, ["type"] = 4},
{["lv"] = 1255, ["offset"] = -8, ["type"] = 4},
{["lv"] = 500, ["offset"] = -4, ["type"] = 4},
{["lv"] = 862, ["offset"] = 4, ["type"] = 4},
{["lv"] = 44, ["offset"] = 8, ["type"] = 4},
{["lv"] = 918542, ["offset"] = 12, ["type"] = 4},
{["lv"] = 5833742, ["offset"] = 16, ["type"] = 4},
{["lv"] = 1341870069, ["offset"] = 20, ["type"] = 4},
{["lv"] = 1341870075, ["offset"] = 24, ["type"] = 4},
{["lv"] = 1217679375, ["offset"] = 28, ["type"] = 4},
{["lv"] = 1216366744, ["offset"] = 32, ["type"] = 4},
{["lv"] = 20518, ["offset"] = 36, ["type"] = 4},
{["lv"] = 0, ["offset"] = 40, ["type"] = 4},
{["lv"] = 0, ["offset"] = 44, ["type"] = 4},
{["lv"] = 0, ["offset"] = 48, ["type"] = 4},
{["lv"] = 0, ["offset"] = 52, ["type"] = 4},
{["lv"] = 0, ["offset"] = 56, ["type"] = 4},
{["lv"] = 4325442, ["offset"] = 60, ["type"] = 4},
{["lv"] = 1250, ["offset"] = 64, ["type"] = 4},
{["lv"] = 500, ["offset"] = 68, ["type"] = 4},
{["lv"] = 10029, ["offset"] = 72, ["type"] = 4},
{["lv"] = 852, ["offset"] = 76, ["type"] = 4},
{["lv"] = 59, ["offset"] = 80, ["type"] = 4},
{["lv"] = 984079, ["offset"] = 84, ["type"] = 4},
{["lv"] = 6358031, ["offset"] = 88, ["type"] = 4},
{["lv"] = 1345277993, ["offset"] = 92, ["type"] = 4},
{["lv"] = 1345277999, ["offset"] = 96, ["type"] = 4},
{["lv"] = 1219711043, ["offset"] = 100, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "第六步开启成功"},
{["value"] = 10005, ["type"] = 4},
{["lv"] = 9980, ["offset"] = -100, ["type"] = 4},
{["lv"] = 9981, ["offset"] = -96, ["type"] = 4},
{["lv"] = 9982, ["offset"] = -92, ["type"] = 4},
{["lv"] = 9983, ["offset"] = -88, ["type"] = 4},
{["lv"] = 9984, ["offset"] = -84, ["type"] = 4},
{["lv"] = 9985, ["offset"] = -80, ["type"] = 4},
{["lv"] = 9986, ["offset"] = -76, ["type"] = 4},
{["lv"] = 9987, ["offset"] = -72, ["type"] = 4},
{["lv"] = 9988, ["offset"] = -68, ["type"] = 4},
{["lv"] = 9989, ["offset"] = -64, ["type"] = 4},
{["lv"] = 9990, ["offset"] = -60, ["type"] = 4},
{["lv"] = 9991, ["offset"] = -56, ["type"] = 4},
{["lv"] = 9992, ["offset"] = -52, ["type"] = 4},
{["lv"] = 9993, ["offset"] = -48, ["type"] = 4},
{["lv"] = 9994, ["offset"] = -44, ["type"] = 4},
{["lv"] = 9995, ["offset"] = -40, ["type"] = 4},
{["lv"] = 9996, ["offset"] = -36, ["type"] = 4},
{["lv"] = 9997, ["offset"] = -32, ["type"] = 4},
{["lv"] = 9998, ["offset"] = -28, ["type"] = 4},
{["lv"] = 9999, ["offset"] = -24, ["type"] = 4},
{["lv"] = 10000, ["offset"] = -20, ["type"] = 4},
{["lv"] = 10001, ["offset"] = -16, ["type"] = 4},
{["lv"] = 10002, ["offset"] = -12, ["type"] = 4},
{["lv"] = 10003, ["offset"] = -8, ["type"] = 4},
{["lv"] = 10004, ["offset"] = -4, ["type"] = 4},
{["lv"] = 10006, ["offset"] = 4, ["type"] = 4},
{["lv"] = 10007, ["offset"] = 8, ["type"] = 4},
{["lv"] = 10008, ["offset"] = 12, ["type"] = 4},
{["lv"] = 10009, ["offset"] = 16, ["type"] = 4},
{["lv"] = 10010, ["offset"] = 20, ["type"] = 4},
{["lv"] = 10011, ["offset"] = 24, ["type"] = 4},
{["lv"] = 10012, ["offset"] = 28, ["type"] = 4},
{["lv"] = 10013, ["offset"] = 32, ["type"] = 4},
{["lv"] = 10014, ["offset"] = 36, ["type"] = 4},
{["lv"] = 10015, ["offset"] = 40, ["type"] = 4},
{["lv"] = 10016, ["offset"] = 44, ["type"] = 4},
{["lv"] = 10017, ["offset"] = 48, ["type"] = 4},
{["lv"] = 10018, ["offset"] = 52, ["type"] = 4},
{["lv"] = 10019, ["offset"] = 56, ["type"] = 4},
{["lv"] = 10020, ["offset"] = 60, ["type"] = 4},
{["lv"] = 10021, ["offset"] = 64, ["type"] = 4},
{["lv"] = 10022, ["offset"] = 68, ["type"] = 4},
{["lv"] = 10023, ["offset"] = 72, ["type"] = 4},
{["lv"] = 10024, ["offset"] = 76, ["type"] = 4},
{["lv"] = 10025, ["offset"] = 80, ["type"] = 4},
{["lv"] = 10026, ["offset"] = 84, ["type"] = 4},
{["lv"] = 10027, ["offset"] = 88, ["type"] = 4},
{["lv"] = 10028, ["offset"] = 92, ["type"] = 4},
{["lv"] = 10029, ["offset"] = 96, ["type"] = 4},
{["lv"] = 10030, ["offset"] = 100, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
qmnb = {
{["memory"] = 16384},
{["name"] = "防封第七步"},
{["value"] = 37565, ["type"] = 4},
{["lv"] = 5402, ["offset"] = -40, ["type"] = 4},
{["lv"] = 37562, ["offset"] = -36, ["type"] = 4},
{["lv"] = 30244, ["offset"] = -32, ["type"] = 4},
{["lv"] = 5, ["offset"] = -28, ["type"] = 4},
{["lv"] = 37563, ["offset"] = -24, ["type"] = 4},
{["lv"] = 30245, ["offset"] = -20, ["type"] = 4},
{["lv"] = 231, ["offset"] = -16, ["type"] = 4},
{["lv"] = 37564, ["offset"] = -12, ["type"] = 4},
{["lv"] = 30246, ["offset"] = -8, ["type"] = 4},
{["lv"] = 272, ["offset"] = -4, ["type"] = 4},
{["lv"] = 30247, ["offset"] = 4, ["type"] = 4},
{["lv"] = 4480, ["offset"] = 8, ["type"] = 4},
{["lv"] = 37566, ["offset"] = 12, ["type"] = 4},
{["lv"] = 30248, ["offset"] = 16, ["type"] = 4},
{["lv"] = 5, ["offset"] = 20, ["type"] = 4},
{["lv"] = 37567, ["offset"] = 24, ["type"] = 4},
{["lv"] = 30249, ["offset"] = 28, ["type"] = 4},
{["lv"] = 231, ["offset"] = 32, ["type"] = 4},
{["lv"] = 37568, ["offset"] = 36, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
end




function e1()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(400)
  fw = gg.prompt({
    i = "请输入你想要改火箭筒的伤害，稳定在80～70之间"
  }, {i = "70"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("火箭筒自调伤害")
  gg.clearResults()
end

function  e2()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  fw = gg.prompt({
    i = "请输入你想改迫击炮的伤害（无稳定）"
  }, {i = "999"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e3()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  fw = gg.prompt({
    i = "修改火箭筒间隔，最低0.38稳定"
  }, {i = "0.38"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e4()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改迫击炮间隔，0.45稳定"
  }, {i = "0.45"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e5()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改(1级)迫击炮子弹数量（无稳定）"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function  e6()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99F;3D;1F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("改善", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改(2级)迫击炮子弹数量（无稳定）"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function  e7()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99F;4D;1F;0.8F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改(3级)迫击炮子弹数量（无稳定）"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end

function  e8()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("300F;4D;3F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改火箭筒子弹数量（无稳定）"
  }, {i = "100"})
  gg.editAll(fw.i, gg.TYPE_DWORD)
  gg.toast("自调")
  gg.clearResults()
end



function  e9()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改疾跑跳高维持时间，随便改数值大要挂拦截"
  }, {i = "99999"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e10()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  fw = gg.prompt({
    i = "修改手雷伤害（无稳定）"
  }, {i = "9900"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e11()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改开锁速度(原1.2)，3以下"
  }, {i = "3"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e12()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改疾跑速度(原0.3)，1.5以下"
  }, {i = "1.5"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e13()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  fw = gg.prompt({
    i = "修改跳高高度（无稳定）"
  }, {i = "3"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e14()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("60;0.2;1.3;1::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1944)
  fw = gg.prompt({
    i = "修改开锁范围(原1.3)，3.9以下"
  }, {i = "3.9"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function  e15()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(192)
  fw = gg.prompt({
    i = "修改逃生救人|追捕拖人的范围(原1.3)，3.9以下"
  }, {i = "3.9"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end


function e16()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(104)
  fw = gg.prompt({
    i = "修改开补给箱的范围(原1.00)，5.00以下"
  }, {i = "5.00"})
  gg.editAll(fw.i, gg.TYPE_FLOAT)
  gg.toast("自调")
  gg.clearResults()
end

function c1()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.6875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("新版秒开成功")
	 gg.clearResults()
end

function c2()
gg.setRanges(32)
gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast('开启失败')else
gg.getResults(100)
gg.editAll("9000", gg.TYPE_FLOAT)end
gg.toast("全屏开锁开启成功")
end


function c3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("疾跑无限成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限成功")
	 gg.clearResults()
	 gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.toast("疾跑加速成功")
  gg.clearResults()
end


function c4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("锁血成功")
	 gg.clearResults()
end


function c5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("倒地复活开启成功")
gg.clearResults()
end


function c6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("复活锁血开启成功")
	 gg.clearResults()
end


function d1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒0间隔开启成功")
gg.clearResults()
end

function d2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.4", gg.TYPE_FLOAT)
gg.toast("无后开启成功")
gg.clearResults()
end

function d3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("火箭筒变态伤害开启成功")
gg.clearResults()
end

function d4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("火箭筒射程开启成功")
	 gg.clearResults()
end

function d5()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒秒换弹修改成功")
gg.clearResults()
end

function d6()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1D;444444;444445;1D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_DWORD)
gg.toast("火箭筒无限子弹修改成功")
gg.clearResults()
end

function d7()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999", gg.TYPE_FLOAT)
gg.toast("迫击炮变态伤害开启成功")
gg.clearResults()
end

function d8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99", gg.TYPE_FLOAT)
	 gg.toast("迫击炮无间隔开启成功")
	 gg.clearResults()
end

function d9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("追击炮全屏范围开启成功")
	 gg.clearResults()
end

function d10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;1,082,467,303D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("追捕透视开启成功")
	 gg.clearResults()
end

function d11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4V1直接开门开启成功")
end

function d12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8人秒到逃生门")
end

function d13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("皮卡无限时间开启成功")
	 gg.clearResults()
end

function d14()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("444444D;70F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_DWORD)
gg.toast("无限金币开启成功")
gg.clearResults()
end

function d15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("倒地复活开启成功")
gg.clearResults()
end

function d16()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1000}})
	 end
	 gg.toast("复活锁血开启成功")
	 gg.clearResults()
end

function d17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;120;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("无限夹子开启成功")
	 gg.clearResults()
end


function d18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1;1D;10D;1D;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("范围拆架子开启成功")
	 gg.clearResults()
end

function d19()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("穿墙开启成功")
	 gg.clearResults()
end


function d20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("8v2吸人开启成功")
	 gg.clearResults()
end

function d21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("4v1吸人开启成功")
	 gg.clearResults()
end

function d22()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("2.25;3.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("除草除树开启成功")
	 gg.clearResults()
end

function d23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("102D;1.4012985e-45F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3000", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3000D;1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4.2038954e-45", gg.TYPE_FLOAT)
	 gg.toast("无敌开启成功（购买一下跳高）")
	 gg.clearResults()
end

function d24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001;100;200;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("免费购买无敌开启成功")
	 gg.clearResults()
end

function d25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("201;102;105::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("301", gg.TYPE_DWORD)
	 gg.toast("狂暴开启成功")
	 gg.clearResults()
end

function d26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;103;400;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;110;401;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500300", gg.TYPE_DWORD)
	 gg.toast("第二步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300;110;400;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1011", gg.TYPE_DWORD)
	 gg.toast("手雷改泉水开启成功")
	 gg.clearResults()
end

function d27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.5;0.2;1.4;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5;1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("追捕者秒复活开启成功")
	 gg.clearResults()
end

function d28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("追捕者去除护盾")
	 gg.clearResults()
end

function d29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300", gg.TYPE_FLOAT)
	 gg.toast("追捕者无限护盾除护盾")
	 gg.clearResults()
end

function d30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24", gg.TYPE_FLOAT)
	 gg.toast("视野二倍开启成功")
	 gg.clearResults()
end

function d31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("视野五倍开启成功")
	 gg.clearResults()
end

function d32()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("6.16297729e-33;0.07999999821:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("人物踏空开启成功")
	 gg.clearResults()
end

function d33()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2F;1.5F;1,092,616,192D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100F;1.5F;1,092,616,192D::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1092616192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("不死之身")
	 gg.clearResults()
end



function f1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.05000000075;0.07500000298;0.125:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("全天赋开启成功")
	 gg.clearResults()
end

function f2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20.0;0.20000000298;0.30000001192;0.5:65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.20000000298;0.30000001192;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.99", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function f3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30.0;0.15000000596;0.25;0.40000000596:97", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.15000000596;0.25;0.40000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.99", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function f4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;0.04500000179;0.09000000358;0.18000000715:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.04500000179;0.09000000358;0.18000000715", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.99", gg.TYPE_FLOAT)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
end

function f5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.15999999642;0.23999999464;0.40000000596:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function f6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.05999999866;0.10000000149;0.18000000715:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.05999999866;0.10000000149;0.18000000715", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function f7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20.0;16.0;8.0:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20;16;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function f7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.0;3.0;4.0::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.0;3.0;4.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function f8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;50;40;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.10000000149;0.15000000596;0.25:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.10000000149;0.15000000596;0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("14;12;10;6::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("200;170;120::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.5;4.0;7.0:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100.0;80.0;40.0:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;8;10;14::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.10000000149;0.15000000596;0.20000000298:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60.0F;50.0F;30.0F::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("40.0;55.0;70.0;100.0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("18;16;14;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("40;30;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function f20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;120;60::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end


function g1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600066", gg.TYPE_DWORD)
	 gg.toast("疾跑满级皮肤修改成功")
	 gg.clearResults()
end



function g2()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("手雷满级皮肤修改成功")
	 gg.clearResults()
end



function g3()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end



function g4()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end



function g5()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("19;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("火箭筒满级皮肤修改成功")
	 gg.clearResults()
end



function g6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("跳高满级皮肤修改成功")
	 gg.clearResults()
end



function g7()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("医疗箱满级皮肤修改成功")
	 gg.clearResults()
end



function g8()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("皮卡满级皮肤修改成功")
	 gg.clearResults()
end



function g9()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600251", gg.TYPE_DWORD)
	 gg.toast("侦查眼满级皮肤修改成功")
	 gg.clearResults()
end



function g10()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600436", gg.TYPE_DWORD)
	 gg.toast("冲锋枪满级皮肤修改成功")
	 gg.clearResults()
end



function g11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600311", gg.TYPE_DWORD)
	 gg.toast("酒桶满级皮肤修改成功")
	 gg.clearResults()
end



function g12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600321", gg.TYPE_DWORD)
	 gg.toast("自走球满级皮肤修改成功")
	 gg.clearResults()
end



function g13()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600281", gg.TYPE_DWORD)
	 gg.toast("阻挡箱满级皮肤修改成功")
	 gg.clearResults()
end



function g14()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600331", gg.TYPE_DWORD)
	 gg.toast("传送门满级皮肤修改成功")
	 gg.clearResults()
end



function g15()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600276", gg.TYPE_DWORD)
	 gg.toast("飞爪满级皮肤修改成功")
	 gg.clearResults()
end



function g16()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600216", gg.TYPE_DWORD)
	 gg.toast("巡逻犬满级皮肤修改成功")
	 gg.clearResults()
end

function j1()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2011;2012;2013;2014;2015", gg.TYPE_DWORD)
gg.toast("夜行套装开启成功")
end



function j2()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2021;2022;2023;2024;2025", gg.TYPE_DWORD)
gg.toast("幻影套装开启成功")
end



function j3()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2051;2052;2053;2054;2055", gg.TYPE_DWORD)
gg.toast("疾风套装开启成功")
end



function j4()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2061;2062;2063;2064;2065", gg.TYPE_DWORD)
gg.toast("传说拳击大师套装开启成功")
end



function j5()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2071;2072;2073;2074;2075", gg.TYPE_DWORD)
gg.toast("假面套装开启成功")
end



function j6()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2076;2077;2078;2079;2080", gg.TYPE_DWORD)
gg.toast("传说未来套装开启成功")
end



function j7()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2081;2082;2083;2084;2085", gg.TYPE_DWORD)
gg.toast("绝版新年套装开启成功")
end



function j8()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2081;2082;2083;2084;2085", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2081;2082;2083;2084;2085", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD)
gg.toast("绝版新年套装恢复成功")
end



function j9()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2041;2042;2043;2044;2045", gg.TYPE_DWORD)
gg.toast("绝版传说夜行套装开启成功")
end



function j10()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1011;1012;1013;1014;1015", gg.TYPE_DWORD)
gg.toast("绝版追逐套装开启成功")
end



function j11()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_C_ALLOC)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2031;2032;2033;2034;2035", gg.TYPE_DWORD)
gg.toast("绝版史诗夜行套装开启成功")
end


function Y()
gg.toast("欢迎进入封号机制")
  SNR = gg.choice({
    "✨🔥封号机制①✨🔥",
    "✨🔥封号机制②✨🔥",
  }, nil, "看看")
  if SNR == nil then
    Main0()
  end
  if SNR==1 then HS1201() end
  if SNR==2 then HS1202() end
  FX1=0
end

function HS1201()
  gg.alert("逃跑吧少年封号主要有两点嗷第一点，两端数据不对称：比如你开无限金币，服务器那边正常消耗和增加，你消耗成负数了，这怎么行，“结算”就封号。第二点，明显异常行为：就是系统都能检测到你是异常行为，一直无间隔丢药包，不合理浮空各种，也就是“秒封”其实还有一点，就是举报举报开挂多次，会有“人工”来看你的回放，检查你的卡组，“考虑”你的“各方面”因素，细节排查。如果只有一次，那就是机器人检测是否有过于明显的开挂行为，所以我们才要在4v1演戏。8v2？？？你疯了，6个人同时举报可能直接结算封这游戏拦截其实没多大用处，最主要是检测你的行为是否是异常的（本文章的双引号作用为划重点！）")
end

function HS1202()
  gg.alert("①在3分钟内杀敌6人，系统后台截图数据记录一次\n②在1分钟内杀敌5人，恭喜获得系统检测一次\n③5分钟内，单局杀敌超过8人，系统检测一次\n④10分钟内单局杀敌超过20个，系统检测一次\n⑤单局开挂次数≥3个，系统检测异常直接封（单局开挂次数多很容易被封，建议每局开一个）\n⑥单局被5人举报，系统检测一次\n⑦单局有人观战举报，超过5次，系统自动检测数据变化核时后直接封\n⑧队友观战举报，超过2次，系统检测后记录一次\n⑨一分钟内通关，系统自动检测一次\n⑩每局开一个功能，请勿多开，别让系统检测到，注意以上九条，即可过检测。注:每局结束的时候请手动恢复数据，以防修改的数据时间长了被检测，每次开一局结束后都退出游戏重新打开进入")
end

function X()
gg.toast("欢迎进入坑队友区✨🔥")
  SNO = gg.multiChoice({
    "✨🔥夹子秒杀【游戏开】✨🔥",
    "✨🔥火箭筒加血【游戏开】✨🔥",
    "✨🔥追击跑加血【游戏开】✨🔥",
    "✨🔥医疗箱杀人【游戏开】✨🔥",
    "✨🔥肾上腺素杀人【游戏开】✨🔥",
    "✨🔥手雷加血【游戏开】✨🔥",
    "✨🔥手雷buff改护盾【游戏开】（60％开启不成功）✨🔥",
    "✨🔥手雷全屏范围（配合上面）【游戏开】✨🔥",
    "✨🔥针buff改护盾【游戏开】（60％开启不成功）✨🔥",
    "✨🔥针buff改艾可眩晕【游戏开】（60％开启不成功）✨🔥",
    "✨🔥反开锁【游戏开】✨🔥",
    "✨🔥返回主页✨🔥",
  }, nil, "旧代码了不能用别找我")
  if SNO == nil then Main0() end
  if SNO[1]==true then
    X1()
  end
  if SNO[2]==true then
X2()
  end
  if SNO[3]==true then
    X3()
  end
  if SNO[4]==true then
    X4()
  end
  if SNO[5]==true then
    X5()
  end
  if SNO[6]==true then
    X6()
  end
  if SNO[7]==true then
    X7()
  end
  if SNO[8]==true then
    X8()
  end
  if SNO[9]==true then
    X9()
  end
  if SNO[10]==true then
    X10()
  end
  if SNO[11]==true then
    X11()
  end
  if SNO[12]==true then
    X12()
  end
  FX1=0
end

function X1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.5;0.5;1;14;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("秒杀开启成功")
  gg.clearResults()
end

function X2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-5000", gg.TYPE_FLOAT)
  gg.toast("火箭筒加血开启成功")
  gg.clearResults()
end

function X3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999", gg.TYPE_FLOAT)
  gg.toast("追击跑加血开启成功")
  gg.clearResults()
end

function X4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.2F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-5000", gg.TYPE_DWORD)
  gg.toast("杀人开启成功")
  gg.clearResults()
end

function X5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4.5;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -500}})
  end
  gg.toast("肾上腺素杀人开启成功")
  gg.clearResults()
end

function X6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999", gg.TYPE_FLOAT)
  gg.toast("加血开启成功")
  gg.clearResults()
end

function X7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("33F;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_DWORD)
  gg.toast("坑队友开启成功")
  gg.clearResults()
end

function X8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
  gg.clearResults()
end

function X9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("108;100F;0Q::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_DWORD)
  gg.toast("针坑人开启成功")
  gg.clearResults()
end

function X10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("108;100F;0Q::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("404", gg.TYPE_DWORD)
  gg.toast("艾可眩晕开启成功")
  gg.clearResults()
end

function X11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-100", gg.TYPE_FLOAT)
  gg.toast("反开锁开启成功")
  gg.clearResults()
end

function X12()
Main()
end


function WE()
gg.toast("欢迎进入修改道具等级教程")
menu1 = gg.multiChoice({
"修改教程",
"代码下载位置",
'返回上一页'},
nil,'实战封号')
if menu1 == nil then else
if menu1[1] == true then we1() end
if menu1[2] == true then we2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function we1()
gg.alert("A内存D类型搜：道具代码；道具等级然后改善成道具等级，例如500001；1改善1这是疾跑1级改任意的，实战使用会封号")
end

function we2()
gg.copyText("https://www.lanzoui.com/i4wiug0pxva 密码:NZFNB")
gg.toast("复制下载位置成功")
end



function SJ()
mima ="2314521"
v_value = gg.prompt({
 "请输入专属秘钥"
}, {
 [1] = 0
}, {
 [1] = "number"
})
function mi()
 print("秘钥正确")
end
function end_c()
 print("秘钥错误")
 os.exit()
end
if v_value[1] == mima then
 mi()
else
 end_c()
end
menu1 = gg.multiChoice({
"✨🔥加速1.5✨🔥",
"✨🔥减速1.5✨🔥",
'✨🔥返回上一页✨🔥'},
nil,'666')
if menu1 == nil then else
if menu1[1] == true then sj1() end
if menu1[2] == true then sj2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end


function sj1()
gg.alert("下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定")
end

function sj2()
gg.copyText("下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定下次一定")
gg.toast("复制成功")
end

function NB()
  gg.toast("欢迎使用念哥哥脚本")
  menu = gg.choice({
    "稳定功能（挂拦截后包稳）",
    "半稳功能（看拦截➕演技的）",
    "变态功能一（建议自建房用，实战封号哟）",
    "火箭筒专区",
    "免费道具卡专区",
    "防封专区",
    "解封设备",
    "变态功能二(稳不稳看你洗没洗脸)",
    "返回"
  }, nil, os.date("本脚本原创残念\n目前时间:\n%Y年/️%m月/%d日️\n%H:%M:%S"))
  if menu == 1 then
    AA()
  end
  if menu == 2 then
    BB()
  end
  if menu == 3 then
    CC()
  end
  if menu == 4 then
    DD()
  end
  if menu == 5 then
    EE()
  end
  if menu == 6 then
    FF()
  end
  if menu == 7 then
    GG()
  end
  if menu == 8 then
    HH()
  end
  if menu == 9 then
    XX()
  end
  XGCK = -1
end

function AA()
  gg.toast("欢迎来到稳定上分区")
  gg.alert("公告:本区为稳定上分的，如果加速开锁没有效果就重开一下，如果还是没效果就重启游戏")
  menu1 = gg.multiChoice({
    "1.8倍开锁（一局一开）",
    "2.8倍开锁（一局一开）",
    "3.0倍开锁（一局一开，快了就演一演）",
    "开锁自调版（开的太大封号别找我）",
    "透视（一局一开，）",
    "疾跑两倍速度（一般稳）",
    "返回上一页"
  }, nil, os.date("目前时间:\n%Y年/️%m月/%d日️\n%H:%M:%S"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      aa1()
    end
    if menu1[2] == true then
      aa2()
    end
    if menu1[3] == true then
      aa3()
    end
    if menu1[4] == true then
      aa4()
    end
    if menu1[5] == true then
      aa5()
    end
    if menu1[6] == true then
      aa6()
    end
    if menu1[7] == true then
      HOME()
    end
  end
  GLWW = -1
end

function BB()
  menu1 = gg.multiChoice({
    "无限金币虚拟（一局一开）",
    "无限金币实体（封号概率小）",
    "追捕者去护盾（大厅开）",
    "疾跑高跳30秒(大厅开)",
    "疾跑高跳无限(大厅开)",
    "返回上一页"
  }, nil, "需要好拦截才稳！")
  if menu1 == nil then
  else
    if menu1[1] == true then
      bb1()
    end
    if menu1[2] == true then
      bb2()
    end
    if menu1[3] == true then
      bb3()
    end
    if menu1[4] == true then
      bn4()
    end
    if menu1[5] == true then
      bb5()
    end
    if menu1[6] == true then
      HOME()
    end
  end
  GLWW = -1
end

function CC()
  menu1 = gg.multiChoice({
    "秒开锁🈲闭室",
    "4v1吸人",
    "8v2吸人",
    "手雷秒杀",
    "手雷全范围",
    "一级火箭筒改迫击炮三级",
    "迫击炮无间隔",
    "迫击炮全范围",
    "医疗包全范围",
    "倒地复活",
    "全屏开锁",
    "无限长度飞爪",
    "生命护盾无冷却［一局一开］",
    "4v1直接开门［一局一开］",
    "8v2直接开门［一局一开］",
    "疾跑超高速［高能预警］",
    "逃生全死［追捕用］",
    "追捕无限传送",
    "生命护盾无限时间",
    "生命护盾无限护盾值",
    "返回上一页"
  }, nil, "实战封号，封号别怪我🌚")
  if menu1 == nil then
  else
    if menu1[1] == true then
      cc1()
    end
    if menu1[2] == true then
      cc2()
    end
    if menu1[3] == true then
      cc3()
    end
    if menu1[4] == true then
      cc4()
    end
    if menu1[5] == true then
      cc5()
    end
    if menu1[6] == true then
      cc6()
    end
    if menu1[7] == true then
      cc7()
    end
    if menu1[8] == true then
      cc8()
    end
    if menu1[9] == true then
      cc9()
    end
    if menu1[10] == true then
      cc10()
    end
    if menu1[11] == true then
     cc11()
    end
    if menu1[12] == true then
      cc12()
    end
    if menu1[13] == true then
      cc13()
    end
    if menu1[14] == true then
      cc14()
    end
    if menu1[15] == true then
      cc15()
    end
    if menu1[16] == true then
      cc16()
    end
    if menu1[17] == true then
      cc17()
    end
    if menu1[18] == true then
      cc18()
    end
    if menu1[19] == true then
      cc19()
    end
    if menu1[20] == true then
      cc20()
    end
    if menu1[21] == true then
      HOME()
    end
  end
  GLWW = -1
end

function DD()
  menu1 = gg.multiChoice({
    "火箭筒无冷却",
    "火箭筒秒杀",
    "火箭筒改13级皮肤",
    "返回上一页"
  }, nil, "实战也有概率封号，火箭筒无间隔看拦截和演技")
  if menu1 == nil then
  else
    if menu1[1] == true then
      dd1()
    end
    if menu1[2] == true then
      dd2()
    end
    if menu1[3] == true then
      dd3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  GLWW = -1
end

function EE()
  menu1 = gg.multiChoice({
    "疾跑免费",
    "高跳免费",
    "医疗箱免费",
    "皮卡免费",
    "飞爪免费",
    "手雷免费",
    "返回上一页"
  }, nil, "实战90%封号")
  if menu1 == nil then
  else
    if menu1[1] == true then
      ee1()
    end
    if menu1[2] == true then
      ee2()
    end
    if menu1[3] == true then
      ee3()
    end
    if menu1[4] == true then
      ee4()
    end
    if menu1[5] == true then
      ee5()
    end
    if menu1[6] == true then
      ee6()
    end
    if menu1[7] == true then
      HOME()
    end
  end
  GLWW = -1
end

function FF()
  menu1 = gg.multiChoice({
    "防封第一步",
    "防封第二步",
    "返回上一页"
  }, nil, "配上拦截使用，只适合4399版本。开了这两个闪退的是手机问题，就别开了，不防举报")
  if menu1 == nil then
  else
    if menu1[1] == true then
      ff1()
    end
    if menu1[2] == true then
      ff2()
    end
    if menu1[3] == true then
      HOME()
    end
  end
  GLWW = -1
end

function GG()
  menu1 = gg.multiChoice({
    "4399解封设备",
    "九游解封设备",
    "应用宝解封设备",
    "其他类型解封设备",
    "返回上一页"
  }, nil, "请在桌面或者其他地方开启此功能，必须清理游戏后台")
  if menu1 == nil then
  else
    if menu1[1] == true then
      gg1()
    end
    if menu1[2] == true then
      gg2()
    end
    if menu1[3] == true then
      gg3()
    end
    if menu1[4] == true then
      gg4()
    end
    if menu1[5] == true then
      HOME()
    end
  end
  GLWW = -1
end

function HH()
  menu1 = gg.multiChoice({
    "治疗球无限时间",
    "治疗球无限血量",
    "治疗球范围增大",
    "无限夹子",
    "锁血",
    "侦查眼无限时间",
    "疾跑改护盾",
    "火箭筒改三级火箭筒(大厅开)",
    "返回上一页"
  }, nil, "不管是什么功能，请谨慎开启")
  if menu1 == nil then
  else
    if menu1[1] == true then
      hh1()
    end
    if menu1[2] == true then
      hh2()
    end
    if menu1[3] == true then
      hh3()
    end
    if menu1[4] == true then
      hh4()
    end
    if menu1[5] == true then
      hh5()
    end
    if menu1[6] == true then
      hh6()
    end
    if menu1[7] == true then
      hh7()
    end
    if menu1[8] == true then
      hh8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  GLWW = -1
end

function aa1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("1.8倍开锁开启成功")
end

function aa2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2.8", gg.TYPE_FLOAT)
  gg.toast("2.8倍开锁开启成功")
end

function aa3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3.0", gg.TYPE_FLOAT)
  gg.toast("3.0倍开锁开启成功")
end

function aa4()
  input4 = gg.prompt({
    "输入你要修改的倍速，稳定的范围是1到3之间"
  }, {
    [1] = 3
  }, {
    [1] = "number"
  })
  gg.toast("加载数据中...")
  gg.setRanges(32)
  gg.searchNumber("1D;4;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll(input4[1], gg.TYPE_FLOAT)
  gg.toast("加载完成")
  gg.clearResults()
end

function aa5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;8.0;1,082,467,303D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("透视开启成功")
end

function aa6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("疾跑加速开启成功鸭")
  gg.clearResults()
end

function bb1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("70F;444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_DWORD)
  gg.toast("无限金币开启成功")
  gg.clearResults()
end

function bb2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("20;20;20::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.clearResults()
end

function bb3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("追捕者去除护盾")
  gg.clearResults()
end

function bb4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("疾跑30秒开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.toast("跳高30秒开启成功")
  gg.clearResults()
end

function bb5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("疾跑无限秒开启成功")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("跳高无限秒开启成功")
  gg.clearResults()
end

function cc1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66.89824676514", gg.TYPE_FLOAT)
  gg.toast("秒开钥匙禁闭室开启成功")
  gg.clearResults()
end

function cc2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4v1吸人开启成功")
  gg.clearResults()
end

function cc3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8v2吸人开启成功")
  gg.clearResults()
end

function cc4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;0.2;33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("手雷秒杀开启成功")
  gg.clearResults()
end

function cc5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50000", gg.TYPE_FLOAT)
  gg.toast("手榴弹全屏范围开启成功")
  gg.clearResults()
end

function cc6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("112", gg.TYPE_DWORD)
  gg.toast("火箭筒改追击炮3级开启成功")
  gg.clearResults()
end

function cc7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("追击炮无间隔开启成功")
  gg.clearResults()
end

function cc8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66000", gg.TYPE_FLOAT)
  gg.toast("迫击炮全范围开启成功")
  gg.clearResults()
end

function cc9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("12000", gg.TYPE_FLOAT)
  gg.toast("医疗箱全屏范围开启成功")
  gg.clearResults()
end

function cc10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("倒地复活开启成功")
  gg.clearResults()
end

function cc11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;0.2;1.3;1.3;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("全屏开锁成功鸭")
  gg.clearResults()
end

function cc12()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("10;10;6.69999980927::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("50000", gg.TYPE_FLOAT)
  gg.toast("飞爪长度开启成功")
  gg.clearResults()
end

function cc13()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1007D;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("生命护盾无冷却修改成功")
  gg.clearResults()
end

function cc14()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;0.2;1.3;1.3;1;256D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("4v1直接开门开启成功")
end

function cc15()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("45;0.2;1.3;1.3;1;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("8v2直接开门开启成功")
end

function cc16()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("疾跑加速开启成功")
  gg.clearResults()
end

function cc17()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("66.89824676514", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-66.89824676514", gg.TYPE_FLOAT)
  gg.toast("秒死开启成功")
end

function cc18()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_FLOAT,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  gg.toast("追捕者无限传送开启成功")
  gg.clearResults()
end

function cc19()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("112.0;4.0;30.0;3.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("112", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2000", gg.TYPE_FLOAT)
  gg.toast("生命护盾无限血开启成功")
  gg.clearResults()
end

function cc20()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("300D;256D;206D;1.5;200F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("生命护盾无限时间开启成功")
  gg.clearResults()
end

function dd1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("火箭筒无间隔开启成功")
  gg.clearResults()
end

function dd2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("500", gg.TYPE_FLOAT)
  gg.toast("火箭筒秒杀开启成功")
  gg.clearResults()
end

function dd3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("600286", gg.TYPE_DWORD)
  gg.toast("火箭筒改火焰龙头鲨开启成功")
  gg.clearResults()
end

function ee1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500001;100;200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("疾跑免费开启成功")
  gg.clearResults()
end

function ee2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500006;105;201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("高跳免费开启成功")
  gg.clearResults()
end

function ee3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500005;104;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("免费医疗包开启成功")
  gg.clearResults()
end

function ee4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500002;101;111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("皮卡免费开启成功")
  gg.clearResults()
end

function ee5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500500;112;801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("112", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("飞爪免费开启成功")
  gg.clearResults()
end

function ee6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("500004;103;400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("手雷免费开启成功")
  gg.clearResults()
end

function ff1()
  gg.clearResults()
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;1,065,353,216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("设置中")
  gg.toast("进度")
  gg.toast("61%")
  gg.toast("200%")
  gg.toast("2000%")
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("防封开启％10.")
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";Cheat", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll(";0", gg.TYPE_WORD)
  gg.toast("防封开启％20")
  gg.toast("防封开启％40")
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber(";http://", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_WORD)
  gg.toast("删除检测中％50")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("内存防封％60")
  gg.searchNumber("2020;-1,431,655,766", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = "0"
          }
        })
      end
    end
  end
  gg.toast("内存检测正在删除％90")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1000)
  sl = gg.getResultCount()
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = "0"
          }
        })
      end
    end
  end
  gg.toast("％100防封开启成功！")
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2020;2019;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("防封第一步开启成功")
end

function ff2()
  gg.toast("获取文件中(不是删手机重要文件)")
  gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(32)
  gg.sleep(1500)
  gg.toast("获取成功,封号文件名为game_log.txt")
  os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt")
  gg.sleep(800)
  gg.toast("删除封号残留文件成功")
  gg.sleep(500)
  gg.toast("获取追封文件中")
  gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.setRanges(32)
  os.remove("/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399")
  gg.toast("获取成功,已删除追封文件")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("131,072;65536;65536;917504;131,072", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = 0
          }
        })
      end
    end
  end
  gg.toast("全网新防封开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("防封开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("1小时封号文件已删除")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("330094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("一天封号文件已删除")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("七天封号文件删除")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30751", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  do
    do
      for _FORV_3_ = 1, sl do
        dzy = jg[_FORV_3_].address
        gg.addListItems({
          [1] = {
            address = dzy,
            flags = gg.TYPE_DWORD,
            freeze = true,
            value = -999
          }
        })
      end
    end
  end
  gg.toast("10年封号文件已删除")
  gg.clearResults()
  gg.sleep(800)
  gg.toast("防封第二步开启成功")
end

function gg1()
  WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function gg2()
  WJ1 = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
  ID1 = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID1 == nil then
    gg.alert("您选择了取消")
  else
    if ID1[1] == "" then
      gg.alert("不能输入为空")
      os.exit()
    end
    io.open(WJ1, "w"):write(ID1[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function gg3()
  WJ2 = "/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
  ID2 = gg.prompt({
    [1] = "请随机输入一串数字"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID2 == nil then
    gg.alert("您选择了取消")
  else
    if ID2[1] == "" then
      gg.alert("不能输入为空")
      os.exit()
    end
    io.open(WJ2, "w"):write(ID2[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end

function gg4()
  BW = gg.getTargetPackage()
  BM = gg.prompt({
    [1] = "请输入应用包名"
  }, {
    [1] = BW
  }, {
    [1] = "text"
  })
  if BM == nil then
    gg.toast("您选择了取消")
  else
    WJ9 = "/storage/emulated/0/Android/data/" .. BM[1] .. "/files/VirtualUniqueDeviceID.txt"
    lqc = io.open(WJ9, "r")
    if lqc == nil then
      gg.alert("解封失败\n目标文件不存在")
    else
      ID3 = gg.prompt({
        [1] = "请随机输入一串数字"
      }, {
        [1] = ""
      }, {
        [1] = "text"
      })
      if ID3 == nil then
        gg.toast("您选择了取消")
        os.exit()
      end
      if ID3[1] == "" then
        gg.alert("不能输入为空")
        os.exit()
      end
      io.open(WJ9, "w"):write(ID3[1]):close()
      gg.alert("解封成功\n请登录游客账号或其他账号")
    end
  end
end

function hh1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("168;6;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("治疗球无限时间开启成功")
  gg.clearResults()
end

function hh2()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("治疗球无限血开启成功")
  gg.clearResults()
end

function hh3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("168;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("治疗球范围增大开启成功")
  gg.clearResults()
end

function hh4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("110", gg.TYPE_DWORD)
  gg.toast("无限夹子第一步开启完毕")
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("无限架子开启成功")
  gg.clearResults()
end

function hh5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("50;10.0;0.5:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("锁血开启成功")
  gg.clearResults()
end

function hh6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("112.0;4.0;30.0;3.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("侦查眼无限时间开启成功")
  gg.clearResults()
end

function hh7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.40129846e-45F;103D::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_DWORD)
  gg.toast("疾跑改护盾开启成功")
  gg.clearResults()
end

function hh8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("200;100;1008::81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("102", gg.TYPE_DWORD)
  gg.toast("火箭筒改三级火箭筒开启成功")
  gg.clearResults()
end

function XX()
	 Main()
end

function XS()
  SN = gg.multiChoice({
  "锁血【游戏】（血量必须是%100）",
  "无限金币【游戏】",
  "火箭筒无后坐【游戏】",
  "疾跑高跳一件套【大厅】",
  "火箭筒无间隔【大厅】",
  "火箭筒秒换弹【游戏】(后面会失效建议不开)",
  "火箭筒变态伤害【大厅】",
  "医疗包手雷无间隔【游戏】",
  "追捕去护盾【游戏】",
  "坑队友区",
  "返回原脚本"
}, nil, os.date("鸟之风专属自建房脚本，实战封号只供自建房使用，倒卖二改死全家搬运留名\n目前时间:\n%Y年/️%m月/%d日️\n%H:%M:%S"))
  if SN == nil then
  else
  if SN[1] == true then
    aaa()
  end
  if SN[2] == true then
   bbb()
  end
  if SN[3] == true then
   ccc()
  end
  if SN[4] == true then
   ddd()
  end
  if SN[5] == true then
   eee()
  end
  if SN[6] == true then
   fff()
  end
  if SN[7] == true then
   ggg()
  end
  if SN[8] == true then
   hhh()
  end
  if SN[9] == true then
   sss()
 end
  if SN[10] == true then
   Main14()
 end
  if SN[11] == true then
   Main()
  end
end
  XGCK = -1
end



function aaa()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2F;1.5F;1,092,616,192D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100F;1.5F;1,092,616,192D::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1092616192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("不死之身")
	 gg.clearResults()
end



function bbb()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("444444D;70F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_DWORD)
gg.toast("无限金币开启成功")
gg.clearResults()
end




function ccc()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.4", gg.TYPE_FLOAT)
gg.toast("无后开启成功")
gg.clearResults()
end


function ddd()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("疾跑无限成功")
	 gg.clearResults()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限成功")
	 gg.clearResults()
	 gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.toast("疾跑加速成功")
  gg.clearResults()
end


function eee()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒0间隔开启成功")
gg.clearResults()
end



function fff()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3~3.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("火箭筒秒换弹修改成功")
gg.clearResults()
end



function ggg()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("火箭筒变态伤害开启成功")
gg.clearResults()
end




function hhh()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1007D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("医疗包手雷无间隔开启成功")
	 gg.clearResults()
end

function sss()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("追捕者去除护盾")
	 gg.clearResults()
end


function Main14()
  SNO = gg.multiChoice({
    "夹子秒杀【游戏开】",
    "火箭筒加血【游戏开】",
    "追击跑加血【游戏开】",
    "医疗箱杀人【游戏开】",
    "肾上腺素杀人【游戏开】",
    "手雷加血【游戏开】",
    "手雷buff改护盾【游戏开】（60％开启不成功）",
    "手雷全屏范围（配合上面）【游戏开】",
    "针buff改护盾【游戏开】（60％开启不成功）",
    "针buff改艾可眩晕【游戏开】（60％开启不成功）",
    "反开锁【游戏开】",
    "返回主页",
  }, nil, "去坑队友吧")
  if SNO == nil then Main0() end
  if SNO[1]==true then
    XXX1()
  end
  if SNO[2]==true then
XXX2()
  end
  if SNO[3]==true then
    XXX3()
  end
  if SNO[4]==true then
    XXX4()
  end
  if SNO[5]==true then
    XXX5()
  end
  if SNO[6]==true then
    XXX6()
  end
  if SNO[7]==true then
    XXX7()
  end
  if SNO[8]==true then
    XXX8()
  end
  if SNO[9]==true then
    XXX9()
  end
  if SNO[10]==true then
   XXX10()
  end
  if SNO[11]==true then
    XXX11()
  end
  if SNO[12]==true then
    XXX12()
  end
  FX1=0
end

function XXX1()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.5;0.5;1;14;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("14", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("秒杀开启成功")
  gg.clearResults()
end

function XXX2()
  gg.clearResults()
  gg.setRanges(32)
   gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-5000", gg.TYPE_FLOAT)
  gg.toast("火箭筒加血开启成功")
  gg.clearResults()
end

function XXX3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999", gg.TYPE_FLOAT)
  gg.toast("追击跑加血开启成功")
  gg.clearResults()
end

function XXX4()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.2F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-5000", gg.TYPE_DWORD)
  gg.toast("杀人开启成功")
  gg.clearResults()
end

function XXX5()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4.5;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(100)
  sl=gg.getResultCount()
  if sl>100 then sl=100 end
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -500}})
  end
  gg.toast("肾上腺素杀人开启成功")
  gg.clearResults()
end

function XXX6()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-9999", gg.TYPE_FLOAT)
  gg.toast("加血开启成功")
  gg.clearResults()
end

function XXX7()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("33F;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_DWORD)
  gg.toast("坑队友开启成功")
  gg.clearResults()
end

function XXX8()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("范围开启成功")
  gg.clearResults()
end

function XXX9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("108;100F;0Q::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_DWORD)
  gg.toast("针坑人开启成功")
  gg.clearResults()
end

function XXX10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("108;100F;0Q::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("404", gg.TYPE_DWORD)
  gg.toast("艾可眩晕开启成功")
  gg.clearResults()
end

function XXX11()
  gg.clearResults()
  gg.setRanges(32)
   gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-100", gg.TYPE_FLOAT)
  gg.toast("反开锁开启成功")
  gg.clearResults()
end

function XXX12()
XS()
end


function DS()
gg.toast("欢迎进入设备解封区✨🔥")
  SN = gg.choice({
  "✨🔥解封4399逃跑设备✨🔥",
  "✨🔥解封九游逃跑设备✨🔥",
  "✨🔥解封OPPO逃跑设备✨🔥",
  "✨🔥解封好游快爆逃跑设备✨🔥",
  "✨🔥解封应用宝逃跑设备✨🔥",
"✨🔥返回主页✨🔥"
 }, nil, "此区我下了好多个逃跑才弄好，注意是解封设备的不是解账号")
  if SN == 1 then
    ds1()
  end
  if SN == 2 then
   ds2()
  end
  if SN == 3 then
   ds3()
  end
  if SN == 4 then
   ds4()
  end
  if SN == 5 then
   ds5()
  end
  if SN == 6 then
   ds6()
  end
  XGCK = -1
end



function ds1()
WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "鸟之风：请随机输入一串数字英文"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("鸟之风：您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("鸟之风：不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end



function ds2()
WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "鸟之风：请随机输入一串数字英文"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("鸟之风：您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("鸟之风：不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end



function ds3()
WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.nearme.gamecenter/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "鸟之风：请随机输入一串数字英文"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("鸟之风：您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("鸟之风：不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end


function ds4()
WJ = "/storage/emulated/0/Android/data/com.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "鸟之风：请随机输入一串数字英文"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("鸟之风：您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("鸟之风：不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end



function ds5()
WJ = "/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
  ID = gg.prompt({
    [1] = "鸟之风：请随机输入一串数字英文"
  }, {
    [1] = ""
  }, {
    [1] = "text"
  })
  if ID == nil then
    gg.toast("鸟之风：您选择了取消")
  else
    if ID[1] == "" then
      gg.alert("鸟之风：不能输入为空")
    end
    io.open(WJ, "w"):write(ID[1]):close()
    gg.alert("解封成功\n请登录游客账号或其他账号")
  end
end





function ds6()
Main()
end


function Exit()
print("鸟之风逃跑脚本倒卖二改死全家搬运请留名")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '这里可以填QQ'
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







