function Main()
  SN = gg.multiChoice({
  "大瞄（一局一开）",
  "留空备用小喵不用",
  "兵王+菲尔变身无距离",
  "小李无距离",
  "墨菲+伊泽无距离",
  "布鲁+风无痕无距离",
  "小瞄5【任意模式开两枪打开全局有效】",
  "退出脚本"
 }, nil, "")
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
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.99904823303", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.99904823303", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("-999999",gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.9~0.999;0.9~0.999::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.9~0.999;0.9~0.999::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("-999999",gg.TYPE_FLOAT)
gg.toast("大瞄开启成功")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.5;1;2;0.0001;999999;0.1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
	 dzy=jg[i].address
	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 10}})
end
gg.toast("小瞄")
gg.clearResults()
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("35;42;49::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("35;42;49::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("42",gg.TYPE_FLOAT)
gg.toast("兵王无距离开启成功")
end


function d()
gg.clearResults()
gg.searchNumber("2D;1;15;20;35::17", gg.TYPE_AUTO,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('15', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('999', gg.TYPE_FLOAT)
gg.toast('小李无距离')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0;45;50;60::17", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("999999",gg.TYPE_FLOAT)
gg.toast("机甲勇士2形态不减伤")
end


function e()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;20;25::9", gg.TYPE_FLOAT)
gg.searchNumber("15", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('墨菲无距离')
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20;30;40::9", gg.TYPE_FLOAT)
gg.searchNumber("20", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("9999999", gg.TYPE_FLOAT)
gg.toast('伊泽无距离')
gg.clearResults()
end


function f()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1.0;40.0;5.0;10.0;30.0::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('40', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll('999',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('布局距离')
gg.clearResults()
gg.searchNumber('12.0;14.0;16.0;0.75::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('12', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(55)
gg.editAll('999',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('风无痕距离')
end




function g()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.0001;1;0.5;1;2;1;1;1;999999",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("4",gg.TYPE_FLOAT)
gg.toast("小瞄开启")
gg.clearResults()
end

function Exit()
print("xxxxxxxxxxxxxxx")
os.exit()
end
cs = "xxxxxxxxxxxxxxxxx"



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









