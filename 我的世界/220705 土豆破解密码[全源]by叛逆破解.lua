gg.alert("加载成功")
function Main()
  SN =gg.multiChoice({
  "加速踏空[Speed up the air]",
  "旋转杀戮[Rotate the three kill]",
  "创背[Back]",
  "花雨庭飞行穿墙[Huayuting flies through the wall]",
  "修改视野[Modify the field of view]",
  "花雨庭自走虚空[Go from the vanity]",
  "自定义碰撞箱[Collision box]",
  "xs浮空飞天[Floating in the sky]",
  "长臂猿[The gibbon]",
  "疾跑加速[Accelerate]",
  "退出[Exit]"
 }, nil, "。。。")
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
   Exit()
  end
end
  XGCK = -1
end



function a()
  gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("2.3510607e-38;0.25;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  jg=gg.getResults(1000)
  sl=gg.getResultCount()
  for i = 1, sl do
    dzy=jg[i].address
    gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.3510607e-38}})
  end
  gg.toast("已开启50%")
  gg.clearResults()
  gg.searchNumber('0.1;0;3.4028235e38;0.1;1.1011996e36::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll('0.2', gg.TYPE_FLOAT)
  gg.toast("开启成功")
end

function b()
     gg.clearResults()
     gg.setRanges(4)
     gg.searchNumber("98312",gg.TYPE_DWORD)
     gg.sleep(1000)
     gg.searchNumber("98312",gg.TYPE_DWORD)
     gg.sleep(1000)
     gg.searchNumber("98312",gg.TYPE_DWORD)

     jg=gg.getResults(10)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.20511668e-38}})
	 end
	 gg.toast("旋转杀戮已开启")
	 gg.clearResults()
end

function c()
gg.searchNumber("0.6F;1.8F;2000D::965", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
hmnb={
{["memory"] = 4},
{["name"] ="创背"},
{["value"] =2000, ["type"] = 4},
{["lv"] = 2000, ["offset"] = 0, ["type"] =gg.TYPE_DWORD},
--{["lv"] = "1.79~1.81", ["offset"] = -0x3C0, ["type"] =gg.TYPE_FLOAT},
}
qmxg={
{["value"] =1, ["offset"] = 0x39C, ["type"] = 1, ["freeze"] = true},
{["value"] =1, ["offset"] = 0x1824, ["type"] = 1, ["freeze"] = true}
}
xhmnb(hmnb)
gg.toast("创背开启成功")
end

function d()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-0.50289154053;0.00100000005;8,493.265625::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00100000005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9", gg.TYPE_FLOAT)
	 gg.toast("穿墙飞行开启成功")
	 gg.clearResults()
end

function e()
	 gg.clearResults()
a = gg.prompt({"最高110,最低30"},{[1]=30},{[1]="number"})[1]
	 gg.setRanges(4)
	 gg.searchNumber("30.0;110.0;60::21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>50 then gg.clearResults() gg.alert("数据异常","清除并退出") os.exit() end
	 for i = 1, sl do
  gg.setValues({{address = jg[i].address + 8,flags = gg.TYPE_FLOAT,value = a}})
end
	 gg.toast("视野已修改成功\n共修改"..sl.."条数据")
	 gg.clearResults()
end

function f()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5F;2.0F;0.56986129284F;1.0F;0.37225875258F",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(50)
gg.editAll("15",gg.TYPE_FLOAT)
gg.toast("I can't use it for the time being")
end

function g()
gg.toast("开启时别动")
T=gg.prompt({
"请输入您要改的碰撞箱范围"})
if T==nil then 
print("您取消了") os.exit()
else
local JT=""..T[1]
if JT=="" then
print("您还未输入") os.exit()
end
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1,058,642,330;1,072,064,102;-1,113,550,802::41", gg.TYPE_DWORD)
gg.searchNumber("1,058,642,330", gg.TYPE_DWORD)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 1058642330
      }
    })
  end
gg.clearResults()
gg.searchNumber("1,058,642,330;1,072,064,102;-1,113,550,802::41", gg.TYPE_DWORD)
gg.searchNumber("1,072,064,102", gg.TYPE_DWORD)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_DWORD,
        freeze = true,
        value = 1072064102
      }
    })
  end
gg.clearResults()
gg.setRanges(16384)
local time=os.clock()
gg.searchNumber("0.005", gg.TYPE_FLOAT)
     local X = gg.getResultCount()     
     if X == 0 then
     gg.alert("对不起,修改失败","退出脚本")
     os.exit()
     end
gg.getResults(1000)
gg.editAll(T[1],gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("自定义碰撞箱开启成功，你必须得要重新加载一下区块才能见效")
gg.sleep(1000)
end
end

function h()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.98", gg.TYPE_FLOAT)
	 gg.searchNumber("0.98", gg.TYPE_FLOAT)
	 gg.getResults(100)
	 gg.editAll("2", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function i()
  gg.clearResults()
  gg.setRanges(4)
  gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F;-1.0F::57", gg.TYPE_FLOAT)
  gg.searchNumber("0.60000002384~0.8000000119F;1.79999995232F", gg.TYPE_FLOAT)
  jg = gg.getResults(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = gg.TYPE_FLOAT,
        freeze = true,
        value = 5
      }
    })
  end
  gg.toast("长臂猿已开启")
  gg.clearResults()
end

function j()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("9 640 188 314", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9666 088141", gg.TYPE_QWORD)
gg.toast("疾跑加速开启成功")
gg.clearResults()
end

function Exit()
print("。。。")
os.exit()
end
cs = "2842352254"



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









