gg.alert('马达论坛一一外挂破解')
gg.alert('XE炸图辅助官网https://new.zhatu.xyz')
gg.alert('XE炸图辅助论坛https://bbs.madakeji.top')
gg.alert('️💖点击进入💖')





t=1
for i = 5,100,5 do
jd=math.random(i,i+4)
if i==100 then jd=i end
    gg.toast(' 全力加载中%'..jd..'\n'..('■'):rep(t)..('□'):rep(20-t))
    t=t+1
    gg.sleep(150)--设置间隔
end
function a0()

gg.toast("请选择复刻物品开关")
F = gg.alert("🔰请选择复刻第一格物品｛开 关｝🔰","🎓开🎓","🎐关🎐")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
 while  true do 
    gg.sleep(100)
    gg.toast("🔰功 能 指 南🔰\n📝[开启:需要将快捷栏第一格清空]\n📝[使用:房主无限制，别人房间需要长按入箱再拿出即可]\n📝[恢复:需要第一格有俩百物品]\n❗不按指南来会失败单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)   
qmnb = {
{["memory"] = 4},
{["name"] = "第一格物品复刻开启"},
{["value"] = 945804460, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,564, ["offset"] = 0, ["type"] = 4, ["freeze"] = true},

}
xqmnb(qmnb)
 while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end
end
end
end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "物品复刻恢复"},
{["value"] = 945804388, ["type"] = 4},
{["lv"] = 1000, ["offset"] = -4, ["type"] = 4},
{["lv"] = -1, ["offset"] = 4, ["type"] = 4},
}
qmxg = {
{["value"] = 945,804,388, ["offset"] = 0, ["type"] = 4, ["freeze"] = false}
}
xqmnb(qmnb)
gg.clearResults()
end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]['offset'] xglx = qmxg[x]['type'] xgsz = qmxg[x]['value'] xgdj = qmxg[x]['freeze'] if xgdj == nil or xgdj == '' then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]['memory']) gg.searchNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('🔴id'..qmnb[2]['name'] .. '开启失败🔴') else gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) gg.refineNumber(qmnb[3]['value'], qmnb[3]['type']) if gg.getResultCount() == 0 then gg.toast('🔴id'..qmnb[2]['name'] .. '开启失败🔴') else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]['offset'] pysz[1].flags = qmnb[v]['type'] szpy = gg.getValues(pysz) pdpd = qmnb[v]['lv'] .. ';' .. szpy[1].value szpd = split(pdpd, ';') tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast('\n✔️id:'..qmnb[2]['name']..'成功📝共修改' .. xgsl .. '条数据') else gg.toast('🔴id'..qmnb[2]['name'] .. '开启失败🔴') end end end end
function Main0()
SJ = os.date("%Y年%m月%d日%H时%M分%S秒")
SN = gg.choice({
	 "⬜🔓联 机 功 能🔓⬜",
	 
	 
	 "⬜🔓房 主 功 能🔓⬜",
	 
	 
	 "⬜🔓测 试 功 能🔓⬜",
	 
	 "⬜🔓炸 图 功 能🔓⬜",
	 
	 "⬜🔓生 存 炸 图🔓⬜",
	 
	 "⬜🔓解 锁 物 品🔓⬜",
	 
	 "⬜🔓特 殊 专 区🔓⬜",
	 
	 "⬜🔓谁 是 狙 神 专 区🔓⬜",
	 
	 "⬜🔒 未 添 加 🔒⬜",
	 "❌❌❌请自觉中断   🏁ELXT🏁   脚本退出❌❌❌"
}, nil, "🎱作者皮哥:迷你号523962646\n XE一一外挂破解｛开启时间"..SJ.."｝")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main2()
end
if SN==3 then
	 Main3() 
end
if SN==4 then
	 Main4() 
end
if SN==5 then
	 Main5() 
end
if SN==6 then
	 Main27()
end
if SN==7 then
	 PP1()
end
if SN==8 then
	 PP2()
end
if SN==9 then
	 PP3()
end
if SN==9 then
	 Exit()
end
FX1=0
end

function PP1()

