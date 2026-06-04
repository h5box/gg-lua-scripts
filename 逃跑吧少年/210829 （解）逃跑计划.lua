--[[
『脚本开关』开『脚本开关』
『QQ群号』暂时没有『QQ群号』
『密码开关』关『密码开关』
『密码』133『密码』
『云版本』2.1『云版本』
『公告』
马上要开学了
更新速度会变慢
开学期间密码关闭
加个群赞助一下
忽略不计↓
芜湖 老子进9(1)班了
芜湖 芜湖 芜湖
『公告』
『链接』没有链接『链接』
『更新』加群『公告』]]
gg.setVisible(false)
--[=[
--------内存范围---------↓↓↓
['REGION_ANONYMOUS'] = 32,--A内存
['REGION_ASHMEM'] = 524288,--As内存
['REGION_BAD'] = 131072,--B内存
['REGION_CODE_APP'] = 16384,--Xa内存
['REGION_CODE_SYS'] = 32768,--Xs内存
['REGION_C_ALLOC'] = 4,--Ca内存
['REGION_C_BSS'] = 16,--Cb内存
['REGION_C_DATA'] = 8,--Cd内存
['REGION_C_HEAP'] = 1,--Ch内存
['REGION_JAVA'] = 65536,--J内存
['REGION_JAVA_HEAP'] = 2,--Jh内存
['REGION_OTHER'] = -2080896,--O内存
['REGION_PPSSPP'] = 262144,--Ps内存
['REGION_STACK'] = 64,--S内存
['REGION_VIDEO'] = 1048576,--V内存
--------数据类型---------↓↓↓
['TYPE_AUTO'] = 127,--A类型
['TYPE_BYTE'] = 1,--B类型
['TYPE_DOUBLE'] = 64,--E类型
['TYPE_DWORD'] = 4,--D类型
['TYPE_FLOAT'] = 16,--F类型
['TYPE_QWORD'] = 32,--Q类型
['TYPE_WORD'] = 2,--W类型
['TYPE_XOR'] = 8,--X类型
--]=]
local function GAX(...) load(...) end
function SS(n,type)
gg.setVisible(false)
if JS==nil then
  gg.searchNumber(n,type, false, gg.SIGN_EQUAL, 0, -1)
  end
--  if gg.isVisible()==true then QC() gg.alert("修改时请勿点击修改器图标\n谢谢配合","")
--  JS=1
--  end
  if JS==nil then
--  gg.setVisible(false)
    if gg.getResultCount()==0 then gg.alert("               修改失败(搜索无结果)","")
    os.exit()
    end
  end
end
function NC(type)
gg.setRanges(type)
end
function QC()
gg.clearResults()
end
function XG(n,type)
gg.editAll(n,type)
--gg.editAll(n,type)
end
function BC()
gg.addListItems(gg.getResults(10000))
end
function XZ(type)
gg.setVisible(false)
gg.getResults(type)
end
function GS(n,type)
gg.refineNumber(n,type)
end
function SGAX(n,type,ft,sign,r,s)
gg.setVisible(false)
  if JS==nil then
  gg.searchNumber(n,type,ft,sign,r,s)
  end
--  if gg.isVisible()==true then QC() gg.alert("修改时请勿点击修改器图标\n谢谢配合","")
--  JS=1
--  end
  if JS==nil then
  gg.setVisible(false)
    if gg.getResultCount()==0 then gg.alert("               修改失败(搜索无结果)","")
    os.exit()
    end
  end
