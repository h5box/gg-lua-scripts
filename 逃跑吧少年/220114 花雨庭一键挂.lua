gg.alert("群聊:881402161，使用脚本请保持自己是移动状态")

print('欢迎加入群聊以后要付费咯') 
--Game guardian detection

if gg.isVisible(true) then 
  gg.setVisible(false) 
end 
gg.clearResults()
goto gua

::gua::
menu = gg.choice({'开启外挂❤'}, nil, "QQ群:881402161")
if menu == 1 then goto gua1 end

::gua1::
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
gg.toast("踏空跳开启成功")
gg.clearResults()
gg.searchNumber('0.1;0;3.4028235e38;0.1;1.1011996e36::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll('0.5', gg.TYPE_FLOAT)
gg.toast('加速模式开启成功')
goto sdone

::sdone:: 
print('❤QQ群:881402161❤')
print('快点加入吧')

os.exit()