function Main0()
SN = gg.choice({
	 "功能",
}, nil, "交流 讨论 研究群 869916753 无禁言无⭕")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.choice({
	 "ak无后",
	 "ak瞬击",
	 "smg冲锋枪无后",
	 "smg瞬击",
	 "天线",
	 "人物发光(白色)",
	 "弹道直线冲锋枪",
	 "弹道直线ak",
}, nil, "功能都有封号危险 具体自测 盗卖二改三天之内你🐴必死 家破人亡 你全家骨灰被扬 别以为当作没看见就没事了 死妈仔 ")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
if SN==3 then
	 HS4()
end
if SN==4 then
	 HS5()
end
if SN==5 then
	 HS6()
end
if SN==6 then
	 HS7()
end
if SN==7 then
	 HS9()
end
if SN==8 then
	 HS10()
end
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.5F;0.375F;0.89999997616F;0.20000000298F;1.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5F;0.375F;0.89999997616F;0.20000000298F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("480.0F;1.0F;0.0F;-0.5F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("480", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("欧了")
	 gg.clearResults()
end

function HS4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4,525,216,907,494,477,005Q;4,575,657,222,462,033,101Q;4,539,628,425,454,813,184Q;4,539,628,425,446,424,576Q;4,546,834,186,568,204,288Q;4,768,186,106,537,154,970Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_QWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.20000004768F;43.0F;40.0F;300.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("50000", gg.TYPE_FLOAT)
	 gg.toast("成了")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.16947640479;3.6013371e-43::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.16947640479", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS7()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("0.5F;2.0F;0.69999998808F;0.40000000596F;0.5F;2.0F;0.69999998808F;0.40000000596F;2.2560905e-43F;2.8025969e-45F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("")
	 gg.clearResults()
end

function HS9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4,539,628,427,593,908,224Q;4,556,201,673,449,537,536Q;4,575,657,222,469,247,304Q;4,575,657,222,473,777,152Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_QWORD)
	 gg.toast("")
	 gg.clearResults()
end

function HS10()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("4,557,642,826,107,584,512Q;4,575,657,222,469,582,848Q;4,575,657,222,473,777,152Q;4,575,657,222,473,777,152Q", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_QWORD)
	 gg.toast("")
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