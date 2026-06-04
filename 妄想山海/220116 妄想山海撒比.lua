SM=[[
QQ：2132888460
这是交流群：1121964570

感谢各位憨憨对传送门的支持
不过这路到头了，天下没有不散的宴席
传送门2.8是最香的一个版本
也是最后一个版本，树大招风，迟早吹断了枝条树干

脚本写得不好别笑话我
作为一个啥也不懂的小白能走到这步我也满足了

往后我会陆续发一些脚本源码，花了钱买卡密的我深感抱歉，永久卡可以进徒弟群。

下面就是传送门2.8源码了，卡密删了。
可以倒卖
可以二改
我知道这是传统
]]

function CSM(C,S,M)if M~=nil then if C==nil then gg.toast(M..'开启失败\n原因：无主特种码-前等游戏完全启动在启动脚本')elseif C==false then gg.toast(M..'开启失败\n原因：无副特征码-前等游戏完全启动在启动脚本')else local x,d={},{}for i=1,#C do for k,w in ipairs(S)do local t={}t['address']=C[i]+w[1]*4 t['flags']=w[2]t['value']=w[3]if(w[4]==true)then t['freeze']=true d[#d+1]=t else x[#x+1]=t end end end gg.setValues(x)gg.addListItems(d)gg.toast(M..'\n开启成功')end elseif S~=nil then gg.clearResults()gg.setRanges(C[1])gg.searchNumber(C[2],C[3],false,gg.SIGN_EQUAL,C[4],C[5],C[6])local SL=gg.getResultCount()local SS=gg.getResults(SL)gg.clearResults()local DZ={}if(SL>0)then for i,v in ipairs(SS)do v.isUseful=true end for k=1,#S do local tmp={}local num=S[k][2]for i,v in ipairs(SS)do tmp[#tmp+1]={}tmp[#tmp].address=v.address+S[k][1]*4 tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp)for i,v in ipairs(tmp)do if (v.value~=num)then SS[i].isUseful=false end end end for i,v in ipairs(SS)do if(v.isUseful)then DZ[#DZ+1]=v.address end end if DZ[1]==nil then return false else return DZ end else return nil end end end
local function hqsj(dz,sj)local t={}for i,v in ipairs(sj)do t[i]={}t[i].address=dz+sj[i][1]*4 t[i].flags=sj[i][2]end local ss=gg.getValues(t)local s={}for i,v in ipairs(ss)do s[i]=ss[i]['value']end return s end
local function DXWJ(l,m,n)
if m==1 then
local c=io.open(l,'r')
if c==nil then
return c
else
local c=io.open(l,'r')
g=c:read('*a')
c:close()
end
return g
elseif m==2 then
local file=io.open(l,'w')
file:write(n)
file:close()
end
end

function dqzdy(l)
local jjj=DXWJ(l,1)
if jjj==nil then 
ZDYZB={}
else
local sss=DXWJ(l,1)
if load("ZDYZB="..sss)==nil then ZDYZB={}else 
load("ZDYZB="..sss)()
end
end
end


