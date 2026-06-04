function Main0()
SN = gg.choice({
     "大厅点我开启内存防",
     "点我退出内存防",
}, nil, "武则天交流群419833270")
if SN==1 then
	 HS1()
end
if SN==2 then
	 HS2()
end
FX1=0
end

function HS1()	
	 gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("72,480D;18D:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("72480", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
     gg.clearResults()
     gg.setRanges(8)
     gg.searchNumber("15,376D;19D:5", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
     gg.searchNumber("15376", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
     gg.getResults(10)
     gg.editAll("0",gg.TYPE_DWORD)
	 gg.toast("内存防封开启成功")
	 gg.clearResults()
end        

while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
    function HS10()
	 os.exit()
end
end
end