--优秀解
--解密想法：加密可以，但还是差了点，改版本和源码有些许区别，但是我尽可能地还原了，需要写法的可以自己参考。还有原脚本写法有些地方可以优化自己好好想想吧
function PS() end--优秀解
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end--优秀解
yx3=os.date("%Y年-%m月-%d日-%H时-%M分")
yx1=[[辅助说明：功能需要隐藏{23}旁路选择[没有]功能才有效果\n北京时间:]]
yx2=[[欢迎使用海贼王热血航线3.0版裸奔功能\n使用前记得隐藏(23)旁路选择(没有)\n网站 www.kjdao.net]]
yx4=[[\n]]
gg.alert(""..yx1..yx3..yx4.."")
function Main()
  menu = gg.multiChoice({
  "匹配范围(游戏开)",
  "排位增伤(大厅开)",
  "副本秒杀(大厅开)",
  "自慰刷券(登录界面开)",
  "副本范围(大厅开)",
  "山智无CD(进游戏开)",
  "路飞无限大招(进游戏开)",
  "内置防封(大厅开)",
  "再见"
}, nil, yx2)
if menu == nil then
else
  if menu[1] == true then
    A1()
  end--优秀解
  if menu[2] == true then
    A2()
  end--优秀解
  if menu[3] == true then
    A3()
  end--优秀解
  if menu[4] == true then
    A4()
  end--优秀解
  if menu[5] == true then
    A5()
  end--优秀解
  if menu[6] == true then
    A6()
  end--优秀解
  if menu[7] == true then
    A7()
  end--优秀解
    if menu[8] == true then
    A8()
  end--优秀解
  if menu[9] == true then
    Exit()
  end--优秀解
  end--优秀解
XGCK = -1
       end--优秀解
   
function A1()
so=gg.getRangesList('libUE4.so')[1].start
  py=0x65426768
  setvalue(so+py,16,-1.000024E-5)
gg.toast("开启成功")
       end--优秀解
       
function A2()
so=gg.getRangesList('libUE4.so')[1].start
  py=0x42251432
  setvalue(so+py,16,0)
gg.toast("开启成功")
end--优秀解

function A3()
so=gg.getRangesList('libUE4.so')[1].start
  py=0x21804920
  setvalue(so+py,16,0)
gg.toast("开启成功")
end--优秀解
       
       function A4()
so=gg.getRangesList('libUE4.so')[1].start
  py=0x21806392
  setvalue(so+py,16,0)
       gg.toast("开启成功")
       end--优秀解
       
       function A5()
so=gg.getRangesList('libUE4.so')[1].start
  py=0x50830120
  setvalue(so+py,16,0)
  gg.toast("开启成功")
       end--优秀解

       function A7()
so=gg.getRangesList('libUE4.so')[1].start
  py=0x63200324
  setvalue(so+py,16,0)
gg.toast("开启成功")
       end--优秀解

       function A8()
	so=gg.getRangesList('libUE4.so')[1].start
  py=0x62586160
  setvalue(so+py,16,300)
  gg.toast("开启成功")
       end--优秀解
       
function A9()
	so=gg.getRangesList('libUE4.so')[1].start
  py=0x41040092
  setvalue(so+py,16,0)
  	so=gg.getRangesList('libUE4.so')[1].start
  py=0x42455580
  setvalue(so+py,16,1.39176963E-41)
  	so=gg.getRangesList('libUE4.so')[1].start
  py=0x42456340
  setvalue(so+py,16,0)
  gg.toast("开启成功")
end--优秀解


function Exit()
gg.skipRestoreState()
  os.exit()
  gg.setVisible(true)
end--优秀解


while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end--优秀解
  gg.clearResults()
  if XGCK == 1 then
    Main()
 end--优秀解
 end--优秀解
