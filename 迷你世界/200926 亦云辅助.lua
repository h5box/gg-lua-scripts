function Main0()
SN = gg.choice({
	 "   💚功能区💚",
	 "   💙联机区💙",
	 "   ❤️坐骑区❤️",
	 "   🖤解锁区🖤",
}, nil, "欢迎使用亦云辅助脚本")
if SN==1 then
	 Main5()
end
if SN==2 then
	 Main4()
end
if SN==3 then
	 Main3()
end
if SN==4 then
	 Main2()
end
FX1=0
end

function Main5()
SN = gg.multiChoice({
	 "生存无敌",
	 "提房主",
	 "肘子吃出电锯",
	 "星星999+（打死野人）",
	 "返回主页",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS28()
end
if SN[2]==true then
	 HS30()
end
if SN[3]==true then
	 HS31()
end
if SN[4]==true then
	 HS32()
end
if SN[5]==true then
	 HS41()
end
if SN[6]==true then
	 HS45()
end
FX1=0
end

function HS28()
	 gg.clearResults()
gg.searchNumber("1120403456;100F;1120403456;100F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1120403456", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("2143289344", gg.TYPE_DWORD)
gg.searchNumber("9999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.toast(" 人物无敌开启成功成功开启")
gg.toast("666")
end

function HS30()
gg.alert("谨慎开启", "是的", "不是的") --[[ 1 ]]
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_HEAP | gg.REGION_C_DATA | gg.REGION_PPSSPP | gg.REGION_C_ALLOC | gg.REGION_JAVA_HEAP)
gg.searchNumber("9;4.62.3.26;08.22;.6.0.3.；3.38::333", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.getResultCount()
gg.toast("开启成功")
gg.toast("无法使用是手机配置的问题")
end

function HS31()
	 gg.clearResults()
gg.searchNumber('12526;0;11302', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('11302', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('11005', gg.TYPE_DWORD)
gg.toast('肘子无毒吃出电锯开启成功！')
end

function HS32()
	 gg.clearResults()
gg.searchNumber('3101;12526;13', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('13', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('999999999', gg.TYPE_DWORD)
gg.toast('请打死野人！')
end

function HS41()
	 Main0()
end

function HS45()
	 os.exit()
end

function Main4()
SN = gg.multiChoice({
	 "石矛改混乱球",
	 "无限刷东西（把要刷的放在第1格随便3个可以叠加的东西）",
	 "无限跳",
	 "返回主页",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS26()
end
if SN[2]==true then
	 HS27()
end
if SN[3]==true then
	 HS34()
end
if SN[4]==true then
	 HS42()
end
if SN[5]==true then
	 HS46()
end
FX1=0
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 15056}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS27()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("945804463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 945804524}})
	 end
  gg.toast("去耍吧")
end

function HS34()
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
	 gg.toast("去耍吧")
	 gg.clearResults()
end

function HS42()
	 Main0()
end

function HS46()
	 os.exit()
end

function Main3()
SN = gg.multiChoice({
	 "小飞鼠召唤别的坐骑第一步",
	 "第2步，第1步好了之后先召唤出来",
	 "链锯改飞鼠蛋",
	 "卡卡改青玄",
	 "羊生小飞鼠",
	 "羊生陆行鸟",
	 "羊生白象",
	 "恢复羊生化石龙",
	 "恢复羊生麒麟",
	 "恢复羊生小飞鼠",
	 "恢复羊生陆行鸟",
	 "恢复羊生白象",
	 "所有坐骑蛋秒孵化",
	 "返回主页",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS13()
end
if SN[2]==true then
	 HS14()
end
if SN[3]==true then
	 HS15()
end
if SN[4]==true then
	 HS16()
end
if SN[5]==true then
	 HS17()
end
if SN[6]==true then
	 HS18()
end
if SN[7]==true then
	 HS19()
end
if SN[8]==true then
	 HS20()
end
if SN[9]==true then
	 HS21()
end
if SN[10]==true then
	 HS22()
end
if SN[11]==true then
	 HS23()
end
if SN[12]==true then
	 HS24()
end
if SN[13]==true then
	 HS33()
end
if SN[14]==true then
	 HS43()
end
if SN[15]==true then
	 HS47()
end
FX1=0
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16777472;3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS14()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("16777472;3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3434", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3435}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("11005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 951}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("200001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("200001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 140067}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS17()
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
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3439}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3814", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3444}})
	 end
	 gg.toast("用大麦喂食两只大羊即可出现")
	 gg.clearResults()
end

function HS20()
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
	 gg.toast("")
	 gg.clearResults()
end

function HS21()
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
	 gg.toast("")
	 gg.clearResults()
end

function HS22()
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
	 gg.toast("")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3439", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("3403;3403;3444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3444", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 3814}})
	 end
	 gg.toast("")
	 gg.clearResults()
end

function HS33()
	 gg.clearResults()
gg.searchNumber("951;3430;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(20)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("小飞鼠秒孵成功开启")
gg.clearResults()
gg.searchNumber("953;3439;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("陆行鸟秒孵成功开启")
gg.clearResults()
gg.searchNumber("950;3433;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("花石龙秒孵成功开启")
gg.clearResults()
gg.searchNumber("952;3436;108000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("108000", gg.TYPE_DWORD, false)
gg.getResults(50)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("麒麟秒孵成功开启")
gg.searchNumber("1111111", gg.TYPE_DWORD, false)
gg.toast("亦云制作")
end

function HS43()
	 Main0()
end

function HS47()
	 os.exit()
end

function Main2()
SN = gg.multiChoice({
	 "能量剑技能无CD",
	 "解锁火箭背包",
	 "解锁弩",
	 "解锁火箭筒",
	 "解锁弹弓",
	 "解锁豪华床",
	 "解锁坚冰方块",
	 "返回主页",
	 "退出脚本",
}, nil, "")
if SN[1]==true then
	 HS29()
end
if SN[2]==true then
	 HS35()
end
if SN[3]==true then
	 HS36()
end
if SN[4]==true then
	 HS37()
end
if SN[5]==true then
	 HS38()
end
if SN[6]==true then
	 HS39()
end
if SN[7]==true then
	 HS40()
end
if SN[8]==true then
	 HS44()
end
if SN[9]==true then
	 HS48()
end
FX1=0
end

function HS29()
	 gg.clearResults()
gg.searchNumber('12005;5F', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('5', gg.TYPE_FLOAT, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_FLOAT)
gg.toast('能量剑无限技能开启成功！')
end

function HS35()
	gg.clearResults()
gg.searchNumber('12253;91', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('91', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('火箭背包解锁成功😱！')
end

function HS36()
 gg.clearResults()
gg.searchNumber('12283;61', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('61', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('弩解锁成功！')
end

function HS37()
	 gg.clearResults()
gg.searchNumber('12284;62', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('62', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('火箭筒解锁成功！')
end

function HS38()
	 gg.clearResults()
gg.searchNumber('12281;60', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('60', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('弹弓解锁成功！')
end

function HS39()
	gg.clearResults()
gg.searchNumber('884;31', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('31', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('豪华床解锁成功！')
end

function HS40()
	 gg.clearResults()
gg.searchNumber('963;39', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('39', gg.TYPE_DWORD, false, gg.SIGN_DWORD, 0, -1)
gg.getResults(100)
gg.editAll('0', gg.TYPE_DWORD)
gg.toast('坚冰解锁成功！')
end

function HS44()
	 Main0()
end

function HS48()
	 os.exit()
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