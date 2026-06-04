function Main()
menu1 = gg.choice({"⚡️全图吸蘑菇⚡️","⚡️秒杀⚡️","⚡️退出脚本⚡️"},nil,"⚡️切勿倒卖，倒卖司马⚡️！！！")
if menu1 == 1 then A() end
if menu1 == 2 then B() end
if menu1 == 3 then C() end
XGCK = -1
end

function A()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1,112,014,848;60;390,020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('60',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('9999', gg.TYPE_DWORD)
gg.toast('全图吸蘑菇开启成功')
gg.clearResults()
end

function B()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1,112,014,848;59;390,020',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('59',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
gg.getResults(99)
gg.editAll('999999', gg.TYPE_DWORD)
gg.toast('秒杀开启成功')
gg.clearResults()
end

function C()
gg.clearList(os.date("结束脚本"))
os.exit()
end
while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
if XGCK == 1 then
Main()
end
end