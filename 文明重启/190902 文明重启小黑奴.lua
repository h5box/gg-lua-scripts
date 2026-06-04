
function Main()
  SN = gg.choice({
  "人物踏空🔰",
  "关闭踏空🔰",
  "枪械无后🔰",
  "人物天线🔰",
  "关闭天线🔰",
  "贴墙透视⭕",
  "透视恢复❌",
  "中距离透视⭕",
  "恢复中透视❌",
  "远距离透视⭕",
  "恢复远透视❌",
  "人物微加速🔰",
  "微加速恢复🔰",
  "碰瓷版加速😂",
  "碰瓷加速恢复",
  "水下行走🔰",
  "关闭水下行走",
  "另类人物穿墙",
  "退出脚本"
 }, nil, "灭帝提示:开启无后座功能不要安装枪托和倍镜，更换房屋透视距离时请恢复上一个您选择的透视距离，人物穿墙只能穿地基，基你太美")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   g()
  end
  if SN == 8 then
   h()
  end
  if SN == 9 then
   i()
  end
  if SN == 10 then
   j()
  end
  if SN == 11 then
   k()
  end
  if SN == 12 then
   l()
  end
  if SN == 13 then
   m()
  end
  if SN == 14 then
   n()
  end
  if SN == 15 then
   o()
  end
  if SN == 16 then
   p()
  end
  if SN == 17 then
   q()
  end
  if SN == 18 then
   i()
   end
  if SN == 19 then
   Exit()
  end
  XGCK = -1
end
function a()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.05000000075;2.9203751e-31;5.1414089e-39",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.05", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("踏空已开启")
end
function b()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0;2.9203751e-31;5.1414089e-39", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.05",gg.TYPE_FLOAT)
gg.toast("踏空已关闭")
end
function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.60000002384;0.5;43.0;238.0;100;", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("SMG冲锋枪无后座开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.30000001192;0.20000000298;25.0;65.0;238.0;625.0", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.3;0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("FAMAS改装枪无后开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("480;0.20000000298;1;0.60000002384;526::512", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.20000000298;1;0.60000002384", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("ak无后开启成功")
end
function d()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.0;2.0;-2.9687729e21;-1.5474e26;-3.96605e21;-4.57487e22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("3",gg.TYPE_FLOAT)
gg.toast("天线已开启，Ts:持枪开镜方便观察")
end
function e()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3;2.0;-2.9687729e21;-1.5474e26;-3.96605e21;-4.57487e22", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("天线已关闭")
end
function f()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("贴墙透视开启")
end
function g()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;10::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.2",gg.TYPE_FLOAT)
gg.toast("贴墙透视关闭")
end
function h()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("30",gg.TYPE_FLOAT)
gg.toast("中距离透视开启")
end
function i()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;30::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("30", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.2",gg.TYPE_FLOAT)
gg.toast("中距离透视关闭")
end
function j()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;0.2::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("80",gg.TYPE_FLOAT)
gg.toast("远距离透视开启")
end
function k()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-40;80;-360;360;56;131072E;8;80::90", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("80", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0.2",gg.TYPE_FLOAT)
gg.toast("远距离透视关闭")
end
function l()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6.3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("7.555",gg.TYPE_FLOAT)
gg.toast("微加速已开启")
end
function m()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("7.555", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6.3",gg.TYPE_FLOAT)
gg.toast("微加速已关闭")
end
function n()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("5.0;6.30000019073", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6.3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("14.55",gg.TYPE_FLOAT)
gg.toast("高速已开启")
end
function o()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("5.0;14.55", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("14.55", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("6.3",gg.TYPE_FLOAT)
gg.toast("高速已关闭")
end
function p()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;150.0F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("150", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("水下行走已开启")
gg.clearResults()
end
function q()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1.29999995232F;0.20000000298F;10.0F;-100.0F;-999F::105", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("150", gg.TYPE_FLOAT)
gg.toast("水下行走已关闭")
gg.clearResults()
end
function i()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("-1.0e32;999.0;0.39999997616;1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.0e32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 8}})
end
gg.toast("穿墙已开启")
gg.clearResults()
end


function Exit()
print("灭帝提示:欢迎下次使用~")
os.exit()
end
cs = "灭帝"



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