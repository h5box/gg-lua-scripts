function Main0()
SN = gg.choice({
	 "一级菜单",
	 "💗小刀无cd💗没防封不要用封号！",
	 "💗小黑无敌💗",
	 "💗超级回血💗",
	 "退出脚本",
}, nil, "持续更新跟多功能群956302532")
if SN==1 then
	 Main1()
end
if SN==2 then
	 HS5()
end
if SN==3 then
	 HS3()
end
if SN==4 then
	 HS6()
end
if SN==5 then
	 HS4()
end
FX1=0
end

function Main1()
SN = gg.choice({
}, nil, "这是一个公告")
FX1=0
end

function HS5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2~26;26;26::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1~25.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("开启成功谨慎使用！")
	 gg.clearResults()
end

function HS3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("15.12345678910~576.78123456789;1.83000004292;0.20000000298;3.0::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("15.12345678910~576.78123456789", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("修改成功99999滴血")
	 gg.clearResults()
end

function HS6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4~300;100000000;400000000;1::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4~100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("250", gg.TYPE_FLOAT)
	 gg.toast("泣血开启成功")
	 gg.clearResults()
end

function HS4()
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