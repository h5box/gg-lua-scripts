Gg.toast('✌个人作品✌')

Print('✌By盧哥✌')

If Gg.isVisible(True) Then 

   Gg.setVisible(False) 

   End 

Gg.clearResults()

Goto START





::START::

Menu = Gg.choice({'✌逃生者穿墙✌','❤屠夫穿墙❤'},Nil,'.Www.xiaodao.la')

If Menu == 1 Then Goto X1 End

If Menu == 2 Then Goto X2 End

If Menu == Nil Then Print('Error') End 

Goto Sdone



::X1::

Gg.clearResults()

Gg.searchNumber('5;6;7;8:666', Gg.TYPE_DOUBLE, False, Gg.SIGN_EQUAL, 0, -1)

Gg.searchNumber('8', Gg.TYPE_DOUBLE, False, Gg.SIGN_EQUAL, 0, -1)

Gg.getResults(1)

Gg.editAll('999', Gg.TYPE_DOUBLE)

Gg.toast('❤穿墙开启成功❤')

Goto Sdone



::X2::

Gg.clearResults()

Gg.searchNumber('5;6;7;8;15:666',Gg.TYPE_DOUBLE,False,Gg.SIGN_EQUAL,0,-1)

Gg.searchNumber('15',Gg.TYPE_DOUBLE,False,

Gg.SIGN_EQUAL,0,-1)

Gg.getResults(1)

Gg.editAll('999',Gg.TYPE_DOUBLE)

Gg.toast('❤屠夫穿墙开启❤')

Goto Sdone



::Sdone:: 

Print('❤内测版本❤')

Gg.toast('✌脚本以结束✌')

Os.exit()