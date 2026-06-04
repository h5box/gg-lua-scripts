
function menu_main()
  MENU = 0 MENU1 = 1000
  SN = gg.choice({
    "改分爆分",
    "世界竞赛",
    "无敌秒杀",
    "武装通缉",
    "️战神技能",
    "退出脚本"
  }, nil, "沉厂长资源网WWW.CHENCZ.COM内有使用教程辅助首发，免费辅助群：781942064")

  --MySetValue(seek, value, bool, info)
  if SN == nil then return end
  if SN == 1 then menu_close() end
  if SN == 2 then menu_open() end
  if SN == 3 then MySetValue(seek999, {{160, true}, {52, true}, {232, true}, {236, true}}, "无敌秒杀") end
  if SN == 4 then menk_open() end
  if SN == 5 then menc_open() end
  if SN == 6 then Exit() end
end

function menu_open()
  MENU = 0 MENU1 = 1200
  menu1 = gg.choice({
    "开无限小兵",
    "关无限小兵",
    "开无限黑洞",
    "关无限黑洞",
    "开装死模式",
    "关装死模式",
    "开全屏自爆慢",
    "开全屏自爆快",
    "关全屏自爆",
    "开启擦分",
    "关闭擦分",
    "开启无敌",
    "关闭无敌",
    "开启秒杀",
    "关闭秒杀",
    "开启暴走",
    "关闭暴走",
    "加血",
    "自杀",
    "返回主菜单"
  }, nil, "沉厂长资源网WWW.CHENCZ.COM内有使用教程辅助首发，免费辅助群：781942064")
  --MySetValue(seek, value, bool, info)
  if menu1 == nil then return end
  if menu1 == 1 then MySetValue(seek113, {{1860, 1, true}}, "开无限小兵") end
  if menu1 == 2 then MySetValue(seek113, {{1860, -1, true}}, "关无限小兵") end
  if menu1 == 3 then MySetValue(seek113, {{6072, 0, false}}, "开黑洞") end
  if menu1 == 4 then MySetValue(seek113, {{6072, 3, false}}, "关黑洞") end
  if menu1 == 5 then k3() end
  if menu1 == 6 then k4() end
  if menu1 == 7 then k6() end
  if menu1 == 8 then MySetValue(seek999, {{232, true}, {236, true}}, "开自爆") end
  if menu1 == 9 then MySetValue(seek999, {{232, false}, {236, false}}, "关自爆") end
  if menu1 == 10 then k1() end
  if menu1 == 11 then k2() end
  if menu1 == 12 then MySetValue(seek999, {{160, true}}, "开无敌") end
  if menu1 == 13 then MySetValue(seek999, {{160, false}}, "关无敌") end
  if menu1 == 14 then MySetValue(seek999, {{52, true}}, "开秒杀") end
  if menu1 == 15 then MySetValue(seek999, {{52, false}}, "关秒杀") end
  if menu1 == 16 then MySetValue(seek999, {{244, true}, {248, true}, {252, true}, {256, true}}, "开暴走") end
  if menu1 == 17 then MySetValue(seek999, {{244, false}, {248, false}, {252, false}, {256, true}}, "关暴走") end
  if menu1 == 18 then k5() end
  if menu1 == 19 then MySetValue(seek999, {{600, 1, false}}, "你死了") end
  if menu1 == 20 then MENU = 1000 end
end


function JGF()
  Jggjjff = gg.choice({
    "改分初始化[先开这个]",
    "改分+1[可以重复改]",
    "改分+5[可以重复改]",
    "改分+10[可以重复改]",
    "改分-1[可以重复改]",
    "改分-5[可以重复改]",
    "改分-10[可以重复改]",
    "恢复真实分数"},
  nil,"沉厂长资源网WWW.CHENCZ.COM内有使用教程辅助首发，免费辅助群：781942064")
  if Jggjjff == 1 then Jgjf1() end
  if Jggjjff == 2 then Jgjf2() end
  if Jggjjff == 3 then Jgjf3() end
  if Jggjjff == 4 then Jgjf4() end
  if Jggjjff == 5 then Jgjf5() end
  if Jggjjff == 6 then Jgjf6() end
  if Jggjjff == 7 then Jgjf7() end
  if Jggjjff == 8 then Jgjf8() end
  XGCK3=-1
