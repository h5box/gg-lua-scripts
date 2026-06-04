function Main0()
SN = gg.choice({
	 "开启透视",
	 "退出脚本",
}, nil, "www.kjdao.cc")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX1=0
end

function HS2()
	 gg.clearResults()gg.setRanges(1048576)gg.searchNumber("2;5;6;7;-7.41840401e-40;3.76158192e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)gg.getResults(300)gg.editAll("0", gg.TYPE_FLOAT)gg.toast("透视开启成功")gg.
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