function Main0()
SN = gg.choice({
	 "透视",
	 "马赛克","退出"
}, nil, "我是一个默默无闻的公告")
if SN==1 then
	 HS5()
end
if SN==2 then
	 HS4()
end
if SN==3 then
	 os.exit()
end
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("3.87548828125;1.12050015e-19;1.66289773e-19;2.0;9.99999997e-7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("透视修改成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("24,576.0078125;2.0;1.66230255e-19;1.12020327e-19::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("120", gg.TYPE_FLOAT)
	 gg.toast("马赛克修改成功")
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