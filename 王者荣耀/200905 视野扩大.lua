function Main0()
SN = gg.choice({
	 "开启1",
	 "开启2",
	 "干将4级无效开这个1",
	 "干将4级无效开这个2",
	 "再见，再也不见",
}, nil, "隐藏234 一局一开 如无效请单选ca内存或联系作者  by--无仙")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS6()
end
if SN==4 then
	 HS7()
end
if SN==5 then
	 HS8()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("14.45322227478", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("14.45322227478", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("22.89999961853", gg.TYPE_FLOAT)
	 gg.toast("爱生活，爱腾讯，打造绿色开挂环境.")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-16.05192565918", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-16.05192565918", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-25.10000038147", gg.TYPE_FLOAT)
	 gg.toast("爱生活，爱腾讯，打造绿色开挂环境.")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("16.62120437622", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16.62120437622", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("22.89999961853", gg.TYPE_FLOAT)
	 gg.toast("爱生活，爱腾讯，打造绿色开挂环境.")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("-18.45971679688", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("-18.45971679688", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-25.10000038147", gg.TYPE_FLOAT)
	 gg.toast("爱生活，爱腾讯，打造绿色开挂环境.")
	 gg.clearResults()
end

function HS8()
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