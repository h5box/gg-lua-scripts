gg.alert("本脚本请在二十四小时内删除――后果自负")
function Main()
menu = gg.choice({
"🔰稳定天线🔰",
"🔰稳定范围🔰",
"🔰稳定锁头🔰",
"🔰无线飞高🔰",
"🔰子弹加速🔰",
"🔰全枪自动🔰",
"🔰人物遁地🔰",
"🔰环境异常第一步🔰",
"🔰第二步🔰",
"🔰加大拉勾勾🔰",
"🔰爬墙爬树🔰",
"🔰人物飞天🔰",
"🔰稳定无后🔰",
"🔰二跳穿墙🔰",
"🔰水上行走🔰",
"🔰加特林不红🔰",
"🔰自慰隐身🔰",
"🔰麒麟透视🔰",
"🔰骁龙透视🔰",
"🔰小范围透视🔰",
"🔰三种人称🔰",
"🔰2.1小范围🔰",
"🔰多选加速🔰",
"🔰蹦蹦天线🔰",
"🔰人物上色🔰",
"🔰物品透视🔰",
"🔰自瞄？？？🔰",
"🔰天空黑色🔰",
"🈲退出脚本🈲"},
2018,os.date'欢迎使用――当前时间:%Y年%m月%d日%H时%M分')
if menu == 1 then a() end
if menu == 2 then b() end
if menu == 3 then c() end
if menu == 4 then d() end
if menu == 5 then e() end
if menu == 6 then f() end
if menu == 7 then g() end
if menu == 8 then h() end
if menu == 9 then i() end
if menu == 10 then j() end
if menu == 11 then k() end
if menu == 12 then l() end
if menu == 13 then m() end
if menu == 14 then n() end
if menu == 15 then o() end
if menu == 16 then p() end
if menu == 17 then q() end
if menu == 18 then r() end
if menu == 19 then s() end
if menu == 20 then t() end
if menu == 21 then u() end
if menu == 22 then v() end
if menu == 23 then w() end
if menu == 24 then x() end
if menu == 25 then y() end
if menu == 26 then z() end
if menu == 27 then aa() end
if menu == 28 then bb() end
if menu == 29 then Exit() end
XGCK=-1
end





function a()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.72448539734~1.72448551655", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.72448539734~1.72448551655", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("-0.05175212771", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(350)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("天线")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.57410383224", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("四角天线开启")
end



function b()
 gg.clearResults()
 
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) 
gg.editAll("1.8", gg.TYPE_FLOAT) gg.toast("开启成功") end




function c()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.34748032689F;0.34999999404F;0.35000020266F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.8", gg.TYPE_FLOAT)
	 gg.toast("锁头开启成功")
	 gg.clearResults()
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.2701581e28;-1.4186147e28;-1.3262672e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.2701581e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function e()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.01~0.4;200D;100D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01~0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1000)
  gg.editAll("0.038", gg.TYPE_FLOAT)
  gg.toast("枪械射速开启成功")
end



function f()
fw= gg.prompt({i='手持输入目前枪械子弹(子弹数不能低于2)'}, {i='2'})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(""..fw["i"]..";0;0;1;1;1::21",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("全抢自动")
end



function g()
gg.alert("开的时候不要乱动\n提前准备好胶囊")
  gg.clearResults()
  gg.setRanges(16)
  gg.searchNumber("2.0;1.0e-7;1.0e-7;1.0e-7;1.0e-7:25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("99", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.07999999821;0.5;1;1.5::80", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    do
      for _FORV_3_ = 1, n do
        gg.setValues({
          [1] = {
            address = jz[_FORV_3_].address + 54,
            flags = gg.TYPE_FLOAT,
            value = "2.82080483437"
          }
        })
      end
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("0.95", gg.TYPE_FLOAT)
  gg.toast("站着遁地开启成功")
end



function h()
os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/cache")
gg.toast("环境异常解决第一步开启成功")
end



function i()
os.remove("/storage/emulated/0/Android/data/com.sofunny.Sausage/files")
gg.toast("环境异常解决第二步开启成功，请重启游戏")
end



function j()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1109393408;1059145646:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1109393408", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1,112,593,408", gg.TYPE_DWORD)
    gg.toast("加长拉钩钩距离开启成功")
    gg.clearResults()
  end



function k()
  F = gg.alert("爬墙", "开启", "关闭")
  if F == 1 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;0.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.toast("爬墙")
    gg.clearResults()
  elseif F == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.07999999821;50::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0.07999999821", gg.TYPE_FLOAT)
    gg.toast("爬墙关闭")
    gg.clearResults()
  end
end



function l()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.4999999702;0.07999999821;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("15.964513", gg.TYPE_FLOAT)
	 gg.toast("飞天开启成功")
	 gg.clearResults()
end



function m()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-300,938,736;-501,214,974::5",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-300,938,736;-501,214,974::5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_DWORD)
gg.toast("无后座开启成功")
end



function n()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1,055,286,886;1,065,353,216;1,067,869,798:9',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('1,055,286,886',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-99',gg.TYPE_DWORD)
gg.toast("连跳穿墙开启")
end



