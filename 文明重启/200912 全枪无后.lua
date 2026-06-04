
function Main()
SN=gg.choice({
"全枪午后",
"退出"
},2018,"大厅中开")
if SN==1 then a()end
if SN==2 then Exit()end
XGCK=-1
end

function a()
gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("4;1;4::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("全枪无后座开启成功")
end

function Exit()
print("别忘了给个关注")
os.exit()
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
Main()
end
end