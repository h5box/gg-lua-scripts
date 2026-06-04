function Main0()
SN = gg.choice({
	 "全屏眩晕已部署",
	 "退出"
}, nil, "祝大家玩的愉快")
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
	 gg.setRanges(32)
	 gg.searchNumber("1003D;304D;2;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4096;12;0.4F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("第二步开启成功")
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