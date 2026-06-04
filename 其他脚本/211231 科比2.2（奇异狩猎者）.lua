function Main0()
SN = gg.choice({
	 "公告",
	 "奇艺狩猎者",
	 "退出",
}, nil, "只有奇异狩猎者")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS2()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "只有奇异狩猎者，因为其他懒得写")
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("403251", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("403504", gg.TYPE_DWORD)
	 gg.toast("好了")
	 gg.clearResults()
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