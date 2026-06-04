function Main()
menu1 = gg.choice({
"锁血秒杀[普攻~技能~奥义~秘卷~通灵~血量秒杀]",
"退出脚本"},
nil,'欢迎加入火影忍者脚本修改交流群，群聊号码：630594890')
if menu1 == 1 then a1() end
if menu1 == 2 then Exit() end
XGCK=-1
end

function a1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40D;1D;1.10000002384;1.25::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.10000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
gg.editAll('90000',gg.TYPE_FLOAT)
gg.toast("修改成功")
end

function Exit()
print("")
os.exit() 
end

while(true)
do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false) 
end 
gg.clearResults()
if XGCK==1 then 
Main() 
end
end