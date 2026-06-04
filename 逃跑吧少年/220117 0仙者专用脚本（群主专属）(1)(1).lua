function Main0()
SN = gg.choice({
	 "测试功能",
	 "Buff修改",
	 "道具功能",
	 "道具修改",
	 "变态功能",
	 "上色功能",
	 "秒开功能",
	 "动作修改",
	 "范围修改",
	 "天赋金币",
	 "道具范围",
	 "释放范围",
	 "返回凡间",
}, nil, "仙者丶糖糖制作，反馈群895733074")
if SN==1 then
	 Main245()
end
if SN==2 then
	 Main190()
end
if SN==3 then
	 Main54()
end
if SN==4 then
	 Main186()
end
if SN==5 then
	 Main7()
end
if SN==6 then
	 Main177()
end
if SN==7 then
	 Main223()
end
if SN==8 then
	 Main161()
end
if SN==9 then
	 Main165()
end
if SN==10 then
	 Main214()
end
if SN==11 then
	 Main150()
end
if SN==12 then
	 Main42()
end
if SN==13 then
	 HS101()
end
FX1=0
end

function Main245()
SN = gg.multiChoice({
	 "封号【游戏开】",
	 "解封【游戏开】",
	 "火箭筒无间隔【稳定版】",
	 "针无限时间【稳定版】",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS246()
end
if SN[2]==true then
	 HS247()
end
if SN[3]==true then
	 HS249()
end
if SN[4]==true then
	 HS250()
end
if SN[5]==true then
	 HS248()
end
FX1=0
end

function HS246()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("你已经被封号")
	 gg.clearResults()
end

function HS247()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("解封开启成功")
	 gg.clearResults()
end

function HS249()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1.1", gg.TYPE_FLOAT)
	 gg.toast("火箭筒无间隔开启成功")
	 gg.clearResults()
end

function HS250()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function HS248()
	 Main0()
end

function Main190()
SN = gg.multiChoice({
	 "疾跑加速【游戏开】（半稳定）",
	 "手雷眩晕加速【游戏开】（半稳定）",
	 "踩架子加速【游戏开】（半稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS191()
end
if SN[2]==true then
	 HS207()
end
if SN[3]==true then
	 HS206()
end
if SN[4]==true then
	 HS195()
end
FX1=0
end

function HS191()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("疾跑加速开启成功")
	 gg.clearResults()
end

function HS207()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;-0.75;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("手雷眩晕加速开启成功")
	 gg.clearResults()
end

function HS206()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;-0.75;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("踩架子变态加速开启成功")
	 gg.clearResults()
end

function HS195()
	 Main0()
end

function Main54()
SN = gg.multiChoice({
	 "生命上限加血1000【游戏开】（不稳定）",
	 "生命上限无冷却【游戏开】（稳定）",
	 "雷达无冷却【游戏开】（稳定）",
	 "阻挡箱无限血【游戏开】（稳定）",
	 "手雷无眩晕时间【游戏开】（稳定）",
	 "手雷秒杀【游戏开】（半稳定）",
	 "医疗箱无冷却【游戏开】（稳定）",
	 "冲锋枪免费【游戏开】（半稳定）",
	 "医疗箱免费【游戏开】（半稳定）",
	 "飞爪免费【游戏开】（半稳定）",
	 "医疗箱杀人【游戏开】（不稳定）",
	 "小狗狗400血【大厅开】（稳定）",
	 "侦查眼500血【游戏开】（稳定）",
	 "皮卡无限时间【游戏开】（稳定）",
	 "兔子无限时间【游戏开】（稳定）",
	 "跳高无限时间【游戏开】（稳定）",
	 "疾跑无限时间【游戏开】（稳定）",
	 "针无限时间【游戏开】（不稳定）",
	 "毒液无限时间【游戏开】（稳定）",
	 "自走球加速【游戏开】（稳定）",
	 "生命上限无冷却【游戏开】（稳定）",
	 "火箭筒秒杀【游戏开】（半稳定）",
	 "火箭筒无间隔【游戏开】（不稳定）",
	 "雷达无冷却【游戏开】（稳定）",
	 "皮卡1.7倍速【大厅开】（稳定）",
	 "追击炮无间隔【游戏开】（不稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS78()
end
if SN[2]==true then
	 HS208()
end
if SN[3]==true then
	 HS210()
end
if SN[4]==true then
	 HS212()
end
if SN[5]==true then
	 HS192()
end
if SN[6]==true then
	 HS183()
end
if SN[7]==true then
	 HS193()
end
if SN[8]==true then
	 HS263()
end
if SN[9]==true then
	 HS239()
end
if SN[10]==true then
	 HS196()
end
if SN[11]==true then
	 HS176()
end
if SN[12]==true then
	 HS55()
end
if SN[13]==true then
	 HS74()
end
if SN[14]==true then
	 HS69()
end
if SN[15]==true then
	 HS209()
end
if SN[16]==true then
	 HS68()
end
if SN[17]==true then
	 HS67()
end
if SN[18]==true then
	 HS211()
end
if SN[19]==true then
	 HS262()
end
if SN[20]==true then
	 HS236()
end
if SN[21]==true then
	 HS79()
end
if SN[22]==true then
	 HS184()
end
if SN[23]==true then
	 HS81()
end
if SN[24]==true then
	 HS80()
end
if SN[25]==true then
	 HS59()
end
if SN[26]==true then
	 HS194()
end
if SN[27]==true then
	 HS58()
end
FX1=0
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("70;5;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("70", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("生命上限1000血开启成功")
	 gg.clearResults()
end

function HS208()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;40F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("生命上限无冷却开启成功")
	 gg.clearResults()
end

function HS210()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1009D;90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("雷达无冷却开启成功")
	 gg.clearResults()
end

function HS212()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;5;50;10;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("阻挡箱无线血量开启成功")
	 gg.clearResults()
end

function HS192()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;1002D;500004D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("手雷无眩晕时间开启成功")
	 gg.clearResults()
end

function HS183()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;105D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("手雷秒杀开启成功")
	 gg.clearResults()
end

function HS193()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3F;1007D;500005D:::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("医疗箱无冷却开启成功")
	 gg.clearResults()
end

function HS263()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1018D;1;-0.01999999955;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("冲锋枪免费开启成功")
	 gg.clearResults()
end

function HS239()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1007D;1F;-0.02F;13D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("医疗箱免费开启成功")
	 gg.clearResults()
end

function HS196()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1014D;1;-0.03;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("飞爪免费开启成功")
	 gg.clearResults()
end

function HS176()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100D;6F;4.5F;1.2F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-10000", gg.TYPE_FLOAT)
	 gg.toast("急救包杀人开启成功")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1010D;100;6;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("400", gg.TYPE_FLOAT)
	 gg.toast("小狗狗400血")
	 gg.clearResults()
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;6::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("侦查眼500血开启成功")
	 gg.clearResults()
end

function HS69()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("皮卡无限时间开启成功")
	 gg.clearResults()
end

function HS209()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1014D;8F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_FLOAT)
	 gg.toast("兔子无限时间开启成功")
	 gg.clearResults()
end

function HS68()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限时间开启成功")
	 gg.clearResults()
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999", gg.TYPE_FLOAT)
	 gg.toast("疾跑无限时间开启成功")
	 gg.clearResults()
end

function HS211()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;-0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("针无限时间开启成功")
	 gg.clearResults()
end

function HS262()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1017D;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("毒液无限时间开启成功")
	 gg.clearResults()
end

function HS236()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1016D;1;0.01;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("自走球加速开启成功")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("106D;90F;-4;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("生命上限无冷却开启成功")
	 gg.clearResults()
end

function HS184()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("火箭筒秒杀开启成功")
	 gg.clearResults()
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("火箭筒无间隔开启成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108D;90;-5;13D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("雷达无冷却开启成功")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1003D;1;0.01;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.7", gg.TYPE_FLOAT)
	 gg.toast("皮卡1.7倍速度开启成功")
	 gg.clearResults()
end

function HS194()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1012D;1.1;-0.04;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("追击炮无间隔开启成功")
	 gg.clearResults()
end

function HS58()
	 Main0()
end

function Main186()
SN = gg.multiChoice({
	 "火箭筒改追击炮3级【游戏开】（半稳定）",
	 "火箭筒改火箭筒3级【游戏开】（半稳定）",
	 "火箭筒改冲锋枪3级【游戏开】（半稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS187()
end
if SN[2]==true then
	 HS188()
end
if SN[3]==true then
	 HS261()
end
if SN[4]==true then
	 HS189()
end
FX1=0
end

function HS187()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112", gg.TYPE_DWORD)
	 gg.toast("火箭筒改追击炮3级开启成功")
	 gg.clearResults()
end

function HS188()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("102", gg.TYPE_DWORD)
	 gg.toast("火箭筒改火箭筒3级开启成功")
	 gg.clearResults()
end

function HS261()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010;100;200;1008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("132", gg.TYPE_DWORD)
	 gg.toast("火箭筒还冲锋枪3级开启成功")
	 gg.clearResults()
end

function HS189()
	 Main0()
end

function Main7()
SN = gg.multiChoice({
	 "冲锋枪秒换弹【游戏开】（稳定）",
	 "1级冲锋枪无限子弹【游戏开】（稳定）",
	 "2级冲锋枪无限子弹【游戏开】（稳定）",
	 "3级冲锋枪无限子弹【游戏开】（稳定）",
	 "冲锋枪秒杀【游戏开】（半稳定）",
	 "冲锋枪开枪移动加快【游戏开】（稳定）",
	 "毒液秒杀【游戏开】（稳定）",
	 "最新穿墙【游戏开】（稳定）",
	 "旧版穿墙【游戏开】（稳定）",
	 "视野二倍【游戏开】（半稳定）",
	 "新加速【游戏开】（稳定）",
	 "鬼舞步【游戏开】（稳定）",
	 "极速步【游戏开】（稳定）",
	 "踏空【游戏开】（稳定）",
	 "替身人偶锁血【游戏开】（稳定）",
	 "追捕者秒复活【游戏开】（稳定）",
	 "跳高改隐身【游戏开】（稳定）",
	 "Boss轰炸时间【游戏开】（稳定）",
	 "Boss轰炸无冷却【游戏开】（稳定）",
	 "追捕者回血【游戏开】（稳定）",
	 "逃生者回血【游戏开】（稳定）",
	 "炸机加血【游戏开】（稳定）",
	 "倒地复活【游戏开】（不稳定）",
	 "追捕者无限传送【游戏开】（不稳定）",
	 "追捕者去护盾【游戏开】（不稳定）",
	 "地图透视【游戏开】（稳定）",
	 "视野透视【游戏开】（半稳定）",
	 "自慰隐身【游戏开】（稳定）",
	 "火箭筒无限子弹【游戏开】（稳定）",
	 "追击炮无限子弹【游戏开】（稳定）",
	 "火箭筒弹夹子弹【游戏开】（不稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS260()
end
if SN[2]==true then
	 HS265()
end
if SN[3]==true then
	 HS266()
end
if SN[4]==true then
	 HS267()
end
if SN[5]==true then
	 HS258()
end
if SN[6]==true then
	 HS264()
end
if SN[7]==true then
	 HS259()
end
if SN[8]==true then
	 HS175()
end
if SN[9]==true then
	 HS243()
end
if SN[10]==true then
	 HS237()
end
if SN[11]==true then
	 HS241()
end
if SN[12]==true then
	 HS233()
end
if SN[13]==true then
	 HS235()
end
if SN[14]==true then
	 HS240()
end
if SN[15]==true then
	 HS234()
end
if SN[16]==true then
	 HS148()
end
if SN[17]==true then
	 HS144()
end
if SN[18]==true then
	 HS124()
end
if SN[19]==true then
	 HS125()
end
if SN[20]==true then
	 HS121()
end
if SN[21]==true then
	 HS122()
end
if SN[22]==true then
	 HS139()
end
if SN[23]==true then
	 HS103()
end
if SN[24]==true then
	 HS77()
end
if SN[25]==true then
	 HS20()
end
if SN[26]==true then
	 HS28()
end
if SN[27]==true then
	 HS238()
end
if SN[28]==true then
	 HS244()
end
if SN[29]==true then
	 HS33()
end
if SN[30]==true then
	 HS270()
end
if SN[31]==true then
	 HS198()
end
if SN[32]==true then
	 HS38()
end
FX1=0
end

function HS260()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("秒换弹开启成功")
	 gg.clearResults()
end

function HS265()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("13F;16D;0.1F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500000", gg.TYPE_DWORD)
	 gg.toast("1级冲锋枪无限子弹开启成功")
	 gg.clearResults()
end

function HS266()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("13F;20D;0.1F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500000", gg.TYPE_DWORD)
	 gg.toast("2级冲锋枪无限子弹开启成功")
	 gg.clearResults()
end

function HS267()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("13F;24D;0.1F:::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000000", gg.TYPE_DWORD)
	 gg.toast("3级冲锋枪无限子弹开启成功")
	 gg.clearResults()
end

function HS258()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_FLOAT)
	 gg.toast("冲锋枪秒杀开启成功")
	 gg.clearResults()
end

function HS264()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("冲锋枪开枪移动加速开启成功")
	 gg.clearResults()
end

function HS259()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.5;0.2;18::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("毒液秒杀开启成功")
	 gg.clearResults()
end

function HS175()
	 gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("1;0.05000000075;2.3694278e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("最新穿墙开启成功")
	 gg.clearResults()
end

function HS243()
	 gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("1;0.05000000075;2.3694278e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("旧版穿墙开启成功，艾迪茉莉转圈圈")
	 gg.clearResults()
end

function HS237()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;10;30;10;12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24", gg.TYPE_FLOAT)
	 gg.toast("视野二倍开启成功")
	 gg.clearResults()
end

function HS241()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230887D;5.69346046448::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("230887", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000000", gg.TYPE_DWORD)
	 gg.toast("新加速开启成功")
	 gg.clearResults()
end

function HS233()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;2.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("魔鬼步开启成功")
	 gg.clearResults()
end

function HS235()
	 gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("1D;2.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("速步开启成功")
	 gg.clearResults()
end

function HS240()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.07", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.07", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4", gg.TYPE_FLOAT)
	 gg.toast("踏空开启成功")
	 gg.clearResults()
end

function HS234()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("25;14;50::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 500}})
	 end
	 gg.toast("人偶锁血开启成功")
	 gg.clearResults()
end

function HS148()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3.5;0.2;1.4;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.5;1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("追捕者秒复活开启成功")
	 gg.clearResults()
end

function HS144()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006;105;201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105;201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("跳高隐身")
	 gg.clearResults()
end

function HS124()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("90;90;60;8;12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("Boss轰炸时间开启成功")
	 gg.clearResults()
end

function HS125()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("90;90;60;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("Boss轰炸无冷却开启成功")
	 gg.clearResults()
end

function HS121()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;3;10;1D;0.06::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("追捕者回血加强")
	 gg.clearResults()
end

function HS122()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20000", gg.TYPE_FLOAT)
	 gg.toast("逃生者回血范围，加血")
	 gg.clearResults()
end

function HS139()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.3;3;10;1D;1.4012985e-45;2D;2.8025969e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1000", gg.TYPE_FLOAT)
	 gg.toast("炸机瞬间加血开启成功")
	 gg.clearResults()
end

function HS103()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("倒地复活开启成功")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("追捕者无限传送开启成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("追捕者去除护盾")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;3.235416e-40F;16.62690544128F;1D;1,082,467,303D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("地图透视开启成功")
	 gg.clearResults()
end

function HS238()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("16.62690544128", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16.62690544128", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("视野透视开启成功")
	 gg.clearResults()
end

function HS244()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("隐身开启成功，自慰")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300F;4D;3F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24", gg.TYPE_DWORD)
	 gg.toast("火箭筒无限子弹开启成功")
	 gg.clearResults()
end

function HS270()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50", gg.TYPE_DWORD)
	 gg.toast("追击炮无限子弹开启成功")
	 gg.clearResults()
end

function HS198()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;444444;444445;1D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("火箭筒无限子弹开启成功")
	 gg.clearResults()
end

function HS38()
	 Main0()
end

function Main177()
SN = gg.multiChoice({
	 "人物上原谅色【游戏开】（稳定）",
	 "人物上红色【游戏开】（稳定）",
	 "人物变化色【游戏开】（稳定）",
	 "钥匙上青色【游戏开】",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS178()
end
if SN[2]==true then
	 HS179()
end
if SN[3]==true then
	 HS180()
end
if SN[4]==true then
	 HS251()
end
if SN[5]==true then
	 HS181()
end
FX1=0
end

function HS178()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8192;8199;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_DWORD)
	 gg.toast("原谅色开启成功")
	 gg.clearResults()
end

function HS179()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8192;8199;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_DWORD)
	 gg.toast("红色开启成功")
	 gg.clearResults()
end

function HS180()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8192;8199;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8192;8199;8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_DWORD)
	 gg.toast("变化色开启成功")
	 gg.clearResults()
end

function HS251()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS181()
	 Main0()
end

function Main223()
SN = gg.multiChoice({
	 "秒开全物品【游戏开】（稳定）",
	 "秒开禁闭室【游戏开】（稳定）",
	 "秒开补给箱【游戏开】（稳定）",
	 "秒开逃生门【游戏开】（不稳定）",
	 "秒拆架子【游戏开】（稳定）",
	 "秒开钥匙【游戏开】（不稳定）",
	 "秒开门【游戏开】（稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS225()
end
if SN[2]==true then
	 HS228()
end
if SN[3]==true then
	 HS226()
end
if SN[4]==true then
	 HS230()
end
if SN[5]==true then
	 HS227()
end
if SN[6]==true then
	 HS229()
end
if SN[7]==true then
	 HS224()
end
if SN[8]==true then
	 HS231()
end
FX1=0
end

function HS225()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("66.89824676514", gg.TYPE_FLOAT)
	 gg.toast("全东西秒开开启成功")
	 gg.clearResults()
end

function HS228()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;0.2;1;1;1;1D;100D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("秒开禁闭室开启成功")
	 gg.clearResults()
end

function HS226()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("秒开补给箱开启成功")
	 gg.clearResults()
end

function HS230()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-90;1D;256D;8;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("秒开逃生门开启成功")
	 gg.clearResults()
end

function HS227()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1D;10D;1D;2.5;0.5;1;14::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("秒开架子开启成功")
	 gg.clearResults()
end

function HS229()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;1;256D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("秒开钥匙开启成功")
	 gg.clearResults()
end

function HS224()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("秒开门开启成功")
	 gg.clearResults()
end

function HS231()
	 Main0()
end

function Main161()
SN = gg.multiChoice({
	 "失忆者改篮球之舞【游戏开】（稳定）",
	 "失忆者改打篮球【游戏开】（稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS162()
end
if SN[2]==true then
	 HS163()
end
if SN[3]==true then
	 HS164()
end
FX1=0
end

function HS162()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;960,011;200;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("960271", gg.TYPE_DWORD)
	 gg.toast("鸡你太美，哒哒哦")
	 gg.clearResults()
end

function HS163()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;960,011;200;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("960011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("960251", gg.TYPE_DWORD)
	 gg.toast("cxk警告")
	 gg.clearResults()
end

function HS164()
	 Main0()
end

function Main165()
SN = gg.multiChoice({
	 "8v2吸人【游戏开】（不稳定）",
	 "4v1吸人【游戏开】（不稳定）",
	 "范围开门【游戏开】（半稳定）",
	 "范围开机【游戏开】（不稳定）",
	 "范围救人【游戏开】（半稳定）",
	 "范围吸道具【游戏开】（稳定）",
	 "范围开补给箱【游戏开】（稳定）",
	 "范围开禁闭室【游戏开】（稳定）",
	 "范围拆/捡架子【游戏开】（稳定）",
	 "范围开逃生门【游戏开】（稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS222()
end
if SN[2]==true then
	 HS197()
end
if SN[3]==true then
	 HS171()
end
if SN[4]==true then
	 HS167()
end
if SN[5]==true then
	 HS172()
end
if SN[6]==true then
	 HS173()
end
if SN[7]==true then
	 HS242()
end
if SN[8]==true then
	 HS169()
end
if SN[9]==true then
	 HS168()
end
if SN[10]==true then
	 HS166()
end
if SN[11]==true then
	 HS174()
end
FX1=0
end

function HS222()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("88D;39D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("8v2吸人开启成功")
	 gg.clearResults()
end

function HS197()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80D;30D;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("4v1吸人开启成功")
	 gg.clearResults()
end

function HS171()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;0.2;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("范围开门开启成功")
	 gg.clearResults()
end

function HS167()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1:150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("13", gg.TYPE_FLOAT)
	 gg.toast("范围开机开启成功")
	 gg.clearResults()
end

function HS172()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("260", gg.TYPE_FLOAT)
	 gg.toast("范围救人开启成功")
	 gg.clearResults()
end

function HS173()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.8;103D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("范围吸道具开启成功")
	 gg.clearResults()
end

function HS242()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.2;1:12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("范围开补给箱开启成功")
	 gg.clearResults()
end

function HS169()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;0.2;1:24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("范围开禁闭室开启成功")
	 gg.clearResults()
end

function HS168()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1;1D;10D;1D;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("范围拆架子开启成功")
	 gg.clearResults()
end

function HS166()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-90;1D;256D;8;0.2;1;1;1;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_FLOAT)
	 gg.toast("逃生门范围开启成功")
	 gg.clearResults()
end

function HS174()
	 Main0()
end

function Main214()
SN = gg.multiChoice({
	 "女特工隐形购买免费【游戏开】（半稳定）",
	 "机器人喷射飞行免费【游戏开】（半稳定）",
	 "小学妹兔兔变身免费【游戏开】（半稳定）",
	 "魔术师替身人偶免费【游戏开】（半稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS215()
end
if SN[2]==true then
	 HS216()
end
if SN[3]==true then
	 HS217()
end
if SN[4]==true then
	 HS218()
end
if SN[5]==true then
	 HS219()
end
FX1=0
end

function HS215()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60D;119D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("隐形免费开启成功")
	 gg.clearResults()
end

function HS216()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15F;120D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("喷射飞行免费开启成功")
	 gg.clearResults()
end

function HS217()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("102;40F;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("兔兔变身免费开启成功")
	 gg.clearResults()
end

function HS218()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30F;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("替身人偶免费开启成功")
	 gg.clearResults()
end

function HS219()
	 Main0()
end

function Main150()
SN = gg.multiChoice({
	 "Boss普攻全屏秒杀【游戏开】（半稳定）",
	 "肾上腺素全屏吸针【游戏开】（稳定）",
	 "飞爪全屏范围长度【游戏开】（稳定）",
	 "冲锋枪攻击长度【游戏开】（稳定）",
	 "火箭筒攻击长度【游戏开】（稳定）",
	 "追击炮全屏范围【游戏开】（稳定）",
	 "手榴弹全屏范围【游戏开】（稳定）",
	 "传送门全屏长度【游戏开】（稳定）",
	 "阻挡箱全屏范围【游戏开】（稳定）",
	 "医疗箱全屏范围【游戏开】（稳定）",
	 "架子buff范围【游戏开】（不稳定）",
	 "毒液伤害全屏范围【游戏开】（稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS271()
end
if SN[2]==true then
	 HS254()
end
if SN[3]==true then
	 HS155()
end
if SN[4]==true then
	 HS257()
end
if SN[5]==true then
	 HS269()
end
if SN[6]==true then
	 HS158()
end
if SN[7]==true then
	 HS157()
end
if SN[8]==true then
	 HS156()
end
if SN[9]==true then
	 HS151()
end
if SN[10]==true then
	 HS154()
end
if SN[11]==true then
	 HS220()
end
if SN[12]==true then
	 HS255()
end
if SN[13]==true then
	 HS159()
end
FX1=0
end

function HS271()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("全屏秒杀开启成功")
	 gg.clearResults()
end

function HS254()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;-0.25;0.6;1;20;1;3.32999992371;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30", gg.TYPE_FLOAT)
	 gg.toast("全屏吸针开启成功")
	 gg.clearResults()
end

function HS155()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;6.69999980927::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.69999980927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("飞爪全屏长度开启成功")
	 gg.clearResults()
end

function HS257()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9;3;13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19", gg.TYPE_FLOAT)
	 gg.toast("冲锋枪长度开启成功")
	 gg.clearResults()
end

function HS269()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS158()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("追击炮/Boss普攻全屏范围开启成功")
	 gg.clearResults()
end

function HS157()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_FLOAT)
	 gg.toast("手榴弹全屏范围开启成功")
	 gg.clearResults()
end

function HS156()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;8;5;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("传送门全屏长度开启成功")
	 gg.clearResults()
end

function HS151()
	 gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("1;0.85000002384;1.29999995232;1.29999995232;0.70710682869;0.69999998808;1.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("阻挡箱范围开启成功（稳定）")
	 gg.clearResults()
end

function HS154()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12000", gg.TYPE_FLOAT)
	 gg.toast("医疗箱全屏范围开启成功")
	 gg.clearResults()
end

function HS220()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("110D;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("架子buff范围开启成功")
	 gg.clearResults()
end

function HS255()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;2.5;0.2::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("毒液全屏范围开启成功")
	 gg.clearResults()
end

function HS159()
	 Main0()
end

function Main42()
SN = gg.multiChoice({
	 "Boss虎跃释放范围【游戏开】（稳定）",
	 "阻挡箱释放范围【游戏开】（稳定）",
	 "肾上腺素释放范围【游戏开】（稳定）",
	 "医疗险释放范围【游戏开】（稳定）",
	 "手榴弹释放范围【游戏开】（稳定）",
	 "自走球释放范围【游戏开】（稳定）",
	 "酒桶释放长度【游戏开】（稳定）",
	 "飞爪释放长度【游戏开】（稳定）",
	 "小狗释放范围【游戏开】（稳定）",
	 "毒液释放范围【游戏开】（稳定）",
	 "侦查眼释放范围【游戏开】（稳定）",
	 "传送门释放范围【游戏开】（稳定）",
	 "手榴弹释放范围【游戏开】（稳定）",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS160()
end
if SN[2]==true then
	 HS213()
end
if SN[3]==true then
	 HS52()
end
if SN[4]==true then
	 HS49()
end
if SN[5]==true then
	 HS221()
end
if SN[6]==true then
	 HS60()
end
if SN[7]==true then
	 HS133()
end
if SN[8]==true then
	 HS65()
end
if SN[9]==true then
	 HS66()
end
if SN[10]==true then
	 HS256()
end
if SN[11]==true then
	 HS63()
end
if SN[12]==true then
	 HS61()
end
if SN[13]==true then
	 HS48()
end
if SN[14]==true then
	 HS47()
end
FX1=0
end

function HS160()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;6.5;8;8;0.06;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12.5", gg.TYPE_FLOAT)
	 gg.toast("Boss虎跃释放范围开启成功")
	 gg.clearResults()
end

function HS213()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;5;50;10;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15", gg.TYPE_FLOAT)
	 gg.toast("阻挡箱释放范围开启成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;-0.25;0.6;1;20;1;3.32999992371;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("肾上腺素释放范围开启成功")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("医疗险释放范围开启成功")
	 gg.clearResults()
end

function HS221()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;2.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("手榴弹释放范围开启成功")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;-0.25;0.60000002384;20;0.80000001192;3.32999992371;0.20000000298::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("自走球释放范围开启成功")
	 gg.clearResults()
end

function HS133()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;10;0.3;0.1;7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("酒桶释放长度开启成功")
	 gg.clearResults()
end

function HS65()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;10;6.69999980927::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5000", gg.TYPE_FLOAT)
	 gg.toast("飞爪释放长度开启成功")
	 gg.clearResults()
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;0.8;100;2.5;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("小狗释放范围开启成功")
	 gg.clearResults()
end

function HS256()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.5;2.5;0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("毒液释放范围开启成功")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;1;6.5;999;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("侦查眼释放范围开启成功")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;8;5;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("传送门释放范围开启成功")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;4.5;1D;0.6;1.2;20;1000;2.5;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5", gg.TYPE_FLOAT)
	 gg.toast("手榴弹释放范围开启成功")
	 gg.clearResults()
end

function HS47()
	 Main0()
end

function HS101()
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