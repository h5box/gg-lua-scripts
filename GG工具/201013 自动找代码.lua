jjj=0 jjk=0 bys=1000
x=-1
gg.toast("把最大显示数改为10万，以确保99.99%成功")
function kai0()
sj=os.date("%c")
gg.clearResults()
zo={} z=0
hu=gg.multiChoice({
"◤Jh内存◢",
"◤Ch内存◢",
"◤Ca内存◢",
"◤Cd内存◢",
"◤Cb内存◢",
"◤PS内存◢",
"◤A内存◢",
"◤J内存◢",
"◤S内存◢",
"◤As内存◢",
"◤V内存◢",
"◤O内存◢",
"◤B内存◢",
"◤Xa内存◢",
"◤Xs内存◢",
"跳过选择(我已提前选好)",
"❎️退出EXIT❎"},nil,"🔍🇻◆查找代码脚本◆🇻🔎by molinka \n把最大显示数改为10万，以确保99.99%成功")
if hu==nil then x=-1 else
if hu[17]==true then exit() else
if hu[16]==true then 
x=0
else
if hu[1]==true then table.insert(zo,"2") z=z+1 end
if hu[2]==true then table.insert(zo,"1") z=z+1 end
if hu[3]==true then table.insert(zo,"4") z=z+1 end
if hu[4]==true then table.insert(zo,"8") z=z+1 end
if hu[5]==true then table.insert(zo,"16") z=z+1 end
if hu[6]==true then table.insert(zo,"262144") z=z+1 end
if hu[7]==true then table.insert(zo,"32") z=z+1 end
if hu[8]==true then table.insert(zo,"65536") z=z+1 end
if hu[9]==true then table.insert(zo,"64") z=z+1 end
if hu[10]==true then table.insert(zo,"524288") z=z+1 end
if hu[11]==true then table.insert(zo,"1048576") z=z+1 end
if hu[12]==true then table.insert(zo,"-1032320") z=z+1 end
if hu[13]==true then table.insert(zo,"131072") z=z+1 end
if hu[14]==true then table.insert(zo,"16384") z=z+1 end
if hu[15]==true then table.insert(zo,"32768") z=z+1 end
if z==1 then gg.setRanges(bit32.bxor(zo[1])) x=0 end
if z==2 then gg.setRanges(bit32.bxor(zo[1],zo[2])) x=0 end
if z==3 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3])) x=0 end
if z==4 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4])) x=0 end
if z==5 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5])) x=0 end
if z==6 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6])) x=0 end
if z==7 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7])) x=0 end
if z==8 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8])) x=0 end
if z==9 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9])) x=0 end
if z==10 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9],zo[10])) x=0 end
if z==11 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9],zo[10],zo[11])) x=0 end
if z==12 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9],zo[10],zo[11],zo[12])) x=0 end
if z==13 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9],zo[10],zo[11],zo[12],zo[13])) x=0 end
if z==14 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9],zo[10],zo[11],zo[12],zo[13],zo[14])) x=0 end
if z==15 then gg.setRanges(bit32.bxor(zo[1],zo[2],zo[3],zo[4],zo[5],zo[6],zo[7],zo[8],zo[9],zo[10],zo[11],zo[12],zo[13],zo[14],zo[15])) x=0 end
end
end
end
end







function kai()
gg.clearResults()
gg.clearList()
u=gg.choice({
"🏷️D类型--DWORD🏷️",
"🏷️F类型--FLOAT🏷️",
"🏷️E类型--DOUBLE🏷️",
"🏷️W类型--WORD🏷️",
"🏷️B类型--BYTE🏷️",
"🏷️Q类型--QWORD🏷️",
"🏷️X类型--XOR🏷️",
"🏷️AUTO(慢)🏷️",
"↗我用联合搜索(跳过)↗",
"MⓂ--查看更新日志--ⓂM",
"✴设置gg等待时间✴",
"📔使用说明手册📔",
"❎️退出EXIT❎️"},"","🔍🇻◆查找代码脚本◆🇻🔎by molinka \n把最大显示数改为10万，以确保99.99%成功")
if u==nil then x=0 else

