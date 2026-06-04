DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器



function Main0()
SN = gg.choice({
"2.4倍移速",
"十倍攻速",
"女皇1A秒杀",
"女皇2A秒杀",
"女皇3A秒杀",
"女皇4A秒杀",
"女皇5A秒杀",
"锅巴秒杀",
"无CD",
"安柏1A秒杀",
"安柏2A秒杀",
"安柏3A秒杀",
"安柏4A秒杀",
"浮空",
"拾取范围第一步",
"退出脚本",
}, nil, "作者：凉成，未经允许请勿二改")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
if SN==6 then HS6() end
if SN==7 then HS7() end
if SN==8 then HS8() end
if SN==9 then HS9() end
if SN==10 then HS10() end
if SN==11 then HS11() end
if SN==12 then HS12() end
if SN==13 then HS13() end
if SN==14 then HS14() end
if SN==15 then HS15() end
if SN==16 then os.exit() end
FX1=0
end



function HS1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,869,410,625D;1F;65792D;16D;3512D::49", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("2.4", FLOAT)
gg.toast("移速开启成功")
gg.clearResults()
end
end



function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1743855065D;1::18", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("10", FLOAT)
gg.toast("十倍攻速开启成功")
gg.clearResults()
end
end



function HS3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1054990936", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1054990936",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1134990936", DWORD)
gg.toast("女皇1A秒杀开启成功")
gg.clearResults()
end
end


function HS4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1055885497", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1055885497",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1135885497", DWORD)
gg.toast("女皇2A秒杀开启成功")
gg.clearResults()
end
end



function HS5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1058257460", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1058257460",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1138257460", DWORD)
gg.toast("女皇3A秒杀开启成功")
gg.clearResults()
end
end



function HS6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1058329602", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1058329602",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1138329602", DWORD)
gg.toast("女皇4A秒杀开启成功")
gg.clearResults()
end
end



function HS7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1060667004", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1060667004",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1130667004", DWORD)
gg.toast("女皇5A秒杀开启成功")
gg.clearResults()
end
end



function HS8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.1128000021", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1.1128000021",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("500", FLOAT)
gg.toast("锅巴秒杀开启成功")
gg.clearResults()
end
end



function HS9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4;0;26;27;14;60::21", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("4;60",DWORD , false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)--设置冻结前100个代码
sl=gg.getResultCount() 
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = DWORD,freeze = true,value = "4"}})
end
gg.toast("无CD开启成功")
gg.clearResults()
end
end



function HS10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1052307253", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1052307253",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1132307253", DWORD)
gg.toast("安柏1A秒杀开启成功")
gg.clearResults()
end
end



function HS11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1056058638", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1056058638",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1136058638", DWORD)
gg.toast("安柏2A秒杀开启成功")
gg.clearResults()
end
end



function HS12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1055770070", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1055770070",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1135770070", DWORD)
gg.toast("安柏3A秒杀开启成功")
gg.clearResults()
end
end



function HS13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1058531600", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("1058531600",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1138531600", DWORD)
gg.toast("安柏4A秒杀开启成功")
gg.clearResults()
end
end



function HS14()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("256F;0.0001F::5", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.0001",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0", FLOAT)
gg.toast("浮空开启成功")
gg.clearResults()
end
end


function HS15()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.0F;0.0F;0.0F;2.0F;0.0F;0.0F::61", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("3.0F;2.0F",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("50", FLOAT)
gg.toast("拾取第一步开启成功")
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
