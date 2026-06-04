gg.alert('滋味(｡･ω･｡)ﾉ♡\n\n喜欢有什么用。遥不可及的，怎么能有所期翼💔')

function Main()
menu1 = gg.choice({
'全英雄透视',
'干将视野加了大招在开',
'退出脚本',},
nil,'交流群：869779798')
if menu1 == 1 then a() end
if menu1 == 2 then b() end
if menu1 == 3 then Exit() end
XGCK=-1
end

function a()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("14.45322227478;0.35836800933;0.93358039856::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("14.45322227478", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("40", gg.TYPE_FLOAT)
gg.toast("30%")

gg.clearResults()
gg.searchNumber("40;0.35836800933;0.93358039856::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.35836800933", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0.54", gg.TYPE_FLOAT)
gg.toast("60%")
gg.clearResults()
gg.toast("王者视野成功")
end
function b()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16.62120437622;0.35836797953;0.93358039856::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16.62120437622", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("40", gg.TYPE_FLOAT)
gg.toast("30%")

gg.clearResults()
gg.searchNumber("40;0.35836797953;0.93358039856::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.35836797953", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0.54", gg.TYPE_FLOAT)
gg.toast("60%")
gg.clearResults()
gg.toast("干将视野成功")
end
 




 function Exit()
print("愿夜里能有人为你点灯你爱的人能住进你的人生")
  os.exit()
end
cs = "CEO滋味"
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