function o()
F = gg.alert("水上行走", "开启", "关闭","退出")
if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.07999999821;0.5::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.95", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702;0.95;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.95", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07999999821", gg. TYPE_FLOAT)
gg.toast("关闭成功")
gg.clearResults()
end
end



function p()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1128792064;100;100F",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("100",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("99999999",gg.TYPE_DWORD)
gg.toast("加特林不红")
end



function q()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;9.0283548e-37;9.02825794e-37;9.02865255e-37;9.02861309e-37;-1.30940708e25;-1.30683878e21;-3.69511342e20;-9.38598081e22;-8.24338876e19;-1.22781529e23;-3.83692277e21:49",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("0.10000000149",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("隐身开启成功")
end



function r()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("1.40129846e-45F;4.25994733e-43F;3.58732407e-43F;0.5F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("透视开启成功")
	 gg.clearResults()
end



function s()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("3.7470893e-29;112D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("骁龙开启成功")
end



function t()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9)
  gg.editAll("6", gg.TYPE_FLOAT)
  gg.toast("透视-人物物品小范围")
end



function u()
  F = gg.alert("三种视角", "第三人称", "第一人称[偏移]", "第一人称")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg.editAll("-9", gg.TYPE_FLOAT)
gg.toast("第三人称[扩大]开启成功")
gg.clearResults()
  elseif F == 2 then
qmnb = {
{["memory"] = 32},
{["name"] = "第一人称"},
{["value"] = 0.2609032392501831, ["type"] = 16},
{["lv"] = 0.550000011920929, ["offset"] = 20, ["type"] = 16},
{["lv"] = -3.799999952316284, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 0.7, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
  elseif F == 3 then
  gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-3.79999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-3.79999995232",gg.TYPE_FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(8)
gg.editAll("-1", gg.TYPE_FLOAT)
gg.toast("第一人称开启成功")
 end
end


function v()
gg.clearResults()
 
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber("0.58157992363;0.40000000596;0.40000000596::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) gg.getResults(100) 
gg.editAll("2.1", gg.TYPE_FLOAT) gg.toast("开启成功") end




function w()
F = gg.alert("多选加速", "稳定加速", "中等加速","高等加速")
if F == 1 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.3", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
elseif F == 2 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.5", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
elseif F == 3 then
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.99999988079F;1.0F;0.33333334327F;0.03299999982F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1.7", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
end



function x()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.1031585e-9;0.33307686448",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
if gg.getResultCount() == 0 then
gg.toast("蹦蹦车开启失败")
else
gg.searchNumber("0.33307686448",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10)
gg.editAll("100",gg.TYPE_FLOAT)
gg.toast("蹦蹦车天线开启成功")
end
end



function y()
  F = gg.alert("两种人物上色", "蓝", "白")
  if F == 1 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("5",gg.TYPE_FLOAT)
gg.toast("开启成功")
  elseif F == 2 then
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('1.11841436e-19;1.15427246e10',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
  end
end



function z()
gg.clearResults()
  gg.setRanges(1048576)
  gg.searchNumber("983,055D;3.7470893e-29;3.25;128D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
  gg.searchNumber("3.7470893e-29", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll("6",gg.TYPE_FLOAT)
  gg.toast("物品透视开启成功")
end



function aa()
gg.setRanges(16384)
  gg.searchNumber("9953,2710,795", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0.08810002004", gg.TYPE_FLOAT)
  gg.toast("注入代码中")
  gg.clearResults()
local Name="自瞄10"
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.00048828148, 0x20C},{-128.00001525879, 0xB44},{128.37501525879, 0xB4C}}
local tp2 = {{0, 0x11C, true},}
local tb2 = {{898.375879, 0xB44, false},{-8.00879, 0xB4C, false},}
  SearchWrite(tb1, tp2, dataType,Name)
  gg.clearList()
  gg.setRanges(32)
  gg.searchNumber("3.11078428477", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("", gg.TYPE_FLOAT)
  gg.toast("死锁20")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.3',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast("自瞄40")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.4',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast("自瞄80")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false ,gg.SIGN_EQUAL,0,-1)
  gg.searchNumber('2.5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
  gg.getResults(100)
  gg.editAll('99',gg.TYPE_FLOAT)
  gg.toast("自瞄开启成功")
end



function bb()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('41d;2.25f::5',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('2.25',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(300)
gg.editAll('99',gg.TYPE_FLOAT)
gg.toast("天空黑色开启成功")
end




function Exit()
print("欢迎再来")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '我不见人'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end















