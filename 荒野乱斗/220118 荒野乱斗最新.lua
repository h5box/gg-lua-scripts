local bx=os.date("%Y%m%d%H%M")
function Main0()
SN = gg.choice({
	 "移速(自定义)",
	 "上帝视角(大视野)",
	 "上帝视角(小视野)",
	 "上色(白色)",
	 "上色(空白)",
	 "恢复(除移速外)",
	 "退出",
}, nil, "八嘎兔©"..sj)
if SN==1 then
	 Main1()
end
if SN==2 then
     HS5()
end
if SN==3 then
     HS6()
end
if SN==4 then
     HS7()
end
if SN==5 then
     HS8()
end
if SN==6 then
     HS9()
     HS91()
     HS92()
     HS93()
end
if SN==7 then
     Exit()
end
FX1=0
end


function Main1()
BGT = gg.choice({
"巴比特",
"中等移速角色",
"快移速角色",
"非常快移速角色",
"返回",
},nil,"移速推荐1000左右改太大可能会闪退")
if BGT==1 then
      HS1()
end
if BGT==2 then
      HS2()
end
if BGT==3 then
      HS3()
end
if BGT==4 then
      HS4()
end
if BGT==1 then
      Main0()
end
FX1=0
end


function HS1()
a = gg.prompt({"移速推荐700左右,自行修改"},
{[1]="输入需要的移速"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;580;12;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(""..a, gg.TYPE_DWORD)
	 gg.toast("巴比特移速修改为:"..a)
	 gg.clearResults()
end


function HS2()
b = gg.prompt({"移速推荐900左右,自行修改"},
{[1]="输入需要的移速"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;720;12;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("720", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(""..b, gg.TYPE_DWORD)
	 gg.toast("中等移速角色修改为:"..b)
	 gg.clearResults()
end


function HS3()
c = gg.prompt({"移速推荐900左右,自行修改"},
{[1]="输入需要的移速"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;770;12;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("770", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(""..c, gg.TYPE_DWORD)
	 gg.toast("快移速角色修改为:"..c)
	 gg.clearResults()
end


function HS4()
d = gg.prompt({"移速推荐1000左右,自行修改"},
{[1]="输入需要的移速"})[1]
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("450;820;12;120", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("820", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll(""..d, gg.TYPE_DWORD)
	 gg.toast("非常快移速角色修改为:"..d)
	 gg.clearResults()
end


function HS5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.0125", gg.TYPE_FLOAT)
	 gg.toast("大视野修改成功")
	 gg.clearResults()
end


function HS6()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00872664619", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("小上帝视角修改成功")
	 gg.clearResults()
end


function HS7()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00392156886;0.00100000005::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00392156886", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.26", gg.TYPE_FLOAT)
	 gg.toast("白色上色修改成功")
	 gg.clearResults()
end


function HS8()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00392156886;0.00100000005::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00392156886", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00001", gg.TYPE_FLOAT)
	 gg.toast("空白上色修改成功")
	 gg.clearResults()
end


function HS9()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.00001;0.00100000005::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00392156886", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end
function HS91()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.26;0.00100000005::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00392156886", gg.TYPE_FLOAT)
	 gg.toast("上色恢复成功")
	 gg.clearResults()
end
function HS92()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.0125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00872664619", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end
function HS93()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.00872664619", gg.TYPE_FLOAT)
	 gg.toast("上帝视角恢复成功")
	 gg.clearResults()
end


function Exit()
gg.toast('🍁游戏外的世界也很美🍁')
print('🌸游戏外的世界也很美🌸')
js = os.date("%Y%m%d%H%M")-bx
gg.alert("本次脚本使用了"..js.."分钟")
print(sj)
os.exit()
end


while true do
sj = os.date("\n%m月%d日 %H:%M:%S")
  if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end