end

function Jgjf1()
  gg.clearResults()
  gg.searchNumber("59;1134198784;1103101952:128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1134198784", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  JKaiTianFS=gg.getResults(1)
  local JKaiTianFS1=JKaiTianFS
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  local Jfenshu=gg.getResults(1)
  Jgaijiafen=Jfenshu[1].value
  gg.toast("改分初始化开启成功")
  JGF()
end
function Jgjf2()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(gg.getResults(1)[1].value+1, gg.TYPE_DWORD)
  gg.toast("修改成功,改分+1")
end

function Jgjf3()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(gg.getResults(1)[1].value+5, gg.TYPE_DWORD)
  gg.toast("修改成功,改分+5")
end
function Jgjf4()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(gg.getResults(1)[1].value+10, gg.TYPE_DWORD)
  gg.toast("修改成功,改分+10")
end
function Jgjf5()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(gg.getResults(1)[1].value-1, gg.TYPE_DWORD)
  gg.toast("修改成功,改分-1")
end
function Jgjf6()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(gg.getResults(1)[1].value-5, gg.TYPE_DWORD)
  gg.toast("修改成功,改分-5")
end
function Jgjf7()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(gg.getResults(1)[1].value-10, gg.TYPE_DWORD)
  gg.toast("修改成功,改分-10")
end

function Jgjf8()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1876),-1,4)
  gg.getResults(1)
  gg.editAll(Jgaijiafen, gg.TYPE_DWORD)
  gg.toast("恢复真实分数成功")
end



function k1()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  JKaiTianXL=gg.getResults(gg.getResultCount())
  local JKaiTianXL1=JKaiTianXL
  shuju=gg.getResultCount()
  for n=1,shuju,2
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianXL1[n].address+164),-1,4)
  local Jxueliang=gg.getResults(1)
  Jwudi1=Jxueliang[1].value
  if Jwudi1 >=0 then
  gg.editAll("-1", gg.TYPE_DWORD)
  else
  gg.editAll("0", gg.TYPE_DWORD)
  end
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianXL1[n].address-408),-1,4)
  Jth=gg.getResults(1)
  Jth[1].value="16777220"
  Jth[1].freeze=true
  gg.addListItems(Jth)
  end
  gg.sleep(200)
  Jcf21()
else
  gg.toast("修改失败")
  end
end

function Jcf21()
  gg.clearResults()
  local JKaiTianXL1=JKaiTianXL
  for n=1,shuju,2
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianXL1[n].address-408),-1,4)
  Jth=gg.getResults(1)
  Jth[1].value="16777"
  Jth[1].freeze=true
  gg.addListItems(Jth)
  end
  gg.toast("开启战机停火成功")
end


function k2()
  gg.clearResults()
  local JKaiTianXL1=JKaiTianXL
  for n=1,shuju,2
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianXL1[n].address-408),-1,4)
  Jth=gg.getResults(1)
  Jth[1].freeze=false
  gg.addListItems(Jth)
  end
  for n=1,shuju,2
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianXL1[n].address+164),-1,4)
  local Jxueliang=gg.getResults(1)
  Jwudi1=Jxueliang[1].value
  if Jwudi1 >=0 then
  gg.editAll("-1", gg.TYPE_DWORD)
  else
  gg.editAll("0", gg.TYPE_DWORD)
  end
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianXL1[n].address-408),-1,4)
  gg.getResults(1)
  gg.editAll("16777220", gg.TYPE_DWORD)
  end
  gg.clearList()
  gg.toast("开启战机开火成功")
end


function k3()
  gg.clearResults()
  gg.searchNumber("59;1134198784;1103101952:128", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1134198784", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  JKaiTianFS=gg.getResults(1)
  local JKaiTianFS1=JKaiTianFS
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1868),-1,4)
  local Jfenshu=gg.getResults(1)
  Jxb=Jfenshu[1].value
  gg.editAll(gg.getResults(1)[1].value+1, gg.TYPE_DWORD)
  gg.toast("开启装死成功")
end

function k4()
  gg.clearResults()
  local JKaiTianFS1=JKaiTianFS
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+1868),-1,4)
  gg.getResults(-1)
  gg.editAll(Jxb, gg.TYPE_DWORD)
  gg.toast("关闭装死成功")
