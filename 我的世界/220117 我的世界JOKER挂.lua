function Main()
menu1 = gg.multiChoice({
'生存飞行👶加群：782356260👶',
'全背半创👶加群：782356260👶',
'人物踏空👶加群：782356260👶',
'加速移动👶加群：782356260👶',
'全图穿墙👶加群：782356260👶',
'退出脚本'},nil,'进入地图后即可修改')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then Exit() end
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
    gg.toast("生存飞行已开启")
end
function a2()
gg.clearResults()
gg.searchNumber("1.875;5D~16D;5;10;0.60000002384::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
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
gg.toast("正在修改全背")
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
gg.toast("全背半创已开启")
end
function a3()
gg.clearResults()
gg.setRanges(262207)
gg.searchNumber("2.3510607e-38;0.25;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.3510607e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 2.3510607e-38}})
end
gg.toast("人物踏空已开启")
end
function a4()
gg.clearResults()
input4 = gg.prompt({'请输入所需修改数值（推荐0.2~0.5）\n数值越大越快，不过屏幕会引起不适\n点击确定后请保持疾跑状态'},{[1]=0.2},{[1]='number'});
gg.toast('请保持疾跑状态')
gg.searchNumber('0.1;0;3.4028235e38;0.1;1.1011996e36::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(input4[1], gg.TYPE_FLOAT)
  gg.toast("加速移动已开启")
end
function a5()
gg.clearResults()
gg.searchNumber("68041851;330111580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("330111580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
xp=gg.getResults(9999)
js=gg.getResultCount()
for f = 1, js do
        gg.setValues({
          {
            address = xp[f].address  - 8,
            flags = gg.TYPE_DWORD,
            value = 1
          }
        })
        end
    gg.toast("全图穿墙开启成功")
    end
function Exit()
gg.toast("脚本已结束")
os.exit()
end
function HOME()
lw=1
Main()
end
while(true)do
sj = os.date("%Y年%m月%d日%a %H:%M:%S秒")
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end