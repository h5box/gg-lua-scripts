function Main()
  SN = gg.multiChoice({
  "速刷仙器",
  "秒开锁",
  "倒地复活",
  "全屏开锁",
  "退出脚本",
 }, nil, "西瓜关注老杰解说:Q2150066731")
  if SN == nil then
  else
  if SN[1] == true then
    a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
   d()
  end
  if SN[5] == true then
   e()
  end
end
  XGCK = -1
end


function a()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;0.3;0;0::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("老杰提示您:疾跑加速开启")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1001D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.toast("老杰提示您:跳高疾跑无限开启")
gg.clearResults()
end



function b()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("66.89824676514", gg.TYPE_FLOAT)
gg.toast("老杰提示您:秒开锁开启成功")
end



function c()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("230,887D;1.2215521e-38F;1D;230,887D;1,116,064,743D;1D;230,887D;0.15293307602F;1D;0.30000001192F::65", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("老杰提示您: 倒地复活开启成功")
	 gg.clearResults()
end



function d()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;0.2;1.3;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("70", gg.TYPE_FLOAT)
	 gg.toast("老杰提示您:已开启50％")
	 gg.clearResults()
  gg.setRanges(32)
	 gg.searchNumber("1D;4;1D;1.2215521e-38;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.2215521e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100", gg.TYPE_FLOAT)
	 gg.toast("老杰提示您:已开启100％")
	 gg.clearResults()
end



function Exit()
print("退出成功")
os.exit()
end
cs = "老杰QQ2150066731"



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end









