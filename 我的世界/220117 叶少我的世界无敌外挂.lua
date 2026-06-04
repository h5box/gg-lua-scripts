function Main()
menu1 = gg.multiChoice({
'叶少的生存飞行',
'叶少的真创背包',
'叶少的创造之手',
'选择退出脚本'})
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then Exit() end
end
XGCK=-1
end
function a1()
gg.clearResults()
gg.searchNumber("297420291", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
xp=gg.getResults(9999)
js=gg.getResultCount()
for f = 1, js do
        gg.setValues({
          {
            address = xp[f].address + 16,
            flags = gg.TYPE_DWORD,
            value = 1
          }
        })
        end
    gg.toast("叶少已为您开启飞天")
end
function a2()
gg.clearResults()
gg.searchNumber("-1588916341", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
xp=gg.getResults(9999)
js=gg.getResultCount()
for f = 1, js do
        gg.setValues({
          {
            address = xp[f].address - 8,
            flags = gg.TYPE_DWORD,
            value = 1
          }
        })
        end
gg.toast("叶少的假创背开启成功")
end
function a3()
gg.clearResults()
gg.searchNumber("2.8025969e-43;1.875;5D~16D;8.4077908e-44;9.219563e-41::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5~16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
xp=gg.getResults(9999)
js=gg.getResultCount()
for f = 1, js do
gg.setValues({
          {
            address = xp[f].address - 8,
            flags = gg.TYPE_DWORD,
            value = 1
          }
        })
        end
gg.toast("叶少的真创背开启成功")
end
function Exit()
gg.toast("脚本已结束感谢支持，作者叶少")
os.exit()
end
function HOME()
lw=1
Main()
end
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