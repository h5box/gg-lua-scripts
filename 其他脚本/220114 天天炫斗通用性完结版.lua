gg.alert("通用型完结版")
function Main0()
  menu = gg.choice({
    "副本",
    "竞技",
    "其他",
    "退出脚本"
  	  }, nil, "GT爆破破解，已去除密码")
  if menu==1 then
   Main1()
  end 
      if menu==2 then
    Main2()
  end 
    if menu==3 then
    Main3()
  end 
      if menu==4 then
    Exit()
  end 
  XGCK=-1
end
function Main1()
  menu = gg.choice({
    "副本开",
    "副本关",
    "返回上一页",
    }, nil, "")
   if menu==1 then
    HS2()
  end
  if menu==2 then
    HS3()
  end  
  if menu==3 then
      HOME()
    end
    GLWW=-1
end
function Main2()
  menu = gg.choice({
    "竞技开",
    "竞技关",
    "返回上一页",
    }, nil, "")
   if menu==1 then
    HS4()
  end
  if menu==2 then
    HS5()
  end  
  if menu==3 then
      HOME()
    end
    GLWW=-1
end
function Main3()
  menu = gg.choice({
    "无敌",
    "无敌恢复",
    "秒怪",
    "秒杀恢复",
    "定怪",
    "定怪恢复",
    "加速",
    "加速恢复",
     '全屏秒杀',
    '全屏秒杀恢复',
    '无限秘法',
    '无限秘法恢复',
    '全局加速',
    '全局加速恢复',
     '竞技无敌',
    '竞技无敌恢复',
    '竞技减伤',
    '竞技减伤恢复',
    '无视技能',
    '无视技能恢复',
   "——返回上一页",
  	    }, nil, "")
      if menu==1 then
    HSZ2()
  end
  if menu==2 then
    HSZ3()
  end
  if menu==3 then
    HSZ4()
  end
  if menu==4 then
    HSZ5()
  end
  if menu==5 then
    HSZ6()
  end
  if menu==6 then
    HSZ7()
  end
    if menu==7 then
    HSZ8()
  end
  if menu==8 then
    HSZ9()
  end
  if menu==9 then
    HSZ10()
  end
  if menu==10 then
    HSZ11()
  end
  if menu==11 then
    HSZ12()
  end
  if menu==12 then
    HSZ13()
  end
    if menu==13 then
    HSZ14()
  end
  if menu==14 then
    HSZ15()
  end
  if menu==15 then
    HSZ16()
  end
  if menu==16 then
    HSZ17()
  end
  if menu==17 then
    HSZ18()
  end
  if menu==18 then
    HSZ19()
  end
    if menu==19 then
    HSZ20()
  end
  if menu==20 then
    HSZ21()
  end
    if menu==21 then
    HOME()
  end
      GLWW=-1
