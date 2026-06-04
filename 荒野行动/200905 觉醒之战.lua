function Main0()
SN = gg.choice({
	 "功能",
}, nil, "无限乱斗房间修改成功后退出在进即可")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "觉醒之战",
}, nil, "开无限乱斗房间点觉醒之战成功后退出在进来即是觉醒之战")
if SN==1 then
	 HS2()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20017", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("20072", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
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