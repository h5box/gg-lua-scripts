--GameGuardian--
--multiChoice--多选
--choice--单选
--function--线程/功能
--getResults--获得结果
--clearResults--清除结果
--Type--类型
--DWORD--
--QWORD--
--WORD--
--DOUBLE--
--FLOAT--
--XOR--
--BYTE--
--AUTO--

gg.alert("抵制不良游戏，拒绝盗版游戏。\n注意自我保护，谨防受骗上当。\n适度游戏益脑，沉迷游戏伤身。\n合理安排时间，享受健康生活。", "朕知道了！")
PD2 = 0
if  PD2 == nil then
mm = gg.prompt({[1]="请输入密码"}, {[1]="0"})
if mm[1] == "0" then
gg.toast("密码正确")
else
print(mm[1],"密码错误")
print(sj)
os.exit()
end
end

function DZSH()
menu = gg.multiChoice({
"1.九九NB",
"2.至尊金龙衣服《仓库显示》",
"3.至尊金龙裤子《仓库显示》",
"4.至尊金龙鞋子《仓库显示》",
"5.至尊金龙衣服《初始》",
"6.至尊金龙裤子《初始》",
"7.至尊金龙鞋子《初始》",
"8.退出脚本"},nil,"且行且珍惜"..sj)
   if menu == nil then
  else
    if menu[1] == true then
      HZ1()
    end
    if menu[2] == true then
      HZ2()
      end
      if menu[3] == true then
      HZ3()
      end
      if menu[4] == true then
      HZ4()
      end
      if menu[5] == true then
      HZ5()
      end
      if menu[6] == true then
      HZ6()
      end
      if menu[7] == true then
      HZ7()
      end
      if menu[8] == true then
      HZ8()
      end
  end
    PD1 = 0
    PD2 = 0
end
function HZ1()
gg.clearResults()
gg.searchNumber("1;1D;1E;1F;1B", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;1D;1E;1F;1B", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.toast("测试成功")
end

function HZ2()
gg.clearResults()
gg.searchNumber("403361", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("403361", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("403188", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ3()
gg.clearResults()
gg.searchNumber("404185", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("404085", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("404069", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ4()
gg.clearResults()
gg.searchNumber("405114", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("405114", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("405033", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ5()
gg.clearResults()
gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("403188", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ6()
gg.clearResults()
gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("404007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("404069", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ7()
gg.clearResults()
gg.searchNumber("405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("405011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("405033", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
function HZ8()
gg.toast("此脚本为子风为九九制作")
print("且行且珍惜")
print(sj)
os.exit() 
end

while true do
sj = os.date("\n%c")
  if gg.isVisible(true) then
    PD1 = nil
    gg.setVisible(false)
  end
  if PD1 == nil then
    DZSH()
  end
end