
function Main0()
SN = gg.choice({
	 "稳定功能【稳定无封号】",
}, nil, "QQ3189927670")
if SN==1 then
	 Main1()
end
FX1=0
end

function Main1()
SN = gg.multiChoice({
	 "防封[游戏开]",
	 "范围开钥匙【游戏开】",
	 "秒开钥匙【游戏开】",
	 "秒开陷阱【游戏开】",
	 "秒开禁闭室【游戏开】",
	 "无限金币[游戏开]",
	 "疾跑＋跳高无限时间【游戏开】",
	 "返回主页",
}, nil, "")
if SN[1]==true then
	 HS27()
end
if SN[2]==true then
	 HS26()
end
if SN[3]==true then
	 HS25()
end
if SN[4]==true then
	 HS24()
end
if SN[5]==true then
	 HS23()
end
if SN[6]==true then
	 HS22()
end
if SN[7]==true then
	 HS21()
end
if SN[8]==true then
	 HS20()
end
FX1=0
end

function HS27()
 gg.clearResults()
 gg.setRanges(32)
 gg.searchNumber("2;3;5;1.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.toast("开启防检测修改数据成功")
 gg.toast("十六进制防封成功")
 gg.toast("GG修改器检测文件删除成功")
 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.toast("内存防封开启成功")
 gg.getResults(100)
 gg.editAll("6", gg.TYPE_FLOAT)
 gg.toast("防封开启成功成功")
end

function HS26()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("13", gg.TYPE_FLOAT)
	 gg.toast("范围开启成功")
	 gg.clearResults()
end

function HS25()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000000", gg.TYPE_FLOAT)
	 gg.toast("秒开机开启成功")
	 gg.clearResults()
end

function HS24()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;0.2;1D;10D;1D;2.5;0.5;1;14::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("秒开陷阱开启成功")
	 gg.clearResults()
end

function HS23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;0.2;1;1;1;1D;100D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("秒开禁闭室开启成功")
	 gg.clearResults()
end

function HS22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("444444;70F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("444444", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999", gg.TYPE_FLOAT)
	 gg.toast("无限金币开启成功")
	 gg.clearResults()
end

function HS21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4.3;-0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999999", gg.TYPE_FLOAT)
	 gg.toast("疾跑跳高无限时间开启成功")
	 gg.clearResults()
end

function HS20()
	 Main0()
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