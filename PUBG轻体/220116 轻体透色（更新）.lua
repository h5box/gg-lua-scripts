DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器



function Main0()
SN = gg.choice({
"骁龙625透视",
"枪械上色",
"背包上色（落地捡了背包开）",
"头部上色",
"人物上色",
"（非625处理器）天线V1（推荐）",
"（非625处理器）天线V2",
"退出脚本",
}, nil, "所有功能建议在落地后开启（骁龙625）")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then HS3() end
if SN==4 then HS4() end
if SN==5 then HS5() end
if SN==6 then HS6() end
if SN==7 then HS7() end
if SN==8 then os.exit() end
FX1=0
end



function HS1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("9.76228588e-41F;4.81460921e21F;1.12020172e-19F;1.12020262e-19F;50,331,648D;2.0F;-1,082,130,432D;1,065,353,216D;-127.0F;1,047,920,112D;1,060,205,080D;0.00999999978F::197", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2.0",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("120", FLOAT)
gg.toast("骁龙625透视开启成功")
gg.clearResults()
end
end



function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,669,890,058;1,376,268;1,669,890,060;8,200;1,194,344,467;8,201;1,194,346,786::25", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("8200",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("7", DWORD)
gg.toast("枪械上色开启成功")
gg.clearResults()
end
end



function HS3()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("327,684;1,080,033,284;8,200;1,194,344,453;8,201;1,194,344,457::21", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("8200",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("7", DWORD)
gg.toast("背包上色（落地捡了背包开）开启成功")
gg.clearResults()
end
end



function HS4()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("738,197,522;1,077,936,140;738,197,517;1,077,936,141;8,200;1,194,380,046::21", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("8200",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("7", DWORD)
gg.toast("头部上色开启成功")
gg.clearResults()
end
end



function HS5()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1,080,033,285;524,294;1,080,033,286;8,200;1,194,346,760::17", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("8200",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("7", DWORD)
gg.toast("人物上色开启成功")
gg.clearResults()
end
end



function HS6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.98900693655~0.98900723457", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.98900693655~0.98900723457",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("16123", FLOAT)
gg.toast("天线V1（推荐）开启成功")
gg.clearResults()
end
end



function HS7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.14786802232~0.14786840975", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.14786802232~0.14786840975",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("16123", FLOAT)
gg.toast("天线V2开启成功")
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
