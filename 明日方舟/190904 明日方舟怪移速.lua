function Main0()
SN = gg.choice({
	 "进游戏看到怪出来在开，一次只能开一个",
	 "解除0.1",
	 "解除0.5",
	 "解除定怪",
	 "定怪",
	 "开启0.1",
	 "0.5",
	 "离开",
}, nil, "葫芦使我快乐！！！")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS8()
end
if SN==3 then
	 HS7()
end
if SN==4 then
	 HS6()
end
if SN==5 then
	 HS5()
end
if SN==6 then
	 HS2()
end
if SN==7 then
	 HS3()
end
if SN==8 then
	 HS4()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "嘤嘤嘤，送点葫芦吧，三楼昵称坤坤你萌死了")
FX1=0
end

function HS8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.01;1;1;0;1;1::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.25;1;1;0;1;1::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0;1;1;0;1;1::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.5", gg.TYPE_FLOAT)
	 gg.toast("成功")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;1;1;0;1;1::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("好了")
	 gg.clearResults()
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;1;1;0;1;1::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("0.1倍")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5;1;1;0;1;1::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.25", gg.TYPE_FLOAT)
	 gg.toast("0.25")
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