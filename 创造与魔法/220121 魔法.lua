function Main0()
SN = gg.choice({
"古战场",
"退出"
}, nil, "🙉🙊🐒🐵🙈")
if SN==1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.1143197746E-313E;10E", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0x00000000,0xC777FFFF)
gg.searchNumber("10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL,0x00000000,0xC777FFFF)
gg.getResults(3000)
gg.editAll("8", gg.TYPE_DOUBLE)
gg.toast("")
gg.sleep(100)
----时间差修改100为一秒越小越好
gg.toast("")
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("秒开成功")
end
end
Main0()
if SN==2 then
os.exit()
end
Main0() --把你的脚本放在这里

