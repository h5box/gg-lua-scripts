DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器



function Main0()
SN = gg.choice({
"第一步（大厅开启）",
"第二步（局内开启）",
"退出脚本",
}, nil, "仅限塔罗水晶模式觉醒时生效")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then os.exit() end
FX1=0
end



function HS1()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.0;1.0;-1.0;0.0;1.0;0.8", DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.8",DOUBLE , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1", DOUBLE)
gg.toast("第一步（大厅开启）开启成功")
gg.clearResults()
end
end



function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.8", DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.8",DOUBLE , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("0", DOUBLE)
gg.toast("第二步（局内开启）觉醒后生效")
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
