DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
----全源

gg.alert("辉腾科技")
function Main0()
SN = gg.choice({
"遇墙飞天",
"退出脚本",
}, nil, "辉腾科技#")
if SN==1 then HS0() end
if SN==2 then os.exit() end
if SN==3 then HS2() end
if SN==4 then HS3() end
if SN==5 then HS4() end
if SN==6 then HS5() end
if SN==7 then HS6() end
if SN==8 then HS7() end
if SN==9 then HS8() end
if SN==10 then HS9() end
if SN==11 then HS10() end
if SN==12 then os.exit() end
FX1=0
end

function HS0()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.4999999702F;0.05000000075F;0.25F::9", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("0.25",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("40", FLOAT)
gg.toast("遇墙飞天开启成功")
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
