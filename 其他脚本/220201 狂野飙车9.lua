function Main0()
SN = gg.choice({
	 "秒集气",
	 "恢复集气",
	 "退出脚本",
}, nil, "")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS4()
end
if SN==3 then
	 HS3()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("92352512;-301987312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-301987312", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-290256380", gg.TYPE_DWORD)
	 gg.toast("秒集气修改成功")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("92352512;-290256380", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-290256380", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-301987312", gg.TYPE_DWORD)
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