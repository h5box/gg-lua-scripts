function Main0()
SN = gg.choice({
	 "进入副本专区",
	 "进入全屏专区",
	 "进入竞技专区",
	 "进入娱乐专区",
	 "傻逼魏泽",
	 "返回上一页"
}, nil, "魏泽是傻逼制作,GT破解")
if SN==1 then
	 Main1()
	end
	if SN==2 then
	 Main2()
	end
	if SN==3 then
	 Main3()
	end
	if SN==4 then
	 Main4()
	end
	if SN==5 then
	 Main5()
	end
if SN==6 then 
     Exit()
  end

FX1=0
end
function Main1()
SN = gg.choice({
     "无敌",
	 "无敌恢复",
	 "秒怪",
	 "秒杀恢复",
	 "定怪",
	 "定怪恢复",
	 "加速",
	 "加速恢复",
	 "返回上一页",
	}, nil, "魏泽是傻逼制作")
if SN==1 then
	 HS2()
end
	if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
if SN==5 then
	 HS6()
end
if SN==6 then
	 HS7()
end
if SN==7 then
	 HS8()
end
if SN==8 then
	 HS9()
end
if SN== 9 then 
   HOME() 
end
FX1=0
end
function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-99999", gg.TYPE_DWORD)
	 gg.toast("怪物打不掉血")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-262.00003051758F;-99999::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_DWORD)
	 gg.toast("怪物打不掉血恢复")
	 gg.clearResults()
end
function HS4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("秒怪")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.01;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("秒怪恢复")
	 gg.clearResults()
end
function HS6()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.1171875;-442552292D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1171875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("定怪")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("5;-442552292D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.1171875", gg.TYPE_FLOAT)
	 gg.toast("定怪恢复")
	 gg.clearResults()
end
function HS8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("100F;100::10000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70", gg.TYPE_DOUBLE)
	 gg.toast("加速")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("70F;100::10000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("70", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_DOUBLE)
	 gg.toast("加速恢复")
	 gg.clearResults()
end
function Main2()
SN = gg.choice({
	'全屏秒杀',
    '全屏秒杀恢复',
    '无限秘法',
    '无限秘法恢复',
    '全局加速',
    '全局加速恢复',
    '返回上一页',
    }, nil, "魏泽是傻逼制作")
    if SN==1 then
	 HSY2()
end
	if SN==2 then
	 HSY3()
end
  if SN==3 then
	 HSY4()
end
 if SN==4 then
	 HSY5()
end
 if SN==5 then
	 HSY6()
end
if SN==6 then
	 HSY7()
end
if SN== 7 then 
    HSY8()
end
FX1=0
end
function HSY2()
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
gg.toast("全屏攻击开启成功")
end
function HSY3()
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
gg.toast("全屏攻击关闭成功")
end
function HSY4()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-94111112D;100::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("99999999",gg.TYPE_FLOAT)
gg.toast("无限秘法开启")
end
function HSY5()
--无限秘法
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-94111112D;99999999::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("无限秘法恢复")
end
function HSY6()
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
    gg.toast("全局加速开启成功")
  end
end
function HSY7()
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
function HSY8()
lw=1
Main0()
end
function Main3()
SN = gg.choice({
	'竞技无敌',
	'竞技无敌恢复',
	'竞技减伤',
	'竞技减伤恢复',
	'无视技能',
	'无视技能恢复',
	 '返回上一页',
    }, nil, "魏泽是傻逼制作")
        if SN==1 then
	 HSZ2()
end
    if SN==2 then
	 HSZ3()
end
    if SN==3 then
	 HSZ4()
end
    if SN==4 then
	 HSZ5()
end
   if SN==5 then
	 HSZ6()
end
    if SN==6 then
	 HSZ7()
end
    if SN==7 then
	 HSZ8()
end
FX1=0
end
function HSZ2()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("100;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_FLOAT)
	 gg.toast("竞技无敌已开启")
	 gg.clearResults()
end
function HSZ3()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("999999999;10000::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("竞技无敌已关闭")
	 gg.clearResults()
end

function HSZ4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-262.00003051758F;10000::10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999999", gg.TYPE_DWORD)
	 gg.toast("竞技减伤已开启")
	 gg.clearResults()
end
function HSZ5()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-262.00003051758F;999999999::999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10000", gg.TYPE_DWORD)
	 gg.toast("竞技减伤已关闭")
	 gg.clearResults()
end
function HSZ6()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("100;30592844D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("开启中")

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("100;240;180", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-100",gg.TYPE_FLOAT)
gg.toast("开启中")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("10000;-304121326D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("-10000",gg.TYPE_FLOAT)
gg.toast("竞技场无视技能已开启")

gg.clearResults()
end
function HSZ7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-100;30592844D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-100", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("关闭中")
gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-10000;-304121326D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-10000", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.toast("竞技场无视技能已关闭")
gg.clearResults()
end
function HSZ8()
lw=1
Main0()
end
function Main4 ()
SN = gg.choice({
	 "天赋本刷图专用速度",
	 "天赋本刷图专用速度恢复",
	 "竞技专用速度",
	 "竞技专用速度恢复",
	 "刷副本专用速度",
	 "刷副本专用速度恢复",
	 "返回上一页",
	}, nil, "魏泽是傻逼制作")
  if SN==1 then
	 HSA2()
end
  if SN==2 then
	 HSA3()
end
  if SN==3 then
	 HSA4()
end
  if SN==4 then
	 HSA5()
end
if SN==5 then
	 HSA6()
end
  if SN==6 then
	 HSA7()
end
  if SN==7 then
	 HSA8()
end
FX1=0
end
function HSA2()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000F;1000::10000",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("15.625",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end
function HSA3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("15.625F;1000::10000",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15.625", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1000",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end

function HSA4()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000F;1000::10000",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("500",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end
function HSA5()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("500F;1000::10000",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("500", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1000",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end

function HSA6()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000F;1000::10000",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("250",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end
function HSA7()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("250F;1000::10000",  gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("250", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1000",gg.TYPE_DOUBLE)
gg.toast("开启成功")
end
function HSA8()
lw=1
Main0()
end

function Main5 ()
SN = gg.choice({
	"作者QQ",
	"返回上一页",
}, nil, "魏泽是傻逼制作")
	  if SN==1 then
	 HSB2()
	end
	  if SN==2 then
	 HSB3()
	end
	FX1=0
end
function HSB2()
print("魏泽是傻逼")
gg.alert("魏泽是傻逼制作复制成功")
end
function HSB3()
lw=1
Main0()
end
function Exit()
print("魏泽是傻逼")
os.exit()
end
function HOME()
lw=1
Main0()
end
cs = "魏泽是傻逼"
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
   end
end