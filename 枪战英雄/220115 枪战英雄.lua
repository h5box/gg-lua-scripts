--By Only SSTool

function HOME()
  menu = gg.choice({
 "枪战英雄",        
 "修仙结束",},                                                                                                                                                   
nil,'群号623534950')
  if menu == 1 then
    A()
  end
  if menu == 2 then
    Fxit()
  end
  XGCK = -1
end
function A()
  menu1 = gg.multiChoice({
                 "踏空                 人物踏空",
                 "小刀                 全刀加速",
                 "生化                 生化远攻",
                 "子弹                 子弹加速",
                 "远攻                 小刀远攻",
                 "横向                 超级自瞄",
                 "防抖                 枪支防抖",
                 "无后                 枪支无后",
                 "透视                 人物透视",            
                 "手动                 子弹穿墙 ",        
                 "退出                 修仙结束",},                                                                                                                                                   
nil,'群号623534950')
  if menu1 == nil then
  else
    if menu1[1] == true then
      HZ1()
    end
    if menu1[2] == true then
      HZ2()
    end
    if menu1[3] == true then
      HZ3()
    end
    if menu1[4] == true then
      HZ4()
    end
    if menu1[5] == true then
      HZ5()
    end
    if menu1[6] == true then
      HZ6()
    end
    if menu1[7] == true then
      HZ7()
    end
    if menu1[8] == true then
      HZ8()
    end
    if menu1[9] == true then
      HZ9()
    end
    if menu1[10] == true then
      HZ10()
    end
    if menu1[11]== true then
      HOME()
    end
  end
  GLWW = -1
end



function HZ1()
gg.clearResults()
gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.03999999911", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_FLOAT)
gg.toast("踏空开启成功")
gg.setVisible(false)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end

function HZ2()
gg.clearResults()
gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("40", gg.TYPE_FLOAT)
gg.toast("小李飞刀开启成功")
gg.setVisible(false)
gg.searchNumber("40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end

function HZ3()
gg.clearResults()
gg.searchNumber("0.69999998808;1.8;82D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("母体不能用")
gg.setVisible(false)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end



function HZ4()
gg.clearResults()
gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("-40", gg.TYPE_FLOAT)
gg.toast("子弹加速开启成功（你们这群垃圾，享受子弹的摧残吧）")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("-30000", gg.TYPE_FLOAT)
gg.toast("秒杀（不包括所有枪支，子弹会一秒就没有了，手机能匹配到你的最高速度，我已经把它改成3万倍了）")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end


function HZ5()
gg.clearResults()
gg.searchNumber("0.69999998808;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("999", gg.TYPE_FLOAT)
gg.toast("远攻")
gg.setVisible(false)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end


function HZ6()
gg.clearResults()
gg.searchNumber("1.70000004768;1.20000004768;0.10000000149;0.03999999911;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("这个不会上下瞄准，只会横向瞄准，你们自己找准爆头线，这样好爆头！")
gg.setVisible(false)
gg.searchNumber("1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end

function HZ7()
gg.clearResults()
gg.searchNumber("1;50;0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("把修改范围改到2000,如果没有，应该没效果")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end

function HZ8()
gg.clearResults()
gg.searchNumber("1;1400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1;1400", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("把修改范围改到2000,如果没有，应该没效果")
gg.setVisible(false)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
end


function HZ9()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("528422",  gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("528,422", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("透视开启成功")
end


function HZ10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4096D;12D;0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("保存后可恢复")
end


GLWW = -1
function f15()
  print("脚本属于合成，非原创增加和优化部分功能")
  os.exit()
end
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  if XGCK == 1 then
    HOME()
  end
end


--We are the tender love in the world.

--By Only SSTool
