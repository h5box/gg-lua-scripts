gg.alert("ℳ๓神明°º᭄制作")
local yy=gg.makeRequest("https://v1.hitokoto.cn/?c=c&encode=text").content

zbwz={
  [ 1] = '铁剑',
  [ 2] = '匕首',
  [ 3] = '搏击拳套',
  [ 4] = '吸血之镰',
  [ 5] = '雷鸣刃',
  [ 6] = '冲击拳套',
  [ 7] = '日冕',
  [ 8] = '狂暴双刃',
  [ 9] = '陨星',
  [ 10] = '破魔刀',
  [ 11] = '末世',
  [ 12] = '名刀',
  [ 13] = '冰霜长矛',
  [ 14] = '速击之枪',
  [ 15] = '碎星锤',
  [ 16] = '泣血之刃',
  [ 18] = '无尽战刃',
  [ 20] = '宗师之力',
  [ 22] = '闪电匕首',
  [ 24] = '影刃',
  [ 26] = '暗影战斧',
  [ 28] = '破军',
  [ 30] = '逐日之弓',
  [ 32] = '金色圣剑',
  [ 34] = '穿云弓',
  [ 36] = '破晓',
  [ 38] = '咒术典籍',
  [ 40] = '蓝宝石',
  [ 42] = '炼金护符',
  [ 44] = '圣者法典',
  [ 46] = '元素丈',
  [ 48] = '大棒',
  [ 50] = '血族之书',
  [ 52] = '光辉之剑',
  [ 54] = '魅影面罩',
  [ 56] = '净化水晶',
  [ 58] = '炽热支配者',
  [ 60] = '圣杯',
  [ 62] = '金色圣剑',
  [ 64] = '破损圣杯',
  [ 66] = '大法穿',
  [ 68] = '帽子',
  [ 70] = '回响之杖',
  [ 72] = '冰霜法杖',
  [ 74] = '痛苦面具',
  [ 76] = '巫术法杖',
  [ 78] = '时之预言',
  [ 80] = '贤者之书',
  [ 82] = '辉月',
  [ 84] = '噬神之书',
  [ 86] = '红玛瑙',
  [ 88] = '布甲',
  [ 90] = '抗魔披风',
  [ 92] = '提神水晶',
  [ 94] = '力量腰带',
  [ 96] = '熔炼之心',
  [ 98] = '神隐斗篷',
  [100] = '雪山元盾',
  [102] = '守护者之凯',
  [104] = '反甲',
  [106] = '血魔之怒',
  [108] = '红莲斗篷',
  [110] = '霸者重装',
  [112] = '不祥真兆',
  [114] = '不死鸟之眼',
  [116] = '魔女斗篷',
  [118] = '冰心',
  [120] = '爆裂甲',
  [122] = '影刃鞋',
  [124] = '抵抗鞋',
  [126] = '冷却鞋',
  [128] = '法穿鞋',
  [130] = '攻速鞋',
  [132] = '疾步鞋',
  [136] = '追击刀锋',
  [138] = '符文大剑',
  [140] = '小打野刀',
  [142] = '巡受厉斧',
  [144] = '巨人之握',
  [146] = '游击弯刀',
  [148] = '贪婪之握',
  [152] = '学识宝石',
  [154] = '风铭指环',
  [156] = '极影',
  [158] = '风之轻语',
  [160] = '风灵文章',
  [162] = '鼓舞之盾',
  [164] = '星之配饰',
  [166] = '救赎之翼',
  [168] = '奔狼文章',
  [170] = '近卫荣耀',
  [196] = '贤者之书',
}
zbdm={
  [ 1] = '111',
  [ 2] = '1112',
  [ 3] = '1113',
  [ 4] = '1114',
  [ 5] = '1116',
  [ 6] = '1117',
  [ 7] = '1122',
  [ 8] = '1123',
  [ 9] = '1124',
  [ 10] = '1125',
  [ 11] = '1126',
  [ 12] = '1127',
  [ 13] = '1128',
  [ 14] = '1129',
  [ 15] = '1131',
  [ 16] = '1132',
  [ 18] = '1133',
  [ 20] = '1134',
  [ 22] = '1135',
  [ 24] = '1136',
  [ 26] = '1137',
  [ 28] = '1138',
  [ 30] = '1141',
  [ 32] = '1142',
  [ 34] = '1154',
  [ 36] = '1155',
  [ 38] = '1211',
  [ 40] = '1212',
  [ 42] = '1213',
  [ 44] = '1214',
  [ 46] = '1216',
  [ 48] = '1221',
  [ 50] = '1222',
  [ 52] = '1223',
  [ 54] = '1224',
  [ 56] = '1225',
  [ 58] = '1227',
  [ 60] = '1226',
  [ 62] = '1228',
  [ 64] = '1229',
  [ 66] = '1231',
  [ 68] = '1232',
  [ 70] = '1233',
  [ 72] = '1234',
  [ 74] = '1235',
  [ 76] = '1236',
  [ 78] = '1237',
  [ 80] = '1238',
  [ 82] = '1239',
  [ 84] = '1240',
  [ 86] = '1311',
  [ 88] = '1312',
  [ 90] = '1313',
  [ 92] = '1314',
  [ 94] = '1321',
  [ 96] = '1322',
  [ 98] = '1323',
  [100] = '1324',
  [102] = '1325',
  [104] = '1327',
  [106] = '1328',
  [108] = '1331',
  [110] = '1332',
  [112] = '1333',
  [114] = '1334',
  [116] = '1335',
  [118] = '1336',
  [120] = '1338',
  [122] = '1411',
  [124] = '1422',
  [126] = '1423',
  [128] = '1424',
  [130] = '1425',
  [132] = '1426',
  [136] = '1523',
  [138] = '1531',
  [140] = '1511',
  [142] = '1522',
  [144] = '1532',
  [146] = '1521',
  [148] = '1533',
  [152] = '1701',
  [154] = '1711',
  [156] = '1721',
  [158] = '1712',
  [160] = '1713',
  [162] = '1714',
  [164] = '1715',
  [166] = '1722',
  [168] = '1723',
  [170] = '1733',
  [196] = '2001',
}
function sbyx()
  local a=gg.choice({
    "过资源检测",
    "英雄专区(选英雄界面，改完刷新一下)",
    "皮肤专区(选英雄界面，改完刷新一下)*",
    "技能专区(选英雄界面，改完刷新一下)",
    "装备专区(局内改)",
    "其他",
    "模型修改(注意，必须要玩李信才行局内改)*",
    "水晶爆炸",
    "元歌傀儡七十二变*",
    "庄周被动修改(选英雄开)*",
    "英雄代码获取",
    "查看教程",
    "加入群聊",
    "更新日志",
    "退出脚本"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then zyjc()
   elseif a==2 then a1()
   elseif a==3 then a2()
   elseif a==4 then a3()
   elseif a==5 then a5()
   elseif a==6 then a6()
   elseif a==7 then a7()
   elseif a==8 then bz()
   elseif a==9 then a8()
   elseif a==10 then zz()
   elseif a==11 then dsb()
   elseif a==12 then
    gg.alert("https://b23.tv/UhJfbEY?share_medium=android&share_source=qq&bbid=XX3A4A43D30516104A920E49F7F48C7F7AA9C&ts=1680620317555")
   elseif a==13 then
    gg.alert("827193824")
   elseif a==14 then
    gg.alert(table.concat(gxrz,'\n'))
   elseif a==15 then
    os.exit(print("尘"))
  end
  sb = -1
end

function zyjc()
end

function a1()
  local a=gg.choice({
    "返回上一页",
    "自定义英雄技能(选择英雄界面开)",
    "元歌技能修改(选择英雄界面开)",
    "回城改任意技能(选择英雄界面开)"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then b1()
   elseif a==3 then yuang()
   elseif a==4 then hc()
  end
  sb = -1
end

function b1()
  local z=gg.prompt({"请输入当前英雄代码","请选择当前英雄技能\n一技能选择1\n二技能选择2\n自行调节[1;4]","请输入要修改的英雄代码","请选择要修改的英雄技能\n一技能选择1\n二技能选择2\n自行调节[1;4]"},{nil},{"number","number","number","number"})
  if not z then
    gg.toast("开启失败，原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber(z[1]..z[2].."0", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(z[1]..z[2].."0", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(500)
    gg.editAll(z[3]..z[4].."0",gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
end

function yuang()
  local yg =gg.multiChoice({
    "返回主页",
    "元歌1技能无冷却(选择英雄界面开)",
    "傀儡平A改马超戳枪(配合无限戳使用)",
    "闪现改典韦大招",
    "典韦大招无冷却",
    "回城改澜二技能",
    "澜二技能无冷却",
    "傀儡三技能改震天一怒",
    "震天一怒无冷却",
    "傀儡四技能改关羽(冲锋状态)三技能",
    "关羽(冲锋状态)三技能无冷却",
    "本体四技能改守约二技能",
    "守约二技能无冷却"
  },nil,"尘\n每日一言\n"..yy)
  if not yg then
   elseif yg[1] == true then sbyx()
   elseif yg[2] == true then yg1()
   elseif yg[3] == true then yg2()
   elseif yg[4] == true then yg3()
   elseif yg[5] == true then yg4()
   elseif yg[6] == true then yg5()
   elseif yg[7] == true then yg6()
   elseif yg[8] == true then yg7()
   elseif yg[9] == true then yg8()
   elseif yg[10] == true then yg9()
   elseif yg[11] == true then yg10()
   elseif yg[12] == true then yg11()
   elseif yg[13] == true then yg12()
  end
  sb = -1
end

function yg1()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("12510;20000;100::317", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("20000;100", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(500)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("元歌一技能无冷却开启成功")
  gg.clearResults()
end

function yg2()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("22500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("22500", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("51806",gg.TYPE_DWORD)
  gg.toast("傀儡平A改马超戳枪开启成功")
  gg.clearResults()
end

function yg3()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("80115", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("80115", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("12930",gg.TYPE_DWORD)
  gg.toast("闪现改典韦大招开启成功")
  gg.clearResults()
end

function yg4()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("12930;30000;130", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("30000;130", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("典韦大招无冷却开启成功")
  gg.clearResults()
end

function yg5()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("90005", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("90005", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(200)
  gg.editAll("52820",gg.TYPE_DWORD)
  gg.toast("回城改澜二技能开启成功")
  gg.clearResults()
end

function yg6()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("52820;8000;30", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("8000;30", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("澜二技能无冷却开启成功")
  gg.clearResults()
end

function yg7()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("22530", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("22530", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("25303",gg.TYPE_DWORD)
  gg.toast("傀儡三技能改BOOS技能震天一怒开启成功")
  gg.clearResults()
end

function yg8()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("25303;18000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("18000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("BOOS技能震天一怒无冷却开启成功")
  gg.clearResults()
end

function yg9()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("22540", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("22540", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("24030",gg.TYPE_DWORD)
  gg.toast("傀儡四技能改关羽冲锋状态三技能开启成功")
  gg.clearResults()
end

function yg10()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("24030;70000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("70000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("关羽三技能冲锋状态无冷却开启成功")
  gg.clearResults()
end

function yg11()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("12540", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("12540", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("19620",gg.TYPE_DWORD)
  gg.toast("本体四技能改守约二技能开启成功")
  gg.clearResults()
end

function yg12()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("19620;1500;60", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1500;60", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("守约二技能无冷却开启成功")
  gg.clearResults()
end

function hc()
  local a=gg.prompt({"请输入你要修改的英雄代码",'请选择第几个技能\n自行调节[1;4]'},{nil},{"number","number"})
  if not a then gg.toast("取消选择") else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("90005", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("90005", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(200)
    gg.editAll(a[1].."0"..a[2],gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
end

function a2()
  local a=gg.choice({
    "返回上一页",
    "初始化(先初始化再选择英雄)",
    "修改皮肤(一局一改)",
    "恢复修改"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then b2()
   elseif a==3 then wcnmlgb()
   elseif a==4 then wcnmlgb1()
  end
  sb = -1
end

function b2()
  local pf=gg.prompt({"请输入要修改皮肤的英雄代码"},{nil},{"number"})
  if not pf then
    gg.toast("开启失败，原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber(";"..pf[1].."00", gg.TYPE_WORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(";"..pf[1].."00", gg.TYPE_WORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(50)
    gg.editAll(";"..pf[1].."01",gg.TYPE_WORD)
    gg.sleep(100)
    gg.editAll(";"..pf[1].."00",gg.TYPE_WORD)
    gg.toast("初始化成功")
    gg.clearResults()
  end
end

function wcnmlgb()
  local pf=gg.prompt({"请输入当前英雄代码","请输入要修改第几个皮肤"},{nil},{"number","number"})
  if not pf then
    gg.toast("开启失败，原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber(";"..pf[1].."00", gg.TYPE_WORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(";"..pf[1].."00", gg.TYPE_WORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(500)
    gg.editAll(";"..pf[1].."0"..pf[2],gg.TYPE_WORD)
    gg.toast("皮肤修改成功")
    gg.clearResults()
  end
end

function wcnmlgb1()
  local pf=gg.prompt({"请输入当前英雄代码","请输入要修改第几个皮肤"},{nil},{"number","number"})
  if not pf then
    gg.toast("开启失败，原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber(";"..pf[1].."0"..pf[2], gg.TYPE_WORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(";"..pf[1].."0"..pf[2], gg.TYPE_WORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(500)
    gg.editAll(";"..pf[1].."00",gg.TYPE_WORD)
    gg.toast("恢复修改成功")
    gg.clearResults()
  end
end

function a3()
  local a=gg.choice({
    "返回上一页",
    "自定义技能无冷却，蓝耗",
    "技能有小数点的用这个"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then b3()
   elseif a==3 then sby()
  end
  sb = -1
end

function b3()
  local z=gg.prompt({"请输入当前英雄代码","请输入该技能冷却","请输入该技能蓝耗","选择英雄技能[0;4]"},{nil},{"number","number","number","number"})
  if not z then
    gg.toast("开启失败，原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber(z[1]..z[4].."0;"..z[2].."000;"..z[3], gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(z[2].."000;"..z[3], gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(50)
    gg.editAll("0",gg.TYPE_DWORD)
    gg.toast("无冷却开启成功")
    gg.clearResults()
  end
end

function sby()
  local z=gg.prompt({"请输入当前英雄代码","请输入该技能冷却","请输入该技能蓝耗","选择英雄技能[0;4]"},{nil},{"number","number","number","number"})
  if not z then
    gg.toast("开启失败，原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber(z[1]..z[4].."0;"..z[2].."00;"..z[3].."::400", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(z[2].."00;"..z[3], gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(50)
    gg.editAll("0",gg.TYPE_DWORD)
    gg.toast("无冷却开启成功")
    gg.clearResults()
  end
end

function a5()--装备
  local a=gg.choice({
    "返回上一页",
    "自定义破军属性*",
    "破军修改恢复*",
    "尝试自定义任何装备属性(重写，引用陌路脚本)"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then zba()
   elseif a==3 then hh1()
   elseif a==4 then ZUI()
  end
  sb = -1
end

function zba()
  local a=gg.prompt({"破军默认价格，需要自己输入改多少，但是别太高，可以是负值\n购买价格","出售价格","攻击","攻速\n自行调节[0;1000]","暴击\n自行调节[0;1000]","吸血\n往上滑","法强","冷却\n自行调节[0;500]","最大法力","每5秒回蓝","物理防御","法术防御","最大生命","每5秒回血","移速\n自行调节[0;500]"},{"2950","1770","180","0","0","0","0","0","0","0","0","0","0","0","0"},{"number","number","number","number","number","number","number","number","number","number","number","number","number","number","number"})
  if not a then gg.toast("取消选择")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("2;1138;8000;3::33",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("8000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local b=gg.getResultCount()
    if b==0 or b>500 then
      gg.toast("开启失败原因: 没有找到值，或者值大于500")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        gg.setValues({[jg]={address=v.address+44,flags=4,value=a[1]}})
        gg.setValues({[jg]={address=v.address+52,flags=4,value=a[2]}})
        gg.setValues({[jg]={address=v.address+84,flags=4,value=a[3]}})
        gg.setValues({[jg]={address=v.address+88,flags=4,value=a[4].."00"}})--
        gg.setValues({[jg]={address=v.address+92,flags=4,value=a[5].."00"}})--
        gg.setValues({[jg]={address=v.address+96,flags=4,value=a[6]}})
        gg.setValues({[jg]={address=v.address+100,flags=4,value=a[7]}})
        gg.setValues({[jg]={address=v.address+104,flags=4,value=a[8].."00"}})--
        gg.setValues({[jg]={address=v.address+108,flags=4,value=a[9]}})
        gg.setValues({[jg]={address=v.address+112,flags=4,value=a[10]}})
        gg.setValues({[jg]={address=v.address+116,flags=4,value=a[11]}})
        gg.setValues({[jg]={address=v.address+120,flags=4,value=a[12]}})
        gg.setValues({[jg]={address=v.address+124,flags=4,value=a[13]}})
        gg.setValues({[jg]={address=v.address+128,flags=4,value=a[14]}})
        gg.setValues({[jg]={address=v.address+132,flags=4,value=a[15].."00"}})
        gg.toast("修改成功，共修改"..b.."个值")
        gg.clearResults()
      end
    end
  end
end

function hh1()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("2;1138;8000;3::33",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("8000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>500 then
    gg.toast("开启失败原因: 没有找到值，或者值大于500")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+44,flags=4,value=2950}})
      gg.setValues({[jg]={address=v.address+52,flags=4,value=1770}})
      gg.setValues({[jg]={address=v.address+84,flags=4,value=180}})
      gg.setValues({[jg]={address=v.address+88,flags=4,value=0}})--
      gg.setValues({[jg]={address=v.address+92,flags=4,value=0}})--
      gg.setValues({[jg]={address=v.address+96,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+100,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+104,flags=4,value=0}})--
      gg.setValues({[jg]={address=v.address+108,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+112,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+116,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+120,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+124,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+128,flags=4,value=0}})
      gg.setValues({[jg]={address=v.address+132,flags=4,value=0}})
      gg.toast("恢复成功，共恢复"..b.."个值")
      gg.clearResults()
    end
  end
end

function ZUI()
  local a=gg.choice({
    "装备区",
    "返回主页"
  },0,"作者：[ML.陌路]")
  if not a then
   elseif a==2 then
    sbyx()
   elseif a==1 then
    zbqui1()
  end
end

function zbqui1()
  for i=1,1 do
    gg.clearResults()
    local a=gg.choice(zbwz,0,"选择修改的装备....\n点击其他处退出")
    if not a then
      gg.alert("无选择...")
      break
     else
      local s=gg.alert("是否修改："..zbwz[a],"是","否")
      if s~=1 then
        gg.alert("请重新选择..")
        break
      end
    end

    local b=gg.prompt({"输入装备价格"},{"0"},{number})
    if not b then
      gg.toast("取消输入")
     else
      gg.setRanges(gg.REGION_OTHER)
      gg.searchNumber(zbdm[a]..";"..b[1].."::65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      gg.searchNumber(zbdm[a], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)

      local xzxg=gg.prompt({
        "购买价格",
        "是否开启",
        "出售价格",
        "是否开启",
        "物理攻击",
        "是否开启",
        "物理攻速",
        "是否开启",
        "物理吸血",
        "是否开启",
        "法术攻击",
        "是否开启",
        "冷却缩减",
        "是否开启",
        "最大法力",
        "是否开启",
        "每5秒回蓝",
        "是否开启",
        "物理防御",
        "是否开启",
        "法术防御",
        "是否开启",
        "最大生命",
        "是否开启",
        "每五秒回血",
        "是否开启",
        "移速",
        "是否开启",
        "普攻强度",
        "是否开启",
      },{},{"number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox","number","checkbox"})

      local py={
        0x40,
        0x48,
        0x68,
        0x6c,
        0x74,
        0x78,
        0x7c,
        0x80,
        0x84,
        0x88,
        0x8c,
        0x90,
        0x94,
        0x98,
        0x9c,
      }


      local c=gg.getResults(1)

      if xzxg[2]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[1],
            ["flags"]=4,
            ["value"]=xzxg[1],
          }
        })
      end

      if xzxg[4]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[2],
            ["flags"]=4,
            ["value"]=xzxg[3],
          }
        })
      end

      if xzxg[6]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[3],
            ["flags"]=4,
            ["value"]=xzxg[5],
          }
        })
      end

      if xzxg[8]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[4],
            ["flags"]=4,
            ["value"]=xzxg[7],
          }
        })
      end

      if xzxg[10]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[5],
            ["flags"]=4,
            ["value"]=xzxg[9],
          }
        })
      end

      if xzxg[12]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[6],
            ["flags"]=4,
            ["value"]=xzxg[11],
          }
        })
      end


      if xzxg[14]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[7],
            ["flags"]=4,
            ["value"]=xzxg[13],
          }
        })
      end

      if xzxg[16]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[8],
            ["flags"]=4,
            ["value"]=xzxg[15],
          }
        })
      end



      if xzxg[18]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[9],
            ["flags"]=4,
            ["value"]=xzxg[17],
          }
        })
      end


      if xzxg[20]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[10],
            ["flags"]=4,
            ["value"]=xzxg[19],
          }
        })
      end


      if xzxg[22]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[11],
            ["flags"]=4,
            ["value"]=xzxg[21],
          }
        })
      end

      if xzxg[24]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[12],
            ["flags"]=4,
            ["value"]=xzxg[23],
          }
        })
      end



      if xzxg[26]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[13],
            ["flags"]=4,
            ["value"]=xzxg[25],
          }
        })
      end

      if xzxg[28]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[14],
            ["flags"]=4,
            ["value"]=xzxg[27],
          }
        })
      end

      if xzxg[30]==true then
        gg.setValues({
          [1]={
            ["address"]=c[1].address+py[15],
            ["flags"]=4,
            ["value"]=xzxg[29],
          }
        })
      end
    end
  end
