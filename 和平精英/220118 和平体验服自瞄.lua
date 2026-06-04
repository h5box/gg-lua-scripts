function Main0()
SN = gg.choice({
	 "上分",
	 "妈的柜子动了不玩了",
}, nil, "")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("-511703038;-511697919;-509607930::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-511,703,038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1090519040", gg.TYPE_DWORD)
	 gg.toast("")
	 gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-301790704;-509607933;-298632638::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-301790704", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("#")
end

function HS3()
	 os.exit()
end



Main0()