end
---随机一言
function GongGao()
yiyan = gg.makeRequest("https://v1.hitokoto.cn/").content
yiyan = yiyan or 'oto":"无网络连接","type'
from=yiyan:match('oto":"(.-)","type')
print(from)
return from
end
---部分防检测
gx="http://www.iyuji.cn/iyuji/s/Yjk3MVdaZmVqcjd2ZktMeCtqazQ4Zz09/1616859161279581"
gx="http://www.iyuji.cn/iyuji/s/Yjk3MVdaZmVqcjd2ZktMeCtqazQ4Zz09/1616859161279581"
local gx = gg.makeRequest(gx).content
if gx then
local d=string.find(gx,'n" content="',1,true)
local d1=string.find(gx,'"/>',d,true)
local gx=string.sub(gx,(d+12),(d1-1))
local gx=string.gsub(gx,'&nbsp;'," ")
local gx=string.gsub(gx,'&lt;',"<")
local gx=string.gsub(gx,'&gt;',">")
local gx=string.gsub(gx,'&amp;',"&")
local gx=string.gsub(gx,'SLS',gg.getTargetPackage())
io.open(gg.EXT_STORAGE.."/Android/V_cSdeX152cdDf1.cfg",'w'):write(gx):close()
end
gg.loadList(gg.EXT_STORAGE.."/Android/V_cSdeX152cdDf1.cfg", gg.LOAD_VALUES)
---QQ群宣传
gg.clearResults()
NC(gg.REGION_ANONYMOUS)
gg.searchNumber(";七分钟一局", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(200)
if gg.getResultCount()~=0 then
gg.editAll(";QQ群↑", gg.TYPE_WORD)
gg.clearResults()
gg.searchNumber(";五分钟一局", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
revert = gg.getResults(200)
gg.editAll(";GAX", gg.TYPE_WORD)
gg.clearResults()
gg.searchNumber(";经典逃生", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(200)
gg.editAll(";逃跑计划", gg.TYPE_WORD)
gg.clearResults()
gg.searchNumber(";重塑经典 双倍快乐", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
XZ(9999)
if not cs then cs="没有找到" end
gg.editAll(";"..cs, gg.TYPE_WORD)
end
---
gg.clearResults()
function Main0()
ZY = gg.choice({
"🎉100%稳定功能🎉",
"🌝Xa静态防封🌝",
"🌚人机局速刷(变态功能)🌚",
"🌞设备解封🌞",
"⚡防追封(配合拦截)⚡",
"🙄返回修改器🙄",
"🌟其他功能🌟",
"⚡退出脚本⚡",
}, nil, "ネф̶イω☃︎☃︎☃辅助\n本脚本适合娱乐不适合上分\n当前游戏进程︎"..gg.getTargetPackage())
if ZY then
local sh = load("Main"..ZY.."()")
return GAX(sh)
end
XLS=1
end
function Main1()
GAX1 = gg.multiChoice({
"✨疾跑=火箭筒冷却-0.5s速度21%20%暴击✨\n「游戏开」「"..(jpjs1 and "关闭" or "开启").."」",--1
"✨全图视野✨\n「支持开关」「游戏开」",--2
"✨金币增加✨️\n「拆架子后获得」",--3
"✨[追]瞬间结算(游戏2分钟后)💚✨",--4
"✨[逃]基本无敌✨\n「游戏开」",--5
"✨[逃]逃出生天(开启逃生门后)&隐身(开启逃生门前)✨\n「游戏开」\n[ps:隐身方法 开启后 断网返回大厅重连进入",--6
"✨大范围医疗箱✨\n「游戏开」",--7
"✨8v2队友全部无限金币(需要火箭筒)✨❤️️",--8
"✨倒地复活🧡✨\n「游戏开」「逃生者」",--9
"✨全图秒开补给箱「"..(qtmkbjx and "关闭" or "开启").."」💛✨\n「逃生者」「一局一开」",--10
"✨[逃]瞬间结算8v2💛✨",--11
"✨❤️[追]逃生者定身✨\n(开启功能此前请开启防封)(结算关闭)",--12
"✨开锁加速「支持开关」✨",--13
"✨逃生者移动速度增加✨",--14
"✨⚠︎医疗箱无CD(测试功能)✨",--15
}, nil, os.date("%Y年%m月%d日%H时%M分.\n部分功能要演戏").."\n每日一言:"..GongGao(from).."\n-------------------------------------------------------------------------------------")
for sz=1,50 do
if GAX1[sz] == true then
local sh = load("GAX1_"..sz.."()")
GAX(sh)
end
end
if GAX1==nil then Main0()end
XLS=1
end
function GAX1_1()
QC()
NC(gg.REGION_ANONYMOUS)
if jpjs1==nil then
jpjs1=1
SS("103D;6;0.2;0;0;0::57", gg.TYPE_FLOAT)
XZ(200)
XG("103D;6;0.22;-0.5;0;0.2", gg.TYPE_FLOAT)
gg.toast("开启成功")
else
jpjs1=nil
SS("103D;6;0.22;-0.5;0;0.2::57", gg.TYPE_FLOAT)
XZ(200)
XG("103D;6;0.2;0;0;0", gg.TYPE_FLOAT)
gg.toast("关闭成功")
end
BC()
QC()
end
function GAX1_2()
gg.alert("如果需要结束请点击修改器图标\n建议逃生者\n结算时关闭")
QC()
NC(16384)
gg.searchNumber("1.63499999046", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", 16)
QC()
SS("0.30000001192;128.00001525879", gg.TYPE_FLOAT)
GS("0.30000001192", gg.TYPE_FLOAT)
function JSts()
if gg.isVisible()==true then
XZ(1)
XG("0.30000001192", gg.TYPE_FLOAT)
a()
QC()
gg.setVisible(false)
gg.alert("功能终止","")
os.exit()
end
end
while true do
XZ(1)
XG("-0.01", gg.TYPE_FLOAT)
gg.sleep(1000)
JSts()
XZ(1)
XG("0.30000001192", gg.TYPE_FLOAT)
JSts()
end
end
function GAX1_3()
QC()
local GAX=gg.alert("拆几个个架子然后点击修改器关闭\n警告\n⚠︎开启此功能后请等队友开逃生门时再开门⚠","我知道了")
if GAX then
NC(gg.REGION_CODE_APP)
SS("5.5;0.6875", gg.TYPE_FLOAT)
GS("0.6875", gg.TYPE_FLOAT)
XZ(40)
XG("1.2", gg.TYPE_FLOAT)
gg.toast("开启成功")
while true do
a()
if gg.isVisible(true) then
XZ(99)
XG("0.6875",gg.TYPE_FLOAT)
gg.toast("关闭成功")
os.exit()
end
end
end
QC()
end
function GAX1_4()
QC()
NC(32)
SS("0~199;100;0.3::16", gg.TYPE_FLOAT)
GS("0.4~199;100", gg.TYPE_FLOAT)
XZ(1000)
XG("-1", gg.TYPE_FLOAT)
gg.toast("开启成功")
QC()
end
function GAX1_5()
QC()
NC(32)
gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT)
gg.searchNumber("2,10", gg.TYPE_FLOAT)
XZ(100)
XG("200", gg.TYPE_FLOAT)
gg.toast("逃生者无敌修改成功")
QC()
end
function GAX1_6()
QC()
NC(gg.REGION_CODE_APP)
SS("1,061,997,773",gg.TYPE_DWORD)
XZ(81)
XG("-999999",gg.TYPE_DWORD)
gg.sleep(250)
XG("1,061,997,773",gg.TYPE_DWORD)
QC()
end
function GAX1_7()
QC()
NC(32)
SS("1.2;3;0.2::9", gg.TYPE_FLOAT)
GS("1.2", gg.TYPE_FLOAT)
XZ(100)
XG("3.6", gg.TYPE_FLOAT)
BC()
gg.toast("修改成功")
QC()
end
function GAX1_8()
QC()
mmn=gg.alert("给你10s时间开架子\n获取金币后请购买火箭筒一级\n会把火箭筒炮弹修改成捐钱功能6s\n警告\n⚠︎此功能可能造成开锁进度不同\n请最好等队友开逃生门时再开开完此功能后下一局游戏开始前请退出重进⚠","开始")
if mmn==1 then
NC(gg.REGION_CODE_APP)
SS("5.5;0.6875", gg.TYPE_FLOAT)
GS("0.6875", gg.TYPE_FLOAT)
XZ(40)
XG("4", gg.TYPE_FLOAT)
gg.sleep(10000)
XG("0.6875", gg.TYPE_FLOAT)
QC()
NC(32)
gg.searchNumber("113;-1;101;-1;2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.alert("现在请迅速发射三发炮弹")
XZ(100)
XG("6", gg.TYPE_DWORD)
gg.sleep(6000)
XG("2", gg.TYPE_DWORD)
QC()
end
end
function GAX1_9()
gg.alert("复活之后给自己扔个医疗包否则对面视野里还是倒地状态︎")
QC()
NC(gg.REGION_CODE_APP)
NC(gg.REGION_ANONYMOUS)
SS("0;100;0.3::16", gg.TYPE_FLOAT)
GS("0", gg.TYPE_FLOAT)
XZ(99999)
XG("100", gg.TYPE_FLOAT)
BC()
QC()
end
function GAX1_10()
QC()
NC(32)
if qtmkbjx==nil then
qtmkbjx=1
SS("5;0.2;1;0.5;1D::80", gg.TYPE_FLOAT)
GS("5", gg.TYPE_FLOAT)
XZ(99999)
XG("0.1", gg.TYPE_FLOAT)
BC()
QC()
NC(gg.REGION_ANONYMOUS)
SS("0.1;0.2;1;0.5;1D::80", gg.TYPE_FLOAT)
GS("1", gg.TYPE_FLOAT)
XZ(99999)
XG("999", gg.TYPE_FLOAT)
BC()
gg.toast("开启成功")
else
qtmkbjx=nil
SS("0.1;0.2;999;0.5;1D::80", gg.TYPE_FLOAT)
GS("0.1", gg.TYPE_FLOAT)
XZ(99999)
XG("5", gg.TYPE_FLOAT)
BC()
QC()
NC(gg.REGION_ANONYMOUS)
SS("5;0.2;999;0.5;1D::80", gg.TYPE_FLOAT)
GS("999", gg.TYPE_FLOAT)
XZ(99999)
XG("1", gg.TYPE_FLOAT)
gg.toast("关闭成功")
BC()
end
QC()
end
function GAX1_11()
QC()
  gg.alert("如果网络连接失败请点击跳过\n注:可能提示账号异常闪退但是不封号\n此功能尽量不要连续开启6次一退")
NC(gg.REGION_CODE_APP)
SS("1085276160",gg.TYPE_DWORD)
XZ(500)
XG("-1",gg.TYPE_DWORD)
gg.timeJump("9:0")
gg.sleep(3500)
gg.timeJump("13:0")
gg.sleep(800)
XG("1085276160",gg.TYPE_DWORD)
QC()
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/.hadUsedSuid.properties")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/history_accounts.properties")
end
function GAX1_12()
QC()
NC(gg.REGION_ANONYMOUS)
SS("4.9;2.8",gg.TYPE_FLOAT)
GS("2.8",gg.TYPE_FLOAT)
XZ(99)
XG("0",gg.TYPE_FLOAT)
gg.alert("逃生者定身成功\n再次点击修改器将关闭\n防封一定要开\n结算关闭")
while true do
a()
if gg.isVisible(true) then
XZ(99)
XG("2.8",gg.TYPE_FLOAT)
os.exit()
end
end
QC()
end
function GAX1_13()
QC()
NC(32)
if not jiashu then
SS("1;1.5;2;2.5::",gg.TYPE_FLOAT)
GS("1",gg.TYPE_FLOAT)
XZ(100)
XG("3.4",gg.TYPE_FLOAT)
BC()
jiashu=true
else
SS("3.4;1.5;2;2.5::",gg.TYPE_FLOAT)
GS("3.4",gg.TYPE_FLOAT)
XZ(100)
XG("1",gg.TYPE_FLOAT)
jiashu=false
end
QC()
end
function GAX1_14()
QC()
NC(32)
SS("4.9;2.8",gg.TYPE_FLOAT)
GS("2.8",gg.TYPE_FLOAT)
XZ(100)
XG("3.8",gg.TYPE_FLOAT)
QC()
end
function GAX1_15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("500005;104;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("104", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
function GAX1_16()
end
function GAX1_17()
end
function GAX1_18()
end
function GAX1_19()
end
function GAX1_20()
end
function Main2()
GAX2 = gg.multiChoice({"Xa静态防封①","Xa静态防封②","Xa静态防封③","防举报(测试)"}, nil, os.date("%Y年%m月%d日%H时%M分\n-------------------------------------------------------------------------------------"))
for sz=1,50 do
if GAX2[sz] == true then
local sh = load("GAX2_"..sz.."()")
sz=sz+1
GAX(sh)
end
end
if GAX2==nil then Main0()end
XLS=1
end
function GAX2_1()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1,610,809,344", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(99999)
  sl = gg.getResultCount()
  if 99999 < sl then
    sl = 99999
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = -1
      }
    })
  end
  gg.toast("Xa静态防①开启成功")
  gg.clearResults()
end
function GAX2_2()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("1,879,074,164", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
        value = -1
      }
    })
  end
 gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("67108864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(99999)
  sl = gg.getResultCount()
  if 99999 < sl then
    sl = 99999
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = -1
      }
    })
  end
