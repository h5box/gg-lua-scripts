function Main0()
SN = gg.choice({
	 "幻之试炼密卷无cd秒杀",
	 "退出脚本",
	 "密卷秒杀",
	 "密卷无cd",
	 "退出脚本",
}, nil, "先开秒杀，再开无cd")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS5()
end
if SN==3 then
	 HS2()
end
if SN==4 then
	 HS3()
end
if SN==5 then
	 HS4()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
}, nil, "莫真汐666")
FX1=0
end

function HS5()
	 os.exit()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("947130101D;450D;0.2~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.2~5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("66", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("947130101;450", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("450", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS4()
	 os.exit()
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