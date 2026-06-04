--[[大多数脚本代码非原创↓↓↓
  感谢↓↓:
  脚本交流: 介子空间、葫芦侠
  脚本源码: 卢姥爷、有道URL、TC、老白(柒帘已解)、恶魔、枫客(解南天脚本)、南天、清溪(豪哥已解)、影焱、仙阁、江南(豪哥已解)、王者、小K(豪哥已解)、漪帘、残梦、奇葩姑凉拽天下、大橘解说、尘墨、木易(二改🐶大家小心)、仙者&殇魂…等
  过检源码: 狗轩(王者荣耀)、@幼幼(王者荣耀)…等
  模板源码: 冰雨科技{冰雨、HM[解冰雨](部分代码我有修改过)}
  脚本思路: 卢姥爷、糖糖、老白
  续写脚本: 柒帘,QQ2151986674
  主要感谢: 柒帘、南天、卢姥爷、老白、枫客、江南、仙阁、清溪、有道URL
]]

--此脚本防小白

sjsj = os.date("当前时间为:\n%c")
RElove_ture1=gg.toast
RElove_ture2=gg.clearResults
RElove_ture3=gg.searchNumber
RElove_ture4=gg.editAll
RElove_ture5=gg.setRanges
RElove_ture6=gg.getResults
RElove_ture8=gg.searchAddress
RElove_ture9=gg.getResultCount
RElove_ture10=gg.REGION_BAD
RElove_ture11=gg.REGION_ANONYMOUS
RElove_ture12=gg.REGION_C_ALLOC
RElove_ture13=gg.REGION_C_DATA
RElove_ture14=gg.REGION_C_HEAP
RElove_ture15=gg.REGION_CODE_APP
RElove_ture16=gg.REGION_CODE_SYS
RElove_ture17=gg.REGION_JAVA_HEAP
RElove_ture18=gg.REGION_VIDEO
RElove_ture19=gg.TYPE_FLOAT
RElove_ture21=gg.TYPE_DWORD
RElove_ture22=gg.TYPE_BYTE
RElove_ture23=gg.TYPE_WORD
RElove_ture25=false
RElove_ture26="1"
RElove_ture29="开启成功"
RElove_ture30=gg.SIGN_EQUAL

--配置↑↑↑

--全网收集脚本制作整合而成，部分原创

function Main()
menu = gg.choice({
'普通区',
'上天区',
'入地区',
'小玩具',
'去凡间'},
nil,'')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then Exit() end
XGCK=-1
end

function D()
menu1 = gg.choice({
'更新公告(必看)',
'云脚本翻译器',
'云脚本查天气',
'云脚本计算器',
'过检保、防闪退',
'🔥真大厅模式防踢',
'🔥真排位模式防封',
'假防踢(游戏加载时开)',
'防举报(这游戏举报没用)',
'点击返回上面一页'},
nil,''..sjsj)
if menu1 == 1 then d1() end
if menu1 == 2 then d2() end
if menu1 == 3 then d7() end
if menu1 == 4 then d8() end
if menu1 == 5 then d3() end
if menu1 == 6 then d4() end
if menu1 == 7 then d9() end
if menu1 == 8 then d5() end
if menu1 == 9 then d6() end
if menu1 == 10 then HOME() end
XGCK=-1
end

function d1()
menu1 = gg.choice({
'🌷更新公告🌷',
'🌷返回上面🌷'},
nil,""..sjsj)
if menu1 == 1 then gg1() end
if menu1 == 2 then D() end
XGCK=-1
end

function gg1()
gg.alert("优化版更新内容:\n1.新增不卡处刑、细微加速。\n2.修复锁身关闭失败bug。\n3.优化小刀飞刀。\n4.去除多余没用的功能，比如全屏自瞄穿墙。\n多多支持反馈！")
end

function d2()
to1="内容为空"
to2="无效翻译模式"
ms1="英转中"
ms2="日转中"
ms3="韩转中"
ms4="法转中"
ms5="饿转中"
ms6="西班牙转中"
gg.alert("翻译模式简化指令<不支持中转其他>:\n\n1为英转中\n\n2为日转中\n\n........")
XGCK=-1
  Loikey= gg.prompt({
  '请输入翻译内容：',
    '请输入翻译模式：',
 }, {   
[1]="",
[2]="",
}, {"text", "text"})
nr=Loikey[1] 
ms=Loikey[2] 
if nr== "" then
gg.toast(to1)
print(to1)
return
elseif ms=="" then
gg.toast(to2)
print(to2)
return
elseif ms==ms1 or "1" then
gg.toast("翻译模式:"..ms1)
lx="EN2ZH_CN"
elseif ms==ms2 or "2" then
gg.toast("翻译模式:日转中")
lx="JA2ZH_CN"
elseif ms== ms3 or "3" then
gg.toast("翻译模式:韩转中")
lx="KR2ZH_CN"
elseif ms==ms4 or "4" then
gg.toast("翻译模式:法转中")
lx="FR2ZH_CN"
elseif ms==ms5 or "5" then
gg.toast("翻译模式:俄转中")
lx="RU2ZH_CN"
elseif ms==ms5 or "6" then
gg.toast("翻译模式:西班牙转中")
lx="SP2ZH_CN"
else
gg.alert("我是恶魔")
return
end
--有道URL
url='http://m.youdao.com/translate'
post="inputtext=0"..nr.."&type="..lx
lw1=gg.makeRequest(url, nil, post).content
hood = lw1:match("<li>0(.-)</li>")--名字 
gg.alert("译文:\n"..hood)
print("恶魔原创")
gg.copyText(hood, true)
end

