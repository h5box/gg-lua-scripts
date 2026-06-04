function Main0()
SN = gg.choice({
	 "全技能无CD",
	 "退出修仙",
}, nil, "大厅开启")
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
	 gg.setRanges(4)
	 gg.searchNumber("11D;1;3D;7D::150", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-15", gg.TYPE_DOUBLE)
	 gg.toast("无CD修改成功")
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