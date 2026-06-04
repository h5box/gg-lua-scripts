DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器



function Main0()
SN = gg.choice({
"紫苑(大鬼族)",
"朱莱(鬼人族)",
"卡巴鲁",
"东华",
"爱莲",
"哥布林",
"蜥蜴战士",
"加速",
"退出脚本",
}, nil, "www.kjdao.cc")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
if SN==6 then HS6() end
if SN==7 then HS7() end
if SN==8 then HS8() end
if SN==9 then os.exit() end
FX1=0
end



function HS1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("120;54;1151", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("120;54;1151",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "9999999"}})
end
gg.toast("紫苑(大鬼族)开启成功")
gg.clearResults()
end
end



function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("360;120;3600", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("360;120;3600",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "9999999"}})
end
gg.toast("朱莱(鬼人族)开启成功")
gg.clearResults()
end
end



function HS3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("120;54;1600", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("120;54;1600",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "999999"}})
end
gg.toast("卡巴鲁开启成功")
gg.clearResults()
end
end



function HS4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("165;45;1125", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("165;45;1125",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "999999999"}})
end
gg.toast("东华开启成功")
gg.clearResults()
end
end



function HS5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("165;42;1046", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("165;42;1046",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "999999"}})
end
gg.toast("爱莲开启成功")
gg.clearResults()
end
end



function HS6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("48;13;626", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("48;13;626",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "999999"}})
end
gg.toast("哥布林开启成功")
gg.clearResults()
end
end



function HS7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("45;13;326", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("45;13;326",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "999999"}})
end
gg.toast("蜥蜴战士开启成功")
gg.clearResults()
end
end



function HS8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;0.10000000149;0.02999999933::12", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = FLOAT,freeze = true,value = "4"}})
end
gg.toast("加速开启成功")
gg.clearResults()
end
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