function d3()
RElove_ture2()
RElove_ture3(RElove_ture26, RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3(RElove_ture26, RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3(RElove_ture26, RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3(RElove_ture26, RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture1('过检测保护完成')
RElove_ture2()
RElove_ture5(RElove_ture11)
RElove_ture3(RElove_ture26, gg.TYPE_AUTO, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture2()
RElove_ture5(RElove_ture11)
RElove_ture3(RElove_ture26, gg.TYPE_AUTO, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture2()
RElove_ture5(RElove_ture11)
RElove_ture3(RElove_ture26, gg.TYPE_AUTO, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture1("防止游戏闪退崩溃完成")
end

function d4()
gg.alert("游戏防踢:\n你被投票的时候退出，然后再进房间即可")
end

function d5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("20;12;0;120;200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("想踢我不存在的")
end

function d6()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("1.2F;1.8F:9::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1F;1.4F:3::1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.1D;1.4D:2::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.searchNumber("5001;1.1;1F::10", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("5001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.searchNumber("1.5;0.4::60", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("5", gg.TYPE_DOUBLE)
  gg.editAll("9", gg.TYPE_DOUBLE)
  gg.editAll("4.66", gg.TYPE_DOUBLE)
  gg.editAll("5.5", gg.TYPE_DOUBLE)
  gg.toast("防举报")
end

function d7()
--原创TC，开源是为了学习交流，转载使用请留名
file=io.open("/storage/emulated/0/.MyCity","r")
if file~=nil then con=file:read("*a") dz=con:match("%&(.-)%&") city=con:match("@(.-)@") file:close()
 else
  city=gg.prompt({"输入城市"},{""},{"text"})[1]
  local function Enc(Mzsh)
    return Mzsh:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  dz=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?cityname="..Enc(city).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")
  if dz==nil then gg.alert("输入错误城市，请重新输入") os.exit() else f=io.open("/storage/emulated/0/.MyCity","w"):write("@"..city.."@\n&"..dz.."&"):close() end
end
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function x(x)
  local i=0
  for w in string.gmatch(x,"active") do
    i=i+1 end
  local t=string.rep("⭐",i)
  return t
end
-------
tq=gg.makeRequest("http://www.weather.com.cn/weather1d/"..dz..".shtml").content
---获取1天内天气
a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(tq,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")
b=split(a,"$")--天气

---获取生活指数
tab={"<h2>(.-)</h2>","<em>(.-)</em>","\n<i (.-)</i>\n","<dd>(.-)</dd>"}
shzs=gg.makeRequest("http://www.weather.com.cn/weather1dn/"..dz..".shtml").content
tq1=string.match(shzs,"<b>生活助手</b>(.-)</div>")
c={}
for i=1,4 do
  c[i]={}
  for w in string.gmatch(tq1,tab[i]) do
    if i==1 then if string.find(w,"em") then w="健臻·血糖" end end
    table.insert(c[i],w)
  end
end
ts={}
for v=1,6 do
  ts[v]={}
  for i=1,4 do
    table.insert(ts[v],c[i][v])
  end
end
mm=""
for i=1,6 do
  mm=mm..ts[i][1]..":"..ts[i][2].."\n指数:"..x(ts[i][3]).."\n温馨提示:"..ts[i][4].."\n\n"
end
gg.alert("当前城市:"..city.."\n"..table.concat(b,"\n").."\n-----------\n".."生活助手:\n"..mm)
end

function d8()
  t = gg.prompt({
    "C 1 :",
    "C 2 :",
    " Perkalian/p/乘法",
    " Pembagian/除法",
    " tambah /加法",
    " kurang /减法"
  }, {
    [1] = " ",
    [2] = " ",
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false
  }, {
    [1] = "number",
    [2] = "number",
    [3] = "checkbox",
    [4] = "checkbox",
    [5] = "checkbox",
    [6] = "checkbox"
  })
  if t == nil then
    os.exit()
  end
  if t[3] == true then
    kali()
  end
  if t[4] == true then
    bagi()
  end
  if t[5] == true then
    tambah()
  end
  if t[6] == true then
    kurang()
  end
  os.exit()
  NSA = -1
end
function kali()
  print(t[1] .. " x " .. t[2] .. " =", t[1] * t[2])
end
function bagi()
  print(t[1] .. "  : " .. t[2] .. " =", t[1] / t[2])
end
function tambah()
  print(t[1] .. " + " .. t[2] .. " =", t[1] + t[2])
end
function kurang()
  print(t[1] .. "  - " .. t[2] .. " =", t[1] - t[2])
end

function d9()
gg.alert("排位防封教程：\n排位最后一把打完立马退出，其他人就无法加你好友举报了，也找不到你的Id，录屏也没用，但是没有加排位分数！")
end

function A()
menu1 = gg.multiChoice({
'子弹秒杀系列',--1
'各类穿墙系列',--2
'增强自瞄系列',--3
'武器午后系列',--4
'枪械聚点系列',--5
'近战飞刀系列',--6
'生化飞抓系列',--7
'人物穿山系列',--8
'大厅手雷系列',--9
'各种范围系列',--10
"处理器透色系列",--12
'高帧率(开了不卡)',--13
"全局加速减速系列",--14
"娱乐自慰无用功能系列",--15
'点击返回上一页(主页)'},--16
nil,'🌷柒帘与豪哥联合制作🌷')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a3() end
if menu1[3] == true then a6() end
if menu1[4] == true then a5() end
if menu1[5] == true then a12() end
if menu1[6] == true then a8() end
if menu1[7] == true then a4() end
if menu1[8] == true then a2() end
if menu1[9] == true then a7() end
if menu1[10] == true then a13() end
if menu1[11] == true then a9() end
if menu1[12] == true then a10() end
if menu1[13] == true then a14() end
if menu1[14] == true then a15() end
if menu1[15] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'踏空飞天系列',
'连跳飞天系列',
'路飞跳高系列',
'自改路飞跳高',
'升天飞天系列',
'返回上一页'},
nil,'🌷柒帘与豪哥联合制作🌷')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end



funtable={
'开启最新超强深遁',
'开启旧版全局遁地',
'遁地关(结束必关)',
'开启稳定穿山深遁',
'关闭稳定穿山深遁',
'开启非加速遁地',
'关闭非加速遁地',
'原创自改遁地',
'自改遁地关闭',
'娱乐遁地系列',
'返回上一页'}
function C()
menu1 = gg.multiChoice(funtable,nil,'🌷柒帘与豪哥联合制作🌷')
if menu1 == nil then else
if menu1[1] == true then c9() end
if menu1[2] == true then c1() end
if menu1[3] == true then c2() end
if menu1[4] == true then c7() end
if menu1[5] == true then c8() end
if menu1[6] == true then c3() end
if menu1[7] == true then c4() end
if menu1[8] == true then c5() end
if menu1[9] == true then c6() end
if menu1[10] == true then c15() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end






function a1()
menu2 = gg.multiChoice({
"开启竞技秒杀",
"关闭竞技秒杀",
"开启射速秒杀",
"关闭射速秒杀",
"开启挑战秒杀",
"关闭挑战秒杀",
"自定义秒杀🏆",
"冲锋枪专用射速\n射速减慢没啥用",
"关闭冲锋枪射速",
"点击这返回"},
nil,"子弹加速有时无伤")
if menu2 == nil then else
if menu2[1] == true then GH1() end
if menu2[2] == true then GH2() end
if menu2[3] == true then GH3() end
if menu2[4] == true then GH4() end
if menu2[5] == true then GH5() end
if menu2[6] == true then GH6() end
if menu2[7] == true then GH7() end
if menu2[8] == true then GH8() end
if menu2[9] == true then GH9() end
if menu2[10] == true then A() end
end
GLWW=-1
end

function GH1()
    RElove_ture2()
    RElove_ture5(32)
    RElove_ture3('00000000h;1F~10000F;44160000h;43480000h::28', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("开启失败，你都没恢复开什么")
else
    RElove_ture3('0', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(1000)
    RElove_ture4('5', RElove_ture21)
    RElove_ture1('开启成功')
end
end

function GH2()
    RElove_ture2()
    RElove_ture5(32)
    RElove_ture3('00000000h;1F~10000F;44160000h;43480000h::28', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture8("?????E14")
    RElove_ture3('5', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(1000)
    RElove_ture4('0', RElove_ture21)
    RElove_ture1('有些枪无法关闭')
end

function GH3()
    RElove_ture2()
    RElove_ture5(4)
    RElove_ture3('1.0F;60F;41D;', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("开启失败，你都没恢复开什么")
else
    RElove_ture3('60', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('-9999', RElove_ture19)
    RElove_ture1('开启成功')
end
end

function GH4()
    RElove_ture2()
    RElove_ture5(4)
    RElove_ture3('1.0F;-9999F;41D;', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("恢复失败，你都没开恢复什么")
else
    RElove_ture3('-9999', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('60', RElove_ture19)
    RElove_ture1('恢复成功')
end
end

function GH5()
    RElove_ture2()
    RElove_ture5(32)
    RElove_ture3('00000000h;1F~10000F;44160000h;43480000h::28', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('0', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(1000)
    RElove_ture4('20', RElove_ture21)
    RElove_ture1('记得配合子弹穿墙')
end

function GH6()
    RElove_ture2()
    RElove_ture5(32)
    RElove_ture3('00000000h;1F~10000F;44160000h;43480000h::28', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture8("?????E14")
    RElove_ture3('20', RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(1000)
    RElove_ture4('0', RElove_ture21)
    RElove_ture1('部分武器无法关闭')
end

function GH7()
 menu3 = gg.choice({
    "❤开启自定义倍攻❤",
    "⭐修改自定义倍攻⭐",
    "😍点击这里返回哦😍"
  }, nil, "最高5,过了5需要配合子弹穿墙才行(除了挑战),子弹穿墙最高20")
  if menu3 == 1 then
    AH1()
  end
  if menu3 == 2 then
    AH2()
  end
  if menu3 == 3 then
    a1()
  end
 XGCK=-1
end

function GH8()
    RElove_ture2()
    RElove_ture5(4)
    RElove_ture3('1.0F;60F;41D;', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("开启失败，你都没恢复开什么")
else
    RElove_ture3('60', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('120', RElove_ture19)
    RElove_ture1('开启成功，无效再开')
end
end

function GH9()
    RElove_ture2()
    RElove_ture5(4)
    RElove_ture3('1.0F;120F;41D;', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("恢复失败，你都没开恢复什么")
else
    RElove_ture3('120', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('60', RElove_ture19)
    RElove_ture1('恢复成功')
end
end

function AH1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("00000000h;1F~10000F;44160000h;43480000h::28", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("0", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "想要打多少发子弹，就输入多少发子弹"
    }, {
      [1] = 5
    }, {
      [1] = "number"
    })[1], RElove_ture21)
    RElove_ture1("成功")
  end
end

function AH2()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3(gg.prompt({
    "上次修改的数值"
  }, {
    [1] = 5
  }, {
    [1] = "number"
  })[1], RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture8("?????E14")
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3(gg.prompt({
      "上次修改的数值"
    }, {
      [1] = 5
    }, {
      [1] = "number"
    })[1], RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(2000)
    RElove_ture4(gg.prompt({
      "自行修改"
    }, {
      [1] = 5
    }, {
      [1] = "number"
    })[1], RElove_ture21)
    RElove_ture1("成功")
  end
end



function a2()
menu2 = gg.multiChoice({
"开启人物穿山",
"关闭人物穿山",
"开启定位复活",
"关闭定位复活",
"开启灵魂出窍",
"关闭灵魂出窍",
"开启新版穿山",
"关闭新版穿山",
"开启穿山盲刀",
"关闭穿山盲刀",
"开启死宣(未知)",
"关闭死宣(测试)",
"点击这里返回"},
nil,"开穿山请先关闭子弹穿墙\n灵魂出窍跳着打有伤")
if menu2 == nil then else
if menu2[1] == true then XD1() end
if menu2[2] == true then XD2() end
if menu2[3] == true then XD3() end
if menu2[4] == true then XD4() end
if menu2[5] == true then XD5() end
if menu2[6] == true then XD6() end
if menu2[7] == true then XD9() end
if menu2[8] == true then XD10() end
if menu2[9] == true then XD13() end
if menu2[10] == true then XD14() end
if menu2[11] == true then XD7() end
if menu2[12] == true then XD8() end
if menu2[13] == true then A() end
end
GLWW=-1
end

function XD1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4095", RElove_ture21)
  RElove_ture1("开启成功")
end

function XD2()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,095D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4095", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4096", RElove_ture21)
  RElove_ture1("恢复成功")
end


function XD3()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("-123456", RElove_ture19)
RElove_ture1("开启成功(豪哥原创)")
end

function XD4()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("-123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("-123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("恢复成功(豪哥NB)")
end

function XD5()
     RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("0.1;0.3;0.33", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("0.1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("99", RElove_ture19)
	 RElove_ture1("开启成功，跳着打有伤害")
end

function XD6()
     RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("99;0.3;0.33", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("99", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("0.1", RElove_ture19)
	 RElove_ture1("恢复成功")
end

function XD7()
     gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("300;0.1;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-9986", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end

function XD8()
     gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("300;0.1;-9986", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-9986", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("恢复成功")
end

function XD9()
gg.clearResults()
gg.searchNumber("12D;4096D;0.04F", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1500)
gg.editAll("4090", gg.TYPE_DWORD)
gg.toast("新版穿山开启成功")
end

function XD10()
gg.clearResults()
gg.searchNumber("0.04;12D;4090D", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4090", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1500)
gg.editAll("4096", gg.TYPE_DWORD)
gg.toast("关闭新版穿山成功")
end

function XD13()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4096", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-4095", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.69999998808;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("闭着眼都能打中人")
end

function XD14()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-4096", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("4095", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.69999998808;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.toast("这下闭着眼打不中人了")
end

function a3()
menu2 = gg.multiChoice({
"开启子弹穿墙",
"关闭子弹穿墙",
"开启人物穿墙",
"关闭人物穿墙",
"新版人物穿墙",
"关闭新版穿墙",
"开启改良穿墙",
"关闭改良穿墙",
"点击这里返回"
},nil,"子弹穿墙每局恢复\n用于ptrace保护的旁路模式选没有")
if menu2 == nil then else
if menu2[1] == true then TY1() end
if menu2[2] == true then TY2() end
if menu2[3] == true then TY3() end
if menu2[4] == true then TY4() end
if menu2[5] == true then TY5() end
if menu2[6] == true then TY6() end
if menu2[7] == true then TY7() end
if menu2[8] == true then TY8() end
if menu2[9] == true then A() end
end
GLWW=-1
end

function TY1()
	 RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("数值搜索不到")
else
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("子弹穿墙成功，下把游戏前要恢复，不然卡视角")
end
end


function TY2()
     RElove_ture2()
     RElove_ture5(32)
     RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("你都没开恢什么复")
else
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("恢复成功")
end
end

function TY3()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("数值搜索不到")
else
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("123456.0", RElove_ture19)
RElove_ture1("穿墙开启成功")
end
end

function TY4()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
if RElove_ture9() == 0 then
RElove_ture1("你都没开恢什么复")
else
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("穿墙恢复成功")
end
end

function TY5()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-0.01", gg.TYPE_FLOAT)
  gg.toast("修改58%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.7; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6815582e", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("999.6582", gg.TYPE_FLOAT)
  gg.toast("修改80%")
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("-0.01", gg.TYPE_FLOAT)
  gg.toast("修改100%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.7; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6815582e", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("999.6582", gg.TYPE_FLOAT)
  gg.toast("选择关闭穿墙既可关闭")
end

function TY6()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
  gg.toast("恢复80%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.7; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999.6582", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("1.6815582e", gg.TYPE_FLOAT)
  gg.toast("恢复85%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.7; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999.6582", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("1.6815582e", gg.TYPE_FLOAT)
  gg.toast("恢复OK")
end

function TY7()
  gg.clearResults()
  gg.searchNumber("1.7;1.2;0.1;0.04; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.setVisible(false)
  gg.searchNumber("1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.01;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_FLOAT)
  gg.toast("成功")
end

function TY8()
  gg.clearResults()
  gg.searchNumber("1.7;1.2;0.1;0.04; 1.6815582e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.6815582e-44", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.setVisible(false)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("0.01;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("10000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.01", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
end

function a4()
menu2 = gg.multiChoice({
"开启变异体飞抓",
"关闭变异体飞抓",
"开启母体飞抓",
"关闭母体飞抓",
"柒帘变异体杀母体",
"关闭柒帘杀母体",
"点击这里返回"
},nil,"变身后开启,回合开始前关闭")
if menu2 == nil then else
if menu2[1] == true then HZ50() end
if menu2[2] == true then HZ51() end
if menu2[3] == true then HZ52() end
if menu2[4] == true then HZ53() end
if menu2[5] == true then HZ54() end
if menu2[6] == true then HZ55() end
if menu2[7] == true then A() end
end
GLWW=-1
end

function HZ50() 
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("0.69999998808;1.8;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("下次开始游戏前关闭")
end 

function HZ51()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("0.69999998808;999;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("关闭成功")
end

function HZ52()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;3F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("下次开始游戏前关闭")
  RElove_ture2()
  RElove_ture3("1.0;1.79999995232", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1.79999995232", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("90.79999995232", RElove_ture19)
  RElove_ture1("强化")
end

function HZ53()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;999F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("关闭成功")
  RElove_ture2()
  RElove_ture3("1.0;90.79999995232", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("90.79999995232", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("1.79999995232", RElove_ture19)
  RElove_ture1("恢复")
end

function HZ54()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("-1", RElove_ture21)
  RElove_ture1("开启成功，不能和范围一起开")
end

function HZ55()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;-1D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("-1", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4096", RElove_ture21)
  RElove_ture1("恢复成功")
end

function a5()
menu2 = gg.multiChoice({
'全枪无后',
"🌷有后🌷",
'屏息防抖',
"射速无后",
"关闭射速",
"点击返回"},
nil,'无效就开子弹加速')
if menu2 == nil then else
if menu2[1] == true then wo1() end
if menu2[2] == true then wo5() end
if menu2[3] == true then wo2() end
if menu2[4] == true then wo3() end
if menu2[5] == true then wo4() end
if menu2[6] == true then A() end
end
GLWW=-1
end

function wo1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1000", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
  RElove_ture3("1000", RElove_ture19,RElove_ture25,RElove_ture30,0,-1)
  RElove_ture6(1000000)
  RElove_ture4("0",RElove_ture19)
  RElove_ture1("25%")
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1400", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1400", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(900000)
  RElove_ture4("0", RElove_ture19)
  RElove_ture1("50%")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("600", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("600", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("75%")
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1600", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1600", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100000)
  RElove_ture4("0", RElove_ture19)
  gg.toast("非洲牛逼压枪")
end

function wo2()
	RElove_ture2()
	RElove_ture5(RElove_ture11)
	RElove_ture3("50D;4.0F;1400F;0.0625F::", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("1400", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(1000000)
RElove_ture4("0", RElove_ture19)
RElove_ture1("屏幕防抖成功")
end

function wo3()
    RElove_ture2()
    RElove_ture5(4)
    RElove_ture3('1.0F;60F;41D;', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('60', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('0', RElove_ture19)
    RElove_ture1('开启成功')
end

function wo4()
    RElove_ture2()
    RElove_ture5(4)
    RElove_ture3('1.0F;0F;41D;', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('0', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('60', RElove_ture19)
    RElove_ture1('恢复成功')
end

function wo5()
gg.alert("暂时无法恢复")
gg.toast("日本牛逼飘枪")
gg.processKill()
end

function a6()
 menu2 = gg.multiChoice({
    "开启横向自瞄",
    "关闭横向自瞄",
    "开启隔墙自瞄",
    "关闭隔墙自瞄",
    "开启锁身自瞄",
    "关闭锁身自瞄",
    "开启视角锁头",
    "关闭视角锁头",
    "开启自定义瞄",
    "修改自定义瞄",
    "原创不卡处刑",
    "处刑第二步🌷",
    "训练专用无瞄",
    "关闭训练无瞄",
    "点击这里返回"},
nil,"处刑不知道别开")
if menu2 == nil then else
if menu2[1] == true then ER1() end
if menu2[2] == true then ER4() end
if menu2[3] == true then ER3() end
if menu2[4] == true then ER6() end
if menu2[5] == true then ER2() end
if menu2[6] == true then ER5() end
if menu2[7] == true then ER13() end
if menu2[8] == true then ER14() end
if menu2[9] == true then ER8() end
if menu2[10] == true then ER9() end
if menu2[11] == true then ER7() end
if menu2[12] == true then ER10() end
if menu2[13] == true then ER11() end
if menu2[14] == true then ER12() end
if menu2[15] == true then A() end
end
GLWW=-1
end

function ER1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("999999", RElove_ture19)
  RElove_ture1("横向自瞄成功，打人时把枪口抬高变成锁头")
end

function ER2()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("300;0.1;3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(10000)
  RElove_ture4("-9986", RElove_ture19)
  RElove_ture1("超强锁身开启成功")
end

function ER3()
  RElove_ture2()
  RElove_ture5(RElove_ture15)
  RElove_ture3("4096D;12D;0.4", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4096D;12D;0.4", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(99)
  RElove_ture4("0", RElove_ture0)
  RElove_ture1("隔墙自瞄开启成功")
end

function ER4()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911;999999", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("999999", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("8", RElove_ture19)
  RElove_ture1("横向自瞄恢复成功")
end

function ER5()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("300;0.1;-9986", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("-9986", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(990000)
  RElove_ture4("3", RElove_ture19)
  RElove_ture1("超强锁身恢复成功")
end

function ER6()
  RElove_ture2()
  RElove_ture5(RElove_ture15)
  RElove_ture3("-987654.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("-987654.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(99)
  RElove_ture4("0.60239994526", RElove_ture19)
  RElove_ture1("隔墙自瞄恢复成功")
end

function ER7()
  gg.alert("处刑开启方法:\n先进人机房间，开启处刑后再开自瞄，然后退出即可去无自动瞄准房间玩了")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.4012985e-45;2.1334111e38;2D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(1)
  sl = gg.getResultCount()
  if sl > 100 then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1.4012985E-45
      }
    })
  end
  gg.toast("")
end

function ER8()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4(gg.prompt({
      "修改的越高越不好控制,我平时都玩9999999"
    }, {
      [1] = 8
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function ER9()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3(gg.prompt({
    "在“填写”内填写上次修改的数值"
  }, {
    [1] = "1.70000004768;1.20000004768;0.10000000149;0.03999999911;填写"
  }, {
    [1] = "number"
  })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3(gg.prompt({
      "输入上次修改的数值"
    }, {
      [1] = ""
    }, {
      [1] = "number"
    })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(2000)
    RElove_ture4(gg.prompt({
      "自行修改，默认为8恢复"
    }, {
      [1] = 8
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function ER10()
gg.alert('开启处刑后查看不卡教程！\n思路来自于柒帘原创！')
gg.alert('教程：\n先把数值解冻，进入无自瞄房间后，数值变成0，这时候点击恢复数值即可，每局都需要这样！')
gg.alert('备用教程：\n如果点击恢复无效，那么就点击修改，修改为复制的数值！')
gg.copyText("1.4012985e-45")
end

function ER11()
  gg.alert("训练无瞄开启方法:\n先进人机房间(必须开启自动瞄准)，开启无瞄后退出即可")
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1.4012985e-45;2.1334111e38;2D", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("1.4012985e-45", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(1000)
    RElove_ture4("0", RElove_ture19)
    RElove_ture1("请勿触碰自动瞄准开关")
  end
end

function ER12()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("0;2.1334111e38;2D", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(1000)
    RElove_ture4("1.4012985e-45", RElove_ture19)
    RElove_ture1("重新进入设置开关自动瞄准即可")
  end
end

function ER13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300;0.1;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("打人时跳起来，使劲把视角往上拉容易爆头")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.7;0.2::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("推荐配合横向自瞄")
end

function ER14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("300;0.1;99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("3", gg.TYPE_FLOAT)
	 gg.toast("第一步恢复成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.7;9999999::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.2", gg.TYPE_FLOAT)
	 gg.toast("半式锁头恢复成功，代码来自于南天")
end

function a7()
 menu2 = gg.multiChoice({
    "开启恶心全图手雷",
    "关闭恶心全图手雷",
    "开启变态手雷速度",
    "关闭变态手雷速度",
    "开启闪光对我无效",
    "关闭闪光对我无效",
    "开启生化手雷范围",
    "关闭生化手雷范围",
    "开启手雷超级反弹",
    "关闭手雷超级反弹",
    "开启手雷对我无伤",
    "关闭手雷对我无伤",
    "点击这里返回上页"
},nil, "全部大厅开启,全图仅扣25点血")
if menu2 == nil then else
if menu2[1] == true then WW1() end
if menu2[2] == true then WW2() end
if menu2[3] == true then WW3() end
if menu2[4] == true then WW4() end
if menu2[5] == true then WW9() end
if menu2[6] == true then WW10() end
if menu2[7] == true then WW7() end
if menu2[8] == true then WW8() end
if menu2[9] == true then WW5() end
if menu2[10] == true then WW6() end
if menu2[11] == true then WW11() end
if menu2[12] == true then WW12() end
if menu2[13] == true then A() end
end
GLWW=-1
end

function WW1()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("8F;22F;10F;4F;5F;0.1F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(9999)
  RElove_ture4("9999", RElove_ture19)
  RElove_ture1("全图开启成功")
end

function WW2()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("8F;22F;10F;4F;5F;0.1F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("9999", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(9999)
  RElove_ture4("8", RElove_ture19)
  RElove_ture1("全图恢复成功")
end

function WW3()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("64D;60F;33D;200D;100F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("60", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(10000)
  RElove_ture4("0.00000000000001", RElove_ture19)
  RElove_ture1("手雷加特林听说过没")
end

function WW4()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("64D;60F;33D;200D;100F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.000000001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(10000)
  RElove_ture4("60", RElove_ture19)
  RElove_ture1("BT手雷恢复OK")
end

function WW5()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("8;22;10;4;5;0.1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("22", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(10000)
  RElove_ture4("99999", RElove_ture19)
  RElove_ture1("跟敌人同归于尽")
end

function WW6()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("8;22;10;4;5;0.1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("99999", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(10000)
  RElove_ture4("22", RElove_ture19)
  RElove_ture1("恢复成功")
end

function WW7()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("8;1.4012985e-45;5", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(9999)
  RElove_ture4("9997", RElove_ture19)
  RElove_ture1("生化手雷范围开启成功")
end

function WW8()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("9997;1.4012985e-45;5", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("9997", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(9999)
  RElove_ture4("8", RElove_ture19)
  RElove_ture1("恢复成功")
end

function WW9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("22;0.2;10;1D;4;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("emm盗版闪光？")
end

function WW10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("22;0.2;10;1D;4;9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("你要瞎了！")
end

function WW11()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("8.0F;22.0F;4.0F;5.0F;0.10000000149F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("炸不死自己！")
end

function WW12()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0F;22.0F;4.0F;5.0F;0.10000000149F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("8.0", gg.TYPE_FLOAT)
  gg.toast("小心炸死自己")
end

function a8()
menu2 = gg.multiChoice({
"开启手枪全自动",
"关闭手枪全自动",
"开启小刀变飞刀",
"关闭小刀变飞刀",
"开启刺刀变飞刀",
"关闭刺刀变飞刀",
"开启全刀变飞刀",
"关闭全刀变飞刀",
"演员专用小刀飞",
"关闭演员小刀飞",
"开启秒刀(可能)",
"关闭秒刀(无效)",
"点击这里返回"
},nil,"全刀打变异时务必关闭")
if menu2 == nil then else
if menu2[1] == true then FD1() end
if menu2[2] == true then FD2() end
if menu2[3] == true then FD3() end
if menu2[4] == true then FD4() end
if menu2[5] == true then FD9() end
if menu2[6] == true then FD10() end
if menu2[7] == true then FD5() end
if menu2[8] == true then FD6() end
if menu2[9] == true then FD11() end
if menu2[10] == true then FD12() end
if menu2[11] == true then FD7() end
if menu2[12] == true then FD8() end
if menu2[13] == true then A() end
end
GLWW=-1
end

function FD1()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2003;1;400;45F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_DWORD)
  gg.toast("手枪全自动开启成功")
end

function FD2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2003;3;400;45F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_DWORD)
  gg.toast("手枪全自动恢复成功")
end

  
function FD3()
  RElove_ture5(32)
  gg.clearResults()
  gg.searchNumber("0.69999998808;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("AWM类狙击可能无法使用！")
end

function FD4()
  RElove_ture2()
  RElove_ture5(32)
  gg.searchNumber("0.69999998808;999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(300)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
end

function FD5()
  gg.clearResults()
  gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -100)
  gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -100)
  gg.getResults(2000)
  gg.editAll("100", gg.TYPE_FLOAT)
  gg.toast("全刀范围成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1000000;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -100)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -100)
  gg.getResults(100)
  gg.editAll("100000000", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.5;0.80000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.699999998808;2.5;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;3F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("0.69999998808;1.8;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.searchNumber("1.0;1.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("90.79999995232", gg.TYPE_FLOAT)
  gg.toast("尼泊尔强化")
end

function FD6()
  gg.clearResults()
  gg.searchNumber("1.2;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2000)
  gg.editAll("60", gg.TYPE_FLOAT)
  gg.toast("关闭成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.69999998808;999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.5", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2.6", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("999;0.80000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2.5", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1.20000004768F;999F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("3", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("0.69999998808;999;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.searchNumber("1.0;90.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("90.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.79999995232", gg.TYPE_FLOAT)
  gg.toast("尼泊尔强化恢复")
end

function FD7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2000.0400390625;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("秒刀开启成功")
end

function XD8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2000.0400390625;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0.3", gg.TYPE_FLOAT)
gg.toast("秒刀恢复成功")
end

function FD9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2.5;0.80000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function FD10()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("999;0.80000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("2.5", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1.8", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
end

function FD11()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("0.699999998808;2.5;82D", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2.5", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4.5", RElove_ture19)
  RElove_ture1("开启成功")
end

function FD12()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("0.699999998808;4.5;82D", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4.5", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("2.5", RElove_ture19)
  RElove_ture1("恢复成功")
end

function a9()
menu2 = gg.multiChoice({
"开启通用透视",
"开启大图透视",
"开启小图透视",
"开启低配半透",
"开启其他透视",
"自定义人单透",
"开启炫彩武器",
"关闭炫彩武器",
"开启炫彩手部",
"关闭炫彩手部",
"低配专用除房",
"关闭除房透视",
"点击这里返回"
},nil,"透视在开局加载时开启")
if menu2 == nil then else
if menu2[1] == true then TS1() end
if menu2[2] == true then TS11() end
if menu2[3] == true then TS12() end
if menu2[4] == true then TS9() end
if menu2[5] == true then TS2() end
if menu2[6] == true then TS10() end
if menu2[7] == true then TS3() end
if menu2[8] == true then TS4() end
if menu2[9] == true then TS5() end
if menu2[10] == true then TS6() end
if menu2[11] == true then TS7() end
if menu2[12] == true then TS8() end
if menu2[13] == true then A() end
end
GLWW=-1
end

function TS1()
  RElove_ture2()
  RElove_ture5(RElove_ture10)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("-1", RElove_ture21)
  RElove_ture1("50%")
  RElove_ture2()
  RElove_ture5(131072)
  RElove_ture3("528,422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("528,422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("1", RElove_ture21)
  RElove_ture1("没啥软用开启成功")
end

function TS2()
  gg.clearResults()
  gg.searchNumber("854D;480D;0D;1F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(12)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("有一些手机不行，别怪我📱")
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("22;0.2;10;1D;4;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function TS3()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8198;8192;8195::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8198", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8199", gg.TYPE_DWORD)
	 gg.toast("武器上色开启成功")
end

function TS4()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8199;8192;8195::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8199", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8198", gg.TYPE_DWORD)
	 gg.toast("武器上色恢复成功")
end

function TS5()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8198;8195;8192::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8198", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8200", gg.TYPE_DWORD)
	 gg.toast("上色开启成功")
end

function TS6()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("8200;8195;8192::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8198", gg.TYPE_DWORD)
	 gg.toast("上色恢复成功")
end

function TS7()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("3.75F;5148;8192;8194;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5148", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("除房子开启成功")
end

function TS8()
  gg.clearResults()
  gg.setRanges(131072)
  gg.searchNumber("3.75F;-1;8192;8194;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("5148", gg.TYPE_DWORD)
  gg.toast("除房子恢复成功")
end

function TS9()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("5148D;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5148", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("-1", gg.TYPE_DWORD)
  gg.toast("开启成功")
end

function TS10()
  RElove_ture2()
  RElove_ture5(RElove_ture10)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3("", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4(gg.prompt({
      "一般来说图越大就改越大，默认原来数值，正数为蓝色天空"
    }, {
      [1] = "528422"
    }, {
      [1] = "number"
    })[1], RElove_ture21)
    RElove_ture1("成功")
  RElove_ture2()
  RElove_ture5(RElove_ture10)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4(gg.prompt({
      "一般来说图越大就改越大，默认原来数值"
    }, {
      [1] = "528,422"
    }, {
      [1] = "number"
    })[1], RElove_ture21)
    RElove_ture1("成功")
  end
end

function TS11()
  RElove_ture2()
  RElove_ture5(RElove_ture10)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("1", RElove_ture21)
  RElove_ture1("50%")
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9,1", gg.TYPE_DWORD)
	 gg.toast("100%")
end

function TS12()
  RElove_ture2()
  RElove_ture5(RElove_ture10)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("528422", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("0", RElove_ture21)
  RElove_ture1("50%")
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("528,422", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("666,1", gg.TYPE_DWORD)
	 gg.toast("100%")
end

function a10()
	 RElove_ture2()
	 RElove_ture5(16384)
	 RElove_ture3("-0.0001", gg.TYPE_DOUBLE, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("-0.0001", gg.TYPE_DOUBLE, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("-0.18528", gg.TYPE_DOUBLE)
	 RElove_ture1("感觉到不卡了吗?")
end

function a12()
 menu2 = gg.choice({
    "开启全枪聚点",
    "关闭全枪聚点",
    "开启其他聚点",
    "关闭其他聚点",
    "点击这里返回"},
nil, "配合秒杀可以达到最高境界\n遁地不推荐开聚点")
if menu2 == 1 then Hs1() end
if menu2 == 2 then Hs3() end
if menu2 == 3 then Hs2() end
if menu2 == 4 then Hs4() end
if menu2 == 5 then A() end
XGCK=-1
end

function Hs1()
  RElove_ture2()
  RElove_ture5(RElove_ture15)
  RElove_ture3("1.0e-6;360;3.141592741101", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("3.14159274101", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("0", RElove_ture19)
  RElove_ture1("子弹聚点开启成功")
end

function Hs2()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("1;50;0.3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("0", RElove_ture19)
  RElove_ture1("喷子聚点成功")
  	 RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("1600;1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("0", RElove_ture19)
	 RElove_ture1("冲锋枪聚点开启成功")
	 RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("600;1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("0", RElove_ture19)
	 RElove_ture1("手枪聚点开启成功")
	 RElove_ture2()
RElove_ture5(RElove_ture11)
RElove_ture3("1000;1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0", RElove_ture19)
RElove_ture1("成功")
end

function Hs3()
  RElove_ture2()
  RElove_ture5(RElove_ture15)
  RElove_ture3("1.0e-6;360;0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("3.14159274101", RElove_ture19)
  RElove_ture1("子弹聚点恢复成功")
end

function Hs4()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("0;50;0.3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("8", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("1", RElove_ture19)
  RElove_ture1("喷子聚点恢复成功")
  	 RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("1600;0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("1", RElove_ture19)
	 RElove_ture1("冲锋枪聚点恢复成功")
	 RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("600;0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("1", RElove_ture19)
	 RElove_ture1("手枪聚点恢复成功")
	  RElove_ture2()
RElove_ture5(RElove_ture11)
RElove_ture3("1000;0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("1", RElove_ture19)
RElove_ture1("恢复成功") 
end




function a13()
 menu2 = gg.multiChoice({
"开启易错刀范围",
"↑关闭刀范围↑\n一键关2个→→→\n↓关闭杀队友↓",
"尼泊尔杀队友🌚",
"柒帘优化刀范围🌷",
"关闭优化刀范围🌷",
"巨人第一步不稳🌷",
"巨人第二步优化🌷",
"开启人机全图范围",
"关闭人机全图范围",
"人机变态巨人第一步",
"人机变态巨人第二步",
"点击这返回上面"
},nil,"")
if menu2 == nil then else
if menu2[1] == true then FW()  end
if menu2[2] == true then FW1() end
if menu2[3] == true then FW2() end
if menu2[4] == true then FW3() end
if menu2[5] == true then FW4() end
if menu2[6] == true then FW7() end
if menu2[7] == true then FW8() end
if menu2[8] == true then FW5() end
if menu2[9] == true then FW6() end
if menu2[10] == true then FW9() end
if menu2[11] == true then FW10() end
if menu2[12] == true then A() end
end
GLWW=-1
end

function FW()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("-4095", RElove_ture21)
  RElove_ture1("听说会封号哦")
end

function FW1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;-4095D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("-4095", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4096", RElove_ture21)
  RElove_ture1("关闭成功")
end

function FW2()
  gg.alert("开启后用尼泊尔就可以啥队友，基本上12局6局可以成功，开启后自瞄没有用，自带刀范围，无需再开！")
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100000)
  RElove_ture4("-4095", RElove_ture21)
  RElove_ture1("有几率击杀队友2%")
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1.0;1.79999995232", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1.79999995232", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(10000000)
  RElove_ture4("90.79999995232", RElove_ture19)
  RElove_ture1("3%")
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("0.69999998808;1.5", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1.5", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(1000000)
  RElove_ture4("999", RElove_ture19)
  gg.toast("4%")
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("2000.0400390625;0.3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999999)
  RElove_ture4("0", RElove_ture19)
  RElove_ture1("5%")
end

function FW3()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("-5", RElove_ture21)
  RElove_ture1("听说会封号哦")
end

function FW4()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;-5D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("-5", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4096", RElove_ture21)
  RElove_ture1("恢复成功")
end

function FW5()
gg.clearResults()
RElove_ture5(32)
gg.searchNumber("0.08;0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("机器人有效果")
end

function FW6()
gg.clearResults()
RElove_ture5(32)
gg.searchNumber("999999;999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("0.08;0.06", gg.TYPE_FLOAT)
gg.toast("机器人有效果")
end

function FW7()
  RElove_ture2()
  RElove_ture5(4)
  RElove_ture3("4399;1;1::9", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("3", RElove_ture19)
  RElove_ture1("第一步成功，请开启第二步")
end

function FW8()
  RElove_ture2()
  RElove_ture5(4)
  RElove_ture3("4399;3;3::9", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("3", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("1", RElove_ture19)
  RElove_ture1("优化版实体巨人开启成功")
end

function FW9()
  RElove_ture2()
  RElove_ture5(4)
  RElove_ture3("1;4399", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("10", RElove_ture19)
  RElove_ture1("第一步成功，请开启第二步")
end

function FW10()
  RElove_ture2()
  RElove_ture5(4)
  RElove_ture3("10;4399", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("10", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(999)
  RElove_ture4("1", RElove_ture19)
  RElove_ture1("人机版实体巨人开启成功")
end

function a14()
menu2 = gg.multiChoice({
"开启轻微加速",
"关闭轻微加速",
"开启极速加速",
"关闭极速加速",
"闪电侠模式开",
"闪电侠模式关",
"开启自杀减速",
"关闭自杀减速",
"自改加速(-0.35)",
"开启细微加速",
"关闭细微加速",
"踢自己出房间",
"点击这里返回"
},nil,"退出房间是专门为子弹穿墙忘记关闭的使用")
if menu2 == nil then else
if menu2[1] == true then JS10() end
if menu2[2] == true then JS11() end
if menu2[3] == true then JS3() end
if menu2[4] == true then JS4() end
if menu2[5] == true then JS5() end
if menu2[6] == true then JS6() end
if menu2[7] == true then JS1() end
if menu2[8] == true then JS2() end
if menu2[9] == true then JS7() end
if menu2[10] == true then JS8() end
if menu2[11] == true then JS9() end
if menu2[12] == true then JS12() end
if menu2[13] == true then A() end
end
GLWW=-1
end

function JS1()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("0.12345",RElove_ture19)
RElove_ture1("减速开启成功，自杀吧")
end

function JS2()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("0.12345;0.12345::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("0.12345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-1;0.33333334327",RElove_ture19)
RElove_ture1("恢复成功")
end

function JS3()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-0.3456789",RElove_ture19)
RElove_ture1("全局开启成功")
end

function JS4()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-0.3456789;-0.3456789", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-0.3456789", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("恢复成功")
end

function JS5()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-0.912345",RElove_ture19)
RElove_ture1("开启成功")
end

function JS6()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-0.912345;-0.912345::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-0.912345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("恢复成功")
end

function JS7()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("",RElove_ture19)
os.exit()
end

function JS8()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-0.16789",RElove_ture19)
RElove_ture1("全局开启成功")
end

function JS9()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-0.16789;-0.16789:5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-0.16789", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("全局恢复成功")
end

function JS10()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-0.198765",RElove_ture19)
RElove_ture1("开启成功")
end

function JS11()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-0.198765;-0.198765::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-0.198765", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("恢复成功")
end

function JS12()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-2",RElove_ture19)
RElove_ture1("准备")
gg.sleep(3000)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("完成")
end

function a15()
menu2 = gg.multiChoice({
"开启变大减速视角",
"关闭变大减速视角",
"开启变小加速视角",
"关闭变小加速视角",
"开启物品全部模糊",
"关闭物品全部模糊",
"开启娱乐锁血锁甲",
"光学倍镜改狙击镜",
"自慰充值区改一元",
"人机模式强力锁血",
"开启手部隐身(原创)",
"关闭最新手部隐身",
"开启禁忌之术(未知)",
"开启无敌时间延长",
"开启枪反大法(持枪)",
"关闭枪反大法(无效)",
"AK47美化朋克(大厅)",
"AK47美化天秤座(单次)",
"开启眼瞎模式(谨慎开启)",
"关闭眼瞎模式(没啥卵用)",
"修改钮透自慰系列(可实用)",
"刷金币改货币系列(有实用)",
"点击这返回上面一页"},
nil,"")
if menu2 == nil then else
if menu2[1] == true then SJ1() end
if menu2[2] == true then SJ2() end
if menu2[3] == true then SJ3() end
if menu2[4] == true then SJ4() end
if menu2[5] == true then SJ5() end
if menu2[6] == true then SJ6() end
if menu2[7] == true then SJ7() end
if menu2[8] == true then SJ8() end
if menu2[9] == true then SJ9() end
if menu2[10] == true then SJ10() end
if menu2[11] == true then SJ11() end
if menu2[12] == true then SJ12() end
if menu2[13] == true then SJ13() end
if menu2[14] == true then SJ15() end
if menu2[15] == true then SJ16() end
if menu2[16] == true then SJ17() end
if menu2[17] == true then SJ18() end
if menu2[18] == true then SJ19() end
if menu2[19] == true then SJ20() end
if menu2[20] == true then SJ21() end
if menu2[21] == true then SJ22() end
if menu2[22] == true then SJ23() end
if menu2[23] == true then A() end
end
GLWW=-1
end

function SJ1()
RElove_ture2()
RElove_ture5(262207)
RElove_ture3("0.0F;1.0F;2.53864765167F;0.0F;1.0F:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
RElove_ture3("2.53864765167", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
RElove_ture6(900)
RElove_ture4("5",gg.TYPE_FLOAT)
RElove_ture1("开启成功")
end

function SJ2()
RElove_ture2()
RElove_ture5(262207)
RElove_ture3("0.0F;1.0F;5F;0.0F;1.0F:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
RElove_ture3("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
RElove_ture6(900)
RElove_ture4("2.53864765167",gg.TYPE_FLOAT)
RElove_ture1("恢复成功")
end

function SJ3()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("0.0F;1.0F;2.53864765167F;0.0F;1.0F:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.53864765167", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("0.5",gg.TYPE_FLOAT)
RElove_ture1("开启成功")
end

function SJ4()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("0.0F;1.0F;0.5F;0.0F;1.0F:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("2.53864765167",gg.TYPE_FLOAT)
RElove_ture1("恢复成功")
end

function SJ5()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("3.75F;8192;8194;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8194", gg.TYPE_DWORD)
	 gg.toast("纳尼，好模糊虎")
end

function SJ6()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("3.75F;8194;8194;2F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3.75F;8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8194", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("8192", gg.TYPE_DWORD)
	 gg.toast("我有眼镜了！")
end

function SJ7()
RElove_ture2()
RElove_ture5(32)
RElove_ture3("1;6;2;100;100;10000",  RElove_ture21,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("100", RElove_ture21,RElove_ture25,RElove_ture30,0,-1)
RElove_ture6(999999)
RElove_ture4("999",RElove_ture21,FREEZE_NORMAL)
RElove_ture1("开启成功")
end

function SJ8()
RElove_ture2()
RElove_ture5(32)
RElove_ture3("-1;1,036,831,949::5",  RElove_ture21,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-1", RElove_ture21,RElove_ture25,RElove_ture30,0,-1)
RElove_ture6(1000)
RElove_ture4("1",RElove_ture21,FREEZE_NORMAL)
RElove_ture1("开启成功")
end

function SJ9()
  gg.alert("此功能是假的，不要真的去购买支付，钻石💎不会到的，等于送钱给官方，作者免责")
  RElove_ture2()
  RElove_ture3("98F;100F;128F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("98F;100F;128F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("1", RElove_ture19)
  RElove_ture1("重新进充值页面")
end

function SJ10()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("1;6;2;100;100;10000", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("100", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  jg = RElove_ture6(100)
  sl = RElove_ture9()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = RElove_ture21,
        freeze = true,
        value = 5000
      }
    })
  end
  RElove_ture1("80%")
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("100;102", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("100", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  jg = RElove_ture6(100)
  sl = RElove_ture9()
  if 100 < sl then
    sl = 100
  end
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = RElove_ture21,
        freeze = true,
        value = 100
      }
    })
  end
  RElove_ture1("金钟铁布衫")
end

function SJ11()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.001",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.001", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("-5.12345",gg.TYPE_FLOAT)
gg.toast("截肢成功")
end

function SJ12()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-5.12345",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-5.12345", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.001",gg.TYPE_FLOAT)
gg.toast("接回成功")
end

function SJ13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12D;4,096D;0.03999999911F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1523", gg.TYPE_DWORD)
	 gg.toast("你将会缺乏游戏体验")
end

function SJ15()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("-1;1,036,831,949::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-1", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",gg.TYPE_DWORD,FREEZE_NORMAL)
gg.toast("无敌?")
end

function SJ16()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2912D;1;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("部分武器有效")
end

function SJ17()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-2912D;0;-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("出现bug请重新开启再恢复")
end

function SJ18()
  gg.alert("仓库装备AK47后开启，点击大厅即可，效果为单次")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1040", gg.TYPE_DWORD)
  gg.toast("朋克美化成功")
end

function SJ19()
  gg.alert("仓库装备AK47后开启，点击大厅即可，效果为单次")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("1053", gg.TYPE_DWORD)
  gg.toast("天秤座美化成功")
end

function SJ20()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("528423~530000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("528423~530000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("谨慎开启")
end

function SJ21()
	 gg.clearResults()
	 gg.setRanges(131072)
	 gg.searchNumber("528423~530000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("528423~530000", gg.TYPE_DWORD)
	 gg.toast("恢复")
end

function SJ22()
menu3 = gg.choice({
"开启按钮透明",
"关闭按钮透明",
"开启按钮半透明",
"关闭按钮半透明",
"开启按钮全白色",
"关闭按钮全白色",
"开启最新隐身(首发)",
"关闭最新隐身(自慰)",
"点击这返回"
},nil,"返回大厅之前必须关闭")
if menu3 == 1 then TM()  end
if menu3 == 2 then TM1() end
if menu3 == 3 then TM2() end
if menu3 == 4 then TM3() end
if menu3 == 5 then TM4() end
if menu3 == 6 then TM5() end
if menu3 == 7 then TM6() end
if menu3 == 8 then TM7() end
if menu3 == 9 then a15() end
XGCK=-1
end

function TM()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("38D;1;1;1;1::17",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("38", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("37",gg.TYPE_DWORD)
gg.toast("开启成功")
end

function TM1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("37D;1;1;1;1::17",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("37", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("38",gg.TYPE_DWORD)
gg.toast("恢复成功")
end

function TM2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("37D;1;1;1;1::17",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.75",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function TM3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("37D;0.75;0.75;0.75;0.75::17",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.75", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("恢复成功")
end

function TM4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("37D;1;1;1;1::17",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function TM5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("37D;2;2;2;2::17",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("恢复成功")
end

function TM6()

end

function TM7()

end

function SJ23()
menu2 = gg.choice({
"🎫教程刷金币勋章💰",
"🏆改货币(点券金币)💎",
"🙌手动改货币教程💰",
"😱点击返回上面😱"
},nil,"教程刷的在登录界面开启，作者免责")
if menu3 == 1 then SQ()  end
if menu3 == 2 then SQ1() end
if menu3 == 3 then SQ2() end
if menu3 == 4 then a15() end
XGCK=-1
end

function SQ()
  gg.alert("此功能请在选择服务器时开启")
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("102", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("102", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(3000)
  RElove_ture4("105", RElove_ture21)
  RElove_ture1("开启成功")
end
  
function SQ1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3(gg.prompt({
      "在框内输入你的货币"
    }, {
      [1] = "输入你的点券;钻石;勋章;金币"
    }, {
      [1] = "number"
    })[1], RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
os.exit()
end


function SQ2()
gg.alert("改货币教程：\nA内存，D类，搜索格式：\n  点券;钻石;勋章;金币\n注意：\n改完进游戏退出即可，记得有;符号\n改任务教程：A内存，D类，搜索格式：\n  战队贡献(没有不用);金币;经验\n注意：\n改完重新进入任务区即可")
end

function b1()
menu2 = gg.choice({
"开启无限踏空",
"关闭无限踏空",
"开启新版踏空",
"关闭新版踏空",
"开启旧版踏空",
"关闭旧版踏空",
"点击这返回"
},nil,"")
if menu2 == 1 then TK()  end
if menu2 == 2 then TK1() end
if menu2 == 3 then TK2() end
if menu2 == 4 then TK3() end
if menu2 == 5 then TK4() end
if menu2 == 6 then TK5() end
if menu2 == 7 then B() end
XGCK=-1
end

function TK()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100000)
  RElove_ture4("999", RElove_ture19)
  RElove_ture1("开启成功")
end

function TK1()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("999", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100000)
  RElove_ture4("0.03999999911", RElove_ture19)
  RElove_ture1("成功")
end

function TK2()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("9999.9", RElove_ture19)
  RElove_ture1("开启成功，豪哥原创")
end

function TK3()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("9999.9", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("9999.9", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("0.03999999911", RElove_ture19)
  RElove_ture1("关闭成功，豪哥NB")
end

function TK4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.7;1.2;0.1;0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5678", gg.TYPE_FLOAT)
	 gg.toast("踏空开启成功")
end

function TK5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.7;1.2;0.1;0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10.5678", gg.TYPE_FLOAT)
	 gg.toast("踏空开启成功")
end

function b2()
 menu2 = gg.choice({
"开启3连跳",
"关闭3连跳",
"开启8连跳",
"关闭8连跳",
"自定义连跳",
"点击这返回"
},nil,"不能和踏空跳高开")
if menu2 == 1 then LT()  end
if menu2 == 2 then LT1() end
if menu2 == 3 then LT2() end
if menu2 == 4 then LT3() end
if menu2 == 5 then LT4() end
if menu2 == 6 then B() end
XGCK=-1
end

function LT()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("2.54321", RElove_ture19)
  RElove_ture1("开启成功，豪哥原创")
end

function LT1()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("2.54321", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2.54321", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("0.03999999911", RElove_ture19)
  RElove_ture1("关闭成功，豪哥NB")
end

function LT2()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("7.54321", RElove_ture19)
  RElove_ture1("开启成功，豪哥原创")
end

function LT3()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("7.54321", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("7.54321", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("0.03999999911", RElove_ture19)
  RElove_ture1("关闭成功，豪哥NB")
end

function LT4()
 menu3 = gg.choice({
    "❤开启自定义连跳❤",
    "⭐修改自定义连跳⭐",
    "😍点击这里返回哦😍"
  }, nil, "改1就是2连跳,改2就是3连跳,以此推类")
  if menu3 == 1 then
    LT100()
  end
  if menu3 == 2 then
    LT200()
  end
  if menu3 == 3 then
    b2()
  end
 XGCK=-1
end

function LT100()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "在填写内写上需要跳的数值(数值需要减一)"
    }, {
      [1] = "填写.54321"
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function LT200()
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3(gg.prompt({
    "上次修改的数值"
  }, {
    [1] = "填写.54321"
  }, {
    [1] = "number"
  })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "自行修改，末尾必须带.54321，默认恢复"
    }, {
      [1] = "0.03999999911"
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function b3()
 menu2 = gg.choice({
"开启跳高",
"关闭跳高",
"开启视角",
"关闭视角",
"开启路飞",
"关闭路飞",
"点这返回"
},nil,"")
if menu2 == 1 then TG()  end
if menu2 == 2 then TG1() end
if menu2 == 3 then TG2() end
if menu2 == 4 then TG3() end
if menu2 == 5 then TG4() end
if menu2 == 6 then TG5() end
if menu2 == 7 then B() end
XGCK=-1
end

function TG()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("6", RElove_ture19)
  RElove_ture1("飞高高")
end

function TG1()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;6F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("6", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("2", RElove_ture19)
  RElove_ture1("你掉下来了")
end

function TG2()
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('1.2;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('1.2', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('2.5', RElove_ture19)
    RElove_ture1('开启成功')
end

function TG3()
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('2.5;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('2.5', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('1.2', RElove_ture19)
    RElove_ture1('恢复成功')
end

function TG4()
gg.clearResults()
gg.searchNumber("0.10899999738;1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast("路飞开启成功")
end

function TG5()
gg.clearResults()
gg.searchNumber("0.10899999738;1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("1.55999994278", gg.TYPE_FLOAT)
gg.toast("路飞关闭成功")
end




function b5()
menu2 = gg.multiChoice({
"开启大图升天",
"关闭跳跃升天",
"开启灵魂飞天",
"关闭灵魂飞天",
"开启平行穿墙",
"关闭平行穿墙",
"开启小图升天",
"关闭跳跃升天",
"点击这里返回"
},nil,"")
if menu2 == nil then else
if menu2[1] == true then FT1() end
if menu2[2] == true then FT2() end
if menu2[3] == true then FT3() end
if menu2[4] == true then FT4() end
if menu2[5] == true then FT5() end
if menu2[6] == true then FT6() end
if menu2[7] == true then FT7() end
if menu2[8] == true then FT8() end
if menu2[9] == true then B() end
end
GLWW=-1
end

function FT1()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("20", RElove_ture19)
  RElove_ture1("飞高高")
end

function FT2()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;20F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("20", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("2", RElove_ture19)
  RElove_ture1("你掉下来了")
end

function FT3()
     RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("0.1;0.3;0.33", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("0.1", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("99", RElove_ture19)
	 RElove_ture1("第一步开启成功，豪哥原创")
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("1500", RElove_ture19)
  RElove_ture1("飞高高")
end

function FT4()
     RElove_ture2()
	 RElove_ture5(32)
	 RElove_ture3("99;0.3;0.33", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture3("99", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
	 RElove_ture6(100)
	 RElove_ture4("0.1", RElove_ture19)
	 RElove_ture1("第一步恢复成功，豪哥NB")
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;1500F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("1500", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("2", RElove_ture19)
  RElove_ture1("你掉下来了")
end

function FT5()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("123456", RElove_ture19)
RElove_ture1("第一步成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("第二步成功")
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100000)
  RElove_ture4("999", RElove_ture19)
  RElove_ture1("第三步成功")
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('1.2;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('1.2', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('2.5', RElove_ture19)
    RElove_ture1('第四步成功')
  RElove_ture1("全部开启成功，豪哥原创")
end

function FT6()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("第一步恢复成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("第二步恢复成功")
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("1.70000004768;1.20000004768;0.10000000149;0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("999", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100000)
  RElove_ture4("0.03999999911", RElove_ture19)
  RElove_ture1("第三步恢复成功")
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('2.5;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('2.5', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('1.2', RElove_ture19)
    RElove_ture1('第四步恢复成功')
RElove_ture1("全部恢复成功，豪哥NB")
end

function FT7()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("12", RElove_ture19)
  RElove_ture1("飞高高")
end

function FT8()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;12F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("12", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("2", RElove_ture19)
  RElove_ture1("你掉下来了")
end

function b4()
 menu2 = gg.choice({
"自改跳高",
"自改路飞",
"开启自定义跳高",
"修改自定义跳高",
"开启自定义路飞",
"修改自定义路飞",
"点这返回",
},nil,"")
if menu2 == 1 then LF()  end
if menu2 == 2 then LF1() end
if menu2 == 3 then LF2() end
if menu2 == 4 then LF3() end
if menu2 == 5 then LF4() end
if menu2 == 6 then LF5() end
if menu2 == 7 then B() end
XGCK=-1
end

function LF()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("2", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("", RElove_ture19)
  os.exit()
end

function LF1()
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('1.2;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('1.2', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('', RElove_ture19)
    os.exit()
end

function LF2()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3("2D;2.8025969e-45F;72D;1.0089349e-43F;2F;10F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("0.03999999911", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "在填写内写上需要跳高的数值"
    }, {
      [1] = "填写"
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function LF3()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3(gg.prompt({
    "填写上次修改的数值"
  }, {
    [1] = "2D;2.8025969e-45F;72D;1.0089349e-43F;填写F;10F"
  }, {
    [1] = "number"
  })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3(gg.prompt({
    "再次填写上次修改的数值"
  }, {
    [1] = "填写"
  }, {
    [1] = "number"
  })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "自行修改，默认2恢复"
    }, {
      [1] = "2"
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function LF4()
  RElove_ture2()
  RElove_ture5(RElove_ture11)
  RElove_ture3("1.2;50", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3("1.2", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "在填写内写上需要跳高的数值"
    }, {
      [1] = "填写"
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function LF5()
  RElove_ture2()
  RElove_ture5(262207)
  RElove_ture3(gg.prompt({
    "填写上次修改的数值"
  }, {
    [1] = "填写;50"
  }, {
    [1] = "number"
  })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
  if RElove_ture9() == 0 then
    RElove_ture1("数值搜索不到")
  else
    RElove_ture3(gg.prompt({
    "再次填写上次修改的数值"
  }, {
    [1] = "填写"
  }, {
    [1] = "number"
  })[1], RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(999)
    RElove_ture4(gg.prompt({
      "自行修改，默认1.2恢复"
    }, {
      [1] = "1.2"
    }, {
      [1] = "number"
    })[1], RElove_ture19)
    RElove_ture1("成功")
  end
end

function c1()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-0.912345",RElove_ture19)
RElove_ture1("第一步开启成功")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("123456", RElove_ture19)
RElove_ture1("第二步成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("第三步成功")
RElove_ture1("全部开启成功，豪哥原创一键遁地")
end



function c2()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-0.912345;-0.912345:5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-0.9.12345;-0.912345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(10000)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("第一步关闭成功")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("第二步恢复成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("第三步恢复成功")
RElove_ture1("全部恢复成功，豪哥NB")
end



function c3()
gg.alert("开启时请走动！")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("123456", RElove_ture19)
RElove_ture1("第二步成功")
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-1.12345",RElove_ture19)
RElove_ture1("第一步开启成功")
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-1.12345;-1.12345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-1.12345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("第四步开启成功")
RElove_ture2()
RElove_ture5(32) 
RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("4095", RElove_ture21)
RElove_ture1("第五步开启成功")
RElove_ture1("全部开启成功，豪哥原创")
end



function c4()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(1000)
RElove_ture4("0.01", RElove_ture19)
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,095D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4095", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(1000)
  RElove_ture4("4096", RElove_ture21)
RElove_ture1("全部恢复成功，豪哥NB")
end

function c5()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("123456", RElove_ture19)
RElove_ture1("第二步成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("第二步成功")
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("",RElove_ture19)
RElove_ture1("第三步开启成功")
gg.copyText("1;0.33333334327")
gg.alert("手动修改(推荐-0.7)，关闭时记得修改为原来数值，原来数值已经复制，每局必须恢复")
os.exit()
end



function c6()
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("第二步恢复成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("恢复成功，豪哥原创自改遁地")
end



function c7()
gg.alert('开启时请走动')
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("123456", RElove_ture19)
RElove_ture1("第二步成功")
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-1.12345",RElove_ture19)
RElove_ture1("第一步开启成功")
RElove_ture2()
RElove_ture5(32) 
RElove_ture3("12D;4,096D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("4096", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("4095", RElove_ture21)
RElove_ture1("第三步开启成功")
RElove_ture1("全部开启成功，豪哥原创")
end



function c8()
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-1.12345;-1.12345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-1.12345", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("1;0.33333334327",RElove_ture19)
  RElove_ture2()
  RElove_ture5(32)
  RElove_ture3("12D;4,095D;0.03999999911F", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture3("4095", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
  RElove_ture6(100)
  RElove_ture4("4096", RElove_ture21)
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("全部恢复成功，豪哥NB")
end

function c15()
menu2 = gg.multiChoice({
"🌷优化版蹲下遁地🌷",
"🌷关闭优化版遁地🌷",
"开启视角版蹲下遁地",
"关闭视角版蹲下遁地",
"虚体视角遁地(不要蹲)",
"关闭虚体视角遁地",
"",
"",
"",
"",
"点击这返回上页"},
nil,"虚体遁地容易出错")
if menu2 == nil then else
if menu2[1] == true then dd1() end
if menu2[2] == true then dd2() end
if menu2[3] == true then dd3() end
if menu2[4] == true then dd4() end
if menu2[5] == true then dd5() end
if menu2[6] == true then dd6() end
if menu2[7] == true then dd7() end
if menu2[8] == true then dd8() end
if menu2[9] == true then dd9() end
if menu2[10] == true then dd10() end
if menu2[11] == true then C() end
end
GLWW=-1
end

function dd1()
  gg.clearResults()
  gg.searchNumber("0.001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(900)
  gg.editAll("-5", gg.TYPE_FLOAT)
  gg.toast("容易出错")
  gg.setVisible(false)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.clearResults()
  gg.searchNumber("1.2;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-5.08698963", gg.TYPE_FLOAT)
  gg.toast("蹲下猥琐")
  gg.setVisible(false)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("子弹穿墙成功，下把游戏前要恢复，不然卡视角")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("123456.0", RElove_ture19)
RElove_ture1("穿墙开启成功")
end

function dd2()
     RElove_ture2()
     RElove_ture5(32)
     RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("恢复成功")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("穿墙恢复成功")
  gg.clearResults()
  gg.searchNumber("-5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(900)
  gg.editAll("0.001", gg.TYPE_FLOAT)
  gg.toast("50%")
  gg.setVisible(false)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
  gg.clearResults()
  gg.searchNumber("-5.08698963;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-5.08698963", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("1.2", gg.TYPE_FLOAT)
  gg.toast("恢复成功")
  gg.setVisible(false)
  gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
end

function dd3()
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("子弹穿墙成功，下把游戏前要恢复，不然卡视角")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("123456.0", RElove_ture19)
RElove_ture1("穿墙开启成功")
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('1.2;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('1.2', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('-1.123456', RElove_ture19)
    RElove_ture1('开启成功')
end

function dd4()
     RElove_ture2()
     RElove_ture5(32)
     RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("恢复成功")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("穿墙恢复成功")
    RElove_ture2()
    RElove_ture5(RElove_ture11)
    RElove_ture3('1.123456;50', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture3('1.123456', RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
    RElove_ture6(100)
    RElove_ture4('1.2', RElove_ture19)
    RElove_ture1('恢复成功')
end

function dd5()
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("子弹穿墙成功，下把游戏前要恢复，不然卡视角")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("123456.0", RElove_ture19)
RElove_ture1("穿墙开启成功")
  gg.clearResults()
  gg.searchNumber("0.10899999738;1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.55999994278", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9000)
  gg.editAll("-20", gg.TYPE_FLOAT)
  gg.toast("视角下陷开启成功，不要蹲下")
  gg.setVisible(false)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
end

function dd6()
     RElove_ture2()
     RElove_ture5(32)
     RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("恢复成功")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("穿墙恢复成功")
  gg.clearResults()
  gg.searchNumber("0.10899999738;-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9000)
  gg.editAll("1.55999994278", gg.TYPE_FLOAT)
  gg.toast("视角下陷恢复成功")
  gg.setVisible(false)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.setVisible(false)
end

function dd7()

end

function dd8()

end

function dd9()

end

function dd10()

end

DD=true
function c9()
if DD == true then
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("0.01;0.0001", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("0.01", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("123456", RElove_ture19)
RElove_ture1("第二步成功")
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("1;0.33333334327::5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(100)
RElove_ture4("-1.56789",RElove_ture19)
RElove_ture1("第一步开启成功")
RElove_ture2()
RElove_ture5(32)
RElove_ture3("23D;14D;12D;17D;15D;5D;8D;18D;19D;22D;24D;0D;512D::53", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("12", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(10000)
RElove_ture4("666999", RElove_ture21)
RElove_ture1("第三步成功")
funtable[1] = "关闭最新超强深遁"
DD=false
else
RElove_ture2()
RElove_ture5(32)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("666999", RElove_ture21, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("12", RElove_ture21)
RElove_ture1("第三步恢复成功")
RElove_ture2()
RElove_ture5(RElove_ture12)
RElove_ture3("-1.56789;-1.56789:5", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture3("-1.56789;-1.56789", RElove_ture19,RElove_ture25,RElove_ture30,0, -1)
RElove_ture6(10000)
RElove_ture4("1;0.33333334327",RElove_ture19)
RElove_ture1("第一步关闭成功")
RElove_ture2()
RElove_ture5(16384)
RElove_ture3("123456.0", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture3("123456", RElove_ture19, RElove_ture25, RElove_ture30, 0, -1)
RElove_ture6(100)
RElove_ture4("0.01", RElove_ture19)
RElove_ture1("第二步恢复成功")
funtable[1] = "开启最新超强深遁"
DD=true
end end

function Exit()
print("🌷感谢支持🌷")
os.exit()
end

function HOME()
lw=1
Main()
end

while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(RElove_ture25)
end
RElove_ture2()
if XGCK==1 then
Main()
end
end