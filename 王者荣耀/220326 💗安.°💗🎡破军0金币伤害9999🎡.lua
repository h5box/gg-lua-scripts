mima ="104515"
v_value = gg.prompt({
 "💗 QQ群：413240719💗"
}, {
 [1] = 0
}, {
 [1] = "安.°☪︎.JB"
})
function mi()
 print("密码正确<感谢使用>")
end
function end_c()
 print("密码错误<没密码还想玩>")
 os.exit()
end
if v_value[1] == mima then
 mi()
else
 end_c()
end

function Main0()
SN = gg.choice({
	 "💗破军0金币伤害9999💗",
	 "💗退出脚本💗",
}, nil, "💗QQ群：413240719💗")
if SN==1 then
	 HS2()
end
if SN==2 then
	 Main1()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2950;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999;0", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function b()
os.exit()
end

Main0()