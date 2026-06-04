gg.alert("❤作者恶魔，这是用了很久做的❤")
gg.alert("❤有些功能是网上搜集的❤")
gg.alert("🉐更新了防踢和计算器，修改了bug等")
gg.toast(os.date("奔放时间为:\n%Y年%m月%d日%H时%M分%S秒"))


function Main0()
SN = gg.choice({
	 "🛡️🛡️开挂遇到bug解决🛡️🛡️",
	 "✳️普通功能系列✳️",
	 "✳️生化远抓系列✳️",
	 "✳️子弹穿墙系列✳️",
	 "✳️人物穿墙系列✳️",
	 "✳️新版自瞄系列✳️",
	 "✳️飞天入地系列✳️",
	 "✳️武器无后系列✳️",
	 "✳️近战飞刀系列✳️",
	 "✳️子弹秒杀系列✳️",
	 "😏防踢和小工具😏️",
	 "✳️🛠️处理器透视系列🛠️✳️",
	 "🍵回到凡间🍵",
}, nil, "欢迎使用恶魔辅助\n恶魔最帅")
if SN==1 then
	 Main62()
end
if SN==2 then
	 Main2()
end
if SN==3 then
	 Main47()
end
if SN==4 then
	 Main41()
end
if SN==5 then
	 Main3()
end
if SN==6 then
	 Main4()
end
if SN==7 then
	 Main5()
end
if SN==8 then
	 Main8()
end
if SN==9 then
	 Main10()
end
if SN==10 then
	 Main13()
end
if SN==11 then
	 Main14()
end
if SN==12 then
	 Main15()
end
if SN==13 then
	 HS16()
end
FX1=0
end

function Main62()
SN = gg.multiChoice({
	 "卡视角🛑把自己移除房间",
	 "返回主页",
}, nil, "bug分类:\n卡视角\n闪退\n黑屏\n网络延迟9999999")
if SN[1]==true then
	 HS63()
end
if SN[2]==true then
	 HS65()
end
FX1=0
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1;0.33333334327::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-2", gg.TYPE_FLOAT)
	 gg.toast("已踢出房间")
	 gg.clearResults()
 end
function HS65()
	 Main0()
end

