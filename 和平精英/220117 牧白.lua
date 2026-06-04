if FX2 == nil then
  mm = gg.prompt({[1]="请输入密码"}, {[1]="kjdao"}, {[1]="txet"})
  if mm[1] == "kjdao" then
    gg.toast("密码正确")
  else
    print(mm[1],"密码错误")
    os.exit()
  end
end


function Main0()
SN = gg.choice({
	 "↓↓↓↓↓",
	 "200w不减伤范围",
}, nil, "不要点箭头")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS2()
end
FX1=0
FX2=0
end

function Main1()
SN = gg.multiChoice({
}, nil, "#")
FX1=0
FX2=0
end

function HS2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("172", gg.TYPE_FLOAT)
gg.toast("范围加载中50%")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.3713598e-38;0.0001;0.00999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("80", gg.TYPE_FLOAT)
gg.toast("范围加载中%80") 
gg.clearResults()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("33;35;62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("175", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("175", gg.TYPE_FLOAT)
gg.toast("牧白范围开启成功")
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