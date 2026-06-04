
function Voice(Rain)
gg.playMusic('https://fanyi.baidu.com/gettts?lan=zh&text='..Rain..'&spd=5&source=wise')
end
Voice("小号千万个，大号唯一个。没防没拦截，封号迟早事")
ab=gg.alert('我们的口号是：爱罗牛逼','开启脚本','查看版本','查看公告')
if ab==1 then 
 
   end
if ab==2 then
   gg.alert("爱罗提示您：您现在使用的是3.2版本","进入脚本")
  end
 if ab==3 then
   gg.alert("公告：交流群1073673638，如果你是旧版就点击进入脚本然后点击更新，内置修改器的同学们可以不用更新，请不要倒卖脚本，脚本权最终归爱罗所有","进入脚本")
  end   


ab=gg.alert("已复制群号欢迎进入，音乐走起","旧版更新点击这里","进入脚本音乐二","进入脚本音乐一")
if ab==1 then 
gg.alert("已经复制更新链接请到浏览器下载","退出脚本")
  gg.copyText("https://ailuo.lanzous.com/b015h4ykh")
  os.exit() 
     end
if ab==2 then
gg.playMusic("http://music.163.com/song/media/outer/url?id=1403501535.mp3")
  end
 if ab==3 then
gg.playMusic("http://music.163.com/song/media/outer/url?id=3932159.mp3")
  end  


gg.alert("已复制群号，欢迎进群")
gg.copyText("1073673638")
function Main0()
SN = gg.choice({--没有加密，你们想怎么玩就怎么玩，不要二改就行
	 "1.【单机改皮肤】",
	 "2.【单机改特殊英雄】",
	 "3.【单机改英雄】",
	 "4.【16字长名字】",
	 "5.【单机改地图】",
	 "6.【单机改召唤师技能】",
	 "7.【单机召唤师技能改特殊技能】",
	 "8.【单机特殊技能改无限cd】",
	 "9.【单机改装备属性】",
	 "10.【单机改兵线】",
	 "11.【单机改英雄无cd】",
	 "12.【单机变态模式】",
	 "13.【单机实战通用上帝视角】",
	 "14.【音乐模式】",
	 "15.【训练营娱乐功能】",
	 "16.【冒险功能】",
	 "17.【实战改皮肤】",
	 "18.【自瞄功能】",
	 "19.【霸体功能】",
	 "20.【退出脚本】",
}, nil, os.date"当前时间:%Y年-%m月-%d日 %H时:%M分:%S秒\n\n交流群:1073673638")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main5()
end
if SN==3 then
	 Main768()
end
if SN==4 then
	 Main785()
end
if SN==5 then
	 Main2()
end
if SN==6 then
	 Main217()
end
if SN==7 then
	 Main360()
end
if SN==8 then
	 Main378()
end
if SN==9 then
	 Main4()
end
if SN==10 then
	 Main212()
end
if SN==11 then
	 Main216()
end
if SN==12 then
	 Main351()
end
if SN==13 then
	 Main319()
end
if SN==14 then
	 Main466()
end
if SN==15 then
	 Main602()
end
if SN==16 then
	 Main913()
end
if SN==17 then
	 Main472()
end
if SN==18 then
	 Main473()
end
if SN==19 then
	 BT()
end
if SN==20 then
	 HS49()
end
FX1=0
end

function Main1()
Voice("正在开启单机改皮肤")
SN = gg.choice({
	 "1.单机改廉颇",
	 "2.单机改小乔",
	 "3.单机改赵云",
	 "4.单机改墨子",
	 "5.单机改妲己",
	 "6.单机改嬴政",
	 "7.单机改孙尚香",
	 "8.单机改鲁班七号",
	 "9.单机改庄周",
	 "10.单机改刘禅",
	 "11.单机改高渐离",
	 "12.单机改荆轲",
	 "13.单机改钟无艳",
	 "14.单机改孙膑",
	 "15.单机改扁鹊",
	 "16.单机改白起",
	 "17.单机改芈月",
	 "18.单机改吕布",
	 "19.单机改周瑜",
	 "20.单机改元歌",
	 "21.单机改夏侯惇",
	 "22.单机改甄姬",
	 "23.单机改曹操",
	 "24.单机改典韦",
	 "25.单机改宫本武藏",
	 "26.单机改李白",
	 "27.单机改狄仁杰",
	 "28.单机改达摩",
	 "29.单机改项羽",
	 "30.单机改武则天",
	 "31.单机改司马懿",
	 "32.单机改马可波罗",
	 "33.单机改诸葛亮",
	 "34.单机改老夫子",
	 "35.单机改关羽",
	 "36.单机改貂蝉",
	 "37.单机改安琪拉",
	 "38.单机改程咬金",
	 "39.单机改露娜",
	 "40.单机改姜子牙",
	 "41.单机改刘邦",
	 "42.单机改韩信",
	 "43.单机改王昭君",
	 "44.单机改兰陵王",
	 "45.单机改艾琳",
	 "46.单机改张良",
	 "47.单机改不知火舞",
	 "48.单机改娜可露露",
	 "49.单机改橘右京",
	 "50.单机改亚瑟",
	 "因为后面有太多英雄这里可以返回主页",
	 "51.单机改孙悟空",
	 "52.单机改牛魔王",
	 "53.单机改后羿",
	 "54.单机改刘备",
	 "55.单机改张飞",
	 "56.单机改李元芳",
	 "57.单机改虞姬",
	 "58.单机改钟馗",
	 "59.单机改杨玉环",
	 "60.单机改成吉思汗",
	 "61.单机改杨戬",
	 "62.单机改女娲",
	 "63.单机改哪咤",
	 "64.单机改干将莫邪",
	 "65.单机改雅典娜",
	 "66.单机改蔡文姬",
	 "67.单机改太乙真人",
	 "68.单机改东皇太一",
	 "69.单机改鬼谷子",
	 "70.单机改大乔",
	 "71.单机改凯",
	 "72.单机改苏烈",
	 "73.单机改百里守约",
	 "74.单机改百里玄策",
	 "75.单机改异星",
	 "76.单机改梦琪",
	 "77.单机改公孙离",
	 "78.单机改沈梦溪",
	 "79.单机改明世隐",
	 "80.单机改裴擒虎",
	 "81.单机改狂铁",
	 "82.单机改米莱狄",
	 "83.单机改摇",
	 "84.单机改云中君",
	 "85.单机改李信",
	 "86.单机改伽罗",
	 "87.单机改盾山",
	 "88.单机改孙策",
	 "89.单机改猪八戒",
	 "90.单机改上官婉儿",
	 "91.单机改嫦娥",
	 "92.单机改马超",
	 "93.单机改耀",
	 "94.单机改西施",
	 "95.单机改蒙犽",
	 "96.单机改鲁班大师",
	 "97.单机改盘古",
	 "98.单机改镜",
	 "99.单机改黄忠",
	 "100.返回主页",
}, nil, "年少轻狂：交流群:1073673638 闪退看脸\n注：每一个英雄只能改一次\n如：要改李白，选择李白在开脚本")
if SN==1 then
	 Main6()
end
if SN==2 then
	 Main7()
end
if SN==3 then
	 Main8()
end
if SN==4 then
	 Main9()
end
if SN==5 then
	 Main10()
end
if SN==6 then
	 Main11()
end
if SN==7 then
	 Main12()
end
if SN==8 then
	 Main13()
end
if SN==9 then
	 Main14()
end
if SN==10 then
	 Main15()
end
if SN==11 then
	 Main16()
end
if SN==12 then
	 Main17()
end
if SN==13 then
	 Main18()
end
if SN==14 then
	 Main19()
end
if SN==15 then
	 Main20()
end
if SN==16 then
	 Main21()
end
if SN==17 then
	 Main22()
end
if SN==18 then
	 Main23()
end
if SN==19 then
	 Main24()
end
if SN==20 then
	 Main25()
end
if SN==21 then
	 Main27()
end
if SN==22 then
	 Main28()
end
if SN==23 then
	 Main29()
end
if SN==24 then
	 Main30()
end
if SN==25 then
	 Main31()
end
if SN==26 then
	 Main32()
end
if SN==27 then
	 Main33()
end
if SN==28 then
	 Main35()
end
if SN==29 then
	 Main36()
end
if SN==30 then
	 Main37()
end
if SN==31 then
	 Main38()
end
if SN==32 then
	 Main39()
end
if SN==33 then
	 Main40()
end
if SN==34 then
	 Main41()
end
if SN==35 then
	 Main42()
end
if SN==36 then
	 Main43()
end
if SN==37 then
	 Main44()
end
if SN==38 then
	 Main45()
end
if SN==39 then
	 Main46()
end
if SN==40 then
	 Main47()
end
if SN==41 then
	 Main51()
end
if SN==42 then
	 Main52()
end
if SN==43 then
	 Main53()
end
if SN==44 then
	 Main54()
end
if SN==45 then
	 Main55()
end
if SN==46 then
	 Main56()
end
if SN==47 then
	 Main57()
end
if SN==48 then
	 Main58()
end
if SN==49 then
	 Main59()
end
if SN==50 then
	 Main60()
end
if SN==51 then
	 HS61()
end
if SN==52 then
	 Main399()
end
if SN==53 then
	 Main400()
end
if SN==54 then
	 Main401()
end
if SN==55 then
	 Main402()
end
if SN==56 then
	 Main403()
end
if SN==57 then
	 Main404()
end
if SN==58 then
	 Main405()
end
if SN==59 then
	 Main406()
end
if SN==60 then
	 Main407()
end
if SN==61 then
	 Main408()
end
if SN==62 then
	 Main451()
end
if SN==63 then
	 Main452()
end
if SN==64 then
	 Main614()
end
if SN==65 then
	 Main619()
end
if SN==66 then
	 Main624()
end
if SN==67 then
	 Main629()
end
if SN==68 then
	 Main635()
end
if SN==69 then
	 Main640()
end
if SN==70 then
	 Main644()
end
if SN==71 then
	 Main648()
end
if SN==72 then
	 Main654()
end
if SN==73 then
	 Main659()
end
if SN==74 then
	 Main664()
end
if SN==75 then
	 Main669()
end
if SN==76 then
	 Main673()
end
if SN==77 then
	 Main677()
end
if SN==78 then
	 Main681()
end
if SN==79 then
	 Main686()
end
if SN==80 then
	 Main692()
end
if SN==81 then
	 Main697()
end
if SN==82 then
	 Main702()
end
if SN==83 then
	 Main706()
end
if SN==84 then
	 Main710()
end
if SN==85 then
	 Main714()
end
if SN==86 then
	 Main717()
end
if SN==87 then
	 Main720()
end
if SN==88 then
	 Main725()
end
if SN==89 then
	 Main729()
end
if SN==90 then
	 Main733()
end
if SN==91 then
	 Main736()
end
if SN==92 then
	 Main740()
end
if SN==93 then
	 Main744()
end
if SN==94 then
	 Main747()
end
if SN==95 then
	 Main750()
end
if SN==96 then
	 Main753()
end
if SN==97 then
	 Main756()
end
if SN==98 then
	 Main759()
end
if SN==99 then
	 Main762()
end
if SN==100 then
	 Main765()
end
if SN==101 then
	 HS797()
end
FX1=0
end

