function Main()
menu = gg.choice({
"㊣一键开启→功能①②③④(训练营吐球分身后开)",
"①大厅开→XS防(可玩双刷和五人大逃杀)",
"②大厅开→1.59倍调节杆(调节杆调最大)",
"③一局一开→吐球加速(稳定版)",
"④训练场吐一颗球开→冻结加速(不崩溃全新功能)",
"⑤训练营开→顺合(我修改的数值小,可能看不见效果)",
"⑥训练场开→1.4倍视野(分身后退训练营再进去开)",
"⑦训练营开→分身加速(确保重新进了两次游戏后开)",
"⑧训练营开→背景黄棕色(实战有效果)",
"⑨训练营开→自建不闪吐球加速(缺点是变慢了)",
"☯退出脚本→"},
nil,"")
if menu == 1 then OVER() end
if menu == 2 then A() end
if menu == 3 then B() end
if menu == 4 then C() end
if menu == 5 then D() end
if menu == 6 then E() end
if menu == 7 then F() end
if menu == 8 then G() end
if menu == 9 then H() end
if menu == 10 then I() end
if menu == 11 then Exit() end
XGCK=-1
end
function A()
gg.clearResults()
gg.setRanges(32768)
gg.searchNumber("4096;16384:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>2 then sl=2 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16384}})
end
gg.toast("XS防")
gg.clearResults()
end
function B()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.5F;0.82332760096F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>2 then sl=2 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.59}})
end
gg.toast("1.59倍调节杆")
gg.clearResults()
end
function C()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.80259693e-45F;0.11999999732F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.toast("吐球加速")
gg.clearResults()
end
function D()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.80259693e-45F;0.11999999732F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>3 then sl=3 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.07}})
end
gg.toast("吐球加速冻结")
gg.clearResults()
end
function E()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.0078125E;1F;0.58823525906F;1.68155816e-43F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>2 then sl=2 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.06}})
end
gg.toast("顺合")
gg.clearResults()
end
function F()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.01F~0.03F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("1.4倍视野第一步")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.01F~0.03F;45F~50F;21F~23F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("1.4倍视野第二步")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.01F~0.03F;45F~50F;21F~23F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>10 then sl=10 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.4}})
end
gg.toast("1.4倍视野开启")
gg.clearResults()
end
function G()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("4.9399971962F;0.05999999866F;0.16010081768F;0.07142863423F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.05999999886", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -100}})
end
gg.toast("分身加速")
gg.clearResults()
end
function H()
gg.clearResults()
gg.setRanges(1048576)
gg.searchNumber("3.0616168e-17F;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>20 then sl=20 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
end
gg.toast("背景黄棕色")
gg.clearResults()
end
function I()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.80259693e-45F;0.11999999732F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>3 then sl=3 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.082}})
end
gg.toast("吐球加速冻结")
gg.clearResults()
end
function OVER()
gg.clearResults()
gg.setRanges(32768)
gg.searchNumber("4096;16384:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>2 then sl=2 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 16384}})
end
gg.toast("XS防")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2.80259693e-45F;0.11999999732F:100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.11999999732", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>3 then sl=3 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.07}})
end
gg.toast("吐球加速冻结")
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("1.5F;0.82332760096F:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>1 then sl=1 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.59}})
end
gg.toast("1.59倍调节杆")
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("0.0078125E;1F;0.58823525906F;1.68155816e-43F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>2 then sl=2 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.06}})
end
gg.toast("顺合")
gg.clearResults()
end
function HOME()
lw=1
Main()
end
function Exit()
print("走了就别回来了")
os.exit()
end
cs = "👏🏻"
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