
function Main()
SN = gg.choice({
"我的世界稳定区",
"我的世界附魔区",
"我的世界刷物区",
"和平精英",
"王者荣耀",
"第五人格挂",
"逃跑吧少年挂",
"香肠派对挂",
"迷你世界挂",
"猫和老鼠挂",
"穿越火线挂",
"球球大作战挂",
"荒野行动",
"废土行动",
"QQ飞车",
"退出脚本"},
nil,"强到爆炸👀🙏 万能挂")
if SN == 1 then Main1() end
if SN == 2 then Main2() end
if SN == 3 then Main3() end
if SN == 4 then Main4() end
if SN == 5 then Main5() end
if SN == 6 then Main6() end
if SN == 7 then Main7() end
if SN == 8 then Main8() end
if SN == 9 then Main9() end
if SN == 10 then Main10() end
if SN == 11 then Main11() end
if SN == 12 then Main12() end
if SN == 13 then Main13() end
if SN == 14 then Main14() end
if SN == 15 then Main15() end
if SN == 16 then kl() end
XGCK=-1
end

function Main1()
  SN =gg.multiChoice({
  "雷疯伪op",
  "访客雷疯伪op",
  "雷疯黑客飞行权限",
  "雷疯黑客单次飞行",
  "忍者穿墙",
  "☞清功☜",
  "副手_一键开启",
  "这里没有用",
  "🐴🌸腾",
  "附魔书转换物品",
  "孤独添加全附魔书32k",
  "长臂猿(稳定)",
  "假死功能",
  "改蛋获取(第一步)",
  "输入改蛋id",
  "改蛋id查询及使用",
  "改蛋恢复",
  "杀戮功能",
  "64叠加",
  "返回上一页"
 }, nil, "刷不了东西？断网大法试试？🙏希望人没事")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
  if SN[6] == true then
   f()
  end
  if SN[7] == true then
   g()
  end
  if SN[8] == true then
   h()
  end
  if SN[9] == true then
   i()
  end
  if SN[10] == true then
   j()
  end
  if SN[11] == true then
   k()
  end
  if SN[12] == true then
   l()
   end
  if SN[13] == true then
  m()
  end
  if SN[14] == true then 
  nQ() 
  end
  if SN[15] == true then
  o()
  end
  if SN[16] == true then 
  p()
  end
  if SN[17] == true then
  r()
  end
  if SN[18] == true then
  s()
  end
  if SN[19] == true then 
  t()
  end
  if SN[20] == true then
  x()
  end
  if SN[21] == true then 
  v()
  end
  if SN[22] == true then
  m()
  end
  if SN[23] == true then
   tc()
  end
end
 GLWW = -1
end