end
function HS2()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-99999", gg.TYPE_DWORD)
  gg.toast("成功")
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("660",gg.TYPE_FLOAT)
  gg.toast("30％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("150",gg.TYPE_FLOAT)
  gg.toast("60％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("66000",gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-94111112D;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("99999999",gg.TYPE_FLOAT)
  gg.toast("成功")
    --[[gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("200",gg.TYPE_DWORD)
gg.toast("全局加速5倍开启")]]

  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("失败")
   else
    gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll(gg.prompt({
      "改小1000为原来500为二倍"
    }, {
      [1] = 500
    }, {
      [1] = "number"
    })[1], gg.TYPE_DOUBLE)
    gg.toast("成功")
end
end
function HS3()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-262.00003051758F;-99999::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_DWORD)
  gg.toast("成功")
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.01;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("成功")
  --全屏攻击
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("660;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("660", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("30％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("150;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("60％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("66000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("66000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("10000",gg.TYPE_FLOAT)
  gg.toast("成功")
  --无限秘法
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-94111112D;99999999::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("成功")
    --全局加速
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber(gg.prompt({
    "在“空格”内填写上次修改的数值"
  }, {
    [1] = ""
  }, {
    [1] = "number"
  })[1], gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("数值搜索不到")
   else
    gg.searchNumber(gg.prompt({
      "输入上次修改的数值"
    }, {
      [1] = ""
    }, {
      [1] = "number"
    })[1], gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2000)
    gg.editAll(gg.prompt({
      "自行修改，默认为1000恢复"
    }, {
      [1] = 1000
    }, {
      [1] = "number"
    })[1], gg.TYPE_DOUBLE)
    gg.toast("成功")
  end
end
function HS4()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("100;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("30％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("100;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("60％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-10000",gg.TYPE_FLOAT)
gg.toast("成功")
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-94111112D;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("99999999",gg.TYPE_FLOAT)
  gg.toast("成功")
end
function HS5()
--无视技能
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-100;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("30％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-100;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("60％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-10000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.toast("成功")
  --无限秘法
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-94111112D;99999999::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("成功")
end

function HSZ2()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-99999", gg.TYPE_DWORD)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ3()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-262.00003051758F;-99999::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_DWORD)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ4()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ5()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.01;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ6()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.1171875;-442552292D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.1171875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("5", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ7()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("5;-442552292D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1171875", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ8()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100F;100::10000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("70", gg.TYPE_DOUBLE)
  gg.toast("成功")
  gg.clearResults()
end

function HSZ9()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("70F;100::10000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("70", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_DOUBLE)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ10()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("660",gg.TYPE_FLOAT)
  gg.toast("30％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("150",gg.TYPE_FLOAT)
  gg.toast("60％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("66000",gg.TYPE_FLOAT)
  gg.toast("成功")
end
function HSZ11()
  --全屏攻击
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("660;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("660", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("30％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("150;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("60％")
  -- [[ GXL Decrypt LOG_PLUS 自动生成 ]]
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("66000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("66000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("10000",gg.TYPE_FLOAT)
  gg.toast("成功")
end
function HSZ12()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-94111112D;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("99999999",gg.TYPE_FLOAT)
  gg.toast("成功")
end
function HSZ13()
 gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-94111112D;99999999::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("100",gg.TYPE_FLOAT)
  gg.toast("成功")
end
function HSZ14()
  --[[gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("200",gg.TYPE_DWORD)
gg.toast("全局加速5倍开启")]]

  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("失败")
   else
    gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll(gg.prompt({
      "改小1000为原来500为二倍"
    }, {
      [1] = 500
    }, {
      [1] = "number"
    })[1], gg.TYPE_DOUBLE)
    gg.toast("成功")
  end
end
function HSZ15()
  --全局加速
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber(gg.prompt({
    "在“空格”内填写上次修改的数值"
  }, {
    [1] = ""
  }, {
    [1] = "number"
  })[1], gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("数值搜索不到")
   else
    gg.searchNumber(gg.prompt({
      "输入上次修改的数值"
    }, {
      [1] = ""
    }, {
      [1] = "number"
    })[1], gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2000)
    gg.editAll(gg.prompt({
      "自行修改，默认为1000恢复"
    }, {
      [1] = 1000
    }, {
      [1] = "number"
    })[1], gg.TYPE_DOUBLE)
    gg.toast("成功")
  end
end
function HSZ16()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999999", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ17()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("999999999;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ18()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999999999", gg.TYPE_DWO9RD)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ19()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-262.00003051758F;999999999::999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_DWORD)
  gg.toast("成功")
  gg.clearResults()
end
function HSZ20()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("100;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("30％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("100;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("60％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-10000",gg.TYPE_FLOAT)
gg.toast("成功")
end
function HSZ21()
  --无视技能
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-100;30592844D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("30％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-100;240;180", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("60％")
 -- [[ GXL Decrypt LOG_PLUS 自动生成 ]] 
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-10000;-304121326D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.toast("成功")
end
  function HOME()
    lw=1
    Main0()
  end
  function Exit()
print("")
gg.alert("退出脚本")
os.exit()--结束脚本
end
  cs = ""
  while true do
    if gg.isVisible(true) then
      XGCK=1
      gg.setVisible(false)
    end
    if XGCK==1 then
      Main0()
    end
  end  