function B()
  SN = gg.multiChoice({
  "人物上色",
  "透视系列",
  "帧数画质最高",
  "枪械聚点",
  "无后系列",
  "范围打击",
  "子弹穿墙",
  "自瞄系列",
  "全局加速",
  "枪械秒杀系列",
"退出脚本",
  },nil,'生死狙击最强脚本，原创+网络整合')
  if SN == nil then
   else
  if SN[1] == true then   a1()  end
  if SN[2] == true then   a2()  end
  if SN[3] == true then   a3()  end
  if SN[4] == true then   a4()  end 
  if SN[5] == true then   a5()  end
  if SN[6] == true then   a6()  end
  if SN[7] == true then   a7()  end
  if SN[8] == true then   a8()  end 
  if SN[9] == true then   a9()  end
  if SN[10] == true then   a10()  end
  if SN[11] == true then   a11()  end
  end
  XGCK = -1
end



function a1()
CNM = gg.multiChoice({
"原创人物上色(变色)",
"原创枪械上色",
"待添加",
"返回上一页",},
nil,'全系列上色')
if CNM == nil then else
if CNM[1] == true then e1() end
if CNM[2] == true then e2() end
if CNM[3] == true then e3() end
if CNM[4] == true then e4() end
end
CNMB=-1
end

function e1()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.23432971e-29",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("3.23432971e-29",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1.9",gg.TYPE_FLOAT)
gg.toast("原创人物变色开启成功")     
end

function e2()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("2.12548923492", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.12548923492", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(60)
	 gg.editAll("6", gg.TYPE_FLOAT)
	 gg.toast("原创枪械红色开启成功")
end    

function e3()
     
     
end

function e4()
     B()
end


function a2()
RNM = gg.multiChoice({
"ca独家原创人物透视（骁龙可用）",
"麒麟ch透视",
"贴墙透视（推荐）",
"骁龙透视（推荐）",
"返回上一页",},
nil,'全系列ts')
if RNM == nil then else
if RNM[1] == true then k1() end
if RNM[2] == true then k2() end
if RNM[3] == true then k3() end
if RNM[4] == true then k4() end
if RNM[5] == true then k5() end
end
RNMB=-1
end

function k1()
gg.clearResults()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("4.20389539e-45F;7.53758444e-42F;7.27273903e-43F;3.57331108e-43F;1.07619722e-41F;3.57331108e-43F;7.27273903e-43F;1.0F;1.44193612e-42F;3.22859166e-42F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("ca独家人物透视开启成功")
end

function k2()
gg.clearResults()
	 gg.setRanges(1)
	 gg.searchNumber("1.5134023e-43;8;0.5;4.9045446e-44::0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("麒麟ch透视️开启成功")
end

function k3()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("5;10;100,000,000.0::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_FLOAT)
	 gg.toast("贴墙透视️开启成功")
end

function k4()
	 gg.clearResults()
	 gg.setRanges(1048576)
	 gg.searchNumber("462898", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("462898", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(200)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("骁龙透视开启成功")
end

function k5()
     B()
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3.21875;60;1.0e-6",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1.0e-6",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("999999999999",gg.TYPE_FLOAT)
gg.toast("帧数流畅开启成功")
end


function a4()
gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("10;0.5;1.5;2;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5;1.5;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("全枪聚点开启成功")
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("100E;1000E::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("成功")
end	 


function a5()
ALG = gg.multiChoice({
"全枪防抖",
"全枪无后第一步",
"全枪无后第二步",
"返回上一页",},
nil,'全枪无后系列，nb一批')
if ALG == nil then else
if ALG[1] == true then b1() end
if ALG[2] == true then b2() end
if ALG[3] == true then b3() end
if ALG[4] == true then b4() end
end
ALGM=-1
end

function b1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;52D;1D;48D;1F;256D;3.5873241e-43F;4D;1D;4D",gg.TYPE_FLOAT, false,gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1",gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast('防抖开启成功')
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("150F;1F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2000)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast('防抖开启成功')
end

function b2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("100E;1000E;7.5E::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("7.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("9999999999999", gg.TYPE_DOUBLE)
gg.toast("全枪无后1成功")
end

function b3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("100E;1000E::", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1000", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("0", gg.TYPE_DOUBLE)
gg.toast("全枪无后2成功")
end

function b4()
     B()
end


function a6()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1F;1F;1F;0.1F;0.2F;0.9F;1.5F;2.5F",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1;0.1;0.2;2.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("视线范围伤害开启成功")
end


function a7()
	 gg.clearResults()
	 gg.setRanges(16)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(500)
	 gg.editAll("99", gg.TYPE_FLOAT)
	 gg.toast("子弹穿墙开启成功")
end


function a8()
AMG = gg.multiChoice({
"爆头暴击",
"枪锁锁身",
"小自瞄",
"中自瞄",
"超级自瞄",
"退出脚本",
"返回上一页",},
nil,'超级自瞄系列，nb一批')
if AMG == nil then else
if AMG[1] == true then c1() end
if AMG[2] == true then c2() end
if AMG[3] == true then c3() end
if AMG[4] == true then c4() end
if AMG[5] == true then c5() end
if AMG[6] == true then c8() end
if AMG[7] == true then c9() end
end
AMGM=-1
end

function c1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;0.10000000149", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("爆头暴击开启成功")
end

function c2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("57.29578018188", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("57.29578018188", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("大厅锁身开启成功")
end


function c3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1D;52D;1D;48D;1F;256D;3.5873241e-43F;4D;1D;4D", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("小自瞄开启成功")
end

function c4()
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;6,291,456.0E;13.5::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("450", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("中自瞄开启成功")
end
	 
function c5()	
gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("450", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("超级自瞄开启成功") 
end


function c8()
     a11()
end	 	 	 	 
	 	 	 	 	 	 	 	 
function c9()
     B()
end

function a9()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.001", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll("9",gg.TYPE_FLOAT)
gg.toast("全局加速开启成功")
end
	 
	 	 	 	 	 	 	 
function a10()
ALP = gg.multiChoice({
"荣耀秒杀",
"待添加",
"待添加",
"返回上一页",},
nil,'全枪秒杀系列，nb一批')
if ALP == nil then else
if ALP[1] == true then d1() end
if ALP[2] == true then d2() end
if ALP[3] == true then d3() end
if ALP[4] == true then d4() end
end
ALPM=-1
end	 

function d1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1050253722;1065353216;32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("32", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999}})
	 end
	 gg.toast("荣耀秒杀开启成功")
end

	 
function d2()


end

function d3()


end

function d4()
     B()
end


function a11()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"


while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    B()
  end
end