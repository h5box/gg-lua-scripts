function Main0()
menu = gg.choice({
 "\n进入脚本",
}, nil, "无联系方式")
if menu==1 then
 Main1()
end
FX1=0
end

function Main1()
menu = gg.choice({
 "一键开启副本辅助",
 "关闭一键副本辅助",
 "副本无敌",
 "无敌恢复",
 "副本秒杀",
 "秒杀恢复",
 "全屏秒杀",
 "全屏恢复",
 "无限秘法",
 "秘法恢复",
 "副本定怪",
 "定怪恢复",
 "退出科技",
}, nil, "低调使用，请勿带人，别打竞技必封号！")
if menu==1 then a1()end
if menu==2 then a2()end--辅助
if menu==3 then a3()end
if menu==4 then a4()end--无敌
if menu==5 then a5()end
if menu==6 then a6()end--秒杀
if menu==7 then a7()end
if menu==8 then a8()end--全屏
if menu==9 then a9()end
if menu==10 then a10()end--秘法
if menu==11 then a11()end
if menu==12 then a12()end--定怪
if menu==13 then Exit()end--退出
FX1=0
end
function a1()
gg.clearResults()--无敌
 gg.setRanges(16384)
 gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("-99999", gg.TYPE_DWORD)
gg.clearResults()--秒杀
 gg.setRanges(16384)
 gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("0.01", gg.TYPE_FLOAT)
 gg.clearResults()--秘法
gg.setRanges(16384)
gg.searchNumber("-2.9593287e35;100.0;7.8303729e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.clearResults()--技能
gg.setRanges(16384)
gg.searchNumber("100;240;180", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("350",gg.TYPE_FLOAT)
gg.clearResults()--人物
gg.setRanges(16384)
gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("45000",gg.TYPE_FLOAT)
gg.clearResults()--攻击
gg.setRanges(16384)
gg.searchNumber("100;30592844D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("450",gg.TYPE_FLOAT)
gg.clearResults()--加速
gg.setRanges(16384)
gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101", gg.TYPE_DOUBLE)
gg.toast("副本辅助开启")
end
function a2()
gg.clearResults()--无敌
 gg.setRanges(16384)
 gg.searchNumber("-262.00003051758F;-99999::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("10000", gg.TYPE_DWORD)
gg.clearResults()--秒杀
 gg.setRanges(16384)
 gg.searchNumber("0.01;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("100", gg.TYPE_FLOAT)
 gg.clearResults()--秘法
gg.setRanges(16384)
gg.searchNumber("-2.9593287e35;10000.0;7.8303729e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.clearResults()--技能
gg.setRanges(16384)
gg.searchNumber("350;240;180", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("350", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.clearResults()--人物
gg.setRanges(16384)
gg.searchNumber("45000;-304121326D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.clearResults()--攻击
gg.setRanges(16384)
gg.searchNumber("450;30592844D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("450", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.clearResults()--加速
 gg.setRanges(16384)
 gg.searchNumber("101", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("101", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("1000", gg.TYPE_DOUBLE)
 gg.toast("副本辅助关闭")
 end
function a3()
 gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("-99999", gg.TYPE_DWORD)
 gg.toast("副本无敌开启")
 gg.clearResults()
end

function a4()
 gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber("-262.00003051758F;-99999::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("10000", gg.TYPE_DWORD)
 gg.toast("副本无敌恢复")
 gg.clearResults()
end

function a5()
 gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("0.01", gg.TYPE_FLOAT)
 gg.toast("副本秒杀")
 gg.clearResults()
end

function a6()
 gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber("0.01;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("100", gg.TYPE_FLOAT)
 gg.toast("副本秒杀恢复")
 gg.clearResults()
end

function a7()
gg.clearResults()--技能
gg.setRanges(16384)
gg.searchNumber("100;240;180", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("350",gg.TYPE_FLOAT)
gg.clearResults()--人物
gg.setRanges(16384)
gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("45000",gg.TYPE_FLOAT)
gg.clearResults()--攻击
gg.setRanges(16384)
gg.searchNumber("100;30592844D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("450",gg.TYPE_FLOAT)
gg.toast("全屏秒杀开启")
end

function a8()
 gg.clearResults()--技能
gg.setRanges(16384)
gg.searchNumber("350;240;180", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("350", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.clearResults()--人物
gg.setRanges(16384)
gg.searchNumber("45000;-304121326D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.clearResults()--攻击
gg.setRanges(16384)
gg.searchNumber("450;30592844D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("450", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("全屏秒杀关闭")
end

function a9()
 gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2.9593287e35;100.0;7.8303729e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.toast("无限秘法")
end
function a10()
 gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-2.9593287e35;10000.0;7.8303729e-38", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
 gg.toast("秘法恢复")
 gg.clearResults()
end
function a11()
gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber("0.1171875;-442552292D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("0.1171875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("5", gg.TYPE_FLOAT)
 gg.toast("副本定怪")
 gg.clearResults()
end
function a12()
 gg.clearResults()
 gg.setRanges(16384)
 gg.searchNumber("5;-442552292D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(100)
 gg.editAll("0.1171875", gg.TYPE_FLOAT)
 gg.toast("定怪恢复")
 gg.clearResults()
end
function Exit()
print("无联系方式")
gg.toast("退出脚本.....")
os.exit()
end
cs="无联系方式"
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end