end

function a6()
  local a=gg.choice({
    "返回上一页",
    "百里守约二技能命中拉人",
    "平A改马超无限戳枪(选英雄界面开)",
    "鬼谷子全图吸人(局内改)",
    "无限名刀(局内改)*",
    "自定义视角(局内改)",
    "无限兵线(5V5地图，局内改)",
    "自定义百里守约二技能存量(一级三发子弹的时候改，改完别升级会闪退)",
    "苍穹改夏洛特被动全图(局内开)",
    "尝试苍穹自定义英雄技能全图(好像只能大招，局内开)",
    "尝试自定义闪现改任意英雄技能(选英雄界面开)",
    "百里守约二技能范围必中(局内开，配合命中无限释放更加)",
    "百里守约二技能命中无限释放(局内开)",
    "内透(游戏里面开)*",
    "百里守约移动打狙",
    "QQ登录改单机模式",
    "自定义米莱狄儿子改英雄"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then qt1()
   elseif a==3 then qt2()
   elseif a==4 then qt3()
   elseif a==5 then qt4()
   elseif a==6 then qt5()
   elseif a==7 then qt6()
   elseif a==8 then qt7()
   elseif a==9 then qt8()
   elseif a==10 then qt9()
   elseif a==11 then qt10()
   elseif a==12 then qt11()
   elseif a==13 then qt12()
   elseif a==14 then nt()
   elseif a==15 then qt13()
   elseif a==16 then qt14()
   elseif a==17 then qt15()
  end
  sb = -1
end

function qt1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("100D;196200D;196290D;196210D;100D::17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("196290", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("175290",gg.TYPE_DWORD)
  gg.toast("守约二技能拉人开启成功")
  gg.clearResults()
  gg.searchNumber("100D;196200D;196290D;196180D;100D:17", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("196290", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("175290",gg.TYPE_DWORD)
  gg.toast("守约二技能拉兵开启成功")
  gg.clearResults()
end

function qt2()
  local a=gg.prompt({"请输入你要改的平A英雄代码"},{nil})
  if not a then
    gg.toast("取消输入")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber(a[1].."00", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber(a[1].."00", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(500)
    gg.editAll("51806",gg.TYPE_DWORD)
    gg.toast("平A改马超戳枪开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("51806;1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(500)
    gg.editAll("0",gg.TYPE_DWORD)
    gg.toast("无限戳开启成功")
    gg.clearResults()
  end
end

function qt3()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4000;189200::949", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("4000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  gg.getResults(50)
  gg.editAll("999999999",gg.TYPE_DWORD)
  gg.toast("鬼谷子二技能吸全图修改成功共修改"..b.."个值")
end

function qt4()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("1900;1140::9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(999)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("0金币买名刀开启成功")

  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("120000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("120000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(1000)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("无限名刀开启成功")
  gg.clearResults()
end

function qt5()
  local a=gg.prompt({'自行调节[1;5]'},{3},{"number"})
  if not a then
    gg.toast("取消选择")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("-"..a[1], gg.TYPE_FLOAT)
    gg.toast("自定义视角开启成功")
    gg.clearResults()
  end
end

function qt6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('3;30000', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('30000', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0', gg.TYPE_DWORD)
  gg.toast("无限兵线开启成功")
  gg.clearResults()
end

function qt7()
  gg.alert("注意事项:\n必须是在一级，三发子弹的数量下修改，修改完成后就不要升级技能了，要不然会闪退")
  local a=gg.prompt({"请输入你要改的数量"},{nil},{"number"})
  if not a then
    gg.toast("取消输入")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("3;16,000::20", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber("3", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local c=gg.getResultCount()
    local b=gg.getResults(c)
    for k,v in ipairs(b) do
      gg.addListItems({[1]={address=v.address+0,flags=4,freeze=true,value=a[1]}})
      gg.toast("自定义百里守约二技能子弹数量开启成功")
      gg.clearResults()
    end
  end
end

function qt8()
  local a=gg.prompt({"是否开启0金币买苍穹\n注意事项：开启后自定义苍穹可能没法使用"},{nil},{"checkbox"})
  if not a then
    gg.toast("开启失败原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("2120;91000;9:333",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("2120",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local b=gg.getResultCount()
    if b==0 or b>10 then
      gg.toast("开启失败原因: 没有找到值，或者值太多")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        if a[1]==true then
          gg.setValues({[jg]={address=v.address+0,flags=4,value=0}})
          gg.setValues({[jg]={address=v.address+328,flags=4,value=53603}})
         else
          gg.setValues({[jg]={address=v.address+328,flags=4,value=53603}})
          gg.toast("开启成功")

          gg.clearResults()
        end
      end
    end

    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("53603;1000::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("1000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local b=gg.getResultCount()
    if b==0 or b>10 then
      gg.toast("开启失败原因: 没有找到值，或者值太多")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        gg.setValues({[jg]={address=v.address+0,flags=4,value=0}})
        gg.setValues({[jg]={address=v.address+4,flags=4,value=-1}})
        gg.setValues({[jg]={address=v.address+48,flags=4,value=0}})
        gg.setValues({[jg]={address=v.address+56,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+60,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+64,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+68,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+72,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+104,flags=4,value=0}})
        gg.toast("苍穹改夏洛特被动全图开启成功")
        gg.clearResults()
      end
    end
  end
end

function qt9()
  local a=gg.prompt({"请输入英雄代码\n注意事项开启0金币买苍穹可能不能再换别的技能","请输入第几个技能","请输入该技能冷却","是否开启0金币买苍穹"},{nil},{"number","number","number","checkbox"})
  if not a then
    gg.toast("取消输入")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("2120;91000;9:333",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("2120",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local b=gg.getResultCount()
    if b==0 or b>10 then
      gg.toast("开启失败原因: 没有找到值，或者值太多")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        if a[4]==true then
          gg.setValues({[jg]={address=v.address+0,flags=4,value=0}})
          gg.setValues({[jg]={address=v.address+328,flags=4,value=a[1]..a[2]..0}})
         else
          gg.setValues({[jg]={address=v.address+328,flags=4,value=a[1]..a[2]..0}})
          gg.toast("开启成功")
          gg.clearResults()
        end
      end
    end

    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber(a[1]..a[2].."0;"..a[3].."000::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber(a[1]..a[2].."0",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local b=gg.getResultCount()
    if b==0 or b>10 then
      gg.toast("开启失败原因: 没有找到值，或者值太多")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        gg.setValues({[jg]={address=v.address+172,flags=4,value=0}})--冷却
        gg.setValues({[jg]={address=v.address+228,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+232,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+236,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+240,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+244,flags=4,value=999999999}})
        gg.setValues({[jg]={address=v.address+316,flags=4,value=0}})--蓝耗
        gg.toast("苍穹自定义英雄技能全图开启成功")
        gg.clearResults()
      end
    end
  end
end

function qt10()
  local a=gg.prompt({"请输入要修改的英雄代码","选择英雄技能[0;4]"},{nil},{"number","number"})
  if not a then
    gg.toast("开启失败原因：你选择取消或者没有选择技能")
   else
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("80115", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("80115", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.getResults(500)
    gg.editAll(a[1]..a[2].."0",gg.TYPE_DWORD)
    gg.toast("自定义闪现开启成功")
    gg.clearResults()
  end
end

function qt11()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("-500D;1000D;10000D;3200D:13", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(500)
  gg.editAll("999999999",gg.TYPE_DWORD)
  gg.toast("守约二技能必中开启成功")
  gg.clearResults()
end

function qt12()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("-1736865558D;-109308169D:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-2051403109;1243391857", gg.TYPE_DWORD)
  gg.toast("百里守约二技能命中无限释放修改成功")
  gg.clearResults()
end

function nt()
end

function qt13()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("1766268661;1100791485", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1766268661;1100791485", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(999)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("百里守约移动打狙开启成功")
  gg.clearResults()
end
function qt14()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("3401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("3401", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(50)
  gg.editAll("3448",gg.TYPE_DWORD)
  gg.toast("修改成功")
  gg.clearResults()
end

function qt15()
  local a=gg.prompt({"请输入要修改的英雄代码","请选择第几个技能\n注意，如果选择0就是改的平a[0;4]"},{nil},{"number","number"})
  if not a then
    gg.toast("开启失败原因：你选择取消或者没有选择技能")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("50403;50405", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(999)
    gg.editAll(a[1]..a[2].."0",gg.TYPE_DWORD)
    gg.toast("自定义米莱狄儿子开启成功")
    gg.clearResults()
  end
end

function a7()
  local a=gg.choice({
    "返回上一页",
    "苍穹改光信(局内)*",
    "光信技能修改",
    "紫色元素龙*",
    "蓝色元素龙*",
    "风暴龙*",
    "暴君*",
    "主宰*",
    "大野猪*",
    "红BUFF*",
    "红方跑车*",
    "蓝方跑车*",
    "不知道是什么*",
    "小鸟*",
    "恢复模型修改(不包括苍穹改光信)*"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then gx()
   elseif a==3 then gx1()
   elseif a==4 then mx1()
   elseif a==5 then mx2()
   elseif a==6 then mx3()
   elseif a==7 then mx4()
   elseif a==8 then mx5()
   elseif a==9 then mx6()
   elseif a==10 then mx7()
   elseif a==11 then mx8()
   elseif a==12 then mx9()
   elseif a==13 then mx10()
   elseif a==14 then mx11()
   elseif a==15 then hhxg1()
  end
  sb = -1
end

function gx()
  local a=gg.prompt({"是否开启0金币买苍穹\n注意事项：开启后自定义苍穹可能没法使用"},{nil},{"checkbox"})
  if not a then
    gg.toast("开启失败原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("2120;91000;9:333",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    gg.searchNumber("2120",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
    local b=gg.getResultCount()
    if b==0 or b>10 then
      gg.toast("开启失败原因: 没有找到值，或者值太多")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        if a[1]==true then
          gg.setValues({[jg]={address=v.address+0,flags=4,value=0}})
          gg.setValues({[jg]={address=v.address+328,flags=4,value=50741}})
         else
          gg.setValues({[jg]={address=v.address+328,flags=4,value=50741}})
          gg.toast("开启成功")
          gg.clearResults()
        end
      end
    end
  end
end

function gx1()
  local a=gg.prompt({"请选择要修改的技能\n\n一技能","二技能","三技能"},{nil},{"checkbox","checkbox","checkbox"})
  if not a then
    gg.toast("取消选择")
   elseif a[1] then
    local b=gg.prompt({"请输入要修改的英雄代码","请选择该英雄技能[1;4]"},{nil},{"number","number"})
    if not b then
      gg.toast("取消选择")
     else
      gg.clearResults()
      gg.setRanges(gg.REGION_OTHER)
      gg.searchNumber("50712", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
      gg.getResults(999)
      gg.editAll(b[1]..b[2].."0",gg.TYPE_DWORD)
      gg.toast("光信一技能修改成功")
      gg.clearResults()
    end
   elseif a[2] then
    local b=gg.prompt({"请输入要修改的英雄代码","请选择该英雄技能[1;4]"},{nil},{"number","number"})
    if not b then
      gg.toast("取消选择")
     else
      gg.clearResults()
      gg.setRanges(gg.REGION_OTHER)
      gg.searchNumber("50722", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
      gg.getResults(999)
      gg.editAll(b[1]..b[2].."0",gg.TYPE_DWORD)
      gg.toast("光信二技能修改成功")
      gg.clearResults()
    end
   elseif a[3] then
    local b=gg.prompt({"请输入要修改的英雄代码","请选择该英雄技能[1;4]"},{nil},{"number","number"})
    if not b then
      gg.toast("取消选择")
     else
      gg.clearResults()
      gg.setRanges(gg.REGION_OTHER)
      gg.searchNumber("50732", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
      gg.getResults(999)
      gg.editAll(b[1]..b[2].."0",gg.TYPE_DWORD)
      gg.toast("光信三技能修改成功")
      gg.clearResults()
    end
  end
end
function mx1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=-398522452}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=-133975756}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=-1809383971}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=-1402903757}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx3()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=-1946701992}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=824290880}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx4()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=-1147693853}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=-1844673903}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx5()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=1621058446}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=-1604007104}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx6()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=-280825836}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=1461908789}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx7()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=1686440079}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=1428042765}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx8()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=171006111}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=1358103793}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx9()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=13455284}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=1561596035}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx10()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=-566414242}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=498845909}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function mx11()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=226602576}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=1743117108}})
      gg.toast("模型修改成功")
      gg.clearResults()
    end
  end
end

function hhxg1()
  gg.clearResults()
  gg.setRanges( gg.REGION_C_ALLOC)
  gg.searchNumber("7;2,300;110;110;1;257;256::113",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("2300",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因: 没有找到值，或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+64,flags=4,value=817582291}})
      gg.setValues({[jg]={address=v.address+68,flags=4,value=-1708123536}})
      gg.toast("模型恢复成功")
      gg.clearResults()
    end
  end
end

function a8()
  local a=gg.choice({
    "返回上一页",
    "局外",
    "局内*"
  },nil,"尘\n每日一言\n"..yy.."\n感谢依可大佬提供局内的循环写法")
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then th()
   elseif a==3 then sbyx()
  end
  sb = -1
end

function th()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("12510;20000;100::317", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("20000;100", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(500)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("一技能无冷却开启成功")
  gg.clearResults()
  gg.searchNumber("125;12510;1;12520;1;12530;1;12540;1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("-1",gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("225;22510;1;22520;1;22530;1;22540;1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("-1",gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("85000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber("85000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  local b=gg.getResultCount()
  if b==0 or b>500 then
    gg.toast("开启失败原因: 没有找到值，或者值大于500")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+120,flags=4,value=22510}})
      gg.clearResults()
      gg.toast("开启成功")
    end
  end
end

function bz()
  local a=gg.choice({
    "返回上一页",
    "红方水晶爆炸(游戏里面开)",
    "蓝方水晶爆炸(游戏里面开)"
  },nil,"尘\n每日一言\n"..yy)
  if not a then
   elseif a==1 then sbyx()
   elseif a==2 then bz1()
   elseif a==3 then bz2()
  end
  sb = -1
end

function bz1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2;2;73728000;4915200;81920000::200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("73728000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("红方水晶爆炸开启成功")
  gg.clearResults()
end

function bz2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7;0~~0;73728000::9", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("73728000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(10)
  gg.editAll("-999",gg.TYPE_DWORD)
  gg.toast("蓝方水晶爆炸开启成功")
  gg.clearResults()
end

function zz()
  local SN = gg.choice({
    "庄周免升级释放(第一步)",
    "无限释放小乔大招",
    "无限释放妲己大招",
    "无限释放孙膑大招",
    "无限释放狄仁杰二技能",
    "无限释放武则天大招",
    "无限释放关羽一技能",
    "无限释放马可一技能",
    "被动无限释放甄姬大招",
    "自定义被动",
    "恢复修改",
    "返回主页",
  }, nil, "尘\n每日一言\n"..yy)
  if SN==nil then
   elseif SN==1 then zz1()
   elseif SN==2 then HS92()
   elseif SN==3 then HS77()
   elseif SN==4 then HS78()
   elseif SN==5 then HS79()
   elseif SN==6 then HS80()
   elseif SN==7 then HS81()
   elseif SN==8 then HS83()
   elseif SN==9 then HS84()
   elseif SN==10 then sbyx()
   elseif SN==11 then zz2()
   elseif SN==12 then sbyx()
  end
  sb = -1
end

function zz1()
  local c = gg.prompt({ "选择技能释放间隔\n间隔越小技能释放越快[0;1000]" }, { nil }, {"number"})
  if not c then
    gg.toast("开启失败原因：你选择取消")
   else
    gg.clearResults()
    gg.setRanges(gg.REGION_OTHER)
    gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local b=gg.getResultCount()
    if b==0 or b>10 then
      gg.toast("开启失败原因; 可能没找到值或者值太多")
     else
      local jg=gg.getResults(b)
      for k,v in ipairs(jg) do
        gg.setValues({[jg]={address=v.address+12,flags=4,value=c[1]}})
        gg.setValues({[jg]={address=v.address+20,flags=4,value=0}})
        gg.toast("庄周二技能免升级修改成功")
        gg.clearResults()
      end
    end
  end
end

function HS92()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=1096488548}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=775342211}})
      gg.toast("无限释放小乔大乔修改成功")
      gg.clearResults()
    end
  end
end

function HS77()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=292045941}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=-286771028}})
      gg.toast("被动无限释放妲己大招修改成功")
      gg.clearResults()
    end
  end
end

function HS78()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=549132125}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=-1164956068}})
      gg.toast("无限释放孙膑大招修改成功")
      gg.clearResults()
    end
  end
