Z=gg.alert("追捕定逃生","开启")
if Z then
if Z==1 then
	 	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.9;2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.9;2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("追捕定逃生开启成功")
	 gg.clearResults() end
	 end