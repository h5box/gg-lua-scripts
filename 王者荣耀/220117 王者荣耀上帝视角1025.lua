function Main()
JiuYan = gg.choice({
'视角提高-',
'点击退出',},
nil," 稳定排位,请进入游戏内开启,否则无效。                          刺激战场1级小号过模拟器检测永久卡6元联系：156172003。真香免费辅助交流群：903176875")
if JiuYan == 1 then M1() end--视角提高
if JiuYan == 2 then M2() end--点击退出
XGCK=-1
end
--------------------------------------------------------------------------------------------------------------------------------
function M1()--视角提高
gg.clearResults()
gg.searchNumber("2.09927845001;3.73205065727;-1.00060009956;-1;-0.60018002987::60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("-1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("-1.7", gg.TYPE_FLOAT)
gg.toast('开启成功')
end
Main()
end
--------------------------------------------------------------------------------------------------------------------------------
function M2()--点击退出
print('刺激战场1级小号过模拟器检测永久卡6元')
print('QQ:156172003')
gg.toast("真香免费辅助：903176875")
os.exit()
end
cs = '真香免费辅助群：903176875'
while(true)
do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false) 
end 
gg.clearResults()
if XGCK==1 then Main() end
end
--------------------------------------------------------------------------------------------------------------------------------