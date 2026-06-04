function Main0()
SN = gg.choice({
	 "攻速加成",
	 "技能无CD(用一次技能)",
	 "怪物不攻击(秘境内开)",
	 "用技能增蓝(耗点蓝)",
	 "穿墙",
	 "红球蓝球爆掉(打蛤蟆开)",
	 "全局加速",
	 "加速关闭",
	 "退出",
}, nil, "群726019428，长期更新")
if SN==1 then
	 HS3()
end
if SN==2 then
	 HS5()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS6()
end
if SN==5 then
	 HS7()
end
if SN==6 then
	 HS8()
end
if SN==7 then
	 HS9()
end
if SN==8 then
	 HS10()
end
if SN==9 then
	 HS2()
end
FX=0
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1F;99999F:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.3", gg.TYPE_FLOAT)
	 gg.toast("攻速修改成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("57D;392D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("技能无CD开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1000F;776D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("不攻击成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("302D;172D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-30", gg.TYPE_FLOAT)
	 gg.toast("增蓝成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.0001F;100000F:10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("穿墙")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("381D;736D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("蓝球红球开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1F;1051372203D;1028443341D::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("加速成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2F;1051372203D;1028443341D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS2()
	 os.exit()
end



Main0()