function Main0()
SN = gg.choice({
	 "逃生者",
	 "追捕者",
	 "战斗少女",
	 "小学妹",
	 "魔术师",
	 "女特工",
	 "机器人",
	 "道具13级皮肤",
	 "绝版皮肤道具",
	 "退出人间",
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main12()
end
if SN==3 then
	 Main21()
end
if SN==4 then
	 Main24()
end
if SN==5 then
	 Main25()
end
if SN==6 then
	 Main26()
end
if SN==7 then
	 Main27()
end
if SN==8 then
	 Main28()
end
if SN==9 then
	 Main43()
end
if SN==10 then
	 HS70()
end
FX=0
end

function Main1()
SN = gg.multiChoice({
	 "夜行套装",
	 "幻影套装",
	 "绝版史诗夜行套装",
	 "绝版传说夜行套装",
	 "疾风套装",
	 "传说拳击大师套装",
	 "假面套装",
	 "传说未来套装",
	 "绝版新年套装",
	 "绝版菠萝套装",
	 "夏日派对套装",
	 "绝版兔先生套路",
	 "篮球少年套装",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n要在大厅打开")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS3()
end
if SN[3]==true then
	 HS4()
end
if SN[4]==true then
	 HS5()
end
if SN[5]==true then
	 HS6()
end
if SN[6]==true then
	 HS7()
end
if SN[7]==true then
	 HS8()
end
if SN[8]==true then
	 HS9()
end
if SN[9]==true then
	 HS10()
end
if SN[10]==true then
	 HS11()
end
if SN[11]==true then
	 HS82()
end
if SN[12]==true then
	 HS83()
end
if SN[13]==true then
	 HS84()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2011;2012;2013;2014;2015", gg.TYPE_DWORD)
	 gg.toast("夜行套装开启成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2021;2022;2023;2024;2025", gg.TYPE_DWORD)
	 gg.toast("幻影套装开启成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2031;2032;2033;2034;2035", gg.TYPE_DWORD)
	 gg.toast("绝版史诗夜行套装开启成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2041;2042;2043;2044;2045", gg.TYPE_DWORD)
	 gg.toast("绝版传说夜行套装开启成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2051;2052;2053;2054;2055", gg.TYPE_DWORD)
	 gg.toast("疾风套装开启成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2061;2062;2063;2064;2065", gg.TYPE_DWORD)
	 gg.toast("传说拳击大师套装开启成功")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2071;2072;2073;2074;2075", gg.TYPE_DWORD)
	 gg.toast("假面套装开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2076;2077;2078;2079;2080", gg.TYPE_DWORD)
	 gg.toast("传说未来套装开启成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2081;2082;2083;2084;2085", gg.TYPE_DWORD)
	 gg.toast("绝版新年套装开启成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2091;2092;2093;2094;2095", gg.TYPE_DWORD)
	 gg.toast("绝版菠萝套装开启成功")
	 gg.clearResults()
end

function HS82()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2096;2097;2098;2099;2100", gg.TYPE_DWORD)
	 gg.toast("夏日派对皮肤开启成功")
	 gg.clearResults()
end

function HS83()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2101;2102;2103;2104;2105", gg.TYPE_DWORD)
	 gg.toast("绝版兔先生皮肤开启成功")
	 gg.clearResults()
end

function HS84()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2106;2107;2108;2109;2110", gg.TYPE_DWORD)
	 gg.toast("鸡你太美哟！")
	 gg.clearResults()
end

function Main12()
SN = gg.multiChoice({
	 "绝版追逐套装",
	 "征服套装",
	 "绝版史诗追逐套装",
	 "传说追逐套装",
	 "不羁套装",
	 "传说牛仔套装",
	 "超人套装",
	 "教父套装",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n在大厅打开，才可以用")
if SN[1]==true then
	 HS13()
end
if SN[2]==true then
	 HS14()
end
if SN[3]==true then
	 HS15()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS18()
end
if SN[7]==true then
	 HS19()
end
if SN[8]==true then
	 HS20()
end
FX=0
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1011;1012;1013;1014;1015", gg.TYPE_DWORD)
	 gg.toast("绝版追逐套装开启成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1021;1022;1023;1024;1025", gg.TYPE_DWORD)
	 gg.toast("征服套装开启成功")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1031;1032;1033;1034;1035", gg.TYPE_DWORD)
	 gg.toast("绝版史诗追逐套装开启成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1041;1042;1043;1044;1045", gg.TYPE_DWORD)
	 gg.toast("传说追逐套装开启成功")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1051;1052;1053;1054;1055", gg.TYPE_DWORD)
	 gg.toast("不羁套装开启成功")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1061;1062;1063;1064;1065", gg.TYPE_DWORD)
	 gg.toast("传说牛仔套装开启成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1071;1072;1073;1074;1075", gg.TYPE_DWORD)
	 gg.toast("超人套装开启成功")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1081;1082;1083;1084;1085", gg.TYPE_DWORD)
	 gg.toast("教父套装开启成功")
	 gg.clearResults()
end

function Main21()
SN = gg.multiChoice({
	 "轻粉夏末套装",
	 "柴郡猫套装",
	 "返回主页",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n大厅打开")
if SN[1]==true then
	 HS22()
end
if SN[2]==true then
	 HS23()
end
if SN[3]==true then
	 HS63()
end
FX=0
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("8001;8002;8003;8004;8005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8001;8002;8003;8004;8005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8011;8012;8013;8014;8015", gg.TYPE_DWORD)
	 gg.toast("轻粉夏末套装开启成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("8001;8002;8003;8004;8005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8001;8002;8003;8004;8005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8006;8007;8008;8009;8010", gg.TYPE_DWORD)
	 gg.toast("柴郡猫套装开启成功")
	 gg.clearResults()
end

function HS63()
	 Main0()
end

function Main24()
SN = gg.multiChoice({
	 "夏日清凉套装",
	 "传说炫彩幻音套装",
	 "666",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n必须在大厅打开，才可以用")
if SN[1]==true then
	 HS74()
end
if SN[2]==true then
	 HS75()
end
if SN[3]==true then
	 HS76()
end
FX=0
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4011;4012;4013;4014;4015", gg.TYPE_DWORD)
	 gg.toast("夏日清凉皮肤开启成功")
	 gg.clearResults()
end

function HS75()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4021;4022;4023;4024;4025", gg.TYPE_DWORD)
	 gg.toast("炫彩幻音皮肤开启成功")
	 gg.clearResults()
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4031;4032;4033;4034;4035", gg.TYPE_DWORD)
	 gg.toast("888")
	 gg.clearResults()
end

function Main25()
SN = gg.multiChoice({
	 "西域套装",
	 "111",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n大厅打开")
if SN[1]==true then
	 HS78()
end
if SN[2]==true then
	 HS79()
end
FX=0
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6011;6012;6013;6014;6015", gg.TYPE_DWORD)
	 gg.toast("西域皮肤开启成功")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6021;6022;6023;6024;6025", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function Main26()
SN = gg.multiChoice({
	 "海滨甜心套装",
	 "传说航海女王套装",
	 "绝版时尚潜水套装",
	 "222",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n大厅开")
if SN[1]==true then
	 HS71()
end
if SN[2]==true then
	 HS73()
end
if SN[3]==true then
	 HS77()
end
if SN[4]==true then
	 HS80()
end
FX=0
end

function HS71()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3011;3012;3013;3014;3015", gg.TYPE_DWORD)
	 gg.toast("海滨甜心套装开启成功")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3021;3022;3023;3024;3025", gg.TYPE_DWORD)
	 gg.toast("航海女王皮肤开启成功")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3031;3032;3033;3034;3035", gg.TYPE_DWORD)
	 gg.toast("时尚潜水皮肤开启成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3001;3002;3003;3004;3005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3051;3052;3053;3054;3055", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function Main27()
SN = gg.multiChoice({
	 "000",
}, nil, "要用新手套装\n加载有点慢，请耐心等待\n必须在大厅打开")
if SN[1]==true then
	 HS81()
end
FX=0
end

function HS81()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("7001;7002;7003;7004;7005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7001;7002;7003;7004;7005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7011;7012;7013;7014;70015", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function Main28()
SN = gg.multiChoice({
	 "13级疾跑皮肤",
	 "13级手雷皮肤",
	 "13级火箭筒皮肤",
	 "13级跳高皮肤",
	 "13级医疗箱皮肤",
	 " 13级车皮肤",
	 "13级侦查眼皮肤",
	 "13级酒桶皮肤",
	 "13级自走球皮肤",
	 "13级阻挡箱皮肤",
	 "13级传送门皮肤",
	 "13级飞爪皮肤",
	 "13级针皮肤",
	 "13级迫击炮皮肤",
	 "返回主页",
}, nil, "要用一级皮肤,才可以使用\n在大厅开始用")
if SN[1]==true then
	 HS29()
end
if SN[2]==true then
	 HS30()
end
if SN[3]==true then
	 HS31()
end
if SN[4]==true then
	 HS32()
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
if SN[12]==true then
	 HS40()
end
if SN[13]==true then
	 HS41()
end
if SN[14]==true then
	 HS42()
end
if SN[15]==true then
	 HS68()
end
FX=0
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600066", gg.TYPE_DWORD)
	 gg.toast("梦想皮肤开启成功")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600226", gg.TYPE_DWORD)
	 gg.toast("氪金石皮肤开启成功")
	 gg.clearResults()
end

function HS31()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600286", gg.TYPE_DWORD)
	 gg.toast("龙头鲨皮肤开启成功")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("完美空翻皮肤开启成功")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("圣光皮肤开启成功")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("超跑皮肤开启成功")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600251", gg.TYPE_DWORD)
	 gg.toast("天使之眼皮肤开启成功")
	 gg.clearResults()
end

function HS36()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600371", gg.TYPE_DWORD)
	 gg.toast("幻想伏特皮肤开启成功")
	 gg.clearResults()
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600321", gg.TYPE_DWORD)
	 gg.toast("闪闪飞轮皮肤开启成功")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600281", gg.TYPE_DWORD)
	 gg.toast("真龙之印皮肤开启成功")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600331", gg.TYPE_DWORD)
	 gg.toast("真龙现世皮肤开启成功")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600276", gg.TYPE_DWORD)
	 gg.toast("神龙金爪皮肤开启成功")
	 gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("DNA皮肤开启成功")
	 gg.clearResults()
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("虎纹鲨皮肤开启成功")
	 gg.clearResults()
end

function HS68()
	 Main0()
end

function Main43()
SN = gg.multiChoice({
	 "绝版手雷.粽子.皮肤",
	 "绝版手雷.爆竹.皮肤",
	 "绝版手雷.雪球.皮肤",
	 "绝版医疗箱.外卖盒.皮肤",
	 "绝版医疗箱.月饼礼盒.皮肤",
	 "绝版车.新猪骑士.皮肤",
	 "绝版车.幻影流星跑车.皮肤",
	 "绝版酒桶.烟花筒.皮肤",
	 "隐藏酒桶.超能水.皮肤",
	 "绝版阻挡箱.元旦快乐.皮肤",
	 "绝版阻挡箱.周年蛋糕.皮肤",
	 "绝版阻挡箱.未来音响.皮肤",
	 "隐藏阻挡箱.快乐逗娃.皮肤",
	 "绝版飞爪.食人花.皮肤",
	 "绝版毒液.蜜罐.皮肤",
	 "隐藏针.大蒜.皮肤",
	 "隐藏毒液.史莱姆.皮肤",
	 "返回主页",
}, nil, "要用一级皮肤,才可以体验\n大厅打开")
if SN[1]==true then
	 HS44()
end
if SN[2]==true then
	 HS45()
end
if SN[3]==true then
	 HS46()
end
if SN[4]==true then
	 HS47()
end
if SN[5]==true then
	 HS48()
end
if SN[6]==true then
	 HS49()
end
if SN[7]==true then
	 HS50()
end
if SN[8]==true then
	 HS51()
end
if SN[9]==true then
	 HS52()
end
if SN[10]==true then
	 HS53()
end
if SN[11]==true then
	 HS54()
end
if SN[12]==true then
	 HS55()
end
if SN[13]==true then
	 HS56()
end
if SN[14]==true then
	 HS57()
end
if SN[15]==true then
	 HS58()
end
if SN[16]==true then
	 HS59()
end
if SN[17]==true then
	 HS60()
end
if SN[18]==true then
	 HS69()
end
FX=0
end

function HS44()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600336", gg.TYPE_DWORD)
	 gg.toast("快给敌人吃粽子去")
	 gg.clearResults()
end

function HS45()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600221", gg.TYPE_DWORD)
	 gg.toast("拿爆竹炸死对面")
	 gg.clearResults()
end

function HS46()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600196", gg.TYPE_DWORD)
	 gg.toast("让敌人冻死吧")
	 gg.clearResults()
end

function HS47()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600366", gg.TYPE_DWORD)
	 gg.toast("先生，您要的外卖到了")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600411", gg.TYPE_DWORD)
	 gg.toast("大家快来一起吃月饼")
	 gg.clearResults()
end

function HS49()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600266", gg.TYPE_DWORD)
	 gg.toast("你就是那个意中人")
	 gg.clearResults()
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600416", gg.TYPE_DWORD)
	 gg.toast("感觉不怎么滴")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600391", gg.TYPE_DWORD)
	 gg.toast("拿着烟花筒去炸敌人吧")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600371", gg.TYPE_DWORD)
	 gg.toast("水还能喝醉！")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600201", gg.TYPE_DWORD)
	 gg.toast("建议在元旦的时候用")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600386", gg.TYPE_DWORD)
	 gg.toast("祝逃跑一周年快乐")
	 gg.clearResults()
end

function HS55()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600406", gg.TYPE_DWORD)
	 gg.toast("音乐真好听")
	 gg.clearResults()
end

function HS56()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600401", gg.TYPE_DWORD)
	 gg.toast("你家娃被你逗死了吗？")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600341", gg.TYPE_DWORD)
	 gg.toast("小僵尸快过来,快进我的肚子里")
	 gg.clearResults()
end

function HS58()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600396", gg.TYPE_DWORD)
	 gg.toast("嗯，很甜")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600421", gg.TYPE_DWORD)
	 gg.toast("蒜味儿真重")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600426", gg.TYPE_DWORD)
	 gg.toast("史莱姆很可爱哟！")
	 gg.clearResults()
end

function HS69()
	 Main0()
end

function HS70()
	 os.exit()
end



Main0()