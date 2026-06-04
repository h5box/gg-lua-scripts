function Main0()
SN = gg.choice({
	 "粉丝内部功能",
	 "退出",
}, nil, "玄羽nb就完事了，说玄羽二改的，就是喷子，故意的，羡慕而已")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS4()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "无限夹子第一步『大厅开』只能追铺者",
	 "无限夹子第二步『看上面的提示』",
	 "返回",
}, nil, "玄羽制作，想二改就二改，反正我累了，为可爱粉丝制作")
if SN[1]==true then
	 HS2()
end
if SN[2]==true then
	 HS5()
end
if SN[3]==true then
	 HS3()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功，请开启下一步")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;120;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150;120;60::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1", gg.TYPE_FLOAT)
	 gg.toast("第二步开启完毕，玄羽nb")
	 gg.clearResults()
end

function HS3()
	 Main0()
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