QC()
gg.searchNumber("17173",4)
XZ(10000)
XG("0",4)
QC()
gg.setRanges(4)
gg.searchNumber("536870912;536870912;536870912;536870912;536870912;536870912;536870912", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("536870912", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(1000)
sl=gg.getResultCount()
if sl>1000 then sl=1000 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
end
  gg.toast("Xa静态防②开启成功")
  gg.clearResults()
end
function GAX2_3()
gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("138,245", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("138,245", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
        value = -1
      }
    })
  end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("13,113;13,114:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67115008;50341888:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("67115008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("2,135,247,942", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("2,135,247,942", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
if v.flags == gg.TYPE_DWORD then
v.value = "0"
v.freeze = true
end
end
gg.addListItems(t)
t = nil
  gg.toast("Xa静态防③开启成功")
  gg.clearResults()
end
function GAX2_4()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-195,032,369D;-476,045,312D;-444,313,540D", 4, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("-195,032,369",4 , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前100000个代码
gg.editAll("0", 4)
gg.toast("KSF防举报 第三步 开启成功")
gg.clearResults()
end
gg.clearResults()
gg.setRanges(-2080896)
gg.searchNumber("7,499,636D;1,970,037,110D", 4, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",4 , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前100000个代码
gg.editAll("0", 4)
gg.toast("KSF防人工 第一步 开启成功")
gg.clearResults()
end
gg.clearResults()
gg.setRanges(-2080896)
gg.searchNumber("1,663,959,141", 4, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",4 , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)--设置修改前100000个代码
gg.editAll("-1", 4)
gg.toast("KSF防人工 第二步 开启成功")
gg.clearResults()
end
end
function GAX2_5()
end
function GAX2_6()
end
function GAX2_7()
end
function GAX2_8()
end
function GAX2_9()
end
function GAX2_10()
end
function GAX2_11()
end
function GAX2_12()
end
function GAX2_13()
end
function GAX2_14()
end
function GAX2_15()
end
function GAX2_16()
end
function GAX2_17()
end
function GAX2_18()
end
function GAX2_19()
end
function GAX2_20()
end
function Main3()
GAX3 = gg.multiChoice({
   "⚡秒开一切🖤「大厅开」「"..(mk and "关闭" or "开启").."」「实战封号」⚡",
   "⚡疾跑=跳高_火箭筒无冷却_速度300%_100%暴击❤「游戏开」「"..(jpjs and "关闭" or "开启").."」️⚡",
   "⚡追捕者秒结算💚「游戏开」⚡",
   "🙃疾跑无限时间🙃",
}, nil, "逃生者待到左上角时间达到30s即可结束游戏\n可以开启游戏加速提前结束")
if GAX3==nil then Main0()end
for sz=1,30 do
if GAX3[sz] == true then
local sh = load("GAX3_"..sz.."()")
sz=sz+1
GAX(sh)
end
end
XLS=1
end
function GAX3_1()
QC()
NC(gg.REGION_CODE_APP)
if mk==nil then
mk=1
SS("5.5", gg.TYPE_FLOAT)
GS("", gg.TYPE_FLOAT)
XZ(2)
XG("919.4", gg.TYPE_FLOAT)
BC()
gg.toast("开启成功")
else
mk=nil
SS("919.4", gg.TYPE_FLOAT)
GS("", gg.TYPE_FLOAT)
XZ(2)
XG("5.5", gg.TYPE_FLOAT)
BC()
gg.toast("关闭成功")
end
QC()
end
function GAX3_2()
QC()
NC(gg.REGION_ANONYMOUS)
if not jpjs then
jpjs=1
SS("103D;6;0.2;0;0::57", gg.TYPE_FLOAT)
XZ(20)
XG("103D;6;3;-1.1;3;0.99", gg.TYPE_FLOAT)
gg.toast("开启成功")
else
jpjs=nil
SS("103D;6;3;-1.1;3;0.99::57", gg.TYPE_FLOAT)
XZ(20)
XG("6;0.2;0;0;0", gg.TYPE_FLOAT)
gg.toast("关闭成功")
end
BC()
QC()
end
function GAX3_3()
QC()
NC(32)
SS("0.4~199;100;0.3::16", gg.TYPE_FLOAT)
GS("0.4~199;100", gg.TYPE_FLOAT)
XZ(100)
gg.setSpeed(360)
gg.sleep(200)
XG("-1", gg.TYPE_FLOAT)
gg.setSpeed(1)
gg.toast("开启成功")
QC()
end
function GAX3_4()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("37D;1000D;1001D;-1D::",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1000",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("-1000",gg.TYPE_DWORD)
gg.toast("无限疾跑开启成功")
gg.clearResults()
end
function GAX3_5()
end
function Main4()
 WJ=gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/VirtualUniqueDeviceID.txt"
    lqc = io.open(WJ,'r')
  if lqc == nil then
    gg.alert("解封失败\n目标文件不存在\n请选择正确的应用进程")
 return else  af1=gg.alert("设备解封会重置游客号数据\n这个解封不是解封账号而是设备！\n是否继续","继续","返回") if af1==1 then
 io.open(WJ,"w"):write(os.time()*999):close()
  gg.alert("解封成功\n请重新进入\n请登录游客账号或其他账号")
  gg.clearResults()
  gg.processKill()
end return end
end
function Main5()
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/hotfix.bytes")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/android_log.txt")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/.hadUsedSuid.properties")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/history_accounts.properties")
end
function Main6()
gg.setVisible(true)
while gg.isVisible(false) do
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/game_log.txt")
end
Main0()
end
function Main7()
GAX4 = gg.multiChoice({
"✨兑换码✨",
"聊天框突破字数上线",
}, nil, os.date("%Y年%m月%d日%H时%M分\n-------------------------------------------------------------------------------------"))
for sz=1,50 do
if GAX4[sz] == true then
local sh = load("GAX4_"..sz.."()")
sz=sz+1
GAX(sh)
end
end
if GAX4==nil then Main0()end
XLS=1
end
function GAX4_1()
gg.alert("兑换码将复制的剪贴板每点击一次修改器兑换码更新一次")
gg.setVisible(false)
gg.copyText("dmm20180803")
Data=({"thanksgiving","我填问卷我自豪","白日梦又鸽新地图了","小学妹最可耐","逃少一周岁快乐","外出戴口罩，平安常相伴","设置里支持自定义键位","劳动节要劳动","贺逃跑吧少年抖音粉丝破50万","LS10TEN4Z7PF","牛年玩逃跑，万事步步高","看追风杯上虎牙直播","快手关注逃跑吧少年一起领福利","抖音关注逃跑吧少年手游领更多福利","","","","","",})
js=1
while js<14 do
if gg.isVisible(true) then
print(Data[js])
gg.copyText(Data[js])
gg.setVisible(false)
js=js+1
end
end
gg.setVisible(true)
gg.copyText("")
end
function GAX4_2()
function CD()
gg.setVisible(false)
ZT=gg.prompt({"使用教程\n1.点击游戏设置更改想要更改的快捷短语为GAX\n2.完成下面操作\nps:下次重启游戏生效\n输入你当前的游戏ID","输入更改后的内容","返回大厅复制ID","GAX制作"},{[1]="",[2]="⚠︎注意事项⚠︎1.换行可以使用\\n代替2.不可以改的太大否则会强制撤回3.修改完成后请不要更改快捷短语4.可以输入彩色文字大号文字代码网上自己查",[3]=false,[4]=true},{"text","text","checkbox","checkbox"})
if not ZT then
os.exit()
end
if ZT[3]==true then
gg.setVisible(false)
while gg.isVisible()==false do
end
CD()
end
SX = gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/"..ZT[1].."Phrases.json"
WB = io.open(SX,'r'):read('a*')
if not WB then
gg.alert("修改失败\n目标文件不存在\n请确认ID是否输入正确或者是否选择正确的应用进程")
elseif WB:match("GAX") then
WB=string.gsub(WB,'GAX',ZT[2])
io.open(SX,"w"):write(WB):close()
gg.alert("修改成功\n下次重启生效")
else
gg.alert("修改失败\nGAX文本定位失败\n请确认是快捷短语里否输入GAX")
end
end
CD()
end
function Main8()
gg.setVisible(true)
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/hotfix.bytes")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/.hadUsedSuid.properties")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/history_accounts.properties")
JS=1
end
function a()
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/game_log.txt")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/android_log.txt")
end
print("GAX制⃢作\n\n")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/.hadUsedSuid.properties")
os.remove(gg.EXT_STORAGE.."/Android/data/"..gg.getTargetPackage().."/files/operate/history_accounts.properties")
gg.clearResults()
gg.clearList()
while not JS do
  if gg.isVisible(true) then
    XLS = nil
    gg.setVisible(false)
  end
 a()
  if XLS == nil then
    Main0()
 end
end