if u==1 then lei=gg.TYPE_DWORD  le="D类" moshi() end
if u==2 then lei=gg.TYPE_FLOAT  le="F类" moshi() end
if u==3 then lei=gg.TYPE_DOUBLE  le="E类" moshi() end
if u==4 then lei=gg.TYPE_WORD  le="W类" moshi() end
if u==5 then lei=gg.TYPE_BYTE  le="B类" moshi() end
if u==6 then lei=gg.TYPE_QWORD  le="Q类" moshi() end
if u==7 then lei=gg.TYPE_XOR  le="X类" moshi() end
if u==8 then lei=gg.TYPE_AUTO  le="AUTO" moshi() end
if u==9 then jingque2() end
if u==10 then
gg.alert(
"🌟2020.1.20  V1.0\n--加入范围增值自定义功能\n🌟2020.1.21  V1.2\n--加入精确单一搜索功能\n--加入所有数值类型\n--加入计算去除值功能\n--修复bug\n🌟2020.1.22  V1.3\n--优化算法,去除值不受最大100000限制\n--修复bug\n🌟2020.1.23  V1.3+\n--修复pis显示问题\n🌟2020.1.26  V1.5\n--加入常用内存选择\n--加入退出\n--修复显示bug\n🌟2020.1.27  V2.0\n--加入范围搜索\n--加入使用说明手册\n🌟2020.1.29  V3.0\n--修复上述所有版本的通病(搜索结果较多会造成几次改善后结束)\n--修复了范围搜索结果过多容易崩溃问题\n--加入gg执行完后等待时间\n--以速度换稳定，稳定性提升50%+\n--优化所有功能的关于恢复数值的算法，进一步提高稳定性\n🌟2020.1.30  V3.2\n--改善增值功能(当前数值搜索结果为0时自动跳转下一数值)\n--修复bug\n🌟2020.1.31  V3.5\n--加入联合搜索(＋改善)\n🌟2020.1.31  V3.6\n--加入实时去除值功能(在更改设置中)\n--修复显示bug\n🌟2020.2.1  V4.0\n--加入【冻结当前勾选数值】功能\n--加入所有内存选择\n--加入【弹窗显示剩余结果】功能\n--将gg等待时间调至类型选择菜单\n--优化体验\n--（没发现bug故未修复bug）\n🌟2020.2.3  V4.2\n--记录上次输入值到输入框")
kai()
end
if u==11 then
bysj=gg.prompt({
[1]="gg每次执行后等待时间(不能为0,默认1000,1000=1s,详情看说明手册)"},{
[1]="1000"})
if bysj==nil then kai() else
bys=bysj[1]
end
end


if u==12 then
sy=gg.choice({
"❓脚本bug❓",
"❓关于范围增值❓",
"❓关于精确单一❓",
"❓关于范围搜索❓",
"❓二分法是什么❓",
"❓怎样判断有无效果❓",
"❓每次执行等待时间❓",
"⭐这个脚本能做什么？⭐"},nil,"😃欢迎使用《帮助说明手册》😃\n当前版本:🇻 by molinka")
if sy==1 then
gg.alert("●如遇到查值搜值或者二分法出现问题，可以用86.2版的GG修改器，作者用的就是86.2版测试无问题，版本过高或过低都会出现一些问题")
end
if sy==2 then
gg.alert("●这里直接举个例子也许会更好理解\n开始值:1\n结束值:5\n每次增量:1\n含义:第一次搜1，1搜完后自动换成1+1=2搜，2搜完3，3搜完4，4搜完5，但是因为5是结束值，所以5搜完后不会继续搜6而是直接结束搜索\n●所以说这个跟单纯的范围搜索是有区别的，1~5的范围搜索包括了各个值，而自定义的每次增量则限制了搜索一些无规律的值（像1.19674691）")
end
if sy==3 then
gg.alert("●这个跟大家自己手动搜索数值差不多，主要说一下【去除值】\n【去除值】是指去除前多少条结果，适用于去除一些改了没效果还会导致游戏闪退或者各种问题的代码，实例:F类搜1，会有很多结果，其中有好东西也有改了会闪退的，当你改到了第x次时游戏崩溃了，可以选择【计算去除值】(范围增值功能暂无此项)，会直接得到结果(公式:总搜出值-实时剩下数值)，下次就可以提前去除这些会导致游戏崩溃的代码\n●当然，这个也有一定的误差，受每次搜出总结果的不同，每次勾选结果不同(有可能你勾选2000条，把崩溃值和有用值都勾了，去除时就把有用值去了)等因素影响，所以，看你们自己吧")
end
if sy==4 then
gg.alert("●跟gg的范围搜索一样(例如1~2，0.1~0.2)，可以搜到所在范围的全部值，关于【去除值】可以在❓关于精确单一❓中查看，我已经讲过了")
end
if sy==5 then
gg.alert("●二分法是一种改到有用值后通过二分找到准确数值的方法，举个例子\n改了1000结果后有有效的数据，先还原1000个结果，勾选500个结果并修改，看看还有没有效果，若有效则恢复500结果，勾选250个结果并修改查看有没有效果，以此类推，若无效则恢复并去除\n●上述操作十分的繁杂，一不留神有可能会导致出错，所耗时间也较多，脚本二分法原理便是如此，不过我已经简化成了有无效果，通过点击有无效果脚本将自动执行上述操作，待【剩余勾选数值】到达0个，【已勾选数值】为1个，这个时候就可以点击【保存到列表】了")
end
if sy==6 then
gg.alert("●有没有效果看游戏嘛，这个还要讲嘛😂")
end
if sy==7 then
gg.alert("●受结果，一次处理条数，手机性能等因素限制，gg在执行移除结果指令时会消耗一定的时间，而gg执行lua语言的速度可比这时间快多了多，所以有可能在gg还没移除完结果的时候，它已经执行完下面的lua语言了，会造成错误提示\n●建议:默认1000，也就是1秒，可以满足绝大部分情况，如果你设置一次修改条数很多，若出现报错现象，可以将1000改为2000或3000等以此来给gg一个缓冲的时间")
end
if sy==8 then
gg.alert("●该脚本主要适用于瞎搜代码的情况，当一个游戏实在啥都找不到了试试瞎搜吧，A,Ca,Xa, 0.1,0.2,0.3......等等，会有惊喜哦")
end
end

