function Main()
menu = gg.choice({
"上色区",
"退出脚本"
},2018,"湖心制作，禁止倒卖二改")
if menu == 1 then A() end
if menu == 2 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
"🌹🌹8200上色🌹🌹",
"🌹🌹大部分东西上色（除了人物）🌹🌹",
"🌹🌹返回修仙🌹🌹",
},nil,"可以两个一起使用")
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end

function a1()
gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_BAD,gg.REGION_VIDEO))
gg.searchNumber("1,194,347,011;8,200;1,194,347,014",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("8200",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll("6",gg.TYPE_DWORD)
gg.toast("上色开启成功")
gg.clearResults()
end


function a2()
gg.clearResults()
gg.setRanges(bit32.bxor(gg.REGION_BAD,gg.REGION_VIDEO))
gg.searchNumber('1,669,398,528;32,773;-2,144,337,918',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('-2,144,337,918',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('6',gg.TYPE_DWORD)
gg.toast('上色开启成功')
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










