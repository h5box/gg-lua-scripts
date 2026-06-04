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

gg.alert("不喜勿喷，我只是一个普通人。\n注意自我保护，谨防受骗上当。\n适度游戏益脑，沉迷游戏伤身。\n合理安排时间，享受健康生活。", "我明白了！")

function DZSH()
menu = gg.multiChoice({
"1.吕布2技能改守约2技能",
"2.5v5改死斗模式",
"3.1v1改5v5",
"4.无尽0元别隐藏4",
"5.无尽99999暴击",
"6.1v1改3v3",
"7.5v5秒复活",
"8.退出脚本"},nil,"倒卖司马"..sj)
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
gg.searchNumber("12320", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12320", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("19620", gg.TYPE_DWORD)
gg.toast("该技能开启成功")
gg.clearResults()
end

function HZ2()
gg.clearResults()
gg.searchNumber("20011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("20999", gg.TYPE_DWORD)
gg.toast("防御塔不攻击开启成功")
gg.clearResults()
end

function HZ3()
gg.clearResults()
gg.searchNumber("20001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("20011", gg.TYPE_DWORD)
gg.toast("地图开启成功")
gg.clearResults()
end

function HZ4()
gg.clearResults()
gg.searchNumber("2140;130;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2140", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("无尽0元开启成功")
gg.clearResults()
end

function HZ5()
gg.clearResults()
gg.searchNumber("2140;130;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("130;2000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ6()
gg.clearResults()
gg.searchNumber("20001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("20001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("20002", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function HZ7()
gg.clearResults()
gg.searchNumber("20011;15000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("15000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
function HZ8()
gg.toast("贩卖司马")
print("贩卖司马")
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