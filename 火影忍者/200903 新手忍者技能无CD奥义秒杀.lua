function Main0()
SN = gg.choice({
	 "漩涡鸣人",
	 "宇智波佐助",
	 "春野樱",
	 "山中井野",
	 "日向雏田",
	 "奈良鹿丸",
	 "秋道丁次",
	 "疾风传鸣人",
	 "疾风传小樱",
	 "退出脚本",
}, nil, "莫真汐666")
if SN==1 then
	 Main10()
end
if SN==2 then
	 Main18()
end
if SN==3 then
	 Main26()
end
if SN==4 then
	 Main34()
end
if SN==5 then
	 Main42()
end
if SN==6 then
	 Main50()
end
if SN==7 then
	 Main58()
end
if SN==8 then
	 Main67()
end
if SN==9 then
	 Main75()
end
if SN==10 then
	 HS9()
end
FX1=0
end

function Main10()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS11()
end
if SN[2]==true then
	 HS12()
end
if SN[3]==true then
	 HS13()
end
if SN[4]==true then
	 HS14()
end
if SN[5]==true then
	 HS15()
end
if SN[6]==true then
	 HS16()
end
if SN[7]==true then
	 HS17()
end
FX1=0
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010201;37;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010301;38;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS17()
	 os.exit()
end

function Main18()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS19()
end
if SN[2]==true then
	 HS20()
end
if SN[3]==true then
	 HS21()
end
if SN[4]==true then
	 HS22()
end
if SN[5]==true then
	 HS23()
end
if SN[6]==true then
	 HS24()
end
if SN[7]==true then
	 HS25()
end
FX1=0
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("90003201;37;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030301;38;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("902460201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900030401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS25()
	 os.exit()
end

function Main26()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS27()
end
if SN[2]==true then
	 HS28()
end
if SN[3]==true then
	 HS29()
end
if SN[4]==true then
	 HS30()
end
if SN[5]==true then
	 HS31()
end
if SN[6]==true then
	 HS32()
end
if SN[7]==true then
	 HS33()
end
FX1=0
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020201;37;240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020301;38;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900010301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900020401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS33()
	 os.exit()
end

function Main34()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS35()
end
if SN[2]==true then
	 HS36()
end
if SN[3]==true then
	 HS37()
end
if SN[4]==true then
	 HS38()
end
if SN[5]==true then
	 HS39()
end
if SN[6]==true then
	 HS40()
end
if SN[7]==true then
	 HS41()
end
FX1=0
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900040201;37;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900040301;38;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900040201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900040301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900040401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900040401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS41()
	 os.exit()
end

function Main42()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS43()
end
if SN[2]==true then
	 HS44()
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
	 HS48()
end
if SN[7]==true then
	 HS49()
end
FX1=0
end

function HS43()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900060201;37;540", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("540", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900060301;38;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900060201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900060301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900060401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900060401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS49()
	 os.exit()
end

function Main50()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS51()
end
if SN[2]==true then
	 HS52()
end
if SN[3]==true then
	 HS53()
end
if SN[4]==true then
	 HS54()
end
if SN[5]==true then
	 HS55()
end
if SN[6]==true then
	 HS56()
end
if SN[7]==true then
	 HS57()
end
FX1=0
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900070201;37;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900070301;38;300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300~360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900070201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900070301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900070401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900070401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS57()
	 os.exit()
end

function Main58()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS59()
end
if SN[2]==true then
	 HS60()
end
if SN[3]==true then
	 HS61()
end
if SN[4]==true then
	 HS62()
end
if SN[5]==true then
	 HS63()
end
if SN[6]==true then
	 HS64()
end
if SN[7]==true then
	 HS65()
end
FX1=0
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900140201;37;360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900140301;38;240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900140201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900140301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900140401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900140401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS65()
	 os.exit()
end

function Main67()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS68()
end
if SN[2]==true then
	 HS69()
end
if SN[3]==true then
	 HS70()
end
if SN[4]==true then
	 HS71()
end
if SN[5]==true then
	 HS72()
end
if SN[6]==true then
	 HS73()
end
if SN[7]==true then
	 HS74()
end
FX1=0
end

function HS68()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900350201;37;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS69()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900350301;38;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS70()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900350201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS71()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900350301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900350401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900350401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS74()
	 os.exit()
end

function Main75()
SN = gg.multiChoice({
	 "一技能无cd",
	 "二技能无cd",
	 "一技能秒杀",
	 "二技能秒杀",
	 "无限奥义",
	 "奥义秒杀",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS76()
end
if SN[2]==true then
	 HS77()
end
if SN[3]==true then
	 HS78()
end
if SN[4]==true then
	 HS79()
end
if SN[5]==true then
	 HS80()
end
if SN[6]==true then
	 HS81()
end
if SN[7]==true then
	 HS82()
end
FX1=0
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900370201;37;360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("360", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900370301;38;240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900370201D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900370301D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900370401;39;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("900370401D;39D;1~5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666666", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS82()
	 os.exit()
end

function HS9()
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