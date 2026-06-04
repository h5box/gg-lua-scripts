function Main0()
SN = gg.choice({
	 "荒野行动单板透视",
}, nil, "单板透视")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "透视【高通骁龙801】",
	 "返回主页",
	 "退出脚本",
}, nil, "出生岛开")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS4()
end
if SN==3 then
	 HS5()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("2F;2E;2D;1F;204D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("12", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS4()
	 Main0()
end

function HS5()
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