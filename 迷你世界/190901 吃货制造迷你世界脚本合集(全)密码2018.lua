if FX2 == nil then
  mm = gg.prompt({[1]="请输入密码"}, {[1]="0"}, {[1]="txet"})
  if mm[1] == "2018" then
    gg.toast("密码正确")
  else
    print(mm[1],"密码错误")
    os.exit()
  end
end


function Main0()
SN = gg.choice({
	 "一级菜单",
	 "❤联机无用区❤",
	 "💙联机可用区💙",
	 "💜坐骑区💜",
	 "💚其他功能区💚",
}, nil, "")
if SN==1 then
	 Main1()
end
if SN==2 then
	 Main5()
end
if SN==3 then
	 Main4()
end
if SN==4 then
	 Main3()
end
if SN==5 then
	 Main2()
end
FX1=0
FX2=0
end

function Main1()
SN = gg.choice({
}, nil, "这是一个公告")
FX1=0
FX2=0
end

function Main5()
SN = gg.multiChoice({
	 "生存人物无敌",
	 "肘子无毒吃出电锯",
	 "星星999+（打死野人）",
	 "返回主页😂",
}, nil, "")
if SN[1]==true then
	 HS8()
end
if SN[2]==true then
	 HS10()
end
if SN[3]==true then
	 HS11()
end
if SN[4]==true then
	 HS56()
end
FX1=0
FX2=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("1120403456;100F;1120403456;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1120403456", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 2143289344}})
	 end
	 gg.toast("人物无敌开启成功成功开启")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12526;0;11302", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11302", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 11005}})
	 end
	 gg.toast("肘子无毒吃出电锯开启成功！")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3101;12526;13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 999999999}})
	 end
	 gg.toast("请打死野人！")
	 gg.clearResults()
end

function HS56()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "穿墙",
	 "无限刷东西  把有三个的东西放在第一格",
	 "无限跳",
	 "返回主页😂",
}, nil, "")
if SN[1]==true then
	 HS15()
end
if SN[2]==true then
	 HS16()
end
if SN[3]==true then
	 HS17()
end
if SN[4]==true then
	 HS18()
end
FX1=0
FX2=0
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("去耍吧😄")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("945804463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("945804463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945804524}})
	 end
	 gg.toast("开启成功如果要联机的华要放在箱子里面才可以用！！！")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("60;180;1;1073741824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("连续点跳跃键😃")
	 gg.clearResults()
end

function HS18()
	 Main0()
end

function Main3()
SN = gg.multiChoice({
	 "羊生化石龙",
	 "羊生麒麟",
	 "羊生小飞鼠",
	 "恢复羊生化石龙",
	 "恢复羊生麒麟",
	 "恢复羊生小飞鼠",
	 "所有坐骑蛋秒孵化",
	 "返回主页😂",
}, nil, "")
if SN[1]==true then
	 HS22()
end
if SN[2]==true then
	 HS23()
end
if SN[3]==true then
	 HS24()
end
if SN[4]==true then
	 HS27()
end
if SN[5]==true then
	 HS28()
end
if SN[6]==true then
	 HS29()
end
if SN[7]==true then
	 HS32()
end
if SN[8]==true then
	 HS33()
end
FX1=0
FX2=0
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3430}})
	 end
	 gg.toast("喂食两只大羊小麦即可出现😝")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3436}})
	 end
	 gg.toast("喂食两只大羊小麦即可出现")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3433}})
	 end
	 gg.toast("喂食两只大羊小麦即可出现")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3430", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("ok😃")
	 gg.clearResults()
end

function HS28()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3436", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3436", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("ok😃")
	 gg.clearResults()
end

function HS29()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3433", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3433", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("ok😃")
	 gg.clearResults()
end

function HS32()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("950;3430;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("西瓜搜索吃货！")
	 gg.clearResults()
end

function HS33()
	 Main0()
end

function Main2()
SN = gg.multiChoice({
	 "能量剑技能无CD",
	 "返回主页😂",
}, nil, "")
if SN[1]==true then
	 HS35()
end
if SN[2]==true then
	 HS42()
end
FX1=0
FX2=0
end

function HS35()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12005;5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("能量剑无限技能开启成功！")
	 gg.clearResults()
end

function HS42()
	 Main0()
end



while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end