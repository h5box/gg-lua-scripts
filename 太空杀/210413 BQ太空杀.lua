function Main0()
SN = gg.choice({
	 "⃣人物穿墙",
	 "⃣超级加速",
	 "⃣微加速",
	 "⃣全图高亮",
	 "⃣上帝视角",
	 "🔝"
}, nil, "作者：南有北桥兮")
if SN==1 then
	 BQ1()
end
if SN==2 then
	 BQ2()
end
if SN==3 then
	 BQ3()
end
if SN==4 then
	 BQ4()
end
if SN==5 then
	 BQ5()
end
if SN==6 then
     BQ6()
end
FX1=0
end

function BQ1()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("7.28675201e-44;1.40129846e-45;1.171875;0.853333354:117", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.853333354", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("BQ提醒您：人物穿墙🆗")
	 gg.clearResults()
end

function BQ2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.80259693e-45;1.15697979e24;0.03333333507;3,317.9375:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03333333507", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("BQ提醒您：超极加速🆗")
	 gg.clearResults()
end

function BQ3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2.80259693e-45;1.15697979e24;0.03333333507;3,317.9375:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.03333333507", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.0273", gg.TYPE_FLOAT)
	 gg.toast("BQ提醒您：微加速🆗")
	 gg.clearResults()
end

function BQ4()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-1500;-1500;0.0078125E;1F::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("BQ提醒您：全图高亮🆗")
	 gg.clearResults()
end

function BQ5()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("131,072;256;256;65,793;257;1,065,353,216;1,065,353,216;1,065,353,216;1F::87", gg.TYPE_AUTO, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1.2", gg.TYPE_FLOAT)
	 gg.toast("BQ提醒您：上帝视角🆗")
	 gg.clearResults()
end

function BQ6()
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