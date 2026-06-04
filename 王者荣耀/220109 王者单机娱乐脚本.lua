function Main0()
SN = gg.choice({
	 "●  改文字功能",
	 "○  无限兵线［局内开］［1V1模式闪退］",
	 "●  改皮肤功能",
	 "●  装备功能",
	 "●  典韦功能",
	 "●  钟馗功能",
	 "●  蔡文姬功能",
	 "●  附带技能功能",
	 "●  铠  功能",
	 "●  诸葛亮功能",
	 "●  孙悟空功能",
	 "●  鲁班七号功能",
	 "●  庄周功能",
	 "●  百里守约功能",
	 "●  防御塔功能",
	 "●  垃圾功能",
	 "●  变身功能",
	 "●  改技能功能",
	 "×    结束脚本     ×",
}, nil, "")
if SN==1 then
	 Main282()
end
if SN==2 then
	 HS307()
end
if SN==3 then
	 Main298()
end
if SN==4 then
	 Main1()
end
if SN==5 then
	 Main7()
end
if SN==6 then
	 Main328()
end
if SN==7 then
	 Main345()
end
if SN==8 then
	 Main27()
end
if SN==9 then
	 Main36()
end
if SN==10 then
	 Main122()
end
if SN==11 then
	 Main222()
end
if SN==12 then
	 Main238()
end
if SN==13 then
	 Main252()
end
if SN==14 then
	 Main313()
end
if SN==15 then
	 Main49()
end
if SN==16 then
	 Main58()
end
if SN==17 then
	 Main71()
end
if SN==18 then
	 Main151()
end
if SN==19 then
	 HS114()
end
FX1=0
end

function Main282()
SN = gg.multiChoice({
	 "5v5模式改你没马",
	 "1v1模式改傻逼",
	 "单机模式改操你妈逼［在单机界面左上角］",
	 "倔强青铜III 改 卢本伟广场",
	 "荣耀黄金IV 改 卢本伟操作",
	 "永恒钻石V 改 卢本伟公司",
	 "至尊星耀I 改 全体起立",
	 "最强王者 改 卢本伟牛逼",
	 "开始练习 改 你妈没逼",
	 "这关很强，确定要挑战吗？ 改 操你妈的，到底进不进？",
	 "确定 改 进去",
	 "取消 改 不进",
	 "请选择您的出战英雄 改 卢本伟准备就绪",
	 "更换 改 傻逼",
	 "返回主页",
}, nil, "仅供娱乐，无恶意")
if SN[1]==true then
	 HS283()
end
if SN[2]==true then
	 HS284()
end
if SN[3]==true then
	 HS286()
end
if SN[4]==true then
	 HS287()
end
if SN[5]==true then
	 HS288()
end
if SN[6]==true then
	 HS289()
end
if SN[7]==true then
	 HS290()
end
if SN[8]==true then
	 HS291()
end
if SN[9]==true then
	 HS292()
end
if SN[10]==true then
	 HS293()
end
if SN[11]==true then
	 HS294()
end
if SN[12]==true then
	 HS295()
end
if SN[13]==true then
	 HS296()
end
if SN[14]==true then
	 HS297()
end
if SN[15]==true then
	 HS285()
end
FX1=0
end

function HS283()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";5v5模式", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";5v5模式", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";你没马", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS284()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";1v1模式", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";1v1模式", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";傻逼", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS286()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";单机模式", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";单机模式", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";操你妈逼", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS287()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";倔强青铜III", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";倔强青铜III", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";卢本伟广场", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS288()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";荣耀黄金IV", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";荣耀黄金IV", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";卢本伟操作", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS289()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";永恒钻石V", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";永恒钻石V", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";卢本伟公司", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS290()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";至尊星耀I", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";至尊星耀I", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";全体起立", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS291()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";最强王者", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";最强王者", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";卢本伟牛逼", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS292()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";开始练习", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";开始练习", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";你妈没逼", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS293()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";这关很强，确定要挑战吗？", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";这关很强，确定要挑战吗？", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";操你妈的，到底进不进？", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS294()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";确定", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";确定", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";进去", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS295()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";取消", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";取消", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";不进", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS296()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";请选择您的出战英雄", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";请选择您的出战英雄", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";卢本伟准备就绪", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS297()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";更换", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";更换", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";傻逼", gg.TYPE_WORD)
	 gg.toast("改文字成功")
	 gg.clearResults()
end

function HS285()
	 Main0()
end

