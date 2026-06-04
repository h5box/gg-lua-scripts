function Main0()
SN = gg.choice({
	 "悟空改通天",
	 "通天恢复",
	 "悟空改后羿",
	 "后羿恢复",
	 "悟空改战神",
	 "战神恢复",
	 "悟空改罗宣",
	 "罗宣恢复",
	 "退出脚本",
}, nil, "")
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
if SN==5 then
	 HS7()
end
if SN==6 then
	 HS8()
end
if SN==7 then
	 HS9()
end
if SN==8 then
	 HS10()
end
if SN==9 then
	 HS6()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("40", gg.TYPE_DWORD)
	 gg.toast("通天")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("40;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("通天恢复")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("61", gg.TYPE_DWORD)
	 gg.toast("后羿")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("61;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("后羿恢复")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("64", gg.TYPE_DWORD)
	 gg.toast("战神")
	 gg.clearResults()
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("64;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("64", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("战神恢复")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("1;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("65", gg.TYPE_DWORD)
	 gg.toast("罗宣")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("65;-127;-123;-127;101::50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_DWORD)
	 gg.toast("罗宣恢复")
	 gg.clearResults()
end

function HS6()
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