gg.alert('此脚本是为了练习编辑语法所做，如对您产生了任何困扰，请你他马自己忍着','退出')
if gg.isVisible(true) then 
   gg.setVisible(false) 
   end 
gg.clearResults()
goto START

::START::
menu = gg.choice({'射速','黑色','狙击枪连射','1.5倍移速','翻墙上树开','翻墙上树关','落地天线','子弹穿墙','子弹穿墙关','人物上色','s1897专用','射速加防抖','冲锋枪','除树','步枪水平无后加p18秒车',},nil,'')
if menu == 1 then goto X1 end
if menu == 2 then goto X2 end
if menu == 3 then goto X3 end
if menu == 4 then goto X4 end
if menu == 5 then goto X5 end
if menu == 6 then goto X6 end
if menu == 7 then goto X7 end
if menu == 8 then goto X8 end
if menu == 9 then goto X9 end
if menu == 10 then goto X10 end
if menu == 11 then goto X11 end
if menu == 12 then goto X12 end
if menu == 13 then goto X13 end
if menu == 14 then goto X14 end
if menu == 15 then goto X15 end
if menu == nil then goto sdone end

::X1::
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.01~0.4;200D;100D::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.01~0.4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.01",gg.TYPE_FLOAT)
gg.toast("射速开启成功")
goto START
::X2::
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("8196", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("8196", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(40)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("上黑色开启成功")
goto START
::X3::
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.89999997616;1.10000002384;0.44999998808;0.55000001192", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.89999997616;1.10000002384;0.44999998808", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("狙击开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.79999995232;1.10000002384;0.44999998808；2.29999995232", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1.79999995232;1.10000002384;0.44999998808", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0",gg.TYPE_FLOAT)
gg.toast("狙击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("77d;5d;34;17;1d;900d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("900", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("5000",gg.TYPE_DWORD)
gg.toast("狙击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88d;5d;34;17;1d;1000d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1000", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("5000",gg.TYPE_DWORD)
gg.toast("狙击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("56d;10d;34;17;1d;750d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("750", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("5000",gg.TYPE_DWORD)
gg.toast("狙击开启成功")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("58d;10d;34;17;1d;800d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("800", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("5000",gg.TYPE_DWORD)
gg.toast("狙击开启成功")


goto START
::X4::
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;2,139,095,040D::50", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(2)
gg.editAll("1.4",gg.TYPE_FLOAT)
gg.toast("1.5倍速成功")

goto START
::X5::
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;1025D;1D;1;0.5::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("10",gg.TYPE_FLOAT)
gg.toast("翻墙开启")
goto START
::X6::
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("12D;1025D;1D;10;0.5::", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("翻墙关")
goto START
::X7::
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.68880367~1.6888040", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(2000)
gg.editAll("399",gg.TYPE_FLOAT)
gg.toast("天线开起成功")
goto START
::X8::
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(999)
gg.editAll("-99",gg.TYPE_FLOAT)
gg.toast("开启成功")
goto START
::X9::
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("-99", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(999)
gg.editAll("2",gg.TYPE_FLOAT)
gg.toast("关闭")
goto START
::X10::
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1345060865", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1345060865", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll("1",gg.TYPE_DWORD)
gg.toast("上色开启成功")
goto START
::X11::
    gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.75;0.60000002384;0.20000000298;0.64200001955',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.75', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll('0.1', gg.TYPE_FLOAT)
  gg.toast('散弹枪已开启')
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('24d;5d;50;22;15',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('22', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll('1', gg.TYPE_FLOAT)
  gg.toast('散弹枪已开启')

  goto START
::X12::
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.11~0.4;1000::50", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.11~0.4", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.01",gg.TYPE_FLOAT)
gg.toast("开启成功")

goto START
::X13::
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("38d;30d;23;9;290d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("290", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("2999",gg.TYPE_DWORD)
gg.toast("ump9开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.0700000003;0.03999999911;2.59999990463;170d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("0.0700000003;0.03999999911", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("0.001",gg.TYPE_FLOAT)
gg.toast("tom")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40d;30d;25;8;170d", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("170", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1998",gg.TYPE_DWORD)
gg.toast("tom开启成功")

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("40d;30d;25;8;0.88;2.5;3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("25;8;0.88;2.5;3", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(1000)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast("tom开启成功")
goto START
::X14::
gg.clearResults()
gg.searchNumber("981,467,136D;1,149,239,296D;0.5F:50 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2", gg.TYPE_FLOAT)
gg.toast("除树完成")
goto START
::X15::
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('1.25;2.3;1056964608D;0.5;1.2::41', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('0.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0.1', gg.TYPE_FLOAT)
  gg.toast('水平')
  
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('30D;50;14;0.6;1',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll('0.1', gg.TYPE_FLOAT)
  gg.toast('sc水平')

gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('41d;30D;36;18;1d;1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll('0.1', gg.TYPE_FLOAT)
  gg.toast('m416')


gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('21D;17d;17;5',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('21', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll('235', gg.TYPE_DWORD)
  gg.toast('p18只能打车别打人')
goto START
::sdone:: 
os.exit()