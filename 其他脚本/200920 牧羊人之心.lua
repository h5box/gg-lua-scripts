function Main0()
SN = gg.choice({
	 "分裂",
	 "群居",
	 "荆棘之种",
	 "喷射",
	 "复苏之风",
	 "猫爪连击",
	 "战场速递",
	 "月光蝶",
	 "引燃",
	 "连锁闪电",
	 "退出脚本",
}, nil, "修改失效说明有数值冲突！请换技能或者重启游戏")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main27()
end
if SN==3 then
	 Main22()
end
if SN==4 then
	 Main35()
end
if SN==5 then
	 Main41()
end
if SN==6 then
	 Main46()
end
if SN==7 then
	 Main51()
end
if SN==8 then
	 Main55()
end
if SN==9 then
	 Main64()
end
if SN==10 then
	 Main75()
end
if SN==11 then
	 HS6()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "一级",
	 "二级",
	 "三级",
	 "四级",
	 "五级",
	 "返回",
}, nil, "")
if SN==1 then
	 HS15()
end
if SN==2 then
	 HS16()
end
if SN==3 then
	 HS17()
end
if SN==4 then
	 HS18()
end
if SN==5 then
	 HS19()
end
if SN==6 then
	 HS20()
end
FX1=0
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4；0.47；0.55；0.62；0.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4；0.47；0.55；0.62；0.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.47", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4；0.47；0.55；0.62；0.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.55", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4；0.47；0.55；0.62；0.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.62", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4；0.47；0.55；0.62；0.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS20()
	 Main0()
end

function Main27()
SN = gg.choice({
	 "一级",
	 "二级",
	 "三级",
	 "四级",
	 "五级",
	 "返回",
}, nil, "")
if SN==1 then
	 HS28()
end
if SN==2 then
	 HS29()
end
if SN==3 then
	 HS30()
end
if SN==4 then
	 HS31()
end
if SN==5 then
	 HS32()
end
if SN==6 then
	 HS33()
end
FX1=0
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1；0.13；0.16；0.19；0.22", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1；0.13；0.16；0.19；0.22", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.13", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1；0.13；0.16；0.19；0.22", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.16", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1；0.13；0.16；0.19；0.22", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.19", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1；0.13；0.16；0.19；0.22", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.22", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS33()
	 Main0()
end

function Main22()
SN = gg.choice({
	 "一级",
	 "二级",
	 "三级",
	 "返回",
}, nil, "")
if SN==1 then
	 HS23()
end
if SN==2 then
	 HS24()
end
if SN==3 then
	 HS25()
end
if SN==4 then
	 HS34()
end
FX1=0
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.11；0.16；0.21", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.11", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.11；0.16；0.21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("0.11；0.16；0.21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS34()
	 Main0()
end

function Main35()
SN = gg.choice({
	 "一级",
	 "二级",
	 "四级",
	 "五级",
	 "返回",
}, nil, "3级找不到")
if SN==1 then
	 HS36()
end
if SN==2 then
	 HS37()
end
if SN==3 then
	 HS38()
end
if SN==4 then
	 HS39()
end
if SN==5 then
	 HS40()
end
FX1=0
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;0.9;1.1;1.2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;0.9;1.1;1.2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.9", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;0.9;1.1;1.2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;0.9;1.1;1.2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS40()
	 Main0()
end

function Main41()
SN = gg.choice({
	 "一级",
	 "二级",
	 "三级",
	 "返回",
}, nil, "")
if SN==1 then
	 HS42()
end
if SN==2 then
	 HS43()
end
if SN==3 then
	 HS44()
end
if SN==4 then
	 HS45()
end
FX1=0
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.25;0.3;0.35", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.25", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.25;0.3;0.35", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.25;0.3;0.35", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.35", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS45()
	 Main0()
end

function Main46()
SN = gg.choice({
	 "一级",
	 "二级",
	 "三级",
	 "退出",
}, nil, "")
if SN==1 then
	 HS47()
end
if SN==2 then
	 HS48()
end
if SN==3 then
	 HS49()
end
if SN==4 then
	 HS50()
end
FX1=0
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.05;1.3;1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.05", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.05;1.3;1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.05;1.3;1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改")
	 gg.clearResults()
end

function HS50()
	 Main0()
end

function Main51()
SN = gg.choice({
	 "二级",
	 "三级",
	 "返回",
}, nil, "一级找不到")
if SN==1 then
	 HS52()
end
if SN==2 then
	 HS53()
end
if SN==3 then
	 HS54()
end
FX1=0
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.15;1.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.15", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.15;1.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS54()
	 Main0()
end

function Main55()
SN = gg.choice({
	 "敌方一级",
	 "敌方二级",
	 "敌方三级",
	 "我方一级",
	 "我方三级",
	 "返回",
}, nil, "双向效果！我方二级效果和敌方一级效果数值相同所以不添加二级修改")
if SN==1 then
	 HS56()
end
if SN==2 then
	 HS57()
end
if SN==3 then
	 HS58()
end
if SN==4 then
	 HS73()
end
if SN==5 then
	 HS74()
end
if SN==6 then
	 HS62()
end
FX1=0
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;0.45;0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;0.45;0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.45", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;0.45;0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.3;0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.3;0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS62()
	 Main0()
end

function Main64()
SN = gg.choice({
	 "一级爆炸",
	 "二级爆炸",
	 "三级爆炸",
	 "一级点燃",
	 "二级点燃",
	 "三级点燃",
	 "返回",
}, nil, "")
if SN==1 then
	 HS65()
end
if SN==2 then
	 HS66()
end
if SN==3 then
	 HS67()
end
if SN==4 then
	 HS68()
end
if SN==5 then
	 HS69()
end
if SN==6 then
	 HS70()
end
if SN==7 then
	 HS72()
end
FX1=0
end

function HS65()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.3;1.4;1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.3;1.4;1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.3;1.4;1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS68()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;0.5;0.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS69()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;0.5;0.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS70()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.4;0.5;0.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS72()
	 Main0()
end

function Main75()
SN = gg.choice({
	 "一级",
	 "二级",
	 "三级",
	 "返回",
}, nil, "")
if SN==1 then
	 HS76()
end
if SN==2 then
	 HS77()
end
if SN==3 then
	 HS78()
end
if SN==4 then
	 HS79()
end
FX1=0
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.4;1.65;1.9", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.4", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.4;1.65;1.9", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.4;1.65;1.9", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.9", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DOUBLE)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS79()
	 Main0()
end

function HS6()
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