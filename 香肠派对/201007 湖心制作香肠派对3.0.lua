--湖心制作
--湖心制作
--湖心制作


--功能--
ql=gg.clearResults
nc=gg.setRanges
ssgs=gg.searchNumber
ssfw=gg.getResults
xg=gg.editAll
xmxx=gg.toast
--内存--
Jh=gg.REGION_JAVA_HEAP
A=gg.REGION_ANONYMOUS
ca=gg.REGION_C_ALLOC
B=gg.REGION_BAD
Xs=gg.REGION_CODE_SYS
Xs=gg.REGION_CODE_APP
Ch=gg.REGION_C_HEAP
V=gg.REGION_VIDEO
--类型--
AA=gg.TYPE_AUTO
DD=gg.TYPE_DWORD
FF=gg.TYPE_FLOAT
EE=gg.TYPE_DOUBL
WW=gg.TYPE_WORD
BB=gg.TYPE_BYTE
QQ=gg.TYPE_QWORD
XX=gg.TYPE_XOR
function Main()
menu = gg.choice({
"上色区",
"聚点",
"其他",
"退出脚本"
},2018,"湖心制作，禁止倒卖二改")
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then Exit() end
XGCK=-1
end

function A()
menu1 = gg.multiChoice({
"🌹🌹8200上色🌹🌹",
"🌹🌹大部分东西上色（除了人物）🌹🌹",
"🌹🌹人物透明化上色🌹🌹",
"🌹🌹返回修仙🌹🌹",
},nil,"可以一起使用")
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end


function B()
menu1 = gg.multiChoice({
"🌹🌹SCAR_L聚点🌹🌹",
"🌹🌹加特林聚点🌹🌹",
"🌹🌹返回修仙🌹🌹",
},nil,"妈妈再也不用担心我瞄不准了")
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function C()
menu1 = gg.multiChoice({
"🌹🌹视角自定义变化🌹🌹",
"🌹🌹人物变大🌹🌹",
"🌹🌹返回修仙🌹🌹",
},nil,"没啥用")
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function a1()
ql()
nc(V)
ssgs("1,194,347,011;8,200;1,194,347,014",DD,false,gg.SIGN_EQUAL,0,-1)
ssgs("8200",DD,false,gg.SIGN_EQUAL,0,-1)
ssfw(99)
xg("6",DD)
xmxx("上色开启成功")
ql()
end


function a2()
ql()
nc(V)
ssgs('1,669,398,528;32,773;-2,144,337,918',DD,false,gg.SIGN_EQUAL,0,-1)
ssgs('-2,144,337,918',DD,false,gg.SIGN_EQUAL,0,-1)
ssfw(99)
xg('6',DD)
xmxx('上色开启成功')
ql()
end

function a3()
ql()
nc(V)
ssgs("71;8;48;74;3;12;9;-128;1;99;8200D",BB, false,gg.SIGN_EQUAL,0, -1)
ssgs("71",BB, false,gg.SIGN_EQUAL,0,-1)
ssfw(100)
xg("6",BB)
xmxx("开启成功")
ql()
end


function b1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9.52000045776;-3.48875589e-30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.52000045776", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(200)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast("SCAR_L聚点开启成功")
	 gg.clearResults()
end

function b2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("-2.67527564e-15;9.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("加特林聚点开启成功")
	 gg.clearResults()
end

function c1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('0.34999999404;0.55000001192;-3.79999995232',FF,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.34999999404',FF,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(99)
fw = gg.prompt({
    i = "随便修改"
  }, {i = "0"})
  gg.editAll(fw.i, FF)
  end
  
  function c2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;1.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 3}})
	 end
	 gg.toast("人物变大开启成功")
	 gg.clearResults()
end
  
function Exit()
print("湖心制作，禁止二改")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = "禁止倒卖二改"
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