function nQ()
gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("0D;0D;105D::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 	 gg.getResults(3)
	 gg.editAll("105", gg.TYPE_DWORD)
revert = gg.getResults(37, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(37, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = '"105"'
	end
end
gg.addListItems(t)
t = nil
	 gg.toast("请输入改蛋id")
	 gg.clearResults()
end

function v()
  gg.setRanges(4)
  gg.searchNumber("98312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("98312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(510)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 8486920
      }
    })
  end
  gg.toast("杀戮开启成功")
  gg.clearResults()
end

function t()
qmnb={
{["memory"] = 4},
{["name"] ="坐标"},
{["value"] =10000, ["type"] = 4},
{["lv"] = 513, ["offset"] = -148, ["type"] =4},
}
qmxg={
{["value"] =1, ["offset"] = -528, ["type"] = 4}
}
xqmnb(qmnb)
end

function m()
     local Mx = gg.prompt({
     "请输入您要修改数量的物品ID值"})
     if Mx == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Mx[1]
     if ID == "" then
     print("您还未输入物品ID值") os.exit()
end
     local DJ = gg.prompt({
     "请输入您要修改的物品最大重叠数量"})
     if DJ == nil then 
     print("您取消了") os.exit()
else
     local SZ = ""..DJ[1]
     if SZ == "" then
     print("您还未输入数量") os.exit()
end
     local Gm = gg.prompt({
     "请输入您要修改的数量"})
     if Gm == nil then 
     print("您取消了") os.exit()
else
     local ID = ""..Gm[1]
     if ID == "" then
     print("您还未输入要修改的数量") os.exit()
end

	 gg.clearResults()
	 gg.setRanges(4,1)
	 gg.searchNumber(""..DJ[1]..";1.0F;-128B"..Mx[1].."::68", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(DJ[1], gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Gm[1], gg.TYPE_WORD)
	 gg.toast("物品叠加开启成功")
	 
	 local A = gg.alert("是否需要恢复数据(防止闪退 使得你可以再改一次)","好的(那么我将在一分钟后自动恢复)","不需要")
	 if A == 1 then gg.sleep(60000) end
	 if A == 2 then Main0() end
	 gg.clearResults()
	 gg.setRanges(4,1)
	 gg.searchNumber(""..Gm[1]..";1.0F;-128B"..Mx[1].."::68", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(Gm[1], gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(Dj[1], gg.TYPE_WORD)
	 gg.toast("恢复成功")
	
end
end
end
end

function s()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.2", gg.TYPE_FLOAT )
	 gg.searchNumber("0.2", gg.TYPE_FLOAT )
	 gg.getResults(1)
	 gg.editAll("2.5", gg.TYPE_FLOAT)
	 gg.toast("远跳开启成功")
	 gg.clearResults()
end

function x()
qmnb = {
{["memory"] = 4},
{["name"] ="夜视"},
{["value"] =981668463 ,["type"] = 4},
{["lv"] = 1056964608, ["offset"] = -4, ["type"] = 4},
{["lv"] = 16, ["offset"] = -40, ["type"] = 4},
}
qmxg = {
{["value"] =1189765120, ["offset"] = -8, ["type"] = 4, ["freeze"] = false},
}
xqmnb(qmnb)
end

function o()
gg.clearResults()
input4 = gg.prompt({'输入要改的物品的ID'},{[1]=53},{[1]='number'});
local tmp = gg.getListItems()
for i in ipairs(tmp)do
 tmp[i].value=input4[1]
end
gg.setValues(tmp)
tmp=nil
gg.toast("已完成")
end

function p()
gg.alert("使用方法:先点改蛋获取，再点改蛋，输入要改的值，背包找 不行就搜索name 如发现没有 退出重新进 \n53末影龙 103唤魔者尖爪蛋\n65tnt蛋 102羊驼唾沫\n52凋零 95效果区域云蛋\n79龙息蛋 76潜影贝导弹\n257npc蛋 69经验球蛋\n93闪电蛋 78黑板蛋\n89凋零炸弹(黑) 91凋零炸弹(蓝)\n71末影水晶蛋 65点燃tnt蛋\n20铁傀儡蛋 21雪傀儡蛋")
end

function r()
gg.getResults(999)
gg.editAll("105",gg.TYPE_DWORD)
gg.toast("改蛋恢复成功")
end

function a()
  gg.toast("艹你🐴 你tm 算了 请退出世界重进")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2139029760", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value =2139030018}})
  end
  gg.toast("雷疯伪op 气死所有人 杀啊 开挂吧")
  gg.clearResults()
end

function l()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F;-1.0F::57", gg.TYPE_FLOAT)
	 gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F", gg.TYPE_FLOAT)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 5}})
	 end
	 gg.toast("长臂猿已开启")
	 gg.clearResults()
end

function b()
  gg.toast("艹你🐴 你tm 算了 请退出世界重进")
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("2139029504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2139029504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value =2139030018}})
  end
  gg.toast("访客雷疯伪op开挂 腐竹已病 炸服吧 ")
  gg.clearResults()
end



function m()
 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("20;20::17", gg.TYPE_FLOAT )
	 gg.searchNumber("20", gg.TYPE_FLOAT )
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("假死开启成功")
	 gg.clearResults()
end

function c()
  qmnb={
    {["memory"] = 4},
    {["name"] ="雷疯黑客飞行权限"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x144, ["type"] = 1}
  }
  xqmnb(qmnb)
end



function d()
  qmnb={
    {["memory"] = 4},
    {["name"] ="雷疯黑客单次飞行"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x138, ["type"] = 1, ["freeze"]=true}
  }
  xqmnb(qmnb)
end



function e()
  qmnb={
    {["memory"] = 4},
    {["name"] ="忍者穿墙"},
    {["value"] =2000, ["type"] = 4},
    {["lv"] = 1036831949, ["offset"] = -0x14, ["type"] =4},
  }
  qmxg={
    {["value"] =1, ["offset"] = 0x198, ["type"] = 1}
  }
  xqmnb(qmnb)
end



function f()
     gg.toast("开启时别动哦")
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.0F;1.0F;16777473::21", gg.TYPE_DWORD)
	 gg.searchNumber("16777473", gg.TYPE_DWORD)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16777473}})
	 end
	 gg.toast("享受你的轻功吧 弄死其他人的🐴")
	 gg.clearResults()
end


function g()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,208,530,192", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("1198530561", gg.TYPE_DWORD)
gg.toast("指令孤儿      享受你的副手吧    无敌寂寞")
end



function h()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("-161", gg.TYPE_WORD)
  gg.toast("我是🐴化腾")
end



function i()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("95", gg.TYPE_WORD)
  gg.toast("我是🐴化腾 ")
end



function j()
  local T=gg.prompt({
"部分物品id:弓261 钻石稿278 钻石斧279 钻石剑276 钻石头~鞋310-313 烈焰棒369 头模型397 鞘翅444 三叉戟455 弩471 隐形基岩95 地狱传送门方块90 末地传送门方块119 下界反应核247 发光的黑曜石246 折跃门209 屏障-161 手持物品栏456(闪退) 戴在脚上的金头盔454 气泡698 照相机-160 线条方块-211 结构方块252 循环命令方块188 紫黑棒166 盾牌513 命令块137 连锁命令块189"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1065353216D;16256W;403W;1B::10",127)
gg.searchNumber("403",2)
gg.getResults(999)
gg.editAll(T[1],2)
gg.toast("开启成功,你修改的值是"..T[1])
end
end



function k()
local T=gg.prompt({
"注意:修改后在背包左下角搜索修改的等级(如32767)获取"})
if T==nil then 
print("您选择了取消") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-128B;10B;-24B;0~35D;2D;-24B;1W;2D;1D;-88B;10B;9D;1D::777", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1W", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(T[1],gg.TYPE_WORD)
gg.toast("✔附魔成功孤独添加（不行的话就把手机给砸了）")
gg.clearResults()
end
end
function Main3()
 SN = gg.multiChoice({
"不死图腾改基岩️",
"不知道死图腾改屏障",
"不死图腾改命令方块",
"不死图腾改静态水️",
"不死图腾改末地折跃门",
"不死图腾改地狱传送门",
"不死图腾改隐基岩",
"不死图腾改燃烧熔炉",
"不死图腾改结构方位",
"不死图腾改静态岩浆",
"不死图腾改结构方块",
"不死图腾改知识之书",
"返回上一页"},
nil,"刷物区域")
if SN == nil then else
if SN[1] == true then d1() end
if SN[2] == true then d2() end
if SN[3] == true then d3() end
if SN[4] == true then d4() end
if SN[5] == true then d5() end
if SN[6] == true then d6() end
if SN[7] == true then d7() end
if SN[8] == true then d8() end
if SN[9] == true then d9() end
if SN[10] == true then d10() end
if SN[11] == true then d11() end
if SN[12] == true then d12() end
if SN[13] == true then tc() end
end
GLWW=-1
end

function d1()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("7", gg.TYPE_WORD)
gg.toast("不死图腾改基岩成功")
gg.clearResults()
end

function d2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("450", gg.TYPE_DWORD)
gg.toast("不死图腾改屏障成功")
gg.clearResults()
end

function d3()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("-161", gg.TYPE_WORD)
gg.toast("不死图腾改命令方块成功")
gg.clearResults()
end

function d4()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-161", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-161", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("450", gg.TYPE_DWORD)
gg.toast("不死图腾改静态水成功")
gg.clearResults()
end

function d6()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("90", gg.TYPE_WORD)
  gg.toast("修改地狱传送门成功")
  gg.clearResults()
end

function d5()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("209", gg.TYPE_WORD)
  gg.toast("修改末地折跃门成功")
  gg.clearResults()
end

function d7()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("137", gg.TYPE_WORD)
  gg.toast("不死图腾改隐基岩成功")
  gg.clearResults()
end

function d8()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("62", gg.TYPE_WORD)
  gg.toast("不死图腾改燃烧熔炉成功")
  gg.clearResults()
end
function d9()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("217", gg.TYPE_WORD)
  gg.toast("不死图腾改结构方位成功")
  gg.clearResults()
end
function d10()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("11", gg.TYPE_WORD)
  gg.toast("不死图腾改静态岩浆成功")
  gg.clearResults()
end
function d11()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("255", gg.TYPE_WORD)
  gg.toast("不死图腾改结构方块成功")
  gg.clearResults()
end
function d12()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("1.0F;-128B;450W::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("450", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("453", gg.TYPE_WORD)
  gg.toast("不死图腾改知识之书成功")
  gg.clearResults()
end

function Main2()
 SN = gg.multiChoice({
"附魔32k①",
"附魔32k②",
"随机附魔",
"返回上一页"},
nil,"附魔区域")
if SN == nil then else
if SN[1] == true then e1() end
if SN[2] == true then e2() end
if SN[3] == true then e3() end
if SN[4] == true then tc() end
end
GLWW=-1
end

function e1()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("32767", gg.TYPE_WORD)
  gg.toast("📖改32k外挂成功（32k享受)")
end
function e2()
gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("32767", gg.TYPE_WORD)
  gg.toast("📖改32k外挂成功（32k享受)")
end
function e3()
gg.clearResults()
gg.searchNumber("-128B;10B;2D;5W;2D;1D;9D;1D::400", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("5", gg.TYPE_WORD, false, gg.SIGN_LESS_OR_EQUAL, 0, -1)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("32767", gg.TYPE_WORD)
gg.processResume()
end


 function Main5()
  SN = gg.multiChoice({
    "上帝视角【排位奔放】",
    "破军8金币(大厅使用)",
    "后羿大招无CD(大厅使用)",
    "甄姬大招无CD(大厅使用)",
    "亚瑟无大招CD(大厅使用)",
    "四级铭文(野性)修改(大厅使用)",
    "游戏过保护【进入游戏使用】",
    "返回上一页"
  }, nil, "王者专区")
if SN == nil then else
if SN[1] == true then p1() end
if SN[2] == true then p2() end
if SN[3] == true then p3() end
if SN[4] == true then p4() end
if SN[5] == true then p5() end
if SN[6] == true then p6() end
if SN[7] == true then p7() end
if SN[8] == true then tc() end
end
GLWW=-1
end

function p1()
  gg.clearResults()
  gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1.5", gg.TYPE_FLOAT)
  gg.toast("有明显效果则开启成功")
end

function p2()
  gg.clearResults()
  gg.searchNumber("2090;2950", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2090;2950", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.toast("破军变8元开启成功")
end

function p3()
  gg.clearResults()
  gg.searchNumber("36930;45000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16930;45000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("后裔不消耗蓝开启成功")
end

function p4()
  gg.clearResults()
  gg.searchNumber("12730;50000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("12730;50000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("甄姬不消耗蓝开启成功")
end

function p5()
  gg.clearResults()
  gg.searchNumber("16630;42000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16630;42000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.toast("亚瑟大招无CD开启成功")
end

function p6()
  gg.clearResults()
  gg.searchNumber("1350;380", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1350;380", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99000000", gg.TYPE_DWORD)
  gg.toast("四级铭文(野性)修改成功")
end

function p7()
  gg.alert("王者无敌")
  gg.clearResults()
  gg.searchNumber("1", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("过保护46％")
  gg.searchNumber("1", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
  gg.alert("过保护完成")
end


function Main7()
 SN = gg.multiChoice({
 "全屏杀人【先丢一个手雷再开】",
 "火箭筒伤害1000",
 "秒拆夹子",
 "急救包改隐身",
 "火箭筒无间隔",
 "疾跑无限时间",
 "跳高无限时间",
"皮卡无限时间",
"踩陷阱加速",
"肾上腺素无限时间",
"全范围救人(游戏开)",
"全范围吸人(游戏开)",
"25倍开机(游戏开)",
"5倍拆陷阱(游戏开)",
 "返回上一页"},
nil, "逃跑吧少年专区")
if SN == nil then else
if SN[1] == true then z1() end
if SN[2] == true then z2() end
if SN[3] == true then z3() end
if SN[4] == true then z4() end
if SN[5] == true then z5() end
if SN[6] == true then z6() end
if SN[7] == true then z7() end
if SN[8] == true then z8() end
if SN[9] == true then z9() end
if SN[10] == true then z10() end
if SN[11] == true then z11() end
if SN[12] == true then z12() end
if SN[13] == true then z13() end
if SN[14] == true then z14() end
if SN[15] == true then tc() end
end
GLWW=-1
end

function z14()
 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1;1D;10D;1D;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("5", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function z1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;2.5F;0.2;33;105D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("250",gg.TYPE_FLOAT)
gg.toast("100倍手雷范围")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;-0.25;0.6;1.2;20;1000;0.2;33F;105D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("33", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("330",gg.TYPE_FLOAT)
gg.toast("10倍手雷伤害")
end

function z13()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;0.2;1.3;1.3;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("25", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function z12()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function z11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("260", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function z2()
gg.clearResults()
gg.searchNumber("56;4D;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("火箭筒伤害1000开启成功")
end

function z3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("8;0.2;1D;10D;1D;2.5;0.5;1;14::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(500)
gg.editAll("0.01",gg.TYPE_FLOAT)
gg.toast("秒拆陷阱拆陷阱")
end

function z4()
gg.clearResults()
	 gg.searchNumber("104;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("急救包改隐身开启成功")
end

function z5()
 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1.1;-0.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("火箭筒无间隔开启成功")
	 gg.clearResults()
end

function z6()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1000D;4.3;0.3;13D;80D::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("疾跑时间99999开启成功")
	 gg.clearResults()
end

function z7()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001D;4.3;0.3;13D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_DWORD)
	 gg.toast("跳高时间99999开启")
	 gg.clearResults()
end

function z8()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16;101D::50-", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("皮卡时间99999开启成功")
	 gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("101D;1;0.01;13D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("1.2",gg.TYPE_FLOAT)
gg.toast("皮卡速度120开启成功")
end

function z9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;-0.75;0;0::13",gg.TYPE_FLOAT,false, gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-0.75",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("0.75",gg.TYPE_FLOAT)
gg.toast("踩夹子加速开启成功")
end

function z10()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;5;0.4;13D::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_DWORD)
	 gg.toast("肾上腺素时间99999开启成功")
	 gg.clearResults()
end

function Main6()
  SN =gg.multiChoice({
  "人物蹭墙穿墙",
  "人物上色(新人物不行)",
  "845密码机上色",
  "845除雾(优先)",
  "除草第一种(优先)",
  "宝箱上色",
  "除墙透视",
  "人物加速(2倍以下没问题，要演)",
  "除草([备用]会出现人物亮度变黑)",
  "8200上色(画质效率)",
  "上色一键套(有点bug)",
  "更改加速倍数",
  "除雾第二种(备用)",
  "bf上色",
  "返回上一页"
 }, nil, "第五人格脚本，功能一次不行开两次就好！")
  if SN == nil then
  else
  if SN[1] == true then
    ak()
  end
  if SN[2] == true then
   bk()
  end
  if SN[3] == true then
   ck()
  end
  if SN[4] == true then
   dk()
  end
  if SN[5] == true then
   ek()
  end
  if SN[6] == true then
   fk()
  end
  if SN[7] == true then
   gk()
  end
  if SN[8] == true then
    hk()
  end
  if SN[9] == true then
    ik()
  end
  if SN[10] == true then
    jk()
  end
  if SN[11] == true then
    kk()
  end
  if SN[12] == true then
    lk()
  end
  if SN[13] == true then
    mk()
  end
  if SN[14] == true then
    nk()
  end
  if SN[15] == true then
   tc()
  end
end
GLWW=-1
end



function ak()
 gg.clearResults()
	 gg.setRanges(gg.REGION_C_ALLOC)
	 gg.searchNumber("1.0E;8.0E;6.0E;75.0E;15.0E:65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("穿墙开启失败，特征码已改变！！！")
  else
	 gg.searchNumber("8;15", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil
	 gg.getResults(999)
	 gg.editAll("999999999", gg.TYPE_DOUBLE)
	 gg.toast("成功")
end
end




function bk()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("288,555,008D;1,080,037,376D;288,555,009D;1,080,033,281D;288,555,010D;1,080,033,282D;2D;9,437,184D;208D;538,972,160D;6D;537,135,364D;216D;538,968,073D;4,302D;1,080,035,585D:109", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("人物椅子上色开启成功！")
end



function ck()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,080,037,376D;1,080,033,281D;288,358,402D;1,080,033,282D;2D;88D;538,972,160D;537,135,364D;538,968,073D:97", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("845机器上色开启成功！")
end

function dk()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.57013130188F;1.0878028e-32F;1.4177342e-37F;-3.4433196e34F;2.8345691e-23F;-0.50208950043F;-0.50291442871F;-0.50291442871F;-0.50291442871F;1.0F;0.0F;296,777.40625F;-1.1400233e-9F;21,122.009765625F;6.207879e-33F:125",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("除雾开启成功")
end

function ek()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2D;512D;273,715,281D;1,711,409,156D;4D;1,280D;1,280D;25,165,828D;67,244,032D;8,192D;8,196D;2,053D;272,367,626D;271,056,909D:169", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8192", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("9",gg.TYPE_DWORD)
gg.toast("除草开启成功")
end

function fk()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,080,039,936D;1,024D;-2,124,414,970D;1D;-2,124,414,969D;0D;2D;-2,124,414,960D;87D;9,437,184D;140D;4D:61", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("箱子上色开启成功！")
end

function gk()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("7680D;515D;15D;1F;0F",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("845除墙透视开启成功！")
for i = 11,200000 do
print() 
end
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(30)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("845除墙透视关闭成功！")
end

function hk()
local a = gg.prompt({"输入几就是几倍移动速度"
 }, {
    [1] = 2.501
  }, {
    [1] = "number"
  })[1]
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1) 
gg.searchNumber('1',gg.TYPE_DOUBLE,false, gg.SIGN_EQUAL,0,-1)
gg.getResults(9999) 
gg.editAll('1.000000001',gg.TYPE_DOUBLE) 
gg.toast("求生者:请下蹲然后站立\n监督者:请打开技能聆听")
for i = 1, 300000 do
print()
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber('1',gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1) 
gg.searchNumber('1',gg.TYPE_DOUBLE,false, gg.SIGN_EQUAL,0,-1)
gg.getResults(9999) 
gg.editAll(a,gg.TYPE_DOUBLE) 
gg.toast("加速开启成功！")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.000000001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.000000001", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll("1", gg.TYPE_DOUBLE)
gg.toast("已解决卡页面问题")
end

function ik()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-4.7127546e-10F;-2.3755475e-29F;-0.50291442871F;1.0F;1.0F;2.6746085e-38F;2.5626946e-41F;123,346.3515625F;154,906.015625F;993.22015380859F;3.1232701e24F;-3.3815946e34F;10,756.2734375F:125",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("除草开启成功")
end

function jk()
local b = gg.prompt({"数值2--8代表不同颜色"
 }, {[1] = 2}, {[1] = "number"})[1]
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("458,759D;8,192D;262,150D;1,669,529,610D;655,368D;1,669,595,146D;8200D;8,196D;2,053D;10D;-2,144,337,910D;8,195D;8,212D:113", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll(b,gg.TYPE_DWORD)
gg.clearResults()
gg.toast("8200全人物上色开启成功！不上色请看介绍！")
end

function kk()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,441,821D;1,670,283,286D;74D;19D;46D;8,199D;47D;8,212D;22D;-2,144,337,898D;2D:65",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("人物身体上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,310,748D;1,670,250,516D;74D;42D;43D;8,199D;58D;8,212D;20D:57", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("老人物头上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,572,886D;1,670,053,912D;53D;1,572,887D;54D;50D;51D;8,199D;52D;8,212D;24D;18D:81", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("人物椅子上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,572,886D;1,670,053,912D;46D;47D;50D;8,199D;8,212D;14D;24D;15D:65", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("密码机上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("282,460,181D;1,661,992,981D;282,460,191D;1,661,992,991D;18D;-2,126,512,110D;8,199D;8,204D;15,360D;214D;220D:57", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("宝箱上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,769,497D;1,670,152,207D;69D;52D;8,199D;38D;39D;15D:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("新人物头上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,572,886D;1,670,053,912D;61D;1,572,887D;1,670,086,680D;62D;50D;51D;8,199D;52D;8,212D;24D;-2,144,333,824D;18D;20D:89", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("厂长头上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("74D;42D;43D;8,199D;58D;8,212D;20D:49", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("监管者蛇女身体上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("655,388D;1,670,250,506D;74D;22D;23D;8,199D;40D;8,212D;10D:57", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("监管者蛇女头上色开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,900,572D;1,670,250,525D;21D;60D;61D;8,199D;8,212D;2D;29D;289,542,465D:65", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8199", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("拿伞的监管着上色开启成功")
gg.toast("上色全部开启成功")
end

function lk()
local a = gg.prompt({"输入上次修改的速度"
 }, {[1] = 2.501}, {[1] = "number"})[1]
local b = gg.prompt({"输入需要的速度"
 }, {[1] = 30}, {[1] = "number"})[1]
gg.setRanges(4)
gg.searchNumber(a, gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber(a, gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2000)
gg.editAll(b, gg.TYPE_DOUBLE)
gg.toast("速度已改变")
end


function mk()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0;0.2;0.35E;0.5E;1E;18E", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
  if gg.getResultCount() == 0 then
    gg.toast("除雾开启失败")
  else
gg.searchNumber("1", gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll("997",gg.TYPE_DOUBLE)
gg.toast("845除雾开启成功！")
end
end

function nk()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.5134023e-43F;1.3552527e-19F;1.6255062e-43F;1.355253e-19F;1.6395192e-43F;1.3555514e-19F;1.8509638e-12F;2.0F;4.6542799e-29F;3.50000047684F;4.6542814e-29F;3.50055098534F;1.8956766e-40F;2.3611838e21F;6.4874654e-40F;2.3611852e21F:69", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.toast("红色开启成功")
end

function Main4()
  SN = gg.multiChoice({
  "通用高通透视(出生岛开启)",
  "人物上色(出生岛开启)",
  "大厅无后座(大厅开启)",
  "全局防抖范围(落地)",
  "透视防闪天黑(出生岛)",
  "地面变黑(出生岛)",
  "人物地线(落地)",
  "高级资源定位(落地)",
  "全抢射速无预判(持枪开启)",
  "吉普加速(上车开启)",
  "人物自瞄",
  "信号枪定位",
  "上帝视角",
  "子弹穿墙追踪",
  "返回上一页"}, nil, "世界核平！")
  if SN == nil then
  else
  if SN[1] == true then
   a1m()
  end
  if SN[2] == true then
   b1m()
  end
  if SN[3] == true then
   b2m()
  end
   if SN[4] == true then
   b3m()
  end
  if SN[5] == true then
   c1m()
  end
  if SN[6] == true then
   c6m()
  end
  if SN[7] == true then
   c2m()
  end
  if SN[8] == true then
   c3m()
  end
   if SN[9] == true then
   c4m()
  end
  if SN[10] == true then
   c5m()
  end
  if SN[11] == true then
  cxm()
  end
  if SN[12] == true then
  c7m()
 end
 if SN[13] == true then
 c8m()
end
if SN[14] == true then
c9m()
end
  if SN[15] == true then
   tc()
  end
    end
 GLWW=-1
 end


function c8m()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2.8025969e-45;220;25;178;15;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("300", gg.TYPE_FLOAT)
  gg.toast("上帝视角开启成功")
end

function c9m()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("变态子弹穿墙追踪开启成功")
end


function a1m()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("定制小米8青春版")
end

function c7m()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.7576~0.7579",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.7576~0.7579",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("信号枪定位开启成功")
end

function b1m()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8196;8192;256;96;8200::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
    gg.toast("闪光红开启成功")
end

function b2m()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1.29999995232;5.0487104e-29;1.6166757e-27::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5.0487104e-29F", gg.TYPE_FLOAT, false)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("无后座开启成功")
end
function b3m()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT)
gg.setVisible(false)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("1.4012985e-45", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("防抖开启成功") 
end

function c1m()
gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("99999", gg.TYPE_FLOAT)
    gg.toast("透视防闪开启成功")
    gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false)
gg.searchNumber("100", gg.TYPE_FLOAT, false)
gg.getResults(100)
gg.editAll("-90", gg.TYPE_FLOAT)
gg.toast("黑夜模式开启成功")
end


function c2m()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("-9999999", gg.TYPE_FLOAT)
gg.toast("地线开启成功")
end



function c3m()
  gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,059,385,383A;1.32515919209A;1,101,199,028A::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.32515919209", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("m4定位开启成功")
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("18.46202087402;18.27177047729;18.64555358887;18.27177047729;18.46202087402::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18.46202087402;18.27177047729;18.64555358887;18.27177047729;18.46202087402::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("三级包开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("20.40783119202;20.52139854431;20.39787864685::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20.40783119202;20.52139854431;20.39787864685::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("20.39787864685;20.41123008728", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20.39787864685;20.41123008728", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("20.10107040405;20.94884109497;20.78182029724::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20.10107040405;20.94884109497;20.78182029724::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("20.08692169189", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20.08692169189", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("20.93981552124", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20.93981552124", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("三级天线开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8.77679443359;8.44664001465;8.83582305908;8.0239944458;8.12940979004;8.00137329102;8.92583465576::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8.77679443359;8.44664001465;8.83582305908;8.0239944458;8.12940979004;8.00137329102;8.92583465576::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8.00054168701;8.45446777344;8.82150268555;8.45344543457;8.00148010254", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8.00054168701;8.45446777344;8.82150268555;8.45344543457;8.00148010254", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8.02960205078", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8.02960205078", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("三级甲定位开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("22.22225952148;13.30930042267;12.18430042267::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("13.30930042267", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("21.67511940002;13.04788017273;12.01157951355::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("13.04788017273", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("盒子定位开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("0.15915493667;6.28318548203;-3.14159274101;0.24022650719;0.69314718246;2.0;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("333", gg.TYPE_FLOAT)
gg.toast("血液特效开启成功")

end

function c4m()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M416子弹开启成功！")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500")
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AKM子弹开启成功！")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("90000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M16子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("40000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(800)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("冲锋枪子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("76000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("98K子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("79000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("M24子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("91000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AWM子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("VSS子弹开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("弓弩瞬击开启成功")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
end

function c5m()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.64705884457;0.30000001192;0.94117647409;0.5;1;0.76000005007;0.96078431606;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.64705884457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-200", gg.TYPE_FLOAT)
gg.toast("吉普加速开启成功")
end
function c6m()
gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("3.75000119209;2;2.00000023842;2.00000047684;2.7506108284;3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("555", gg.TYPE_FLOAT)
  gg.toast("地面黑色开启成功")
end

function Main8()
SN = gg.multiChoice({
'人物天线①',
'人物天线②',
'人物天线③',
'人物天线④',
'除草①',
'除草②',
'无限背包',
'秒杀\n（慎重，开启后机器人也是秒杀）',
'爬墙',
'水上行走',
'人物闪棕色',
'人物花色',
'人物黑色',
'人物高跳30',
'人物高跳20',
'人物变高',
'拳头范围（小）',
'拳头范围锤全图\n（可能会造成游戏卡顿）',
"全图飞行(可能要开镜)",
'返回上一页'},
nil,"香肠派对专区")
if SN == nil then else
if SN[1] == true then NM1() end
if SN[2] == true then NM2() end
if SN[3] == true then NM3() end
if SN[4] == true then NM4() end
if SN[5] == true then NM5() end
if SN[6] == true then NM6() end
if SN[7] == true then NM7() end
if SN[8] == true then NM8() end
if SN[9] == true then NM9() end
if SN[10] == true then NM10() end
if SN[11] == true then NM11() end
if SN[12] == true then NM12() end
if SN[13] == true then NM13() end
if SN[14] == true then NM14() end
if SN[15] == true then NM15() end
if SN[16] == true then NM16() end
if SN[17] == true then NM17() end
if SN[18] == true then NM18() end
if SN[19] == true then NM19() end
if SN[20] == true then tc() end
end
GLWW=-1
end


function NM1()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.36097753048;1.36097753048;1.36097574234;1.29532468319;1.23142755032;1.23142755032;1.29532647133;1.23142755032;1.29532647133;1.23142755032;1.23142755032;1.29532468319;1.29532468319;1.23142755032;1.23142755032;1.29532647133;1.29532647133", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("999999999",gg.TYPE_FLOAT)
gg.toast("天线开启")
end



function NM2()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-0.05175213888',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('-99999', gg.TYPE_FLOAT)
gg.toast('天线开启')
end



function NM3()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-1,123,699,481D;1F::20',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)

gg.getResults(99)
gg.editAll('9999999', gg.TYPE_FLOAT)
gg.toast('天线开启')
end



function NM4()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-1,123,699,481D;-1,274,537,876D;1F::9',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('999999', gg.TYPE_FLOAT)
gg.toast('天线开启')
end



function NM5()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.45;1;1;1;1::17',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.45', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('3', gg.TYPE_FLOAT)
gg.toast('除草开启')
end



function NM6()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.45;1;1;1;1::17',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('除草开启')
end



function NM7()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('70;20;15::',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('70', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('99999999', gg.TYPE_FLOAT)
gg.toast('无限背包开启')
end



function NM8()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2;1.5;1;0.5;0.699999988082::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.5;1;0.699999988082", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("秒杀开启（半修复状态。）")
end



function NM9()

gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;1025D;1D;1;0.5::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("蜘蛛侠开启")
end



function NM10()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('0.4999999702;0.07999999821;0.5::9', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1) 
gg.searchNumber('0.07999999821', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) 
gg.getResults(10) 
gg.editAll('1',gg.TYPE_FLOAT) 
gg.toast('水上行走开启成功')
end



function NM11()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;169D;119D;2D;1D;2D;1;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("人物闪棕已成功开启")
gg.clearResults()
end



function NM12()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;169D;119D;2D;1D;2D;1;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("300", gg.TYPE_FLOAT)
gg.toast("人物花色已成功开启")
gg.clearResults()
end



function NM13()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;169D;119D;2D;1D;2D;1;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("人物黑色已成功开启")
gg.clearResults()
end



function NM14()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.20000004768;0.89999997616;1.20000004768;0.89999997616::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('30', gg.TYPE_FLOAT)
gg.toast('30倍高跳开启')
end



function NM15()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.20000004768;0.89999997616;1.20000004768;0.89999997616::13', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('20倍高跳开启')
end


function NM16()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('-390,230,032D;0D;0.0;0.0;1;0.0;0.0::25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast('人物变高开启')
end



function NM17()

gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("0.1365685463;1;1;1;1::150", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("拳头范围开启（群管提供）")
end



function NM18()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("0.1365685463;1;1;1;1::150", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("10000",gg.TYPE_FLOAT)
gg.toast("拳头范围开启（群管提供）")
end

function NM19()
gg.clearResults()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber("1", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2;1.5;1;0.5;0.7::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(200)
gg.editAll("250",gg.TYPE_FLOAT)
gg.toast("全图飞开启")
end

function Main9()
SN = gg.multiChoice({
	 "小飞鼠召唤别的坐骑第一步",
	 "第2步，第1步好了之后先召唤出来",
	 "羊生化石龙",
	 "羊生麒麟",
	 "羊生小飞鼠",
	 "羊生陆行鸟",
	 "羊生白象",
	 "恢复羊生化石龙",
	 "恢复羊生麒麟",
	 "恢复羊生小飞鼠",
	 "恢复羊生陆行鸟",
	 "恢复羊生白象",
	 "所有坐骑蛋秒孵化",
	 "穿墙",
	 "无限刷东西  把有三个的东西放在第一格",
	 "无限跳",
	 "生存人物无敌",
	 "返回上一页",
}, nil, "迷你专区 轰炸迷你dog吧")
if SN[1]==true then
	 HS13()
end
if SN[2]==true then
	 HS14()
end
if SN[3]==true then
	 HS15()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS18()
end
if SN[7]==true then
	 HS19()
end
if SN[8]==true then
	 HS20()
end
if SN[9]==true then
	 HS21()
end
if SN[10]==true then
	 HS22()
end
if SN[11]==true then
	 HS23()
end
if SN[12]==true then
	 HS24()
end
if SN[13]==true then
	 HS33()
end
if SN[14]==true then
	 HS()
end
if SN[15]==true then
	 HS1()
end
if SN[16]==true then
	 HS2()
end
if SN[17]==true then HS3() end
if SN[18]==true then
	 tc()
end
GLWW=-1
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16777472;3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16777472;3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3435}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3430}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3436}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3433}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3439}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3444}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS20()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("去耍吧😄")
	 gg.clearResults()
end

function HS1()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("945804463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("945804463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945804524}})
	 end
	 gg.toast("开启成功如果要联机的华要放在箱子里面才可以用！！！")
	 gg.clearResults()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("连续点跳跃键😃")
	 gg.clearResults()
end

function HS3()
gg.clearResults()
gg.searchNumber("1120403456;100F;1120403456;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1120403456", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("2143289344", gg.TYPE_DWORD)
gg.searchNumber("9999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast(" 人物无敌开启成功成功开启")
gg.toast("666")
end
function HS21()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3436", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3436", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3433", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3433", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
gg.searchNumber("950;3430;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(20)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("化石龙秒孵成功开启")
gg.clearResults()
gg.searchNumber("953;3439;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("陆行鸟秒孵成功开启")
gg.clearResults()
gg.searchNumber("951;3433;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("小飞鼠秒孵成功开启")
gg.clearResults()
gg.searchNumber("952;3436;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("麒麟秒孵成功开启")
gg.searchNumber("1111111", gg.TYPE_DWORD, false)
gg.toast("NB不？")
end

function Main10()
SN = gg.multiChoice({
  "变大三倍（普通老鼠）",
  "加速(国王杰瑞）",
  "秒杀（普通老鼠有效，其他自测）",
  "高跳修改",
  "移速修改",
"返回上一页"},
nil,"使用本外挂痛击欺负你的人吧")
if SN == nil then else
if SN[1] == true then NMa() end
if SN[2] == true then NMb() end
if SN[3] == true then NMc() end
if SN[4] == true then NMd() end
if SN[5] == true then NMe() end
if SN[6] == true then tc() end
end
GLWW=-1
end

function NMa()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.0;85.0;130.0;0.6370370388",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function NMb()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4.0859375;4.2038954e-45;5.6051939e-45;16.73958778381;5.6051939e-45",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.0859375",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function NMc()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3.38671875;5.6051939e-45;2.71875;4.2038954e-45;",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.71875",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function NMd()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4.81787109375F;3D;2.5F;2.0F;2.4375F::449", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.81787109375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 15}})
	 end
	 gg.toast("高跳修改成功")
	 gg.clearResults()
end



function NMe()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.875F;1.875F;4.134765625F;3D;2.5F;2.0F;2.4375F::1089", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.134765625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 6}})
	 end
	 gg.toast("移速修改成功")
	 gg.clearResults()
end

function Main11()
gg.setRanges(gg.REGION_C_ALLOC)
local t = gg.multiChoice({
"双模透视(单局)",
"大厅范围(全局)",
"进局范围(单局)",
"身体自瞄(全局)",
"枪械无后坐力(全局)",
"开启快刀(全局)",
"关闭快刀(全局)",
"人物加速(单局)",
"人物高挑(单局)",
"人物踏空(单局)",
"人物透视",
"关闭透视",
"返回上一页"
}, nil, '注：范围先开大厅后开进局')
if t == nil then else
if t[1] == true then aNM() end
if t[2] == true  then bNM() end
if t[3] == true  then cNM() end
if t[4] == true  then dNM() end
if t[5] == true  then eNM() end
if t[6] == true  then fNM() end
if t[7] == true  then gNM() end
if t[8] == true  then lNM() end
if t[9] == true  then iNM() end
if t[10] == true  then pNM() end
if t[11] == true  then rNM() end
if t[12] == true  then sNM() end
if t[13] == true  then tc() end
end
GLWW = -1
end

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
gg.toast("搜索到"..#data.."条数据")
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
gg.toast("已修改"..#t.."条数据")
gg.addListItems(t)
else
gg.toast("not found", false)
return false
end
else
gg.toast("Not Found")
return false
end
end

function aNM()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_DWORD
local tb1 = {{2048, 0}, {1008981770, 40},{1148846080, 44},}
local tb2 = {{108800, 0},} 
SearchWrite(tb1, tb2, dataType)
end

function rNM()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1008981770;1148846080;2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2048", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("108700", gg.TYPE_DWORD)
	 gg.toast("透视已开启")
	 gg.clearResults()
end

function sNM()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1008981770;1148846080;108700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2048", gg.TYPE_DWORD)
	 gg.toast("关闭透视")
	 gg.clearResults()
end
function bNM()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5;1;160D;0.0001",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("Ca范围开启成功，大厅开一次即可")
end

function cNM()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.05;45;0.9;0.2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("Ca范围开启成功，一局一次")
end

function dNM()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{57.29578, 0}, {1000, 8}, {0.5, 16},}
local tb2 = {{3.4e38, 0}, {0, 16},}
SearchWrite(tb1, tb2, dataType)
end

function eNM()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{1000, 0}, {1, 8}, {1000, 16}, {1, 24}}
local tb2 = {{0, 24}}
SearchWrite(tb1, tb2, dataType)
end

function fNM()
gg.setRanges(gg.REGION_C_ALLOC)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.5, 0}, {1, 8}, {1000, 16}}
local tb2 = {{3.4e38, 8}}
SearchWrite(tb1, tb2, dataType)
end

function gNM()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5;3.4e38;1000::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3.4e38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("快刀关闭成功")
end

function lNM()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("4.68580007553;0.60000002384;2.79999995232;10::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.processResume()
  gg.searchNumber("2.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("大佬加速开启成功")
  os.exit()
end

function iNM()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("－2.8;0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("2倍高跳开启成功")
end

function pNM()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.clearResults()
  gg.searchNumber("-0.03999999911;0.079999999821;0.5;0.30000001192;1.4012985E-45:40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.getResults(1000)
  gg.editAll("9999", gg.TYPE_FLOAT)
  gg.processResume()
  gg.toast("踏空开启成功")
end
function Main12()
  SN = gg.multiChoice({
    "球 球 大 作 战 视 野 扩 大 1 倍",
    "球 球 大 作 战 视 野 扩 大 2 倍",
    "球 球 大 作 战 视 野 扩 大 3 倍",
    "球 球 大 作 战 视 野 扩 大 4 倍",
    "球 球 大 作 战 视 野 扩 大 5 倍",
    "球 球 大 作 战 视 野 扩 大 6 倍",
    "返回上一页"
  }, nil, "球球大作战外挂")
if SN == nil then else
if SN[1] == true  then HS5m() end
if SN[2] == true  then HS6m() end
if SN[3] == true  then HS7m() end
if SN[4] == true  then HS8m() end
if SN[5] == true  then HS9m() end
if SN[6] == true  then HS10m() end
if SN[7] == true  then HS11m() end
if SN[8] == true  then HS12m() end
if SN[9] == true  then tc() end
    end
  GLWW=-1
end

function HS5M()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 1
      }
    })
  end
  gg.toast("开始成功")
  gg.clearResults()
end
function HS8M()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 2
      }
    })
  end
  gg.toast("如果开始失败重新开游戏")
  gg.clearResults()
end
function HS9M()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 3
      }
    })
  end
  gg.toast("如果开始失败重新开游戏")
  gg.clearResults()
end
function HS10M()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 4
      }
    })
  end
  gg.toast("如果开始失败重开游戏")
  gg.clearResults()
end
function HS11M()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 5
      }
    })
  end
  gg.toast("如果开始失败重开游戏")
  gg.clearResults()
end
function HS12M()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("60.0;-10.0;60.0;-10.0;60.0;0.5;0.5;0.5:57", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for i = 1, sl do
    dzy = jg[i].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 6
      }
    })
  end
  gg.toast("如果开始失败重开游戏")
  gg.clearResults()
end

function Main13()
SN = gg.multiChoice({
"🌿防封🌱🌿[必开]",
"🌿千米雷达[大厅]🤪[大号]",
"🌿全枪无后[大厅，进游戏无效果请开备用]🌱[大号]",
"🌿备用无后[落地]🌱🌱🌱",
"🌿开镜无后[大厅]🧐[大号][5.56]",
"🌿开镜无后[大厅]🤩[大号][7.62]",
"🌿飞行加速A[大厅]🤑[大号，进游戏无效果请开B]",
"🌿飞行加速B[大厅]😏[大号]",
"🌿锁油[上车]😳[小/号]",
"🌿五车加速[上车]🤫[小号]",
"🌿子弹全穿1[大厅]😞[可开车]",
"🌿全穿1恢复🌿",
"🌿子弹全穿2[大厅]😊[不可开车]",
"🌿全穿2恢复🌿",
"🌿子弹全穿3[大厅]😞[可开车]",
"🌿全穿3恢复🌿",
"🌿全图除草[落地]😟[小号]",
"🌿实体变大[大厅]😠[小号]",
"🌿爬墙爬树[落地]😡[小号]",
"🌿人物穿墙[落地]😨[小号]",
"🌿秒换弹药[落地]😱[小号]",
"🌿拾取扩大[落地]🤤[小号]",
"🌿开枪加速[落地]😡[小号]",
"🌿持枪加速[落地]🤥[小号]",
"🌿零秒打药[落地]🤒[小号]",
"🌿人物天线[必须出生岛开启]😒[小号]",
"🌿人称路飞[大厅开]😇[小号]",
"🌿人物微跳[落地]😒[小号]",
"🌱无限手雷[待更新]😚[小号]",
"🌱手雷秒炸[🌿🌿]😛]小号]",
"🌿通用透视1[靶场]😊[大/小/号/可用]",
"🌿通用透视2[靶场]😒[大/小/号/可用]",
"🌿近身透视[靶场]🤭[大/小/号/可用]",
"🌿845透视[靶场]😒[大/小/号/可用]",
"🌿835透视[靶场]🤒[大/小/号/可用]",
"🌿等待添加[落地]🤒[]",
"🌿等待添加[落地]🤒[]",
"🌿地面透视[靶场]😰[小号]",
"🌿M4自瞄[持枪]😦[小号]",
"🌿AK自瞄[持枪]🤤[小号]",
"🌿98k自瞄[持枪]🤥[小号]",
"🌿人物白色[落地]😧[小号]",
"🌿人物蓝色[落地待修复]😧[小号]",
"🌿人物红色[落地待修复]😧[小号]",
"🌿旧版遁地[落地]😦[小号]",
"🌿返回上一页"}, 
nil,"殴打人 吃鸡吧")
if SN == nil then else
if SN[1] == true then ca1() end
if SN[2] == true then ca2() end
if SN[3] == true then ca3() end
if SN[4] == true then ca4() end
if SN[5] == true then ca5() end
if SN[6] == true then ca6() end
if SN[7] == true then ca7() end
if SN[8] == true then ca8() end
if SN[9] == true then ca9() end
if SN[10] == true then ca10() end
if SN[11] == true then ca11() end
if SN[12] == true then ca12() end
if SN[13] == true then ca13() end
if SN[14] == true then ca14() end
if SN[15] == true then ca15() end
if SN[16] == true then ca16() end
if SN[17] == true then ca17() end
if SN[18] == true then ca18() end
if SN[19] == true then ca19() end
if SN[20] == true then ca20() end
if SN[21] == true then ca21() end
if SN[22] == true then ca22() end
if SN[23] == true then ca23() end
if SN[24] == true then ca24() end
if SN[25] == true then ca25() end
if SN[26] == true then ca26() end
if SN[27] == true then ca27() end
if SN[28] == true then ca28() end
if SN[29] == true then ca29() end
if SN[30] == true then ca38() end
if SN[31] == true then ca31() end
if SN[32] == true then ca32() end
if SN[33] == true then ca33() end
if SN[34] == true then ca34() end
if SN[35] == true then ca35() end
if SN[36] == true then ca36() end
if SN[37] == true then ca37() end
if SN[38] == true then ca38() end
if SN[39] == true then ca39() end
if SN[40] == true then ca40() end
if SN[41] == true then ca41() end
if SN[42] == true then ca42() end
if SN[43] == true then ca43() end
if SN[44] == true then ca44() end
if SN[45] == true then ca45() end
if SN[46] == true then tc() end
end
GLWW=-1
end

function ca1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("1D;3.5E;0.5E;0.1E;0.9E::69", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_DOUBLE, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_DOUBLE)
gg.toast("防封开启成功🍁")
gg.clearResults() 
end





function ca2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("1.0e-323;220;30;200::100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("30", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("1200", gg.TYPE_DOUBLE)
gg.toast("千米雷达开启成功🍁")
gg.clearResults() 
end






function ca3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("10;700;1;3.5;200::",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("700",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('99999',gg.TYPE_DOUBLE)
gg.toast("全枪无后开启成功🍁")
gg.clearResults() 
end





function ca4()
gg.clearResults()
 gg.alert('全枪无后没效果，请开备用无后')
gg.setRanges(4)
SH_searchNumber("700E;1.8E;4.18359375F::",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("700",gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('99999',gg.TYPE_DOUBLE)
gg.toast("备用无后开启成功🎋")
end





function ca5()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("9D;16D;2.7;1.8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2.7;1.8", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("5.56步枪开镜无后成功🍁")
gg.clearResults() 
end



function ca6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("2.3;2.2;1.7;0.0159;-0.0792;-0.0787:512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2.3;2.2;1.7", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("7.62开镜无后开启成功🍁")
gg.clearResults() 
end



function ca7()
gg.clearResults()
 gg.alert('限制2700米，A版不成功🍁请执行B版')
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
SH_searchNumber("1;0.5;-0.5;1D;0.4::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() ==0 then
  gg.toast("飞行加速A版本开启失败")
else
SH_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("200", gg.TYPE_DOUBLE)
gg.toast("飞行加速A版本开启成功🍁")
gg.clearResults() 
end
end





function ca8()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS+gg.REGION_C_HEAP)
SH_searchNumber("-0.1;0.6;0.4::100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() ==0 then
  gg.toast("飞行加速B版本开启失败")
else
SH_searchNumber("-0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("200", gg.TYPE_DOUBLE)
gg.toast("飞行加速B版本开启成功🍁")
gg.clearResults() 
end
end







function ca9()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
SH_searchNumber('-1;1,065,353,216D;1;5;4::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() ==0 then
gg.toast("汽车锁油开启失败")
else
SH_searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1) 
gg.editAll('0.001', gg.TYPE_FLOAT) 
gg.toast("汽车锁油开启成功🍁")
gg.clearResults()
end
end



function ca10()
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber('18;23;1.0;0.2;-0.56::', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1) 
gg.editAll('8', gg.TYPE_DOUBLE) 
gg.clearResults() 
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("1.5;10;20;7::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("8", gg.TYPE_DOUBLE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("-0.22;2;60::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10", gg.TYPE_DOUBLE)
gg.toast("五车加速开启成功🍁")
gg.clearResults()
end





function ca11()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
SH_searchNumber('1D;16,842,752D;257D;2.350989e-38F::53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('2.350989e-38', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast("子弹全穿开启成功🍁")
gg.clearResults() 
end




function ca12()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
SH_searchNumber('1D;16,842,752D;257D;0F::53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll('2.350989e-38', gg.TYPE_FLOAT)
gg.toast("全穿1恢复成功🍁")
gg.clearResults() 
end





function ca13()
gg.clearResults()
gg.setRanges( gg.REGION_CODE_APP)
SH_searchNumber("4.5208316e-38;0.0001::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("子弹全穿2开启成功🌵")
gg.clearResults()
end





function ca14()
gg.setRanges( gg.REGION_CODE_APP)
SH_searchNumber("4.5208316e-38;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.0001", gg.TYPE_FLOAT)
gg.toast("全穿2恢复开启成功🌴")
gg.clearResults()
end





function ca15()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.57;1.8;0.05;0.1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DOUBLE)
gg.toast("子弹全穿3开启成功🌱")
gg.clearResults()
end





function ca16()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.57;1.8;0.05;99999::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("99999", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.1", gg.TYPE_DOUBLE)
gg.toast("全穿3恢复成功🌿")
gg.clearResults()
end





function ca17()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("10D;5,126D;3D;11D;32D;4D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(12)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("除草开启成功🍁")
gg.clearResults() 
end




function ca18()
gg.clearResults()
gg.alert('开启成功后🍁请退出脚本手动修改数值1，改为1.2至3')
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("0.4E;0F;1.875F;1E;1.875F;1.75F;1.75F::69", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
a=gg.getResults(1)
print("addListItems: ", gg.addListItems(a))
gg.toast("实体变大需退出脚本手动修改☘")
gg.clearResults()
end





function ca19()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
SH_searchNumber('4.9e-324E;0.00999999978;0.20000000298;65536D;1.0e-323E;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 if gg.getResultCount() ==0 then
  gg.toast("爬树爬墙开启失败")
else
SH_searchNumber('0.20000000298', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll('20', gg.TYPE_FLOAT)
gg.toast('爬树爬墙开启成功🍁')
gg.clearResults() 
end
end





function ca20()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
SH_searchNumber("0.00392158423;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("穿墙开启失败")
else
SH_searchNumber("0.00392158423;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("人物穿墙开启成功🍁")
gg.clearResults()
end
end





function ca21()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("-0.2015;1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("3", gg.TYPE_DOUBLE)
gg.toast("步枪秒换弹匣开启成功🍁")
gg.clearResults() 
end






function ca22()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP+gg.REGION_C_ALLOC)
SH_searchNumber('5D;0E;1F;2E;2F::50',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3)
gg.editAll('5.8', gg.TYPE_FLOAT)
gg.toast("拾取扩大开启成功🍁")
gg.clearResults() 
end





function ca23()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("7;3.5;5.0;1.6::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("6.5", gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast("开枪加速开启成功🍁")
gg.clearResults() 
end





function ca24()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("4.4;2.1;7.0;6.25;3.5::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("6.25", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("7.1", gg.TYPE_DOUBLE)
gg.toast("持枪加速开启成功🍁")
gg.clearResults() 
end





function ca25()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC + gg.REGION_ANONYMOUS)
SH_searchNumber("14;12;4;8;20;6;10;2;3;1::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("8;6;10;3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DOUBLE)
gg.toast("秒药开启成功🍁")
gg.clearResults() 
end





function ca26()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.99886602163;-0.04760599881;1.0;0.04760599881;0.99886602163;-0.02063599974;0.00770800002;1.0;0.99972999096;0.02321900055::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("天线开启成功🍁")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.02609699965;-0.00132599997;0.01718400046;-0.00394200021;1.0;0.99981898069;0.01902900077::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("天线开启成功🍁")
gg.clearResults()
end




function ca27()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.284E;-0.12E;0.924E;1.0E:97", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.924", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("6", gg.TYPE_DOUBLE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("0.284E;-0.12E;1.484E:65", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.484", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("6", gg.TYPE_DOUBLE)
gg.toast("开镜路飞开启成功🍃")
gg.clearResults()
end






function ca28()
gg.clearResults()
  gg.alert("人物微跳请配合防摔")
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("2.5;1.25;-5.0;40;3;0.75::",gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("3",gg.TYPE_DOUBLE,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1)
gg.editAll("4.7",gg.TYPE_DOUBLE)
gg.toast("人物微跳开启成功🌾")
gg.clearResults() 
end





function ca29()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("50.0E;0.5E;0.7E;1.5E;0.1E;0.15E;0.099E:209", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_DOUBLE)
gg.toast("无限手雷开启成功🎋")
gg.clearResults()
end





function ca30()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("5.0E;20.0E;40.0E;6.0E:49", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("6", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.001", gg.TYPE_DOUBLE)
gg.clearResults()
gg.toast("手雷秒炸开启成功🍃")
gg.clearResults()
end




------------------------------------------------分割线






function ca31()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("4D;24,581.5;1.1290354e-19;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("17D;3.2229865e-44;2.2420775e-44;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("1.1096132e-19;2;5.6051939e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("3.7615819e-37;1.6623683e-19;853D;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("通用透视1开启成功🍂")
gg.clearResults()
end






function ca32()
gg.clearResults()
gg.alert("效果不好请搭配近身透视")
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("2.015625;3.87548828125;3.75;2.0;-1;0.75;0.24899999797;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("通用透视2开启成功🍁🍁")
gg.clearResults()
end





function ca33()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("2.015625;3.87548828125;3.75;2.0;-1;0.75;0.24899999797;0.99900001287::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("40", gg.TYPE_FLOAT)
gg.toast("近身透视开启成功🍁")
gg.clearResults() 
end





function ca34()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("2.015625;3.75;3.875;2.0;-1;0.99900001287::",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("11,266.75;24,581.5;2.0;1.6623024e-19;3.87506604195::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2.0", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("845透视开启成功🍁")
gg.clearResults() 
end





function ca35()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("4,923D;853D;2F::150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("50", gg.TYPE_FLOAT)
gg.toast("透视中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber('103,240D;2F::150',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
SH_searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(20)
gg.editAll('50', gg.TYPE_FLOAT)
gg.toast("835透视开启成功🍁")
gg.clearResults()
end





function ca36()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("透视中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber('',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
SH_searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults()
gg.editAll('', gg.TYPE_FLOAT)
gg.toast("透视开启成功🍁")
gg.clearResults()
end





function ca37()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("", gg.TYPE_FLOAT)
gg.toast("透视中")
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
SH_searchNumber('2',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0,-1)
gg.getResults()
gg.editAll('', gg.TYPE_FLOAT)
gg.toast("透视开启成功🍁")
gg.clearResults()
end





function ca38()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("1.3912516e-19F;1.088438e-19F;1.0649868e-43F;2.0F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("3.75000739098;3.75;1.3912526e-19;2.0;-1.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("地面透视开启成功🍁")
gg.clearResults() 
end




function ca39()
gg.clearResults()  
  gg.alert("提示：开启自瞄必须开辅助瞄准，捡去对应的枪后开始执行功能，开启成功以后扔掉枪从新捡起来完成")
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
SH_searchNumber("0.35E;1.67499995232;4.4E::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("1.67499995232", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("m4自瞄开启成功🍁")
gg.clearResults() 
end




function ca40()
gg.clearResults()
  gg.alert("提示：开启自瞄必须开辅助瞄准，捡去对应的枪后开始执行功能，开启成功以后扔掉枪从新捡起来完成")
gg.setRanges(gg.REGION_C_ALLOC+gg.REGION_ANONYMOUS)
SH_searchNumber("2D;3.3125;11D;1.64999997616::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("1.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("AK自瞄开启成功🍁")
gg.clearResults()
end



function cxm()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("自瞄成功开启")
end

function F1()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.0001;360.0;0.0;1,478,828,416.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("自瞄成功开启")
end

function ca41()
gg.clearResults()
  gg.alert("提示：开启自瞄必须开辅助瞄准，捡去对应的枪后开始执行功能，开启成功以后扔掉枪从新捡起来完成")
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber("2.720083e23F;1.67499995232;4.2038954e-45F:",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber("1.67499995232",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(50)
gg.editAll("99999",gg.TYPE_FLOAT)
gg.toast("98k自瞄开启成功🍁")
gg.clearResults() 
end




function ca42()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
SH_searchNumber("4923D;-1;0.99900001287::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SH_searchNumber("0.99900001287", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("人物白色开启成功🍁")
gg.clearResults()
end






function ca43()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,063,562,900;1,061,882,180;1,084,227,584;1,052,329,640;1,053,193,859::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,084,227,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(1)
if jg[1] == nil then
gg.toast("开启失败")
else
dzy=jg[1].address
dz=jg[1].address+36
--十进制转到十六进制
yz16=string.format("%#X",dzy)
z16=string.format("%#X",dz)
gg.clearResults()
gg.searchAddress(z16 , -1 , gg.TYPE_DWORD , gg.SIGN_EQUAL , 0 , -1)
gg.getResults(1)
gg.editAll("1,203,982,208", gg.TYPE_DWORD)
gg.toast("人物蓝色成功")
dzy=jg[1].address
dz=jg[1].address+32
--十进制转到十六进制
yz16=string.format("%#X",dzy)
z16=string.format("%#X",dz)
gg.clearResults()
gg.searchAddress(z16 , -1 , gg.TYPE_DWORD , gg.SIGN_EQUAL , 0 , -1)
gg.getResults(1)
gg.editAll("1,203,982,208", gg.TYPE_DWORD)
gg.toast("人物蓝色开启成功😛")
end
end




function ca44()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,063,562,900;1,061,882,180;1,084,227,584;1,052,329,640;1,053,193,859::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,084,227,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(1)
if jg[1]== nil then
gg.toast("开启失败")
else
dzy=jg[1].address
dz=jg[1].address+28
--十进制转到十六进制
yz16=string.format("%#X",dzy)
z16=string.format("%#X",dz)
gg.clearResults()
gg.searchAddress(z16 , -1 , gg.TYPE_DWORD , gg.SIGN_EQUAL , 0 , -1)
gg.getResults(1)
gg.editAll("1,203,982,208", gg.TYPE_DWORD)
gg.toast("人物红色开启成功😭")
end
end





function ca45()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
SH_searchNumber('4.9e-324E;1,060,439,284D;1; 0.00999999978;0.70710682869;0.0078125E;1,065,353,216D::330',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
SH_searchNumber('1',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("3", gg.TYPE_FLOAT)
b=gg.getResults(3)
print("addListItems: ", gg.addListItems(b))
gg.toast('遁地开启成功可手动调节高度🌱')
gg.clearResults()
end

function Main14()
A1 = gg.multiChoice({"地图透视",
                                "全局加速x2",
                                   "13倍加速",
                                   "定怪",
                                  "火箭筒加速",
                                   "倒地不死＋加速",
                                   "采集加速",
                                  "男女角色低配无敌",
                                  "全近战加速",
                                   "返回",
                         },nil,"废土\n行动")
if A1 == nil then else 
if A1[1]==true then aB() end
if A1[2]==true then bB() end
if A1[3]==true then cB() end
if A1[4]==true then dB() end
if A1[5]==true then eB() end
if A1[6]==true then fB() end
if A1[7]==true then gB() end
if A1[8]==true then hB() end
if A1[9]==true then iB() end
if A1[10]==true then tc() end
end
GLWW=-1
end

function aB()
gg.setRanges(gg.REGION_C_ALLOC)
	 gg.clearResults()
	  gg.searchNumber("420D;128D;120D;.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("地图透视第一步修改成功")
	 gg.clearResults()
	 gg.searchNumber(".5;380D;137D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("地图透视第二步成功")
end

function bB()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1;50;0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("两倍加速修改成功")
end



function cB()
gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.clearResults()
	 gg.searchNumber("5~20;100;1084227584D~1086324736D;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5~20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(10)
	 gg.editAll("13", gg.TYPE_FLOAT)
	 gg.toast("角色加速")
end

function dB()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.9;1184D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("9", gg.TYPE_FLOAT)
gg.toast("定怪修改成功")
end

function eB()
gg.clearResults(gg.REGION_ANONYMOUS) 
gg.searchNumber("3445d;1f;0.1f::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10) 
gg.editAll('0.2', gg.TYPE_FLOAT) 
gg.toast('火箭筒加速')
end

function fB()
gg.clearResults(gg.REGION_ANONYMOUS) 
gg.searchNumber("2.5;20;2;25::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('20;25', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10) 
gg.editAll('999', gg.TYPE_FLOAT) 
gg.clearResults()
gg.searchNumber("2.5;999;2;999::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('2.5;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10) 
gg.editAll('20', gg.TYPE_FLOAT) 
gg.toast('倒地不死')
end

function gB()
	 gg.clearResults(gg.REGION_ANONYMOUS) 
	 gg.setRanges(32)
	 gg.searchNumber("1D;1.25;1.2;.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.8", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.searchNumber("1D;0.95;1056964608D::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.toast("采集加速")
end

function hB()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.5;0.2;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9", gg.TYPE_FLOAT)
gg.toast("低配无敌修改成功")
end






function iB()
gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.clearResults()
	 gg.searchNumber("3106d;1;0.5;3105d::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".4", gg.TYPE_FLOAT)
		 gg.clearResults()
	 gg.searchNumber("3105d;1;0.5;3045d::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".4", gg.TYPE_FLOAT)
	 gg.clearResults()
	 gg.searchNumber("3035d;0.625;0.5;3030d;0.625;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.625", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".3", gg.TYPE_FLOAT)
			 gg.clearResults()
	 gg.searchNumber("3045d;0.769;0.5;3005d;0.769;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.769", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".3", gg.TYPE_FLOAT)
			 gg.clearResults()
	 gg.searchNumber("3006d;0.769;0.5;3005d;0.769;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.769", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(".3", gg.TYPE_FLOAT)
end


function  Main15()
ts = gg.multiChoice({
  "全车加速(部分无效)",
  "引擎加速",
  "无限氮气",
  "无限小喷",
  "穿墙",
  "刹车锁码",
  "返回上一页"
}, nil, "QQ飞车NB挂")
if ts == nil then
else
  if ts[1] == true then
    aS()
  end
  if ts[2] == true then
    bS()
  end
  if ts[3] == true then
    cS()
  end
  if ts[4] == true then
    dS()
  end
  if ts[5] == true then
    eS()
  end
  if ts[6] == true then
    fS()
  end
  if ts[7] == true then
    tc()
  end
  GLWW = -1
end
end
function  aS()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("20D;248D;0;95D;416D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("98", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(os.date("现在奔放时间为:\n%Y年%m月%d日%H时%M分%S秒"))
end
--------Function4882--------
function  bS()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.toast("引擎加速开启成功")
gg.clearResults()
end
--------Function4883--------
function  cS()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("19.40000152588;4.40000009537;0;256D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.00001", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("无限氮气已开启")
end
--------Function4884--------
function  dS()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2D;50;1.4;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("无限小喷已开启")
end
--------Function4885--------
function  eS()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2D;-2.0009167;1E-45~3.4E38;1;1;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("穿墙开启成功")
gg.clearResults()
end
--------Function4886--------
function  fS()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1;-0.10000000149;1000::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("刹车锁码开启成功")
gg.clearResults()
end


function tc()
lw=1
Main()
end

function kl()
  print("退出成功 手机のdata开始消失👀")
  os.exit()
end

cs = "T.n"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end









