

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray  end gg.toast("欢迎使用") function xgxc(szpy, qmxg) for x = 1, #(qmxg)  do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"]  xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then    gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else   gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end gg.toast("完成执行") xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function Main0()
 SJ = os.date("")
SN = gg.choice({
     "🧸房 主 专 区🧸",
     "🧸联 机 专 区🧸",
     "🧸额 外 功 能🧸",
     "🧸笔 刷 模 式🧸",
     "🧸手机开大房间🧸",
     "🧸谁是狙神专区🧸",
     "👾退 出 脚 本👾",
}, nil, "𒅒༺๑贵族限定๑༻𒅒")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main5()
end
if SN==3 then
	 Main12()
end
if SN==4 then
	 Main43()
end
if SN==5 then
	 Main59()
end
if SN==6 then
	 Main70()
end
if SN==7 then
	 AG()
end
FX=0
end

function Main1()
 SJ = os.date("")
SN = gg.multiChoice({
	 "🎃无限物品{第1格放2个物品}🎃",
	 "🎃石矛秒杀{ 自认为没啥用}🎃",
	 "🎃牛掉落熔岩弹{打死牛获得}🎃",
	 "🎃天空变黑{仅自己看得到}🎃",
	 "🎃无限血.星星{血量100使用 }🎃",
	 "🎃无限星星{0星星再使用}🎃",
	 "🎃人 物 加 速🎃",
	 "🎃大白象改坐骑{ 先召唤}🎃",
	 "🎃返 回 主 页🎃",
}, nil, "⚝这些都是房主才能用的脚本⚝")
if SN[1]==true then
	 HS3()
end
if SN[2]==true then
	 HS4()
end
if SN[3]==true then
	 HS24()
end
if SN[4]==true then
	 HS31()
end
if SN[5]==true then
	 HS98()
end
if SN[6]==true then
	 HS41()
end
if SN[7]==true then
	 HS68()
end
if SN[8]==true then
	 HS69()
end
if SN[9]==true then
	 HS42()
end
FX=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("945804462", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("945804462", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945804480}})
	 end
	 gg.toast("无限物品开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12002D;35F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("石矛秒杀修改成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3401;12516", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12516", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15055}})
	 end
	 gg.toast("牛掉落物开局成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("280.0;0.400000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.400000000596", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -9999}})
	 end
	 gg.toast("天空变黑修改成功")
	 gg.clearResults()
end

function HS98()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("100;100;0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100;0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 9999
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1.0; -0.0078125E; -1 .0; 10.0;-1.0; 0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 9999}})
	 end
	 gg.toast("无限星星开启成功")
	 gg.clearResults()
end

function HS68()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777473D;10;-1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.toast("人物加速开局成功")
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value =70}})
	 end
	 xqmnb(qmnb)
gg.clearResults()
end