if u==13 then 
exit() end
end
end

function moshi()
o=gg.choice({
"★范围增量自定义\n🅰➡🅱",
"★精确单一数值\n▶🅰◀",
"★范围搜索\n🅰~🅱"},"","🅰请选择模式🅱\n🇻4.2by molinka\n把最大显示数改为10万，以确保99.99%成功")
if o==nil then exit() else
if o==1 then x=2 fanweizeng() end
if o==2 then cxk() end
if o==3 then x=8 fanwei() end
end
end

function cxk()
  eu=gg.choice
  (
     {
       "★普通搜索\n▶🅰◀",
       "★联合搜索\n🇦;🇧;🇨"
     },"",
       "🇦选择模式:🇧"
   )
  if eu==nil then 
    moshi()
  else
    if eu==1 then
      x=3
      jingque()
    end
    if eu==2 then
      x=3.1
      jingque2()
    end
  end
end




function jingque2()
file = io.open("/sdcard/Android/obb/mo4bfgjingque2.txt","r")
if file then
file = io.open("/sdcard/Android/obb/mo4bfgjingque2.txt","r")
else
file = io.open("/sdcard/Android/obb/mo4bfgjingque2.txt","w")
file = io.open("/sdcard/Android/obb/mo4bfgjingque2.txt","r")
end
txt={}
for c in file:lines() do
  txt[#txt+1]=c
end
file:close()
  dj=0
  koo=1
  ol=1
  xo=0
  k=gg.prompt
  (
    {
      [2]="📝一次修改多少条",
      [1]="🔍输入搜索数值(⚠需手动在每个值后加类型⚠)",
      [3]="🔑一次修改数值为:",
      [4]="❌去除前多少结果",
      [5]="改善数值:",
      [6]="改善数值类型(简写，DWORD就写D,FLOAT就写F)",
      [7]="弹窗显示剩余结果",
    },
    {
    [1]=txt[1],
    [2]=txt[2],
    [3]=txt[3],
    [4]=txt[4],
    [5]=txt[5],
    [6]=txt[6],
    [7]=false},
    {[7]="checkbox"}
  )
   if k==nil then
     x=1
   else
   file = io.open("/sdcard/Android/obb/mo4bfgjingque2.txt","w")
file:write(""..k[1].."")
file:write("\n"..k[2].."")
file:write("\n"..k[3].."")
file:write("\n"..k[4].."")
file:write("\n"..k[5].."")
file:write("\n"..k[6].."")
file:close()
  if k[6]=="D" then lei=gg.TYPE_DWORD  le="D类"  end
  if k[6]=="F" then lei=gg.TYPE_FLOAT  le="F类" end
  if k[6]=="E" then lei=gg.TYPE_DOUBLE  le="E类"  end
  if k[6]=="W" then lei=gg.TYPE_WORD  le="W类" end
  if k[6]=="B" then lei=gg.TYPE_BYTE  le="B类" end
  if k[6]=="Q" then lei=gg.TYPE_QWORD  le="Q类" end
  if k[6]=="X" then lei=gg.TYPE_XOR  le="X类"  end
  if k[6]=="A" then lei=gg.TYPE_AUTO  le="AUTO" end
  if k[7]==true then jjk=1 end
    for i=1,4 do
       if k[i]==nil then
         x=1
       else
         for i=2,4 do
           k[i]=tonumber(k[i])
           kz=k[4]
           pis=k[2]
         end
       end
     end
    gg.searchNumber(k[1],gg.TYPE_AUTO)
    fk=gg.getResultCount()
    if fk==0 then
      gg.toast("无结果")
      exit()
    else
      gg.searchNumber(k[5],lei)
      jing()
    end
  end
end














function jingque()
file = io.open("/sdcard/Android/obb/mo4bfgjingque.txt","r")
if file then
file = io.open("/sdcard/Android/obb/mo4bfgjingque.txt","r")
else
file = io.open("/sdcard/Android/obb/mo4bfgjingque.txt","w")
file = io.open("/sdcard/Android/obb/mo4bfgjingque.txt","r")
end
txt={}
for c in file:lines() do
  txt[#txt+1]=c
end
file:close()

dj=0
koo=1
ol=1
xo=0
k=gg.prompt({
[2]="📝一次修改多少条",
[1]="🔍输入搜索数值(暂不支持～范围～)",
[3]="🔑一次修改数值为:",
[4]="❌去除前多少结果",
[5]="弹窗显示剩余结果"},
{
[1]=txt[1],
[2]=txt[2],
[3]=txt[3],
[4]=txt[4],
[5]=false},
{[5]="checkbox"})
if k==nil then x=1 else
file = io.open("/sdcard/Android/obb/mo4bfgjingque.txt","w")
file:write(""..k[1].."")
file:write("\n"..k[2].."")
file:write("\n"..k[3].."")
file:write("\n"..k[4].."")
file:close()
for i=1,4 do
k[i]=tonumber(k[i])
kz=k[4]
pis=k[2]
end
if k[5]==true then
jjj=1
end
gg.searchNumber(k[1],lei)
jing()
end
end


function jing()
 if ol==1 then
  ti=gg.getResultCount()
  ol=0
 end

if koo==1 then
  if k[4]>=100000 then
  hj,hk=math.modf(k[4]/100000)
  hk=hk*100000
  pq=gg.getResults(hk)
  gg.removeResults(pq)
    for i=1,hj do
    pq=gg.getResults(100000)
    gg.removeResults(pq)
    end
  else
  ko=gg.getResults(k[4])
  gg.removeResults(ko)
  koo=0
  end
  koo=0
end
 tio=gg.getResultCount()
 if tio==0 then  gg.toast("搜索结束") exit() end
if k[2]>tio then k[2]=tio end
 io=gg.getResults(k[2]) tio=gg.getResultCount()
 if tio==0 then  gg.toast("搜索结束") exit() end
if k[2]>tio then k[2]=tio end
 io=gg.getResults(k[2])
 xo=xo+k[2]


 if ol==0 then
  if xo>=ti then xo=ti end
  if xo>=tio then xo=tio end
  if k[4]>=ti then gg.toast("已移除全部结果") exit() end
  if pis>=ti then pis=ti end
  gi=ti-kz-k[2] ol=2
  if gi<=0 then gi=0 end
  if jjj==1 then
  gg.toast("剩余结果:"..gi.."")
  end
  if jjk==1 then
  gg.toast("剩余结果:"..gi.."")
  end
  gg.editAll(k[3],lei)
  x=6
 else
  if xo>=ti then xo=ti end
  if xo>=tio then xo=tio end
  if pis>=ti then pis=ti end
  gi=gi-k[2]
  if gi<=0 then gi=0 end
  if jjj==1 then
  gg.toast("剩余结果:"..gi.."")
  end
  if jjk==1 then
  gg.toast("剩余结果:"..gi.."")
  end
  gg.editAll(k[3],lei)
  x=6
 end
end


function jingsou()
if dj==0 then
dgj="未冻结"
else
dgj="💙已冻结💙"
end
if ti==0 then gg.toast("搜索结束") exit() end
y=gg.choice({
"⭕有效果(进入二分法查值模式)",
"❌无效果(继续筛选)",
"💙冻结当前勾选数值💙",
"计算需移除条数(闪退后点)",
"⚙️更改设置并继续搜索"},"","☀总搜出"..ti.."个结果\n⚡已移除"..kz.."个结果\n          "..dgj.."\n🌚实时剩下"..gi.."个结果          🍃 by molinka\n🔴已勾选修改"..k[2].."个结果     "..sj.."\n🍀当前搜索数值:"..k[1].."\n🍀类型:"..le.."")
if y==1 then 
if dj==1 then
  gg.clearList()
end
 oio=gg.getResults(k[2])
for i=1,k[2] do
oio[i].value=io[i].value
end
gg.setValues(oio)
ioo=k[2] iooi=k[2] erfen=0  jingfen() end


if y==2 then
if dj==1 then
  gg.clearList()
dj=0
end
 oio=gg.getResults(k[2])
for i=1,k[2] do
oio[i].value=io[i].value
end
gg.setValues(oio)
gg.removeResults(oio) 
fj=gg.getResultCount()
gg.sleep(bys)
if fj==0 then gg.toast("搜索结束") exit() else
jing()
end 
end

if y==3 then
  if dj==1 then
    gg.alert("您已冻结!")
    jingsou()
  else
  dj=1
  md={}
  for i=1,k[2] do
    md[i]={}
    md[i].address=io[i].address
    md[i].flags=lei
  end
  md=gg.getValues(md)
  for i=1,k[2] do
    md[i].value=k[3]
    md[i].freeze=true
  end
  gg.addListItems(md)
  jingsou()
  end
end



if y==4 then jo=gg.alert("计算和实际有误差,小心慎用\n结果:"..ti-gi.."","复制","关闭")
if jo==1 then gg.copyText(ti-gi) exit() end
if jo==2 then jingsou() end
end
if y==5 then
  rt=gg.prompt({
    [2]="一次修改多少条(当前为"..k[2].."):",
    [3]="一次修改值为(当前为"..k[3].."):",
    [4]="❌再次移除多少条"},{
    [2]=""..k[2].."",
    [3]=""..k[3].."",
    [4]="0"})
  if rt==nil then jingsou()
   else
    if dj==1 then
      lin=gg.alert("检测到你现在已开启冻结模式，继续搜索会将列表冻结结果清除，确定继续？","确定","取消")
      if lin==1 then
        gg.clearList()
      end
      if lin==2 then
        jingsou()
        dj=0
      end
    end
    rt[4]=tonumber(rt[4])
    if rt[4]~=0 then
      k[4]=rt[4]
      kz=kz+k[4]
      koo=1
      ol=0
    end
    rt[2]=tonumber(rt[2])
    rt[3]=tonumber(rt[3])
    k[2]=rt[2] k[3]=rt[3]
    gg.sleep(bys)
    jing()
  end
  if y==nil then x=6 end
end
end


function jingfen()
jg=gg.getResultCount()
ioo=math.ceil(ioo/2)
ip=gg.getResults(ioo)
if dj==1 then
  md={}
  for i=1,ioo do
    md[i]={}
    md[i].address=ip[i].address
    md[i].flags=lei
  end
  md=gg.getValues(md)
  for i=1,ioo do
    md[i].value=k[3]
    md[i].freeze=true
  end
  gg.addListItems(md)
else
gg.editAll(k[3],lei)
end
x=7
end


function jingfengai()
if dj==1 then
dm="💙冻结模式开启💙"
else
dm="未冻结"
end
erfen=erfen+1
e=gg.choice({
"☑仍有效果",
"没效果了",
"📌保存勾选☞列表"},"",
""..dm.."☀总搜出"..ti.."个结果         二分法查值中🍁\n☀总勾选"..pis.."个结果\n⚠已勾选"..ioo.."个结果\n🌚剩余待勾选"..iooi-ioo.."个结果          🍃 by molinka\n❌无效勾选"..k[2]-iooi.."个结果     "..sj.."\n二分次数:"..erfen.."\n🍀当前搜索数值:"..k[1].."\n🍀类型:"..le.."")
if e==1 then 
iooi=ioo
if dj==1 then
  gg.clearList()
end
oio=gg.getResults(ioo)
for i=1,ioo do
oio[i].value=ip[i].value
end
gg.setValues(oio)
gg.sleep(bys)

x=444 jingfen() end
if e==2 then 
if dj==1 then
  gg.clearList()
end
oio=gg.getResults(ioo)
for i=1,ioo do
oio[i].value=ip[i].value
end
gg.setValues(oio)
gg.removeResults(oio) 
gg.sleep(bys)
ioo=iooi-ioo
iooi=ioo
x=444 jingfen()
end
if e==3 then 
ioo=gg.getResults(ioo)
gg.addListItems(ioo)
exit()
end
end


































function fanweizeng()
file = io.open("/sdcard/Android/obb/mo4bfgfanweizeng.txt","r")
if file then
file = io.open("/sdcard/Android/obb/mo4bfgfanweizeng.txt","r")
else
file = io.open("/sdcard/Android/obb/mo4bfgfanweizeng.txt","w")
file = io.open("/sdcard/Android/obb/mo4bfgfanweizeng.txt","r")
end
txt={}
for c in file:lines() do
  txt[#txt+1]=c
end
file:close()
p=gg.prompt({
[1]="🔎开始数值:",
[2]="🔍结束数值:",
[3]="👆每次增量:",
[4]="📝一次修改多少条",
[5]="🔑一次修改数值为:",
[6]="弹窗显示剩余结果"},
{
[1]=txt[1],
[2]=txt[2],
[3]=txt[3],
[4]=txt[4],
[5]=txt[5],
[6]=false},
{[6]="checkbox"})
if p==nil then x=1 else
file = io.open("/sdcard/Android/obb/mo4bfgfanweizeng.txt","w")
file:write(""..p[1].."")
file:write("\n"..p[2].."")
file:write("\n"..p[3].."")
file:write("\n"..p[4].."")
file:write("\n"..p[5].."")
file:close()
if p[6]==true then
jjj=2
end
p[1]=tonumber(p[1])
p[2]=tonumber(p[2])
p[4]=tonumber(p[4])
gg.searchNumber(p[1],lei) 
pi=1 ps=p[4] kop=0 dj=0 sou()
end
end

function sou()
tio=gg.getResultCount()
if tio==0 then sou2() else
if p[4]>tio then p[4]=tio end
io=gg.getResults(p[4])
gg.editAll(p[5],lei)
r=gg.getResultCount()
pis=p[4]
if pis>=r then pis=r end

if pi==1 then ri=r pi=0 end
i=r-p[4] 
if i<=0 then i=0 end
x=4 
end
end


function sou2()
p[4]=ps
p[1]=p[1]+p[3] 
if p[1]<=p[2] then
gg.clearResults()
gg.searchNumber(p[1],lei)
tio=gg.getResultCount()
 if tio==0 then  gg.toast(""..p[1].."无结果，自动跳转下一数值") sou2() else
if p[4]>tio then p[4]=tio end
io=gg.getResults(p[4])
gg.editAll(p[5],lei)
r=gg.getResultCount()
pi=1 

r=gg.getResultCount()
pis=p[4]
if pis>=r then pis=r end
if pi==1 then ri=r pi=0 end
i=r-p[4] 
if i<=0 then i=0 end
if jjj==2 then
  gg.toast("剩余结果:"..i.."")
  end
end
else
gg.toast("搜索结束") exit() end
x=4
end





function gai()
if dj==0 then
dgj="未冻结"
else
dgj="💙已冻结💙"
end
t=gg.choice({
"找到好东西了(进入二分法查值模式)",
"没找到什么有用的(继续搜索)",
"💙冻结当前勾选数值💙",
"⚙️更改设置并继续搜索"},"","☀总剩余"..ri.."个结果\n⚠总共修改"..ri-i.."个结果\n          "..dgj.."\n当前勾选了"..pis.."个结果          🍃 by molinka\n🌚修改剩余"..i.."个结果     "..sj.."\n🍀当前搜索数值:"..p[1].."\n🍀类型:"..le.."")

if t==1 then  
if dj==1 then
gg.clearList()
end
if kop==1 then
p[4]=rt[4] p[5]=rt[5]
kop=0
end
oio=gg.getResults(p[4])
for i=1,p[4] do
oio[i].value=io[i].value
end
gg.setValues(oio)
 ioo=p[4] iooi=p[4] erfen=0  fen() end
 
if t==2 then
if dj==1 then
gg.clearList()
dj=0
end
oio=gg.getResults(p[4])
for i=1,p[4] do
oio[i].value=io[i].value
end
if kop==1 then
p[4]=rt[4] p[5]=rt[5]
kop=0
end
gg.setValues(oio)
gg.removeResults(oio) 
gg.sleep(bys)
fj=gg.getResultCount()
if fj==0 then sou2() else
sou()
end
end


 
if t==3 then
  if dj==1 then
    gg.alert("您已冻结!")
    gai()
  else
  dj=1
  md={}
  for i=1,p[4] do
    md[i]={}
    md[i].address=io[i].address
    md[i].flags=lei
  end
  md=gg.getValues(md)
  for i=1,p[4] do
    md[i].value=p[5]
    md[i].freeze=true
  end
  gg.addListItems(md)
  gai()
  end
end










if t==4 then 
rt=gg.prompt({
[4]="一次修改多少条(当前为"..p[4].."):",
[5]="一次修改值为(当前为"..p[5].."):"},{
[4]=""..p[4].."",
[5]=""..p[5]..""})
if rt==nil then gai() else
rt[4]=tonumber(rt[4])
rt[5]=tonumber(rt[5])
kop=1
end
end

if t==nil then x=4 end
end

function fen()
ioo=math.ceil(ioo/2)
ip=gg.getResults(ioo)
if dj==1 then
  md={}
  for i=1,ioo do
    md[i]={}
    md[i].address=ip[i].address
    md[i].flags=lei
  end
  md=gg.getValues(md)
  for i=1,ioo do
    md[i].value=p[5]
    md[i].freeze=true
  end
  gg.addListItems(md)
else
gg.editAll(p[5],lei)
end
x=5
end

function fengai()
if dj==1 then
dm="💙冻结模式开启💙"
else
dm="未冻结"
end
erfen=erfen+1
e=gg.choice({
"☑仍有效果",
"没效果了",
"📌保存勾选☞列表"},"",
""..dm.."☀总剩余"..ri.."个结果         二分法查值中🍁\n☀总勾选"..pis.."个结果\n⚠已勾选"..ioo.."个结果\n🌚剩余待勾选"..iooi-ioo.."个结果          🍃 by molinka\n❌无效勾选"..p[4]-iooi.."个结果     "..sj.."\n二分次数:"..erfen.."\n🍀当前搜索数值:"..p[1].."\n🍀类型:"..le.."")
if e==1 then 
iooi=ioo
if dj==1 then
gg.clearList()
end
oio=gg.getResults(ioo)
for i=1,ioo do
oio[i].value=ip[i].value
end
gg.setValues(oio)
gg.sleep(bys)
x=444 fen() end


if e==2 then 
if dj==1 then
gg.clearList()
end
oio=gg.getResults(ioo)
for i=1,ioo do
oio[i].value=ip[i].value
end
gg.setValues(oio)
gg.removeResults(oio) 
gg.sleep(bys)
ioo=iooi-ioo
iooi=ioo
x=444 fen()
end
if e==3 then 
ioo=gg.getResults(ioo)
gg.addListItems(ioo)
exit()
end
end



function fanwei()
file = io.open("/sdcard/Android/obb/mo4bfgfanwei.txt","r")
if file then
file = io.open("/sdcard/Android/obb/mo4bfgfanwei.txt","r")
else
file = io.open("/sdcard/Android/obb/mo4bfgfanwei.txt","w")
file = io.open("/sdcard/Android/obb/mo4bfgfanwei.txt","r")
end
txt={}
for c in file:lines() do
  txt[#txt+1]=c
end
file:close()
dj=0
koo=1
ol=1
xo=0
k=gg.prompt({
[2]="📝一次修改多少条",
[1]="🔍范围搜索(格式x~y)",
[3]="🔑一次修改数值为:",
[4]="❌去除前多少结果",
[5]="弹窗显示剩余结果"},
{
[1]=txt[1],
[2]=txt[2],
[3]=txt[3],
[4]=txt[4],
[5]=false},
{[5]="checkbox"})
if k==nil then x=1 else
file = io.open("/sdcard/Android/obb/mo4bfgfanwei.txt","w")
file:write(""..k[1].."")
file:write("\n"..k[2].."")
file:write("\n"..k[3].."")
file:write("\n"..k[4].."")
file:close()
if k[5]==true then
jjk=2
end
for i=2,4 do
k[i]=tonumber(k[i])
kz=k[4]
pis=k[2]
end
gg.searchNumber(k[1],lei)
fan()
end
end


function fan()
 if ol==1 then
  ti=gg.getResultCount()
  ol=0
 end
--移除：
if koo==1 then
if k[4]~=0 then
  if k[4]>=100000 then
  hj,hk=math.modf(k[4]/100000)
  hk=hk*100000
  pq=gg.getResults(hk)
  gg.removeResults(pq)
    for i=1,hj do
    pq=gg.getResults(100000)
    gg.removeResults(pq)
    end
  else
  ko=gg.getResults(k[4])
  gg.removeResults(ko)
  koo=0
  end
else
  koo=0
end
fan2()
end
end

function fan2() 
--检测和备份上次数据
tio=gg.getResultCount()
 if tio==0 then  gg.toast("搜索结束") exit() end
if k[2]>tio then k[2]=tio end
 io=gg.getResults(k[2])
-- bf={} 
-- for i=1,k[2] do   bf[i]={}  bf[i].address=io[i].address   bf[i].flags=lei end  bf=gg.getValues(bf)
-- for i=1,tio do  bf[i]={}  bf[i].value=io[i].value  end
 
 xo=xo+k[2]

--修改：
 if ol==0 then
  if xo>=ti then xo=ti end
  if xo>=tio then xo=tio end
  if k[4]>=ti then gg.toast("已移除全部结果") exit() end
  if pis>=ti then pis=ti end
  gi=ti-kz-k[2] ol=2
  if gi<=0 then gi=0 end
  if jjk==2 then
  gg.toast("剩余结果:"..gi.."")
  end
  gg.editAll(k[3],lei)
  x=9
 else
  if xo>=ti then xo=ti end
  if xo>=tio then xo=tio end
  if pis>=ti then pis=ti end
  gi=gi-k[2]
  if gi<=0 then gi=0 end
  if jjk==2 then
  gg.toast("剩余结果:"..gi.."")
  end
  gg.editAll(k[3],lei)
  x=9
 end
end

function fansou()
if dj==0 then
dgj="未冻结"
else
dgj="💙已冻结💙"
end
if ti==0 then gg.toast("搜索结束") exit() end
y=gg.choice({
"⭕有效果(进入二分法查值模式)",
"❌无效果(继续筛选)",
"💙冻结当前勾选数值💙",
"计算需移除条数(闪退后点)",
"⚙️更改设置并继续搜索"},"","☀总搜出"..ti.."个结果\n⚡已移除"..kz.."个结果\n          "..dgj.."\n🌚实时剩下"..gi.."个结果          🍃 by molinka\n🔴已勾选修改"..k[2].."个结果     "..sj.."\n🍀当前搜索数值:"..k[1].."\n🍀类型:"..le.."")
if y==1 then 
if dj==1 then
gg.clearList()
end
oio=gg.getResults(k[2])
for i=1,k[2] do
oio[i].value=io[i].value
end
gg.setValues(oio)
ioo=k[2] iooi=k[2] erfen=0  fenfen() end


if y==2 then 
if dj==1 then
gg.clearList()
dj=0
end
oio=gg.getResults(k[2])
for i=1,k[2] do
oio[i].value=io[i].value
end
gg.setValues(oio)
gg.removeResults(oio) 
fj=gg.getResultCount()
gg.sleep(bys)
if fj==0 then gg.toast("搜索结束") exit() else
fan2() 
end 
end

if y==3 then
  if dj==1 then
    gg.alert("您已冻结!")
    fansou()
  else
  dj=1
  md={}
  for i=1,k[2] do
    md[i]={}
    md[i].address=io[i].address
    md[i].flags=lei
  end
  md=gg.getValues(md)
  for i=1,k[2] do
    md[i].value=k[3]
    md[i].freeze=true
  end
  gg.addListItems(md)
  fansou()
  end
end
  
  
  




if y==4 then jo=gg.alert("计算和实际有误差,小心慎用\n结果:"..ti-gi.."","复制","关闭")
if jo==1 then gg.copyText(ti-gi) exit() end
if jo==2 then fansou() end
end
if y==5 then 
rt=gg.prompt({
[2]="一次修改多少条(当前为"..k[2].."):",
[3]="一次修改值为(当前为"..k[3].."):",
[4]="❌再次移除多少条"},{
[2]=""..k[2].."",
[3]=""..k[3].."",
[4]="0"})
if rt==nil then fansou() else
    if dj==1 then
      lin=gg.alert("检测到你现在已开启冻结模式，继续搜索会将列表冻结结果清除，确定继续？","确定","取消")
      if lin==1 then
        gg.clearList()
        dj=0
      end
      if lin==2 then
        fansou()
      end
    end
rt[4]=tonumber(rt[4])
if rt[4]~=0 then
koo=1
ol=0
k[4]=rt[4]
kz=kz+k[4]
end
rt[2]=tonumber(rt[2])
rt[3]=tonumber(rt[3])
k[2]=rt[2] k[3]=rt[3]
gg.sleep(bys)
fan2()
end
if y==nil then x=9 end
end
end

function fenfen()
jg=gg.getResultCount()
ioo=math.ceil(ioo/2)
ip=gg.getResults(ioo)
if dj==1 then
  md={}
  for i=1,ioo do
    md[i]={}
    md[i].address=ip[i].address
    md[i].flags=lei
  end
  md=gg.getValues(md)
  for i=1,ioo do
    md[i].value=k[3]
    md[i].freeze=true
  end
  gg.addListItems(md)
else
gg.editAll(k[3],lei)
end
x=10
end

function fanfengai()
if dj==1 then
dm="💙冻结模式开启💙"
else
dm="未冻结"
end
erfen=erfen+1
e=gg.choice({
"☑仍有效果",
"没效果了",
"📌保存勾选☞列表"},"",
""..dm.."☀总搜出"..ti.."个结果         二分法查值中🍁\n☀总勾选"..pis.."个结果\n⚠已勾选"..ioo.."个结果\n🌚剩余待勾选"..iooi-ioo.."个结果          🍃 by molinka\n❌无效勾选"..k[2]-iooi.."个结果     "..sj.."\n二分次数:"..erfen.."\n🍀当前搜索数值:"..k[1].."\n🍀类型:"..le.."")
if e==1 then 
iooi=ioo
if dj==1 then
gg.clearList()
end
oio=gg.getResults(ioo)
for i=1,ioo do
oio[i].value=ip[i].value
end
gg.setValues(oio)
gg.sleep(bys)

x=444 fenfen() end




if e==2 then 
if dj==1 then
gg.clearList()
end
oio=gg.getResults(ioo)
for i=1,ioo do
oio[i].value=ip[i].value
end
gg.setValues(oio)
gg.removeResults(oio) 
gg.sleep(bys)
ioo=iooi-ioo
iooi=ioo
x=444 fenfen()
end


if e==3 then 
ioo=gg.getResults(ioo)
gg.addListItems(ioo)
exit()
end
end


function exit()
print("🇨🇳NO.1\n🖕🏼🇺🇸🇯🇵🇰🇷🖕🏼\n🇻自动找代码\n始于2020.1.20\n作者molinka")
os.exit()
end










while true do
if gg.isVisible(true) then

  if x==-1 then
  gg.setVisible(false)
  kai0()
  end

  if x==0 then
  gg.setVisible(false)
  kai()
  end
  
  if x==1 then 
  gg.setVisible(false)
  moshi()
  end
  
  if x==2 then 
  gg.setVisible(false)
  fanweizeng()
  end
  
  if x==3 then 
  gg.setVisible(false)
  jingque()
  end
  
  if x==3.1 then
  gg.setVisible(false)
  jingque2()
  end
  
  if x==4 then
  gg.setVisible(false)
  gai()
  end
  
  if x==444 then
  gg.setVisible(false)
  end
  
  if x==5 then
  gg.setVisible(false)
  fengai()
  end
  
  if x==6 then
  gg.setVisible(false)
  jingsou()
  end
  
  if x==7 then
  gg.setVisible(false)
  jingfengai()
  end
  
  if x==7.1 then
  gg.setVisible(false)
  jingfengai2()
  end
  
  if x==8 then
  gg.setVisible(false)
  fanwei()
  end
 
  if x==9 then
  gg.setVisible(false)
  fansou()
  end
  
  if x==10 then
  gg.setVisible(false)
  fanfengai()
  end
  
  end
end