end


function k5()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  JKaiTianFS=gg.getResults(1)
  local JKaiTianFS1=JKaiTianFS
  gg.clearResults()
  gg.searchAddress(string.format("%X",JKaiTianFS1[1].address+40),-1,4)
  local Jfenshu=gg.getResults(1)
  Jxb=Jfenshu[1].value
  gg.editAll(gg.getResults(1)[1].value+500000000, gg.TYPE_DWORD)
  gg.toast("开启加血")
end


function k6()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
    gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    JKaiTianXL=gg.getResults(gg.getResultCount())
    local JKaiTianXL1=JKaiTianXL
    shuju=gg.getResultCount()
    for n=1,shuju,2
      do
      gg.clearResults()
      gg.searchAddress(string.format("%X", JKaiTianXL1[n].address +236), -1, 4)
      gg.getResults(1)
      local Jxuelian=gg.getResults(1)
      Jzb1 = Jxuelian[1].value
      if Jzb1 > 0 then
        gg.editAll("0", gg.TYPE_DWORD)
      end
      if Jzb1 < 0 then
        gg.editAll("-1", gg.TYPE_DWORD)
      end
      gg.clearResults()
      gg.searchAddress(string.format("%X", JKaiTianXL1[n].address +240), -1, 4)
      gg.getResults(1)
      local Jxuelian=gg.getResults(1)
      Jzb2 = Jxuelian[1].value
      if Jzb2 > 0 then
        gg.editAll("0", gg.TYPE_DWORD)
        gg.toast("自爆[1]已开启，无效，请重新点击开启")
      end
      if Jzb2 < 0 then
        gg.editAll("-1", gg.TYPE_DWORD)
        gg.toast("自爆[3]已开启，无效，请重新点击开启")
      end
      if (Jzb1 == 0) and (Jzb2 == 0) then
        gg.clearResults()
        gg.searchAddress(string.format("%X", JKaiTianXL1[n].address +236), -1, 4)
        gg.getResults(1)
        gg.editAll("-1", gg.TYPE_DWORD)
        gg.toast("自爆[2]已开启，无效，请重新点击开启")
      end
      if (Jzb1 == -1) and (Jzb2 == 0) then
        gg.clearResults()
        gg.searchAddress(string.format("%X", JKaiTianXL1[n].address +240), -1, 4)
        gg.getResults(1)
        gg.editAll("-1", gg.TYPE_DWORD)
        gg.toast("自爆[3]已开启，无效，请重新点击开启")
      end
      if (Jzb1 == -1) and (Jzb2 == -1) then
        gg.clearResults()
        gg.searchAddress(string.format("%X", JKaiTianXL1[n].address +236), -1, 4)
        gg.getResults(1)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.toast("自爆[4]已开启，无效，请重新点击开启")
      end
      if (Jzb1 == 0) and (Jzb2 == -1) then
        gg.clearResults()
        gg.searchAddress(string.format("%X", JKaiTianXL1[n].address +240), -1, 4)
        gg.getResults(1)
        gg.editAll("0", gg.TYPE_DWORD)
        gg.toast("自爆[1]已开启，无效，请重新点击开启")
      end
    end
   else
    gg.toast("修改失败，搜索不到任何数据")
  end
end


function menu_close()
  MENU = 0 MENU1 = 1300
  menu1 = gg.choice({
    "慢速爆分",
    "中速爆分",
    "快速爆分",
    "MISS改分",
    "改分",
    "慢速退分",
    "中速退分",
    "快速退分",
    "返回主菜单"
  }, nil, "")
  --MySetValue(seek, value, bool, info)
  if menu1 == nil then return end
  if menu1 == 1 then Fjb(10000, "慢速爆分") end
  if menu1 == 2 then Fjb(100000, "中速爆分") end
  if menu1 == 3 then Fjb(1000000, "快速爆分") end
  if menu1 == 4 then GF() end
  if menu1 == 5 then JGF() end
  if menu1 == 6 then Fjb(-10000, "慢速退分") end
  if menu1 == 7 then Fjb(-100000, "中速退分") end
  if menu1 == 8 then Fjb(-1000000, "快速退分") end
  if menu1 == 9 then MENU = 1000 end
end


