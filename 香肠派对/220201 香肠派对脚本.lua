function Main0()
SN = gg.choice({
	 "〓    防封功能",
	 "〓    武器功能",
	 "〓    人物功能",
	 "〓    退出脚本",
}, nil, "")
if SN==1 then
	 Main14()
end
if SN==2 then
	 Main1()
end
if SN==3 then
	 Main4()
end
if SN==4 then
	 HS7()
end
FX1=0
end

function Main14()
SN = gg.multiChoice({
	 "内存防封［第一步］",
	 "内存防封［第二步］",
	 "内存防封［第三步］",
	 "内存防封［第四步］",
	 "内存防封［第五步］",
	 "返回主页",
}, nil, "冻结间隔0，隐藏23，运行守护3")
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
if SN[5]==true then
	 HS19()
end
if SN[6]==true then
	 HS20()
end
FX1=0
end

function HS15()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-821681929;1627064854;1878526662:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-821681929;1627064854;1878526662", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启20%")
	 gg.clearResults()
end

function HS16()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("234292350;1406741805;1713311223:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("234292350;1406741805;1713311223", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启40%")
	 gg.clearResults()
end

function HS17()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("131144956;219941816;184960973:81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("131144956;219941816;184960973", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启60%")
	 gg.clearResults()
end

function HS18()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2001271628", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001271628", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS19()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("110955228", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("110955228", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("开启100%")
	 gg.clearResults()
end

function HS20()
	 Main0()
end

function Main1()
SN = gg.multiChoice({
	 "聚点1［AKM  M416  AK12］",
	 "聚点2［死噶 ］",
	 "聚点3［UMP9］",
	 "聚点4［DP28］「47子弹开」",
	 "聚点5［大菠萝］",
	 "聚点6［狗砸］",
	 "返回主页",
}, nil, "聚点站着开，持枪开更稳定")
if SN[1]==true then
	 HS8()
end
if SN[2]==true then
	 HS9()
end
if SN[3]==true then
	 HS10()
end
if SN[4]==true then
	 HS11()
end
if SN[5]==true then
	 HS12()
end
if SN[6]==true then
	 HS13()
end
if SN[7]==true then
	 HS3()
end
FX1=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10.39999961853", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10.39999961853", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8.10000038147", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8.10000038147", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7.82000017166", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7.82000017166", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("47D;1D1;D;1D;13F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10.10000038147", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10.10000038147", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12.23999977112", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12.23999977112", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS3()
	 Main0()
end

function Main4()
SN = gg.multiChoice({
	 "人物天线",
	 "人物遁地［开启］",
	 "人物遁地［关闭］",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS21()
end
if SN[2]==true then
	 HS23()
end
if SN[3]==true then
	 HS24()
end
if SN[4]==true then
	 HS22()
end
FX1=0
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1123699481D;1.0F::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.85000002384;1.54999995232;0.44999998808::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.85000002384", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 1.85}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.85;1.54999995232;0.44999998808::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0.85000002384}})
	 end
	 gg.toast("关闭成功")
	 gg.clearResults()
end

function HS22()
	 Main0()
end

function HS7()
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