SN = gg.prompt({
  "🔰 免 费 改 名 字🇫",
  "🔰 免 费 改 名 字 恢 复🇫",
  "🔰 锁 血🇩",
  "🔰 解 防 沉 迷🇩",
    "🔰 秒 喝 药🇰",
       "🔰 改 创 造 {怒海}🇰",
         "🔰 踢 房 主 🏆 ",
       
  "🔴 返 回 主 页 🔴" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 zxc1()
end
if SN[2]==true then
	 zxc2()
end
if SN[3]==true then
	 zxc3()
end
if SN[4]==true then
	 zxc4()
	 end
if SN[5]==true then
	  zxc5() 
end
if SN[6]==true then
	  zxc6() 
end
if SN[7]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()

function zxc1()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("12851",4,nil,nil,nil,nil)
gg.getResults(127)
gg.toast("搜索η1条ΔΘ")
end



function zxc2()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("12856",4,nil,nil,nil,nil)
gg.getResults(36)
gg.toast("(not found,false)")
end



function zxc3()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("100",16,nil,nil,nil,nil)
gg.getResults(5271)
end



function zxc4()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("327680000",4,nil,nil,nil,nil)
gg.getResults(17)
gg.setRanges(4)

gg.getResults(0)
gg.searchNumber("327680000",4,nil,nil,nil,nil)
gg.getResults(17)
gg.toast("(not found,false)")
end


function zxc5()

end



function zxc6()

end


function PP2()
SN = gg.prompt({
 "🔰  子 弹 间 隔 变 0🏆",
  "🔰  半 自 动 变 全 自 动🏆",
 "🔰  子 弹 无 后🏆",
  "🔰  能 量 剑 不 消 耗 耐 久🏆",
 "🔰  上 面 是 怒 海 专 区 ( 别 点 我 ) 🏆",
  "🔰  狙 击 枪 变 半 自 动🏆",
  "🔰  半 自 动 变 全 自 动🏆",
  "🔰             狙 击 枪 子 弹 防 抖🏆",
    "🔰            子 弹 容 量 3 2 0 0🏆",
  "🔰  能 亮 剑 无 蓄 力🏆",
  "🔴 返 回 主 页🔴" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else

if SN[1]==true then
	 mlp1()
end
if SN[2]==true then
	 mlp2()
end
if SN[3]==true then
	 mlp3()
end
if SN[4]==true then
	 mlp4()
	 end
if SN[5]==true then
	  
mlp5() 
end
if SN[6]==true then
	 mlp6()
	 end
	   if SN[7]==true then
	 mlp7()
end
if SN[8]==true then
	 mlp8()
end
if SN[9]==true then
	 mlp9()
end
if SN[10]==true then
	 mlp10()
	 end
if SN[11]==true then
	  
mlp11() 
end
if SN[12]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()


function mlp7()
gg.clearResults()

gg.getResults(0)
gg.searchNumber("-2117",2,nil,nil,nil,nil)
gg.getResults(2324)
gg.toast("无")
end


function mlp8()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("1137836032",4,nil,nil,nil,nil)
gg.getResults(726)
gg.toast("(not found,false)")
end


function mlp9()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("2.1025082E-41",16,nil,nil,nil,nil)
gg.getResults(26)
gg.toast("(not found,false)")
end


function mlp10()
gg.clearResults()
gg.setRanges(4)
gg.getResults(0)
gg.searchNumber("12005",2,nil,nil,nil,nil)
gg.searchNumber("12005",2)
gg.searchNumber("12005",2)
gg.searchNumber("12005",2)
gg.getResults(999999)
end


function mlp11()

end




function mlp1()
gg.clearResults()
gg.setRanges(4)
gg.getResults(0)
gg.searchNumber("1137836032",4,nil,nil,nil,nil)
gg.getResults(583)
gg.toast("搜索η2条ΔΘ")
end


function mlp2()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("1137836032",4,nil,nil,nil,nil)
gg.getResults(583)
gg.toast("(not found,false)")
	 end

function mlp3()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("1137836032",4,nil,nil,nil,nil)
gg.getResults(726)
gg.toast("(not found,false)")
end


function mlp4()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("655460",4,nil,nil,nil,nil)
gg.getResults(1)
gg.toast("(not found,false)")
end

function mlp5()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("-23612",2,nil,nil,nil,nil)
gg.getResults(2787)
gg.toast("搜索η2条ΔΘ")
end

function mlp6()
gg.clearResults()
gg.getResults(0)
gg.searchNumber("12005",4,nil,nil,nil,nil)
gg.getResults(25)
gg.toast("(not found,false)")
end



function PP3()

SN = gg.prompt({
  "🔰 狙 击 枪 改 全 自 动💊",
  "🔰  子 弹 防 抖 💊",
  "🔰  子 弹 穿 荧 石 块 💊",
  "🔰  子 弹 穿 铁 门 💊",
    "🔰  人 物 透 视 💊",
  "💉 返 回 主 页 💉" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 qwe1()
end
if SN[2]==true then
	 qwe2()
end
if SN[3]==true then
	 qwe2()
end
if SN[4]==true then
	 qwe3()
	 end
if SN[5]==true then
	  qwe4() 
end
if SN[6]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()

function qwe1()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("15004;15003;2;100",4,false,536870912,0,-1)
gg.searchNumber("2",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("狙击枪已改全自动")
end



function qwe2()
gg.setRanges(262207)

gg.searchNumber("15003;60;1,077,936,128;40",4,false,536870912,0,-1)
gg.searchNumber("1,077,936,128",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("子弹防抖开启成功")
end



function qwe3()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("1~1000;450;10000",4,false,536870912,0,-1)
gg.searchNumber("1",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("子弹穿荧石块修改成功")
end



function qwe4()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("1~1000;814;10000",4,false,536870912,0,-1)
gg.searchNumber("1",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("子弹穿铁门修改成功")
end


function qwe5()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("1,189,765,120",4,false,536870912,0,-1)
gg.searchNumber("1,189,765,120",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("人物透视修改成功")
end


function Main5()

SN = gg.prompt({
  "🔰  木 门 改 火 球 🇫🇷",
  "🔰  小 木 棍 改 圆 型 炸 弹 🇫🇷",
  "🔰  盛 水 木 桶 改 岩 浆 桶 🇫🇷",
  "🔰  星 星 礼 盒 改 寒 冰 炸 弹 🇫🇷",
  "🔴 返 回 主 页 🔴" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 c1()
end
if SN[2]==true then
	 c2()
end
if SN[3]==true then
	 c3()
end
if SN[4]==true then
	 c4()
	 end
if SN[5]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()


function a1()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
	 end
	 
	 gg.toast("实践改黑龙蛋在成")
	gg.clearResults()

end


function a2()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("石矛成功重新拿取即可")
	gg.clearResults()
	 end

function a3()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("成功重新拿取即可")
	gg.clearResults()
end


function a4()
gg.toast("开启成功")
end


function Main27()
gg.toast("已进入联机功能区")

SN = gg.prompt({
  "🔰 解 锁 火 箭 背 包 🏈",
  "🔰 解 锁 公 主 床 🏀",
  "🔰 解 锁 弩 ⚽",
  "🔰 解 锁 火 箭 筒 🎾",
    "🔰 解 锁 坚 冰 ⚾",
        "🔰 解 锁 混 凝 土 🏁",
           "🔰 解 锁 熔 岩 球 ⛳",
              "🔰 解 锁 混 乱 球 🏆",
  "🔴 返 回 主 页" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 HS28()
end
if SN[2]==true then
	 HS29()
end
if SN[3]==true then
	 HS30()
end
if SN[4]==true then
	 HS31()
	 end
	 if SN[5]==true then
	 HS32()
end
if SN[6]==true then
	 HS33()
	 end
	 if SN[7]==true then
	 HS34()
	 end
	 	 if SN[8]==true then
	 HS35()
	 end
if SN[9]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()

function HS28()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("960;36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function HS34()
	
end

function HS35()

end



function Main4()
SN = gg.prompt({
  "🔰  石箭改熔岩黑龙球🇰🇷",
  "🔰  石矛改熔岩黑龙球🇯🇵",
  "🔰  能量剑改改地形编辑器🇺🇸",
  "🔰  未  添  加 🇬🇧",
  "🇨🇳 返 回 主 页🇨🇳" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 a1()
end
if SN[2]==true then
	 a2()
end
if SN[3]==true then
	 a3()
end
if SN[4]==true then
	 a4()
	 end
if SN[5]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()


function a1()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
	 end
	 
	 gg.toast("实践改黑龙蛋在成")
	gg.clearResults()

end


function a2()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15054}})
	 end
	 gg.toast("石矛成功重新拿取即可")
	gg.clearResults()
	 end

function a3()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("12005",4,false,536870912,0,-1)
gg.searchNumber("12005",4,false,536870912,0,-1)
gg.getResults(100)
gg.toast("能量剑已改地形编辑器")
end


function a4()
gg.toast("开启成功")
end



function Main1()
gg.toast("已进入联机功能区")

SN = gg.prompt({
  "🔰  复 刻 物 品 数 量 💎",
  "🔰  无 限 跳 💎",
  "🔰  创 造 白 杨 树 物 品 修 改 💎",
  "🔰  飞    天 💎",
  "🔰  穿    墙 💎",
  "🔰  三 角 透 视 💎",
  "🔰  装    死 💎",
  "🔰  飞 行 穿 墙 💎",
  "⭕   Recover 💎",
  "🔰  移速修改 💎",
  "🔰  高    跳 💎",
  "🔰  手 撸 基 岩 💎",
  "💎 返 回 主 页 💎" 
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN== nil then
  else
if SN[1]==true then
	 a0()
end
if SN[2]==true then
	 a01()
end
if SN[3]==true then
	 b00()
end
if SN[4]==true then
	 b0()
	 end
if SN[5]==true then
	 b00()
	 end	 
if SN[6]==true then
	 b01()
	 end	 	 
if SN[7]==true then
	 b02()
	 end	 
if SN[8]==true then
	 b03()
	 end	 
if SN[9]==true then
	 b04()
	 end	 	 
if SN[10]==true then
	 lj1()
	 end	 	 
if SN[11]==true then
	 lj2()
	 end	 	 
if SN[12]==true then
	 lj3()
	 end	 	 	 	 	 
if SN[13]==true then
	  
Main0() 
end
FX1=0
FX2=0
end
end
gg.clearResults()


function a01()
gg.toast("请选择无限跳开关")
F = gg.alert("🔰请选择无限跳｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
 gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
qmnb = {
{["memory"] = 4},
{["name"] = "无限跳开启"},
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
 elseif F == 2 then
 qmnb = {
{["memory"] = 4},
{["name"] = "无限跳恢复"},
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
{["value"] = 1, ["offset"] = 116, ["type"] = 4, ["freeze"] = false},

}
xqmnb(qmnb)
gg.clearResults()
 
 end

end


function b00()
gg.alert("💡开启指南💡{进入创造图打开创造，背包页面必须是作物页面在开此功能输入你想要物品的代码不知道代码推荐代码918测试，修改成功后将白杨树苗拿出拿出来的就变成你修改的物品了}","复制文字")
  gg.copyText("皮哥牛逼")
gg.clearResults()
  v = gg.prompt({
    i = "请输入要更改的物品代码丨推荐代码918"
  }, {i = "918"})
  if v == nil then
    gg.toast("缺少更改数值")
  else
  while  true do 
    gg.sleep(100)
    gg.toast("🔰请完成指令{打开背包在点击悬浮窗}")
if gg.isVisible(true) then 
gg.setVisible(false)   
gg.toast("正在调用果木树苗改物品数据请稍后...")
qmnb = {
{["memory"] = 4},
{["name"] = "果木树苗改物品"},
{["value"] = 212, ["type"] = 4},
{["lv"] = 8, ["offset"] = -88, ["type"] = 4},
{["lv"] = 128, ["offset"] = -84, ["type"] = 4},
{["lv"] = 3, ["offset"] = -76, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -36, ["type"] = 4},
{["lv"] = 1050253722, ["offset"] = -28, ["type"] = 4},
}
qmxg = {
{["value"] = v.i, ["offset"] = 0, ["type"] = 4},

}
xqmnb(qmnb)
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


function a()
gg.clearResults()
v = gg.prompt({
    i = "🔰🔰🔰输入你➡现在⬅的坐骑代码🔰🔰🔰 \n❤敏捷飞鼠1⃣~2⃣『3434~3435』    \n❤化石龙1⃣~3⃣『3430~3432』   \n❤麒麟1⃣~3⃣『3436~3438』    \n❤迅捷陆行鸟1⃣~3⃣『3439~3441』    \n❤欢乐白象1⃣~3⃣『3442~3444』    \n❤海豹队长1⃣~3⃣『3445~3447』   \n❤福袋猫猫1⃣~3⃣『3454~3456』   \n❤神圣天马1⃣~3⃣『3456~3459』"
  }, {i = "3434"})
  if v == nil then
    gg.toast("缺少数值")
  else
   b = gg.prompt({
    i = "🔰🔰输入你➡想要⬅坐骑的代码{请牢记输入再次修改需要}🔰🔰\n❤敏捷飞鼠1⃣~2⃣『3434~3435』    \n❤化石龙1⃣~3⃣『3430~3432』   \n❤麒麟1⃣~3⃣『3436~3438』    \n❤迅捷陆行鸟1⃣~3⃣『3439~3441』    \n❤欢乐白象1⃣~3⃣『3442~3444』    \n❤海豹队长1⃣~3⃣『3445~3447』   \n❤福袋猫猫1⃣~3⃣『3454~3456』   \n❤神圣天马1⃣~3⃣『3456~3459』 "
  }, {i = "3432"}) 
  if b == nil then
    gg.toast("缺少更改数值")
  else
  while  true do 
    gg.sleep(100)
    gg.toast("🔰请完成指令{召唤出现在的坐骑在点击悬浮窗}")
if gg.isVisible(true) then 
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("34")
if gg.isVisible(true) then gg.ale('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.getResults(5)
gg.editAll(b.i,gg.TYPE_DWORD)
local t = gg.getResults(5)
for i, v in ipairs(t) do
t[i].value =(b.i)
t[i].freeze =true
gg.addListItems(t)
gg.toast("50%")
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3D;3000~4000;30000::50",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("8")
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.isVisible(true) then gg.ale('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.getResults(3)
gg.editAll(b.i,gg.TYPE_DWORD)
local t = gg.getResults(3)
for i, v in ipairs(t) do
t[i].value =(b.i)
t[i].freeze =true
gg.addListItems(t)
gg.toast("修改成功✔️")
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

function aa1()
gg.clearResults()
v = gg.prompt({
i="🔰🔰🔰输入你➡上次改的⬅装扮的代码🔰🔰🔰🔰 \n❗❗❗首次开使用迷梭梭装扮直接直接确认❗❗❗                                                    \n ❤装扮代码大全❤:[{胖哒500}{齐天小圣700}{恐龙迷斯拉1200}{琉璃酱1500}{乔治1700}{兔美美1900}{安妮2000}{墨家小飞2200}{德古拉六世2400}{叮叮当2600}{荒原猎人雪诺2900}{羽姬3100}{慕容笑天3400}]西部牛仔3700}{篮球队队长}{3900拉拉队队长}{4200露西4400}{船长4700}{甜心玛丽49005900}{月无双6900}{余小乐5700}{莉莉丝7000}{叶小龙5500}{花小楼5300}{程锦衣7500}{幻零7300}{幻音7700}{柳儿仙6500}{二郎神8000}{帕普奇8300}}米娜8500}{雪灵8800}{嘟嘟啵啵9000}{嘟嘟9300}{啵啵9500}{梦歌9800}{斩浪10000}{安吉洛斯10300}{暗星兰斯洛特10600}{喵糖10900}{未知皮肤11200}{星翼11500}{离11600}{黯11800}{啾啾12200}{华乐12400}{大毛12600}]"
  }, {i = "6912"})
  if v == nil then
    gg.toast("缺少数值")
  else
   b =gg.prompt({
   i="🔰🔰🔰输入你➡想要⬅装扮的代码🔰🔰🔰🔰                                                                            \n ❤装扮代码大全❤:[{胖哒500}{齐天小圣700}{恐龙迷斯拉1200}{琉璃酱1500}{乔治1700}{兔美美1900}{安妮2000}{墨家小飞2200}{德古拉六世2400}{叮叮当2600}{荒原猎人雪诺2900}{羽姬3100}{慕容笑天3400}]西部牛仔3700}{篮球队队长}{3900拉拉队队长}{4200露西4400}{船长4700}{甜心玛丽49005900}{月无双6900}{余小乐5700}{莉莉丝7000}{叶小龙5500}{花小楼5300}{程锦衣7500}{幻零7300}{幻音7700}{柳儿仙6500}{二郎神8000}{帕普奇8300}}米娜8500}{雪灵8800}{嘟嘟啵啵9000}{嘟嘟9300}{啵啵9500}{梦歌9800}{斩浪10000}{安吉洛斯10300}{暗星兰斯洛特10600}{喵糖10900}{未知皮肤11200}{星翼11500}{离11600}{黯11800}{啾啾12200}{华乐12400}{大毛12600}]"
  }, {i = "700"}) 
  if b == nil then
    gg.toast("缺少更改数值")
  else
   while  true do 
    gg.sleep(100)
    gg.toast("🔰请完成指令{首次开启必须使用迷梭梭在点悬浮窗}")
if gg.isVisible(true) then 
gg.setVisible(false)
gg.toast("正在调用装扮数据请稍后...")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(v.i,gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount()==0 then os.exit()end
if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰                                                  ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.getResults(5)
gg.searchAddress("6D8")
if gg.getResultCount()==0 then gg.toast("❗开启失败❗")print("❗开启失败确定是否按要求使用迷啥的首次开现在的装扮代码不要填直接确定❗")os.exit()end
if gg.isVisible(true) then gg.ale('🔰违规操作❗制作不易且行且珍惜🔰                                                        ❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.getResults(5)
gg.editAll(b.i,gg.TYPE_DWORD)
local t = gg.getResults(5)
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
function c()
gg.toast("正在调用创造背包数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "创造背包"},
{["value"] = 1028443341, ["type"] = 4},
{["lv"] = 16777216, ["offset"] = -240, ["type"] = 4},
{["lv"] = 10, ["offset"] = -52, ["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -8, ["type"] = 4},
}
qmxg = {
{["value"] = 16777472, ["offset"] = -240, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function d()
gg.toast("正在调用血量饥饿度数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无限血饥饿度"},
{["value"] = 0.00005336541, ["type"] = 16},
{["lv"] = 100, ["offset"] = -120, ["type"] = 16},
{["lv"] = 100, ["offset"] = -116, ["type"] = 16},
{["lv"] = -1, ["offset"] = -112, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -68, ["type"] = 16},
{["lv"] = 100, ["offset"] = -24, ["type"] = 16},
}
qmxg = {
{["value"] = 666666, ["offset"] = -120, ["type"] = 16, ["freeze"] = true},
{["value"] = 666666, ["offset"] = -116, ["type"] = 16, ["freeze"] = true},
{["value"] = 666666, ["offset"] = -24, ["type"] = 16, ["freeze"] = true},
}
xqmnb(qmnb)
gg.clearResults()
end

function d0()
gg.toast("正在恢复血量饥饿度数据请稍后...")
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "恢复无限血饥饿度"},
{["value"] = 0.00005336541, ["type"] = 16},
{["lv"] = 666666, ["offset"] = -120, ["type"] = 16},
{["lv"] = 666666, ["offset"] = -116, ["type"] = 16},
{["lv"] = -1, ["offset"] = -112, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -68, ["type"] = 16},
{["lv"] = 666666, ["offset"] = -24, ["type"] = 16},
}
qmxg = {
{["value"] = 666666, ["offset"] = -120, ["type"] = 16, ["freeze"] = false},
{["value"] = 666666, ["offset"] = -116, ["type"] = 16, ["freeze"] = false},
{["value"] = 666666, ["offset"] = -24, ["type"] = 16, ["freeze"] = false},
{["value"] = 666666, ["offset"] = -20, ["type"] = 16, ["freeze"] = false},
{["value"] = 100, ["offset"] = -120, ["type"] = 16,},
{["value"] = 100, ["offset"] = -116, ["type"] = 16,},
{["value"] = 100, ["offset"] = -24, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end

function e()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "水下无限氧气"},
{["value"] = 0.00005336541, ["type"] = 16},
{["lv"] = -1, ["offset"] = -112, ["type"] = 16},
{["lv"] = 0, ["offset"] = -92, ["type"] = 16},
{["lv"] = -1, ["offset"] = -88, ["type"] = 16},
{["lv"] = 10, ["offset"] = -68, ["type"] = 16},
{["lv"] = -1, ["offset"] = -64, ["type"] = 16},
}
qmxg = {
{["value"] = 10, ["offset"] = -68, ["type"] = 16, ["freeze"] = true},

}
xqmnb(qmnb)
gg.clearResults()
end

function f()
gg.clearResults()
local FKC_a1 = os.clock()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3~200F;1F;15;10000;100~1000::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.alert("❓秒撸方块是否已开启❓\n❗检测代码无效终止开启..将自动跳过此功能❗") gg.toast("❌飞天开启失败❌")    else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("3~200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.alert("❓秒撸是否已开启❓\n❗检测代码无效终止开启..将自动跳过此功能❗")gg.toast("❌飞天开启失败❌")     else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("2C")
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast('✔️ID:秒撸方块开启成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.clearResults()
end end end


function b0()
gg.toast("请选择飞天开关")
F = gg.alert("🔰请选择飞天｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启飞天，请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3;2;0;16777216;1065353216;80F::80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗代码无效也终止开启...开启失败❗") gg.toast("检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗代码无效也终止开启...开启失败❗") gg.toast("检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("28")
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("16777572", gg.TYPE_DWORD)
local t = gg.getResults(a1)
for i, v in ipairs(t) do
t[i].value =("16777572")
t[i].freeze =true
gg.addListItems(t)
gg.toast('✔️ID:飞天开启成功\n📝共修改' .. a1 .. '条数据 📌冻结'..a1..'条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
end
gg.toast("飞天开启成功，共修改"..a1.."条数据 ，冻结数据"..a1.."条,"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("正在关闭飞天请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3;2;0;16777572;1065353216;80F::80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启或已恢复❓")gg.toast("此功能是否已开启？检测到恢复特征码无效已自动停止恢复") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("16777572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启或已恢复❓") gg.toast("此功能是否已开启？检测到恢复特征码无效已自动停止恢复") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("28")
a1=gg.getResultsCount() 
gg.getResults(a1)
local t = gg.getResults(a1)
for i, v in ipairs(t) do
t[i].value =("16777572")
t[i].freeze =false
gg.addListItems(t)
gg.getResults(a1)
gg.editAll("16777216", gg.TYPE_DWORD)
gg.toast('✔️ID:飞天恢复成功\n📝共修改' .. a1 .. '条数据 📌解冻'..a1..'条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
end
gg.toast("飞天恢复成功，共恢复"..a1.."条数据 ，解除冻结数据"..a1.."条,"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))

gg.clearResults()
end end end  end 


function b00()
gg.toast("请选择穿墙开关。")
F = gg.alert("🔰请选择穿墙｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
  gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
while  true do 
    gg.sleep(100)
    gg.toast("🔰功能指南🔰\n📝[功能需知:单板穿墙需要配合无限跳和飞天才能正常使用，也可直接开下方的飞行穿墙，此功能用于恢复单开启需要]\n单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙开启"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = 180, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = -9999, ["offset"] = -12, ["type"] = 4},

}
xqmnb(qmnb)
while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end end end  end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙恢复"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = -9999, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = 180, ["offset"] = -12, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end end 


function b01()
  gg.toast("请选择三角透视开关。")
F = gg.alert("🔰请选择三角透视｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
gg.clearResults()
qmnb = {
{["memory"] = 16384},
{["name"] = "三角透视开启"},
{["value"] = 1886930226, ["type"] = 4},
{["lv"] = 1769172844, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1766092399, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1396113522, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
{["lv"] = 65536, ["offset"] = 36, ["type"] = 4},
{["lv"] = 2, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 36, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
elseif F == 2 then
qmnb = {
{["memory"] = 16384},
{["name"] = "三角透视恢复"},
{["value"] = 1886930226, ["type"] = 4},
{["lv"] = 1769172844, ["offset"] = 4, ["type"] = 4},
{["lv"] = 1766092399, ["offset"] = 8, ["type"] = 4},
{["lv"] = 1396113522, ["offset"] = 12, ["type"] = 4},
{["lv"] = 2, ["offset"] = 28, ["type"] = 4},
{["lv"] = 0, ["offset"] = 36, ["type"] = 4},
{["lv"] = 2, ["offset"] = 40, ["type"] = 4},
}
qmxg = {
{["value"] = 65536, ["offset"] = 36, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end
end

function b02()
  gg.toast("请选择装死开关。")
F = gg.alert("🔰请选择装死｛开 关｝🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择｛开 关｝")
  else 
  end
if  F== 1 then
while  true do 
    gg.sleep(100)
    gg.toast("🔰功能指南🔰\n📝[注意:装死需要在血量一百时开，不然会失败]\n单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)
qmnb = {
{["memory"] = 4},
{["name"] = "装死开启"},
{["value"] = 0.00005336541, ["type"] = 16},
{["lv"] = 100, ["offset"] = -120, ["type"] = 16},
{["lv"] = 100, ["offset"] = -116, ["type"] = 16},
{["lv"] = -1, ["offset"] = -112, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -68, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = -120, ["type"] = 16},
}
xqmnb(qmnb)
while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
end end end  end
elseif F == 2 then
qmnb = {
{["memory"] = 4},
{["name"] = "恢复装死"},
{["value"] = 0.00005336541, ["type"] = 16},
{["lv"] = 0, ["offset"] = -120, ["type"] = 16},
{["lv"] = 100, ["offset"] = -116, ["type"] = 16},
{["lv"] = -1, ["offset"] = -112, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = -68, ["type"] = 16},
}
qmxg = {
{["value"] = 100, ["offset"] = -120, ["type"] = 16},
}
xqmnb(qmnb)
gg.clearResults()
end
end

function b03()
gg.clearResults()
local FKC_a1 = os.clock()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3;2;0;16777216;1065353216;80F::80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.alert("❓飞天是否已开启❓\n❗检测代码无效终止开启..将自动跳过此功能❗") gg.toast("❌飞天开启失败❌")    else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.alert("❓飞天是否已开启❓\n❗检测代码无效终止开启..将自动跳过此功能❗")gg.toast("❌飞天开启失败❌")     else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("28")
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("16777572", gg.TYPE_DWORD)
local t = gg.getResults(a1)
for i, v in ipairs(t) do
t[i].value =("16777572")
t[i].freeze =true
gg.addListItems(t)
gg.toast('✔️ID:飞天开启成功\n📝共修改' .. a1 .. '条数据 📌冻结'..a1..'条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.clearResults()
end end end

qmnb = {
{["memory"] = 4},
{["name"] = "无限跳开启"},
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
while  true do 
    gg.sleep(100)
    gg.toast("🔰功能指南🔰\n[需知:下一步你会失控下落，下落到想要高度点击右下角的飞行按钮停止，可点击跳跃按钮位置调整高度]单点修改器继续")
if gg.isVisible(true) then 
gg.setVisible(false)
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙开启"},
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
{["value"] = -9999, ["offset"] = -12, ["type"] = 4,},

}
xqmnb(qmnb)
while  true do 
if gg.isVisible(true) then 
gg.setVisible(false)
gg.clearResults()
Main0()
 end end end 
 
 
function b04()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "穿墙恢复"},
{["value"] = 220, ["type"] = 4},
{["lv"] = 60, ["offset"] = -16, ["type"] = 4},
{["lv"] = -9999, ["offset"] = -12, ["type"] = 4},
{["lv"] = 120, ["offset"] = -4, ["type"] = 4},
{["lv"] = 120, ["offset"] = 4, ["type"] = 4},
{["lv"] = -1082130432, ["offset"] = 216, ["type"] = 4},
{["lv"] = 1082130432, ["offset"] = 240, ["type"] = 4},
{["lv"] = 1086324736, ["offset"] = 244, ["type"] = 4},
{["lv"] = 1073741824, ["offset"] = 248, ["type"] = 4},
}
qmxg = {
{["value"] = 180, ["offset"] = -12, ["type"] = 4},

}
xqmnb(qmnb)

gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "无限跳恢复"},
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
{["value"] = 1, ["offset"] = 116, ["type"] = 4, ["freeze"] = false},

}
xqmnb(qmnb)

gg.clearResults()
local FKC_a1 = os.clock()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3;2;0;16777572;1065353216;80F::80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启或已恢复❓") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("16777572", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启或已恢复❓") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("28")
a1=gg.getResultsCount() 
gg.getResults(a1)
local t = gg.getResults(a1)
for i, v in ipairs(t) do
t[i].value =("16777572")
t[i].freeze =false
gg.addListItems(t)
gg.getResults(a1)
gg.editAll("16777216", gg.TYPE_DWORD)
gg.toast('✔️ID:飞天恢复成功\n📝共修改' .. a1 .. '条数据 📌解冻'..a1..'条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.clearResults()
end end end end end end


function lj1()
  gg.toast("请选择移速修改方式。")
F = gg.alert("🔰请选择移速修改方式🔰","🔵开启🔵","🔴更改🔴")
 if  F~=1 and F~=2 then
   gg.toast("你未选择修改方式默认取消")
    gg.toast("📌你未选择开启方式")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("请输入要修改的移速倍数。")
v = gg.prompt({
    i = "📝请输入移速倍数{记住数值更改恢复需要}丨🔴不要超过1000"
  }, {i = "40"})
  if v == nil then
  gg.toast("你为输入修改数值默认取消。")
    gg.toast("📌未输入修改数值")
  else
  gg.toast("正在进行移动速度修改，请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-0.0078125E;10;-1;0.00005336541:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("c")
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll(v.i, gg.TYPE_FLOAT)
gg.toast('✔️ID:移速修改成功\n📝共修改' .. a1 .. '条数据 \n📌修改的倍数是'..v.i..'倍'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("移速修改成功，共修改"..a1.."条数据 ，修改倍数是"..v.i.."倍,"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end  end end end
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("请输入你上次输入的修改倍数。")
v = gg.prompt({
    i = "📝请输入你上次更改的倍数丨🔴超过1000的无法再更改"
  }, {i = "40"})
  if v == nil then
    gg.toast("你为输入修改数值默认取消")
    gg.toast("📌未输入修改数值")
  else
  gg.toast("正在调用移速数据，请稍等。")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-0.0078125E;10;1~1000;0.00005336541:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复") gg.alert("❓功能是否已开启..更改失败❗") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber(v.i, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("检测你输入的倍数和上次输入的不一致，请重新输入。") gg.alert("❗检测你输入的倍数和上次输入的不一致请重新输入❗") gg.toast("❌更改失败❌") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchAddress("c")
if gg.getResultCount()==0 then gg.toast("检测你输入的倍数和上次输入的不一致，请重新输入。") gg.alert("❗检测你输入的倍数和上次输入的不一致请重新输入❗")  gg.toast("❌更改失败❌") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
a1=gg.getResultsCount() 
gg.toast("移速数据调用成功。请输入你要更改的倍数")
b = gg.prompt({
    i = "📝请输入要更改的倍数{记住数值更改恢复需要}丨🔴恢复输入-1"
  }, {i = "-1"})
  if v == nil then
    gg.toast("📌未输入更改数值")
  else
gg.getResults(a1)
gg.editAll(b.i, gg.TYPE_FLOAT)
gg.toast('✔️ID:移速更改成功\n📝共修改' .. a1 .. '条数据 \n📌更改的倍数是'..b.i..'倍'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("移速更改成功，共更改"..a1.."条数据 ，修改倍数是"..b.i.."倍,"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end end end end

function lj2()
gg.toast("请选择高跳开关。")
F = gg.alert("🔰请选择高跳[开 关]🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择[开 关]")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启高跳，请稍等")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.98;0.6::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("0.98", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("1.09", gg.TYPE_FLOAT)
gg.toast('✔️ID:高跳开启成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("高跳开启成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))

gg.clearResults()
end  end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("真在关闭高跳，请稍等")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.09;0.6::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("1.09", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("0.98", gg.TYPE_FLOAT)
gg.toast('✔️ID:高跳恢复成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("高跳恢复成功，共恢复"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 

function lj3()
gg.toast("请选择手撸基石开关。")
F = gg.alert("🔰请选择手撸基岩[开 关]🔰","🔵开🔵","🔴关🔴")
 if  F~=1 and F~=2 then
   gg.toast("你未选择开关默认取消")
    gg.toast("📌你未选择[开 关]")
  else 
  end
if  F== 1 then
local FKC_a1 = os.clock()
gg.toast("正在开启手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;-1F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启") else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗开启失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止开启")else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("5", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩开启成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石开启成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end  end 
elseif F == 2 then
local FKC_a1 = os.clock()
gg.toast("正在关闭手撸基石请稍等")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1~1000;-1;5F;15;10000::88", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启❓") gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount()==0 then gg.toast("❗恢复失败..功能是否已开启❓")gg.toast("此功能是否已开启？检测到特征码无效已自动停止恢复")  else if gg.isVisible(true) then gg.alert('🔰违规操作❗制作不易且行且珍惜🔰\n❗请勿在执行时打开❗','❌强制结束❌') gg.clearResults() gg.toast("❗开启失败❗")   os.exit()  end
a1=gg.getResultsCount() 
gg.getResults(a1)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast('✔️ID:手撸基岩恢复成功\n📝共修改' .. a1 .. '条数据'..string.format('\n🧭耗时: %.2f', os.clock() - FKC_a1))
gg.toast("手撸基石恢复成功，共修改"..a1.."条数据"..string.format("耗时: %.2f秒", os.clock() - FKC_a1))
gg.clearResults()
end end end end 



function k()
gg.alert('❗测试需知{本功能区功能目前只能在单机血量最大值和饥饿度一百时开才有效若都没效果换图重试}{这些功能房主联机应该都可以用的只是代码不好找等我找联机房主的敬请期待吧}','知道了')
 Main3()
end

function j()
gg.clearResults()
gg.toast("开启中可能有点慢请稍等.......")
gg.toast("开启中可能有点慢请稍等.......")
qmnb = {
{["memory"] = 4},
{["name"] = "测试"},
{["value"] = -840053267, ["type"] = 4},
{["lv"] = 136, ["offset"] = -4256, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4248, ["type"] = 4},
{["lv"] = 1, ["offset"] = -4184, ["type"] = 4},
{["lv"] = 0, ["offset"] = -404, ["type"] = 4},
{["lv"] = -697184787, ["offset"] = -12, ["type"] = 4},
{["lv"] = -840051153, ["offset"] = -8, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 8, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 12, ["type"] = 4},
{["lv"] = -840053267, ["offset"] = 16, ["type"] = 4},
}
qmxg = {
{["value"] = 9999, ["offset"] = -404, ["type"] = 4},

}
xqmnb(qmnb)
gg.clearResults()
end

function h()
gg.clearResults()
gg.toast("开启中可能有点慢请稍等.......")
gg.toast("开启中可能有点慢请稍等.......")
qmnb = {
{["memory"] = 4},
{["name"] = "10倍移速"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 48, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 92, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 148, ["type"] = 16},
}
qmxg = {
{["value"] = 1, ["offset"] = 148, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()
end

function i()
gg.clearResults()
gg.toast("开启中可能有点慢请稍等.......")
gg.toast("开启中可能有点慢请稍等.......")
qmnb = {
{["memory"] = 4},
{["name"] = "超级高跳"},
{["value"] = 100, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 48, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 92, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 156, ["type"] = 16},
}
qmxg = {
{["value"] = 2, ["offset"] = 156, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()
end

function g()
gg.clearResults()
qmnb = {
{["memory"] = 4},
{["name"] = "高跳防摔"},
{["value"] = 100.0, ["type"] = 16},
{["lv"] = 0.0, ["offset"] = 12, ["type"] = 16},
{["lv"] = 10.0, ["offset"] = 48, ["type"] = 16},
{["lv"] = 100.0, ["offset"] = 92, ["type"] = 16},
}
qmxg = {
{["value"] = 99, ["offset"] = 12, ["type"] = 16},

}
xqmnb(qmnb)
gg.clearResults()
end


function Main2()
 SJ = os.date("진입시간{%Y年%m月%d日%H时%M分%S秒}")
SN = gg.prompt({
"🔰 坐 骑 修 改 💎",
"🔰 装 扮 修 改 { 首 次 使 用 迷 梭 梭 } 💎",
"🔰 创 造 背 包 { 全 新 无 要 求 源 码 } 💎",
"🔰 无 限 血 饥 饿 度 不 减 { 血 量 饥 饿 1 0 0 开 } 💎",
"⭕ 恢 复 无 限 血 饥 饿 度 不 减 { 血 量 6 个 6 开 } 💎",
"🔰 水 下 无 限 氧 气 💎",
"🔰 秒 撸 方 块 { ❗ N E W ❗ } 💎",
"💎  返  回  主  页  💎" .. SJ
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN == nil then
  else
if SN[1]==true then
	 a()
end
if SN[2]==true then
	 aa1()
end
if SN[3]==true then
  c()
end
if SN[4]==true then
	 d()
end
if SN[5]==true then
	 d0()
end
if SN[6]==true then
  e()
end
if SN[7]==true then
  f()
  end
if SN[8]==true then
 Main0()   
end
FX1=0
FX2=0
end
end




function Main3()
SJ = os.date("테스트 시간{%Y年%m月%d日%H时%M分%S秒}")
SN = gg.prompt({
"💡测 试 需 知💡",
"👜秒 杀 一 切👜",
"👜十 倍 移 速👜",
"👜超 级 高 跳👜",
"👜高 跳 防 摔👜",
"💼返回主页💼" .. SJ
 },{},{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if SN == nil then
  else 
if SN[1]==true then
	 k()  
	end
if SN[2]==true then
	 j()
end
if SN[3]==true then
	 h()
end
if SN[4]==true then
     i()
  end
 if SN[5]==true then
  g()
end
if SN[6]==true then
	 Main0()
	 
end	 
FX1=0
FX2=0
end
end






function c1()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("812", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
	 end
	 gg.toast("修改成功重新拿取即可")
	 gg.clearResults()
end


function c2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('11323',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('11323',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 11323,}})
        end
gg.toast("开启成功")
end



function c3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('11049',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('11049',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 11049,}})
end



gg.toast("开启成功")
end



function c4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('12963',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('12963',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_DWORD,freeze = true,value = 12963,}})
end

gg.toast("开启成功")
end


function Exit()
print("")
os.exit()
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