function Main1()
SN = gg.choice({
	 "开启移动回程",
	 "退出脚本",
}, nil, "秦浪制作🥺🥺")
if SN==1 then
	 HS2()
end
if SN==2 then
	 HS3()
end
FX=0
end

function HS2()
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("256;1288045081;-1622845275 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("256", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = -1}})
	 end
	 gg.toast("开启成功")
end

function HS3()
	 os.exit()
end



Main1()