function HS69()
gg.clearResults()
v = gg.prompt({
    i = "🔰🔰🔰输入你➡现在⬅召唤的坐骑代码🔰🔰🔰                                  ❤坐骑代码大全:[🌟敏捷飞鼠:3434🌟][🌟机智飞鼠:3435🌟][🌟普通化石龙:3431🌟][🌟超级化石龙:3432🌟][🌟普通麒麟:3437🌟][🌟敏捷陆行鸟:3440🌟][🌟超级陆行鸟:3441🌟][🌟欢乐白象:3443🌟][🌟盛典白象:3444🌟][🌟海豹船长:3446🌟][🌟超能海豹:3447🌟]"
  }, {i = "3443"})
  if v == nil then
    gg.toast("缺少数值")
  else
   b = gg.prompt({
    i = "🔰🔰🔰输入你➡想要⬅坐骑的代码🔰🔰🔰                                  ❤坐骑代码大全:][🌟机智飞鼠:3435🌟][🌟超级化石龙:3432🌟][🌟祥瑞麒麟3438🌟][🌟超级陆行鸟:3441🌟][🌟盛典白象:3444🌟][🌟超能海豹:3447🌟][小猫3456][天马3459][轿子3462][大地盟主]"
  }, {i = "3438"}) 
  if b == nil then
    gg.toast("缺少更改数值")
  else
  while  true do 
    gg.sleep(100)
    gg.toast("🔰请完成指令{召唤出现在的坐骑在点击悬浮窗}")
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在调用坐骑数据请稍后...")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.isVisible(true) then gg.alert('🔰制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   shcf()  end
gg.getResults(5)
gg.searchAddress("34")
if gg.isVisible(true) then gg.ale('🔰制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   shcf()  end
gg.getResults(5)
gg.editAll(b.i,gg.TYPE_DWORD)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value =(b.i)
t[i].freeze =true
gg.addListItems(t)
gg.toast("50%")
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   shcf()  end
gg.getResults(30)
gg.searchAddress("8")
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.isVisible(true) then gg.ale('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   shcf()  end
gg.getResults(30)
gg.editAll(b.i,gg.TYPE_DWORD)
local t = gg.getResults(10)
for i, v in ipairs(t) do
t[i].value =(b.i)
t[i].freeze =true
gg.addListItems(t)
gg.toast("修改成功")
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end
end
end
end
end
end
end
end

function HS42()
	 Main0()
end

function Main5()
SN = gg.multiChoice({
	 "🎃无 限 跳🎃",
	 "🎃飞 行 翅 膀🎃",
	 "🎃穿墙(先开飞行翅膀)🎃",
	 "🎃人物加速{永久}🎃",
	 "🎃传送卷改蓝球服{先提取}🎃",
	 "🎃三角透视{开启}🎃",
	 "🎃三角透视{关闭}🎃",
	 "🎃超 轻 重 力🎃",
	 "⚝返回主页⚝",
}, nil, "")
if SN[1]==true then
	 HS33()
end
if SN[2]==true then
	 HS34()
end
if SN[3]==true then
	 HS35()
end
if SN[4]==true then
     HS36()
end
if SN[5]==true then
	 HS39()
end
if SN[6]==true then
	 HS55()
end
if SN[7]==true then
	 HS56()
end
if SN[8]==true then
	 HS57()
end
if SN[9]==true then
	 HS40()
end
FX=0
end
function HS33()
gg.toast("正在调用无限跳数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无限跳"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 116, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 116, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3D; 2D; 0D; 16,777,21 6D; 1,065,353,21 6D; 80.0F ::80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("飞行翅膀开启成功")
	 gg.clearResults()
end

function HS35()
gg.toast("正在调用穿墙数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1, ["offset"] = 116, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = -80000, ["offset"] = -12, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1,120,403,456D; 100.0F; 0.5F;0.80000001192F; 1.29999995232F; 3,600D :512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value =30}})
	 end
	 gg.toast("人物加速开启成功")
	 gg.clearResults()
end

function HS39()
     gg.toast("先提取传送卷轴")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12964;1;2;2;2;3;64;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12820}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196608;65538;65536;2;196610::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
	 end

function HS56()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196608;65538;0;2;196610::::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 65536}})
	 end
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("8;4::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1}})
	 end
	 gg.toast("把1改成8可恢复")
	 gg.clearResults()
end

function HS40()
	 Main0()
end

function Main12()
SN = gg.multiChoice({
	 "💕胖达体验卡改名字💕",
	 "💕程锦衣体验卡改名💕",
	 "💕解锁坚冰💕",
	 "💕解锁钢板💕",
	 "💕解锁金铁门💕",
	 "💕解锁白杨木门💕",
	 "💕解锁火箭背包💕",
	 "💕解锁公主床💕",
	 "⚝返回主页⚝",
}, nil, "")
if SN[1]==true then
	 HS50()
end
if SN[2]==true then
	 HS22()
end
if SN[3]==true then
	 HS64()
end
if SN[4]==true then
	 HS65()
end
if SN[5]==true then
	 HS66()
end
if SN[6]==true then
	 HS67()
end
if SN[7]==true then
	 HS15()
end
if SN[8]==true then
	 HS13()
end
if SN[9]==true then
	 HS14()
end
FX=0
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("火箭背包解锁成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("公主床解锁成功")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function HS65()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("964;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("857;20003;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("856;20002;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("解锁成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12981;6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12981", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12856}})
	 end
	 gg.toast("直接使用就行了")
	 gg.clearResults()
end


function HS50()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("13002;6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 12856}})
	 end
	 gg.toast("直接使用就行了")
	 gg.clearResults()
end
function HS22()
	 Main0()
end

function Main43()
SN = gg.multiChoice({
	 "玩法改创造{有些地图用不了}",
	 "🏅玩法转生存(不懂别用)🏅",
	 "🥇香溢烤鸡改编辑器🥇",
	 "🥇传送卷改编辑器🥇",
	 "🥇星星礼盒改编辑器🥇",
	 "🥇能量剑改编辑器🥇",
	 "🥇喷射抓钩改编辑器🥇",
	 "🥇香溢面包改编辑器🥇",
	 "⚝返回主页⚝",
}, nil, "")
if SN[1]==true then
	 HS44()
end
if SN[2]==true then
	 HS63()
end
if SN[3]==true then
	 HS45()
end
if SN[4]==true then
	 HS46()
end
if SN[5]==true then
	 HS47()
end
if SN[6]==true then
	 HS51()
end
if SN[7]==true then
	 HS52()
end
if SN[8]==true then
	 HS54()
end
if SN[9]==true then
	 HS49()
end
FX=0
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5;1,028,816,516;0.05139018595F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("自己改")
end
function HS63()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5;1,028,816,516;0.05139018595F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("玩法转冒险开启成功")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("6;12558;1;4;11;1;3;1;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12558", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12964;1;2;2;2;3;64;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12964", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12963;1;2;2;2;3;64;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12963", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005;2;2;1;2;1;2;3;2;10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12006;2;1;2;7;2;10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("6;12550;1;4;11;1;3;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12550", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10500}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS49()
	 Main0()
end

function Main59()
SN = gg.multiChoice({
	 "💎10人20人房间💎看上面👆",
	 "💎30人40人房间💎",
	 "⚝返回主页⚝",
}, nil, "                      🥇孤仙原创脚本🥇\n        👉必须在开房间页面才能使用这脚本👈\n        👉必须在开房间页面才能使用这脚本👈\n        👉必须在开房间页面才能使用这脚本👈")
if SN[1]==true then
	 HS60()
end
if SN[2]==true then
	 HS61()
end
if SN[3]==true then
	 HS62()
end
FX=0
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777216;1338;406;1410;459;1,111,490,560", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16777216;1521;406;1593;459;1,065,353,216;393,222", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777472}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS62()
	 Main0()
end

function Main70()
SN = gg.multiChoice({
	 "🎃子弹穿墙{房主可用}🎃",
	 "🎃狙击枪连发🎃",
	 "🎃子弹防抖🎃",
	 "🎃三角透视🎃",
	 "⚝返回主页⚝",
}, nil, "")
if SN[1]==true then
	 HS71()
end
if SN[2]==true then
	 HS72()
end
if SN[3]==true then
	 HS73()
end
if SN[4]==true then
	 HS74()
end
if SN[9]==true then
	 HS78()
end
FX=0
end

function HS71()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber(" 1~1,000D; 450D; 10,000D :512", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999}})
	 end
	 gg.toast("孤仙原创脚本")
	 gg.clearResults()
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15003;15004;2;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("狙击枪连发开启成功")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15003;60;1077936128;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1077936128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("孤仙原创脚本")
	 gg.clearResults()
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("196608;65538;65536;2;196610::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65536", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("孤仙原创脚本")
	 gg.clearResults()
end


function HS78()
	 Main0()
end
  if FX1 == nil then
    Main0()
  end
