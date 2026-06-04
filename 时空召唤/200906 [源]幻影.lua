


function Main()
SN = gg.multiChoice({
	 "防封(请先开启防封)",
	 "全局加速(配合防封)",
	 "AD无后摇(配合防封)",
	 "结束脚本",
}, nil, "作者幻影QQ2263679859")
  if SN == nil then
  else
  if SN[1] == true then
    a1()
  end
  if SN[2] == true then
    a2()
  end
  if SN[3] == true then
    a3()
  end
  if SN[4] == true then
   Exit()
  end
end
  XGCK = -1
end

function a1()
	 gg.clearResults()
	 gg.setRanges(34)
	 gg.searchNumber("10558", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("幻影防封开启成功")
	 gg.clearResults()
end

function a2()

gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('0.14177720249;14,818,1 64D',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.14177720249',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)  jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags =
        gg.TYPE_FLOAT,freeze = true,value = 0.15,}})
end
gg.toast("幻影全局加速开启成功")
gg.clearResults()
end

  function a3()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('7.5;0.87',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.searchNumber('0.87',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
    gg.getResults(100)  jg=gg.getResults(100)
       sl=gg.getResultCount()
       for i = 1, sl do
          dzy=jg[i].address
          gg.addListItems({[1] = {address = dzy,flags =
            gg.TYPE_FLOAT,freeze = true,value = 0.1,}})
    end
    gg.toast("幻影无后摇开启成功")
  gg.clearResults()
  end


function Exit()
print("购买其他稳定脚本联系作者幻影QQ2263679859")
os.exit()
end
cs = "购买其他稳定脚本联系作者幻影QQ2263679859"



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