function HS307()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("3;33000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function Main298()
SN = gg.multiChoice({
	 "典韦                                 岱宗",
	 "诸葛亮                             诗雨天司",
	 "钟馗                                乐园奇幻夜",
	 "蔡文姬                             繁星吟游",
	 "铠                                    青龙志",
	 "鲁班七号［1］               电玩小子［任选一个］",
	 "鲁班七号［2］               舞狮东方［任选一个］",
	 "孙悟空                            全息碎影",
	 "百里守约                         朱雀志［任选一个］",
	 "百里守约                        特工魅影［任选一个］",
	 "返回主页",
}, nil, "如果修改完点皮肤头像再刷新一下\n出场动画有了代表修改成功了 没效果多开几次\n")
if SN[1]==true then
	 HS299()
end
if SN[2]==true then
	 HS302()
end
if SN[3]==true then
	 HS337()
end
if SN[4]==true then
	 HS353()
end
if SN[5]==true then
	 HS301()
end
if SN[6]==true then
	 HS300()
end
if SN[7]==true then
	 HS310()
end
if SN[8]==true then
	 HS303()
end
if SN[9]==true then
	 HS305()
end
if SN[10]==true then
	 HS343()
end
if SN[11]==true then
	 HS304()
end
FX1=0
end

function HS299()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";12900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";12900", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";12904", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS302()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";19000", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19005", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS337()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";17500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";17500", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";17503", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS353()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";18400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";18400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";18404", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS301()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";19300", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19303", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS300()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";11203", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS310()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";11200", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";11205", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS303()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";16700", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";16705", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS305()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19604", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS343()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(";19600", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(";19603", gg.TYPE_WORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS304()
	 Main0()
end

function Main1()
SN = gg.multiChoice({
	 "铁剑",
	 "匕首",
	 "迅捷长矛",
	 "搏击拳套",
	 "吸血之镰",
	 "雷鸣刃",
	 "速击之枪",
	 "充能拳套",
	 "风暴巨剑",
	 "日冤",
	 "狂暴双刃",
	 "陨星",
	 "破魔刀",
	 "碎星锤",
	 "泣血之刃",
	 "无尽战刃",
	 "闪电匕首",
	 "影刃",
	 "末世",
	 "宗师之力",
	 "暗影战斧",
	 "破军",
	 "寒霜袭侵",
	 "制裁之刃",
	 "纯净苍穹",
	 "破晓",
	 "天穹",
	 "司命·名刀",
	 "逐日之弓",
	 "穿云弓",
	 "日渊",
	 "-----------------分割线-----------------",
	 "霸者重装",
	 "圣杯",
	 "辉月",
	 "-----------------分割线-----------------",
	 "纯净苍穹技能改百里守约二技能",
	 "百里守约二技能杀队友［局内开］",
	 "-----------------分割线-----------------",
	 "辉月技能改蒙括大招",
	 "蒙括大招无CD",
	 "返回主页",
}, nil, "以下功能是改0元装［额外修改装备属性］\n")
if SN[1]==true then
	 HS174()
end
if SN[2]==true then
	 HS175()
end
if SN[3]==true then
	 HS277()
end
if SN[4]==true then
	 HS176()
end
if SN[5]==true then
	 HS177()
end
if SN[6]==true then
	 HS178()
end
if SN[7]==true then
	 HS276()
end
if SN[8]==true then
	 HS179()
end
if SN[9]==true then
	 HS180()
end
if SN[10]==true then
	 HS181()
end
if SN[11]==true then
	 HS182()
end
if SN[12]==true then
	 HS183()
end
if SN[13]==true then
	 HS184()
end
if SN[14]==true then
	 HS185()
end
if SN[15]==true then
	 HS186()
end
if SN[16]==true then
	 HS187()
end
if SN[17]==true then
	 HS188()
end
if SN[18]==true then
	 HS189()
end
if SN[19]==true then
	 HS267()
end
if SN[20]==true then
	 HS266()
end
if SN[21]==true then
	 HS190()
end
if SN[22]==true then
	 HS191()
end
if SN[23]==true then
	 HS192()
end
if SN[24]==true then
	 HS193()
end
if SN[25]==true then
	 HS194()
end
if SN[26]==true then
	 HS195()
end
if SN[27]==true then
	 HS196()
end
if SN[28]==true then
	 HS198()
end
if SN[29]==true then
	 HS199()
end
if SN[30]==true then
	 HS200()
end
if SN[31]==true then
	 HS201()
end
if SN[32]==true then
	 HS265()
end
if SN[33]==true then
	 HS234()
end
if SN[34]==true then
	 HS268()
end
if SN[35]==true then
	 HS249()
end
if SN[36]==true then
	 HS215()
end
if SN[37]==true then
	 HS216()
end
if SN[38]==true then
	 HS221()
end
if SN[39]==true then
	 HS244()
end
if SN[40]==true then
	 HS245()
end
if SN[41]==true then
	 HS246()
end
if SN[42]==true then
	 HS197()
end
FX1=0
end

function HS174()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1111;250;20::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("250;20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;588", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS175()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1112;290;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("290;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;10000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS277()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1,115;300;10;400::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300;10;400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;999;20000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS176()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1113;320;800::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("320;800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;3400", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS177()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1114;410;10;800::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("410;10;800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;588;5000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS178()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1116;450;40::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("450;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;588", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS276()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1129;880;2000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("880;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;20000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS179()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1117;550;1500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("550;1500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;5000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS180()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1121;910;80::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("910;80", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;666", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS181()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1122;740;20;500;300::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("740;20;500;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;588;8000;2999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS182()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1123;890;1500;1000;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("890;1500;1000;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;5000;5000;3500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS183()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1124;1080;45;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1080;45;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;588;7000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS184()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1125;2090;90;100;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2090;90;100;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;588;488;2499", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS185()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1131;2100;80;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2100;80;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;788;7500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS186()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1132;1740;100;2500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1740;100;2500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;10000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS187()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1133;2140;110;2500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2140;110;2500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;8100", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS188()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1135;1840;4000;1000;800::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1840;4000;1000;800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;12000;4900;4000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS189()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1136;2070;4000;2000;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2070;4000;2000;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;12500;5000;4100", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS267()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2160;1296;60;3000;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2160;1296;60;3000;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;1888;588;10000;10000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS266()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2100;1260;80;2000;400;400::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2100;1260;80;2000;400;400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;1488;7800;12999;13999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS190()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1137;2090;85;1500;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2090;85;1500;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;8000;3888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS191()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1138;2950;180::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2950;180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;8888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS192()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1128;2050;3000;600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2050;3000;600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;10000;3999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS193()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11210;1800;100;1500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1800;100;1500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;10000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS194()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11311;2120;100;1000;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2120;100;1000;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;8000;4888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS195()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("757138563;3400;50;3500;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3400;50;3500;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;3999;8000;5000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS196()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1157;4200;100;1000;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4200;100;1000;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;4199;8000;4999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS198()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("739181671;1900;60;500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1900;60;500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;6666;8888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS199()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("748356725;2100;2500;1500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2100;2500;1500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;10000;5000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS200()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("756876418;1100;40;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1100;40;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;7500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS201()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("757662852;4180;2500;1500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4180;2500;1500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;8888;6666", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS265()
	 Main0()
end

function HS234()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("2070;2000;100::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2070;2000;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;39999;999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS268()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1800;1080;180;1500;25::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1800;1080;180;1500;25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;888;1588;8000;2888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS249()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1239;1990;1194;160;1000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1990;1194;160;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;0;2999;8000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS215()
	 Main0()
end

function HS216()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11311;500;91000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19620", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS221()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("196200;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS244()
	 Main0()
end

function HS245()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1239;91010::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("91010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("52730", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS246()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52730;40000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS197()
	 Main0()
end

function Main7()
SN = gg.multiChoice({
	 "典韦技能无需学习",
	 "典韦大招无冷却+无后摇+无耗蓝",
	 "典韦大招888伤害（两个只能选一个）",
	 "典韦大招2888伤害（两个只能选一个）",
	 "典韦大招全屏范围",
	 "典韦二技能无冷却+无后摇+无耗蓝",
	 "典韦二技能增加范围",
	 "典韦二技能杀队友（局内开）",
	 "典韦一技能无冷却+不耗蓝",
	 "典韦开局25000血+888攻击防御+超级移速",
	 "返回主页",
}, nil, "↓↓↓随便开↓↓↓")
if SN[1]==true then
	 HS8()
end
if SN[2]==true then
	 HS9()
end
if SN[3]==true then
	 HS20()
end
if SN[4]==true then
	 HS25()
end
if SN[5]==true then
	 HS11()
end
if SN[6]==true then
	 HS13()
end
if SN[7]==true then
	 HS14()
end
if SN[8]==true then
	 HS15()
end
if SN[9]==true then
	 HS16()
end
if SN[10]==true then
	 HS279()
end
if SN[11]==true then
	 HS23()
end
FX1=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12930;430;12900;1;1;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1;1;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("🖕🖕🖕🖕🖕🖕")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12930;30000;65536;588343777;135902114;130;15::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000;65536;130;15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("🖕🖕🖕🖕🖕🖕🖕")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("129300;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("888", gg.TYPE_DWORD)
	 gg.toast("🐮🍺")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("129300;300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2888", gg.TYPE_DWORD)
	 gg.toast("🐮🍺")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12930;6000;6000;6000;6000;8000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;8000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("139999", gg.TYPE_DWORD)
	 gg.toast("🐶🐶🐶狗🐶🐶🐶🐶")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12920;8000;0;-1912005097;-1608420726;65;10::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;0;65;10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12920;4200;4200;4200;4200;4200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_DWORD)
	 gg.toast("❤️🖤开启成功🖤❤️")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("129200;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12910;9000;55;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;55;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("🐮🍺")
	 gg.clearResults()
end

function HS279()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3434;168;89;50;3900::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3434;168;89;50;3900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("25000;888;888;888;10500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS23()
	 Main0()
end

function Main328()
SN = gg.multiChoice({
	 "钟馗一技能无CD+无后摇+无耗蓝",
	 "钟馗二技能无CD+无后摇+无耗蓝",
	 "钟馗大招无CD+无后摇+无耗蓝",
	 "钟馗一技能14999点伤害",
	 "钟馗二技能4399点伤害",
	 "钟馗大招62208点伤害",
	 "钟馗与蒙括士兵共用二技能［配合上装备功能里辉月技能改蒙括大招］",
	 "钟馗二技能超远钩［局内开］「适合泉水钩」",
	 "钟馗一技能杀队友「局内开」",
	 "钟馗二技能钩队友［局内开］",
	 "钟馗大招吸队友［局内开］",
	 "钟馗开局5万血+888攻击防御+超级移速",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS330()
end
if SN[2]==true then
	 HS331()
end
if SN[3]==true then
	 HS333()
end
if SN[4]==true then
	 HS335()
end
if SN[5]==true then
	 HS336()
end
if SN[6]==true then
	 HS334()
end
if SN[7]==true then
	 HS342()
end
if SN[8]==true then
	 HS338()
end
if SN[9]==true then
	 HS341()
end
if SN[10]==true then
	 HS339()
end
if SN[11]==true then
	 HS340()
end
if SN[12]==true then
	 HS329()
end
if SN[13]==true then
	 HS332()
end
FX1=0
end

function HS330()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("17510;4000;0;1051182764;-1981527613;60;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4000;0;60;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS331()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("17520;14000;0;-1000741834;-3394421;60;10::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14000;0;60;10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS333()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("17530;40000;0;-128713700;-284112740;130;15::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40000;0;130;15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS335()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("175100;320::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("320", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("14999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS336()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("175200;550::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("550", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4399", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS334()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("175300;120::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS342()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("17520", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS338()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("8000;1400;16000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;1400;16000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS341()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("175100;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS339()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("175200;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS340()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("175300;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS329()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-85444473;529050331;3501;180;0;99;50;3600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3501;180;0;99;50;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000;888;888;888;888;10500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS332()
	 Main0()
end

function Main345()
SN = gg.multiChoice({
	 "蔡文姬一技能无CD+无耗蓝",
	 "蔡文姬二技能无CD+无耗蓝+无后摇",
	 "蔡文姬大招无CD+无耗蓝",
	 "蔡文姬一技能4999奶量",
	 "蔡文姬大招13999奶量",
	 "蔡文姬大招与蒙括士兵共用［配合上装备功能里辉月技能改蒙括大招］",
	 "蔡文姬开局12888血+488攻击防御+超级移速",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS348()
end
if SN[2]==true then
	 HS349()
end
if SN[3]==true then
	 HS350()
end
if SN[4]==true then
	 HS351()
end
if SN[5]==true then
	 HS352()
end
if SN[6]==true then
	 HS354()
end
if SN[7]==true then
	 HS346()
end
if SN[8]==true then
	 HS347()
end
FX1=0
end

function HS348()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("18410;15000;1340048257;-746153735;100;20::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15000;100;20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS349()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("18420;9000;0;-1339124007;1655240317;70;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;0;70;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS350()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("18430;60000;-387110772;1842484988;120;20::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000;120;20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS351()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("184111;60::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS352()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("184300;100;6000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("13999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS354()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("18430", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS346()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1553454009;55536228;3238;38;159;0;96;50;3600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3238;159;0;96;50;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12888;488;488;488;488;10500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS347()
	 Main0()
end

function Main27()
SN = gg.multiChoice({
	 "闪现无冷却",
	 "惩击无冷却",
	 "净化改吕布大招",
	 "吕布大招无CD+无后摇",
	 "吕布大招全图乱跳",
	 "干扰无冷却",
	 "干扰改孙策大招",
	 "孙策大招无CD+无耗蓝",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS28()
end
if SN[2]==true then
	 HS30()
end
if SN[3]==true then
	 HS247()
end
if SN[4]==true then
	 HS248()
end
if SN[5]==true then
	 HS250()
end
if SN[6]==true then
	 HS34()
end
if SN[7]==true then
	 HS35()
end
if SN[8]==true then
	 HS235()
end
if SN[9]==true then
	 HS32()
end
FX1=0
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80115;120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("120000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_DWORD)
	 gg.toast("🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕")
	 gg.clearResults()
end

function HS30()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80104;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("🖕🖕🖕🖕🖕🖕🖕🖕")
	 gg.clearResults()
end

function HS247()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80104;80105;80107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12330", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS248()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12330;50000;0;145872090;511761066::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS250()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("12330;145872090;511761066;12000;12000;12000;12000;12000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS34()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80105;90000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("90000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("牛逼")
	 gg.clearResults()
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("80105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("51030", gg.TYPE_DWORD)
	 gg.toast("🖕")
	 gg.clearResults()
end

function HS235()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51030;40000;100;15::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40000;100;15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS32()
	 Main0()
end

function Main36()
SN = gg.multiChoice({
	 "铠技能无需学习",
	 "铠大招无冷却+不耗蓝",
	 "铠大招伤害2499",
	 "铠大招杀队友［局内开］",
	 "铠二技能杀队友「局内开」",
	 "铠二技能无冷却+无后摇+不耗蓝",
	 "铠一技能无冷却+不耗蓝",
	 "铠一技能伤害2500",
	 "铠开局1万血+888攻击防御+超级移速+暴击效果",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS37()
end
if SN[2]==true then
	 HS38()
end
if SN[3]==true then
	 HS39()
end
if SN[4]==true then
	 HS48()
end
if SN[5]==true then
	 HS344()
end
if SN[6]==true then
	 HS40()
end
if SN[7]==true then
	 HS41()
end
if SN[8]==true then
	 HS42()
end
if SN[9]==true then
	 HS278()
end
if SN[10]==true then
	 HS46()
end
FX1=0
end

function HS37()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19310;19320;19330;440;19300;1;1;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS38()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19330;60000;-139685623;165999078;120;10::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000;120;10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♥开启成功♥")
	 gg.clearResults()
end

function HS39()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("193300;300::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2499", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS48()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("193300;256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("🖕成功🖕")
	 gg.clearResults()
end

function HS344()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("193200;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS40()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19320;6000;0;1547866400;986363288;50;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;0;50;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕开启成功🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕🖕")
	 gg.clearResults()
end

function HS41()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19310;10000;60;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000;60;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS42()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("193100;150::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2500", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♥")
	 gg.clearResults()
end

function HS278()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3387;176;107;50;3900;10000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3387;176;107;50;3900;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("18999;888;888;888;10500;15000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS46()
	 Main0()
end

function Main122()
SN = gg.multiChoice({
	 "诸葛亮技能无需学习",
	 "诸葛亮大招2299伤害",
	 "诸葛亮大招全图范围",
	 "诸葛亮大招无CD+不耗蓝",
	 "诸葛亮大招杀队友+可以打塔［局内开］［元气弹在飞行过程中击中队友才算］",
	 "诸葛亮大招改20发［局内开］",
	 "诸葛亮一技能与蒙括士兵共用［配合上装备功能里的辉月技能改蒙括大招］",
	 "诸葛亮二技能无CD+不耗蓝+无后摇",
	 "诸葛亮一技能无后摇+无CD+无耗蓝",
	 "诸葛亮一技能杀队友［局内开］",
	 "诸葛亮开局18999血+688攻击防御+超级移速",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS324()
end
if SN[2]==true then
	 HS123()
end
if SN[3]==true then
	 HS125()
end
if SN[4]==true then
	 HS126()
end
if SN[5]==true then
	 HS306()
end
if SN[6]==true then
	 HS165()
end
if SN[7]==true then
	 HS251()
end
if SN[8]==true then
	 HS128()
end
if SN[9]==true then
	 HS138()
end
if SN[10]==true then
	 HS212()
end
if SN[11]==true then
	 HS130()
end
if SN[12]==true then
	 HS133()
end
FX1=0
end

function HS324()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("490;19001;19002;1;1;1;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS123()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("280192265;-902047863;450", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("450", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2299", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS125()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-1790224518;5682734;10000;10000;10000;10000;12500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000;12500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("139999", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS126()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19030;35000;120;20::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("35000;120;20", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS306()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("190300;256;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS165()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("190350;-1;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS251()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("19010", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS128()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1500;0;-1728845155;-1421190894;40::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1500;0;40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS138()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("8000;0;378798732;-1450281092;60;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;0;60;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS212()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("190100;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS130()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("567736605;-1529874973;3250;156;0;87;50;3500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3250;156;0;87;50;3500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("18999;688;688;688;688;10800", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS133()
	 Main0()
end

function Main222()
SN = gg.multiChoice({
	 "孙悟空大招无CD+无后摇+无耗蓝",
	 "孙悟空大招     2.8倍范围",
	 "孙悟空大招杀队友［局内开］",
	 "孙悟空大招可移动释放「局内开」",
	 "孙悟空二技能无CD+无后摇+无耗蓝",
	 "孙悟空一技能无CD+无耗蓝",
	 "孙悟空开局2万血+688攻击+388防御+加移速+45%暴击率+满暴击效果",
	 "孙悟空无限棍［局内开］",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS223()
end
if SN[2]==true then
	 HS224()
end
if SN[3]==true then
	 HS233()
end
if SN[4]==true then
	 HS322()
end
if SN[5]==true then
	 HS225()
end
if SN[6]==true then
	 HS226()
end
if SN[7]==true then
	 HS229()
end
if SN[8]==true then
	 HS311()
end
if SN[9]==true then
	 HS228()
end
FX1=0
end

function HS223()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16730;40000;0;-2102553431;-1788296468;100;15::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40000;0;100;15", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS224()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16730;-2102553431;-1788296468;4000;4000;4000;4000;4000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS233()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("167300;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS322()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("800;1;1;-2,102,553,431;-1,788,296,468::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("75", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS225()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16720;8000;0;-1168712920;-1177119596;50;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;0;50;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS226()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16710;12000;818138017;148861211;70;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12000;70;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;0;0", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS229()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-994982739;189300535;3293;167;94;50;3800;2000;5000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3293;167;94;50;3800;2000;5000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20000;688;388;388;10500;4500;15000", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS311()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("16705", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS228()
	 Main0()
end

function Main238()
SN = gg.multiChoice({
	 "鲁班大招无CD+无后摇+无耗蓝",
	 "鲁班二技能无CD+无后摇+无耗蓝",
	 "鲁班一技能无CD+无后摇+无耗蓝",
	 "鲁班一技能杀队友［局内开］",
	 "鲁班二技能杀队友［局内开］",
	 "鲁班召唤蒙括士兵共用技能［配合上装备功能里的辉月技能改蒙括大招］",
	 "鲁班开局30万血+688攻击+488防御+超级移速",
	 "-----------------分割线-----------------",
	 "鲁班释放蒙括士兵［按蒙括大招释放］［配合上装备功能里的辉月技能改蒙括大招］［士兵释放马可波罗大招］［第一步］",
	 "鲁班释放蒙括士兵［按蒙括大招释放］［配合上装备功能里的辉月技能改蒙括大招］［士兵释放马可波罗大招］［第二步］",
	 "鲁班释放蒙括士兵［按蒙括大招释放］［配合上装备功能里的辉月技能改蒙括大招］［士兵释放马可波罗大招］［第三步］",
	 "鲁班释放蒙括士兵［按蒙括大招释放］［配合上装备功能里的辉月技能改蒙括大招］［士兵释放马可波罗大招］［第四步］",
	 "鲁班释放蒙括士兵杀队友［鲁班需要20万血以上否则会被自己的蒙括士兵击杀］［局内开］",
	 "返回主页",
}, nil, "释放蒙括士兵功能和召唤蒙括士兵共用技能\n只能开一个      \n释放蒙括士兵之后，鲁班放个二技能或一技能\n就可以把蒙括士兵丢出去了\n")
if SN[1]==true then
	 HS239()
end
if SN[2]==true then
	 HS240()
end
if SN[3]==true then
	 HS274()
end
if SN[4]==true then
	 HS309()
end
if SN[5]==true then
	 HS308()
end
if SN[6]==true then
	 HS241()
end
if SN[7]==true then
	 HS242()
end
if SN[8]==true then
	 HS269()
end
if SN[9]==true then
	 HS270()
end
if SN[10]==true then
	 HS271()
end
if SN[11]==true then
	 HS272()
end
if SN[12]==true then
	 HS273()
end
if SN[13]==true then
	 HS275()
end
if SN[14]==true then
	 HS243()
end
FX1=0
end

function HS239()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11220;40000;0;1002262996;1711325466;100::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40000;0;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS240()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11230;15000;0;-1076025662;391747435;70;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15000;0;70;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS274()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("11210;7000;0;310499208;1361193651;50;5::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000;0;50;5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS309()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("112100;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS308()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("112300;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS241()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11230", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS242()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("424002004;1219900093;3401;174;88;50;3600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3401;174;88;50;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("300000;688;488;488;10600", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS269()
	 Main0()
end

function HS270()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("6000;1102599477;1304353354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;1102599477;1304353354;6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110;135854794;327243424;110", gg.TYPE_DWORD)
	 gg.toast("第一步")
	 gg.clearResults()
end

function HS271()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1126973789;907146179", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1126973789;907146179", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-634275771;-25163845", gg.TYPE_DWORD)
	 gg.toast("第二步")
	 gg.clearResults()
end

function HS272()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52753", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11320", gg.TYPE_DWORD)
	 gg.toast("第三步")
	 gg.clearResults()
end

function HS273()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24010", gg.TYPE_DWORD)
	 gg.toast("第四步")
	 gg.clearResults()
end

function HS275()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("132300;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS243()
	 Main0()
end

function Main252()
SN = gg.multiChoice({
	 "庄周二技能无限释放后羿大招［释放之后不能动了，需要用闪现移动］",
	 "庄周二技能无限释放后羿大招［关闭］［局外关有效］",
	 "庄周召唤蒙括大招的兵共用后羿大招［配合上装备功能里的辉月技能改蒙括大招］",
	 "-----------------分割线-----------------",
	 "庄周二技能无限百里二技能连发",
	 "庄周百里二技能无限连发可移动［局内开］",
	 "庄周召唤蒙括大招的兵共用百里二技能［配合上装备功能里的辉月技能改蒙括大招］［开这个别把百里二技能杀队友开了，否则自己被自己的兵杀了］",
	 "庄周开局14万血+488攻击+188防御+超级移速",
	 "返回主页",
}, nil, "庄周的功能字有点多，看一遍熟悉一下就行了")
if SN[1]==true then
	 HS253()
end
if SN[2]==true then
	 HS256()
end
if SN[3]==true then
	 HS264()
end
if SN[4]==true then
	 HS262()
end
if SN[5]==true then
	 HS258()
end
if SN[6]==true then
	 HS259()
end
if SN[7]==true then
	 HS263()
end
if SN[8]==true then
	 HS254()
end
if SN[9]==true then
	 HS255()
end
FX1=0
end

function HS253()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("6000;1102599477;1304353354​", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;1102599477;1304353354​;6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50;1222745835;-720575179​;50", gg.TYPE_DWORD)
	 gg.toast("★开启成功★")
	 gg.clearResults()
end

function HS256()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("50;1222745835;-720575179​;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("50;1222745835;-720575179​;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6000;1102599477;1304353354​;6000", gg.TYPE_DWORD)
	 gg.toast("关闭")
	 gg.clearResults()
end

function HS264()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11320", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS262()
	 Main0()
end

function HS258()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("6000;1102599477;1304353354​", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000;1102599477;1304353354​;6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("45;-2051403109;1243391857;45", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS259()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2000;1;0;1;0;-2051403109;1243391857::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS263()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52750;52760;52790", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11320", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS254()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-194886142;222244539;3146;170;150;50;3900::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3146;170;150;50;3900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("140000;488;188;188;8000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS255()
	 Main0()
end

function Main313()
SN = gg.multiChoice({
	 "百里二技能无限数量「数量为1时开」［局内开］",
	 "百里二技能可移动释放［局内开］",
	 "百里一技能无CD+无后摇+无耗蓝",
	 "百里二技能无CD+无后摇+无耗蓝",
	 "百里大招无CD+无后摇+无耗蓝",
	 "百里二技能18888伤害",
	 "百里二技能发射子弹99发「局内开」",
	 "百里二技能改散弹枪「局内开」［配合上二技能99发］",
	 "百里二技能杀队友「局内开」",
	 "百里开局3万血+888攻击防御+超级移速",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS314()
end
if SN[2]==true then
	 HS316()
end
if SN[3]==true then
	 HS320()
end
if SN[4]==true then
	 HS319()
end
if SN[5]==true then
	 HS321()
end
if SN[6]==true then
	 HS323()
end
if SN[7]==true then
	 HS325()
end
if SN[8]==true then
	 HS326()
end
if SN[9]==true then
	 HS327()
end
if SN[10]==true then
	 HS317()
end
if SN[11]==true then
	 HS318()
end
FX1=0
end

function HS314()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1;8;8;68;6;1;16,000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS316()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2,000;1;1;-2,051,403,109::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS320()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1,500;256;660,124,780;-156,281,026;30::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1500;256;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS319()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1,500;256;-2,051,403,109;1,243,391,857;60::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1500;256;60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS321()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("19630;25,000;1;774,208,144;-711,422,204;100::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("25000;1;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1;0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS323()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("196200;600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("18888", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS325()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("65,536;1,610,612,736;-1;1;-1,420,754,562;1,974,699,135::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS326()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("256;256;256;256;256;256;256;2;-1;55,000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS327()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("196200;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS317()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-137834663;1830758588;3019;39;188;94;50;3500::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3019;188;94;50;3500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30000;888;888;888;9900", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS318()
	 Main0()
end

function Main49()
SN = gg.multiChoice({
	 "5V5蓝方一塔改血量49999",
	 "5V5蓝方二塔改49999血量",
	 "5V5蓝方改水晶血量49999",
	 "5V5红方一塔改49999血量",
	 "5V5红方二塔改血量49999",
	 "5V5红方水晶改49999血量",
	 "返回主页",
}, nil, "↓↓↓随便开↓↓↓")
if SN[1]==true then
	 HS50()
end
if SN[2]==true then
	 HS51()
end
if SN[3]==true then
	 HS52()
end
if SN[4]==true then
	 HS53()
end
if SN[5]==true then
	 HS54()
end
if SN[6]==true then
	 HS57()
end
if SN[7]==true then
	 HS172()
end
FX1=0
end

function HS50()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("883478558;820635318;7000;14000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000;14000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("49999", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS51()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("883478558;820635318;9000;12000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("49999", gg.TYPE_DWORD)
	 gg.toast("★开启成功★")
	 gg.clearResults()
end

function HS52()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-2020988592;886880082;9000;4000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;4000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("49999", gg.TYPE_DWORD)
	 gg.toast("—开启成功—")
	 gg.clearResults()
end

function HS53()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1040504247;1406309351;7000;14000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7000;14000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("49999", gg.TYPE_DWORD)
	 gg.toast("✘开启成功✘")
	 gg.clearResults()
end

function HS54()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1040504247;1406309351;9000;12000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("49999", gg.TYPE_DWORD)
	 gg.toast("±开启成功±")
	 gg.clearResults()
end

function HS57()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("845179051;-1605270450;9000;4000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000;4000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("49999", gg.TYPE_DWORD)
	 gg.toast("⑧开启成功⑧")
	 gg.clearResults()
end

function HS172()
	 Main0()
end

function Main58()
SN = gg.multiChoice({
	 "百里二技能拉人［局内开］",
	 "澜无限刮痧",
	 "马超无限刮痧（第一步）",
	 "马超无限刮痧（第二步）",
	 "瑶大招骑敌人+大招无CD",
	 "返回主页",
}, nil, "↓↓↓垃圾功能，P用没有↓↓↓")
if SN[1]==true then
	 HS261()
end
if SN[2]==true then
	 HS59()
end
if SN[3]==true then
	 HS60()
end
if SN[4]==true then
	 HS61()
end
if SN[5]==true then
	 HS163()
end
if SN[6]==true then
	 HS69()
end
FX1=0
end

function HS261()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("196290", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("196290", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("60059", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS59()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("52805", gg.TYPE_DWORD)
	 gg.toast("✘开启成功✘")
	 gg.clearResults()
end

function HS60()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("51800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 51806}})
	 end
	 gg.toast("★开启50％★")
	 gg.clearResults()
end

function HS61()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51806;1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("★开启100%★")
	 gg.clearResults()
end

function HS163()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("15000;530,045,370;407,299,981;7,800;2,052::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15000;2052", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;252", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS69()
	 Main0()
end

function Main71()
SN = gg.multiChoice({
	 "孙策改冲击车［第一步］",
	 "孙策改冲击车［第二步］",
	 "冲击车技能无需学习",
	 "冲击车一技能无CD",
	 "冲击车二技能无CD",
	 "冲击车大招无CD",
	 "冲击车开局9999血",
	 "冲击车开局588物理攻击+588防御",
	 "冲击车开局加移速",
	 "冲击车一技能杀队友［局内开］",
	 "冲击车二技能杀队友［局内开］",
	 "冲击车大招杀队友［局内开］",
	 "返回主页",
	 "-----------------分割线-----------------",
	 "后羿改炮筒机关人［第一步］",
	 "后羿改炮筒机关人［第二步］",
	 "炮筒机关人开局2499法术攻击［必须开，否则技能没伤害］",
	 "炮筒机关人开局9999血",
	 "炮筒机关人开局588防御+588物理攻击",
	 "炮筒机关人开局加移速",
	 "返回主页",
	 "-----------------分割线-----------------",
	 "成吉思汗改坦克炮管［第一步］",
	 "成吉思汗改坦克炮管［第二步］",
	 "坦克炮管开局9999血",
	 "坦克炮管开局688攻击＋688防御",
	 "坦克炮管开局加移速",
	 "返回主页",
	 "-----------------分割线-----------------",
	 "蒙犽改符号机关人［第一步］",
	 "蒙犽改符号机关人［第二步］",
	 "符号机关人技能无需学习",
	 "符号机关人开局9999血",
	 "符号机关人开局588攻击+588防御",
	 "符号机关人开局加移速",
	 "符号机关人一技能无CD",
	 "符号机关人二技能技能无CD",
	 "符号机关人大招无CD",
	 "返回主页",
}, nil, "↓↓↓个人觉得很好玩↓↓↓")
if SN[1]==true then
	 HS72()
end
if SN[2]==true then
	 HS73()
end
if SN[3]==true then
	 HS85()
end
if SN[4]==true then
	 HS74()
end
if SN[5]==true then
	 HS106()
end
if SN[6]==true then
	 HS76()
end
if SN[7]==true then
	 HS82()
end
if SN[8]==true then
	 HS83()
end
if SN[9]==true then
	 HS84()
end
if SN[10]==true then
	 HS80()
end
if SN[11]==true then
	 HS78()
end
if SN[12]==true then
	 HS79()
end
if SN[13]==true then
	 HS81()
end
if SN[14]==true then
	 HS107()
end
if SN[15]==true then
	 HS90()
end
if SN[16]==true then
	 HS91()
end
if SN[17]==true then
	 HS95()
end
if SN[18]==true then
	 HS92()
end
if SN[19]==true then
	 HS93()
end
if SN[20]==true then
	 HS94()
end
if SN[21]==true then
	 HS102()
end
if SN[22]==true then
	 HS115()
end
if SN[23]==true then
	 HS116()
end
if SN[24]==true then
	 HS117()
end
if SN[25]==true then
	 HS118()
end
if SN[26]==true then
	 HS119()
end
if SN[27]==true then
	 HS120()
end
if SN[28]==true then
	 HS121()
end
if SN[29]==true then
	 HS140()
end
if SN[30]==true then
	 HS141()
end
if SN[31]==true then
	 HS142()
end
if SN[32]==true then
	 HS143()
end
if SN[33]==true then
	 HS144()
end
if SN[34]==true then
	 HS145()
end
if SN[35]==true then
	 HS146()
end
if SN[36]==true then
	 HS147()
end
if SN[37]==true then
	 HS148()
end
if SN[38]==true then
	 HS149()
end
if SN[39]==true then
	 HS150()
end
FX1=0
end

function HS72()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-1893047316;999144221;917860256;-1486222198", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1893047316;999144221;917860256;-1486222198", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1150123504;-619555023;1578226679;1144411122", gg.TYPE_DWORD)
	 gg.toast("♣开启50%♣")
	 gg.clearResults()
end

function HS73()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("51000;51010;51020;51030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("51000;51010;51020;51030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("878040;878010;878030;878020", gg.TYPE_DWORD)
	 gg.toast("♣开启100%♣")
	 gg.clearResults()
end

function HS85()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("878030;16777217;16777217;16777217::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777217;16777217;16777217", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS74()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("878010;6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS106()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("878020;9000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS76()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("878030;12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS82()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3320;80;151;97;50;3800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3320", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS83()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;80;151;97;50;3800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("151;97;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("588", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS84()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;80;588;588;588;3800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6100", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS80()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("878010;256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS78()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("878030;256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS79()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("878020;256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS81()
	 Main0()
end

function HS107()
	 Main0()
end

function HS90()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("659865912;-832983685;489118888;2034084329", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("659865912;-832983685;489118888;2034084329", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("508917976;1829810771;1843023534;-623566328", gg.TYPE_DWORD)
	 gg.toast("♣开启50%♣")
	 gg.clearResults()
end

function HS91()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("16910;16920;16930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16910;16920;16930", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("878110;878120;878230", gg.TYPE_DWORD)
	 gg.toast("♣开启100%♣")
	 gg.clearResults()
end

function HS95()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3182;41;175;0;86::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2499", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS92()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3182;41;175;86;50;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3182", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS93()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;41;175;86;50;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("175;86;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("588", gg.TYPE_DWORD)
	 gg.toast("★开启成功★")
	 gg.clearResults()
end

function HS94()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;41;588;588;588;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6100", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS102()
	 Main0()
end

function HS115()
	 Main0()
end

function HS116()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-1649809036;-638536263;517679912;69975704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-1649809036;-638536263;517679912;69975704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1392567813;207577886;334432732;-2059333356", gg.TYPE_DWORD)
	 gg.toast("♣开启50%♣")
	 gg.clearResults()
end

function HS117()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("17710;17720;17730::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("17710;17720;17730", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("870110;870120;870130", gg.TYPE_DWORD)
	 gg.toast("♣开启100%♣")
	 gg.clearResults()
end

function HS118()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3027;37;184;94;50;3700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3027", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS119()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;37;184;94;50;3700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("184;94;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("688", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS120()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;37;688;688;688;3700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7100", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS121()
	 Main0()
end

function HS140()
	 Main0()
end

function HS141()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("450739691;-1942868959;1255972929;689905332", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("450739691;-1942868959;1255972929;689905332", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1032770530;1622932001;-1677621057;-1929364950", gg.TYPE_DWORD)
	 gg.toast("♣开启50%♣")
	 gg.clearResults()
end

function HS142()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("52410;52420;52430;52403::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52410;52420;52430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8785120;8785130;8785140", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS143()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("8785001;16777217;16777217;16777217::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16777217", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS144()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("3235;40;151;90;50;3600::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3235", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("♣开启成功♣")
	 gg.clearResults()
end

function HS145()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;40;151;90;50;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("151;90;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("588", gg.TYPE_DWORD)
	 gg.toast("开启成功(||๐_๐)")
	 gg.clearResults()
end

function HS146()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("9999;40;588;588;588;3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6200", gg.TYPE_DWORD)
	 gg.toast("开启成功(ー ー゛)")
	 gg.clearResults()
end

function HS147()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("8785120;10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("▄█▀█●开启成功⠉̫⃝⠉̮⃝⠉̭⃞⠒̱⃝⌄̈⃝ᵕ̈ ⍢⃞⍥⃞ ⍤⃞⍨⃞ ⍩⃞")
	 gg.clearResults()
end

function HS148()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("8785130;8000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("▄█▀█●开启成功▄█▀█●")
	 gg.clearResults()
end

function HS149()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("8785140;6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("▄█▀█●开启成功▄█▀█●")
	 gg.clearResults()
end

function HS150()
	 Main0()
end

function Main151()
SN = gg.multiChoice({
	 "关羽改冲锋技能",
	 "关羽冲锋一技能无后摇+无CD",
	 "关羽冲锋大招无后摇+无CD",
	 "关羽开局3万血+888攻击防御+超级移速",
	 "返回主页",
	 "-----------------分割线-----------------",
	 "盘古改特殊技能",
	 "无情撕裂无CD",
	 "迅捷冲刺无CD",
	 "黑洞无CD",
	 "复仇反击无CD",
	 "盘古开局加血+加防御+加攻击+超级移速",
	 "返回主页",
}, nil, "↓↓↓个人觉得很好玩↓↓↓")
if SN[1]==true then
	 HS153()
end
if SN[2]==true then
	 HS154()
end
if SN[3]==true then
	 HS155()
end
if SN[4]==true then
	 HS280()
end
if SN[5]==true then
	 HS158()
end
if SN[6]==true then
	 HS159()
end
if SN[7]==true then
	 HS205()
end
if SN[8]==true then
	 HS207()
end
if SN[9]==true then
	 HS208()
end
if SN[10]==true then
	 HS209()
end
if SN[11]==true then
	 HS210()
end
if SN[12]==true then
	 HS206()
end
if SN[13]==true then
	 HS211()
end
FX1=0
end

function HS153()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("755302928;174051489;14010;14020;14030;14000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14010;14020;14030", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("24010;24030;24020", gg.TYPE_DWORD)
	 gg.toast("★开启成功★")
	 gg.clearResults()
end

function HS154()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("8000;0;-634275771;-25163845::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1", gg.TYPE_DWORD)
	 gg.toast("🖕🖕开启成功🖕🖕")
	 gg.clearResults()
end

function HS155()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("70000;0;82222965;714234189::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("70000;0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0;-1", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS280()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("755302928;174051489;3451;53;170;101;50;3800::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3451;170;101;50;3800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("30000;888;888;588;9900", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS158()
	 Main0()
end

function HS159()
	 Main0()
end

function HS205()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-175551188;350359296;52910;52920;52940;52930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("52910;52920;52940;52930", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("783210;783200;783000;783500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS207()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("783000;60000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS208()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("783200;60000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS209()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("783500;60000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS210()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("783210;60000::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS206()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("-175551188;350359296;3439;160;94;50;3900::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3439;160;94;50;3900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12999;588;488;488;9900", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS211()
	 Main0()
end

function HS114()
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