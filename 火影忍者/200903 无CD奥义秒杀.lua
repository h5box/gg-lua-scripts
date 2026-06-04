 function Main()
menu1 = gg.choice({
"全忍者无限奥义",
"全忍者奥义秒杀",
"退出脚本"},
nil,'交流群:666666')
if menu1 == 1 then a1() end
if menu1 == 2 then a2() end
if menu1 == 3 then Exit() end
XGCK=-1
end

function a1()
gg.clearResults()
gg.searchNumber('900010401~902990401;39;4:100', gg.TYPE_DWORD,false,gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('4', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999999)
gg.editAll('0',gg.TYPE_DWORD)
gg.toast("全忍者无限奥义成功")
end

function a2()
gg.clearResults()
gg.searchNumber('900010401D~902990401D;39D;1~5:100', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1~5', gg.TYPE_FLOAT,false,gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999999)
gg.editAll('999999999',gg.TYPE_FLOAT)
gg.toast("全忍者奥义秒杀成功")
end

function Exit()
  os.exit()
end

while(true)
do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false) 
end 
gg.clearResults()
if XGCK==1 then Main() end
end