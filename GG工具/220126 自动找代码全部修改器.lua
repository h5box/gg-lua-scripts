code=[[-----------------q1532757687
  gg.setVisible(false)
  initial=value
  for i=1,10000 do-------留个版权
  initial=initial+add
  if gg.isVisible(true) then
  print("找到正确代码:"..initial-add)os.exit()end
  gg.clearResults()
	 gg.setRanges(Rans)
	 gg.toast("正在查找代码:"..initial)
	 gg.searchNumber(initial, TYPEs, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
	 gg.editAll(ALL, TYPEs)
	 gg.sleep(1000)
	 NXXgg.editAll(initial,TYPEs)
	 gg.clearResults()
  end
]]
code1=[[
	 gg.setVisible(false)
  initial=value
	 gg.setRanges(Rans)
	 gg.searchNumber(initial,TYPEs, false, gg.SIGN_EQUAL, 0, -1)
	 for i=1,10000 do
	 n=gg.getResults(1500)
	 if n[1500]==nil then
	 print("数据为空！")
	 os.exit()
	 end
	 gg.editAll(ALL, TYPEs)
	 gg.sleep(2000)
	 gg.editAll(initial, TYPEs)
	 gg.sleep(1000)
	  if gg.isVisible(true) then
  gg.addListItems(n)
  print("查找成功！已保存到列表！")os.exit()end
	 gg.removeResults(n)
	 gg.searchNumber(initial, TYPEs, false, gg.SIGN_EQUAL, 0, -1)
	 end
	 ]]
	 code2=[[
	  initial=value
   gg.clearResults()
	  gg.setRanges(Rans)
   gg.setVisible(false)
   gg.searchNumber(initial, TYPEs, false, gg.SIGN_EQUAL, 0, -1)
	  for i=1,10000 do
   if gg.isVisible(true) then
   print("找到正确代码:"..initial)os.exit()end
	  if gg.getResultCount()<1 then
   initial=initial+ADD
   gg.searchNumber(initial, TYPEs, false, gg.SIGN_EQUAL, 0, -1) end
   gg.toast("正在查找代码:"..initial)
   gg.searchNumber(initial, TYPEs, false, gg.SIGN_EQUAL, 0, -1)
   n=gg.getResults(XXX*1000)
	 gg.editAll(ALL, TYPEs)
	 gg.sleep(1000)
  gg.editAll(initial,TYPEs)
	 gg.removeResults(n)
	 end
  ]]
dialog=[[
    数据类型参考:
    DWROD= 4    DOUBLE= 64
    QWORD= 32    FLOAT= 16
    WORD= 2    BYTE= 1
    AUTO= 127   XOR= 8

    内存范围参考:
    Jh=2   Ch=1   Ca=4   Cd=8 
    Cb=16   PS=262144   A=32 
    默认=262207   J=65536   S=64 
    As=524288   O=-1032320   
    B=131072   Xa=16384   
    Xs=32768
]]
path="/storage/emulated/0/CodeFinding.lua"-------文件位置
function MainProgram()
gg.alert(dialog)
S = gg.choice({
	 "多值递增(效率)",
	 "单值查找(单值)",
	 "多值递增(稳定)"
}, nil, "by What 2.01")
if S==1 then
IN = gg.prompt({
  "请输入初始值：",
  "请输入递增值：",
  "请输入修改内存：",
  "将值修改为：",
  "请输入修改类型：",
  "是否恢复数据" },
{[1] = "",[2] = "",[3] ="",[4] = "",[5] = "",[6] =true}, 
{[1] = "number",[2] = "number",[3] = "number",[4] = "number",[5] = "number",[6] = "checkbox"})
if IN[6] ==true then
data1=string.gsub(code,"value",IN[1])
data1=string.gsub(data1,"NXX","")
data2=string.gsub(data1,"add",IN[2])
data3=string.gsub(data2,"Rans",IN[3])
data4=string.gsub(data3,"ALL",IN[4])
data5=string.gsub(data4,"TYPEs",IN[5])
else
data1=string.gsub(code,"gg.sleep","--")
data1=string.gsub(data1,"NXX","--")
data1=string.gsub(data1,"value",IN[1])
data2=string.gsub(data1,"add",IN[2])
data3=string.gsub(data2,"Rans",IN[3])
data4=string.gsub(data3,"ALL",IN[4])
data5=string.gsub(data4,"TYPEs",IN[5])
end
end
if S==2 then
IN = gg.prompt({
  "请输入查找值：",
  "请输入递增值：",
  "请输入修改类型：",
  "将值修改为：",
  },
{[1] = "",[2] = "",[3] ="",[4] = ""}, 
{[1] = "number",[2] = "number",[3] = "number",[4] = "number"})
data1=string.gsub(code1,"value",IN[1])
data2=string.gsub(data1,"Rans",IN[2])
data3=string.gsub(data2,"TYPEs",IN[3])
data5=string.gsub(data3,"ALL",IN[4])
end
if S==3 then
IN = gg.prompt({
  "请输入初始值：",
  "请输入内存范围：",
  "请输入修改类型：",
  "将值修改为：", 
  "请输入递增值:",
  "请输入效率倍率:(1=1000)",
  },
{[1] = "",[2] = "",[3] ="",[4] = "",[5] = "1",[6] = "2"}, 
{[1] = "number",[2] = "number",[3] = "number",[4] = "number",[5] = "number",[6] = "number"})
data1=string.gsub(code2,"value",IN[1])
data2=string.gsub(data1,"Rans",IN[2])
data3=string.gsub(data2,"TYPEs",IN[3])
data4=string.gsub(data3,"ALL",IN[4])
data41=string.gsub(data4,"ADD",IN[5])
data5=string.gsub(data41,"XXX",IN[6])
end
file = io.open(path,"w")
file:write(data5)
file:close()
SN = gg.choice({
	 "开始查找",
	 "退出脚本",
}, nil, "辛心2.01")
if SN==1 then
	dofile(path)
end
if SN==2 then
print("留个版权")--------辛心
	os.exit()
end
end
F = io.open(path,"r")
if F==nil then
MainProgram()
else
S=F:read("*a")
SL=string.len(S)
if SL<200 then
MainProgram()
else
D=gg.alert("检测到自动查找记录，是否恢复？","立即恢复","重新开始")
if D==1 then
dofile(path)
end
if D==2 then
MainProgram()
end
end
end












