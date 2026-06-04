function Main0()
SN = gg.choice({
	 "点我开启",
}, nil, "")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "修改",
	 "退出脚本",
}, nil, "不可实战")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("7000;2052;22", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2052", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("275", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function HS3()
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