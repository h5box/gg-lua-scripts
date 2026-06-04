--By Only SSTool


function Main()
  menu1 = gg.choice({
    "通用",
    "皮肤",
    "英雄合集",
    "普攻改技能",
    "全屏吸人",
    "退出"
  }, nil, "低调上分 稳住别浪")
  if menu1 == 1 then
    qt()
  end
  if menu1 == 2 then
    pfxg()
  end
  if menu1 == 3 then
    yxhj()
  end
  if menu1 == 4 then
    gjgj()
  end
  if menu1 == 5 then
    jsms()
  end
  if menu1 == 6 then
    tc()
  end
  GY = -1
end
function pfxg()
  menu1 = gg.choice({
    "指定英雄",
    "一键所有皮肤",
    "返回"
  }, nil, "知心专用整合")
  if menu1 == 1 then
    zdpf()
  end
  if menu1 == 2 then
    yjpf()
  end
  if menu1 == 3 then
    Main()
  end
  GY = -1
end
function jsms()
  menu1 = gg.choice({
    "吸人第一步",
    "珍妮吸人+防吸",
    "墨菲吸人+防吸",
    "唐尼吸人+防吸",
    "兵王防吸+防吸",
    "返回"
  }, nil, "先去训练营选择龙龟打开第一步")
  if menu1 == 1 then
    dyb()
  end
  if menu1 == 2 then
    jszy()
  end
  if menu1 == 3 then
    jszy1()
  end
  if menu1 == 4 then
    jszy2()
  end
  if menu1 == 5 then
    jszy3()
  end
  if menu1 == 6 then
    Main()
  end
  GY = -1
