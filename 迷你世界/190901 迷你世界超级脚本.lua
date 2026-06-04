gg.toast('QQ群949240220')
print('QQ号3115093767')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START


::START::
menu = gg.choice({'①秒喝毒加闪电侠（登录页面改 ）','②高跳加高空不掉血','③巨人（4.6）','④踏空跳（加上高跳就可以用了）','⑤土遁术（自己冻结）'},nil,'♝QQ群949240220')
if menu == 1 then goto cnm1 end
if menu == 2 then goto cnm2 end
if menu == 3 then goto cnm3 end
if menu == 4 then goto cnm4 end
if menu == 5 then goto cnm5 end
goto sdone
----秒喝毒加闪电侠----
::cnm1::
	gg.clearResults()
	gg.searchNumber('12;8;6;3', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(100)
	gg.editAll('0', gg.TYPE_DOUBLE)
	gg.toast('秒药成功')
	gg.clearResults()
	goto hg
		::hg::
		gg.clearResults()
		gg.searchNumber('1;0.3;-0.3;-0.1::80', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
		gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
		gg.getResults(10)
		gg.editAll('2.8', gg.TYPE_DOUBLE)
		gg.toast('加速成功！可手动修改')
		goto sdone
----高跳加不掉血----
::cnm2::
gg.clearResults()
	gg.searchNumber('15;-10;-5;0E;-1D;5::240', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber('-5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(10)
	gg.editAll('100', gg.TYPE_FLOAT)
	gg.toast('高跳成功，正在开启不掉血')
	goto nbx
	::nbx::
	gg.clearResults()
	gg.searchNumber('1;0.5;0.1;5;12;20;70::225', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(10)
	gg.editAll('0', gg.TYPE_DOUBLE)
	gg.toast('高跳不掉血')
	goto sdone
	----巨人----
	::cnm3::
		gg.clearResults()
	gg.searchNumber('1;0.5;2;2;2::110', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	gg.searchNumber('1', gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
	gg.getResults(3)
	gg.editAll('4.6', gg.TYPE_DOUBLE)
	gg.toast('巨人开启')
	goto sdone

----踏空跳----
::cnm4::
gg.clearResults()  
gg.searchNumber('0.3;65536D;11D', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.3', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll('99', gg.TYPE_FLOAT) 
gg.toast('踏空开启成功')
gg.clearResults()
goto sdone
----遁地术----
::cnm5::
gg.clearResults()
gg.searchNumber('1,060,439,284D;1;0.01;0.2;0.3;65536D::50', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('2.7', gg.TYPE_FLOAT)
gg.toast('土遁术开启')
goto sdone
::sdone:: 
print('迷う制作')
print('QQ号3115093767')
gg.toast('妥不妥！！！！')