function Main2()
SN = gg.multiChoice({
	 "💀全图手雷[开]💀",
	 "💀全图手雷[关]💀",
	 "💀轻微加速[开]💀",
	 "💀轻微加速[关]💀",
	 "⚡超级闪电侠[开]⚡",
	 "⚡超级闪电侠[关]⚡",
	 "🛑蹲下隐身天线[退游关]🛑",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS55()
end
if SN[2]==true then
	 HS56()
end
if SN[3]==true then
	 HS57()
end
if SN[4]==true then
	 HS58()
end
if SN[5]==true then
	 HS59()
end
if SN[6]==true then
	 HS60()
end
if SN[7]==true then
	 HS96()
end
if SN[8]==true then
	 HS98()
end
FX1=0
end

function HS55()
	  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("8F;22F;10F;4F;5F;0.1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("全图只扣25血！")
	 gg.clearResults()
end

function HS56()
  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("8F;22F;10F;4F;5F;0.1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
	 gg.toast("关闭成功！")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-0.198765;-0.198765::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1;0.33333334327", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-0.198765", gg.TYPE_FLOAT)
	 gg.toast("轻微加速开启成功！")
	 gg.clearResults()
end

function HS58()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-0.198765;-0.198765::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.198765", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1;0.33333334327", gg.TYPE_FLOAT)
	 gg.toast("轻微加速开启成功！")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1;0.33333334327::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-0.912345", gg.TYPE_FLOAT)
	 gg.toast("闪电侠开启成功！")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-0.912345;-0.912345::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.912345", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1;0.33333334327", gg.TYPE_FLOAT)
	 gg.toast("闪电侠关闭成功！")
	 gg.clearResults()
end

function HS96()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.20000004768F;50.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.7", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS98()
	 Main0()
end

function Main47()
SN = gg.multiChoice({
	 "⭐变异体远抓[开]⭐",
	 "⭐变异体远抓[关]⭐",
	 "🛑母体飞抓[开]🛑",
	 "🛑母体飞抓[关]🛑",
	 "🛡️柒帘变异体杀母体[开]🛡️",
	 "🛡️柒帘变异体抓母体[关]🛡️",
	 "返回主页",
}, nil, "变异体远抓要在下一把开始之前关闭\n母体远抓要点开方案一，再开二。\n柒帘不能和范围一起开")
if SN[1]==true then
	 HS48()
end
if SN[2]==true then
	 HS49()
end
if SN[3]==true then
	 HS50()
end
if SN[4]==true then
	 HS51()
end
if SN[5]==true then
	 HS52()
end
if SN[6]==true then
	 HS53()
end
if SN[7]==true then
	 HS54()
end
FX1=0
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.69999998808;1.8;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("生化远抓开启成功！")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.69999998808;999;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.8", gg.TYPE_FLOAT)
	 gg.toast("生化远抓关闭成功！")
	 gg.clearResults()
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.20000004768F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("母体飞抓开启成功！")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.20000004768F;999F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("第一步成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("开启成功！")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12D;-1D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4096", gg.TYPE_FLOAT)
	 gg.toast("关闭成功！")
	 gg.clearResults()
end

function HS54()
	 Main0()
end

function Main41()
SN = gg.multiChoice({
	 "😏子弹穿墙[开]😏",
	 "😏子弹穿墙[关]😏",
	 "返回主页",
}, nil, "子弹穿墙\n😍子弹穿墙打开后，要在下一把开始之前关闭，不然会卡视角😘\n持续更新中")
if SN[1]==true then
	 HS86()
end
if SN[2]==true then
	 HS43()
end
if SN[3]==true then
	 HS46()
end
FX1=0
end

function HS86()
	 gg.clearResults()
gg.setRanges(32)
gg.searchNumber("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("666999", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.toast("新游戏开始前请恢复，不然卡视角。")
end
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("666999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("恢复失败")
else
gg.searchNumber("666999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12", gg.TYPE_DWORD)
gg.toast("恢复成功")
end
end

function HS46()
	 Main0()
end

function Main3()
SN = gg.multiChoice({
	 "♛人物穿墙[开]♛",
	 "♛人物穿墙[关]♛",
	 "🔵穿山加自瞄[开]🔵",
	 "🔵穿山加自瞄[关]🔵",
	 "🔒人物复活定位[开]🔒",
	 "🔒人物复活定位[关]🔒",
	 "⚛️灵魂出窍[开]⚛️",
	 "⚛️灵魂出窍[关]⚛️",
	 "💟穿山盲刀[开]💟",
	 "💟穿山盲刀[关]💟",
	 "返回主页",
}, nil, "开穿山前先把子弹穿墙关了\n别人会卡视角")
if SN[1]==true then
	 HS44()
end
if SN[2]==true then
	 HS45()
end
if SN[3]==true then
	 HS31()
end
if SN[4]==true then
	 HS87()
end
if SN[5]==true then
	 HS33()
end
if SN[6]==true then
	 HS34()
end
if SN[7]==true then
	 HS35()
end
if SN[8]==true then
	 HS36()
end
if SN[9]==true then
	 HS37()
end
if SN[10]==true then
	 HS38()
end
if SN[11]==true then
	 HS39()
end
FX1=0
end

function HS44()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4095", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS45()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4095", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4096", gg.TYPE_DWORD)
	 gg.toast("恢复成功")
	 gg.clearResults()
end
function HS31()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4095", gg.TYPE_DWORD)
	 gg.toast("穿山加自瞄开启成功")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12D;4,095D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4095", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4096", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.01;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-123456", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS34()
	gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-123456", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-123456", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.1;0.3;0.33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("开启成功！跳着打有伤害")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("99;0.3;0.33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1", gg.TYPE_FLOAT)
	 gg.toast("灵魂出窍关闭成功！")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12D;4096D;0.04F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4090", gg.TYPE_DWORD)
	 gg.toast("穿山盲刀开启成功！")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.04;12D;4090D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4090", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4096", gg.TYPE_DWORD)
	 gg.toast("穿山盲刀关闭成功！")
	 gg.clearResults()
end

function HS39()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "🍵横向自瞄[开]🍵",
	 "🍵横向自瞄[关]🍵",
	 "🛡️隔墙自瞄[开]🛡️",
	 "🛡️隔墙自瞄[关]🛡️",
	 "🛑锁身自瞄[开]🛑",
	 "🛑锁身自瞄[关]🛑",
	 "🔒视角锁头[退游关闭]🔒",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS66()
end
if SN[2]==true then
	 HS67()
end
if SN[3]==true then
	 HS68()
end
if SN[4]==true then
	 HS69()
end
if SN[5]==true then
	 HS70()
end
if SN[6]==true then
	 HS71()
end
if SN[7]==true then
	 HS72()
end
if SN[8]==true then
	 HS74()
end
FX1=0
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功！")
	 gg.clearResults()
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911;999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_FLOAT)
	 gg.toast("横向自瞄关闭成功！")
	 gg.clearResults()
end

function HS68()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4096D;12D;0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096D;12D;0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("隔墙自瞄开启成功")
	 gg.clearResults()
end

function HS69()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-987654.0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-987654.0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.60239994526", gg.TYPE_DWORD)
	 gg.toast("隔墙自瞄关闭成功！")
	 gg.clearResults()
end

function HS70()
  gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("300;0.1;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9986", gg.TYPE_DWORD)
	 gg.toast("锁身开启成功！")
	 gg.clearResults()
end
function HS71()
	gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("300;0.1;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-9986", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_DWORD)
	 gg.toast("锁身关闭成功！")
	 gg.clearResults()
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300;0.1;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("打人时跳起来，使劲把视角往上拉容易爆头")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.7;0.2::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("推荐配合横向自瞄")
end

function HS74()
	 Main0()
end

function Main5()
SN = gg.choice({
	 "🛑踏空飞天系列🛑",
	 "🛑连跳飞天系列🛑",
	 "🛑路飞跳高系列🛑",
	 "🛑直接上天系列🛑",
	 "🛑超强遁地系列🛑",
	 "返回主页",
}, nil, "")
if SN==1 then
	 Main17()
end
if SN==2 then
	 Main18()
end
if SN==3 then
	 Main19()
end
if SN==4 then
	 Main20()
end
if SN==5 then
	 Main22()
end
if SN==6 then
	 HS24()
end
FX1=0
end

function Main17()
SN = gg.multiChoice({
	 "🛡️十级踏空[开]🛡️",
	 "🛡️十级踏空[关]🛡️",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS75()
end
if SN[2]==true then
	 HS76()
end
if SN[3]==true then
	 HS77()
end
FX1=0
end

function HS75()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.70000004768F;1.20000004768F;0.10000000149F;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5678", gg.TYPE_FLOAT)
	 gg.toast("踏空开启成功！")
	 gg.clearResults()
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10.5678", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10.5678", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.03999999911", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS77()
	 Main0()
end

function Main18()
SN = gg.multiChoice({
	 "😭3练踏空跳[开]😭",
	 "😭3级踏空跳[关]😭",
	 "😭8连踏空跳[开]😭",
	 "😭8连踏空跳[关]😭",
	 "回到主页",
}, nil, "不能和十级踏空一起开")
if SN[1]==true then
	 HS78()
end
if SN[2]==true then
	 HS79()
end
if SN[3]==true then
	 HS80()
end
if SN[4]==true then
	 HS81()
end
if SN[5]==true then
	 HS82()
end
FX1=0
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2.54321", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2.54321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.54321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.03999999911", gg.TYPE_DWORD)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7.54321", gg.TYPE_FLOAT)
	 gg.toast("开启成功！")
	 gg.clearResults()
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7.54321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7.54321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.03999999911", gg.TYPE_DWORD)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS82()
	 Main0()
end

function Main19()
SN = gg.multiChoice({
	 "👀路飞跳高[开]👀",
	 "👀路飞跳高[关]👀",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS88()
end
if SN[2]==true then
	 HS89()
end
if SN[3]==true then
	 HS90()
end
FX1=0
end

function HS88()
	 gg.clearResults()
gg.searchNumber("0.10899999738;1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast("路飞开启成功")
end

function HS89()
	 gg.clearResults()
gg.searchNumber("0.10899999738;1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("1.55999994278", gg.TYPE_FLOAT)
gg.toast("路飞关闭成功")
end

function HS90()
	 Main0()
end

function Main20()
SN = gg.multiChoice({
	 "🔒大图飞天[开]🔒",
	 "🛑大图飞天[关]🛑",
	 "🔵小图升天[开]🔵",
	 "🛠️小图升天[关]🛠️",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS91()
end
if SN[2]==true then
	 HS92()
end
if SN[3]==true then
	 HS93()
end
if SN[4]==true then
	 HS94()
end
if SN[5]==true then
	 HS95()
end
FX1=0
end

function HS91()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS92()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2D;2.8025969e-45F;72D;1.0089349e-43F;20F;10F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("你掉下来了")
	 gg.clearResults()
end

function HS93()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12", gg.TYPE_FLOAT)
	 gg.toast("飞高高")
	 gg.clearResults()
end

function HS94()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("已关闭")
	 gg.clearResults()
end

function HS95()
	 Main0()
end

function Main22()
SN = gg.multiChoice({
	 "🛡️超强遁地[关闭退出]🛡️",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS99()
end
if SN[2]==true then
	 HS100()
end
FX1=0
end

function HS99()
gg.clearResults()
	 gg.setRanges(16384)
 	 gg.searchNumber("0.01;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   	 gg.getResults(100)
    	 gg.editAll("-99999", gg.TYPE_FLOAT)
     	 gg.toast("开变速会更深")
      	 gg.clearResults()
end
function HS100()
	 Main0()
end

function HS24()
	 Main0()
end

function Main8()
SN = gg.multiChoice({
	 "👀普通无后[开]👀",
	 "👀普通无后[关]👀",
	 "超强🛡️防抖[开]",
	 "超强🛡️防抖[关]",
	 "🛠️超强聚点[开]🛠️",
	 "🛠️超强聚点[关]🛠️",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS101()
end
if SN[2]==true then
	 HS103()
end
if SN[3]==true then
	 HS104()
end
if SN[4]==true then
	 HS105()
end
if SN[5]==true then
	 HS107()
end
if SN[6]==true then
	 HS108()
end
if SN[7]==true then
	 HS109()
end
FX1=0
end

function HS101()
	 gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("不行就多试几次")
end

function HS103()
	 gg.alert("暂时无法恢复")
gg.toast("日本牛逼飘枪")
gg.processKill()
end

function HS104()
	 gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function HS105()
	gg.alert("暂时无法恢复")
end

function HS107()
	gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("聚点多试几次")
end

function HS108()
	 gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("聚点恢复成功")
end

function HS109()
	 Main0()
end

function Main10()
SN = gg.multiChoice({
	 "🌿超远飞刀[退出关闭]🌿",
	 "回到主页",
}, nil, "")
if SN[1]==true then
	 HS110()
end
if SN[2]==true then
	 HS114()
end
FX1=0
end

function HS110()
  gg.clearResults()
  gg.searchNumber("0.69999998808;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("AWM类狙击可能无法使用！")
end

function HS114()
	 Main0()
end

function Main13()
SN = gg.multiChoice({
	 "🈳竞技秒杀[开]🈳",
	 "🈳竞技秒杀[关]🈳",
	 "⭐射速秒杀[开]⭐",
	 "⭐射速秒杀[关]⭐",
	 "🛡️挑战秒杀[退出关闭]🛡️",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS25()
end
if SN[2]==true then
	 HS26()
end
if SN[3]==true then
	 HS27()
end
if SN[4]==true then
	 HS28()
end
if SN[5]==true then
	 HS29()
end
if SN[6]==true then
	 HS30()
end
FX1=0
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-300000", gg.TYPE_FLOAT)
	 gg.toast("竞技秒杀开启成功！")
	 gg.clearResults()
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-300000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.2;60", gg.TYPE_FLOAT)
	 gg.toast("竞技秒杀关闭成功！")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-3000", gg.TYPE_FLOAT)
	 gg.toast("射速秒杀开启成功！")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("-3000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.2;60", gg.TYPE_FLOAT)
	 gg.toast("射速秒杀关闭成功！")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.2;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-32000", gg.TYPE_DWORD)
	 gg.toast("跳战秒杀开启成功！")
	 gg.clearResults()
end

function HS30()
	 Main0()
end

function Main14()
SN = gg.multiChoice({
	 "🌿超强防踢🌿",
	 "👌计算器👌🏻",
	 "返回主页",
}, nil, "想踢我？吃屎去吧■使用方法\n被踢出后重进房间，开启防踢就踢不了了。")
if SN[1]==true then
	 HS115()
end
if SN[2]==true then
	 HS117()
end
if SN[3]==true then
	 HS116()
end
FX1=0
end

function HS115()
	gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("20;12;0;120;200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("想踢我不存在的")
end

function HS117()
	t = gg.prompt({
    "C 1 :",
    "C 2 :",
    " Perkalian/p/乘法",
    " Pembagian/除法",
    " tambah /加法",
    " kurang /减法"
  }, {
    [1] = " ",
    [2] = " ",
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false
  }, {
    [1] = "number",
    [2] = "number",
    [3] = "checkbox",
    [4] = "checkbox",
    [5] = "checkbox",
    [6] = "checkbox"
  })
  if t == nil then
    os.exit()
  end
  if t[3] == true then
    kali()
  end
  if t[4] == true then
    bagi()
  end
  if t[5] == true then
    tambah()
  end
  if t[6] == true then
    kurang()
  end
  os.exit()
  NSA = -1
end
function kali()
  print(t[1] .. " x " .. t[2] .. " =", t[1] * t[2])
end
function bagi()
  print(t[1] .. "  : " .. t[2] .. " =", t[1] / t[2])
end
function tambah()
  print(t[1] .. " + " .. t[2] .. " =", t[1] + t[2])
end
function kurang()
  print(t[1] .. "  - " .. t[2] .. " =", t[1] - t[2])
end

function HS116()
	 Main0()
end


function Main15()
SN = gg.multiChoice({
	 "高清🐦人物透视",
	 "全透🐦高清透视",
	 "返回主页",
}, nil, "必须在游戏进入房间加载时开启")
if SN[1]==true then
	 HS111()
end
if SN[2]==true then
	 HS112()
end
if SN[3]==true then
	 HS113()
end
FX1=0
end

function HS111()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("528422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("不行就是手机cup问题")
	 gg.clearResults()
end

function HS112()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("854D;480D;0D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("有些手机不能用")
	 gg.clearResults()
end

function HS113()
	 Main0()
end

function HS16()
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