function Main6()
SN = gg.choice({
	 "地狱岩魂",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS50()
end
FX1=0
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function Main7()
SN = gg.choice({
	 "万圣前夜",
	 "天鹅之梦",
	 "纯白花嫁",
	 "缤纷独角兽",
	 "丁香结",
	 "青蛇",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS62()
end
if SN==2 then
	 HS63()
end
if SN==3 then
	 HS64()
end
if SN==4 then
	 HS65()
end
if SN==5 then
	 HS66()
end
if SN==6 then
	 HS67()
end
if SN==7 then
	 HS68()
end
FX1=0
end

function HS62()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS63()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS64()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("10603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS65()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("10604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS66()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10605", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS67()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10606", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS68()
	 Main0()
end

function Main8()
SN = gg.choice({
	 "赵云：因单机不能玩赵云，所以为空壳",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 Main69()
end
if SN==2 then
	 HS70()
end
FX1=0
end

function Main69()
SN = gg.choice({
}, nil, "")
FX1=0
end

function HS70()
	 Main0()
end

function Main9()
SN = gg.choice({
	 "金属风暴",
	 "龙骑士",
	 "进击墨子号",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS71()
end
if SN==2 then
	 HS72()
end
if SN==3 then
	 HS73()
end
if SN==4 then
	 HS74()
end
FX1=0
end

function HS71()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10803", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS74()
	 Main0()
end

function Main10()
SN = gg.choice({
	 "女仆咖啡",
	 "魅力维加斯",
	 "仙境爱丽丝",
	 "少女阿理",
	 "热情桑巴",
	 "时之彼端",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS75()
end
if SN==2 then
	 HS76()
end
if SN==3 then
	 HS77()
end
if SN==4 then
	 HS78()
end
if SN==5 then
	 HS79()
end
if SN==6 then
	 HS80()
end
if SN==7 then
	 HS81()
end
FX1=0
end

function HS75()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS77()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10905", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10906", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS81()
	 Main0()
end

function Main11()
SN = gg.choice({
	 "嬴政：因单机不能玩嬴政，所以为空壳",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 Main82()
end
if SN==2 then
	 HS83()
end
FX1=0
end

function Main82()
SN = gg.choice({
}, nil, "")
FX1=0
end

function HS83()
	 Main0()
end

function Main12()
SN = gg.choice({
	 "火炮千金",
	 "水果甜心",
	 "蔷薇恋人",
	 "杀手不太冷",
	 "末日机甲",
	 "沉稳之刀",
	 "时之恋人",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS84()
end
if SN==2 then
	 HS85()
end
if SN==3 then
	 HS86()
end
if SN==4 then
	 HS87()
end
if SN==5 then
	 HS88()
end
if SN==6 then
	 HS89()
end
if SN==7 then
	 SSX()
end
if SN==8 then
	 HS90()
end
FX1=0
end

function HS84()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS85()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS86()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS87()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS88()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11105", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS89()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11105", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function SSX()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11107", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS90()
	 Main0()
end

function Main13()
SN = gg.choice({
	 "木偶奇遇记",
	 "福禄兄弟",
	 "电玩小子",
	 "星空梦想",
	 "狮舞东方",
	 "黑桃队长",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS91()
end
if SN==2 then
	 HS92()
end
if SN==3 then
	 HS93()
end
if SN==4 then
	 HS94()
end
if SN==5 then
	 HS95()
end
if SN==6 then
	 HS96()
end
if SN==7 then
	 HS97()
end
FX1=0
end

function HS91()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS92()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS93()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS94()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11204", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS95()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11205", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS96()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11206", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS97()
	 Main0()
end

function Main14()
SN = gg.choice({
	 "鲤鱼之梦",
	 "蜃楼王",
	 "云端建梦师",
	 "奇妙博物学",
	 "玄嵩",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS98()
end
if SN==2 then
	 HS99()
end
if SN==3 then
	 HS100()
end
if SN==4 then
	 HS101()
end
if SN==5 then
	 HS102()
end
if SN==6 then
	 HS103()
end
FX1=0
end

function HS98()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS99()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS100()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS101()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11304", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS102()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11305", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS103()
	 Main0()
end

function Main15()
SN = gg.choice({
	 "英喵野望",
	 "绅士熊猫",
	 "天才门将",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS104()
end
if SN==2 then
	 HS105()
end
if SN==3 then
	 HS106()
end
if SN==4 then
	 HS107()
end
FX1=0
end

function HS104()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS105()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS106()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS107()
	 Main0()
end

function Main16()
SN = gg.choice({
	 "金属狂潮",
	 "死亡摇滚",
	 "玩趣恶龙",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS108()
end
if SN==2 then
	 HS109()
end
if SN==3 then
	 HS110()
end
if SN==4 then
	 HS111()
end
FX1=0
end

function HS108()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS109()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS110()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11503", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS111()
	 Main0()
end

function Main17()
SN = gg.choice({
	 "爱心护理",
	 "暗夜猫娘",
	 "致命风华",
	 "节奏热浪",
	 "迷踪丽影",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS112()
end
if SN==2 then
	 HS113()
end
if SN==3 then
	 HS114()
end
if SN==4 then
	 HS115()
end
if SN==5 then
	 HS116()
end
if SN==6 then
	 HS117()
end
FX1=0
end

function HS112()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS113()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS114()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS115()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS116()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11605", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS117()
	 Main0()
end

function Main18()
SN = gg.choice({
	 "生化警戒",
	 "王者之锤",
	 "海滩丽影",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS118()
end
if SN==2 then
	 HS119()
end
if SN==3 then
	 HS120()
end
if SN==4 then
	 HS121()
end
FX1=0
end

function HS118()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS119()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS120()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11703", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS121()
	 Main0()
end

function Main19()
SN = gg.choice({
	 "未来旅行",
	 "天使之翼",
	 "精灵王",
	 "虚归梦境",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS122()
end
if SN==2 then
	 HS123()
end
if SN==3 then
	 HS124()
end
if SN==4 then
	 HS125()
end
if SN==5 then
	 HS126()
end
FX1=0
end

function HS122()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS123()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS124()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11803", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS125()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11804", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS126()
	 Main0()
end

function Main20()
SN = gg.choice({
	 "救世什瞳",
	 "化身博士",
	 "炼金王",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS127()
end
if SN==2 then
	 HS128()
end
if SN==3 then
	 HS129()
end
if SN==4 then
	 HS130()
end
FX1=0
end

function HS127()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS128()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11902", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS129()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS130()
	 Main0()
end

function Main21()
SN = gg.choice({
	 "白色死神",
	 "无畏之灵•铮",
	 "星夜王子",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS131()
end
if SN==2 then
	 HS132()
end
if SN==3 then
	 HS133()
end
if SN==4 then
	 HS134()
end
FX1=0
end

function HS131()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS132()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS133()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS134()
	 Main0()
end

function Main22()
SN = gg.choice({
	 "皇后红桃",
	 "太秦宣太后",
	 "重明",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS153()
end
if SN==2 then
	 HS154()
end
if SN==3 then
	 HS155()
end
if SN==4 then
	 HS156()
end
FX1=0
end

function HS153()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS154()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS155()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS156()
	 Main0()
end

function Main23()
SN = gg.choice({
	 "圣诞狂欢",
	 "天魔缭乱",
	 "末日机甲",
	 "猎兽之王",
	 "野性能量",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS157()
end
if SN==2 then
	 HS158()
end
if SN==3 then
	 HS159()
end
if SN==4 then
	 HS160()
end
if SN==5 then
	 HS161()
end
if SN==6 then
	 HS162()
end
FX1=0
end

function HS157()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS158()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS159()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS160()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12304", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS161()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";1200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12305", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS162()
	 Main0()
end

function Main24()
SN = gg.choice({
	 "海军大将",
	 "真爱至上",
	 "赤莲之焰",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS163()
end
if SN==2 then
	 HS164()
end
if SN==3 then
	 HS165()
end
if SN==4 then
	 HS166()
end
FX1=0
end

function HS163()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12401", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS164()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS165()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS166()
	 Main0()
end

function Main25()
SN = gg.choice({
	 "午夜歌剧院",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS167()
end
if SN==2 then
	 HS168()
end
FX1=0
end

function HS167()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS168()
	 Main0()
end

function Main27()
SN = gg.choice({
	 "战争骑士",
	 "乘风破浪",
	 "无限飙风号",
	 "朔风刀",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS169()
end
if SN==2 then
	 HS170()
end
if SN==3 then
	 HS171()
end
if SN==4 then
	 HS172()
end
if SN==5 then
	 HS173()
end
FX1=0
end

function HS169()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS170()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS171()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS172()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS173()
	 Main0()
end

function Main28()
SN = gg.choice({
	 "冰雪圆舞曲",
	 "花好人间",
	 "游园惊梦",
	 "幽恒",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS174()
end
if SN==2 then
	 HS175()
end
if SN==3 then
	 HS176()
end
if SN==4 then
	 HS177()
end
if SN==5 then
	 HS178()
end
FX1=0
end

function HS174()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12700", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS175()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS176()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12703", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS177()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12704", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS178()
	 Main0()
end

function Main29()
SN = gg.choice({
	 "超能战警",
	 "幽灵船长",
	 "死神来了",
	 "烛龙",
	 "太狼征服者",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS179()
end
if SN==2 then
	 HS180()
end
if SN==3 then
	 HS181()
end
if SN==4 then
	 HS182()
end
if SN==5 then
	 HS183()
end
if SN==6 then
	 HS184()
end
FX1=0
end

function HS179()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS180()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12803", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS181()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12804", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS182()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12805", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS183()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12806", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS184()
	 Main0()
end

function Main30()
SN = gg.choice({
	 "黄金武士",
	 "究奇",
	 "蓝屏警告",
	 "岱宗",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS185()
end
if SN==2 then
	 HS186()
end
if SN==3 then
	 HS187()
end
if SN==4 then
	 HS188()
end
if SN==5 then
	 HS189()
end
FX1=0
end

function HS185()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS186()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS187()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS188()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS189()
	 Main0()
end

function Main31()
SN = gg.choice({
	 "鬼剑武藏",
	 "未来纪元",
	 "万象更新",
	 "地狱之眼",
	 "霸王丸",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS190()
end
if SN==2 then
	 HS191()
end
if SN==3 then
	 HS192()
end
if SN==4 then
	 HS193()
end
if SN==5 then
	 HS194()
end
if SN==6 then
	 HS195()
end
FX1=0
end

function HS190()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS191()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS192()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13004", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS193()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13005", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS194()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13006", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS195()
	 Main0()
end

function Main32()
SN = gg.choice({
	 "范海辛",
	 "千年之狐",
	 "凤求凰",
	 "敏锐之力",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS196()
end
if SN==2 then
	 HS197()
end
if SN==3 then
	 HS198()
end
if SN==4 then
	 HS199()
end
if SN==5 then
	 HS200()
end
FX1=0
end

function HS196()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS197()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS198()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS199()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS200()
	 Main0()
end

function Main33()
SN = gg.choice({
	 "锦衣卫",
	 "魔术师",
	 "超时空战士",
	 "阴阳师",
	 "鹰眼护卫",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS201()
end
if SN==2 then
	 HS202()
end
if SN==3 then
	 HS203()
end
if SN==4 then
	 HS204()
end
if SN==5 then
	 HS205()
end
if SN==6 then
	 HS206()
end
FX1=0
end

function HS201()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS202()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS203()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS204()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13304", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS205()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13305", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS206()
	 Main0()
end

function Main35()
SN = gg.choice({
	 "拳皇",
	 "大发明家",
	 "黄金狮子座",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS207()
end
if SN==2 then
	 HS208()
end
if SN==3 then
	 HS209()
end
if SN==4 then
	 HS210()
end
FX1=0
end

function HS207()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS208()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS209()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS210()
	 Main0()
end

function Main36()
SN = gg.choice({
	 "帝国元帅",
	 "苍穹之光",
	 "海滩派对",
	 "职棒王牌",
	 "霸王别姬",
	 "科学大爆炸",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS232()
end
if SN==2 then
	 HS233()
end
if SN==3 then
	 HS234()
end
if SN==4 then
	 HS235()
end
if SN==5 then
	 HS236()
end
if SN==6 then
	 HS237()
end
if SN==7 then
	 HS238()
end
FX1=0
end

function HS232()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS233()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS234()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13503", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS235()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13504", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS236()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13505", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS237()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13506", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS238()
	 Main0()
end

function Main37()
SN = gg.choice({
	 "武则天：因单机不能玩武则天，所以为空壳",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 Main239()
end
if SN==2 then
	 HS240()
end
FX1=0
end

function Main239()
SN = gg.choice({
}, nil, "")
FX1=0
end

function HS240()
	 Main0()
end

function Main38()
SN = gg.choice({
	 "魇语军师",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS241()
end
if SN==2 then
	 HS242()
end
FX1=0
end

function HS241()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS242()
	 Main0()
end

function Main39()
SN = gg.choice({
	 "激情绿茵",
	 "逐梦之星",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS243()
end
if SN==2 then
	 HS244()
end
if SN==3 then
	 HS245()
end
FX1=0
end

function HS243()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS244()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS245()
	 Main0()
end

function Main40()
SN = gg.choice({
	 "星航指挥官",
	 "黄金分割率",
	 "武陵仙君",
	 "掌控之力",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS246()
end
if SN==2 then
	 HS247()
end
if SN==3 then
	 HS248()
end
if SN==4 then
	 HS249()
end
if SN==5 then
	 HS250()
end
FX1=0
end

function HS246()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS247()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS248()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS249()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19004", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS250()
	 Main0()
end

function Main41()
SN = gg.choice({
	 "潮流仙人",
	 "圣诞老人",
	 "功夫老勺",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS251()
end
if SN==2 then
	 HS252()
end
if SN==3 then
	 HS253()
end
if SN==4 then
	 HS254()
end
FX1=0
end

function HS251()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS252()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS253()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS254()
	 Main0()
end

function Main42()
SN = gg.choice({
	 "龙腾万里",
	 "天启骑士",
	 "冰封战神",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS255()
end
if SN==2 then
	 HS256()
end
if SN==3 then
	 HS257()
end
if SN==4 then
	 HS258()
end
FX1=0
end

function HS255()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS256()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS257()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS258()
	 Main0()
end

function Main43()
SN = gg.choice({
	 "异域舞娘",
	 "圣诞恋歌",
	 "仲夏夜之梦",
	 "逐梦之音",
	 "猫影幻舞",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS259()
end
if SN==2 then
	 HS260()
end
if SN==3 then
	 HS261()
end
if SN==4 then
	 HS262()
end
if SN==5 then
	 HS263()
end
if SN==6 then
	 HS264()
end
FX1=0
end

function HS259()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS260()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS261()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS262()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS263()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14106", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS264()
	 Main0()
end

function Main44()
SN = gg.choice({
	 "玩偶对对碰",
	 "魔法小厨娘",
	 "心灵骇客",
	 "如懿",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS265()
end
if SN==2 then
	 HS266()
end
if SN==3 then
	 HS267()
end
if SN==4 then
	 HS268()
end
if SN==5 then
	 HS269()
end
FX1=0
end

function HS265()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS266()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS267()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS268()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14204", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS269()
	 Main0()
end

function Main45()
SN = gg.choice({
	 "爱与正义",
	 "星际陆战队",
	 "华尔街大亨",
	 "功夫厨神",
	 "活力突击",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS270()
end
if SN==2 then
	 HS271()
end
if SN==3 then
	 HS272()
end
if SN==4 then
	 HS273()
end
if SN==5 then
	 HS274()
end
if SN==6 then
	 HS275()
end
FX1=0
end

function HS270()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS271()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS272()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS273()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14404", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS274()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14405", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS275()
	 Main0()
end

function Main46()
SN = gg.choice({
	 "哥特玫瑰",
	 "绯红之刃",
	 "紫霞仙子",
	 "一生所爱",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS276()
end
if SN==2 then
	 HS277()
end
if SN==3 then
	 HS278()
end
if SN==4 then
	 HS279()
end
if SN==5 then
	 HS280()
end
FX1=0
end

function HS276()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS277()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS278()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS279()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS280()
	 Main0()
end

function Main47()
SN = gg.choice({
	 "时尚教父",
	 "炽热元素使",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS281()
end
if SN==2 then
	 HS282()
end
if SN==3 then
	 HS283()
end
FX1=0
end

function HS281()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS282()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS283()
	 Main0()
end

function Main51()
SN = gg.choice({
	 "圣殿之光",
	 "德古拉伯爵",
	 "夺宝奇兵",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS284()
end
if SN==2 then
	 HS285()
end
if SN==3 then
	 HS286()
end
if SN==4 then
	 HS287()
end
FX1=0
end

function HS284()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS285()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS286()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS287()
	 Main0()
end

function Main52()
SN = gg.choice({
	 "街头霸王",
	 "教廷特使",
	 "白龙吟",
	 "逐梦之影",
	 "飞衡",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS288()
end
if SN==2 then
	 HS290()
end
if SN==3 then
	 HS291()
end
if SN==4 then
	 HS292()
end
if SN==5 then
	 HS293()
end
if SN==6 then
	 HS294()
end
FX1=0
end

function HS288()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS290()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS291()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS292()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15004", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS293()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15005", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS294()
	 Main0()
end

function Main53()
SN = gg.choice({
	 "精灵公主",
	 "偶像歌手",
	 "凤凰于飞",
	 "奇妙幻想夜",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS299()
end
if SN==2 then
	 HS300()
end
if SN==3 then
	 HS301()
end
if SN==4 then
	 HS302()
end
if SN==5 then
	 HS303()
end
FX1=0
end

function HS299()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS300()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS301()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS302()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15204", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS303()
	 Main0()
end

function Main54()
SN = gg.choice({
	 "影刃",
	 "暗影猎兽者",
	 "训魔猎人",
	 "返回主页",
}, nil, "")
if SN==1 then
	 HS304()
end
if SN==2 then
	 HS305()
end
if SN==3 then
	 HS306()
end
if SN==4 then
	 HS307()
end
FX1=0
end

function HS304()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS305()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS306()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS307()
	 Main0()
end

function Main55()
SN = gg.choice({
	 "艾琳：因单机不能玩艾琳，所以为空壳",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 Main308()
end
if SN==2 then
	 HS309()
end
FX1=0
end

function Main308()
SN = gg.choice({
}, nil, "")
FX1=0
end

function HS309()
	 Main0()
end

function Main56()
SN = gg.choice({
	 "天堂福音",
	 "一千零一夜",
	 "幽兰居士",
	 "黄金白羊座",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS310()
end
if SN==2 then
	 HS311()
end
if SN==3 then
	 HS312()
end
if SN==4 then
	 HS313()
end
if SN==5 then
	 HS314()
end
FX1=0
end

function HS310()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS311()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS312()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS313()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS314()
	 Main0()
end

function Main57()
SN = gg.choice({
	 "魅语",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS315()
end
if SN==2 then
	 HS316()
end
FX1=0
end

function HS315()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS316()
	 Main0()
end

function Main58()
SN = gg.choice({
	 "晚萤",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS317()
end
if SN==2 then
	 HS318()
end
FX1=0
end

function HS317()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS318()
	 Main0()
end

function Main59()
SN = gg.choice({
	 "修罗",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS230()
end
if SN==2 then
	 HS289()
end
FX1=0
end

function HS230()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS289()
	 Main0()
end

function Main60()
SN = gg.choice({
	 "死亡骑士",
	 "狮心王",
	 "心灵战警",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS295()
end
if SN==2 then
	 HS296()
end
if SN==3 then
	 HS297()
end
if SN==4 then
	 HS298()
end
FX1=0
end

function HS295()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS296()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS297()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS298()
	 Main0()
end

function HS61()
	 Main0()
end

function Main399()
SN = gg.choice({
	 "地狱火",
	 "西部大嫖客",
	 "美猴王",
	 "至尊宝",
	 "全息碎影",
	 "大圣娶亲",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS409()
end
if SN==2 then
	 HS410()
end
if SN==3 then
	 HS411()
end
if SN==4 then
	 HS412()
end
if SN==5 then
	 HS413()
end
if SN==6 then
	 HS414()
end
if SN==7 then
	 HS415()
end
FX1=0
end

function HS409()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS410()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS411()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16703", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS412()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16704", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS413()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16705", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS414()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16706", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS415()
	 Main0()
end

function Main400()
SN = gg.choice({
	 "西部大嫖客",
	 "霸制全明星",
	 "御旌",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS416()
end
if SN==2 then
	 HS417()
end
if SN==3 then
	 HS418()
end
if SN==4 then
	 HS419()
end
FX1=0
end

function HS416()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS417()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS418()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16803", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS419()
	 Main0()
end

function Main401()
SN = gg.choice({
	 "精灵王",
	 "阿尔法小队",
	 "辉光之辰",
	 "黄金射手座",
	 "如梦令",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS420()
end
if SN==2 then
	 HS421()
end
if SN==3 then
	 HS422()
end
if SN==4 then
	 HS423()
end
if SN==5 then
	 HS464()
end
if SN==6 then
	 HS465()
end
FX1=0
end

function HS420()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS421()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS422()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS423()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS464()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16905", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS465()
	 Main0()
end

function Main402()
SN = gg.choice({
	 "万事如意",
	 "黑帮教父",
	 "汉昭烈帝",
	 "时之恋人",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS425()
end
if SN==2 then
	 HS426()
end
if SN==3 then
	 HS428()
end
if SN==4 then
	 LIUBAI()
end
if SN==5 then
	 HS429()
end
FX1=0
end

function HS425()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS426()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS428()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function LIUBAI()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17004", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS429()
	 Main0()
end

function Main403()
SN = gg.choice({
	 "五福同心",
	 "乱世虎臣",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS430()
end
if SN==2 then
	 HS431()
end
if SN==3 then
	 HS432()
end
FX1=0
end

function HS430()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS431()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS432()
	 Main0()
end

function Main404()
SN = gg.choice({
	 "特种部队",
	 "黑猫爱糖果",
	 "逐浪之夏",
	 "银河之约",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS433()
end
if SN==2 then
	 HS434()
end
if SN==3 then
	 HS435()
end
if SN==4 then
	 HS436()
end
if SN==5 then
	 HS437()
end
FX1=0
end

function HS433()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS434()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS435()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS436()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17304", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS437()
	 Main0()
end

function Main405()
SN = gg.choice({
	 "加勒比小姐",
	 "霸王别姬",
	 "铠尔特女王",
	 "云霓雀翎",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS438()
end
if SN==2 then
	 HS439()
end
if SN==3 then
	 HS440()
end
if SN==4 then
	 HS441()
end
if SN==5 then
	 HS442()
end
FX1=0
end

function HS438()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS439()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS440()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS441()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17404", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS442()
	 Main0()
end

function Main406()
SN = gg.choice({
	 "地狱判官",
	 "神迹守卫",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS443()
end
if SN==2 then
	 HS444()
end
if SN==3 then
	 HS445()
end
FX1=0
end

function HS443()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS444()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS445()
	 Main0()
end

function Main407()
SN = gg.choice({
	 "霓裳曲",
	 "遇见飞天",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS446()
end
if SN==2 then
	 HS447()
end
if SN==3 then
	 HS448()
end
FX1=0
end

function HS446()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS447()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS448()
	 Main0()
end

function Main408()
SN = gg.choice({
	 "维京掠夺者",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS449()
end
if SN==2 then
	 HS450()
end
FX1=0
end

function HS449()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS450()
	 Main0()
end

function Main451()
SN = gg.choice({
	 "埃及法老",
	 "永耀之星",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS453()
end
if SN==2 then
	 HS454()
end
if SN==3 then
	 HS455()
end
FX1=0
end

function HS453()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS454()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS455()
	 Main0()
end

function Main452()
SN = gg.choice({
	 "尼罗河女神",
	 "朔望之晖",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS456()
end
if SN==2 then
	 HS457()
end
if SN==3 then
	 HS458()
end
FX1=0
end

function HS456()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS457()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS458()
	 Main0()
end

function Main614()
SN = gg.choice({
	 "三太子",
	 "逐梦之翼",
	 "次元突破",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS615()
end
if SN==2 then
	 HS616()
end
if SN==3 then
	 HS617()
end
if SN==4 then
	 HS618()
end
FX1=0
end

function HS615()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS616()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS617()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS618()
	 Main0()
end

function Main619()
SN = gg.choice({
	 "第七人偶",
	 "冰霜恋曲舞",
	 "久胜战神",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS620()
end
if SN==2 then
	 HS621()
end
if SN==3 then
	 HS622()
end
if SN==4 then
	 HS623()
end
FX1=0
end

function HS620()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS621()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS622()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS623()
	 Main0()
end

function Main624()
SN = gg.choice({
	 "战争女神",
	 "冰霜公主",
	 "神奇女侠",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS625()
end
if SN==2 then
	 HS626()
end
if SN==3 then
	 HS627()
end
if SN==4 then
	 HS628()
end
FX1=0
end

function HS625()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS626()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS627()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS628()
	 Main0()
end

function Main629()
SN = gg.choice({
	 "蔷薇王座",
	 "奇迹圣诞",
	 "舞动绿茵",
	 "繁星呤游",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS630()
end
if SN==2 then
	 HS631()
end
if SN==3 then
	 HS632()
end
if SN==4 then
	 HS633()
end
if SN==5 then
	 HS634()
end
FX1=0
end

function HS630()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS631()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS632()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS633()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18404", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS634()
	 Main0()
end

function Main635()
SN = gg.choice({
	 "圆桌骑士",
	 "饕餮",
	 "华丽摇滚",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS636()
end
if SN==2 then
	 HS637()
end
if SN==3 then
	 HS638()
end
if SN==4 then
	 HS639()
end
FX1=0
end

function HS636()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS637()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS638()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS639()
	 Main0()
end

function Main640()
SN = gg.choice({
	 "东海龙王",
	 "逐梦之光",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS641()
end
if SN==2 then
	 HS642()
end
if SN==3 then
	 HS643()
end
FX1=0
end

function HS641()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS642()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS643()
	 Main0()
end

function Main644()
SN = gg.choice({
	 "阿摩司公爵",
	 "幻乐之宴",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS645()
end
if SN==2 then
	 HS646()
end
if SN==3 then
	 HS647()
end
FX1=0
end

function HS645()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS646()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS647()
	 Main0()
end

function Main648()
SN = gg.choice({
	 "伊势巫女",
	 "守护之力",
	 "猫狗日记",
	 "白蛇",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS649()
end
if SN==2 then
	 HS650()
end
if SN==3 then
	 HS651()
end
if SN==4 then
	 HS652()
end
if SN==5 then
	 HS653()
end
FX1=0
end

function HS649()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS650()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS651()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS652()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS653()
	 Main0()
end

function Main654()
SN = gg.choice({
	 "龙城域主",
	 "曙光守护者",
	 "青龙志",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS655()
end
if SN==2 then
	 HS656()
end
if SN==3 then
	 HS657()
end
if SN==4 then
	 HS658()
end
FX1=0
end

function HS655()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS656()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS657()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS658()
	 Main0()
end

function Main659()
SN = gg.choice({
	 "爱与和平",
	 "坚韧之力",
	 "玄虎志",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS660()
end
if SN==2 then
	 HS661()
end
if SN==3 then
	 HS662()
end
if SN==4 then
	 HS663()
end
FX1=0
end

function HS660()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS661()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS662()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS663()
	 Main0()
end

function Main664()
SN = gg.choice({
	 "绝影枪神",
	 "特工魅影",
	 "朱雀志",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS665()
end
if SN==2 then
	 HS666()
end
if SN==3 then
	 HS667()
end
if SN==4 then
	 HS668()
end
FX1=0
end

function HS665()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS666()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS667()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS668()
	 Main0()
end

function Main669()
SN = gg.choice({
	 "威尼斯狂欢",
	 "白虎志",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS670()
end
if SN==2 then
	 HS671()
end
if SN==3 then
	 HS672()
end
FX1=0
end

function HS670()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS671()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS672()
	 Main0()
end

function Main673()
SN = gg.choice({
	 "踏雪寻梅",
	 "混沌棋",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS674()
end
if SN==2 then
	 HS675()
end
if SN==3 then
	 HS676()
end
FX1=0
end

function HS674()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS675()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS676()
	 Main0()
end

function Main677()
SN = gg.choice({
	 "美梦成真",
	 "胖达荣荣",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS678()
end
if SN==2 then
	 HS679()
end
if SN==3 then
	 HS680()
end
FX1=0
end

function HS678()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS679()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS680()
	 Main0()
end

function Main681()
SN = gg.choice({
	 "花间舞",
	 "蜜橘之夏",
	 "无限星赏官",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS682()
end
if SN==2 then
	 HS683()
end
if SN==3 then
	 HS684()
end
if SN==4 then
	 HS685()
end
FX1=0
end

function HS682()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS683()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS684()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS685()
	 Main0()
end

function Main686()
SN = gg.choice({
	 "棒球奇才",
	 "星空之诺",
	 "星空之诺",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS687()
end
if SN==2 then
	 HS689()
end
if SN==3 then
	 HS690()
end
if SN==4 then
	 HS691()
end
FX1=0
end

function HS687()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";31200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";31201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS689()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";31200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";31203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS690()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";31200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";31203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS691()
	 Main0()
end

function Main692()
SN = gg.choice({
	 "占星术土",
	 "虹云星官",
	 "疑决卦",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS693()
end
if SN==2 then
	 HS694()
end
if SN==3 then
	 HS695()
end
if SN==4 then
	 HS696()
end
FX1=0
end

function HS693()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS694()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS695()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS696()
	 Main0()
end

function Main697()
SN = gg.choice({
	 "街头旋风",
	 "梅西",
	 "天狼狩猎者",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS698()
end
if SN==2 then
	 HS699()
end
if SN==3 then
	 HS700()
end
if SN==4 then
	 HS701()
end
FX1=0
end

function HS698()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS699()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS700()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS701()
	 Main0()
end

function Main702()
SN = gg.choice({
	 "命运角斗场",
	 "御狮",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS703()
end
if SN==2 then
	 HS704()
end
if SN==3 then
	 HS705()
end
FX1=0
end

function HS703()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS704()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS705()
	 Main0()
end

function Main706()
SN = gg.choice({
	 "精准探案发",
	 "御霄",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS707()
end
if SN==2 then
	 HS708()
end
if SN==3 then
	 HS709()
end
FX1=0
end

function HS707()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS708()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS709()
	 Main0()
end

function Main710()
SN = gg.choice({
	 "森",
	 "遇见神鹿",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS712()
end
if SN==2 then
	 HS834()
end
if SN==3 then
	 HS713()
end
FX1=0
end

function HS712()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS834()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS713()
	 Main0()
end

function Main714()
SN = gg.choice({
	 "荷鲁斯之眼",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS715()
end
if SN==2 then
	 HS716()
end
FX1=0
end

function HS715()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50601", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS716()
	 Main0()
end

function Main717()
SN = gg.choice({
	 "灼热之刃",
	 "一念成魔",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS718()
end
if SN==2 then
	 xtj()
end
if SN==3 then
	 HS719()
end
FX1=0
end

function HS718()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50701", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function xtj()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS719()
	 Main0()
end

function Main720()
SN = gg.choice({
	 "花见巫女",
	 "箭羽风息",
	 "太华",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS721()
end
if SN==2 then
	 HS722()
end
if SN==3 then
	 HS723()
end
if SN==4 then
	 HS724()
end
FX1=0
end

function HS721()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS722()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS723()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50503", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS724()
	 Main0()
end

function Main725()
SN = gg.choice({
	 "极冰防御线",
	 "御銮",
	 "圆桌骑士",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS726()
end
if SN==2 then
	 HS727()
end
if SN==3 then
	 HS832()
end
if SN==4 then
	 HS833()
end
FX1=0
end

function HS726()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS727()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS832()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS833()
	 Main0()
end

function Main729()
SN = gg.choice({
	 "海之途征",
	 "猫狗日记",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS730()
end
if SN==2 then
	 HS731()
end
if SN==3 then
	 HS732()
end
FX1=0
end

function HS730()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51001", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS731()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51002", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS732()
	 Main0()
end

function Main733()
SN = gg.choice({
	 "年年有余",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS734()
end
if SN==2 then
	 HS735()
end
FX1=0
end

function HS734()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS735()
	 Main0()
end

function Main736()
SN = gg.choice({
	 "修竹墨客",
	 "梁祝",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS737()
end
if SN==2 then
	 HS738()
end
if SN==3 then
	 HS739()
end
FX1=0
end

function HS737()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS738()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS739()
	 Main0()
end

function Main740()
SN = gg.choice({
	 "露花倒影",
	 "如梦令",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS741()
end
if SN==2 then
	 HS742()
end
if SN==3 then
	 HS743()
end
FX1=0
end

function HS741()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS742()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS743()
	 Main0()
end

function Main744()
SN = gg.choice({
	 "幸存者",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS745()
end
if SN==2 then
	 HS746()
end
FX1=0
end

function HS745()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS746()
	 Main0()
end

function Main747()
SN = gg.choice({
	 "归虚梦演",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS748()
end
if SN==2 then
	 HS749()
end
FX1=0
end

function HS748()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS749()
	 Main0()
end

function Main750()
SN = gg.choice({
	 "归虚梦演",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS751()
end
if SN==2 then
	 HS752()
end
FX1=0
end

function HS751()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52301", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS752()
	 Main0()
end

function Main753()
SN = gg.choice({
	 "归虚梦演",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS754()
end
if SN==2 then
	 HS755()
end
FX1=0
end

function HS754()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS755()
	 Main0()
end

function Main756()
SN = gg.choice({
	 "归虚梦演",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS757()
end
if SN==2 then
	 HS758()
end
FX1=0
end

function HS757()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS758()
	 Main0()
end

function Main759()
SN = gg.choice({
	 "创世神祝",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS760()
end
if SN==2 then
	 HS761()
end
FX1=0
end

function HS760()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52901", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS761()
	 Main0()
end

function Main762()
SN = gg.choice({
	 "破镜之刃",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS763()
end
if SN==2 then
	 HS764()
end
FX1=0
end

function HS763()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";53100", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";53101", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS764()
	 Main0()
end

function Main765()
SN = gg.choice({
	 "芝加哥教父",
	 "烈魂",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：每一个英雄只能改一次，改第二次需要重启游戏，不重启游戏改则无效果")
if SN==1 then
	 HS766()
end
if SN==2 then
	 e1()
end
if SN==3 then
	 HS767()
end
FX1=0
end

function HS766()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function e1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS767()
	 Main0()
end

function HS797()
	 Main0()
end

function Main5()
Voice("正在开启单机改特殊英雄")
SN = gg.choice({
	 "1.庄周改艾琳一套",
	 "2.小乔改镜分身（大招那个东西）",
	 "3.墨子改元歌傀儡",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n如果修改没有效果，就重启游戏")
if SN==1 then
	 Main802()
end
if SN==2 then
	 HS147()
end
if SN==3 then
	 HS148()
end
if SN==4 then
	 HS211()
end
FX1=0
end

function Main802()
SN = gg.choice({
	 "第一步（改英雄）",
	 "第二步（皮肤，无限cd一套）",
	 "返回主页",
}, nil, "开启第一步完成后，在艾琳在开第二步\n第二步一定要选择艾琳才能开启，不然没有效果")
if SN==1 then
	 HS803()
end
if SN==2 then
	 HS804()
end
if SN==3 then
	 HS805()
end
FX1=0
end

function HS803()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("155", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("已经修改完成英雄，请选择艾琳然后开启第二步")
end

function HS804()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，正在修改无限cd")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15510;10000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15500;9000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("15530;45000;1300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("45000;130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成")
end

function HS805()
	 Main0()
end

function HS147()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("532", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS148()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("108", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("225", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS211()
	 Main0()
end

function Main768()
Voice("正在开启单机改英雄")
SN = gg.choice({
	 "1.廉颇改武则天",
	 "2.廉颇改韩信",
	 "3.廉颇改武则赵云",
	 "4.廉颇改嬴政",
	 "5.刘禅改马超",
	 "6.嫦娥改鲁班大师",
	 "7.黄忠改蒙犽",
	 "8.姜子牙改西施",
	 "9.牛魔改东方曜",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638 支持全部手机，闪退看脸 注：打完一局开恢复，不然第二局没有效果 选择英雄界面开启，开启后直接点皮肤")
if SN==1 then
	 Main769()
end
if SN==2 then
	 Main773()
end
if SN==3 then
	 Main777()
end
if SN==4 then
	 Main781()
end
if SN==5 then
	 Main801()
end
if SN==6 then
	 Main814()
end
if SN==7 then
	 Main818()
end
if SN==8 then
	 Main822()
end
if SN==9 then
	 Main827()
end
if SN==10 then
	 HS831()
end
FX1=0
end

function Main769()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "第三步",
	 "返回主页",
}, nil, "第一步选择廉颇开，然后点击皮肤选择武则天，再开第二步")
if SN==1 then
	 HS770()
end
if SN==2 then
	 HS806()
end
if SN==3 then
     g1()
    end
if SN==4 then
	 HS772()
end
FX1=0
end

function HS770()
	  gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.alert("请你现在选择小乔开启第二步")
end

function HS806()
	 gg.setRanges(32)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("136", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("英雄已修改完成，请点击皮肤选择武则天并开启第三步")
	end
	
function g1()	 
	  gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.alert("皮肤修改完成，请点击皮肤，正在修改无限cd，请稍等")
	 gg.setRanges(-1032320)
	 gg.searchNumber("13610;3000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("13620;8000;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.setRanges(-1032320)
	 gg.searchNumber("13630;80000;150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80000;150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.alert("技能无限cd已完成，可以开始游戏")
end

function HS772()
	 Main0()
end

function Main773()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "第三步",
	 "返回主页",
}, nil, "第一步选择廉颇开，然后点击皮肤选择韩信，再开第二步")
if SN==1 then
	 HS774()
end
if SN==2 then
	 HS807()
end
if SN==3 then
g2()
end
if SN==4 then
	 HS776()
end
FX1=0
end

function HS774()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 
	 gg.alert("请你现在选择小乔并开启第二步")
end

function HS807()
gg.setRanges(32)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("150", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("英雄已修改完成，请点击皮肤选择韩信并开启第三步")
	end

function g2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15004", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，请点击皮肤，正在修改无限cd，请稍等")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15010;9000;55", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;55", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15020;5000;80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5000;80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("15030;36000;140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80000;150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成，可以开始游戏")
end

function HS776()
	 Main0()
end

function Main777()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "第三步",
	 "返回主页",
}, nil, "第一步选择廉颇开，然后点击皮肤选择赵云，再开第二步")
if SN==1 then
	 HS778()
end
if SN==2 then
	 HS808()
end
if SN==3 then
  g3()
end
if SN==4 then
	 HS780()
end
FX1=0
end

function HS778()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 
	 gg.alert("请你现在选择赵云并开启第二步")
end

function HS808()
gg.setRanges(32)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("107", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("英雄已修改完成，请点击皮肤选择赵云并开启第三步")
	end


function g3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10708", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，请点击皮肤，正在修改无限cd，请稍等")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10710;7000;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10720;6000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("10730;18000;75", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18000;75", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成，可以开始游戏")
end

function HS780()
	 Main0()
end

function Main781()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "第三步",
	 "返回主页",
}, nil, "第一步选择廉颇开，然后点击皮肤选择嬴政，再开第二步")
if SN==1 then
	 HS782()
end
if SN==2 then
	 HS812()
end
if SN==3 then
g4()
end
if SN==4 then
	 HS784()
end
FX1=0
end

function HS782()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 
	 gg.alert("请你现在选择嬴政并开启第二步")
end

function HS812()
gg.setRanges(32)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("106", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("英雄已修改完成，请点击皮肤选择嬴政并开启第三步")
	end

function g4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，请点击皮肤，正在修改无限cd，请稍等")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11010;8000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11020;10000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("11030;30000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成，可以开始游戏")
end

function HS784()
	 Main0()
end

function Main801()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步选择庄周开，然后点击皮肤选择马超，再开第二步")
if SN==1 then
	 HS810()
end
if SN==2 then
	 HS813()
end
if SN==3 then
	 HS811()
end
FX1=0
end

function HS810()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("518", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("已经修改完成英雄，请选择马超然后开启第二步")
end

function HS813()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51800", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51801", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，正在修改无限cd")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51810;8000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51820;8000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("51830;45000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("45000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成")
end

function HS811()
	 Main0()
end

function Main814()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步选择嫦娥开，然后点击皮肤选择鲁班大师，再开第二步")
if SN==1 then
	 HS815()
end
if SN==2 then
	 HS816()
end
if SN==3 then
	 HS817()
end
FX1=0
end

function HS815()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("515", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("525", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("已经修改完成英雄，请选择鲁班大师然后开启第二步")
end

function HS816()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52501", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，正在修改无限cd")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52510;8000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52520;6000;45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("52530;50000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成")
end

function HS817()
	 Main0()
end

function Main818()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步选择马可波罗开，然后点击皮肤选择蒙犽，再开第二步")
if SN==1 then
	 HS819()
end
if SN==2 then
	 HS820()
end
if SN==3 then
	 HS821()
end
FX1=0
end

function HS819()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("132", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("524", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("已经修改完成英雄，请选择蒙犽然后开启第二步")
end

function HS820()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52401", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，正在修改无限cd")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52410;8000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52420;10000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("52430;60000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成")
end

function HS821()
	 Main0()
end

function Main822()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步选择杨玉环开，然后选择西施，再开第二步")
if SN==1 then
	 HS823()
end
if SN==2 then
	 HS824()
end
if SN==3 then
	 HS825()
end
FX1=0
end

function HS823()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("176", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("523", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("已经修改完成英雄，请选择西施然后开启第二步")
end

function HS824()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52301", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，正在修改无限cd")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52310;9000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52320;7000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("52330;45000;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("45000;90", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成")
end

function HS825()
	 Main0()
end

function Main827()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步选择牛魔开，然后点击皮肤选择东方曜，再开第二步")
if SN==1 then
	 HS828()
end
if SN==2 then
	 HS829()
end
if SN==3 then
	 HS830()
end
FX1=0
end

function HS828()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("168", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("522", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS829()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";52200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";52201", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("皮肤修改完成，正在修改无限cd")
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52210;6000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")	 
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52220;7000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()	 
	 gg.setRanges(-1032320)
	 gg.searchNumber("52230;15000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
	 gg.alert("技能无限cd已完成")
end

function HS830()
	 Main0()
end

function HS831()
	 Main0()
end

function Main785()
Voice("正在开启16字长名字")
SN = gg.choice({
	 "16字长名字",
     "返回主页",
}, nil, "新手，改名卡通用")
if SN==1 then
     HS791()
end
if SH==2 then	 
	 HS916()
end
FX1=0
end

function HS791()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
gg.searchNumber("1;12;86,400::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("64", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
gg.searchNumber("42;12::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("80", gg.TYPE_DWORD)
end

function HS916()
	 Main0()
end

function Main2()
Voice("正在开启单机改地图")
SN = gg.choice({
	 "1.1V1改3V3",
	 "2.1V1改5V5",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n一局开一次，选择地图界面开启")
if SN==1 then
	 HS135()
end
if SN==2 then
	 HS136()
end
if SN==3 then
	 HS145()
end
FX1=0
end

function HS135()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("21111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("20002", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS136()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("21111", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("20011", gg.TYPE_DWORD)
	 gg.getResults(9999)
	 gg.clearResults()
end

function HS145()
	 Main0()
end

function Main217()
Voice("正在开启单机改召唤师技能")
SN = gg.choice({
	 "1.无限闪现",
	 "2.无限治疗术",
	 "3.无限晕眩",
	 "4.无限惩戒",
	 "5.无限干扰",
	 "6.无限净化",
	 "7.无限斩杀",
	 "8.无限疾跑",
	 "9.无限狂暴",
	 "10.无限弱化",
	 "11.无限寒冰惩戒",
	 "返回主页",
}, nil, "选择英雄界面开启，开启成功即可进入游戏")
if SN==1 then
	 HS339()
end
if SN==2 then
	 HS340()
end
if SN==3 then
	 HS341()
end
if SN==4 then
	 HS342()
end
if SN==5 then
	 HS343()
end
if SN==6 then
	 HS344()
end
if SN==7 then
	 HS345()
end
if SN==8 then
	 HS346()
end
if SN==9 then
	 HS347()
end
if SN==10 then
	 HS348()
end
if SN==11 then
	 HS349()
end
if SN==12 then
	 HS350()
end
FX1=0
end

function HS339()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115;120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS340()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80102;120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS341()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80103;90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS342()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80104;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS343()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80105;60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS344()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80107;120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS345()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80108;90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS346()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80109;100000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS347()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80110;60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS348()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80121;90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS349()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80116;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0000", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS350()
	 Main0()
end

function Main360()
Voice("正在开启单机召唤师技能改特殊技能")
SN = gg.choice({
	 "1.闪现改小药瓶",
	 "2闪现改大药箱",
	 "3.闪现改多火球",
	 "4.闪现改大火球",
	 "5.闪现改恢复",
	 "6.闪现改快速雪球",
	 "7.闪现改回城",
	 "8.闪现改快速回城（3秒回城）",
	 "9.闪现改百里二技能",
	 "10.闪现改钟馗二技能",
	 "11.闪现改视野药剂",
	 "12.闪现改爱的环绕",
	 "13.闪现改烟雾弹",
	 "14.闪现改剔骨",
	 "15闪现改盾墙",
	 "返回主页",
}, nil, "在选择英雄界面开启，一次只能开一个，开第二次需要重启游戏。开启成功按右上加的取消，在进入选英雄界面选择闪现就开启成功")
if SN==1 then
	 HS363()
end
if SN==2 then
	 HS364()
end
if SN==3 then
	 HS365()
end
if SN==4 then
	 HS366()
end
if SN==5 then
	 HS367()
end
if SN==6 then
	 HS368()
end
if SN==7 then
	 HS369()
end
if SN==8 then
	 HS370()
end
if SN==9 then
	 HS371()
end
if SN==10 then
	 HS372()
end
if SN==11 then
	 HS373()
end
if SN==12 then
	 HS374()
end
if SN==13 then
	 HS375()
end
if SN==14 then
	 HS376()
end
if SN==15 then
	 HS379()
end
if SN==16 then
	 HS377()
end
FX1=0
end

function HS363()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("74001", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS364()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("74002", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS365()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90001", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS366()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90002", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS367()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90003", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS368()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90004", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS369()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90005", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS370()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90007", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS371()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90015", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS372()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90017", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS373()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90020", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS374()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("90021", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS375()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("75320", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS376()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("75310", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS379()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("75420", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS377()
	 Main0()
end

function Main378()
Voice("正在开启单机特殊技能改无限cd")
SN = gg.choice({
	 "1.多火球改无限cd",
	 "2.大火球无限cd",
	 "3.恢复改无限cd",
	 "4.快速雪球无限cd",
	 "5.百里二技能无限cd",
	 "6.钟馗二技能无限cd",
	 "7.爱的环绕无限cd",
	 "8.烟雾弹无限cd",
	 "9.剔骨无限cd",
	 "10盾墙无限cd",
	 "返回主页",
}, nil, "注：此功能只能只能用以改闪现以后的技能 如：闪现改大火球，在选择英雄界面选择大火球并开启无cd即可")
if SN==1 then
	 HS380()
end
if SN==2 then
	 HS381()
end
if SN==3 then
	 HS382()
end
if SN==4 then
	 HS383()
end
if SN==5 then
	 HS384()
end
if SN==6 then
	 HS385()
end
if SN==7 then
	 HS386()
end
if SN==8 then
	 HS800()
end
if SN==9 then
	 HS388()
end
if SN==10 then
	 HS389()
end
if SN==11 then
	 HS390()
end
FX1=0
end

function HS380()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90001;5000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS381()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90002;5000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS382()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90003;60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS383()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90004;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS384()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90015;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS385()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90017;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS386()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("90021;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS800()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("75320", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS388()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("75310;40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS389()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("75420;40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS390()
	 Main0()
end

function Main4()
Voice("正在开启单机改装备属性")
SN = gg.choice({
	 "1.无尽改秒杀（最多买二件，超过会打人没有伤害）",
	 "2.破军改1金币",
	 "3.霸者重装改无敌（最多买二件，超过会自动死亡）",
	 "4.影刃改加速（选择英雄界面开启）",
	 "返回主页",
}, nil, "年少轻狂：交流群:1073673638\n支持全部手机，闪退看脸\n游戏里开启")
if SN==1 then
	 HS218()
end
if SN==2 then
	 HS219()
end
if SN==3 then
	 HS220()
end
if SN==4 then
	 HS353()
end
if SN==5 then
	 HS608()
end
FX1=0
end

function HS218()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2140;130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS219()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2950;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2950", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS220()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2070;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS353()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2070;4000;2000;500;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS608()
	 Main0()
end

function Main212()
Voice("正在开启单机改兵线")
SN = gg.choice({
	 "1.单机1v1无限兵线",
	 "2.单机5v5无限兵线",
	 "返回主页",
}, nil, "建议不用开，实战通用\n建议不要开，因为兵线太多会闪退")
if SN==1 then
	 HS213()
end
if SN==2 then
	 HS214()
end
if SN==3 then
	 HS215()
end
FX1=0
end

function HS213()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4;25000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS214()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3;33000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS215()
	 Main0()
end

function Main216()
Voice("正在开启单机改英雄无cd")
SN = gg.choice({
	 "1.后羿大招无cd",
	 "2.宫本大招无cd",
	 "3.吕布大招无cd",
	 "4.关羽大招无cd",
	 "5.妲己大招无cd",
	 "6.孙悟空一技能无cd",
	 "7.钟馗二技能无cd",
	 "8.墨子二技能无cd",
	 "9.芈月大招无cd",
	 "10.上官婉儿大招无cd",
	 "11.诸葛亮大招无cd",
	 "12.米莱狄大招无cd",
	 "13.嬴政大招无限cd",
	 "14.武则天大招无限cd",
	 "15.艾琳大招无限cd",
	 "16.露娜大招无限cd",
	 "17.张良大招无限cd",
	 "18.孙策大招无cd",
	 "19.单机改貂蝉一套",
	 "返回主页",
}, nil, "在选择英雄界面并选择需要开启的英雄开启，成功即可进入游戏")
if SN==1 then
	 HS225()
end
if SN==2 then
	 HS226()
end
if SN==3 then
	 HS227()
end
if SN==4 then
	 HS228()
end
if SN==5 then
	 HS330()
end
if SN==6 then
	 HS331()
end
if SN==7 then
	 HS332()
end
if SN==8 then
	 HS333()
end
if SN==9 then
	 HS334()
end
if SN==10 then
	 HS335()
end
if SN==11 then
	 HS336()
end
if SN==12 then
	 HS337()
end
if SN==13 then
	 HS792()
end
if SN==14 then
	 HS793()
end
if SN==15 then
	 HS794()
end
if SN==16 then
	 HS795()
end
if SN==17 then
	 HS796()
end
if SN==18 then
	 HS338()
end
if SN==19 then
	 Main325()
end
if SN==20 then
	 HS229()
end
FX1=0
end

function HS225()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16930;45000;130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS226()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("13030;60000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS227()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12330;50000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS228()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("14030;70000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS330()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10930;18000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS331()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16710;12000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS332()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("17520;14000;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS333()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("10820;7000;70", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS334()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12130;24000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS335()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51330;40000;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS336()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19030;35000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS337()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("50430;35000;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS792()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("110;30000;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS793()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("136;80000;150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS794()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("155;45000;130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS795()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("146;25000;80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS796()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("146;40000;130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS338()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51030;45000;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function Main325()
SN = gg.multiChoice({
	 "1.一技能无cd",
	 "2.二技能无cd（部分会有bug，看脸）",
	 "3.大招无cd",
	 "返回主页",
}, nil, "选择貂蝉再开启，请选择选择游戏界面并选择貂蝉开启")
if SN[1]==true then
	 HS326()
end
if SN[2]==true then
	 HS327()
end
if SN[3]==true then
	 HS328()
end
if SN[4]==true then
	 HS329()
end
FX1=0
end

function HS326()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("14110;5000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS327()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("14120;10000;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS328()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("14130;40000;80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS329()
	 Main0()
end

function HS229()
	 Main0()
end

function Main351()
Voice("正在开启单机变态模式")
SN = gg.choice({
	 "1.橘右京大招范围",
	 "2.盾山范围",
	 "3.无视防御塔的攻击",
	 "4.秒复活",
	 "5.1v1人机单机通用秒胜利",
	 "6.公孙离一技能超大位移",
	 "7.攻速爆炸",
	 "8.宫本大招范围",
	 "9.返回主页",
}, nil, "注：无视防御塔的攻击，有一些英雄技能会出现错误，宫本大招游戏里开启")
if SN==1 then
	 HS352()
end
if SN==2 then
	 HS609()
end
if SN==3 then
	 HS354()
end
if SN==4 then
	 HS362()
end
if SN==5 then
	 HS474()
end
if SN==6 then
	 Main355()
end
if SN==7 then
	 Main395()
end
if SN==8 then
	GB()
end
if SN==9 then
	 HS463()
end
FX1=0
end

function HS352()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("10000;4000;7000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS609()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5000;1000;160;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 9999999;9999999;9999999;9999999}})
	 end
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS354()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS362()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("15000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS474()
	 gg.clearResults()
	 gg.setRanges(2080896)
	 gg.searchNumber("1,406,309,351;12,000:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
end

function Main355()
SN = gg.choice({
	 "1.小",
	 "2.中",
	 "3.大",
	 "返回主页",
}, nil, "注：一次只能开一个，要开地二次需要重启游戏")
if SN==1 then
	 HS356()
end
if SN==2 then
	 HS357()
end
if SN==3 then
	 HS358()
end
if SN==4 then
	 HS359()
end
FX1=0
end

function HS356()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4500;20000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS357()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4500;20000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS358()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4500;20000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("9999999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS359()
	 Main0()
end

function Main395()
SN = gg.choice({
	 "1.我方攻速",
	 "2.全部攻速",
	 "返回主页",
}, nil, "游戏中开启，可关闭")
if SN==1 then
	 HS396()
end
if SN==2 then
	 HS397()
end
if SN==3 then
	 HS398()
end
FX1=0
end

function HS396()
SN = gg.choice({
	 "1.我方开启",
	 "2.我方修复",
	 "3.返回主页",
}, nil, "游戏中开启，可关闭")
if SN==1 then
	 G1()
end
if SN==2 then
	 G2()
end
if SN==3 then
	 G3()
end
FX1=0
end

function G1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("163840000;-40951809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-40951809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end
function G2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("163840000;99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("-40951809", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function G3()
	 Main0()
end
--———————
function HS397()
SN = gg.choice({
	 "1.全部开启",
	 "2.全部修复",
	 "3.返回主页",
}, nil, "游戏中开启，可关闭")
if SN==1 then
	 G4()
end
if SN==2 then
	 G5()
end
if SN==3 then
	 G6()
end
FX1=0
end

function G4()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("959;163,840,000;-40,951,809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-40951809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("99999", gg.TYPE_DWORD)
gg.toast("爱罗提醒您:开启成功")
gg.clearResults()
end

function G5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("959;163,840,000;4000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-40,951,809", gg.TYPE_DWORD)
gg.toast("爱罗提醒您:开启成功")
gg.clearResults()
end

function G6()
	 Main0()
end
--————————
function HS398()
	 Main0()
end

function
	 GB()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("0;6,500;6,500;6,500;6,500;10,000:65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-10", gg.TYPE_DWORD)
	 
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("6,500;6,500;6,500;6,500;10,000:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6,500;6,500;6,500;6,500;10,000:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("13030;60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您：开启成功")
	 gg.clearResults()
gg.alert("开启成功，请被防御塔打死一次即可生效")
end

function HS463()
	 Main0()
end

function Main319()
Voice("正在开启单机实战通用上帝视角")
SN = gg.choice({
	 "1.上帝视角",
	 "返回主页",
}, nil, "游戏里开启，只能开一个，不能恢复，第二局会自动修复\n实战通用")
if SN==1 then
	 HS320()
end
if SN==2 then
	 HS323()
end
FX1=0
end

function HS320()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,081,006,571D;-1,082,125,398D;-1,082,130,432D;-1,088,838,298D;0::47", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
XG = gg.prompt({
      "爱罗提醒您：请输入您想提高的倍率,默认为50倍，注：一局只能开一次)"
    }, {
      [1] = 50
    }, {
      [1] = "number"
    })[1]
    local t =gg.getResults(1)
for i, v in ipairs(t)do
t[i].value =XG
t[i].freeze =true
end
gg.addListItems(t)
gg.clearResults()
gg.toast("爱罗提示您：上帝视角开启成功")
end


function HS323()
	 Main0()
end

function Main466() Voice("正在开启音乐模式")
gg.toast("正在加载……")
function Voice(Rain)
gg.playMusic('https://fanyi.baidu.com/gettts?lan=zh&text='..Rain..'&spd=5&source=wise')
end

local g = {}
g.file = gg.getFile()
g.sel = nil
gqlb={"请先搜索歌曲",}
idb={"1010"}
SN,gc=1,nil
g.config = gg.getFile():gsub('%lua$', '')..'音乐搜索历史保存，请不要删除'
function bei()
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"","10"}
end
end
bei()

---搜索歌曲
function start(name,sl)
gg.toast("开始搜索音乐："..name,true)
Voice("开始搜索音乐："..name,true)
fw=gg.makeRequest("http://music.163.com/api/search/get?s="..name.."&type=1&offset=0&total=true&limit="..sl)
return fw
end

---歌词查看
function Lyric(gid)
gg.toast("歌词加载已完成")
Voice("开始加载歌词，部分无法节奏歌词")
geci=gg.makeRequest("http://music.163.com/api/song/media?id="..gid).content
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%d%]", "")
geci = string.gsub(geci, "%[%d%d%p%d%d%p%d%]", "")
geci=zjson(geci)
return geci.lyric
end

---播放音乐
function play(id,name)
gg.toast("开始播放音乐："..name,true)
Voice("开始播放音乐："..name,true)
gg.playMusic("http://music.163.com/song/media/outer/url?id="..id..".mp3")
end

---下载音乐
function downloadFile(id,name)
gg.toast("开始下载："..name,true)
gg.downloadFile("http://music.163.com/song/media/outer/url?id="..id..".mp3")
for i=1,1 do
gg.toast("已成功下载音乐："..name,true)
Voice("已成功下载音乐："..name,true)
end
end

---停止播放
function stop()
gg.toast("正在请求停止播放")
Voice("已停止")
for i=1,1000 do
gg.playMusic("stop")
gg.toast("播放已停止")
end
end



function Play(gqlb,idb)
gg.toast("已进入歌曲列表")
Voice("已进入歌曲列表")
SN = gg.choice(gqlb,nil,ts)
if SN == nil then XGCK =-1 else
sn=gg.choice({"播放音乐","查看歌词"},nil,"歌曲："..gqlb[SN])
if sn == nil then end
if sn == 1 then
play(idb[SN],gqlb[SN])
end

if sn == 2 then
gc=Lyric(idb[SN])
gg.alert(gc)
end
end
XGCK=-1
end

function zjson(jsonr)
local str = jsonr
---匹配Json Key的正则表达式
local pattern = "\"[%w]+\":"
string.gsub(str, pattern, function(v)
if string.find(str, v) then
str = string.gsub(str, v, string.gsub(v, "\"", ""))
end
end)
str = string.gsub(str, ":", "=")
str = string.gsub(str, "%[", "{")
str = string.gsub(str, "%]", "}")
local data = "return " .. str
local res = load(data)()
return res
end


function json(con)
res=zjson(con)
zd=res.result.songCount
pd=go3-zd
if pd <= 0 then else go3=zd end
ts="《"..go1.."》找到"..zd.."首歌曲，当前显示"..go3.."首"
gqlb={}
idb={}
for i=1,go3 do
gqlb[i]=res.result.songs[i].name
idb[i]=res.result.songs[i].id
end
---print(idb)
end


---主页
function Main()
XW=gg.choice({
"搜索歌曲",
"歌曲列表",
"播放音乐",
"查看歌词",
"停止播放",
"退出脚本"
},nil,"源代码来自网络")
if XW == nil then end
if XW == 1 then Main1() end
if XW == 2 then Play(gqlb,idb) end
if XW == 3 then play(idb[SN],gqlb[SN]) end
if XW == 4 then
if idb[1]=="1010" then gg.alert("请先搜索歌曲")else
 gc=Lyric(idb[SN]);gg.alert(gc) end end
if XW == 5 then stop() end
if XW == 6 then exit() end
XGCK=-1
end

function Main1()
search = gg.prompt({
"输入要搜索的歌曲",
"设置显示数量(数字)",
},g.sel,{
"text",
"text",
})
if search == nil then Main() end
gg.saveVariable(search,g.config)
bei()
go1=search[1]
go3=search[2]
jg=start(go1,go3)
if jg.code == 200 then
fh=jg.content
fh=json(fh)
---print(fh)
Play(gqlb,idb)
else
function inspect()
gg.alert("访问网络异常，错误代码：\n\n"..jg.code)
end
if not pcall(inspect) then print("网络异常，请先连接上网络") os.exit() end
end
XGCK=-1
end

function exit()
Voice("已成功退出脚本")
gg.toast(os.date"已成功退出脚本……\n当前时间：%Y年%m月%d日%H时%M分%S秒")
os.exit()
end

while true do
if gg.isVisible(true)
then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end
end
	 


--———————————————————————————————————




function Main602()
Voice("正在开启训练营娱乐功能")
SN = gg.choice({
	 "1.训练营改无限暴君主宰",
	 "待添加，返回主页",
}, nil, "只能在训练营里面玩，娱乐专用")
if SN==1 then
	 Main603()
end
if SN==2 then
	 HS606()
end
FX1=0
end

function Main603()
SN = gg.choice({
	 "1.无限暴君主宰",
	 "返回主页",
}, nil, "训练营开启，开启成功，点击刷新暴君或者主宰，可无限刷新")
if SN==1 then
	 HS604()
end
if SN==2 then
	 HS605()
end
FX1=0
end

function HS604()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("120,000;240,000;1::93", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(9999)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS605()
	 Main0()
end

function HS606()
	 Main0()
end

function Main913()
Voice("正在开启冒险功能")
SN = gg.choice({
	 "亚瑟秒杀加速无cd",
	 "返回主页",
}, nil, "进入冒险地图里面开，用一技能就是加速，二技能全屏范围")
if SN==1 then
	 l1()
end
if SN==2 then
	 l2()
end
FX1=0
end

function l1()
	 Name="亚瑟"
gg.setRanges(gg.REGION_C_ALLOC) 
local SS={{286720000,0x69CB9C88},{88473600,0x69CBA118},{65536000,0x69CBA5A8}} 	
local XG={{0,0x69CB9C88},{0,0x69CBA118},{0,0x69CBA5A8},{6000,0x69CB9D08},{8000,0x69CBA198},{6000,0x69CBA628},{667,0x69CBD50C}} 	
local Type = gg.TYPE_DWORD
SearchWrite(SS,XG,Type)
a2()
end
function a2()
Name="妲己"
gg.setRanges(gg.REGION_C_ALLOC) 
local SS={{166200,0x80C8D384},{1000,0x80C8D68C},{160,0x80C8D694},{160,0x80C8D698},{500,0x080C8D69C}} 	
local XG={{999999,0x80C8D678}}
local Type = gg.TYPE_DWORD
SearchWrite(SS,XG,Type)
end
function a3()
Name="亚瑟"
gg.setRanges(gg.REGION_C_ALLOC) 
local SS={{344064000,0x6BFF1254},{98304000,0x6BFF16DC},{81920000,0x6BFF1B64}} 	
local XG={{0,0x6BFF1254},{0,0x6BFF16DC},{0,0x6BFF1B64},{6000,0x6BFF12D4},{8000,0x6BFF175C},{6000,0x6BFF1BE4},{667,0x6BFF3DB8}} 	
local Type = gg.TYPE_DWORD
SearchWrite(SS,XG,Type)
a4()
end
function a4()
Name="妲己"
gg.setRanges(gg.REGION_C_ALLOC) 
local SS={{166200,0x80C8D384},{1000,0x80C8D68C},{160,0x80C8D694},{160,0x80C8D698},{500,0x080C8D69C}} 	
local XG={{999999,0x80C8D678}}
local Type = gg.TYPE_DWORD
SearchWrite(SS,XG,Type)
end
function SearchWrite(Search, Write, Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1], Type)
local count = gg.getResultCount()
local result = gg.getResults(count)
gg.clearResults()
local data = {} 
local base = Search[1][2] 
if (count > 0) then
for i, v in ipairs(result) do
v.isUseful = true 
end
for k=2, #Search do
local tmp = {}
local offset = Search[k][2] - base
local num = Search[k][1] 
for i, v in ipairs(result) do
tmp[#tmp+1] = {} 
tmp[#tmp].address = v.address + offset  
tmp[#tmp].flags = v.flags  
end
tmp = gg.getValues(tmp) 
for i, v in ipairs(tmp) do
if ( v.value ~= num ) then 
result[i].isUseful = false 
end
end
end  
for i, v in ipairs(result) do
if (v.isUseful) then 
data[#data+1] = v.address
end
end
if (#data > 0) then
local t = {}
local base = Search[1][2]
for i=1, #data do
for k, w in ipairs(Write) do
offset = w[2] - base
t[#t+1] = {}
t[#t].address = data[i] + offset
t[#t].flags = Type
t[#t].value = w[1]
if (w[3] == true) then
local item = {}
item[#item+1] = t[#t]
item[#item].freeze = true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.toast(Name.."开启成功已修改: "..#t.." 条数据")
gg.addListItems(t)
gg.clearList()
else
gg.toast(Name.."开启失败，没有搜索到数据", false)
return false
end
end
end

function l2()
	 Main0()
end

function Main472()
Voice("正在开启实战改皮肤")
SN = gg.choice({
	 "1.万圣前夜改天鹅之梦",
	 "2.金属风暴改龙骑士",
	 "3.魅力维加斯改时之彼端",
	 "4.水果甜心改杀手不太冷",
	 "5.木偶奇遇记改星空梦想",
	 "6.重明改太秦宣皇后",
	 "7.圣诞狂欢改天魔缭乱",
	 "8.朔风刀改无限飙风号",
	 "9.花好人间改幽恒",
	 "10.穷奇改岱宗",
	 "11.范海辛改凤求凰",
	 "12.激情绿茵改逐梦之星",
	 "13.拳皇改黄金狮子座",
	 "14.功夫老勺改圣诞老人",
	 "15.天启骑士改冰封战神",
	 "16.异域舞娘改逐梦之音",
	 "17.爱与正义改活力突击",
	 "18.哥特玫瑰改紫霞仙子",
	 "19.教廷特使改飞衡",
	 "20.剑舞者改冠军飞将",
	 "21.幽兰居士改黄金白羊座",
	 "22.精灵王改黄金射手座",
	 "23.凯尔特女王改云霓雀翎",
	 "24.埃及法老改永耀之星",
	 "25.第七人偶改战胜久神",
	 "26.星航指挥官改黄陵仙境",
	 "27.西部打镖客改全息碎影",
	 "28.皇家上将改引擎之心",
	 "29.龙城域主改青龙志",
	 "30.爱与和平改玄虎志",
	 "31.玩偶对对碰改魔法小厨娘",
	 "32.未来纪元改龙胆",
	 "33.死亡骑士改狮心王",
	 "34.鲤鱼之梦改蜃楼王",
	 "35.威尼斯狂欢改白虎志",
	 "36.锦衣卫改超时空战士",
	 "37.绝影神枪改朱雀志",
	 "38.化身博士炼金王",
	 "39.蔷薇王座改奇迹圣诞",
	 "40.烛龙改天狼征服者",
	 "41.露花倒影改如梦令",
	 "42.伊士巫女改白蛇",
	 "43.潮流仙人改圣诞老人",
	 "44.异域舞娘改逐梦之音",
	 "45.东海龙王改逐梦之光",
	 "46.花见巫女改太华",
	 "47.神殿之光改德古拉伯爵",
	 "48.激情绿茵改逐梦之星",
	 "49.三太子改逐梦之翼",
	 "50.霸头旋风改天狼狩猎者",
	 "51.芝加哥教父改烈魂",
	 "52.万事如意改时之恋人",
	 "53.水果甜心改时之恋人",
	 "54.光之刃改一念成魔",
	 "55.返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 Main475()
end
if SN==2 then
	 Main479()
end
if SN==3 then
	 Main483()
end
if SN==4 then
	 Main487()
end
if SN==5 then
	 Main491()
end
if SN==6 then
	 Main495()
end
if SN==7 then
	 Main499()
end
if SN==8 then
	 Main503()
end
if SN==9 then
	 Main507()
end
if SN==10 then
	 Main511()
end
if SN==11 then
	 Main515()
end
if SN==12 then
	 Main519()
end
if SN==13 then
	 Main523()
end
if SN==14 then
	 Main527()
end
if SN==15 then
	 Main531()
end
if SN==16 then
	 Main537()
end
if SN==17 then
	 Main541()
end
if SN==18 then
	 Main545()
end
if SN==19 then
	 Main549()
end
if SN==20 then
	 Main553()
end
if SN==21 then
	 Main557()
end
if SN==22 then
	 Main561()
end
if SN==23 then
	 Main565()
end
if SN==24 then
	 Main570()
end
if SN==25 then
	 Main574()
end
if SN==26 then
	 Main578()
end
if SN==27 then
	 Main582()
end
if SN==28 then
	 Main586()
end
if SN==29 then
	 Main590()
end
if SN==30 then
	 Main594()
end
if SN==31 then
	 Main598()
end
if SN==32 then
	 Main835()
end
if SN==33 then
	 Main839()
end
if SN==34 then
	 Main843()
end
if SN==35 then
	 Main847()
end
if SN==36 then
	 Main851()
end
if SN==37 then
     Main855()
end
if SN==38 then
	 Main859()
end
if SN==39 then
	 Main863()
end
if SN==40 then
	 Main867()
end
if SN==41 then
	 Main871()
end
if SN==42 then
	 Main875()
end
if SN==43 then
	 Main879()
end
if SN==44 then
	 Main883()
end
if SN==45 then
	 Main887()
end
if SN==46 then
	 Main892()
end
if SN==47 then
	 Main896()
end
if SN==48 then
	 Main901()
end
if SN==49 then
	 Main905()
end
if SN==50 then
	 Main909()
end
if SN==51 then
	 Maind1()
end
if SN==52 then
	 Maind2()
end
if SN==53 then
	 Maind3()
end
if SN==54 then
	 Maind4()
end
if SN==55 then
	 HS799()
end
FX1=0
end

function Main475()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS476()
end
if SN==2 then
	 HS477()
end
if SN==3 then
	 HS478()
end
FX1=0
end

function HS476()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10601", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS477()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10601", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS478()
	 Main0()
end

function Main479()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS480()
end
if SN==2 then
	 HS481()
end
if SN==3 then
	 HS482()
end
FX1=0
end

function HS480()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10801", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS481()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10801", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS482()
	 Main0()
end

function Main483()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS484()
end
if SN==2 then
	 HS485()
end
if SN==3 then
	 HS486()
end
FX1=0
end

function HS484()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10906", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS485()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10906", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS486()
	 Main0()
end

function Main487()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS488()
end
if SN==2 then
	 HS489()
end
if SN==3 then
	 HS490()
end
FX1=0
end

function HS488()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11102", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS489()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11102", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS490()
	 Main0()
end

function Main491()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS492()
end
if SN==2 then
	 HS493()
end
if SN==3 then
	 HS494()
end
FX1=0
end

function HS492()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11204", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS493()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11204", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS494()
	 Main0()
end

function Main495()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS496()
end
if SN==2 then
	 HS497()
end
if SN==3 then
	 HS498()
end
FX1=0
end

function HS496()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12103", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS497()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12103", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12102", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS498()
	 Main0()
end

function Main499()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS500()
end
if SN==2 then
	 HS501()
end
if SN==3 then
	 HS502()
end
FX1=0
end

function HS500()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS501()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS502()
	 Main0()
end

function Main503()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS504()
end
if SN==2 then
	 HS505()
end
if SN==3 then
	 HS506()
end
FX1=0
end

function HS504()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12604", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS505()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12604", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS506()
	 Main0()
end

function Main507()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS508()
end
if SN==2 then
	 HS509()
end
if SN==3 then
	 HS510()
end
FX1=0
end

function HS508()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12702", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12704", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS509()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12702", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12704", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS510()
	 Main0()
end

function Main511()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS512()
end
if SN==2 then
	 HS513()
end
if SN==3 then
	 HS514()
end
FX1=0
end

function HS512()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS513()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS514()
	 Main0()
end

function Main515()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS516()
end
if SN==2 then
	 HS517()
end
if SN==3 then
	 HS518()
end
FX1=0
end

function HS516()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS517()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13103", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS518()
	 Main0()
end

function Main519()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS520()
end
if SN==2 then
	 HS521()
end
if SN==3 then
	 HS522()
end
FX1=0
end

function HS520()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS521()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS522()
	 Main0()
end

function Main523()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS524()
end
if SN==2 then
	 HS525()
end
if SN==3 then
	 HS526()
end
FX1=0
end

function HS524()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS525()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS526()
	 Main0()
end

function Main527()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS528()
end
if SN==2 then
	 HS529()
end
if SN==3 then
	 HS530()
end
FX1=0
end

function HS528()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13903", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS529()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13903", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS530()
	 Main0()
end

function Main531()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS532()
end
if SN==2 then
	 HS533()
end
if SN==3 then
	 HS534()
end
FX1=0
end

function HS532()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14002", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS533()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14002", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14003", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS534()
	 Main0()
end

function Main537()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS538()
end
if SN==2 then
	 HS539()
end
if SN==3 then
	 HS540()
end
FX1=0
end

function HS538()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14106", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS539()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14106", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS540()
	 Main0()
end

function Main541()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS542()
end
if SN==2 then
	 HS543()
end
if SN==3 then
	 HS544()
end
FX1=0
end

function HS542()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14405", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS543()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14405", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS544()
	 Main0()
end

function Main545()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS546()
end
if SN==2 then
	 HS547()
end
if SN==3 then
	 HS548()
end
FX1=0
end

function HS546()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14601", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS547()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14601", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14603", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS548()
	 Main0()
end

function Main549()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS550()
end
if SN==2 then
	 HS551()
end
if SN==3 then
	 HS552()
end
FX1=0
end

function HS550()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15002", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15005", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS551()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15002", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15005", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS552()
	 Main0()
end

function Main553()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS554()
end
if SN==2 then
	 HS555()
end
if SN==3 then
	 HS556()
end
FX1=0
end

function HS554()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15405", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS555()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15405", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS556()
	 Main0()
end

function Main557()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS558()
end
if SN==2 then
	 HS559()
end
if SN==3 then
	 HS560()
end
FX1=0
end

function HS558()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15603", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS559()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";15603", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";15604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS560()
	 Main0()
end

function Main561()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS562()
end
if SN==2 then
	 HS563()
end
if SN==3 then
	 HS564()
end
FX1=0
end

function HS562()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16901", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS563()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16901", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16904", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS564()
	 Main0()
end

function Main565()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS566()
end
if SN==2 then
	 HS567()
end
if SN==3 then
	 HS568()
end
FX1=0
end

function HS566()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17403", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17404", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS567()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17403", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17404", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS568()
	 Main0()
end

function Main570()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS571()
end
if SN==2 then
	 HS572()
end
if SN==3 then
	 HS573()
end
FX1=0
end

function HS571()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17801", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS572()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17801", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17802", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS573()
	 Main0()
end

function Main574()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS575()
end
if SN==2 then
	 HS576()
end
if SN==3 then
	 HS577()
end
FX1=0
end

function HS575()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS576()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS577()
	 Main0()
end

function Main578()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS579()
end
if SN==2 then
	 HS580()
end
if SN==3 then
	 HS581()
end
FX1=0
end

function HS579()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS580()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS581()
	 Main0()
end

function Main582()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS583()
end
if SN==2 then
	 HS584()
end
if SN==3 then
	 HS585()
end
FX1=0
end

function HS583()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16702", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16705", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS584()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16702", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16705", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS585()
	 Main0()
end

function Main586()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS587()
end
if SN==2 then
	 HS588()
end
if SN==3 then
	 HS589()
end
FX1=0
end

function HS587()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10703", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10706", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS588()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10703", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10706", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS589()
	 Main0()
end

function Main590()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS591()
end
if SN==2 then
	 HS592()
end
if SN==3 then
	 HS593()
end
FX1=0
end

function HS591()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS592()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS593()
	 Main0()
end

function Main594()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS595()
end
if SN==2 then
	 HS596()
end
if SN==3 then
	 HS597()
end
FX1=0
end

function HS595()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS596()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19403", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS597()
	 Main0()
end

function Main598()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS599()
end
if SN==2 then
	 HS600()
end
if SN==3 then
	 HS601()
end
FX1=0
end

function HS599()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14202", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS600()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14203", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS601()
	 Main0()
end

function Main835()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS836()
end
if SN==2 then
	 HS837()
end
if SN==3 then
	 HS838()
end
FX1=0
end

function HS836()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10702", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10708", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS837()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";10702", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";10708", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS838()
	 Main0()
end

function Main839()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS840()
end
if SN==2 then
	 HS841()
end
if SN==3 then
	 HS842()
end
FX1=0
end

function HS840()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16601", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS841()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16602", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";16602", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS842()
	 Main0()
end

function Main843()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS844()
end
if SN==2 then
	 HS845()
end
if SN==3 then
	 HS846()
end
FX1=0
end

function HS844()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS845()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11302", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS846()
	 Main0()
end

function Main847()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS848()
end
if SN==2 then
	 HS849()
end
if SN==3 then
	 HS850()
end
FX1=0
end

function HS848()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19501", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS849()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19501", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS850()
	 Main0()
end

function Main851()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS852()
end
if SN==2 then
	 HS853()
end
if SN==3 then
	 HS854()
end
FX1=0
end

function HS852()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS853()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13301", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13303", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS854()
	 Main0()
end

function Main855()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS856()
end
if SN==2 then
	 HS857()
end
if SN==3 then
	 HS858()
end
FX1=0
end

function HS856()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19601", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19604", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS857()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19604", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS858()
	 Main0()
end

function Main859()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS860()
end
if SN==2 then
	 HS861()
end
if SN==3 then
	 HS862()
end
FX1=0
end

function HS860()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS861()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11902", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11903", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS862()
	 Main0()
end

function Main863()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS864()
end
if SN==2 then
	 HS865()
end
if SN==3 then
	 HS866()
end
FX1=0
end

function HS864()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS865()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18401", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18402", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS866()
	 Main0()
end

function Main867()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS868()
end
if SN==2 then
	 HS869()
end
if SN==3 then
	 HS870()
end
FX1=0
end

function HS868()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12806", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12805", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS869()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12806", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";12805", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS870()
	 Main0()
end

function Main871()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS872()
end
if SN==2 then
	 HS873()
end
if SN==3 then
	 HS874()
end
FX1=0
end

function HS872()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51501", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS873()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";51501", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";51502", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS874()
	 Main0()
end

function Main875()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS876()
end
if SN==2 then
	 HS877()
end
if SN==3 then
	 HS878()
end
FX1=0
end

function HS876()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS877()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS878()
	 Main0()
end

function Main879()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS880()
end
if SN==2 then
	 HS881()
end
if SN==3 then
	 HS882()
end
FX1=0
end

function HS880()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13901", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS881()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13902", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS882()
	 Main0()
end

function Main883()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS884()
end
if SN==2 then
	 HS885()
end
if SN==3 then
	 HS886()
end
FX1=0
end

function HS884()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS885()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14101", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14104", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS886()
	 Main0()
end

function Main887()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS888()
end
if SN==2 then
	 HS889()
end
if SN==3 then
	 HS890()
end
FX1=0
end

function HS888()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18701", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS889()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18701", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";18702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS890()
	 Main0()
end

function Main892()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS893()
end
if SN==2 then
	 HS894()
end
if SN==3 then
	 HS895()
end
FX1=0
end

function HS893()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50801", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50803", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS894()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50801", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50803", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS895()
	 Main0()
end

function Main896()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS897()
end
if SN==2 then
	 HS898()
end
if SN==3 then
	 HS899()
end
FX1=0
end

function HS897()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14901", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS898()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";14901", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";14902", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS899()
	 Main0()
end

function Main901()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS902()
end
if SN==2 then
	 HS903()
end
if SN==3 then
	 HS904()
end
FX1=0
end

function HS902()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS903()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS904()
	 Main0()
end

function Main905()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS906()
end
if SN==2 then
	 HS907()
end
if SN==3 then
	 HS908()
end
FX1=0
end

function HS906()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS907()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";13201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";13202", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS908()
	 Main0()
end

function Main909()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS910()
end
if SN==2 then
	 HS911()
end
if SN==3 then
	 HS912()
end
FX1=0
end

function HS910()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS911()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS912()
	 Main0()
end


function Maind1()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS914()
end
if SN==2 then
	 HS915()
end
if SN==3 then
	 HS916()
end
FX1=0
end

function HS914()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS915()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19201", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";19203", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS916()
	 Main0()
end

function Maind2()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS917()
end
if SN==2 then
	 HS918()
end
if SN==3 then
	 HS919()
end
FX1=0
end

function HS917()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17001", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17004", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS918()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17001", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";17004", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS919()
	 Main0()
end

function Maind3()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS920()
end
if SN==2 then
	 HS921()
end
if SN==3 then
	 HS922()
end
FX1=0
end

function HS920()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11102", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11107", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS921()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11102", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";11107", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS922()
	 Main0()
end

function HS916()
	 Main0()
end

function Maind4()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "返回主页",
}, nil, "第一步在选择英雄界面开，首先穿原皮肤，第一步开启后再穿皮肤。第二步泉水开，不开没有特效")
if SN==1 then
	 HS923()
end
if SN==2 then
	 HS924()
end
if SN==3 then
	 HS925()
end
FX1=0
end

function HS923()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50701", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS924()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";50701", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll(";50702", gg.TYPE_WORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end

function HS925()
	 Main0()
end

function HS916()
	 Main0()
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




function HS799()
	 Main0()--返回主页
end

function Main473() Voice("正在开启自瞄功能")
SN = gg.choice({
"1.百里自瞄",
"2.钟馗自瞄暂时和谐",
"3.鲁班自瞄暂时和谐",
"4.墨子自瞄暂时和谐",
"5.返回主页",
}, nil, "因为自瞄腾讯查的严，没有防封容易封号，请开防封再玩")
if SN==1 then
	  z1()
end
if SN==2 then
	 z2()
end
if SN==3 then
	 z3()
end
if SN==4 then
     z4()
end
if SN==5 then
     z5()
end
FX1=0
end

function z1() Voice("正在开启百里自瞄，频率选择4.9最佳")
function SearchWrite(Search, Write, Type, Name)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    local data = {} 
    local base = Search[1][2]
        if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]     
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end            
                tmp = gg.getValues(tmp)       
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[1] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
               end
               end
        gg.loadResults(t)
        else  
        gg.clearResults()   
        gg.toast(Name.."失败❓")
        end
    else
    end
end
sleep=15
function readmem(addr,flag)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = flag
t = gg.getValues(t)
local result = t[1].value
return result
end
function freezexy(x, y)
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA8
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0xA0
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x54
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x4C
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA8
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = false
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0xA0
t[2].freeze = false
t[3] = {}
t[3].address = addr -0x54
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x4C
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end



function getsendaddr()
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="技能线"
local dataType = gg.TYPE_DWORD
local tb1 = {{25000,0x0},{0,0x4},{0,0x8},{0,0xC},{1092616192,-0x84},{1092616192,-0x80}}
local tb2 = {{-0x7C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
jg=gg.getResults(1)
gg.sendaddr=jg[1].address 
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
gg.clearResults()     
gg.setRanges(gg.REGION_C_ALLOC)
local Name="XY_ca"
local dataType = gg.TYPE_DWORD
local tb1 = {{156250000,0x0},{256,0x10},{12500,0x8}}
local tb2 = {{-0x28,4}} 
SearchWrite(tb1,tb2,dataType,Name)
if gg.getResultCount()==10 then resultca = gg.getResults(20) end
if gg.getResultCount()==20 then resultca = gg.getResults(20,10) end
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="id_A"
local dataType = gg.TYPE_DWORD
local tb1 = {{"200025~200043",0x0},{257,-0xE0},{1,-0xE8},{1065353216,0x14}}
local tb2 = {{-0x138}} 
SearchWrite(tb1,tb2,dataType,Name)
result=playertable
result = gg.getResults(20)
relen=gg.getResultCount()
enhp=result
if relen<=10 then
for i=1, 10 do
   id = readmem(result[i].address, gg.TYPE_DWORD)
    addr = result[i].address
    locate_addr[id] = addr
end
else
for i=1,10 do
   id = readmem(result[i+10].address, gg.TYPE_DWORD)
    addr = result[i+10].address
    locate_addr[id] = addr
    end
end
return locate_addr
end

function getlocate(baseaddr)
local result, id, x, y
local xytable = {}
for i, v in pairs(baseaddr) do
  t = {}
  t[1] = {}
  t[1].address = baseaddr[i] + 0x14
  t[1].flags = gg.TYPE_FLOAT
  t[2] = {}
  t[2].address = baseaddr[i] + 0x1C
  t[2].flags = gg.TYPE_FLOAT
  t = gg.getValues(t)
  x = t[1].value*1000
  y = t[2].value*1000
  xytable[i] = {}
  xytable[i][1] = x
  xytable[i][2] = y
  xytable[i][3] = os.clock()
end
return xytable
end

function getdistance(x1,y1,x2,y2)
return math.sqrt(math.pow(y2 - y1, 2) + math.pow(x2 - x1, 2))
end

function checkTarget(me,target,xytable,ld)
local distance = getdistance(xytable[me][1], xytable[me][2], xytable[target][1], xytable[target][2])
if distance <= ld  then
  return true
else
  return false
end
end

function preload(a,b,t)
local distance, usetime, speed, rundis, alldis, bili, xadd, yadd
if a[1] == b[1] and a[2] == b[2] then
  return a[1], a[2]
end
distance = getdistance(a[1], a[2], b[1], b[2])
usetime = b[3] - a[3]
speed = distance / usetime
rundis = speed * t
alldis = rundis + distance
bili = alldis / distance
xadd = (b[1] - a[1]) * bili
yadd = (b[2] - a[2]) * bili
return a[1] + xadd, a[2] + yadd
end

function getqt(a,b)
local c = math.sqrt(a * a + b * b)
return a / c, b / c
end

function getplayer()
local playertable = {}
local playerid, heroid
playertable=result
return playertable
end

function getbluegroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
     playgroup=readmem(v.address+0x38, gg.TYPE_DWORD) 
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD) 
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD) 
    if playgroup<0 then
    if heroid==196 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
        playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup >0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function getredgroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
    playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD)
    if playgroup>0 then
    if heroid==196 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup <0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function skslock(locate_addr, badgroup)
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
local me = gg.me
local xytable
local locked = false
local distance, needtime, prex, prey, ax, ay, fixgroup, v
xytable = getlocate(locate_addr)
fixgroup = gethptable(badgroup)
for i, val in pairs(fixgroup) do
  v = val.id

  if checkTarget(me, v, xytable, 26800) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / 60000
      prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + needtime)
      ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
      ax = ax*1
      ay = ay*1
      freezexy(ax, ay)
      locked = true
  end
    break
  end
end
if locked == false then
 unfreeze()
end
gg.hist = xytable
gg.sleep(sleep)
end

function init_hpaddr()
local hpaddr = {}
local id, addr
local result=enhp
if #result<=10 then
for i=1, 10 do
  id = resultca[i].value
  addr = resultca[i].address + 0xA98
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = resultca[i+10].value
  addr = resultca[i+10].address + 0xA98
  hpaddr[id] = addr
end
end
gg.hpaddr = hpaddr
return hpaddr
end

function gethptable(idlist)
local hptable = {}
local temp, id, hp
local newtable = {}
for i, v in pairs(idlist) do
  temp = {}
  temp.id = v
  temp.hp = readmem(gg.hpaddr[v], gg.TYPE_DWORD)
  if temp.hp ~= 0 then
    table.insert(hptable, temp)
  end
end
table.sort(hptable,hpsort)
return hptable
end
function hpsort(a, b) return a.hp <= b.hp end
if sleep==nil then
  sleep=4.9
end
function Main()
menu1 = gg.choice({
  "【开启自瞄】",
  "【开启自瞄】",
  "【调整频率】",
  "【退出脚本】",
}, nil,"爱罗提示您：\n当前频率→[[....".. sleep .."....]]")
if menu1 == 1 then selectgroupLF() end
if menu1 == 2 then selectgroupHF() end
if menu1 == 3 then sleep = gg.prompt({
  "输入你想要的预判间隔，4.9最佳：默认4.9 ms\n    更小的预判间隔能够更快的捕捉敌方走位的变化,\n    更小的预判间隔会导致配置低的手机发生卡顿"}, {4.9})[1]
if sleep > 0 then gg.toast("爱罗提示您"..sleep) else gg.toast("不能小于1")  end end

if menu1 == 4 then gg.clearList() os.exit() end
XGCK=-1
end


function selectgroupLF()
gg.clearList()
flag = false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getbluegroup()
gg.toast("爱罗牛逼")
 while true do
 skslock(locate_addr, badgroup)
end 
end


function selectgroupHF() 
gg.clearList()
flag=false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getredgroup()
gg.toast("爱罗牛逼")
 while true do
 skslock(locate_addr, badgroup)
end
end


while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end
end

function z2() Voice("正在开启钟馗自瞄，频率选择4.9最佳")
function SearchWrite(Search, Write, Type, Name)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    local data = {} 
    local base = Search[1][2]
        if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]     
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end            
                tmp = gg.getValues(tmp)       
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[1] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
               end
               end
        gg.loadResults(t)
        else  
        gg.clearResults()   
        gg.toast(Name.."开启失败")
        end
    else
    end
end
sleep=4.9
function readmem(addr,flag)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = flag
t = gg.getValues(t)
local result = t[1].value
return result
end
function freezexy(x, y)
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA0
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0x98
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x4C
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x44
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA0
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = true
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0x98
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x4C
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x44
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end



function getsendaddr()
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="技能线"
local dataType = gg.TYPE_DWORD
local tb1 = {{12000,0x0},{0,0x4},{0,0x8},{0,0xC},{1092616192,-0x84},{1092616192,-0x80}}
local tb2 = {{-0x7C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
jg=gg.getResults(1)
gg.sendaddr=jg[1].address 
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
gg.clearResults()     
gg.setRanges(gg.REGION_C_ALLOC)
local Name="XY_ca"
local dataType = gg.TYPE_DWORD
local tb1 = {{999999,0x0},{156250000,0x1B8},{12500,0x1C0}}
local tb2 = {{-0x20,4}} 
SearchWrite(tb1,tb2,dataType,Name)
if gg.getResultCount()==10 then resultca = gg.getResults(20) end
if gg.getResultCount()==20 then resultca = gg.getResults(20,10) end
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="id_A"
local dataType = gg.TYPE_DWORD
local tb1 = {{"200024~200046",0x0},{257,-0xE4},{1,-0xEC},{0,-0x100},{0,0x44},{0,0x48}}
local tb2 = {{-0x13C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
result=playertable
result = gg.getResults(20)
relen=gg.getResultCount()
enhp=result
if relen<=10 then
for i=1, 10 do
   id = readmem(result[i].address, gg.TYPE_DWORD)
    addr = result[i].address
    locate_addr[id] = addr
end
else
for i=1,10 do
   id = readmem(result[i+10].address, gg.TYPE_DWORD)
    addr = result[i+10].address
    locate_addr[id] = addr
    end
end
return locate_addr
end

function getlocate(baseaddr)
local result, id, x, y
local xytable = {}
for i, v in pairs(baseaddr) do
  t = {}
  t[1] = {}
  t[1].address = baseaddr[i] + 0x14
  t[1].flags = gg.TYPE_FLOAT
  t[2] = {}
  t[2].address = baseaddr[i] + 0x1C
  t[2].flags = gg.TYPE_FLOAT
  t = gg.getValues(t)
  x = t[1].value*1000
  y = t[2].value*1000
  xytable[i] = {}
  xytable[i][1] = x
  xytable[i][2] = y
  xytable[i][3] = os.clock()
end
return xytable
end

function getdistance(x1,y1,x2,y2)
return math.sqrt(math.pow(y2 - y1, 2) + math.pow(x2 - x1, 2))
end

function checkTarget(me,target,xytable,ld)
local distance = getdistance(xytable[me][1], xytable[me][2], xytable[target][1], xytable[target][2])
if distance <= ld  then
  return true
else
  return false
end
end

function preload(a,b,t)
local distance, usetime, speed, rundis, alldis, bili, xadd, yadd
if a[1] == b[1] and a[2] == b[2] then
  return a[1], a[2]
end
distance = getdistance(a[1], a[2], b[1], b[2])
usetime = b[3] - a[3]
speed = distance / usetime
rundis = speed * t
alldis = rundis + distance
bili = alldis / distance
xadd = (b[1] - a[1]) * bili
yadd = (b[2] - a[2]) * bili
return a[1] + xadd, a[2] + yadd
end

function getqt(a,b)
local c = math.sqrt(a * a + b * b)
return a / c, b / c
end

function getplayer()
local playertable = {}
local playerid, heroid
playertable=result
return playertable
end

function getbluegroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
     playgroup=readmem(v.address+0x38, gg.TYPE_DWORD) 
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD) 
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD) 
    if playgroup<0 then
    if heroid==175 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
        playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup >0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function getredgroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
    playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD)
    if playgroup>0 then
    if heroid==175 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup <0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function skslock(locate_addr, badgroup)
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
m()
end
local me = gg.me
local xytable
local locked = false
local distance, needtime, prex, prey, ax, ay, fixgroup, v
xytable = getlocate(locate_addr)
fixgroup = gethptable(badgroup)
for i, val in pairs(fixgroup) do
  v = val.id

  if checkTarget(me, v, xytable, 13000) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / 16000
      prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + needtime)
      ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
      ax = ax*1
      ay = ay*1
      freezexy(ax, ay)
      locked = true
  end
    break
  end
end
if locked == false then
 unfreeze()
end
gg.hist = xytable
gg.sleep(sleep)
end

function init_hpaddr()
local hpaddr = {}
local id, addr
local result=enhp
if #result<=10 then
for i=1, 10 do
  id = resultca[i].value
  addr = resultca[i].address + 0xC88
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = resultca[i+10].value
  addr = resultca[i+10].address + 0xC88
  hpaddr[id] = addr
end
end
gg.hpaddr = hpaddr
return hpaddr
end

function gethptable(idlist)
local hptable = {}
local temp, id, hp
local newtable = {}
for i, v in pairs(idlist) do
  temp = {}
  temp.id = v
  temp.hp = readmem(gg.hpaddr[v], gg.TYPE_DWORD)/8192
  if temp.hp ~= 0 then
    table.insert(hptable, temp)
  end
end
table.sort(hptable,hpsort)
return hptable
end
function hpsort(a, b) return a.hp <= b.hp end
if sleep==nil then
  sleep=1.1
end
function m()
menu1 = gg.choice({
  "【蓝方自瞄】",
  "【红方自瞄】",
  "【设置频率】",
  "【退出脚本】",  
}, nil,"钟馗爱罗提醒您→[[....".. sleep .."....]]")
if menu1 == 1 then selectgroupLF() end
if menu1 == 2 then selectgroupHF() end
if menu1 == 3 then sleep = gg.prompt({
  "输入你想要的预判间隔，4.9最佳：默认4.9 ms\n    更小的预判间隔能够更快的捕捉敌方走位的变化,\n    更小的预判间隔会导致配置低的手机发生卡顿"}, {4.9})[1]
if sleep > 0 then gg.toast("爱罗提醒您"..sleep) else gg.toast("不能小于1")  end end

if menu1 == 4 then gg.clearList() os.exit() end
if menu1==5 then yiyz_m() end 
XGCK=-1
end


function selectgroupLF()
gg.clearList()
flag = false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getbluegroup()
gg.toast("钟馗自瞄准备就绪")
 while true do
 skslock(locate_addr, badgroup)
end 
end


function selectgroupHF() 
gg.clearList()
flag=false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getredgroup()
gg.toast("钟馗自瞄准备就绪")
 while true do
 skslock(locate_addr, badgroup)
end
end


while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
m()
end
end
end


function z3() Voice("正在开启鲁班自瞄，频率选择4.9最佳")
function SearchWrite(Search, Write, Type, Name)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    local data = {} 
    local base = Search[1][2]
        if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]     
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end            
                tmp = gg.getValues(tmp)       
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[1] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
               end
               end
        gg.loadResults(t)
        else  
        gg.clearResults()   
        gg.toast(Name.."开启失败")
        end
    else
    end
end
sleep=4.9
function readmem(addr,flag)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = flag
t = gg.getValues(t)
local result = t[1].value
return result
end
function freezexy(x, y)
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA0
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0x98
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x4C
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x44
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA0
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = true
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0x98
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x4C
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x44
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end



function getsendaddr()
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="技能线"
local dataType = gg.TYPE_DWORD
local tb1 = {{200000,0x0},{0,0x4},{0,0x8},{0,0xC},{1092616192,-0x84},{1092616192,-0x80}}
local tb2 = {{-0x7C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
jg=gg.getResults(1)
gg.sendaddr=jg[1].address 
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
gg.clearResults()     
gg.setRanges(gg.REGION_C_ALLOC)
local Name="XY_ca"
local dataType = gg.TYPE_DWORD
local tb1 = {{999999,0x0},{156250000,0x1B8},{12500,0x1C0}}
local tb2 = {{-0x20,4}} 
SearchWrite(tb1,tb2,dataType,Name)
if gg.getResultCount()==10 then resultca = gg.getResults(20) end
if gg.getResultCount()==20 then resultca = gg.getResults(20,10) end
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="id_A"
local dataType = gg.TYPE_DWORD
local tb1 = {{"200024~200046",0x0},{257,-0xE4},{1,-0xEC},{0,-0x100},{0,0x44},{0,0x48}}
local tb2 = {{-0x13C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
result=playertable
result = gg.getResults(20)
relen=gg.getResultCount()
enhp=result
if relen<=10 then
for i=1, 10 do
   id = readmem(result[i].address, gg.TYPE_DWORD)
    addr = result[i].address
    locate_addr[id] = addr
end
else
for i=1,10 do
   id = readmem(result[i+10].address, gg.TYPE_DWORD)
    addr = result[i+10].address
    locate_addr[id] = addr
    end
end
return locate_addr
end

function getlocate(baseaddr)
local result, id, x, y
local xytable = {}
for i, v in pairs(baseaddr) do
  t = {}
  t[1] = {}
  t[1].address = baseaddr[i] + 0x14
  t[1].flags = gg.TYPE_FLOAT
  t[2] = {}
  t[2].address = baseaddr[i] + 0x1C
  t[2].flags = gg.TYPE_FLOAT
  t = gg.getValues(t)
  x = t[1].value*1000
  y = t[2].value*1000
  xytable[i] = {}
  xytable[i][1] = x
  xytable[i][2] = y
  xytable[i][3] = os.clock()
end
return xytable
end

function getdistance(x1,y1,x2,y2)
return math.sqrt(math.pow(y2 - y1, 2) + math.pow(x2 - x1, 2))
end

function checkTarget(me,target,xytable,ld)
local distance = getdistance(xytable[me][1], xytable[me][2], xytable[target][1], xytable[target][2])
if distance <= ld  then
  return true
else
  return false
end
end

function preload(a,b,t)
local distance, usetime, speed, rundis, alldis, bili, xadd, yadd
if a[1] == b[1] and a[2] == b[2] then
  return a[1], a[2]
end
distance = getdistance(a[1], a[2], b[1], b[2])
usetime = b[3] - a[3]
speed = distance / usetime
rundis = speed * t
alldis = rundis + distance
bili = alldis / distance
xadd = (b[1] - a[1]) * bili
yadd = (b[2] - a[2]) * bili
return a[1] + xadd, a[2] + yadd
end

function getqt(a,b)
local c = math.sqrt(a * a + b * b)
return a / c, b / c
end

function getplayer()
local playertable = {}
local playerid, heroid
playertable=result
return playertable
end

function getbluegroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
     playgroup=readmem(v.address+0x38, gg.TYPE_DWORD) 
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD) 
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD) 
    if playgroup<0 then
    if heroid==112 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
        playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup >0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function getredgroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
    playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD)
    if playgroup>0 then
    if heroid==112 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup <0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function skslock(locate_addr, badgroup)
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
m()
end
local me = gg.me
local xytable
local locked = false
local distance, needtime, prex, prey, ax, ay, fixgroup, v
xytable = getlocate(locate_addr)
fixgroup = gethptable(badgroup)
for i, val in pairs(fixgroup) do
  v = val.id

  if checkTarget(me, v, xytable, 210000) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / 64000
      prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + needtime)
      ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
      ax = ax*1
      ay = ay*1
      freezexy(ax, ay)
      locked = true
  end
    break
  end
end
if locked == false then
 unfreeze()
end
gg.hist = xytable
gg.sleep(sleep)
end

function init_hpaddr()
local hpaddr = {}
local id, addr
local result=enhp
if #result<=10 then
for i=1, 10 do
  id = resultca[i].value
  addr = resultca[i].address + 0xC88
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = resultca[i+10].value
  addr = resultca[i+10].address + 0xC88
  hpaddr[id] = addr
end
end
gg.hpaddr = hpaddr
return hpaddr
end

function gethptable(idlist)
local hptable = {}
local temp, id, hp
local newtable = {}
for i, v in pairs(idlist) do
  temp = {}
  temp.id = v
  temp.hp = readmem(gg.hpaddr[v], gg.TYPE_DWORD)/8192
  if temp.hp ~= 0 then
    table.insert(hptable, temp)
  end
end
table.sort(hptable,hpsort)
return hptable
end
function hpsort(a, b) return a.hp <= b.hp end
if sleep==nil then
  sleep=1.1
end
function m()
menu1 = gg.choice({
  "【蓝方自瞄】",
  "【红方自瞄】",
  "【设置频率】",
  "【退出脚本】",
}, nil,"鲁班爱罗提醒您→[[....".. sleep .."....]]")
if menu1 == 1 then selectgroupLF() end
if menu1 == 2 then selectgroupHF() end
if menu1 == 3 then sleep = gg.prompt({
  "输入你想要的预判间隔，4.9最佳：默认4.9 ms\n    更小的预判间隔能够更快的捕捉敌方走位的变化,\n    更小的预判间隔会导致配置低的手机发生卡顿"}, {4.9})[1]
if sleep > 0 then gg.toast("爱罗提醒您"..sleep) else gg.toast("不能小于1")  end end

if menu1 == 4 then gg.clearList() os.exit() end
if menu1==5 then yiyz_m() end 
XGCK=-1
end


function selectgroupLF()
gg.clearList()
flag = false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getbluegroup()
gg.toast("鲁班自瞄准备就绪")
 while true do
 skslock(locate_addr, badgroup)
end 
end


function selectgroupHF() 
gg.clearList()
flag=false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getredgroup()
gg.toast("鲁班自瞄准备就绪")
 while true do
 skslock(locate_addr, badgroup)
end
end


while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
m()
end
end
end

function z4() Voice("正在开启墨子自瞄，频率选择4.9最佳")
function SearchWrite(Search, Write, Type, Name)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    local data = {} 
    local base = Search[1][2]
        if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true
        end        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base
            local num = Search[k][1]     
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {}
                tmp[#tmp].address = v.address + offset
                tmp[#tmp].flags = v.flags
            end            
                tmp = gg.getValues(tmp)       
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false
                end
            end
        end
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[1] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
               end
               end
        gg.loadResults(t)
        else  
        gg.clearResults()   
        gg.toast(Name.."爱罗牛逼")
        end
    else
    end
end
sleep=4.9
function readmem(addr,flag)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = flag
t = gg.getValues(t)
local result = t[1].value
return result
end
function freezexy(x, y)
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA0
t[1].flags = gg.TYPE_FLOAT
t[1].value = x
t[1].freeze = true
t[2] = {}
t[2].address = addr -0x98
t[2].flags = gg.TYPE_FLOAT
t[2].value = y
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x4C
t[3].flags = gg.TYPE_FLOAT
t[3].value = x
t[3].freeze = true
t[4] = {}
t[4].address = addr -0x44
t[4].flags = gg.TYPE_FLOAT
t[4].value = y
t[4].freeze = true
gg.addListItems(t)
end
function unfreeze()
local t = {}
local addr = gg.sendaddr
t[1] = {}
t[1].address = addr -0xA0
t[1].flags = gg.TYPE_FLOAT
t[1].freeze = true
t[2] = {}
t[2].flags = gg.TYPE_FLOAT
t[2].address = addr -0x98
t[2].freeze = true
t[3] = {}
t[3].address = addr -0x4C
t[3].flags = gg.TYPE_FLOAT
t[3].freeze = false
t[4] = {}
t[4].address = addr -0x44
t[4].flags = gg.TYPE_FLOAT
t[4].freeze = false
gg.addListItems(t)
end



function getsendaddr()
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="技能线"
local dataType = gg.TYPE_DWORD
local tb1 = {{12000,0x0},{0,0x4},{0,0x8},{0,0xC},{1092616192,-0x84},{1092616192,-0x80}}
local tb2 = {{-0x7C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
jg=gg.getResults(1)
gg.sendaddr=jg[1].address 
return gg.sendaddr
end

function init_locate()
local locate_addr = {}
local id, addr
gg.clearResults()     
gg.setRanges(gg.REGION_C_ALLOC)
local Name="XY_ca"
local dataType = gg.TYPE_DWORD
local tb1 = {{999999,0x0},{156250000,0x1B8},{12500,0x1C0}}
local tb2 = {{-0x20,4}} 
SearchWrite(tb1,tb2,dataType,Name)
if gg.getResultCount()==10 then resultca = gg.getResults(20) end
if gg.getResultCount()==20 then resultca = gg.getResults(20,10) end
gg.clearResults()     
gg.setRanges(gg.REGION_ANONYMOUS)
local Name="id_A"
local dataType = gg.TYPE_DWORD
local tb1 = {{"200024~200046",0x0},{257,-0xE4},{1,-0xEC},{0,-0x100},{0,0x44},{0,0x48}}
local tb2 = {{-0x13C,4}} 
SearchWrite(tb1,tb2,dataType,Name)
result=playertable
result = gg.getResults(20)
relen=gg.getResultCount()
enhp=result
if relen<=10 then
for i=1, 10 do
   id = readmem(result[i].address, gg.TYPE_DWORD)
    addr = result[i].address
    locate_addr[id] = addr
end
else
for i=1,10 do
   id = readmem(result[i+10].address, gg.TYPE_DWORD)
    addr = result[i+10].address
    locate_addr[id] = addr
    end
end
return locate_addr
end

function getlocate(baseaddr)
local result, id, x, y
local xytable = {}
for i, v in pairs(baseaddr) do
  t = {}
  t[1] = {}
  t[1].address = baseaddr[i] + 0x14
  t[1].flags = gg.TYPE_FLOAT
  t[2] = {}
  t[2].address = baseaddr[i] + 0x1C
  t[2].flags = gg.TYPE_FLOAT
  t = gg.getValues(t)
  x = t[1].value*1000
  y = t[2].value*1000
  xytable[i] = {}
  xytable[i][1] = x
  xytable[i][2] = y
  xytable[i][3] = os.clock()
end
return xytable
end

function getdistance(x1,y1,x2,y2)
return math.sqrt(math.pow(y2 - y1, 2) + math.pow(x2 - x1, 2))
end

function checkTarget(me,target,xytable,ld)
local distance = getdistance(xytable[me][1], xytable[me][2], xytable[target][1], xytable[target][2])
if distance <= ld  then
  return true
else
  return false
end
end

function preload(a,b,t)
local distance, usetime, speed, rundis, alldis, bili, xadd, yadd
if a[1] == b[1] and a[2] == b[2] then
  return a[1], a[2]
end
distance = getdistance(a[1], a[2], b[1], b[2])
usetime = b[3] - a[3]
speed = distance / usetime
rundis = speed * t
alldis = rundis + distance
bili = alldis / distance
xadd = (b[1] - a[1]) * bili
yadd = (b[2] - a[2]) * bili
return a[1] + xadd, a[2] + yadd
end

function getqt(a,b)
local c = math.sqrt(a * a + b * b)
return a / c, b / c
end

function getplayer()
local playertable = {}
local playerid, heroid
playertable=result
return playertable
end

function getbluegroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
     playgroup=readmem(v.address+0x38, gg.TYPE_DWORD) 
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD) 
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD) 
    if playgroup<0 then
    if heroid==108 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
        playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup >0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function getredgroup()
local playinfo=getplayer()
local badflag = 0
local playerid,heroid,playgroup
local badgroup = {}
    for k,v in pairs(playinfo) do
    playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
    playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
    heroid=readmem(v.address+0x5C, gg.TYPE_DWORD)
    if playgroup>0 then
    if heroid==108 then
    gg.me=playerid
    flag = true
    end
    end
    end
    if flag == true then 
    for k,v in pairs(playinfo) do
      playgroup=readmem(v.address+0x38, gg.TYPE_DWORD)
       playerid=readmem(v.address+0x0, gg.TYPE_DWORD)
       if playgroup <0 then
       table.insert(badgroup, playerid)
       end
    end
end
return badgroup
end

function skslock(locate_addr, badgroup)
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
yiyz_yiyz_yiyz_Main()
end
local me = gg.me
local xytable
local locked = false
local distance, needtime, prex, prey, ax, ay, fixgroup, v
xytable = getlocate(locate_addr)
fixgroup = gethptable(badgroup)
for i, val in pairs(fixgroup) do
  v = val.id

  if checkTarget(me, v, xytable, 13500) == true then
    if xytable[me] == nil or xytable[v] == nil then
    end
  if gg.hist ~= nil and gg.hist[v] ~= nil and gg.hist[me] ~= nil then
      distance = getdistance(xytable[me][1], xytable[me][2], xytable[v][1], xytable[v][2])
      needtime = distance / 64000
      prex, prey = preload(gg.hist[v], xytable[v], xytable[v][3] - gg.hist[v][3] + needtime)
      ax, ay = getqt(prex - xytable[me][1], prey - xytable[me][2])
      ax = ax*1
      ay = ay*1
      freezexy(ax, ay)
      locked = true
  end
    break
  end
end
if locked == false then
 unfreeze()
end
gg.hist = xytable
gg.sleep(sleep)
end

function init_hpaddr()
local hpaddr = {}
local id, addr
local result=enhp
if #result<=10 then
for i=1, 10 do
  id = resultca[i].value
  addr = resultca[i].address + 0xC88
  hpaddr[id] = addr
end
else
for i=1, 10 do
  id = resultca[i+10].value
  addr = resultca[i+10].address + 0xC88
  hpaddr[id] = addr
end
end
gg.hpaddr = hpaddr
return hpaddr
end

function gethptable(idlist)
local hptable = {}
local temp, id, hp
local newtable = {}
for i, v in pairs(idlist) do
  temp = {}
  temp.id = v
  temp.hp = readmem(gg.hpaddr[v], gg.TYPE_DWORD)/8192
  if temp.hp ~= 0 then
    table.insert(hptable, temp)
  end
end
table.sort(hptable,hpsort)
return hptable
end
function hpsort(a, b) return a.hp <= b.hp end
if sleep==nil then
  sleep=1.1
end
function m()
menu1 = gg.choice({
  "【蓝方自瞄】",
  "【红方自瞄】",
  "【设置频率】",
  "【退出脚本】",
}, nil,"鲁班爱罗提醒您→[[....".. sleep .."....]]")
if menu1 == 1 then selectgroupLF() end
if menu1 == 2 then selectgroupHF() end
if menu1 == 3 then sleep = gg.prompt({
  "输入你想要的预判间隔：4.9最佳：默认4.9 ms\n    更小的预判间隔能够更快的捕捉敌方走位的变化,\n    更小的预判间隔会导致配置低的手机发生卡顿"}, {4.9})[1]
if sleep > 0 then gg.toast("爱罗提醒您:"..sleep) else gg.toast("不能小于1")  end end

if menu1 == 4 then gg.clearList() os.exit() end
if menu1==5 then m() end 
XGCK=-1
end


function selectgroupLF()
gg.clearList()
flag = false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getbluegroup()
gg.toast("墨子自瞄准备就绪")
 while true do
 skslock(locate_addr, badgroup)
end 
end


function selectgroupHF() 
gg.clearList()
flag=false
enhp={}
gg.hist = {}
locate_addr = init_locate()
init_hpaddr()
local badgroup
getlocate(locate_addr)
getsendaddr()
badgroup = getredgroup()
gg.toast("墨子自瞄准备就绪")
 while true do
 skslock(locate_addr, badgroup)
end
end


while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
m()
end
end
end

function z5()
	 Main0()
end
--———————————————
function BT()
SN = gg.choice({
"1.【盾山霸体】",
"2.【返回主页】",
}, nil, "交流群:1073673638")
if SN== 1  then
  b99()
  end
if HS==2 then
	 BA3()
end

FX1=0
end



function b99()
	gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4000;3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(9999)
	 gg.editAll("4", gg.TYPE_DWORD)
	 gg.toast("爱罗提醒您:开启成功")
	 gg.clearResults()
end




function BA3()
	 Main0()
end

function HS49()
	 Voice("正在退出脚本")
	 os.exit()--退出脚本
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