function Main0()
SN = gg.choice({
	 "第一步",
	 "第二步",
	 "恢复数据",
	 "退出脚本",
}, nil, "开局冲刺暂停开第一步进超级后暂停开第二步,想结算点击恢复数据即可")
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
FX1=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(4)
	 gg.searchNumber("8;8;0;8::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.toast("开启成功")
end

function HS3()
	 gg.setRanges(4)
	 gg.searchNumber("8;8;2;8::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(10)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 1}})
	 end
	 gg.toast("开启成功")
	 gg.clearResults()
end

function HS4()
     gg.clearList()
     gg.toast("恢复数据成功")
     gg.clearResults()
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