function ysgn1()
local dz=CSM({32,1053609165,4},{{-1,1036831949},{-2,1050253722},{-3,1045220557},})
CSM(dz,{{-4,16,222},},"开定怪")
end
function ysgn2()
local dz=CSM({32,1053609165,4},{{-1,1036831949},{-2,1050253722},{-3,1045220557},})
CSM(dz,{{-4,16,0.066},},"关定怪")
end
function ysgn3()
local dz=CSM({32,1097859072,4},{{-1,1065353216},{1,1065353216},})
CSM(dz,{{0,4,0},},"元素爆炸")
end
function ysgn4()
local dz=CSM({32,1084227584,4},{{-1,1084227584},{-11,1092616192},})
CSM(dz,{{0,16,999999999},{-1,16,999999999},{-11,16,999999999},},"召唤秘境")
end
function ysgn5()
local dz=CSM({32,1036928259,4},{{1,1082977991},})
CSM(dz,{{1,16,888},},"弓箭蓄力")
end
function ysgn6()
local dz=CSM({4,1869410625,4},{{-1,2044055585},{-2,-1835569039},{-3,-1728763338},{-4,-477149684},})
CSM(dz,{{87,16,0.1},{133,16,0.1},},"远程跳跃")
end
function ysgn7()
function anbo(l,j)
local dz=CSM({32,1046562734,4},{{12,1044213924},{24,1047569367},{36,1035489772},{48,1034416030},})
if type(dz)=="table"then
local s=hqsj(dz[1],{{136,4},{88,4},})
if l==1 then
CSM(dz,{{4,4,s[j]},{16,4,s[j]},{28,4,s[j]},{40,4,s[j]},{52,4,s[j]},},"安柏普攻替换")
else
CSM(dz,{{160,4,s[j]},},"安柏蓄力攻击替换")
end
else
gg.toast("开启失败")
end
end
function feixe(l)
local dz=CSM({32,1036026642,4},{{36,1041328243},{72,1034550247},{108,1032805417},{132,1032671199},})
if type(dz)=="table"then
local s=hqsj(dz[1],{{148,4},})
if l==1 then
CSM(dz,{{4,4,s[1]},{40,4,s[1]},{76,4,s[1]},{112,4,s[1]},{136,4,s[1]},},"菲谢尔普攻替换")
else
CSM(dz,{{-32,4,s[1]},},"菲谢蓄力攻击替换")
end
else
gg.toast("开启失败")
end
end
function lisha()
local dz=CSM({32,1044213924,4},{{12,1040187392},{24,1042267767},{36,1046898278},})
if type(dz)=="table"then
local s=hqsj(dz[1],{{-32,4},})
CSM(dz,{{4,4,s[1]},{16,4,s[1]},{28,4,s[1]},{40,4,s[1]},},"丽莎普攻替换")
else
gg.toast("开启失败")
end
end
function shat()
local dz=CSM({32,1041865114,4},{{24,1045220557},{36,1041865114},{48,1045690319},})
if type(dz)=="table"then
local s=hqsj(dz[1],{{-32,4},})
CSM(dz,{{4,4,s[1]},{28,4,s[1]},{40,4,s[1]},{52,4,s[1]},},"砂糖普攻替换")
else
gg.toast("开启失败")
end
end
function kaiya()
local dz=CSM({32,1061662228,4},{{12,1008981770},{24,1056964608},})
if type(dz)=="table"then
local s=hqsj(dz[1],{{4,4},})
CSM(dz,{{28,4,s[1]},},"凯亚技能替换")
else
gg.toast("开启失败")
end
end
function aine()
local dz=CSM({32,1008981770,4},{{12,1054078927},{24,981668463},})
if type(dz)=="table"then
local s=hqsj(dz[1],{{28,4},})
CSM(dz,{{4,4,s[1]},},"艾诺尔技能替换")
else
gg.toast("开启失败")
end
end
local m={
"安柏普攻换一技",
"安柏蓄力换一技",
"安柏普攻换二技",
"安柏蓄力换二技",
"菲谢尔普换二技",
"菲谢尔蓄换二技",
"丽莎普攻换二技",
"砂糖普攻换二技",
"凯亚一技换二技",
"艾诺尔一换二技",
}local 
g=gg.multiChoice(m)if g~=nil then 
if g[1]==true then anbo(1,1)end
if g[2]==true then anbo(2,1)end
if g[3]==true then anbo(1,2)end
if g[4]==true then anbo(2,2)end
if g[5]==true then feixe(1)end
if g[6]==true then feixe(2)end
if g[7]==true then lisha()end
if g[8]==true then shat()end
if g[9]==true then kaiya()end
if g[10]==true then aine()end
end
end
function ysgn8()
gg.setVisible(false)
local zb=CSM({4,1287568416,4,0,-1},{{-17,17170436},{-28,65539},{-44,65542},})
while(true)do
if gg.isVisible(true) then break else
local dzb1=hqsj(zb[1],{{-20,16},{-19,16},{-18,16},})
local dzb2=hqsj(zb[1],{{20,16},{21,16},{22,16},})
local dz=CSM({4,1287568416,4,0,-1},{{-17,17170436},})
local xzb={}
for x=1,#dz do
if dz[x]~=zb[1]then
xzb[#xzb+1]=dz[x]
end
end
CSM(xzb,{{-20,16,dzb1[1]},{-19,16,dzb1[2]},{-18,16,dzb1[3]},{20,16,dzb2[1]},{21,16,dzb2[2]},{22,16,dzb2[3]},},"吸怪")
end
end
end
function ysgn9()
gg.setVisible(false)
local zb=CSM({4,1287568416,4,0,-1},{{-17,17170436},{-28,65539},{-44,65542},})
while(true)do
if gg.isVisible(true) then break else
local dz=CSM({4,1287568416,4,0,-1},{{-17,17170436},})
local xzb={}
for x=1,#dz do
if dz[x]~=zb[1]then
xzb[#xzb+1]=dz[x]
end
end
CSM(xzb,{{-19,16,-999},{21,16,-999},},"怪物自杀")
end
end
end
function ysgn10()
local a=gg.prompt({"1就是正常速度。\n倍数："},{"1"},{number})
if a==nil then gg.toast("您取消了操作")else
local dz=CSM({4,1869410625,4,0,-1},{{-1,-1925294579},{-2,-1533814508},{-3,-243613305},{-4,1748754976},})
CSM(dz,{{4,16,a[1]},},"移速")
end
end
function ysgn11()
local fst={{1629.56;259.375;-1420.35},{1863.53;217;-1348.77},{1887.49;222.963;-1257.91},{1825.28;216.453;-1225.22},{1977.32;198.929;-1265.87},{2814.27;315.175;-1586.16},{1728.93;214.3;-1370.67},{1850.25;263.277;-695.535},{2960.87;235.141;-1805.57},{2768.47;273.949;-1192.35},{2901.72;232.1;-1105.24},{2499.37;309.426;-1635.5},{2332.3;308.129;-1765.12},{2239.23;274.572;-1560.84},{2071.52;209.34;-1264.24},{2012.04;211.61;-1400.04},{1929.38;221.654;-1106.61},{1767.46;276.693;-1029.27},{1737.39;267.271;-1108.33},{1681.79;288.56;-1122.69},{1561.51;306.446;-1182.55},{1527.6;255.539;-1385.37},{1229.65;262.573;-1489.38},{1474.19;269.719;-1610.85},{1330.1;277.083;-1695.24},{1373.52;254.486;-1570.14},{1490.74;210.024;-1923.84},{1933.21;236.394;-946.423},{1932.27;257.769;-839.416},{1996.85;244.826;-553.301},{1777.11;238.899;-403.403},{1628.25;266.608;-440.494},{1682.35;208.357;-281.315},{2310.67;248.038;-1259.54},{2091.59;253.276;-460.168},{2196.35;257.75;-419.049},{2267.55;242.151;-491.661},{2341.71;289.9;-423.025},{2387.1;286.773;-330.548},{2521.45;320.707;-351.753},{2435.02;303.192;-209.142},{2322.38;263.098;-61.7978},{2183.38;273.319;21.974},{2482.35;223.527;-424.035},{2543.45;218.657;-438.612},{2640.59;283.821;-494.363},{2638.77;260.716;-367.827},{2930.46;225.35;-34.9551},{2652.73;326.197;131.601},{2694.48;238.071;169.72},{2700.51;219.616;222.762},{2746.81;221.423;169.395},{2556.32;192.854;389.687},{2479.4;227.376;271.696},{2545.09;228.351;370.588},{2883.04;246.957;299.288},{2871.54;226.237;92.7724},{2931.12;220.81;-35.0873},{2824.05;250.055;-24.2603},{2648.39;214.467;-186.833},{2072.29;203.96;-733.525},{2652.35;225.487;-679.46},{2596.19;234.266;-722.828},{1638.05;205.93;-2666.9},{2620.41;200.846;-2401.41},{2556.32;194.854;389.687},}
local yst={{2129.24;206.206;743.447},{1893.11;206.649;829.591},{1965.47;218.123;853.795},{1946.71;253.506;622.911},{1852.51;234.482;726.593},{1741.35;230.037;873.979},{1707.64;258.877;765.16},{1829.87;252.739;461.228},{1792.88;242.4;541.968},{1718.35;261.725;580.258},{1780.85;238.926;684.265},{1611.9;204.33;892.315},{1511.81;219.822;786.584},{1537.12;248.828;749.676},{1476.22;250.149;454.016},{1409.2;223.914;467.501},{1552.27;282.583;367.186},{1677.36;415.839;518.395},{1685.38;309.463;431.295},{1595.22;325.931;605.993},{1509.43;225.385;585.935},{1453.77;219.095;626.9},{1357.12;220.152;642.834},{1303.93;212.895;446.837},{1436.38;199.863;371.584},{1575.98;237.358;196.089},{1366.79;210.105;298.706},{1278.03;207.835;202.012},{1237.58;218.38;354.651},{1071.24;241.832;428.744},{1139.12;216.289;578.907},{896.889;287.627;338.169},{901.605;243.098;365.518},{830.937;205.791;271.922},{947.286;230.37;162.835},{1218.27;204.482;-136.756},{949.206;278.75;-236.036},{883.695;246.312;-142.344},{822.846;219.563;-84.6693},{846.08;308.938;-240.96},{743.13;256.107;-280.944},{749.395;289.266;-77.8643},{656.924;203.752;21.8838},{595.298;305.52;-272.542},{570.274;238.475;-222.566},{675.832;245.996;-451.782},{622.737;227.643;-503.301},{482.117;206.872;-455.038},{457.075;258.496;-418.452},{371.138;225.073;-192.686},{398.336;218.531;-759.716},{538.713;205.214;69.3137},{453.901;235.842;477.284},{277.839;232.61;465.246},{29.4497;286.345;220.462},{-123.62;310.583;244.981},{-215.419;432.992;464.597},{-172.659;512.931;334.781},{332.818;235.595;214.18},{276.496;216.468;212.267},{237.216;262.618;136.75},{-61.3243;276.895;-27.5289},{52.3725;206.912;-154.22},{126.409;297.035;334.095},{273.035;211.838;-106.488},{-123.455;205.193;-565.688},{-105.573;241.717;-905.672},{-212.162;321.845;-1017.45},{-398.979;275.113;-1138.99},{-346.773;262.457;-740.318},{-635.401;228.546;-163.346},{-678.584;286.627;547.211},{-753.631;221.733;509.168},{-408.774;428.31;590.745},{-514.848;367.562;614.248},{-426.915;275.035;642.652},{-581.732;265.678;698.293},{-496.866;188.197;878.639},{-843.725;205.352;786.002},{-840.907;199.613;937.702},{-875.292;219.485;1270.45},{-651.687;240.05;1279.85},{-546.201;185.967;1095.05},{-513.66;248.36;1281.06},{-344.76;239.156;1149.01},{-251.346;269.836;1239.18},{-157.808;221.986;1037.59},{-158.929;207.179;896.047},{-171.704;162.043;945.867},{156.281;236.9;1433.32},{290.533;205.412;1447.36},{109.217;209.004;724.645},{336.959;313.303;727.979},{404.251;209.54;813.666},{662.669;442.173;1844.42},{675.84;383.948;1789.62},{745.784;326.691;1753.15},{772.004;283.517;1849.81},{720.551;322.346;1682.86},{718.982;243.286;1659.96},{838.598;543.919;1426.33},{886.743;337.244;1536.57},{891.414;318.2;1609.98},{982.421;303.541;1619.63},{951.006;396.488;1645.9},{957.953;355.004;1748.49},{624.167;283.588;1391.38},{747.295;226.087;1307.56},{731.741;137.071;1291.71},{649.887;209.381;1258.01},{733.009;155.692;1210.82},{563.19;190.47;1172.23},{639.266;306.483;1071.37},{639.009;226.12;867.37},{771.086;270.58;943.151},{889.375;211.321;541.147},{831.787;212.78;655.742},{740.406;232.076;679.964},{769.823;213.396;512.9},{1103.71;240.431;1639.08},{1237.14;350.827;1589.08},{1219.2;306.239;1294.42},{1016.64;364.014;1201.71},{947.499;276.788;1231.96},{987.923;270.359;1319.81},{1393.76;237.096;1245.05},{1442.73;256.043;1296.82},{1607.23;209.242;1142.69},{1344.95;215.238;952.81},{1404.53;214.903;1021.97},{1149.97;218.394;905.996},}
local hlb={{2246.98;266.271;-751.247},{2372.9;301.361;-649.704},{2959.75;201.604;-1426.53},{2688.69;196.41;-1786.62},{2632.87;194.556;-2377.11},{1876.53;207.009;-116.823},{1386.91;236.124;-1557.72},{327.815;216.784;286.204},{1495.2;221.482;580.372},{1678.76;407.169;515.946},{391.486;204.085;-748.694},{-714.622;231.05;82.4413},{2652.31;326.918;131.097},{834.475;544.445;1426.58},{-174.86;191.816;894.472},{-874.031;206.313;1270.42},{-489.565;239.162;1274.86},{157.356;194.026;1399.59},{-649.473;213.241;-183.554},{-376.268;242.35;-1157.12},{61.3811;212.578;744.813},{-352.425;202.432;-704.95},{2337.32;298.611;-114.736},{-169.532;496.898;325.316},}
local GN2=gg.multiChoice({
"风神瞳",
"岩神瞳",
"华丽宝箱",})
if GN2~=nil then
if GN2[1]==true then DZ=CSM({4,1287568416,4,0,-1},{{-17,17170436},{-28,65539},{-44,65542},})if type(DZ)=="table"then sy(fst,"风神瞳")else gg.alert("初始化失败")end end
if GN2[2]==true then DZ=CSM({4,1287568416,4,0,-1},{{-17,17170436},{-28,65539},{-44,65542},})if type(DZ)=="table"then sy(yst,"岩神瞳")else gg.alert("初始化失败")end end
if GN2[3]==true then DZ=CSM({4,1287568416,4,0,-1},{{-17,17170436},{-28,65539},{-44,65542},})if type(DZ)=="table"then sy(hlb,"华丽宝箱")else gg.alert("初始化失败")end end
end
end
function sy(a,m)
local dge=CSM({4,1869410625,4,0,-1},{{-1,2044055585},{-2,-720615644},{-3,-2132451401},{-4,125937960},})
CSM(dge,{{4,16,0},},"开定格")
local jl=0
while true do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
if XGCK==1 then
if jl==0 then lt="无"else lt=jl end
local ts=gg.alert("跳跃定格开启了，站着不动跳一下，就会进入定格状态(防摔)。"..m.."共有"..#a.."个坐标，您在坐标"..lt,"下一个坐标","手动选择","结束")
if ts==1 then if a[jl+1]==nil then gg.alert("无此坐标")else jl=jl+1 CSM(DZ,{{-20,16,a[jl][1]},{-19,16,a[jl][2]+8},{-18,16,a[jl][3]},},"坐标修改")end end
if ts==2 then 
local s=gg.prompt({"共有"..#a.."个坐标，输入您想去的坐标。"},{jl},{number})
if s==nil then gg.toast("您取消了操作")else
if a[(s[1])*1]==nil then gg.alert("无此坐标")else
jl=(s[1])*1 CSM(DZ,{{-20,16,a[jl][1]},{-19,16,a[jl][2]+8},{-18,16,a[jl][3]},},"坐标修改")
end
end
end
if ts==3 then
CSM(dge,{{4,16,1},},"关定格")
break end
XGCK=-1
end
end
end
function ys()
local m={
"1.开定怪",
"2.关定怪",
"3.元素爆炸",
"4.召唤秘境",
"5.弓箭蓄力",
"6.远程跳跃",
"7.技能替换",
"8.吸怪聚怪",
"9.怪物自杀",
"10.自定移速(自测)",
"11.瞬移系列(自测)",
"退出脚本"
}local g=gg.multiChoice(m,nil,DQSJ)
if g~=nil then 
if g[#m]==true then os.exit()else 
if g[1]==true then ysgn1()end
if g[2]==true then ysgn2()end
if g[3]==true then ysgn3()end
if g[4]==true then ysgn4()end
if g[5]==true then ysgn5()end
if g[6]==true then ysgn6()end
if g[7]==true then ysgn7()end
if g[8]==true then ysgn8()end
if g[9]==true then ysgn9()end
if g[10]==true then ysgn10()end
if g[11]==true then ysgn11()end
end 
end 
kg=-1 
end
function YS()
while(true)do if gg.isVisible(true)then 
kg=1 gg.setVisible(false)end if 
kg==1 then 
ys()
end end
end

local wxzdy="/sdcard/Android/csmwxzdy"
dqzdy(wxzdy)
function wxgn1()
function FF()
local DZ=CSM({16,16384,4},{{12,16384},{22,16384},{36,16384},{48,16384},{60,16384},{72,16384},{82,16384},{96,16384},{108,16384},{120,16384},})
CSM(DZ,{{0,4,65538,true},{12,4,70012,true},{22,4,65538,true},{36,4,70012,true},{48,4,70012,true},{60,4,70012,true},{72,4,70012,true},{82,4,70012,true},{96,4,70012,true},{108,4,70012,true},{120,4,70012,true},},"防封")
return DZ
end
function SQ(nc)
local DZ=CSM({nc,1134034944,4},{{1,1065353216},{-1,1140457472},{-2,1121714176},})
return DZ
end
function YS(nc)
local DZ=CSM({nc,1085276160,4},{{-2,1082130432},{-4,1073741824},{-6,1069547520},{-7,1112014848},{2,1065353216},{4,1073741824},{6,1092616192},{7,1112014848},{8,1120403456},{9,1082130432},{10,1082130432},{11,1086324736},{12,1065353216},{13,1073741824},{14,1077936128},{15,1067869798},{16,1082130432},})
return DZ
end
if type(FF())=="table"then
WXNC=4
c1=YS(WXNC)
c2=SQ(WXNC)
if type(c1)~="table"or type(c2)~="table"then
WXNC=32
gg.toast("切换云手机模式")
c1=YS(WXNC)
c2=SQ(WXNC)
end
if type(c1)~="table"or type(c2)~="table"then
gg.alert("获取状态信息失败，部分功能将无法正常运行。前等游戏完全启动在启动脚本")
end
gg.alert("防封开启成功，请勿切换应用，否则游戏会卡死。")
else
gg.alert("防封开启失败了！请退出游戏，否则进入地图会封的！")
end
end
function wxgn2()
local bs=gg.choice({"1倍","20倍","30倍","60倍"},nil,"脸黑别开！全局加速虚拟机无法使用！眼瞎不看群公告别瞎BB，傻逼行为！")
if bs~=nil then
if bs==1 then gg.setSpeed(1)end
if bs==2 then gg.setSpeed(20)end
if bs==3 then gg.setSpeed(30)end
if bs==4 then gg.setSpeed(60)end
end
end
function wxgn3()
local qpc=CSM({WXNC,1109393408,4},{{-1,1097859072},{-3,1101004800},{1,1084227584},})
if type(qpc)=="table"then
local zb=hqsj(qpc[1],{{-32,16},{-31,16},{-30,16}})
local xzb={}
xzb[1],xzb[2],xzb[3],xzb[4],xzb[5],xzb[6]=zb[1]-10,zb[1]+10,zb[2]-10,zb[2]+10,zb[3]-10,zb[3]+10
local ZB=CSM({WXNC,1035174360,4},{{1,1056964608},{7,1069547520},{39,1092616192},{40,1063675494},{47,1060320051},{48,1053609164},{-84,1056964608},{-85,1035174360},{-86,1059360187},{-90,1060439283},})
for x=1,#ZB do
local zzb=hqsj(ZB[x],{{19,64},{21,64},{23,64}})
if zzb[1]>xzb[1] and xzb[2]>zzb[1]then 
if zzb[2]>xzb[3] and xzb[4]>zzb[2]then
if zzb[3]>xzb[5] and xzb[6]>zzb[3]then
gg.toast("坐标初始化成功")
ZZB={ZB[x]}
break
end
end
end

end
else
gg.toast("坐标初始化失败")
end
end

function wxgn4()
local sjk={
{"棕树",800,801,802},
{"古椰",810,811,812},
{"铁树",820,821,822},
{"铁矿",1201,1221,1231},
{"铜矿",1202,1222,1232},
{"银矿",1203,1223,1233},
{"仓石",1211},
{"瑶石",1212},
{"玄石",1213},
{"幽兰",1301},
{"莽草",1302},
{"龙骨",1303},
{"枇华",1306},
}
local m={}
for x=1,#sjk do
m[x]=sjk[x][1]
end
local zylx=gg.multiChoice(m,nil,"脚本会无限循环(死亡复活不影响脚本运行)，再次点击悬浮窗即可结束循环，可多选。")
if zylx~=nil then
local sj={}
for x=1,#m do
if zylx[x]==true then
for h=1,#sjk[x] do
sj[#sj+1]=sjk[x][h]
end
end
end
while(true)do
if gg.isVisible(true) then break else
local zbd={}
gg.toast("开始搜索过滤附近物资")
local tz=CSM({WXNC,999,4},{
{-83,335544320},{-81,5},
})
local zbk={}
for x=1,#tz do
local zb=hqsj(tz[x],{{-62,16},{-61,16},{-60,16},{-82,4}})
for h=1,#sj do
if zb[4]==sj[h]then 
local j=#zbk+1
zbk[j]={}
zbk[j][1],zbk[j][2],zbk[j][3]=zb[1],zb[2],zb[3]
end
end
end
for x=1,#zbk do
if gg.isVisible(true)then break else
CSM(ZZB,{{19,64,zbk[x][1]+1.3},{21,64,zbk[x][2]+5},{23,64,zbk[x][3]+1.3},},"共有"..#zbk.."个物资\n第"..x.."个物资")
gg.sleep(wxszjl[1][7]*1000)
local jc=0
while(true)do
jc=jc+1
if gg.isVisible(true)then break else
if hqsj(c2[1],{{-31,4}})[1]=="0" or jc==wxszjl[1][6] then 
gg.toast("无物资或超时。")
break 
end
gg.sleep(1000)
end
end
end
end
end
end
end
end
function wxgn5()
local zbm={"星球"}
local zbk={[zbm[1]]={
{11442,6880.4,13096,"归魂星"},
{14640,7148.1,13186,"煞壤星"},
{15350,8388.5,8385,"徒离星"},
{15323,6948.8,5504,"碧落星"},
{-15907,6907.7,4938,"同悲星"},
{16030,6912.7,2143,"游心星"},
{-16132,6897.1,-243,"久客星"},
{13285,6963,2148,"织女星"},
{12277,8241.4,613,"破军星"},
{-7190,8306.4,2931,"不知道啥星"},
}}
local gzb=gg.choice(zbm,nil,"选择坐标类型")
if gzb~=nil then
for x=1,#zbm do
if gzb==x then
local zbmc={}
for c=1,#zbk[zbm[x] ]do
zbmc[c]=zbk[zbm[x] ][c][4]
end
local xzzb=gg.choice(zbmc,nil,"选择精准坐标")
if xzzb~=nil then
for h=1,#zbk[zbm[x] ]do
if xzzb==h then 
CSM(ZZB,{
{19,64,zbk[zbm[x]][h][1]},{21,64,zbk[zbm[x]][h][2]},{23,64,zbk[zbm[x]][h][3]},
},zbk[zbm[x]][h][4])
end

end

end
end
end
end
end
function wxgn6()
local zb=hqsj(ZZB[1],{{19,64},{21,64},{23,64}})
if zb~=nil then
local zdzb=gg.prompt({"X","Z","Y"},{zb[1],zb[2],zb[3]},{"number","number","number"})
if zdzb~=nil then
CSM(ZZB,{
{19,64,zdzb[1]},{21,64,zdzb[2]},{23,64,zdzb[3]},
},"传送")
end
end
end
function wxgn7()
if #ZDYZB==0 then gg.alert("无坐标")else
local zdyzbm={}
for x=1,#ZDYZB do
zdyzbm[x]="名称："..ZDYZB[x][4].."\n坐标：["..ZDYZB[x][1].."|"..ZDYZB[x][2].."|"..ZDYZB[x][3].."]"
end
local xzzb=gg.choice(zdyzbm,0)
if xzzb~=nil then
for x=1,#ZDYZB do
if xzzb==x then 
CSM(ZZB,{
{19,64,ZDYZB[x][1]},{21,64,ZDYZB[x][2]},{23,64,ZDYZB[x][3]},
},ZDYZB[x][4])
end
end
end
end
end
function wxgn8()
CSM(ZZB,{
{-8,16,wxszjl[1][5]},
},"遁地开")
end
function wxgn9()
CSM(ZZB,{
{-8,16,1},
},"遁地关")
end
wxszjl={
{false,false,false,false,5,10,3},
{"checkbox","checkbox","checkbox","checkbox","number","number","number"}
}
function wxgn10()
local sz=gg.prompt({"添加坐标","删除坐标","添加坐标数据","分享坐标数据","遁地深度(值越大遁越深)","打工人超时时间(单位：秒)","打工人检测物资时间(传送完成后多久开始检测有没有物资，云手机加载物资比较慢，可以设置久一点。单位：秒)"},wxszjl[1],wxszjl[2])
if sz~=nil then
if sz[1]==true then
local zb=hqsj(ZZB[1],{{19,64},{21,64},{23,64}})
local zdymc=gg.prompt({"设置坐标名字："},{""},{"text"})
if zdymc~=nil then
ZDYZB[#ZDYZB+1]={string.format('%.2f',zb[1]),string.format('%.2f',zb[2]),string.format('%.2f',zb[3]),zdymc[1]}
DXWJ(wxzdy,2,tostring(ZDYZB))
end
end
if sz[2]==true then
if #ZDYZB==0 then gg.alert("无坐标")else
local zdymc={}
for x=1,#ZDYZB do 
zdymc[x]=ZDYZB[x][4]
end
local zbxz=gg.multiChoice(zdymc,nil,"选择要删除的坐标，可多选。")
if zbxz~=nil then
local scdzb={}
local XZB={}
for x=1,#ZDYZB do
if zbxz[x]~=true then XZB[#XZB+1]=ZDYZB[x] end
end
ZDYZB=XZB
DXWJ(wxzdy,2,tostring(ZDYZB))
end
end
end
if sz[3]==true then
local tj=gg.prompt({"输入坐标数据"},{""},{"text"})
if tj~=nil then
local sj=tj[1]:gsub("|",",")
if load("xzb="..sj)==nil then gg.alert("数据有误")else
load("xzb="..sj)()
for x=1,#xzb do
ZDYZB[#ZDYZB+1]={xzb[x][1],xzb[x][2],xzb[x][3],xzb[x][4]}
end
DXWJ(wxzdy,2,tostring(ZDYZB))
end
end
end
if sz[4]==true then
if #ZDYZB==0 then gg.alert("无坐标")else
local zdymc={}
for x=1,#ZDYZB do 
zdymc[x]=ZDYZB[x][4]
end
local zbxz=gg.multiChoice(zdymc,nil,"选择要复制的坐标，可多选。")
if zbxz~=nil then
local fx=""
for x=1,#zdymc do
if zbxz[x]==true then
fx=fx.."{"..ZDYZB[x][1].."|"..ZDYZB[x][2].."|"..ZDYZB[x][3].."|'"..ZDYZB[x][4].."'}|"
end
end
fx="{"..fx.."}"
gg.copyText(fx)
gg.alert("已复制您的坐标数据，赶快发给好友吧！")
end
end
end


for x=5,7 do
wxszjl[1][x]=sz[x]
end
end
end
function wxgn11()
local DZ=CSM({[[16384]],[[1132396544]],[[4]]},{{[[-1]],[[0]]},{[[-2]],[[0]]},{[[-3]],[[1120403456]]},})
CSM(DZ,{{[[-4]],[[16]],[[3]]},{[[1]],[[16]],[[3]]},},"锤子范围开")
end
function wxgn12()
local DZ=CSM({[[16384]],[[1132396544]],[[4]]},{{[[-1]],[[0]]},{[[-2]],[[0]]},{[[-3]],[[1120403456]]},})
CSM(DZ,{{[[-4]],[[16]],[[0.1]]},{[[1]],[[16]],[[0.1]]},},"锤子范围关")
end
function wxgn13()
local DZ=CSM({16384,9288,4},{{1,11146288},})
CSM(DZ,{{1,4,10081770},},"弓弩射速")
end
function wxgn14()
local DZ=CSM({WXNC,1045220556,4},{{-1,1086324736},{-2,1084227584},{-3,1084227584},{-4,11},})
CSM(DZ,{{-3,16,20},},"人物高跳")
end
function wxgn15()
local js=gg.multiChoice({"移速1(走、跑、冲)","移速2(潜、游、冲)","移速3(倒、趴、蹲、爬、跑)"})
if js~=nil then
if js[1]==true then
CSM(c1,{{-6,16,15},{-2,16,40},{0,16,55},},"移速1")
end
if js[2]==true then
CSM(c1,{{9,16,40},{10,16,40},{11,16,60},},"移速2")
end
if js[3]==true then
CSM(c1,{{12,16,10},{13,16,20},{14,16,30},{15,16,13},{16,16,40},},"移速3")
end
end
end
function wxsh()
local m={
"1.防封",
"2.全局加速",
"3.初始化坐标",
"4.自动打工人",
"5.️自带坐标表",
"6.️自定义传送",
"7.自定义列表",
"8.人物遁地[开]",
"9.人物遁地[关]",
"10.自定义设置",
"11.锤子范围[开]",
"12.锤子范围[关]",
"13.弓弩射速",
"14.人物高跳",
"15.人物移速",
"16.暴力百年灭杀",
"17.暴力千年灭杀",
"18.暴力灭杀万年",
"退出脚本"
}local g=gg.multiChoice(m,nil,DQSJ)
if g~=nil then 
if g[1]==true then wxgn1()end
if g[2]==true then wxgn2()end
if g[3]==true then wxgn3()end
if g[4]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn4()end end
if g[5]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn5()end end
if g[6]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn6()end end
if g[7]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn7()end end
if g[8]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn8()end end
if g[9]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn9()end end
if g[10]==true then if ZZB==nil then gg.alert("请初始化坐标")else wxgn10()end end
if g[11]==true then wxgn11()end
if g[12]==true then wxgn12()end
if g[13]==true then wxgn13()end
if g[14]==true then wxgn14()end
if g[15]==true then wxgn15()end
if g[16]==true then os.exit()end
end 
kg=-1 
end
function WXSH()
while(true)do if gg.isVisible(true)then 
kg=1 gg.setVisible(false)end if
kg==1 then 
wxsh()
end 
end
end

function cmgn1()
local DG=CSM({32,1080483840,4,0,FW},{})
CSM(DG,{{0,4,1082900480},},"定怪1")
end
function cmgn2()
local DG=CSM({32,1090022400,4,0,FW},{{6,1090021904},})
CSM(DG,{{6,4,0},},"定怪2")
end
function cmgn3()
local SS=CSM({8,869711765,4},{{1,869711765},{-1,1073741824},})
CSM(SS,{{-3,16,0},},"水上行走")
end
function cmgn4()
local GT=CSM({32,20,4,0,FW},{{1,-14},{-27,-5},{-29,-14},{-30,8},})
CSM(GT,{{0,4,100},},"高跳")
end
function cmgn5()
local GT=CSM({32,1065646817,4,0,FW},{{-16,-14},{-17,8},})
CSM(GT,{{-17,4,100},},"防摔")
end
function cmgn6()
local GT=CSM({32,1035,4,0,FW},{{2,1072902963},})
CSM(GT,{{2,4,0},},"高跳无冷却")
end
function cmgn7()
local FWSQ=CSM({32,1073217536,4,0,FW},{{-4,-5},{-6,-9},{2,-5},{6,-9},})
local YY=CSM({32,1069128089,4,0,FW},{{-4,-5},{-14,107},})
CSM(FWSQ,{{-1,64,100},},"范围50%")
CSM(YY,{{-7,64,888},},"范围100%")
end
function cmgn8()
local TT=CSM({32,12299,4,0,FW},{
{2,-2},{4,-5},{8,-9},{10,-5},})
CSM(TT,{{13,4,-100},},"游泳加体力")
end
function cmgn9()
local DG=CSM({4,196616,4,0,FW},{
{11,11},{15,11},{17,33},{22,1065353216},{26,1008981770},})
CSM(DG,{{30,16,0.9},},"遁地")
end
function cmgn10()
while(true)do
if gg.isVisible(true)then gg.toast("结束")break else
local DG=CSM({4,196616,4,0,FW},{{11,11},{15,11},{17,33},{22,1065353216},{26,1008981770},})
CSM(DG,{{30,16,0.9},},"遁地")
end
end
end
function cmgn11()
local TL=CSM({32,1071854387,4,0,FW},{{-4,-5},{-6,-2},{-10,-5},{-12,-14},})
CSM(TL,{{-13,4,0},},"近战无耗体力")
end
function cmgn12()
local TL=CSM({32,10768,0,FW},{{-6,10714696},{-36,10691289},})
CSM(TL,{{7,6,30},{-37,4,1},},"弓箭")
end
function cmgn13()
local TL=CSM({32,10876,4,0,FW},{{3,0},{12,108208},})
CSM(TL,{{3,4,01},},"地形偏移")
end
function cmgn14()
local k=gg.prompt({"防闪等级(1~3级，默认1级)"},{fsdj},{"number"})
if k~=nil then
if k[1]>"3"or k[1]<"1"then gg.alert("错误")else
local fw={"C","B","A"}
FW="0x"..fw[k[1]*1].."FFFFFFF"
fsdj=k[1]
DXWJ(cmfsdj,2,k[1])
end
end
end

cmfsdj="/sdcard/Android/csmcmfsdj"
fsdj=DXWJ(cmfsdj,1)
if fsdj==nil then fsdj=1 end
local fw={"C","B","A"}
FW="0x"..fw[fsdj*1].."FFFFFFF"
function czymf()
local m={
"1.️定怪1",
"2.定怪2",
"3.水上行走",
"4.高跳",
"5.防摔",
"6.跳跃无冷却",
"7.范围拾取",
"8.游泳加体力",
"9.遁地",
"10.遁地(循环)",
"11.近战无耗体力",
"12.弓箭1.5倍射程+弓箭追踪",
"13.️地形偏移",
"14.设置防闪等级",
"退出脚本"
}
local g=gg.multiChoice(m,nil,DQSJ)
if g~=nil then 
if g[#m]==true then os.exit()else 
if g[1]==true then cmgn1()end
if g[2]==true then cmgn2()end
if g[3]==true then cmgn3()end
if g[4]==true then cmgn4()end
if g[5]==true then cmgn5()end
if g[6]==true then cmgn6()end
if g[7]==true then cmgn7()end
if g[8]==true then cmgn8()end
if g[9]==true then cmgn9()end
if g[10]==true then cmgn10()end
if g[11]==true then cmgn11()end
if g[12]==true then cmgn12()end
if g[13]==true then cmgn13()end
if g[14]==true then cmgn14()end
end 
end 
kg=-1 
end
function CZYMF()
while(true)do if gg.isVisible(true)then 
kg=1 gg.setVisible(false)end if 
kg==1 then 
czymf()
end end
end
local bm=gg.getTargetPackage()
if bm=="com.tencent.tmgp.djsy"then gg.setVisible(true)WXSH()
elseif bm=="com.miHoYo.Yuanshen"then gg.setVisible(true)YS()
elseif bm=="com.miHoYo.ys.bilibili"then gg.setVisible(true)YS()
elseif bm=="com.hero.sm.android.hero"then gg.setVisible(true)CZYMF()
elseif bm=="com.hero.sm.aligames"then gg.setVisible(true)CZYMF()
elseif bm=="com.hero.sm.vivo"then gg.setVisible(true)CZYMF()
else
local wcjc=gg.alert("未能找到匹配此进程的脚本！请选择进程后执行脚本！","知道了","","复制进程包名")
if wcjc==3 then gg.copyText(bm)print("已复制进程包名")end
end