gg.alert("念妹测试-Zindy")
function Main()
menu = gg.choice({"1角色天赋(大厅开)","2高跳疾跑(大厅开)","3全图透视(开局开)","4倒地自救(倒地开)","5跳跃穿墙(大厅开)","6无视夹子(开局开)","7火箭攻速(大厅开)","8血报加强(大厅开)","by-残念哥哥 zindy","退出脚本"},nil,"选择开启功能[By zindy]")
if menu==1 then F1()end
if menu==2 then F2()end
if menu==3 then F3()end
if menu==4 then F4()end
if menu==5 then F5()end
if menu==6 then F6()end
if menu==7 then F7()end
if menu==8 then F8()end
if menu==9 then F9()end
if menu==10 then Exit()end
vis=false
end

-----1角色天赋(大厅开)-----
function F1()
gg.clearResults()
gg.searchNumber("0.2;0.3;0.4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.999", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.06;0.09;0.12::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.08;0.12;0.16::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.999", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.18;0.27;0.36::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.999", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.3;0.45;0.6::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.999", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("60;45;30::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("160;120;80::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.1;0.15;0.2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.999", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("100;75;50::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("40;60;80::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3;4.5;6::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("全角色变态天赋开启成功")
gg.setVisible(false)
gg.clearResults()
end

-----2高跳疾跑(大厅开)-----
function F2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.3;0.3::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("疾跑9999秒")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5;0.4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("跳高肾上激素9999秒开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----3全图透视(开局开)-----
function F3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;12;8;2.5;1::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("全图透视已开启")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----4倒地自救(倒地开)-----
function F4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;100;0.3::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("无敌开启")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----5跳跃穿墙(大厅开)-----
function F5()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----6无视夹子(开局开)-----
function F6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;-0.75;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----7火箭攻速(大厅开)-----
function F7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.1;-0.06;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0.5", gg.TYPE_FLOAT)
gg.toast("火箭筒攻速0.5开启")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----8血报加强(大厅开)-----
function F8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("60;10;13D::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("血包加强1000开启")
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----不知道怎么搞退出，自己中断脚本吧-----
function F9()
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
end

-----退出脚本-----
function Exit()
print("by-Zindy")
os.exit()
end

Main() 
while(true)do
 if gg.isVisible(true) then
 vis=true 
 gg.setVisible(false) 
 end 
 gg.clearResults()
 if vis then
 Main() 
end 
end