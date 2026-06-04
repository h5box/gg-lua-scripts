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

function DZSH()
menu = gg.multiChoice({
"1.小86牛逼原创",
"2.开启防封【维护完成可正常开启防封拦截】",
"3.和平精英刷点券【最多刷30000点券】【维护中】",
"4.玛莎拉蒂(金)【维护中】",
"5.玛莎拉蒂钥匙×3【在邮件领取】【维护中】",
"6.和平精英M24星空和M416五爪金龙【暂时无需维护】",
"7.绝地求生刺激战场(国服)将于2021年9月29号维护完成",
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
gg.editAll("101004025", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ3()
gg.clearResults()
gg.searchNumber("403361", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("403361", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("101004025", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ4()
gg.clearResults()
gg.searchNumber("330600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("330600100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("330600600", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ5()
gg.clearResults()
gg.searchNumber("330600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("330600200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("330600500", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ6()
gg.clearResults()
gg.searchNumber("搜索", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("搜索", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改值", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ7()
gg.clearResults()
gg.searchNumber("搜索", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("搜索", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改值", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
function HZ8()
gg.toast("且行且珍惜")
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