function Main()
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
  "退出脚本"
 }, nil, "第五人格脚本，功能一次不行开两次就好！")
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
    n()
  end
  if SN[15] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
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




function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("288,555,008D;1,080,037,376D;288,555,009D;1,080,033,281D;288,555,010D;1,080,033,282D;2D;9,437,184D;208D;538,972,160D;6D;537,135,364D;216D;538,968,073D;4,302D;1,080,035,585D:109", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("人物椅子上色开启成功！")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,080,037,376D;1,080,033,281D;288,358,402D;1,080,033,282D;2D;88D;538,972,160D;537,135,364D;538,968,073D:97", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("845机器上色开启成功！")
end

function d()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.57013130188F;1.0878028e-32F;1.4177342e-37F;-3.4433196e34F;2.8345691e-23F;-0.50208950043F;-0.50291442871F;-0.50291442871F;-0.50291442871F;1.0F;0.0F;296,777.40625F;-1.1400233e-9F;21,122.009765625F;6.207879e-33F:125",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("除雾开启成功")
end

function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2D;512D;273,715,281D;1,711,409,156D;4D;1,280D;1,280D;25,165,828D;67,244,032D;8,192D;8,196D;2,053D;272,367,626D;271,056,909D:169", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8192", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("9",gg.TYPE_DWORD)
gg.toast("除草开启成功")
end

function f()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1,080,039,936D;1,024D;-2,124,414,970D;1D;-2,124,414,969D;0D;2D;-2,124,414,960D;87D;9,437,184D;140D;4D:61", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("3",gg.TYPE_DWORD)
gg.toast("箱子上色开启成功！")
end

function g()
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

function h()
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

function i()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-4.7127546e-10F;-2.3755475e-29F;-0.50291442871F;1.0F;1.0F;2.6746085e-38F;2.5626946e-41F;123,346.3515625F;154,906.015625F;993.22015380859F;3.1232701e24F;-3.3815946e34F;10,756.2734375F:125",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("除草开启成功")
end

function j()
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

function k()
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

function l()
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


function m()
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

function n()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1.5134023e-43F;1.3552527e-19F;1.6255062e-43F;1.355253e-19F;1.6395192e-43F;1.3555514e-19F;1.8509638e-12F;2.0F;4.6542799e-29F;3.50000047684F;4.6542814e-29F;3.50055098534F;1.8956766e-40F;2.3611838e21F;6.4874654e-40F;2.3611852e21F:69", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("150",gg.TYPE_FLOAT)
gg.toast("红色开启成功")
end


function Exit()
print("第五人格功能")
os.exit()
end
cs = "专注网络搜集"



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