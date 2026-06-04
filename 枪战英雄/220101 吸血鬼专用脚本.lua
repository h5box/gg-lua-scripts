function Main()
  SN = gg.multiChoice({
    "无限子弹（一局一开）",
	"攻速距离（全局有效）",
    "子弹穿墙（全局有效）",
    "退出脚本"
  }, nil, "")
    if SN == nil then
  else
  if SN[1] == true then
   qtxr1()
  end
  if SN[2] == true then
   qtxr2()
  end
  if SN[3] == true then
   qtxr3()
  end
  if SN[4] == true then
   Exit()
  end
end
  XGCK = -1
end

function qtxr1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("30;30;-1::10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 10}})
	 end
	 gg.toast("修改成功")
	 gg.clearResults()
end

function qtxr2()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('12;0.25;50;0.25;0.75::17',16,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('0.25;0.25',16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll('3.4e38;-3.4e38',16)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("12;50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("99", gg.TYPE_FLOAT)
gg.toast("修改成功")
gg.setVisible(false)
end

function qtxr3()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-1.5474152e26;1e-6::5',16,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber('1e-6',16,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1)
gg.editAll('3.4e38',16)
end

function Exit()
  os.exit()
end

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
