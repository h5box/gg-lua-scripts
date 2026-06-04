function Main0()
SN = gg.choice({
	 "开启",
	 "退出脚本",
}, nil, "小猪佩奇身上纹www.kjdao.cc")
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
	 gg.setRanges(16384)
	 gg.searchNumber("-7.15911681e24F;9.99999987e14F;0.00001F;-1.30927611e25F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.00001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("Xa人机原地刀人")
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