DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器



function Main0()
SN = gg.choice({
"透视",
"上色",
"退出脚本",
}, nil, "这里是公告")
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then os.exit() end
FX1=0
end



function HS1()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("338,558,000~338,558,990", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("338,558,000~338,558,990",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("999", DWORD)
gg.toast("透视开启成功")
gg.clearResults()
end
end



function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("0.00100040436;2.0;-1.0;500.0;0.25;0.5;-9.28125:25", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("2",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("99999", FLOAT)
gg.toast("上色开启成功")
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