end
function dyb()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5.0;0.20000000298;12.0::28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5201314", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5201314;0.20000000298;12.0::28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1314520", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1D;1.5;2.0;10.0::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function jszy()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2102;2102;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2102", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2103;2103;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2101;2101;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3402
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.toast("开启成功")
end
function jszy1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2002;2002;256::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2003;2003;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2001;2001;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3402
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.toast("开启成功")
end
function jszy2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("702;702;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("702", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("703;703;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("703", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("701;701;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3402
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.toast("开启成功")
end
function jszy3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("105;105;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("107;107;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3604
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("101;101;256::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)[2].flags = gg.TYPE_DWORD
  gg.getResults(100)[2].value = 3402
  print("Edited: ", gg.setValues((gg.getResults(100))))
  gg.toast("开启成功")
end
function gjgj()
  function main0()
    SN = gg.choice({
      "兵王:9527",
      "御音师:爱丽丝",
      "游侠:珍妮",
      "飞刀:小李",
      "大骑士:唐吉可德",
      "科学狂人:唐尼",
      "钢铁之拳:布鲁",
      "杀手:墨菲",
      "魔灵骑士:哈卡",
      "时空警察:桑杰",
      "共和国之光:解放者",
      "黑夜刺客:冷月",
      "探长:诺滋",
      "逐风者:天眼王",
      "毁灭王:阿甘",
      "小天使:希尔",
      "赌王:史蒂芬",
      "忍者:千手",
      "黎明骑士:萨隆",
      "狩猎者:孙绫",
      "教皇:无邪",
      "机甲王:风无痕",
      "蛇灵:伊芙娜",
      "毁灭者:斯普林特",
      "未来战士：伊泽",
      "返回上一页"
    }, nil, "注:每个英雄普攻只能改一次！！！")
    if SN == 1 then
      Main1()
    end
    if SN == 2 then
      Main5()
    end
    if SN == 3 then
      Main8()
    end
    if SN == 4 then
      Main12()
    end
    if SN == 5 then
      Main16()
    end
    if SN == 6 then
      Main19()
    end
    if SN == 7 then
      Main22()
    end
    if SN == 8 then
      Main26()
    end
    if SN == 9 then
      Main30()
    end
    if SN == 10 then
      Main34()
    end
    if SN == 11 then
      Main37()
    end
    if SN == 12 then
      Main40()
    end
    if SN == 13 then
      Main43()
    end
    if SN == 14 then
      Main46()
    end
    if SN == 15 then
      Main51()
    end
    if SN == 16 then
      Main54()
    end
    if SN == 17 then
      Main59()
    end
    if SN == 18 then
      Main64()
    end
    if SN == 19 then
      Main68()
    end
    if SN == 20 then
      Main72()
    end
    if SN == 21 then
      Main76()
    end
    if SN == 22 then
      Main81()
    end
    if SN == 23 then
      Main87()
    end
    if SN == 24 then
      Main92()
    end
    if SN == 25 then
      ezjn()
    end
    if SN == 26 then
      HS95()
    end
    FX1 = 0
  end
  function ezjn()
    SN = gg.multiChoice({
      "普攻改位移",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      ezjn1()
    end
    if SN[2] == true then
      ezjn2()
    end
    if SN[3] == true then
      HS4()
    end
    FX1 = 0
  end
  function Main1()
    SN = gg.multiChoice({
      "普攻改榴弹",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS2()
    end
    if SN[2] == true then
      HS3()
    end
    if SN[3] == true then
      HS4()
    end
    FX1 = 0
  end
  function HS2()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10101;101::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("105", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS3()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10101;101::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("106", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS4()
    main0()
  end
  function Main5()
    SN = gg.choice({
      "普攻改吸人",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS6()
    end
    if SN == 2 then
      HS7()
    end
    FX1 = 0
  end
  function HS6()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10501;501::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("506", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0.2;12;0.5;2;20::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.2;12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("12000", gg.TYPE_FLOAT)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS7()
    main0()
  end
  function Main8()
    SN = gg.multiChoice({
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS9()
    end
    if SN[2] == true then
      HS10()
    end
    if SN[3] == true then
      HS11()
    end
    FX1 = 0
  end
  function ezjn1()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11901;1901::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1902", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function ezjn2()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11901;1901::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1904", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS9()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12101;2101::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2103", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS10()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12101;2101::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2104", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS11()
    main0()
  end
  function Main12()
    SN = gg.multiChoice({
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS13()
    end
    if SN[2] == true then
      HS14()
    end
    if SN[3] == true then
      HS15()
    end
    FX1 = 0
  end
  function HS13()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10301;301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("302", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS14()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10301;301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("303", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS15()
    main0()
  end
  function Main16()
    SN = gg.choice({
      "普攻改大招",
      "返回上一页"
    }, nil, "改大招没伤害，不过理论免疫死亡。")
    if SN == 1 then
      HS17()
    end
    if SN == 2 then
      HS18()
    end
    FX1 = 0
  end
  function HS17()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10601;601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("605", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS18()
    main0()
  end
  function Main19()
    SN = gg.choice({
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS20()
    end
    if SN == 2 then
      HS21()
    end
    FX1 = 0
  end
  function HS20()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10701;701::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("704", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS21()
    main0()
  end
  function Main22()
    SN = gg.multiChoice({
      "普攻改三技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS23()
    end
    if SN[2] == true then
      HS24()
    end
    if SN[3] == true then
      HS25()
    end
    FX1 = 0
  end
  function HS23()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10801;801::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("803", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS24()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10801;801::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("804", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS25()
    main0()
  end
  function Main26()
    SN = gg.multiChoice({
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS27()
    end
    if SN[2] == true then
      HS28()
    end
    if SN[3] == true then
      HS29()
    end
    FX1 = 0
  end
  function HS27()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12001;2001::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2003", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS28()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12001;2001::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2004", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS29()
    main0()
  end
  function Main30()
    SN = gg.multiChoice({
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS31()
    end
    if SN[2] == true then
      HS32()
    end
    if SN[3] == true then
      HS33()
    end
    FX1 = 0
  end
  function HS31()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12301;2301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2303", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS32()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12301;2301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2304", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS33()
    main0()
  end
  function Main34()
    SN = gg.choice({
      "普攻改二技能",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS35()
    end
    if SN == 2 then
      HS36()
    end
    FX1 = 0
  end
  function HS35()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12801;2801::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2803", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS36()
    main0()
  end
  function Main37()
    SN = gg.choice({
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS38()
    end
    if SN == 2 then
      HS39()
    end
    FX1 = 0
  end
  function HS38()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12901;2901::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2904", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS39()
    main0()
  end
  function Main40()
    SN = gg.choice({
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS41()
    end
    if SN == 2 then
      HS42()
    end
    FX1 = 0
  end
  function HS41()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("13001;3001::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("3001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("3004", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS42()
    main0()
  end
  function Main43()
    SN = gg.choice({
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS44()
    end
    if SN == 2 then
      HS45()
    end
    FX1 = 0
  end
  function HS44()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12401;2401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2404", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS45()
    main0()
  end
  function Main46()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS47()
    end
    if SN[2] == true then
      HS48()
    end
    if SN[3] == true then
      HS49()
    end
    if SN[4] == true then
      HS50()
    end
    FX1 = 0
  end
  function HS47()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11301;1301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1382", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS48()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11301;1301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1303", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS49()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11301;1301::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1304", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS50()
    main0()
  end
  function Main51()
    SN = gg.multiChoice({
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS52()
    end
    if SN[2] == true then
      HS53()
    end
    FX1 = 0
  end
  function HS52()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11601;1601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1604", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS53()
    main0()
  end
  function Main54()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS55()
    end
    if SN[2] == true then
      HS56()
    end
    if SN[3] == true then
      HS57()
    end
    if SN[4] == true then
      HS58()
    end
    FX1 = 0
  end
  function HS55()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10401;401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("403", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS56()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10401;401::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("402", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS57()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("10401;401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("404", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS58()
    main0()
  end
  function Main59()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS60()
    end
    if SN[2] == true then
      HS61()
    end
    if SN[3] == true then
      HS62()
    end
    if SN[4] == true then
      HS63()
    end
    FX1 = 0
  end
  function HS60()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11501;1501::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1503", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS61()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11501;1501::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1502", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS62()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11501;1501::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1504", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS63()
    main0()
  end
  function Main64()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS65()
    end
    if SN[2] == true then
      HS66()
    end
    if SN[3] == true then
      HS67()
    end
    FX1 = 0
  end
  function HS65()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11401;1401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1405", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS66()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11401;1401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1404", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS67()
    main0()
  end
  function Main68()
    SN = gg.multiChoice({
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS69()
    end
    if SN[2] == true then
      HS70()
    end
    if SN[3] == true then
      HS71()
    end
    FX1 = 0
  end
  function HS69()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("13401;3401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("3401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("3403", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS70()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("13401;3401::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("3401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("3404", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS71()
    main0()
  end
  function Main72()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS73()
    end
    if SN[2] == true then
      HS74()
    end
    if SN[3] == true then
      HS75()
    end
    FX1 = 0
  end
  function HS73()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12701;2701::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2703", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS74()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12701;2701::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2704", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS75()
    main0()
  end
  function Main76()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS77()
    end
    if SN[2] == true then
      HS78()
    end
    if SN[3] == true then
      HS79()
    end
    if SN[4] == true then
      HS80()
    end
    FX1 = 0
  end
  function HS77()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11701;1701::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1703", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS78()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11701;1701::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1702", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS79()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11701;1701::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1704", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS80()
    main0()
  end
  function Main81()
    SN = gg.multiChoice({
      "机甲普攻改人形大招",
      "机甲普攻改机甲大招",
      "人形态普攻改人形大招",
      "人形普攻改机甲大招",
      "返回上一页"
    }, nil, "机甲形态和人形态的代码互不影响。")
    if SN[1] == true then
      HS82()
    end
    if SN[2] == true then
      HS83()
    end
    if SN[3] == true then
      HS84()
    end
    if SN[4] == true then
      HS85()
    end
    if SN[5] == true then
      HS86()
    end
    FX1 = 0
  end
  function HS82()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11202;1205::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1204", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS83()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11202;1205::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1205", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1208", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS84()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11201;1201::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1204", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS85()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("11201;1201::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1208", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS86()
    main0()
  end
  function Main87()
    SN = gg.multiChoice({
      "普攻改一技能",
      "普攻改二技能",
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN[1] == true then
      HS88()
    end
    if SN[2] == true then
      HS89()
    end
    if SN[3] == true then
      HS90()
    end
    if SN[4] == true then
      HS91()
    end
    FX1 = 0
  end
  function HS88()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12601;2601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2603", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS89()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12601;2601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2602", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS90()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("12601;2601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("2604", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS91()
    main0()
  end
  function Main92()
    SN = gg.choice({
      "普攻改大招",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS93()
    end
    if SN == 2 then
      HS94()
    end
    FX1 = 0
  end
  function HS93()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("13601;3601::12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("3601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("3604", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS94()
    main0()
  end
  function HS95()
    Main()
  end
  while true do
    if gg.isVisible(true) then
      FX1 = nil
      gg.setVisible(false)
    end
    if FX1 == nil then
      main0()
    end
  end
end
function zdpf()
  function main0()
    SN = gg.choice({
      "兵王：9527",
      "飞刀：小李",
      "游侠：珍妮",
      "熊猫战士：潘塔",
      "忍者：千手",
      "赌王：史蒂芬",
      "教皇：无邪",
      "冰魔：娜美",
      "蛇灵：伊芙娜",
      "死亡之吻：狄安娜",
      "御音师：爱丽丝",
      "大骑士：唐吉可德",
      "科技狂人：唐尼",
      "未来战士：伊泽",
      "杀手：墨菲",
      "魔灵骑士：哈卡",
      "探长：诺滋",
      "共和国之光：解放者",
      "黎明骑士：萨隆",
      "毁灭者：斯普林特",
      "返回上一页"
    }, nil, "每个皮肤只能改一次！！！")
    if SN == 1 then
      Main1()
    end
    if SN == 2 then
      Main5()
    end
    if SN == 3 then
      Main10()
    end
    if SN == 4 then
      Main14()
    end
    if SN == 5 then
      Main19()
    end
    if SN == 6 then
      Main23()
    end
    if SN == 7 then
      Main26()
    end
    if SN == 8 then
      Main29()
    end
    if SN == 9 then
      Main33()
    end
    if SN == 10 then
      Main36()
    end
    if SN == 11 then
      Main40()
    end
    if SN == 12 then
      Main44()
    end
    if SN == 13 then
      Main48()
    end
    if SN == 14 then
      Main52()
    end
    if SN == 15 then
      Main56()
    end
    if SN == 16 then
      Main60()
    end
    if SN == 17 then
      Main63()
    end
    if SN == 18 then
      Main66()
    end
    if SN == 19 then
      Main69()
    end
    if SN == 20 then
      Main72()
    end
    if SN == 21 then
      HS75()
    end
    FX1 = 0
  end
  function Main1()
    SN = gg.choice({
      "生化战士",
      "海军陆战队",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS2()
    end
    if SN == 2 then
      HS3()
    end
    if SN == 3 then
      HS4()
    end
    FX1 = 0
  end
  function HS2()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110102", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS3()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110103", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS4()
    Main0()
  end
  function Main5()
    SN = gg.choice({
      "飞刀客",
      "龙的传人",
      "喜气洋洋",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS6()
    end
    if SN == 2 then
      HS7()
    end
    if SN == 3 then
      HS8()
    end
    if SN == 4 then
      HS9()
    end
    FX1 = 0
  end
  function HS6()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110301::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110302", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS7()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110301::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110303", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS8()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110301::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110304", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS9()
    Main0()
  end
  function Main10()
    SN = gg.choice({
      "海盗之花",
      "女警官",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS11()
    end
    if SN == 2 then
      HS12()
    end
    if SN == 3 then
      HS13()
    end
    FX1 = 0
  end
  function HS11()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112102", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS12()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112103", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS13()
    Main0()
  end
  function Main14()
    SN = gg.choice({
      "熊猫隐士",
      "浣熊阿呆",
      "福星高照",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS15()
    end
    if SN == 2 then
      HS16()
    end
    if SN == 3 then
      HS17()
    end
    if SN == 4 then
      HS18()
    end
    FX1 = 0
  end
  function HS15()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111,102", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS16()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111,103", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS17()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,101::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111,104", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS18()
    Main0()
  end
  function Main19()
    SN = gg.choice({
      "影武者",
      "少主",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS20()
    end
    if SN == 2 then
      HS21()
    end
    if SN == 3 then
      HS22()
    end
    FX1 = 0
  end
  function HS20()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,401::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111402", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS21()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,401::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111403", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS22()
    Main0()
  end
  function Main23()
    SN = gg.choice({
      "舞会王者",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS24()
    end
    if SN == 2 then
      HS25()
    end
    FX1 = 0
  end
  function HS24()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,501::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111502", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS25()
    Main0()
  end
  function Main26()
    SN = gg.choice({
      "痛苦牧师",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS27()
    end
    if SN == 2 then
      HS28()
    end
    FX1 = 0
  end
  function HS27()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111,701::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111703", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS28()
    Main0()
  end
  function Main29()
    SN = gg.choice({
      "血腥玛丽",
      "幸存者",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS30()
    end
    if SN == 2 then
      HS31()
    end
    if SN == 3 then
      HS32()
    end
    FX1 = 0
  end
  function HS30()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111801::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111802", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS31()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111801::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111801", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111803", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS32()
    Main0()
  end
  function Main33()
    SN = gg.choice({
      "修女",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS34()
    end
    if SN == 2 then
      HS35()
    end
    FX1 = 0
  end
  function HS34()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112,601::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112602", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS35()
    Main0()
  end
  function Main36()
    SN = gg.choice({
      "女教师",
      "苏联特工",
      "返回上一页"
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
    FX1 = 0
  end
  function HS37()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110201::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110202", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS38()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110201::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110203", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS39()
    Main0()
  end
  function Main40()
    SN = gg.choice({
      "魅力歌手",
      "樱花少女",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS41()
    end
    if SN == 2 then
      HS42()
    end
    if SN == 3 then
      HS43()
    end
    FX1 = 0
  end
  function HS41()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110501::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110502", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS42()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110501::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110501", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110503", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS43()
    Main0()
  end
  function Main44()
    SN = gg.choice({
      "橄榄队员",
      "暴君",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS45()
    end
    if SN == 2 then
      HS46()
    end
    if SN == 3 then
      HS47()
    end
    FX1 = 0
  end
  function HS45()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110601::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110602", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS46()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110601::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110603", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS47()
    Main0()
  end
  function Main48()
    SN = gg.choice({
      "摔跤手",
      "幕府将军",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS49()
    end
    if SN == 2 then
      HS50()
    end
    if SN == 3 then
      HS51()
    end
    FX1 = 0
  end
  function HS49()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110701::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110702", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS50()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;110701::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("110701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("110703", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS51()
    Main0()
  end
  function Main52()
    SN = gg.choice({
      "花花公子",
      "足球队员",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS53()
    end
    if SN == 2 then
      HS54()
    end
    if SN == 3 then
      HS55()
    end
    FX1 = 0
  end
  function HS53()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("4;111901::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111902", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS54()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;111901::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("111901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("111903", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS55()
    Main0()
  end
  function Main56()
    SN = gg.choice({
      "特工",
      "机械玩偶",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS57()
    end
    if SN == 2 then
      HS58()
    end
    if SN == 3 then
      HS59()
    end
    FX1 = 0
  end
  function HS57()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112001::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112002", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS58()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112001::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112003", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS59()
    Main0()
  end
  function Main60()
    SN = gg.choice({
      "摇滚歌手",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS61()
    end
    if SN == 2 then
      HS62()
    end
    FX1 = 0
  end
  function HS61()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112301::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112302", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS62()
    Main0()
  end
  function Main63()
    SN = gg.choice({
      "蒸汽朋克",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS64()
    end
    if SN == 2 then
      HS65()
    end
    FX1 = 0
  end
  function HS64()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112401::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112402", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS65()
    Main0()
  end
  function Main66()
    SN = gg.choice({
      "红色荣耀",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS67()
    end
    if SN == 2 then
      HS68()
    end
    FX1 = 0
  end
  function HS67()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;112901::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("112901", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("112902", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS68()
    Main0()
  end
  function Main69()
    SN = gg.choice({
      "螳螂",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS70()
    end
    if SN == 2 then
      HS71()
    end
    FX1 = 0
  end
  function HS70()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;113401::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("113401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("113402", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS71()
    main0()
  end
  function Main72()
    SN = gg.choice({
      "不法之徒",
      "返回上一页"
    }, nil, "")
    if SN == 1 then
      HS73()
    end
    if SN == 2 then
      HS74()
    end
    FX1 = 0
  end
  function HS73()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1;113601::8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("113601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("113602", gg.TYPE_DWORD)
    gg.toast("开启成功")
    gg.clearResults()
  end
  function HS74()
    main0()
  end
  function HS75()
    Main()
  end
  main0()
end
function yjpf()
  gg.setRanges(gg.REGION_ANONYMOUS)
  for _FORV_3_ = 1, 9 do
    gg.setVisible(false)
    gg.clearResults()
    if _FORV_3_ == 1 or _FORV_3_ == 5 or _FORV_3_ == 6 or _FORV_3_ == 7 then
      gg.searchNumber("110" .. _FORV_3_ .. "01;310" .. _FORV_3_ .. "01;210" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast(_FORV_3_)
      else
        gg.searchNumber("110" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(33)
        gg.editAll("110" .. _FORV_3_ .. "03", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setVisible(false)
      end
    end
    if _FORV_3_ == 2 or _FORV_3_ == 9 then
      gg.searchNumber("110" .. _FORV_3_ .. "01;310" .. _FORV_3_ .. "01;210" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast(_FORV_3_)
      else
        gg.searchNumber("110" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(33)
        gg.editAll("110" .. _FORV_3_ .. "02", gg.TYPE_DWORD)
      end
    end
    if _FORV_3_ == 3 then
      gg.searchNumber("110" .. _FORV_3_ .. "01;310" .. _FORV_3_ .. "01;210" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast(_FORV_3_)
      else
        gg.searchNumber("110" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(33)
        gg.editAll("110" .. _FORV_3_ .. "04", gg.TYPE_DWORD)
      end
    end
  end
  for _FORV_3_ = 11, 36 do
    gg.setVisible(false)
    gg.clearResults()
    if _FORV_3_ == 11 then
      gg.searchNumber("11" .. _FORV_3_ .. "01;21" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast(_FORV_3_)
      else
        gg.searchNumber("11" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(33)
        gg.editAll("11" .. _FORV_3_ .. "04", gg.TYPE_DWORD)
      end
    end
    if _FORV_3_ == 13 or _FORV_3_ == 14 or _FORV_3_ == 15 or _FORV_3_ == 23 or _FORV_3_ == 24 or _FORV_3_ == 26 or _FORV_3_ == 29 or _FORV_3_ == 34 or _FORV_3_ == 36 or _FORV_3_ == 20 or _FORV_3_ == 30 or _FORV_3_ == 25 then
      gg.searchNumber("11" .. _FORV_3_ .. "01;21" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast(_FORV_3_)
      else
        gg.searchNumber("11" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(33)
        gg.editAll("11" .. _FORV_3_ .. "02", gg.TYPE_DWORD)
      end
    end
    if _FORV_3_ == 17 or _FORV_3_ == 18 or _FORV_3_ == 19 or _FORV_3_ == 21 then
      gg.searchNumber("11" .. _FORV_3_ .. "01;21" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
      if gg.getResultCount() == 0 then
        gg.toast(_FORV_3_)
      else
        gg.searchNumber("11" .. _FORV_3_ .. "01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(33)
        gg.editAll("11" .. _FORV_3_ .. "03", gg.TYPE_DWORD)
      end
    end
  end
  gg.clearResults()
end
function yxhj()
  menu1 = gg.choice({
    "布鲁",
    "希尔",
    "机甲",
    "熊猫",
    "哈卡",
    "兵王",
    "龙龟",
    "唐尼",
    "墨菲",
    "伊泽",
    "解放者",
    "珍妮",
    "吸血鬼",
    "上一页"
  }, nil, "知心专用整合")
  if menu1 == 1 then
    bl()
  end
  if menu1 == 2 then
    xe()
  end
  if menu1 == 3 then
    jjw()
  end
  if menu1 == 4 then
    xm()
  end
  if menu1 == 5 then
    hk()
  end
  if menu1 == 6 then
    bw()
  end
  if menu1 == 7 then
    lg()
  end
  if menu1 == 8 then
    tn()
  end
  if menu1 == 9 then
    mf()
  end
  if menu1 == 10 then
    yz()
  end
  if menu1 == 11 then
    jfz()
  end
  if menu1 == 12 then
    zn()
  end
  if menu1 == 13 then
    xxg()
  end
  if menu1 == 13 then
    Main()
  end
  GY = -1
end
function qt()
  menu = gg.multiChoice({
    "子弹追踪(一局一开)",
    "子弹穿墙(全局有效)",
    "自瞄    (全局有效)",
    "人物高跳  (上房顶)",
    "通用聚点",
    "爬墙",
    "杀队友",
    "返回上一页"
  }, nil, "其他通用")
  if menu == nil then
  else
    if menu[1] == true then
      fwzz()
    end
    if menu[2] == true then
      pgdj()
    end
    if menu[3] == true then
      zm()
    end
    if menu[4] == true then
      kqgt()
    end
    if menu[5] == true then
      tyjd()
    end
    if menu[6] == true then
      rwpq()
    end
    if menu[7] == true then
      zyxg()
    end
    if menu[8] == true then
      Main()
    end
    GY = -1
  end
end
function hk()
  menu = gg.multiChoice({
    "全屏攻击",
    "长矛悬浮",
    "返回上一页"
  }, nil, "哈卡专用")
  if menu == nil then
  else
    if menu[1] == true then
      hkqp()
    end
    if menu[2] == true then
      hkxf()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function wxjn()
  menu = gg.multiChoice({
    "阿甘大招",
    "赌王奶妈",
    "菲尔透视",
    "兵王大招",
    "修复无限",
    "返回上一页"
  }, nil, "无限技能")
  if menu == nil then
  else
    if menu[1] == true then
      agdz()
    end
    if menu[2] == true then
      dwnm()
    end
    if menu[3] == true then
      fets()
    end
    if menu[4] == true then
      bwdz()
    end
    if menu[5] == true then
      xfwx()
    end
    if menu[6] == true then
      Main()
    end
    GY = -1
  end
end
function zn()
  menu = gg.multiChoice({
    "无敌第一步(选好英雄后开)",
    "无敌第二步(进入游戏内开)",
    "恢复无敌(每局打完开 一定要开)",
    "返回上一页"
  }, nil, "无敌遁地,人机局不要开")
  if menu == nil then
  else
    if menu[1] == true then
      wudi1()
    end
    if menu[2] == true then
      wudi2()
    end
    if menu[3] == true then
      gbwd()
    end
    if menu[2] == true then
      Main()
    end
    GY = -1
  end
end
function zn()
  menu = gg.multiChoice({
    "远距离不减伤",
    "返回上一页"
  }, nil, "珍妮专用")
  if menu == nil then
  else
    if menu[1] == true then
      znbjs()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function xxg()
  menu = gg.multiChoice({
    "普攻距离",
    "无限子弹",
    "攻速秒杀",
    "返回上一页"
  }, nil, "吸血鬼专用")
  if menu == nil then
  else
    if menu[1] == true then
      xxgjl()
    end
    if menu[2] == true then
      xxgzd()
    end
    if menu[3] == true then
      xxgms()
    end
    if menu[4] == true then
      yxhj()
    end
    GY = -1
  end
end
function bw()
  menu = gg.multiChoice({
    "远距离不减伤",
    "返回上一页"
  }, nil, "兵王专用")
  if menu == nil then
  else
    if menu[1] == true then
      bwbjs()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function mf()
  menu = gg.multiChoice({
    "远距离不减伤",
    "返回上一页"
  }, nil, "墨菲专用")
  if menu == nil then
  else
    if menu[1] == true then
      mfbjs()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function yz()
  menu = gg.multiChoice({
    "远距离不减伤",
    "返回上一页"
  }, nil, "伊泽专用")
  if menu == nil then
  else
    if menu[1] == true then
      yzbjs()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function jfz()
  menu = gg.multiChoice({
    "远距离不减伤",
    "返回上一页"
  }, nil, "解放者专用")
  if menu == nil then
  else
    if menu[1] == true then
      jfzbjs()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function lg()
  menu = gg.multiChoice({
    "超大范围",
    "返回上一页"
  }, nil, "龙龟专用")
  if menu == nil then
  else
    if menu[1] == true then
      lgfw()
    end
    if menu[2] == true then
      yxhj()
    end
    GY = -1
  end
end
function tn()
  menu = gg.multiChoice({
    "全屏攻击",
    "子弹瞬击",
    "子弹追踪",
    "一炮秒杀",
    "返回上一页"
  }, nil, "唐尼专用")
  if menu == nil then
  else
    if menu[1] == true then
      tnqp()
    end
    if menu[2] == true then
      tnsj()
    end
    if menu[3] == true then
      tnzz()
    end
    if menu[4] == true then
      tnms()
    end
    if menu[5] == true then
      yxhj()
    end
    GY = -1
  end
end
function xe()
  menu = gg.multiChoice({
    "无限距离奶（一局一开）",
    "希尔一秒十奶（全局有效）",
    "无视距离援助（一局一开）",
    "返回上一页"
  }, nil, "希尔专用")
  if menu == nil then
  else
    if menu[1] == true then
      xefw()
    end
    if menu[2] == true then
      xemn()
    end
    if menu[3] == true then
      xewy()
    end
    if menu[4] == true then
      yxhj()
    end
    GY = -1
  end
end
function bl()
  menu = gg.multiChoice({
    "布鲁距离",
    "布鲁聚点",
    "布鲁瞬击",
    "自瞄距离",
    "返回上一页"
  }, nil, "布鲁专用(全局有效)")
  if menu == nil then
  else
    if menu[1] == true then
      bljl()
    end
    if menu[2] == true then
      bljd()
    end
    if menu[3] == true then
      blsj()
    end
    if menu[4] == true then
      blzmjl()
    end
    if menu[5] == true then
      yxhj()
    end
    GY = -1
  end
end
function jjw()
  menu = gg.multiChoice({
    "机甲王新聚点",
    "机甲王距离免减伤害",
    "返回上一页"
  }, nil, "机甲专用(全局有效)")
  if menu == nil then
  else
    if menu[1] == true then
      jjwjd()
    end
    if menu[2] == true then
      jjwmj()
    end
    if menu[3] == true then
      yxhj()
    end
    GY = -1
  end
end
function xm()
  menu = gg.multiChoice({
    "熊猫无后摇",
    "熊猫攻击距离",
    "熊猫子弹追踪",
    "返回上一页"
  }, nil, "熊猫专用")
  if menu == nil then
  else
    if menu[1] == true then
      xmwhy()
    end
    if menu[2] == true then
      xmgjjl()
    end
    if menu[3] == true then
      xmzdzz()
    end
    if menu[4] == true then
      yxhj()
    end
    GY = -1
  end
end
function xemn()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.5;25.0;0.5;1.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功")
end
function xefw()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("257D;21.0;1D;25.0;256D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("第一步开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15D;2D;22.0;25.0;1.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("22", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("第二步开启成功")
end
function xewy()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("30;75::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("开启成功")
end
function bljl()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18;40::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function bljd()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("18;9999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.1", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function blsj()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("100;100;100;100;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100;100;100;100;15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function blzmjl()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20;10::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("9999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function jjwjd()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.0;3D;24.0;100.0;5.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-99", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("开启成功")
end
function jjwmj()
  gg.clearResults()
  gg.searchNumber("12.0;14.0;16.0;0.75::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(55)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
end
function xmwhy()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.5;0.8::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function xmgjjl()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("25;18;5::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function xmzdzz()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("17;50::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("17;50::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function bwbjs()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("35;42;49::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("35;42;49::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function znbjs()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("28;35;42::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function xxgjl()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("12;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.toast("修改成功")
  gg.setVisible(false)
end
function xxgzd()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("30;30;-1::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 30
      }
    })
  end
  gg.toast("修改成功")
  gg.clearResults()
end
function xxgms()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("12;0.25;50;0.25;0.75::17", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.25;0.25", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3.4e38;-3.4e38", 16)
end
function mfbjs()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20;0.69999998808;0.34999999404::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function yzbjs()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20;0.625;0.375::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function jfzbjs()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("40;50;60::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(40)
  gg.editAll("999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function hkqp()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5;0.5;0.15;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function hkxf()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("5;0.5;0.15;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function lgfw()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("100;12;5;0::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12;5;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("80", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function pgdj()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.5474152e26;1e-6::5", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1e-6", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("3.4e38", 16)
  gg.toast("开启成功")
end
function tnqp()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70;0.25;15;60::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function tnsj()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("70.0;0.0;1,000.0;0.25::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("520", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function tnzz()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.25;15.0;10.0;20.0;60.0::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("15;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
end
function tnms()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("13;14;1::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("66", gg.TYPE_DWORD)
  gg.toast("开启成功")
  gg.clearResults()
end
function zm()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.0001;1;0.5;1;2;1;1;1;999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function tyjd()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.00999999978F;0.01745329238F;1.0F::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function fwzz()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.99904823303;0.8~0.9999::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.99904823303;0.8~0.9999::10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-999999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function kqgt()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("20;7.5;6.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(200)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function wudi1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2,139,095,040D;1;1;1::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.3", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function wudi2()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.5~4;0.00001::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function rwpq()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1W;2W;1W;1267W;0.1;0.8::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
        value = 520
      }
    })
  end
  gg.toast("")
  gg.clearResults()
end
function gbwd()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_BSS)
  gg.searchNumber("2,139,095,040D;0.3::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end
function agdz()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("256;200F;30F::65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResults(1)[1] == nil then
    gg.toast("失败")
  else
    gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  end
  jz = gg.getResults(1)
  ;({
    [1] = {}
  })[1].address = jz[1].address - 12
  ;({
    [1] = {}
  })[1].flags = gg.TYPE_DWORD
  ;({
    [1] = {}
  })[1].value = 1
  gg.setValues({
    [1] = {}
  })
  a = {}
  a[1] = {}
  a[1].address = jz[1].address - 12
  a[1].flags = gg.TYPE_DWORD
  a[1].value = 1
  a[1].freeze = true
  a[2] = {}
  a[2].address = jz[1].address
  a[2].flags = gg.TYPE_DWORD
  a[2].value = 0
  a[2].freeze = true
  gg.addListItems(a)
  gg.toast("成功")
end
function bwdz()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("256;100F;30F::65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResults(1)[1] == nil then
    gg.toast("失败")
  else
    gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  end
  jz = gg.getResults(1)
  ;({
    [1] = {}
  })[1].address = jz[1].address - 12
  ;({
    [1] = {}
  })[1].flags = gg.TYPE_DWORD
  ;({
    [1] = {}
  })[1].value = 1
  gg.setValues({
    [1] = {}
  })
  a = {}
  a[1] = {}
  a[1].address = jz[1].address - 12
  a[1].flags = gg.TYPE_DWORD
  a[1].value = 1
  a[1].freeze = true
  a[2] = {}
  a[2].address = jz[1].address
  a[2].flags = gg.TYPE_DWORD
  a[2].value = 0
  a[2].freeze = true
  gg.addListItems(a)
  gg.toast("成功")
end
function fets()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("131328;1;32::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResults(1)[1] == nil then
    gg.toast("失败")
  else
    gg.searchNumber("131328", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  end
  jz = gg.getResults(1)
  ;({
    [1] = {}
  })[1].address = jz[1].address - 12
  ;({
    [1] = {}
  })[1].flags = gg.TYPE_DWORD
  ;({
    [1] = {}
  })[1].value = 1
  gg.setValues({
    [1] = {}
  })
  a = {}
  a[1] = {}
  a[1].address = jz[1].address - 12
  a[1].flags = gg.TYPE_DWORD
  a[1].value = 1
  a[1].freeze = true
  a[2] = {}
  a[2].address = jz[1].address
  a[2].flags = gg.TYPE_DWORD
  a[2].value = 0
  a[2].freeze = true
  gg.addListItems(a)
  gg.toast("成功")
end
function dwnm()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("256;75F;43;256::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResults(1)[1] == nil then
    gg.toast("失败")
  else
    gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  end
  jz = gg.getResults(1)
  ;({
    [1] = {}
  })[1].address = jz[1].address - 12
  ;({
    [1] = {}
  })[1].flags = gg.TYPE_DWORD
  ;({
    [1] = {}
  })[1].value = 1
  gg.setValues({
    [1] = {}
  })
  a = {}
  a[1] = {}
  a[1].address = jz[1].address - 12
  a[1].flags = gg.TYPE_DWORD
  a[1].value = 1
  a[1].freeze = true
  a[2] = {}
  a[2].address = jz[1].address
  a[2].flags = gg.TYPE_DWORD
  a[2].value = 0
  a[2].freeze = true
  gg.addListItems(a)
  gg.toast("成功")
end
function xfwx()
  gg.removeListItems()
  gg.clearList()
  gg.toast("修复成功")
end
function tc()
  os.exit()
end
function zyxg()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1001;1002;1007;1,457,101,449~1,657,101,449::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("开启失败")
  else
    gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    j = gg.getResults(1)
    x = gg.getValues({
      [1] = {
        address = j[1].address - 76,
        flags = gg.TYPE_DWORD
      }
    })
    t = x[1].value
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;1;" .. t .. ";" .. t .. ";10~30;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.searchNumber("2;1;" .. t .. ";" .. t .. ";10~30;1::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_DWORD)
  else
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5", gg.TYPE_DWORD)
  end
end
while true do
  gg.clearResults()
  if gg.isVisible(true) then
    GY = 1
    gg.setVisible(false)
  end
  if GY == 1 then
    Main()
  end
end


--We are the tender love in the world.

--By Only SSTool
