function Main0()
  SN = gg.choice({
    "皮肤美化区",
    "飞天功能区",
    "画面区",
    "解锁物品",
    "秒拆方块区",
    "变态功能区",
    "退出脚本"
  }, nil, "玩机家园免费分享www.wjjy8.com")
  if SN == 1 then
    Main1()
  end
  if SN == 2 then
    Main11()
  end
  if SN == 3 then
    Main18()
  end
  if SN == 4 then
    Main27()
  end
  if SN == 5 then
    Main36()
  end
  if SN == 6 then
    Main45()
  end
  if SN == 7 then
    HS72()
  end
  FX1 = 0
end
function Main1()
  SN = gg.multiChoice({
    "妮妮变成熊孩子（单机）",
    "卡卡变成小淘气（单机）",
    "林千树变远古巨人",
    "星灵变成远古黑龙",
    "雪球球变成红蜘蛛（可联机）",
    "叶小龙变成二郎神（可联机）",
    "定制装扮变成嘟嘟波波（单机）",
    "返回主页",
    "退出脚本"
  }, nil, "想要美化，哪个角色就使用哪个角色点击开启就可以了？皮肤修改就不需点击使用在搜索。")
  if SN[1] == true then
    HS2()
  end
  if SN[2] == true then
    HS3()
  end
  if SN[3] == true then
    HS4()
  end
  if SN[4] == true then
    HS5()
  end
  if SN[5] == true then
    HS6()
  end
  if SN[6] == true then
    HS7()
  end
  if SN[7] == true then
    HS8()
  end
  if SN[8] == true then
    HS9()
  end
  if SN[9] == true then
    HS10()
  end
  FX1 = 0