end

function HS79()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=1401422283}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=-2001836130}})
      gg.toast("无限释放狄仁杰二技能修改成功")
      gg.clearResults()
    end
  end
end

function HS80()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=904773912}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=300085349}})
      gg.toast("无限释放武则天大招修改成功")
      gg.clearResults()
    end
  end
end

function HS81()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=1496696946}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=758841301}})
      gg.toast("无限释放关羽一技能修改成功")
      gg.clearResults()
    end
  end
end

function HS83()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=1242173815}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=1205603197}})
      gg.toast("无限释放马可一技能修改成功")
      gg.clearResults()
    end
  end
end

function HS84()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+40,flags=4,value=-565808581}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=904416351}})
      gg.toast("无限释放甄姬大招修改成功")
      gg.clearResults()
    end
  end
end

function zz2()
  gg.clearResults()
  gg.setRanges(gg.REGION_OTHER)
  gg.searchNumber("11306;11320;4::49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("11306", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  local b=gg.getResultCount()
  if b==0 or b>10 then
    gg.toast("开启失败原因; 可能没找到值或者值太多")
   else
    local jg=gg.getResults(b)
    for k,v in ipairs(jg) do
      gg.setValues({[jg]={address=v.address+12,flags=4,value=6000}})
      gg.setValues({[jg]={address=v.address+20,flags=4,value=2}})
      gg.setValues({[jg]={address=v.address+40,flags=4,value=1102599477}})
      gg.setValues({[jg]={address=v.address+44,flags=4,value=1304353354}})
      gg.toast("庄周二技能修改恢复成功")
    end
  end
end

function dsb()
  local t={
    "原创，尘，QQ2137190676",
    "105廉颇",
    "106小乔",
    "107赵云",
    "108墨子",
    "109妲己",
    "110嬴政",
    "111孙尚香",
    "112鲁班七号",
    "113庄周",
    "114刘禅",
    "115高渐离",
    "116荆轲",
    "117钟无艳",
    "118孙膑",
    "119扁鹊",
    "120白起",
    "121芈月",
    "122诸葛亮（旧版）",
    "123吕布",
    "124周瑜",
    "125庞统",
    "126夏侯惇",
    "127甄姬",
    "128曹操",
    "129典韦",
    "130宫本武藏",
    "131李白",
    "132马克波罗（旧）",
    "133狄仁杰",
    "134达摩",
    "135项羽",
    "136武则天",
    "137司马懿",
    "139孔夫子",
    "140关羽",
    "141貂蝉",
    "142安琪拉",
    "143安绿山",
    "144程咬金",
    "146露娜",
    "148姜子牙",
    "149刘邦",
    "150韩信",
    "152王昭君",
    "153兰陵王",
    "154花木兰",
    "155艾琳",
    "156张亮（旧）",
    "157不知火舞",
    "158八神庵",
    "162娜可露露",
    "163橘右京",
    "166亚瑟王",
    "167孙悟空",
    "168牛魔",
    "169后羿",
    "170刘备",
    "171张飞",
    "173李元芳",
    "174虞姬",
    "175钟馗",
    "176杨玉环",
    "177成吉思汗",
    "178杨戬",
    "179女娲",
    "180哪吒",
    "182干将（旧）",
    "183雅典娜",
    "184蔡文姬",
    "186太乙真人",
    "187东皇太一",
    "189鬼谷子",
    "190诸葛亮",
    "191大乔",
    "192黄忠",
    "193铠",
    "194苏烈",
    "195百里玄策",
    "196百里守约",
    "197异星",
    "198梦奇",
    "199公孙离",
    "207封王",
    "222徐福",
    "225庞统（傀儡）",
    "240觉醒关羽",
    "241金龙",
    "242黑龙",
    "243红龙",
    "244绿龙",
    "254花木兰（重剑）",
    "237司马懿",
    "305廉颇（改版）",
    "310嬴政",
    "312沈梦西",
    "330宫本武藏（强化）",
    "332马可波罗",
    "333马可波罗（测试）",
    "346露娜（改版）",
    "355艾琳（改版）",
    "356张亮",
    "366亚瑟（改版）",
    "378杨戬（改版）",
    "382干将",
    "501明世隐",
    "502裴擒虎",
    "503狂铁",
    "504米莱迪",
    "505摇",
    "506云中君",
    "507李信",
    "508加罗",
    "509盾山",
    "510孙策",
    "511猪八戒",
    "512囚徒",
    "513上官婉儿",
    "515嫦娥",
    "516舜",
    "518马超",
    "520少司命",
    "521海月",
    "522东方耀",
    "523西施",
    "524蒙犽",
    "525鲁班大师",
    "526王翦",
    "527蒙恬",
    "528澜 ",
    "529盘古",
    "530宫本武藏（改版）",
    "531镜",
    "532镜分身",
    "533阿骨朵",
    "534桑启",
    "536夏洛特",
    "537司空震",
    "538云樱 ",
    "540金蝉",
    "542暃",
    "544赵怀真",
    "545莱西奥",
    "548戈娅",
    "564姬小满",
    "619Zombie",
    "620韩信",
    "621庄周",
    "630宫本武藏（改版强化）",
    "654母僵尸",
    "668Zombie",
    "675Zombie",
    "687Zombie",
    "700坦克轮子",
    "701坦克炮管",
    "716Zombie",
    "732马可波罗（旧）",
    "733刘备（旧）",
    "770暴君",
    "771主宰（英雄）",
    "772暴君3v3（英雄）",
    "773年兽（英雄）",
    "2025暴君3v3",
    "2068暴君",
  }
  local wcnm=gg.alert(table.concat(t,'\n'),"返回上一页",nil,"保存到手机里面")
  if not wcnm then
   else
    if wcnm==1 then
      sbyx()
    end
    if wcnm==3 then
      local cnm=io.open("/storage/emulated/0/王者荣耀英雄代码.txt","a")
      gg.sleep(10)
      local wcnmb=io.open("/storage/emulated/0/王者荣耀英雄代码.txt","w"):write(table.concat(t,'\n'))
      gg.alert("脚本已写入到/storage/emulated/0/Android/王者荣耀脚本/2023 年王者最新 脚本合集/ℳ๓神明°º᭄脚本/目录下\n名字为王者荣耀英雄代码")
    end
  end
end

while true do
  if gg.isVisible(true) then
    sb=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if sb==1 then
    sbyx()
  end
end