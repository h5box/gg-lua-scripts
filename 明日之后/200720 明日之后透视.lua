function ZT()
zt = gg.choice({
'1.开启',
'2.退出',},
nil,'看见人和狗了在开启')
if zt == 1 then A() end
if zt == 2 then Exit() end
jd=-1
end

function A()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("1",16)
gg.searchAddress("2EC",4294967295)
if gg.getResultCount() >= 1 then
gg.getResults(1000)
gg.editAll("0",16)
gg.toast("开启成功  请慢慢欣赏")
else
gg.toast("开启失败")
end
gg.clearResults()
os.exit()
end

function Exit()
os.exit()
end
while(true)
do
if gg.isVisible() then
zt=1
gg.setVisible(false) 
end
if zt==1 then ZT()
end
end