end
function HS2()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-2,068,059,896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2,068,059,896", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-2,068,060,154", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-2,068,059,902", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-2,068,059,902", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-2,068,059,894", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("140055", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("140055", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100055", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS5()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("140058", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("140058", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100008", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS6()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("140059", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("140059", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("140062", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS7()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("140024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("140024", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("140025", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS8()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3,211,264", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3,211,264", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8800", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS9()
  Main0()
end
function HS10()
  os.exit()
end
function Main11()
  SN = gg.choice({
    "人物连跳（新代码可以随便走动，不闪退）",
    "锁定高度",
    "土遁穿墙飞行",
    "增加高度（不能跟上面的一起开）",
    "返回主页",
    "退出脚本"
  }, nil, "这里可以飞天，联机可用。")
  if SN == 1 then
    HS12()
  end
  if SN == 2 then
    HS13()
  end
  if SN == 3 then
    HS14()
  end
  if SN == 4 then
    HS15()
  end
  if SN == 5 then
    HS16()
  end
  if SN == 6 then
    HS17()
  end
  FX1 = 0
end
function HS12()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1;721,747,968", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 1
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS13()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1,057,300,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1,057,300,152", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 1
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS14()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-F;60;180::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = -1500000000
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS15()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1F;60;180::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = -900
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS16()
  Main0()
end
function HS17()
  os.exit()
end
function Main18()
  SN = gg.multiChoice({
    "三角透视【开启】",
    "三角透视【关闭】",
    "全图透视",
    "改变画面",
    "人物透视",
    "天空变黑（不要跟人物透视一起开）",
    "返回主页",
    "退出脚本"
  }, nil, "透视只能开一个")
  if SN[1] == true then
    HS19()
  end
  if SN[2] == true then
    HS20()
  end
  if SN[3] == true then
    HS21()
  end
  if SN[4] == true then
    HS22()
  end
  if SN[5] == true then
    HS23()
  end
  if SN[6] == true then
    HS24()
  end
  if SN[7] == true then
    HS25()
  end
  if SN[8] == true then
    HS26()
  end
  FX1 = 0
end
function HS19()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS20()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_DWORD)
  gg.toast("关闭成功，恒星制作")
  gg.clearResults()
end
function HS21()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("196,608D;65,538D;65,536D;2D;196,610D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 0
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS22()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.77777779102;0.73306429386", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.77777779102;0.73306429386", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 10
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS23()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("10;30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS24()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("10;30000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS25()
  Main0()
end
function HS26()
  os.exit()
end
function Main27()
  SN = gg.choice({
    "解锁火箭背包",
    "解锁公主床",
    "解锁弩",
    "解锁火箭筒",
    "解锁坚冰",
    "解锁混凝土",
    "返回主页",
    "退出脚本"
  }, nil, "如果不能用那就换地图")
  if SN == 1 then
    HS28()
  end
  if SN == 2 then
    HS29()
  end
  if SN == 3 then
    HS30()
  end
  if SN == 4 then
    HS31()
  end
  if SN == 5 then
    HS32()
  end
  if SN == 6 then
    HS33()
  end
  if SN == 7 then
    HS34()
  end
  if SN == 8 then
    HS35()
  end
  FX1 = 0
end
function HS28()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12253;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS29()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("885;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS30()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12283;61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS31()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12284;62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("62", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS32()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("963;39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("39", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS33()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("960;36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("36", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS34()
  Main0()
end
function HS35()
  os.exit()
end
function Main36()
  SN = gg.choice({
    "草块土块秒拆",
    "秒拆岩石",
    "秒拆岩石块",
    "秒拆细沙块",
    "秒拆果木",
    "秒拆白杨树",
    "返回主页",
    "退出脚本"
  }, nil, "")
  if SN == 1 then
    HS37()
  end
  if SN == 2 then
    HS38()
  end
  if SN == 3 then
    HS39()
  end
  if SN == 4 then
    HS40()
  end
  if SN == 5 then
    HS41()
  end
  if SN == 6 then
    HS42()
  end
  if SN == 7 then
    HS43()
  end
  if SN == 8 then
    HS44()
  end
  FX1 = 0
end
function HS37()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("101D;100D;3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS38()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("104D;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS39()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("505D;12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS40()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("106D;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS41()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("200D;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS42()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("202D;7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS43()
  Main0()
end
function HS44()
  os.exit()
end
function Main45()
  SN = gg.choice({
    "创造背包（创造开启）",
    "创造背包（生存开启）",
    "无限物品",
    "无限血百万星星",
    "神秘功能",
    "人物加速",
    "野人星星",
    "鸡星星",
    "人物失重（跳高技能）",
    "陆行鸟变成三级麒麟",
    "超级失重",
    "离开地球（速度慢）",
    "离开地球（快速版）",
    "能量剑秒杀",
    "冲锋枪秒杀",
    "石矛秒杀",
    "能量剑无冷却",
    "木斧头秒杀",
    "木稿子秒杀",
    "链锯秒杀",
    "链锯无冷却",
    "钻头秒杀",
    "钻头无冷却",
    "返回主页",
    "退出脚本"
  }, nil, "创造微博打开一次创造背包搜索，然后到生存里关掉就可以了。离开地球失重，都只能开一个。")
  if SN == 1 then
    HS46()
  end
  if SN == 2 then
    HS47()
  end
  if SN == 3 then
    HS48()
  end
  if SN == 4 then
    HS49()
  end
  if SN == 5 then
    HS50()
  end
  if SN == 6 then
    HS51()
  end
  if SN == 7 then
    HS52()
  end
  if SN == 8 then
    HS53()
  end
  if SN == 9 then
    HS54()
  end
  if SN == 10 then
    HS55()
  end
  if SN == 11 then
    HS56()
  end
  if SN == 12 then
    HS57()
  end
  if SN == 13 then
    HS58()
  end
  if SN == 14 then
    HS59()
  end
  if SN == 15 then
    HS60()
  end
  if SN == 16 then
    HS61()
  end
  if SN == 17 then
    HS62()
  end
  if SN == 18 then
    HS63()
  end
  if SN == 19 then
    HS64()
  end
  if SN == 20 then
    HS66()
  end
  if SN == 21 then
    HS67()
  end
  if SN == 22 then
    HS68()
  end
  if SN == 23 then
    HS69()
  end
  if SN == 24 then
    HS70()
  end
  if SN == 25 then
    HS71()
  end
  FX1 = 0
end
function HS46()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("655360;16777472;1920;1080", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16777472", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("16777472", gg.TYPE_DWORD)
  gg.toast("搜索完成，到生存里开第二个。")
  gg.clearResults()
end
function HS47()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("655360;16777472;1920;1080", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16777216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("16777472", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS48()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1000;1001;1002;1003;1004;1005;945804461", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("945804461", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 945804461
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS49()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("100;100;0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100;0.00005336541", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 9999
      }
    })
  end
  _FOR_.toast("开启成功")
  gg.clearResults()
end
function HS50()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-1;10;-1;945804460D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS51()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1,120,403,456D;100.0F;0.5F;0.80000001192F;1.29999995232F;3,600D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.80000001192F;1.29999995232F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("250", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS52()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3101;12526;13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS53()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("3400;12518;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS54()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("8;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS55()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-14;3439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3437", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS56()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("8;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.11", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS57()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("8;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-10", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS58()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("8;4::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-200", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS59()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005D;12005D;40W", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS60()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("15000D;20", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS61()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12002D;35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS62()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("12005D;12005D;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS63()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11001D;8", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("19999", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS64()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11011D;8", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2500", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS66()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11005D;25", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("38888", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS67()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11005D;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS68()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11015D;25", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("45555", gg.TYPE_WORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS69()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("11015D;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function HS70()
  Main0()
end
function HS71()
  os.exit()
end
function HS72()
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