function menc_open()
  MENU = 0 MENU1 = 1000
  menu1 = gg.choice({
    "未觉醒凯旋幻化",
    "觉醒凯旋幻化",
    "未觉醒百媚幻化",
    "觉醒百媚幻化",
    "未觉醒兽王幻化",
    "烈阳幻化",
    "战神无CD",
    "战神永恒技能",
    "返回主菜单"
  }, nil, "")
  --MySetValue(seek, value, bool, info)
  if menu1 == nil then return end
  if menu1 == 1 then z2() end
  if menu1 == 2 then z1() end
  if menu1 == 3 then j13() end
  if menu1 == 4 then j14() end
  if menu1 == 5 then j11() end
  if menu1 == 6 then j12() end
  if menu1 == 7 then z4() end
  if menu1 == 8 then z3() end
  if menu1 == 9 then MENU = 1000 end
end


function j11()
gg.searchNumber("5083;5084~5088;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5083~5088", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("5683",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5089~5094;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5089~5094", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("5695",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5095~5100;4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5095~5100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("5707",gg.TYPE_DWORD)
  gg.toast("幻化毁灭烈阳主宰成功")
end


function j12()
gg.searchNumber("5695;16777216;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
gg.searchNumber("5683;16777216;9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("5707;16777216;100;50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("50;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
gg.toast("毁灭烈阳开启成功")
end

function j13()
gg.searchNumber("5239;16777216;10;14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
gg.searchNumber("5228;16777216;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
 gg.searchNumber("5233;16777216;22;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("22;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
 gg.searchNumber("5235;16777216;18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function j14()
gg.searchNumber("5269;16777216;10;14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
gg.searchNumber("5258;16777216;30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
 gg.searchNumber("5263;16777216;22;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("22;26", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.clearResults()
 gg.searchNumber("5265;16777216;18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("开启成功")
end


function z1()
gg.clearResults()
gg.searchNumber("4865;16777217;14~100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
if 0~=gg.getResultCount() then
  gg.searchNumber("14~100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(gg.getResultCount())
    gg.editAll("0",gg.TYPE_DWORD)
    gg.toast("开启成功")
   else
    gg.toast("修改失败")
  end
end

function z2()
  gg.clearResults()
  gg.searchNumber("4838;16777217;14~100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
    gg.searchNumber("14~100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultCount())
    gg.editAll("0",gg.TYPE_DWORD)
    gg.toast("开启成功")
   else
    gg.toast("修改失败")
  end
end


function z3()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("7200;600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.getResults(gg.getResultCount())
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("开启永恒的战神技能成功")
end

function z4()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("7200;600",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("7200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(gg.getResultCount())
  gg.editAll("0",gg.TYPE_DWORD)
  gg.toast("开启无CD的战神技能成功")
end


function menk_open()
  MENU = 0 MENU1 = 1000
  menu1 = gg.choice({
    "武装1",
    "武装2",
    "武装3",
    "武装4",
    "武装5",
    "武装6",
    "武装7",
    "返回主菜单"
  }, nil, "")
  --MySetValue(seek, value, bool, info)
  if menu1 == nil then return end
  if menu1 == 1 then i1() end
  if menu1 == 2 then i2() end
  if menu1 == 3 then i3() end
  if menu1 == 4 then i4() end
  if menu1 == 5 then i5() end
  if menu1 == 6 then i6() end
  if menu1 == 7 then MySetValue(seek999, {{160, true}, {52, 10, true}}, "无敌秒杀") end
  if menu1 == 8 then MENU = 1000 end
end

function i1()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  wuzhuangtongji=gg.getResults(gg.getResultCount())
  local wuzhuangtongji1=wuzhuangtongji
  shu=gg.getResultCount()
  for n=1,shu,1
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+56),-1,4)
  gg.getResults(1)
  local wzmiaosha=gg.getResults(1)
  wzms=wzmiaosha[1].value
  gg.editAll(wzms+1000, gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+164),-1,4)
  gg.getResults(1)
  local wzwudi=gg.getResults(1)
  wzwd=wzwudi[1].value
  if wzwd >= 0 then
  gg.editAll("0", gg.TYPE_DWORD)
  else
  gg.editAll("-1", gg.TYPE_DWORD)
  end
  end
  gg.toast("开启武装1成功")
  else
  gg.alert("开启武装1失败")
  end
end

function i2()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  wuzhuangtongji=gg.getResults(gg.getResultCount())
  local wuzhuangtongji1=wuzhuangtongji
  shu=gg.getResultCount()
  for n=1,shu,1
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+56),-1,4)
  gg.getResults(1)
  local wzmiaosha=gg.getResults(1)
  wzms=wzmiaosha[1].value
  gg.editAll(wzms+5000, gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+164),-1,4)
  gg.getResults(1)
  local wzwudi=gg.getResults(1)
  wzwd=wzwudi[1].value
  if wzwd >= 0 then
  gg.editAll("0", gg.TYPE_DWORD)
  else
  gg.editAll("-1", gg.TYPE_DWORD)
  end
  end
  gg.toast("开启武装2成功")
  else
  gg.alert("开启武装2失败")
  end
end

function i3()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  wuzhuangtongji=gg.getResults(gg.getResultCount())
  local wuzhuangtongji1=wuzhuangtongji
  shu=gg.getResultCount()
  for n=1,shu,1
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+56),-1,4)
  gg.getResults(1)
  local wzmiaosha=gg.getResults(1)
  wzms=wzmiaosha[1].value
  gg.editAll(wzms+10000, gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+164),-1,4)
  gg.getResults(1)
  local wzwudi=gg.getResults(1)
  wzwd=wzwudi[1].value
  if wzwd >= 0 then
  gg.editAll("0", gg.TYPE_DWORD)
  else
  gg.editAll("-1", gg.TYPE_DWORD)
  end
  end
  gg.toast("开启武装3成功")
  else
  gg.alert("开启武装3失败")
  end
end

function i4()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  wuzhuangtongji=gg.getResults(gg.getResultCount())
  local wuzhuangtongji1=wuzhuangtongji
  shu=gg.getResultCount()
  for n=1,shu,1
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+56),-1,4)
  gg.getResults(1)
  local wzmiaosha=gg.getResults(1)
  wzms=wzmiaosha[1].value
  gg.editAll(wzms+15000, gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+164),-1,4)
  gg.getResults(1)
  local wzwudi=gg.getResults(1)
  wzwd=wzwudi[1].value
  if wzwd >= 0 then
  gg.editAll("0", gg.TYPE_DWORD)
  else
  gg.editAll("-1", gg.TYPE_DWORD)
  end
  end
  gg.toast("开启武装4成功")
  else
  gg.alert("开启武装4失败")
  end
end

function i5()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  wuzhuangtongji=gg.getResults(gg.getResultCount())
  local wuzhuangtongji1=wuzhuangtongji
  shu=gg.getResultCount()
  for n=1,shu,1
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+56),-1,4)
  gg.getResults(1)
  local wzmiaosha=gg.getResults(1)
  wzms=wzmiaosha[1].value
  gg.editAll(wzms+25000, gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+164),-1,4)
  gg.getResults(1)
  local wzwudi=gg.getResults(1)
  wzwd=wzwudi[1].value
  if wzwd >= 0 then
  gg.editAll("0", gg.TYPE_DWORD)
  else
  gg.editAll("-1", gg.TYPE_DWORD)
  end
  end
  gg.toast("开启武装5成功")
  else
  gg.alert("开启武装5失败")
  end
end


function i6()
  gg.clearResults()
  gg.searchNumber("999999;999999::6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if 0~=gg.getResultCount() then
  gg.searchNumber("999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(gg.getResultCount())
  wuzhuangtongji=gg.getResults(gg.getResultCount())
  local wuzhuangtongji1=wuzhuangtongji
  shu=gg.getResultCount()
  for n=1,shu,1
do
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+56),-1,4)
  gg.getResults(1)
  local wzmiaosha=gg.getResults(1)
  wzms=wzmiaosha[1].value
  gg.editAll(wzms+30000, gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchAddress(string.format("%X",wuzhuangtongji1[n].address+164),-1,4)
  gg.getResults(1)
  local wzwudi=gg.getResults(1)
  wzwd=wzwudi[1].value
  if wzwd >= 0 then
  gg.editAll("0", gg.TYPE_DWORD)
  else
  gg.editAll("-1", gg.TYPE_DWORD)
  end
  end
  gg.toast("开启武装6成功")
  else
  gg.alert("开启武装6失败")
  end
end


function CPLVVCLCJLPPSFLVAJXN(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function NSVWTQVXXRMBLPYUEWTJ(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function NYLMUNYVXDMDRPPVLJUL(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function DQMWGRESRMNOUADVFRDV(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function HXDTZSUQURDFKOCXXXJP(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function OEJLFMDXONUSWFXMGGTM(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function CJMGQELWVBUSDKDTCTXA(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function WDYLOJHRNVXMKHWTAWZF(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function OJJFCRXRFMFJSBLNNUBV(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function CXSRYRDZHEBAQEPBPWCZ(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function HLAMKVCBVVLZYBDMPDLV(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function BAAHBMYNPOHQVQHPKJRE(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function UVBWRGQZNEXGRHVDAHLB(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function JMZVWNOWCEXSMPRWDJEU(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function XMBYQGCTNPCJUEVNCSBC(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function CYNXXUPETNWLNHEWDZEZ(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function CNBHXXXUNDNSBKZPFGYJ(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function FZGLZOYNDHCWLWZYWNLB(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function VGWTAUZKJDQCHJAMKZUG(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function BQLKYSPLHYQKYUSMTRRO(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function LRDBSBUEEHLMLGWJEWSP(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
function GNFMBOPXUSDBSUUNSBTN(YX,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end
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
gg.toast(CPLVVCLCJLPPSFLVAJXN('MVRKHVSCEZWZBGCXTSYK','E6909CE7B4A2E588B0')..#data..NSVWTQVXXRMBLPYUEWTJ('FUFOQWDCRYESBEPCRXWG','E69DA1E695B0E68DAE'))
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
else
gg.toast(NYLMUNYVXDMDRPPVLJUL('TKPAYZLDGQVRSJOTZMHK','E69CAAE6909CE588B0E695B0E68DAEEFBC81'), false)
return false
end
else
gg.toast(DQMWGRESRMNOUADVFRDV('WNTYJKCGEPZLXRFHKZTQ','E697A0E695B0E68DAEEFBC81'))
return false
end
end



function GF()
	 gg.setRanges(4)
local dataType = 4
local tb1 = {{1134198784,0},{59,-16},{1103101952,4},}
local  am=gg.prompt({HLAMKVCBVVLZYBDMPDLV('HNJCBZCFLOWQAWPPGTVH','E8BE93E585A5E4BDA0E683B3E4BFAEE694B9E79A846D697373E58886E695B0EFBC9A')},{BAAHBMYNPOHQVQHPKJRE('AQXJLBBTGJPGNJXRKVYV','E8AFB7E8BE93E585A5E8A681E694B9E79A84E58886E695B0E38082')},{UVBWRGQZNEXGRHVDAHLB('YPAULRAOYWVKYMLCTPMU','74657874')})
  gg.clearResults(am)
  if am==nil then
    gg.alert(JMZVWNOWCEXSMPRWDJEU('ATCDTSOVVYAEFFFAOTAD','E4BDA0E98089E68BA9E4BA86E58F96E6B688E694B9E58886'))
   else
local tb2={{am[1],0x1624},}
SearchWrite(tb1, tb2, dataType)
end
end



function Fjb(value, info)
  MySearch(seek999, 0x080000000, 0x0DFFFFFFF)
  if #results == 0 then
    gg.toast("..二次搜索..")
    MySearch(seek999, 0, -1)
    if #results == 0 then gg.toast("搜索失败") return end
  end
  if #results == 0 then return end
  gg.clearList()
  for i = #results, 1, -1 do
    local tab = {}
    gg.clearResults()
    gg.searchAddress(string.format("%X", results[i].address + 180), -1, 4)
    tab.v1 = gg.getResults(1)[1].value
    --gg.addListItems(gg.getResults(1))
    if tab.v1 ~= golds then
      golds = tab.v1 - 5
      gg.editAll(golds, gg.TYPE_DWORD)
    end
    gg.clearResults()
    gg.searchAddress(string.format("%X", results[i].address + 188), -1, 4)
    tab.v3 = gg.getResults(1)[1].value
    --gg.addListItems(gg.getResults(1))
    gg.clearResults()
    gg.searchAddress(string.format("%X", results[i].address + 184), -1, 4)
    tab.v2 = gg.getResults(1)[1].value
    --gg.addListItems(gg.getResults(1))
    if value > 0 then
      gg.editAll(tab.v2 + value, gg.TYPE_DWORD)
     else
      gg.editAll(-(tab.v3 + value), gg.TYPE_DWORD)
    end
  end
  gg.toast(info)
end



-- 手动优化联机搜索，gg系统直接联机搜索相对较慢
-- 不意味系统自带不好用，因现在特殊脚本特殊对待更快
-- seek：是二维元组，默认seek[1][2] == 0为偏移基址
-- mFrom：Start memory address for the search.
-- mTo：End memory address for the search.
-- 最后保存的是符合seek[2]期望值，且为元表数组
function MySearch(seek, mFrom, mTo)
  if seek[1][2] ~= 0 then gg.toast("搜索参数错误") return end
  results = {}
  gg.clearResults()
  --gg.setRanges(gg.REGION_BAD)
  gg.searchNumber(seek[1][1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, mFrom, mTo)
  if(gg.getResultCount() == 0) then return end
  local tab = gg.getResults(gg.getResultCount())
  local offset = 0
  for mm = #seek, 2, -1 do
    offset = seek[mm][2] - offset
    for nn = gg.getResultCount(), 1, -1 do
      tab[nn].address = tab[nn].address + offset
    end
    gg.loadResults(tab)
    gg.searchNumber(seek[mm][1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL)
    if gg.getResultCount() == 0 then return end
    tab = gg.getResults(gg.getResultCount())
  end
  results = tab
end

-- seek{{}}：联合搜索内容
-- value：设置值对象、末位bool型:表示增量或者使能
-- info：安卓toast提示内容
function MySetValue(seek, value, info)
  MySearch(seek, 0x080000000, 0x0DFFFFFFF) -- MySearch()也可以直接展开写这里，但如此代码太长，不易懂
  if #results == 0 then
    gg.toast("..二次搜索..")
    MySearch(seek, 0, -1)
    if #results == 0 then gg.toast("搜索失败") return end
  end
  for i = #results, 1, -1 do
    for j = #value, 1, -1 do
      local tab = {}
      gg.clearResults()
      gg.searchAddress(string.format("%X", results[i].address + value[j][1] + 4), -1, 4)
      tab.v2 = gg.getResults(1)[1].value
      --gg.addListItems(gg.getResults(1))
      gg.clearResults()
      gg.searchAddress(string.format("%X", results[i].address + value[j][1]), -1, 4)
      tab.v1 = gg.getResults(1)[1].value
      --gg.addListItems(gg.getResults(1))
      if #value[1] == 3 then
        if value[j][3] then
          gg.editAll(tab.v1 + value[j][2], gg.TYPE_DWORD)
         else
          gg.editAll(value[j][2], gg.TYPE_DWORD)
        end
       elseif #value[1] == 2 then
        if value[j][2] then
          if tab.v1 >= 0 then
            gg.editAll("0", gg.TYPE_DWORD)
           else
            gg.editAll("-1", gg.TYPE_DWORD)
          end
         else
          gg.editAll(tab.v2, gg.TYPE_DWORD)
        end
      end
    end
  end
  gg.toast(info)
end


function Exit()
  print("")
  os.exit()
end

function Finf()
  MENU = 0 MENU1 = 100
  MySetValue(seek999, {{160, true}, {52, true}, {232, true}, {236, true}}, "无敌秒杀")
end


-- 全局参数定义or保存
seek113 = {{1134198784,0}, {1103101952,4}}
seek999 = {{999999,0}, {999999,4}}
results = {}
state = {}
golds = 0

-- 取消菜单互相调用,改用设标志,减少堆栈消耗
-- 且能控制使每次打开保留上次menu
-- 这里定义每1位数进入1层
MENU = 1000
MENU1 = 1000
while true do
  if gg.isVisible(true) then
    if MENU == 0 then MENU = MENU1 end
    gg.clearResults()
    gg.setVisible(false)
  end
  if MENU == 100 then Finf() end
  if MENU == 1000 then menu_main() end
  if MENU == 1100 then menu_less() end
  if MENU == 1200 then menu_open() end
  if MENU == 1300 then menu_close() end
end

