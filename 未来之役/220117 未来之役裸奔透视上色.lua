function Main0()
SN = gg.choice({
	 "青青草原色",
	 "透明",
	 "蓝光",
	 "绿光",
}, nil, "www.kjdao.cc（没效果反馈")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("8200;96;112;8196;8199;8204;8208;1280;11;12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6", gg.TYPE_DWORD)
	 gg.toast("024")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("8200;96;112;8196;8199;8204;8208;1280;11;12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("7", gg.TYPE_DWORD)
	 gg.toast("024")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("8200;96;112;8196;8199;8204;8208;1280;11;12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_DWORD)
	 gg.toast("024")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(gg.REGION_VIDEO)
	 gg.searchNumber("8200;96;112;8196;8199;8204;8208;1280;11;12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("11", gg.TYPE_DWORD)
	 gg.toast("024")
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