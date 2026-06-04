function Main()
menu = gg.choice({
'透视类',
'功能类',
'退出脚本'},
nil,'加群永久更新779556450')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.choice({
'中画质透视',
'中画质白色低画质绿色上色',
'低画质透视',
'修复版中画',
'半完美中画',
'中画质透视②',
'中画质透视③',
'新自动上色',
'返回上一页'},
nil,'加群779556450')
if menu1 == 1 then a1() end
if menu1 == 2 then a2() end
if menu1 == 3 then a3() end
if menu1 == 4 then a4() end
if menu1 == 5 then a5() end
if menu1 == 6 then a6() end
if menu1 == 7 then a7() end
if menu1 == 8 then a8() end
if menu1 == 9 then HOME() end
GLWW=-1
end



function B()
menu1 = gg.choice({
'完美透③',
'完美透④',
'天色变暗',
'自动上色②',
'低画质完美透①',
'低画质完美透②',
'低画质自动上色',
'加速',
'秒换弹',
'返回上一页'},
nil,'群779556450')
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then b4() end
if menu1 == 5 then b5() end
if menu1 == 6 then b6() end
if menu1 == 7 then b7() end
if menu1 == 8 then b8() end
if menu1 == 9 then b9() end
if menu1 == 10 then HOME() end
GLWW=-1
end



function a1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.75000023842;5.58261894e-40;3.87506508827;8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("透视")
end



function a2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.62876077e-29;2",  gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("上色")
end



function a4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(10000)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.75000548363;8.43134613e-27;8.38085903e-27;3.87506508827", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("3.75000548363", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("2999",gg.TYPE_FLOAT)
gg.toast("完美透视")
end



function a5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.43134613e-27;8.38085903e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.38085903e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.38085903e-27;8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("99",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.38085903e-27;8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.38085903e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function a8()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.40779079e-45;-1.02855798e-38;3.75000309944", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.40779079e-45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1.02855798e-38;8.7847666e-27;2.25000834465", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.7847666e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("成功")
end



function b4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.25000834465;4.74083068e21;8.38085903e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.38085903e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.25000834465;4.74083068e21;8.40779079e-45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.40779079e-45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("6.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("6.5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("25",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.40779079e-45;8.38085903e-27;8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b6()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("-1.02855798e-38;8.7847666e-27;2.25000834465", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.7847666e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b7()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8.40779079e-45;8.38085903e-27;8.43134613e-27", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8.40779079e-45", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("999",gg.TYPE_FLOAT)
gg.toast("开启成功")
end



function b8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4.28000020981;3.20000004768::5", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("4.28000020981", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(1000)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("开启成功")
end

function b9()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("5.72698797e27F;-5.72940759e27F;-2.78601512e28F;-3.74440972e28F:13", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("-3.74440972e28F", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("成功")
end



function Exit()
print("群779556450")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '群779556450'
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










