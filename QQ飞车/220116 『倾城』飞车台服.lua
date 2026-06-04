function Main()
menu1 = gg.multiChoice({
'秒集气',  
'1.2倍引擎加速', 
'1.6倍引擎加速',  
'2倍引擎加速',   
'xa轻微加速',   
'xa加速',   
'xa超级加速',   
'关闭xa加速',   
'轻飘小喷',   
'导弹免疫',   
'龙卷风免疫',
'退出脚本',}, nil, "展示服装开启，1.6~2容易检测，控制速度还是可以的，终点前挺一挺，不要太快")
 if menu1 == nil then  else
if menu1 [1] == true then y()  end
if menu1 [2] == true then y1() end
if menu1 [3] == true then y2() end
if menu1 [4] == true then y3() end
if menu1 [5] == true then y4() end
if menu1 [6] == true then y5()  end
if menu1 [7] == true then y6() end
if menu1 [8] == true then y7() end
if menu1 [9] == true then y8() end
if menu1 [10] == true then y9() end
if menu1 [11] == true then y10() end
if menu1 [12] == true then Exit() end
end
XGCK=-1
end
function y()  
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.4;0;256D::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0;256D::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("9.9", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("集气开启成功")
end


function y1()  
gg.clearResults() 
gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  
gg.getResults(100)  
gg.editAll("1.2", gg.TYPE_FLOAT) 
gg.clearResults() 
gg.toast("提示:1.2倍速开启成功")
end                           

      
function y2()  
gg.clearResults() 
gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  
gg.getResults(100)  
gg.editAll("1.6", gg.TYPE_FLOAT) 
gg.clearResults() 
gg.toast("提示:1.6倍速开启成功")
end                              


function y3()  
gg.clearResults() 
gg.searchNumber("1;1000:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)  
gg.getResults(100)  
gg.editAll("2", gg.TYPE_FLOAT) 
gg.clearResults() 
gg.toast("提示:2倍速开启成功")
end                          

        
function y4()  
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,143,289,344D;-1;-1;-1;-1;0::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.01", gg.TYPE_FLOAT)
	 gg.toast("提示:xa轻微加速开启成功")
end                          

                                              
function y5()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,143,289,344D;-1;-1;-1;-1;0::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.1", gg.TYPE_FLOAT)
	 gg.toast("提示:xa加速开启成功")
end


function y6()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,143,289,344D;-1;-1;-1;-1;0::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.2", gg.TYPE_FLOAT)
	 gg.toast("提示:xa超级加速开启成功")
end


function y7()
     gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,143,289,344D;-1;-1;-1;-1;1.2::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("提示:1成功")
       gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,143,289,344D;-1;-1;-1;-1;1.1::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("提示:2成功")
	      gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,143,289,344D;-1;-1;-1;-1;1.01::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("提示:xa关闭成功")
end


function y8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("35;1.39999997616::10",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.refineNumber("35", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(25)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("微飘双喷开启成功")
end


function y9()
     gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2D;1;8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99)
     gg.editAll('0', gg.TYPE_FLOAT)
     gg.toast('导弹免疫开启成功')
     gg.clearResults()
end






function y10()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_ANONYMOUS)
	 gg.searchNumber("2D;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1000)
     gg.editAll('0', gg.TYPE_FLOAT)
     gg.toast('龙卷风免疫开启成功')
     gg.clearResults()
end


function y11()

end


function y12()
  
end





function Exit()
print("倾城无敌，QQ:3548213540")
os.exit()
end
function HOME()
lw=1
Main()
end
cs = '3548213540'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
--[[Welcome to Dluae]]